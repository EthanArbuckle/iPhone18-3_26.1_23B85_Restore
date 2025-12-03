@interface NSDate
- (id)dk_localtimeString;
@end

@implementation NSDate

uint64_t __42__NSDate__DKAdditions__timeSinceMidnight___block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  v1 = timeSinceMidnight__calendar;
  timeSinceMidnight__calendar = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __44__NSDate__DKSyncLogging__dk_localtimeString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1EADBD608;
  qword_1EADBD608 = v0;

  [qword_1EADBD608 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS zzz"];
  v2 = qword_1EADBD608;
  v3 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v2 setTimeZone:v3];
}

void __31__NSDate__DKDeduping__dk_dedup__block_invoke()
{
  v0 = [MEMORY[0x1E696AB50] set];
  v1 = dk_dedup_set_9;
  dk_dedup_set_9 = v0;

  dk_dedup_lock_10 = 0;
}

void __31__NSDate__DKDeduping__dk_dedup__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([dk_dedup_set_9 countForObject:?] <= 2)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)dk_localtimeString
{
  if (self)
  {
    selfCopy = self;
    if (_MergedGlobals_3 != -1)
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_52);
    }

    self = [qword_1EADBD608 stringFromDate:selfCopy];
    v1 = vars8;
  }

  return self;
}

@end