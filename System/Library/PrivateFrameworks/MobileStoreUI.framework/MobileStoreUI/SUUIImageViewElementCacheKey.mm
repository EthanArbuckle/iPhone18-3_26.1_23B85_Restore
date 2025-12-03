@interface SUUIImageViewElementCacheKey
- (BOOL)isEqual:(id)equal;
- (SUUIImageViewElementCacheKey)initWithURL:(id)l size:(CGSize)size imageTreatment:(id)treatment;
@end

@implementation SUUIImageViewElementCacheKey

- (SUUIImageViewElementCacheKey)initWithURL:(id)l size:(CGSize)size imageTreatment:(id)treatment
{
  height = size.height;
  width = size.width;
  lCopy = l;
  treatmentCopy = treatment;
  v14.receiver = self;
  v14.super_class = SUUIImageViewElementCacheKey;
  v12 = [(SUUIImageViewElementCacheKey *)&v14 init];
  if (v12)
  {
    v12->_imageTreatment = SUUIImageTreatmentForString(treatmentCopy);
    v12->_size.width = width;
    v12->_size.height = height;
    objc_storeStrong(&v12->_url, l);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && *&self->_size.height == *&equalCopy->_size.height && *&self->_size.width == *&equalCopy->_size.width && self->_imageTreatment == equalCopy->_imageTreatment)
    {
      v6 = [(NSURL *)self->_url isEqual:equalCopy->_url];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end