@interface MKClient
- (MKClient)initWithHostname:(id)a3 brand:(id)a4 model:(id)a5 name:(id)a6 os:(id)a7 version:(id)a8 locale:(id)a9 inputMethodLanguages:(id)a10 activatedCellularPlans:(unint64_t)a11;
@end

@implementation MKClient

- (MKClient)initWithHostname:(id)a3 brand:(id)a4 model:(id)a5 name:(id)a6 os:(id)a7 version:(id)a8 locale:(id)a9 inputMethodLanguages:(id)a10 activatedCellularPlans:(unint64_t)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v28.receiver = self;
  v28.super_class = MKClient;
  v25 = [(MKClient *)&v28 init];
  v26 = v25;
  if (v25)
  {
    [(MKClient *)v25 setHostname:v17];
    [(MKClient *)v26 setBrand:v18];
    [(MKClient *)v26 setModel:v19];
    [(MKClient *)v26 setName:v20];
    [(MKClient *)v26 setOs:v21];
    [(MKClient *)v26 setVersion:v22];
    [(MKClient *)v26 setLocale:v23];
    [(MKClient *)v26 setInputMethodLanguages:v24];
    [(MKClient *)v26 setActivatedCellularPlans:a11];
  }

  return v26;
}

@end