@interface _NTKFaceSnapshotClientProxy
- (_NTKFaceSnapshotClientProxy)initWithWeakProxy:(id)a3;
- (void)faceSnapshotChangedForKey:(id)a3;
@end

@implementation _NTKFaceSnapshotClientProxy

- (_NTKFaceSnapshotClientProxy)initWithWeakProxy:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _NTKFaceSnapshotClientProxy;
  v5 = [(_NTKFaceSnapshotClientProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_proxy, v4);
  }

  return v6;
}

- (void)faceSnapshotChangedForKey:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained faceSnapshotChangedForKey:v4];
}

@end