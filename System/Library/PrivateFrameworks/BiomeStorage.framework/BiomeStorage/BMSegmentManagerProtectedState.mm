@interface BMSegmentManagerProtectedState
- (BMSegmentManagerProtectedState)initWithDeviceStateIsUnlocked:(BOOL)unlocked;
- (uint64_t)error;
- (uint64_t)isDataAccessible;
- (uint64_t)segmentFileHandles;
- (uint64_t)segmentNames;
- (uint64_t)setIsDataAccessible:(uint64_t)result;
- (void)setError:(uint64_t)error;
- (void)setSegmentFileHandles:(uint64_t)handles;
- (void)setSegmentNames:(uint64_t)names;
@end

@implementation BMSegmentManagerProtectedState

- (BMSegmentManagerProtectedState)initWithDeviceStateIsUnlocked:(BOOL)unlocked
{
  v12.receiver = self;
  v12.super_class = BMSegmentManagerProtectedState;
  v4 = [(BMSegmentManagerProtectedState *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_isDataAccessible = unlocked;
    v6 = objc_opt_new();
    segmentNames = v5->_segmentNames;
    v5->_segmentNames = v6;

    v8 = objc_opt_new();
    segmentFileHandles = v5->_segmentFileHandles;
    v5->_segmentFileHandles = v8;

    error = v5->_error;
    v5->_error = 0;
  }

  return v5;
}

- (uint64_t)isDataAccessible
{
  if (self)
  {
    v1 = *(self + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setIsDataAccessible:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)segmentNames
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setSegmentNames:(uint64_t)names
{
  if (names)
  {
    objc_storeStrong((names + 16), a2);
  }
}

- (uint64_t)segmentFileHandles
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setSegmentFileHandles:(uint64_t)handles
{
  if (handles)
  {
    objc_storeStrong((handles + 24), a2);
  }
}

- (uint64_t)error
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)setError:(uint64_t)error
{
  if (error)
  {
    objc_storeStrong((error + 32), a2);
  }
}

@end