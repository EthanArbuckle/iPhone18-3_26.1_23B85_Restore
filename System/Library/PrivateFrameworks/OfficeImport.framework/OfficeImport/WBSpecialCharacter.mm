@interface WBSpecialCharacter
+ (void)readFrom:(id)from at:(int)at textRun:(WrdCharacterTextRun *)run paragraph:(id)paragraph specialCharacter:(id)character;
@end

@implementation WBSpecialCharacter

+ (void)readFrom:(id)from at:(int)at textRun:(WrdCharacterTextRun *)run paragraph:(id)paragraph specialCharacter:(id)character
{
  v10 = *&at;
  fromCopy = from;
  paragraphCopy = paragraph;
  characterCopy = character;
  var4 = run->var4;
  var5 = run->var5;
  document = [paragraphCopy document];
  properties = [characterCopy properties];
  [WBCharacterProperties readFrom:fromCopy wrdProperties:var4 tracked:var5 document:document properties:properties];

  v17 = [fromCopy readCharactersFrom:v10 to:(v10 + 1) textType:{objc_msgSend(paragraphCopy, "textType")}];
  [characterCopy setCharacterType:{objc_msgSend(v17, "characterAtIndex:", 0)}];
}

@end