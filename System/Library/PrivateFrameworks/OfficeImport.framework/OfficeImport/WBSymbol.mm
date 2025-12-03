@interface WBSymbol
+ (void)readFrom:(id)from textRun:(WrdCharacterTextRun *)run paragraph:(id)paragraph symbol:(id)symbol;
@end

@implementation WBSymbol

+ (void)readFrom:(id)from textRun:(WrdCharacterTextRun *)run paragraph:(id)paragraph symbol:(id)symbol
{
  fromCopy = from;
  paragraphCopy = paragraph;
  symbolCopy = symbol;
  var4 = run->var4;
  var5 = run->var5;
  document = [paragraphCopy document];
  properties = [symbolCopy properties];
  [WBCharacterProperties readFrom:fromCopy wrdProperties:var4 tracked:var5 document:document properties:properties];

  v15 = [fromCopy fontAtIndex:var4->var47];
  [symbolCopy setFont:v15];
  [symbolCopy setCharacter:var4->var50];
}

@end