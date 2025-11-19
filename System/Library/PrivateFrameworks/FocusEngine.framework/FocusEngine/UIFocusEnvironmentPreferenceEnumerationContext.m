@interface UIFocusEnvironmentPreferenceEnumerationContext
@end

@implementation UIFocusEnvironmentPreferenceEnumerationContext

void __92___UIFocusEnvironmentPreferenceEnumerationContext_initWithFocusEnvironment_enumerationMode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if ([v12 allowsWeakReference])
  {
    v6 = v12;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    v8 = _UIFocusEnvironmentEffectivePreferredFocusEnvironments(v12, 0);
    [*(a1 + 32) setObject:v8 forKey:v12];
    if ([v8 count] > 1 || (objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9 != v12))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a3 = 1;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusEnvironmentPreferenceEnumerationContext initWithFocusEnvironment:enumerationMode:]_block_invoke"];
    [v10 handleFailureInFunction:v11 file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:98 description:@"Trying to enumerate a focus hierarchy with a focus environment that is in the process of deallocating. This should never happen."];

    *a3 = 1;
  }
}

@end