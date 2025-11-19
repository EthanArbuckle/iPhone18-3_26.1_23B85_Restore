@interface _CKPhotosSupportWeakBox
- (_CKPhotosSupportWeakBox)initWithObject:(id)a3;
- (id)object;
@end

@implementation _CKPhotosSupportWeakBox

- (_CKPhotosSupportWeakBox)initWithObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _CKPhotosSupportWeakBox;
  v5 = [(_CKPhotosSupportWeakBox *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, v4);
  }

  return v6;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end