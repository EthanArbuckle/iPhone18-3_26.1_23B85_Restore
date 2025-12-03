@interface PDFPreviewDataSource
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
@end

@implementation PDFPreviewDataSource

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  result = (*(&self->super.isa + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages))[3];
  if (result)
  {
    return [result pageCount];
  }

  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  viewCopy = view;
  selfCopy = self;
  v12 = PDFPreviewDataSource.collectionView(_:cellForItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

@end