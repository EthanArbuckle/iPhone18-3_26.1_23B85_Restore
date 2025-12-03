@interface OADRegularTextRun
- (BOOL)isSimilarToTextRun:(id)run;
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

- (BOOL)isSimilarToTextRun:(id)run
{
  runCopy = run;
  v9.receiver = self;
  v9.super_class = OADRegularTextRun;
  if ([(OADTextRun *)&v9 isSimilarToTextRun:runCopy])
  {
    text = [(OADRegularTextRun *)self text];
    text2 = [runCopy text];
    v7 = [text isEqualToString:text2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end