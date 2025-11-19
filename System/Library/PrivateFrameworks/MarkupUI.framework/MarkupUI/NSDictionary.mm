@interface NSDictionary
@end

@implementation NSDictionary

void __56__NSDictionary_Foundation_Extensions__muDeepMutableCopy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v6 = [v5 muDeepMutableCopy];
  }

  else if ([v5 conformsToProtocol:&unk_2869902D0])
  {
    v6 = [v5 mutableCopy];
  }

  else if ([v5 conformsToProtocol:&unk_28698FC20])
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  if (v6)
  {
    [*(a1 + 32) setValue:v6 forKey:v8];

    goto LABEL_13;
  }

LABEL_12:
  NSLog(&cfstr_UnableToCopyOb_0.isa, v5);
LABEL_13:
}

@end