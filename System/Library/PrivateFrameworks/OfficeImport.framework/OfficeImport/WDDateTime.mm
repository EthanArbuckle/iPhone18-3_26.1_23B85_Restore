@interface WDDateTime
- (WDDateTime)initWithParagraph:(id)paragraph date:(id)date;
- (id)description;
@end

@implementation WDDateTime

- (WDDateTime)initWithParagraph:(id)paragraph date:(id)date
{
  paragraphCopy = paragraph;
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = WDDateTime;
  v8 = [(WDRunWithCharacterProperties *)&v13 initWithParagraph:paragraphCopy];
  if (v8)
  {
    v9 = [WDCharacterProperties alloc];
    document = [paragraphCopy document];
    v11 = [(WDCharacterProperties *)v9 initWithDocument:document];
    [(WDRunWithCharacterProperties *)v8 setProperties:v11];

    objc_storeStrong(&v8->mDate, date);
  }

  return v8;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDDateTime;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end