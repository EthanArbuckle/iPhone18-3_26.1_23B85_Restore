@interface WBSymbol
+ (void)readFrom:(id)a3 textRun:(WrdCharacterTextRun *)a4 paragraph:(id)a5 symbol:(id)a6;
@end

@implementation WBSymbol

+ (void)readFrom:(id)a3 textRun:(WrdCharacterTextRun *)a4 paragraph:(id)a5 symbol:(id)a6
{
  v16 = a3;
  v9 = a5;
  v10 = a6;
  var4 = a4->var4;
  var5 = a4->var5;
  v13 = [v9 document];
  v14 = [v10 properties];
  [WBCharacterProperties readFrom:v16 wrdProperties:var4 tracked:var5 document:v13 properties:v14];

  v15 = [v16 fontAtIndex:var4->var47];
  [v10 setFont:v15];
  [v10 setCharacter:var4->var50];
}

@end