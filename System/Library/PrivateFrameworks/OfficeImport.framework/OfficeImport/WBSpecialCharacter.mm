@interface WBSpecialCharacter
+ (void)readFrom:(id)a3 at:(int)a4 textRun:(WrdCharacterTextRun *)a5 paragraph:(id)a6 specialCharacter:(id)a7;
@end

@implementation WBSpecialCharacter

+ (void)readFrom:(id)a3 at:(int)a4 textRun:(WrdCharacterTextRun *)a5 paragraph:(id)a6 specialCharacter:(id)a7
{
  v10 = *&a4;
  v18 = a3;
  v11 = a6;
  v12 = a7;
  var4 = a5->var4;
  var5 = a5->var5;
  v15 = [v11 document];
  v16 = [v12 properties];
  [WBCharacterProperties readFrom:v18 wrdProperties:var4 tracked:var5 document:v15 properties:v16];

  v17 = [v18 readCharactersFrom:v10 to:(v10 + 1) textType:{objc_msgSend(v11, "textType")}];
  [v12 setCharacterType:{objc_msgSend(v17, "characterAtIndex:", 0)}];
}

@end