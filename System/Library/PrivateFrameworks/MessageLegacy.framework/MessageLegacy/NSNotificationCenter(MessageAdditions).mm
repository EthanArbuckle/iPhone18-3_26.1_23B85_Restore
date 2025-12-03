@interface NSNotificationCenter(MessageAdditions)
- (uint64_t)mf_addImmediateObserver:()MessageAdditions selector:name:object:;
- (uint64_t)mf_removeObservers:()MessageAdditions;
@end

@implementation NSNotificationCenter(MessageAdditions)

- (uint64_t)mf_addImmediateObserver:()MessageAdditions selector:name:object:
{
  objc_initWeak(&location, val);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__NSNotificationCenter_MessageAdditions__mf_addImmediateObserver_selector_name_object___block_invoke;
  v12[3] = &unk_2798B7B68;
  objc_copyWeak(v13, &location);
  v13[1] = a4;
  v10 = [self addObserverForName:a5 object:a6 queue:0 usingBlock:v12];
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
  return v10;
}

- (uint64_t)mf_removeObservers:()MessageAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [self removeObserver:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end