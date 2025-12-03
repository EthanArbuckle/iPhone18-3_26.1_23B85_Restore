@interface WBCharacterRun
+ (void)readFrom:(id)from wrdTextRun:(WrdCharacterTextRun *)run run:(id)a5 paragraph:(id)paragraph;
- (WrdCharacterProperties)wrdProperties;
@end

@implementation WBCharacterRun

+ (void)readFrom:(id)from wrdTextRun:(WrdCharacterTextRun *)run run:(id)a5 paragraph:(id)paragraph
{
  fromCopy = from;
  v9 = a5;
  paragraphCopy = paragraph;
  var4 = run->var4;
  var5 = run->var5;
  document = [paragraphCopy document];
  properties = [v9 properties];
  [WBCharacterProperties readFrom:fromCopy wrdProperties:var4 tracked:var5 document:document properties:properties];

  v15 = [fromCopy readCharactersForTextRun:run];
  [v9 setString:v15];
}

- (WrdCharacterProperties)wrdProperties
{
  result = [WBObjectFactory create:10];
  if (result)
  {
  }

  return result;
}

@end