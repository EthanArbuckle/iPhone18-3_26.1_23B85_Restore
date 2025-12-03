@interface NTKControlComplicationProvider
+ (NTKControlComplicationProvider)sharedInstance;
- (id)localizedAppNameFor:(id)for;
@end

@implementation NTKControlComplicationProvider

+ (NTKControlComplicationProvider)sharedInstance
{
  if (qword_27DA2CB48 != -1)
  {
    swift_once();
  }

  v3 = qword_27DA2D0D0;

  return v3;
}

- (id)localizedAppNameFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  object = NTKControlComplicationProvider.localizedAppName(for:)(forCopy).value._object;

  if (object)
  {
    v7 = sub_22DCB611C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end