@interface HUQuickControlGridItemPredicate
- (id)matchingControlItemsForControlItems:(id)a3;
@end

@implementation HUQuickControlGridItemPredicate

- (id)matchingControlItemsForControlItems:(id)a3
{
  v3 = a3;
  v4 = [v3 na_any:&__block_literal_global_1];
  if ([v3 count] > 1 || v4 && objc_msgSend(MEMORY[0x277D14CE8], "isAMac"))
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  return v6;
}

uint64_t __71__HUQuickControlGridItemPredicate_matchingControlItemsForControlItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end