@interface OCXSummary
+ (void)readSummary:(id)a3 package:(id)a4;
@end

@implementation OCXSummary

+ (void)readSummary:(id)a3 package:(id)a4
{
  v10 = a3;
  v5 = [a4 properties];
  v6 = [v5 title];
  [v10 setTitle:v6];

  v7 = [v5 creator];
  [v10 setAuthor:v7];

  v8 = [v5 keywords];
  [v10 setKeywords:v8];

  v9 = [v5 description];
  [v10 setComments:v9];
}

@end