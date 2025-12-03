@interface MKClient
- (MKClient)initWithHostname:(id)hostname brand:(id)brand model:(id)model name:(id)name os:(id)os version:(id)version locale:(id)locale inputMethodLanguages:(id)self0 activatedCellularPlans:(unint64_t)self1;
@end

@implementation MKClient

- (MKClient)initWithHostname:(id)hostname brand:(id)brand model:(id)model name:(id)name os:(id)os version:(id)version locale:(id)locale inputMethodLanguages:(id)self0 activatedCellularPlans:(unint64_t)self1
{
  hostnameCopy = hostname;
  brandCopy = brand;
  modelCopy = model;
  nameCopy = name;
  osCopy = os;
  versionCopy = version;
  localeCopy = locale;
  languagesCopy = languages;
  v28.receiver = self;
  v28.super_class = MKClient;
  v25 = [(MKClient *)&v28 init];
  v26 = v25;
  if (v25)
  {
    [(MKClient *)v25 setHostname:hostnameCopy];
    [(MKClient *)v26 setBrand:brandCopy];
    [(MKClient *)v26 setModel:modelCopy];
    [(MKClient *)v26 setName:nameCopy];
    [(MKClient *)v26 setOs:osCopy];
    [(MKClient *)v26 setVersion:versionCopy];
    [(MKClient *)v26 setLocale:localeCopy];
    [(MKClient *)v26 setInputMethodLanguages:languagesCopy];
    [(MKClient *)v26 setActivatedCellularPlans:plans];
  }

  return v26;
}

@end