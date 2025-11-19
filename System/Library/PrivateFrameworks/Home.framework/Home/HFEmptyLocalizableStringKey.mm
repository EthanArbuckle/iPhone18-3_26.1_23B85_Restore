@interface HFEmptyLocalizableStringKey
- (HFEmptyLocalizableStringKey)init;
@end

@implementation HFEmptyLocalizableStringKey

- (HFEmptyLocalizableStringKey)init
{
  if (qword_27C84C548 != -1)
  {
    dispatch_once(&qword_27C84C548, &__block_literal_global_103_2);
  }

  v3 = qword_27C84C550;
  v6.receiver = self;
  v6.super_class = HFEmptyLocalizableStringKey;
  v4 = [(HFLocalizableStringKey *)&v6 initWithKey:v3 argumentKeys:0];

  return v4;
}

void __35__HFEmptyLocalizableStringKey_init__block_invoke_2()
{
  v0 = qword_27C84C550;
  qword_27C84C550 = &stru_2824B1A78;
}

@end