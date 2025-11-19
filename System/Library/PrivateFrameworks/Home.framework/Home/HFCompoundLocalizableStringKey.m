@interface HFCompoundLocalizableStringKey
- (HFCompoundLocalizableStringKey)initWithFormat:(id)a3 localizableStrings:(id)a4;
- (id)localizedStringWithArgumentBlock:(id)a3;
@end

@implementation HFCompoundLocalizableStringKey

- (HFCompoundLocalizableStringKey)initWithFormat:(id)a3 localizableStrings:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (qword_27C84C538 != -1)
  {
    dispatch_once(&qword_27C84C538, &__block_literal_global_78_2);
  }

  v9 = qword_27C84C540;
  v14.receiver = self;
  v14.super_class = HFCompoundLocalizableStringKey;
  v10 = [(HFLocalizableStringKey *)&v14 initWithKey:v9 argumentKeys:0];

  if (v10)
  {
    objc_storeStrong(&v10->_format, a3);
    v11 = [v8 mutableCopy];
    v12 = v11;
    if (!v11)
    {
      v12 = [MEMORY[0x277CBEB18] array];
    }

    objc_storeStrong(&v10->_localizableStrings, v12);
    if (!v11)
    {
    }
  }

  return v10;
}

void __68__HFCompoundLocalizableStringKey_initWithFormat_localizableStrings___block_invoke_2()
{
  v0 = qword_27C84C540;
  qword_27C84C540 = &stru_2824B1A78;
}

- (id)localizedStringWithArgumentBlock:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [(HFCompoundLocalizableStringKey *)self format];
  v7 = [(HFCompoundLocalizableStringKey *)self localizableStrings];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HFCompoundLocalizableStringKey_localizedStringWithArgumentBlock___block_invoke;
  v12[3] = &unk_277DFDED8;
  v13 = v4;
  v8 = v4;
  v9 = [v7 na_map:v12];
  v10 = [v5 hf_stringWithFormat:v6 arguments:v9];

  return v10;
}

@end