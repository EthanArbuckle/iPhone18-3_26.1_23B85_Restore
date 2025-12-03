@interface ML3ContainerItemDiffMetadata
+ (id)diffMetadataWithPersistentID:(int64_t)d;
+ (id)diffMetadataWithPersistentID:(int64_t)d containerPersistentID:(int64_t)iD itemPersistentID:(int64_t)persistentID newPosition:(int64_t)position previousPosition:(int64_t)previousPosition uuid:(id)uuid positionUUD:(id)uD occurrenceID:(id)self0;
@end

@implementation ML3ContainerItemDiffMetadata

+ (id)diffMetadataWithPersistentID:(int64_t)d containerPersistentID:(int64_t)iD itemPersistentID:(int64_t)persistentID newPosition:(int64_t)position previousPosition:(int64_t)previousPosition uuid:(id)uuid positionUUD:(id)uD occurrenceID:(id)self0
{
  uuidCopy = uuid;
  uDCopy = uD;
  occurrenceIDCopy = occurrenceID;
  v18 = [ML3ContainerItemDiffMetadata diffMetadataWithPersistentID:d];
  [v18 setContainerPersistentID:iD];
  [v18 setItemPersistentID:persistentID];
  [v18 setNewPosition:position];
  [v18 setPreviousPosition:previousPosition];
  [v18 setUuid:uuidCopy];
  [v18 setPositionUUID:uDCopy];
  [v18 setOccurrenceID:occurrenceIDCopy];

  return v18;
}

+ (id)diffMetadataWithPersistentID:(int64_t)d
{
  v4 = objc_alloc_init(ML3ContainerItemDiffMetadata);
  [(ML3ContainerItemDiffMetadata *)v4 setPersistentID:d];

  return v4;
}

@end