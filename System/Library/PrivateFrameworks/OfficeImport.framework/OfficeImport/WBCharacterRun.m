@interface WBCharacterRun
+ (void)readFrom:(id)a3 wrdTextRun:(WrdCharacterTextRun *)a4 run:(id)a5 paragraph:(id)a6;
- (WrdCharacterProperties)wrdProperties;
@end

@implementation WBCharacterRun

+ (void)readFrom:(id)a3 wrdTextRun:(WrdCharacterTextRun *)a4 run:(id)a5 paragraph:(id)a6
{
  v16 = a3;
  v9 = a5;
  v10 = a6;
  var4 = a4->var4;
  var5 = a4->var5;
  v13 = [v10 document];
  v14 = [v9 properties];
  [WBCharacterProperties readFrom:v16 wrdProperties:var4 tracked:var5 document:v13 properties:v14];

  v15 = [v16 readCharactersForTextRun:a4];
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