@interface ICTK2TextContainer
- (BOOL)isSimpleRectangularTextContainer;
- (ICBaseTextView)tk2TextView;
@end

@implementation ICTK2TextContainer

- (ICBaseTextView)tk2TextView
{
  WeakRetained = objc_loadWeakRetained(&self->_tk2TextView);

  return WeakRetained;
}

- (BOOL)isSimpleRectangularTextContainer
{
  v3 = [(ICTK2TextContainer *)self exclusionPaths];
  if ([v3 count] || -[ICTK2TextContainer maximumNumberOfLines](self, "maximumNumberOfLines"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(ICTK2TextContainer *)self inPreviewMode];
  }

  return v4;
}

@end