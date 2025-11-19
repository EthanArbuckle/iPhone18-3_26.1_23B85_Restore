@interface CUINamedMultisizeImage
- (CGSize)nextSizeSmaller;
- (id)debugDescription;
@end

@implementation CUINamedMultisizeImage

- (id)debugDescription
{
  v3 = [(CUIRenditionKey *)[(CUINamedLookup *)self renditionKey] themeDimension2];
  v6.receiver = self;
  v6.super_class = CUINamedMultisizeImage;
  v4 = [(CUINamedMultisizeImage *)&v6 debugDescription];
  [(CUINamedMultisizeImage *)self nextSizeSmaller];
  return [v4 stringByAppendingString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\ndimension2 (size index): %d\nnextSizeSmaller: %@", v3, NSStringFromSize(v7))}];
}

- (CGSize)nextSizeSmaller
{
  width = self->_nextSizeSmaller.width;
  height = self->_nextSizeSmaller.height;
  result.height = height;
  result.width = width;
  return result;
}

@end