@interface OADRegularTextRun
- (BOOL)isSimilarToTextRun:(id)a3;
- (OADRegularTextRun)init;
@end

@implementation OADRegularTextRun

- (OADRegularTextRun)init
{
  v6.receiver = self;
  v6.super_class = OADRegularTextRun;
  v2 = [(OADTextRun *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
    mText = v2->mText;
    v2->mText = v3;
  }

  return v2;
}

- (BOOL)isSimilarToTextRun:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = OADRegularTextRun;
  if ([(OADTextRun *)&v9 isSimilarToTextRun:v4])
  {
    v5 = [(OADRegularTextRun *)self text];
    v6 = [v4 text];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end