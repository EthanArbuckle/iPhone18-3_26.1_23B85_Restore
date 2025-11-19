@interface OADTextRun
- (BOOL)isSimilarToTextRun:(id)a3;
- (OADTextRun)init;
- (id)description;
@end

@implementation OADTextRun

- (OADTextRun)init
{
  v6.receiver = self;
  v6.super_class = OADTextRun;
  v2 = [(OADTextRun *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(OADCharacterProperties);
    mProperties = v2->mProperties;
    v2->mProperties = v3;
  }

  return v2;
}

- (BOOL)isSimilarToTextRun:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  LOBYTE(v4) = v4 == objc_opt_class();

  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTextRun;
  v2 = [(OADTextRun *)&v4 description];

  return v2;
}

@end