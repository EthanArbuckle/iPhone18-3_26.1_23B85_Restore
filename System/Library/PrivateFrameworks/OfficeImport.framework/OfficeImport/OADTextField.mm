@interface OADTextField
- (OADTextField)init;
- (void)removeUnnecessaryOverrides;
@end

@implementation OADTextField

- (OADTextField)init
{
  v6.receiver = self;
  v6.super_class = OADTextField;
  v2 = [(OADTextRun *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(OADParagraphProperties);
    mParagraphProperties = v2->mParagraphProperties;
    v2->mParagraphProperties = v3;
  }

  return v2;
}

- (void)removeUnnecessaryOverrides
{
  [(OADParagraphProperties *)self->mParagraphProperties removeUnnecessaryOverrides];
  v3.receiver = self;
  v3.super_class = OADTextField;
  [(OADTextRun *)&v3 removeUnnecessaryOverrides];
}

@end