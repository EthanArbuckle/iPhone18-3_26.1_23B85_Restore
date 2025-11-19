@interface WDListLevel
- (WDListLevel)initWithDocument:(id)a3;
- (id)description;
@end

@implementation WDListLevel

- (WDListLevel)initWithDocument:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WDListLevel;
  v5 = [(WDListLevel *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, v4);
    v6->mStartNumber = 0;
    v6->mNumberFormat = 0;
    v6->mRestartNumbering = 1;
    v6->mRestartLevel = -1;
    v6->mLegal = 0;
    v6->mSuffix = 0;
    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    mText = v6->mText;
    v6->mText = v7;

    v6->mLegacy = 0;
    v6->mLegacySpace = 0;
    v6->mLegacyIndent = 0;
    v6->mJustification = 0;
    v9 = [[WDParagraphProperties alloc] initWithDocument:v4];
    mParagraphProperties = v6->mParagraphProperties;
    v6->mParagraphProperties = v9;

    v11 = [[WDCharacterProperties alloc] initWithDocument:v4];
    mCharacterProperties = v6->mCharacterProperties;
    v6->mCharacterProperties = v11;
  }

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDListLevel;
  v2 = [(WDListLevel *)&v4 description];

  return v2;
}

@end