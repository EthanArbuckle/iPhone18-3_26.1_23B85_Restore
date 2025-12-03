@interface _CKPhotosSupportWeakBox
- (_CKPhotosSupportWeakBox)initWithObject:(id)object;
- (id)object;
@end

@implementation _CKPhotosSupportWeakBox

- (_CKPhotosSupportWeakBox)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = _CKPhotosSupportWeakBox;
  v5 = [(_CKPhotosSupportWeakBox *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
  }

  return v6;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end