@interface BLCacheDeleteStorageVolumeInfo
- (void)setPurgeableHighPriority:(int64_t)a3;
- (void)setPurgeableLowPriority:(int64_t)a3;
- (void)setPurgeableMediumPriority:(int64_t)a3;
- (void)setPurgeableSpecialCasePriority:(int64_t)a3;
@end

@implementation BLCacheDeleteStorageVolumeInfo

- (void)setPurgeableLowPriority:(int64_t)a3
{
  if (self->_purgeableLowPriority != a3)
  {
    self->_purgeableLowPriority = a3;
    self->_purgeableValueChanged = 1;
  }
}

- (void)setPurgeableMediumPriority:(int64_t)a3
{
  if (self->_purgeableMediumPriority != a3)
  {
    self->_purgeableMediumPriority = a3;
    self->_purgeableValueChanged = 1;
  }
}

- (void)setPurgeableHighPriority:(int64_t)a3
{
  if (self->_purgeableHighPriority != a3)
  {
    self->_purgeableHighPriority = a3;
    self->_purgeableValueChanged = 1;
  }
}

- (void)setPurgeableSpecialCasePriority:(int64_t)a3
{
  if (self->_purgeableSpecialCasePriority != a3)
  {
    self->_purgeableSpecialCasePriority = a3;
    self->_purgeableValueChanged = 1;
  }
}

@end