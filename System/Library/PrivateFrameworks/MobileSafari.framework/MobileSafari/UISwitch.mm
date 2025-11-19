@interface UISwitch
@end

@implementation UISwitch

void __65__UISwitch_MobileSafariExtras__sf_initWithOn_valueChangeHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sender];
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v3 isOn]);
}

@end