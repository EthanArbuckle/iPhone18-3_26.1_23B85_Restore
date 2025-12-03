@interface HFCompoundLocalizableStringKey
- (HFCompoundLocalizableStringKey)initWithFormat:(id)format localizableStrings:(id)strings;
- (id)localizedStringWithArgumentBlock:(id)block;
@end

@implementation HFCompoundLocalizableStringKey

- (HFCompoundLocalizableStringKey)initWithFormat:(id)format localizableStrings:(id)strings
{
  formatCopy = format;
  stringsCopy = strings;
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
    objc_storeStrong(&v10->_format, format);
    v11 = [stringsCopy mutableCopy];
    array = v11;
    if (!v11)
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    objc_storeStrong(&v10->_localizableStrings, array);
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

- (id)localizedStringWithArgumentBlock:(id)block
{
  blockCopy = block;
  v5 = MEMORY[0x277CCACA8];
  format = [(HFCompoundLocalizableStringKey *)self format];
  localizableStrings = [(HFCompoundLocalizableStringKey *)self localizableStrings];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HFCompoundLocalizableStringKey_localizedStringWithArgumentBlock___block_invoke;
  v12[3] = &unk_277DFDED8;
  v13 = blockCopy;
  v8 = blockCopy;
  v9 = [localizableStrings na_map:v12];
  v10 = [v5 hf_stringWithFormat:format arguments:v9];

  return v10;
}

@end