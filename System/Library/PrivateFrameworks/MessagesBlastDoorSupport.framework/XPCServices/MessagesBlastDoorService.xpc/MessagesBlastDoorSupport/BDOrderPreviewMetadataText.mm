@interface BDOrderPreviewMetadataText
- (id)_initWithText:(id)text;
- (void)dealloc;
@end

@implementation BDOrderPreviewMetadataText

- (id)_initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = BDOrderPreviewMetadataText;
  v5 = [(BDOrderPreviewMetadataText *)&v9 init];
  if (v5)
  {
    text = [textCopy text];
    text = v5->_text;
    v5->_text = text;

    v5->_overrideColor = CGColorRetain([textCopy overrideColor]);
  }

  return v5;
}

- (void)dealloc
{
  CGColorRelease(self->_overrideColor);
  v3.receiver = self;
  v3.super_class = BDOrderPreviewMetadataText;
  [(BDOrderPreviewMetadataText *)&v3 dealloc];
}

@end