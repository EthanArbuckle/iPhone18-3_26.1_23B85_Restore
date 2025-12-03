@interface BDOrderPreviewMetadataImage
- (id)_initWithImage:(id)image;
@end

@implementation BDOrderPreviewMetadataImage

- (id)_initWithImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = BDOrderPreviewMetadataImage;
  v5 = [(BDOrderPreviewMetadataImage *)&v9 init];
  if (v5)
  {
    data = [imageCopy data];
    data = v5->_data;
    v5->_data = data;

    v5->_kind = [imageCopy kind];
  }

  return v5;
}

@end