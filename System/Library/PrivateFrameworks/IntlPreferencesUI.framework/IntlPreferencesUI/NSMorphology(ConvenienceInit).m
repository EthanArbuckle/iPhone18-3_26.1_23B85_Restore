@interface NSMorphology(ConvenienceInit)
+ (id)morphologyWithCase:()ConvenienceInit determination:;
@end

@implementation NSMorphology(ConvenienceInit)

+ (id)morphologyWithCase:()ConvenienceInit determination:
{
  v6 = objc_opt_new();
  [v6 setGrammaticalCase:a3];
  [v6 setDetermination:a4];

  return v6;
}

@end