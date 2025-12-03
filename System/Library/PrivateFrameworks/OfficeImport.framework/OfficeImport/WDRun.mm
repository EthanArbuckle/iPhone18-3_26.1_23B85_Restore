@interface WDRun
- (WDParagraph)paragraph;
- (WDRun)initWithParagraph:(id)paragraph;
- (id)description;
@end

@implementation WDRun

- (WDParagraph)paragraph
{
  WeakRetained = objc_loadWeakRetained(&self->mParagraph);

  return WeakRetained;
}

- (WDRun)initWithParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v8.receiver = self;
  v8.super_class = WDRun;
  v5 = [(WDRun *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mParagraph, paragraphCopy);
  }

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDRun;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end