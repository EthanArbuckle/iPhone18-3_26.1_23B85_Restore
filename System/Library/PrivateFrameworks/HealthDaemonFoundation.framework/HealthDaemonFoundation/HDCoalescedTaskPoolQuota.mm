@interface HDCoalescedTaskPoolQuota
- (HDCoalescedTaskPoolQuota)initWithAvailableQuota:(int64_t)a3 maximumQuota:(int64_t)a4 refillInterval:(double)a5 minimumInterval:(double)a6 lastTrigger:(double)a7;
- (double)timeUntilNextAvailableTrigger;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)availableQuota;
- (void)consumeQuota;
@end

@implementation HDCoalescedTaskPoolQuota

- (HDCoalescedTaskPoolQuota)initWithAvailableQuota:(int64_t)a3 maximumQuota:(int64_t)a4 refillInterval:(double)a5 minimumInterval:(double)a6 lastTrigger:(double)a7
{
  if (a5 <= 0.0)
  {
    [HDCoalescedTaskPoolQuota initWithAvailableQuota:a2 maximumQuota:self refillInterval:? minimumInterval:? lastTrigger:?];
  }

  if (a4 <= 0)
  {
    [HDCoalescedTaskPoolQuota initWithAvailableQuota:a2 maximumQuota:self refillInterval:? minimumInterval:? lastTrigger:?];
  }

  v15.receiver = self;
  v15.super_class = HDCoalescedTaskPoolQuota;
  result = [(HDCoalescedTaskPoolQuota *)&v15 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_availableQuotaAfterLastTrigger = a3;
    result->_maximumQuota = a4;
    result->_quotaRefillInterval = a5;
    result->_minimumInterval = a6;
    result->_lastTrigger = a7;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HDCoalescedTaskPoolQuota alloc];
  availableQuotaAfterLastTrigger = self->_availableQuotaAfterLastTrigger;
  maximumQuota = self->_maximumQuota;
  quotaRefillInterval = self->_quotaRefillInterval;
  minimumInterval = self->_minimumInterval;
  lastTrigger = self->_lastTrigger;

  return [(HDCoalescedTaskPoolQuota *)v4 initWithAvailableQuota:availableQuotaAfterLastTrigger maximumQuota:maximumQuota refillInterval:quotaRefillInterval minimumInterval:minimumInterval lastTrigger:lastTrigger];
}

- (int64_t)availableQuota
{
  os_unfair_lock_lock(&self->_lock);
  v3 = CFAbsoluteTimeGetCurrent() - self->_lastTrigger;
  os_unfair_lock_unlock(&self->_lock);
  v4 = v3 / self->_quotaRefillInterval;
  availableQuotaAfterLastTrigger = self->_availableQuotaAfterLastTrigger;
  if (self->_maximumQuota >= (v4 & ~(v4 >> 63)) + availableQuotaAfterLastTrigger)
  {
    return (v4 & ~(v4 >> 63)) + availableQuotaAfterLastTrigger;
  }

  else
  {
    return self->_maximumQuota;
  }
}

- (void)consumeQuota
{
  os_unfair_lock_lock(&self->_lock);
  Current = CFAbsoluteTimeGetCurrent();
  v4 = (Current - self->_lastTrigger) / self->_quotaRefillInterval;
  self->_lastTrigger = Current;
  maximumQuota = self->_availableQuotaAfterLastTrigger + (v4 & ~(v4 >> 63));
  if (self->_maximumQuota < maximumQuota)
  {
    maximumQuota = self->_maximumQuota;
  }

  if (maximumQuota <= 1)
  {
    maximumQuota = 1;
  }

  self->_availableQuotaAfterLastTrigger = maximumQuota - 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (double)timeUntilNextAvailableTrigger
{
  os_unfair_lock_lock(&self->_lock);
  v3 = CFAbsoluteTimeGetCurrent() - self->_lastTrigger;
  v4 = 0.0;
  if (self->_availableQuotaAfterLastTrigger <= 0)
  {
    v4 = self->_quotaRefillInterval - v3;
  }

  v5 = self->_minimumInterval - v3;
  os_unfair_lock_unlock(&self->_lock);
  if (v5 >= v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  return fmax(v6, 0.0);
}

- (void)initWithAvailableQuota:(uint64_t)a1 maximumQuota:(uint64_t)a2 refillInterval:minimumInterval:lastTrigger:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDCoalescedTaskPoolQuota.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"refillInterval > 0.0"}];
}

- (void)initWithAvailableQuota:(uint64_t)a1 maximumQuota:(uint64_t)a2 refillInterval:minimumInterval:lastTrigger:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDCoalescedTaskPoolQuota.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"maximumQuota > 0"}];
}

@end