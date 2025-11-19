@interface ReporterWithRefApp
- (void)reportEvent:(id)a3 type:(id)a4;
@end

@implementation ReporterWithRefApp

- (void)reportEvent:(id)a3 type:(id)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = sub_24E347CF8();
    v8 = v7;
    if (v4)
    {
LABEL_3:
      v9 = sub_24E347CF8();
      v4 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v11 = self;
  sub_24E2ADDEC(v6, v8, v9, v4);
}

@end