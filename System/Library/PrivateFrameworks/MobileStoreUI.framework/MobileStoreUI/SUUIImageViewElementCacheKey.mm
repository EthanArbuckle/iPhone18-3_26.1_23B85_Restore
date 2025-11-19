@interface SUUIImageViewElementCacheKey
- (BOOL)isEqual:(id)a3;
- (SUUIImageViewElementCacheKey)initWithURL:(id)a3 size:(CGSize)a4 imageTreatment:(id)a5;
@end

@implementation SUUIImageViewElementCacheKey

- (SUUIImageViewElementCacheKey)initWithURL:(id)a3 size:(CGSize)a4 imageTreatment:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = SUUIImageViewElementCacheKey;
  v12 = [(SUUIImageViewElementCacheKey *)&v14 init];
  if (v12)
  {
    v12->_imageTreatment = SUUIImageTreatmentForString(v11);
    v12->_size.width = width;
    v12->_size.height = height;
    objc_storeStrong(&v12->_url, a3);
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && *&self->_size.height == *&v4->_size.height && *&self->_size.width == *&v4->_size.width && self->_imageTreatment == v4->_imageTreatment)
    {
      v6 = [(NSURL *)self->_url isEqual:v4->_url];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end