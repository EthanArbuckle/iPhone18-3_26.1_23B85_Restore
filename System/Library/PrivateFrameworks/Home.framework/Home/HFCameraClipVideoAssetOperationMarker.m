@interface HFCameraClipVideoAssetOperationMarker
+ (id)sentinelWithKey:(id)a3;
- (HFCameraClipVideoAssetOperationMarker)initWithCameraClip:(id)a3 operation:(id)a4 key:(id)a5;
- (HFCameraClipVideoAssetOperationMarker)next;
- (HFCameraClipVideoAssetOperationMarker)previous;
- (HMCameraClipFetchVideoAssetContextOperation)operation;
@end

@implementation HFCameraClipVideoAssetOperationMarker

+ (id)sentinelWithKey:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HFCameraClipVideoAssetOperationMarker);
  [(HFCameraClipVideoAssetOperationMarker *)v4 setKey:v3];

  return v4;
}

- (HFCameraClipVideoAssetOperationMarker)initWithCameraClip:(id)a3 operation:(id)a4 key:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HFCameraClipVideoAssetOperationMarker;
  v12 = [(HFCameraClipVideoAssetOperationMarker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, a5);
    objc_storeStrong(&v13->_clip, a3);
    objc_storeWeak(&v13->_operation, v10);
  }

  return v13;
}

- (HFCameraClipVideoAssetOperationMarker)previous
{
  WeakRetained = objc_loadWeakRetained(&self->_previous);

  return WeakRetained;
}

- (HFCameraClipVideoAssetOperationMarker)next
{
  WeakRetained = objc_loadWeakRetained(&self->_next);

  return WeakRetained;
}

- (HMCameraClipFetchVideoAssetContextOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

@end