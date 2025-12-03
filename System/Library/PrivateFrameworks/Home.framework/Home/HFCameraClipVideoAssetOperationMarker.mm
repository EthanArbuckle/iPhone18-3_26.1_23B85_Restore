@interface HFCameraClipVideoAssetOperationMarker
+ (id)sentinelWithKey:(id)key;
- (HFCameraClipVideoAssetOperationMarker)initWithCameraClip:(id)clip operation:(id)operation key:(id)key;
- (HFCameraClipVideoAssetOperationMarker)next;
- (HFCameraClipVideoAssetOperationMarker)previous;
- (HMCameraClipFetchVideoAssetContextOperation)operation;
@end

@implementation HFCameraClipVideoAssetOperationMarker

+ (id)sentinelWithKey:(id)key
{
  keyCopy = key;
  v4 = objc_alloc_init(HFCameraClipVideoAssetOperationMarker);
  [(HFCameraClipVideoAssetOperationMarker *)v4 setKey:keyCopy];

  return v4;
}

- (HFCameraClipVideoAssetOperationMarker)initWithCameraClip:(id)clip operation:(id)operation key:(id)key
{
  clipCopy = clip;
  operationCopy = operation;
  keyCopy = key;
  v15.receiver = self;
  v15.super_class = HFCameraClipVideoAssetOperationMarker;
  v12 = [(HFCameraClipVideoAssetOperationMarker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, key);
    objc_storeStrong(&v13->_clip, clip);
    objc_storeWeak(&v13->_operation, operationCopy);
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