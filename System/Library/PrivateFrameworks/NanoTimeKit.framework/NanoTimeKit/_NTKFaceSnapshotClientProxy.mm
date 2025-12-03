@interface _NTKFaceSnapshotClientProxy
- (_NTKFaceSnapshotClientProxy)initWithWeakProxy:(id)proxy;
- (void)faceSnapshotChangedForKey:(id)key;
@end

@implementation _NTKFaceSnapshotClientProxy

- (_NTKFaceSnapshotClientProxy)initWithWeakProxy:(id)proxy
{
  proxyCopy = proxy;
  v8.receiver = self;
  v8.super_class = _NTKFaceSnapshotClientProxy;
  v5 = [(_NTKFaceSnapshotClientProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_proxy, proxyCopy);
  }

  return v6;
}

- (void)faceSnapshotChangedForKey:(id)key
{
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained faceSnapshotChangedForKey:keyCopy];
}

@end