@interface GDVUGalleryTransaction
- (BOOL)addWithObservation:(id)a3 context:(id)a4 priority:(int64_t)a5 at:(int64_t)a6 output:(int64_t *)a7 error:(id *)a8;
- (BOOL)removeWithAsset:(id)a3 error:(id *)a4;
- (BOOL)tag:(int64_t)a3 with:(id)a4 type:(int64_t)a5 error:(id *)a6;
@end

@implementation GDVUGalleryTransaction

- (BOOL)addWithObservation:(id)a3 context:(id)a4 priority:(int64_t)a5 at:(int64_t)a6 output:(int64_t *)a7 error:(id *)a8
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  GDVUGalleryTransaction.add(with:context:priority:at:output:)();

  return 1;
}

- (BOOL)removeWithAsset:(id)a3 error:(id *)a4
{
  v5 = sub_1ABF21F04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF21EE4();
  v10 = self;
  GDVUGalleryTransaction.remove(withAsset:)();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)tag:(int64_t)a3 with:(id)a4 type:(int64_t)a5 error:(id *)a6
{
  v9 = sub_1ABF21F04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF21EE4();
  v14 = self;
  GDVUGalleryTransaction.tag(_:with:type:)(a3, v13, a5);
  (*(v10 + 8))(v13, v9);

  return 1;
}

@end