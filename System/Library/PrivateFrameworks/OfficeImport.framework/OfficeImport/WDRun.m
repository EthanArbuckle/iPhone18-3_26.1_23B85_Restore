@interface WDRun
- (WDParagraph)paragraph;
- (WDRun)initWithParagraph:(id)a3;
- (id)description;
@end

@implementation WDRun

- (WDParagraph)paragraph
{
  WeakRetained = objc_loadWeakRetained(&self->mParagraph);

  return WeakRetained;
}

- (WDRun)initWithParagraph:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WDRun;
  v5 = [(WDRun *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mParagraph, v4);
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