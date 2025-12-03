@interface GDVUGalleryTransaction
- (BOOL)addWithObservation:(id)observation context:(id)context priority:(int64_t)priority at:(int64_t)at output:(int64_t *)output error:(id *)error;
- (BOOL)removeWithAsset:(id)asset error:(id *)error;
- (BOOL)tag:(int64_t)tag with:(id)with type:(int64_t)type error:(id *)error;
@end

@implementation GDVUGalleryTransaction

- (BOOL)addWithObservation:(id)observation context:(id)context priority:(int64_t)priority at:(int64_t)at output:(int64_t *)output error:(id *)error
{
  observationCopy = observation;
  contextCopy = context;
  selfCopy = self;
  GDVUGalleryTransaction.add(with:context:priority:at:output:)();

  return 1;
}

- (BOOL)removeWithAsset:(id)asset error:(id *)error
{
  v5 = sub_1ABF21F04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF21EE4();
  selfCopy = self;
  GDVUGalleryTransaction.remove(withAsset:)();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)tag:(int64_t)tag with:(id)with type:(int64_t)type error:(id *)error
{
  v9 = sub_1ABF21F04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF21EE4();
  selfCopy = self;
  GDVUGalleryTransaction.tag(_:with:type:)(tag, v13, type);
  (*(v10 + 8))(v13, v9);

  return 1;
}

@end