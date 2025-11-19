@interface HFLiteralLocalizableStringKey
- (HFLiteralLocalizableStringKey)initWithLocalizedString:(id)a3;
@end

@implementation HFLiteralLocalizableStringKey

- (HFLiteralLocalizableStringKey)initWithLocalizedString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFLiteralLocalizableStringKey;
  v6 = [(HFLocalizableStringKey *)&v9 initWithKey:&stru_2824B1A78 argumentKeys:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localizedString, a3);
  }

  return v7;
}

@end