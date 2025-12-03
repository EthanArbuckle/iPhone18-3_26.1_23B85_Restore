@interface DNDSIDSServerBagValues
+ (BOOL)resolvedActivityUpdateDisabled;
+ (id)_numberForKey:(id)key;
+ (unint64_t)resolvedActivityUpdateCoalescingSeconds;
+ (unint64_t)resolvedScheduledActivityUpdateFuzzMilliseconds;
+ (void)resolvedScheduledActivityUpdateFuzzMilliseconds;
@end

@implementation DNDSIDSServerBagValues

+ (id)_numberForKey:(id)key
{
  v3 = MEMORY[0x277D18A10];
  keyCopy = key;
  v5 = [v3 sharedInstanceForBagType:1];
  v6 = [v5 objectForKey:keyCopy];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)resolvedScheduledActivityUpdateFuzzMilliseconds
{
  v3 = [self _numberForKey:@"act-update-fuzz-floor"];
  v4 = [self _numberForKey:@"act-update-fuzz-ceiling"];
  v5 = v4;
  if (v3)
  {
    v6 = 1000 * [v3 unsignedIntValue];
    if (v5)
    {
LABEL_3:
      v7 = 1000 * [v5 unsignedIntValue];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 5000;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v7 = 20000;
LABEL_6:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[(DNDSIDSServerBagValues *)v6];
  }

  v8 = arc4random_uniform((v7 - v6) | 1) + v6;

  return v8;
}

+ (BOOL)resolvedActivityUpdateDisabled
{
  v2 = [self _numberForKey:@"act-update-disabled"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (unint64_t)resolvedActivityUpdateCoalescingSeconds
{
  v2 = [self _numberForKey:@"act-update-coalescing-interval"];
  v3 = v2;
  if (v2)
  {
    unsignedIntValue = [v2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 1;
  }

  return unsignedIntValue;
}

+ (void)resolvedScheduledActivityUpdateFuzzMilliseconds
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_24912E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "generating fuzzable %@ - %@ ms", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end