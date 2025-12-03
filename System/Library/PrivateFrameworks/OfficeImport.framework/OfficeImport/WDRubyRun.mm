@interface WDRubyRun
- (WDRubyRun)initWithParagraph:(id)paragraph;
- (id)description;
@end

@implementation WDRubyRun

- (WDRubyRun)initWithParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v11.receiver = self;
  v11.super_class = WDRubyRun;
  v5 = [(WDCharacterRun *)&v11 initWithParagraph:paragraphCopy];
  if (v5)
  {
    v6 = [[WDCharacterRun alloc] initWithParagraph:paragraphCopy];
    mPhoneticRun = v5->mPhoneticRun;
    v5->mPhoneticRun = v6;

    v8 = objc_alloc_init(WDRubyProperties);
    mRubyProperties = v5->mRubyProperties;
    v5->mRubyProperties = v8;
  }

  return v5;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDRubyRun;
  v2 = [(WDCharacterRun *)&v4 description];

  return v2;
}

@end