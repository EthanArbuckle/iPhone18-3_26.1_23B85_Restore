@interface NTKDSyncMessage
- (BOOL)isPartial;
- (id)copyWithoutPayload;
@end

@implementation NTKDSyncMessage

- (BOOL)isPartial
{
  wideLoadId = [(NTKDSyncMessage *)self wideLoadId];
  v3 = wideLoadId != 0;

  return v3;
}

- (id)copyWithoutPayload
{
  v3 = [NTKDSyncMessage messageOfType:[(NTKDSyncMessage *)self messageType]];
  faceUUID = [(NTKDSyncMessage *)self faceUUID];
  [v3 setFaceUUID:faceUUID];

  label = [(NTKDSyncMessage *)self label];
  [v3 setLabel:label];

  [(NTKDSyncMessage *)self progress];
  [v3 setProgress:?];
  complicationCollectionIdentifier = [(NTKDSyncMessage *)self complicationCollectionIdentifier];
  [v3 setComplicationCollectionIdentifier:complicationCollectionIdentifier];

  complicationClientID = [(NTKDSyncMessage *)self complicationClientID];
  [v3 setComplicationClientID:complicationClientID];

  complicationDescriptor = [(NTKDSyncMessage *)self complicationDescriptor];
  [v3 setComplicationDescriptor:complicationDescriptor];

  complicationFamily = [(NTKDSyncMessage *)self complicationFamily];
  [v3 setComplicationFamily:complicationFamily];

  wideLoadId = [(NTKDSyncMessage *)self wideLoadId];
  [v3 setWideLoadId:wideLoadId];

  [v3 setNumberOfParts:{-[NTKDSyncMessage numberOfParts](self, "numberOfParts")}];
  [v3 setPartNumber:{-[NTKDSyncMessage partNumber](self, "partNumber")}];
  [v3 setMaxPartSize:{-[NTKDSyncMessage maxPartSize](self, "maxPartSize")}];
  return v3;
}

@end