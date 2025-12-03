@interface BLCacheDeleteStorageVolumeInfo
- (void)setPurgeableHighPriority:(int64_t)priority;
- (void)setPurgeableLowPriority:(int64_t)priority;
- (void)setPurgeableMediumPriority:(int64_t)priority;
- (void)setPurgeableSpecialCasePriority:(int64_t)priority;
@end

@implementation BLCacheDeleteStorageVolumeInfo

- (void)setPurgeableLowPriority:(int64_t)priority
{
  if (self->_purgeableLowPriority != priority)
  {
    self->_purgeableLowPriority = priority;
    self->_purgeableValueChanged = 1;
  }
}

- (void)setPurgeableMediumPriority:(int64_t)priority
{
  if (self->_purgeableMediumPriority != priority)
  {
    self->_purgeableMediumPriority = priority;
    self->_purgeableValueChanged = 1;
  }
}

- (void)setPurgeableHighPriority:(int64_t)priority
{
  if (self->_purgeableHighPriority != priority)
  {
    self->_purgeableHighPriority = priority;
    self->_purgeableValueChanged = 1;
  }
}

- (void)setPurgeableSpecialCasePriority:(int64_t)priority
{
  if (self->_purgeableSpecialCasePriority != priority)
  {
    self->_purgeableSpecialCasePriority = priority;
    self->_purgeableValueChanged = 1;
  }
}

@end