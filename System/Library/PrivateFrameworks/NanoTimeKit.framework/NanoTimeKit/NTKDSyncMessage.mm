@interface NTKDSyncMessage
- (BOOL)isPartial;
- (id)copyWithoutPayload;
@end

@implementation NTKDSyncMessage

- (BOOL)isPartial
{
  v2 = [(NTKDSyncMessage *)self wideLoadId];
  v3 = v2 != 0;

  return v3;
}

- (id)copyWithoutPayload
{
  v3 = [NTKDSyncMessage messageOfType:[(NTKDSyncMessage *)self messageType]];
  v4 = [(NTKDSyncMessage *)self faceUUID];
  [v3 setFaceUUID:v4];

  v5 = [(NTKDSyncMessage *)self label];
  [v3 setLabel:v5];

  [(NTKDSyncMessage *)self progress];
  [v3 setProgress:?];
  v6 = [(NTKDSyncMessage *)self complicationCollectionIdentifier];
  [v3 setComplicationCollectionIdentifier:v6];

  v7 = [(NTKDSyncMessage *)self complicationClientID];
  [v3 setComplicationClientID:v7];

  v8 = [(NTKDSyncMessage *)self complicationDescriptor];
  [v3 setComplicationDescriptor:v8];

  v9 = [(NTKDSyncMessage *)self complicationFamily];
  [v3 setComplicationFamily:v9];

  v10 = [(NTKDSyncMessage *)self wideLoadId];
  [v3 setWideLoadId:v10];

  [v3 setNumberOfParts:{-[NTKDSyncMessage numberOfParts](self, "numberOfParts")}];
  [v3 setPartNumber:{-[NTKDSyncMessage partNumber](self, "partNumber")}];
  [v3 setMaxPartSize:{-[NTKDSyncMessage maxPartSize](self, "maxPartSize")}];
  return v3;
}

@end