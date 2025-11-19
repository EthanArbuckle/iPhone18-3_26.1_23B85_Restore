@interface ML3ContainerItemDiffMetadata
+ (id)diffMetadataWithPersistentID:(int64_t)a3;
+ (id)diffMetadataWithPersistentID:(int64_t)a3 containerPersistentID:(int64_t)a4 itemPersistentID:(int64_t)a5 newPosition:(int64_t)a6 previousPosition:(int64_t)a7 uuid:(id)a8 positionUUD:(id)a9 occurrenceID:(id)a10;
@end

@implementation ML3ContainerItemDiffMetadata

+ (id)diffMetadataWithPersistentID:(int64_t)a3 containerPersistentID:(int64_t)a4 itemPersistentID:(int64_t)a5 newPosition:(int64_t)a6 previousPosition:(int64_t)a7 uuid:(id)a8 positionUUD:(id)a9 occurrenceID:(id)a10
{
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v18 = [ML3ContainerItemDiffMetadata diffMetadataWithPersistentID:a3];
  [v18 setContainerPersistentID:a4];
  [v18 setItemPersistentID:a5];
  [v18 setNewPosition:a6];
  [v18 setPreviousPosition:a7];
  [v18 setUuid:v15];
  [v18 setPositionUUID:v16];
  [v18 setOccurrenceID:v17];

  return v18;
}

+ (id)diffMetadataWithPersistentID:(int64_t)a3
{
  v4 = objc_alloc_init(ML3ContainerItemDiffMetadata);
  [(ML3ContainerItemDiffMetadata *)v4 setPersistentID:a3];

  return v4;
}

@end