@interface ReporterWithRefApp
- (void)reportEvent:(id)event type:(id)type;
@end

@implementation ReporterWithRefApp

- (void)reportEvent:(id)event type:(id)type
{
  typeCopy = type;
  if (event)
  {
    v6 = sub_24E347CF8();
    v8 = v7;
    if (typeCopy)
    {
LABEL_3:
      v9 = sub_24E347CF8();
      typeCopy = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (type)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  selfCopy = self;
  sub_24E2ADDEC(v6, v8, v9, typeCopy);
}

@end