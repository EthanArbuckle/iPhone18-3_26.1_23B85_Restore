@interface HFNumberDependentLocalizableStringKey
- (HFNumberDependentLocalizableStringKey)initWithKey:(id)key;
- (id)localizedStringWithArgumentBlock:(id)block;
@end

@implementation HFNumberDependentLocalizableStringKey

- (HFNumberDependentLocalizableStringKey)initWithKey:(id)key
{
  keyCopy = key;
  v10.receiver = self;
  v10.super_class = HFNumberDependentLocalizableStringKey;
  v5 = [(HFLocalizableStringKey *)&v10 initWithKey:keyCopy argumentKeys:0];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__HFNumberDependentLocalizableStringKey_initWithKey___block_invoke;
    v7[3] = &unk_277DFDEB0;
    objc_copyWeak(&v8, &location);
    [(HFLocalizableStringKey *)v5 setStringLocalizationBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v5;
}

id __53__HFNumberDependentLocalizableStringKey_initWithKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained integerArgument];
  v12 = HFLocalizedStringWithFormat(v3, @"%lu", v6, v7, v8, v9, v10, v11, v5);

  return v12;
}

- (id)localizedStringWithArgumentBlock:(id)block
{
  stringLocalizationBlock = [(HFLocalizableStringKey *)self stringLocalizationBlock];
  v5 = [(HFLocalizableStringKey *)self key];
  v6 = (stringLocalizationBlock)[2](stringLocalizationBlock, v5);

  return v6;
}

@end