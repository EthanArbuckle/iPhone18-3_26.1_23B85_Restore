@interface WBFont
+ (id)readFrom:(const WrdFontFamilyName *)a3 withFontTable:(id)a4;
+ (void)write:(id)a3 to:(WrdFontFamilyName *)a4;
@end

@implementation WBFont

+ (id)readFrom:(const WrdFontFamilyName *)a3 withFontTable:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:&a3->var1];
  v17 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithCharacters:&v17 length:1];
  v8 = [v6 rangeOfString:v7];
  v10 = v9;

  if (v10)
  {
    v11 = [v6 substringWithRange:{0, v8}];

    v6 = v11;
  }

  v12 = [v6 dataUsingEncoding:4 allowLossyConversion:1];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];

  v14 = [v5 createFontWithName:v13];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:&a3->var2];
    [v14 addAlternateName:v15];
    [v14 setFontFamily:a3->var9];
    [v14 setCharacterSet:a3->var3];
    [v14 setPitch:a3->var8];
  }

  return v14;
}

+ (void)write:(id)a3 to:(WrdFontFamilyName *)a4
{
  v9 = a3;
  v5 = [v9 name];
  [v5 copyToCsString:&a4->var1];

  CsString::append(&a4->var1, 0);
  v6 = [v9 secondName];
  v7 = [v6 length];

  if (v7)
  {
    [v9 secondName];
  }

  else
  {
    [v9 name];
  }
  v8 = ;
  [v8 copyToCsString:&a4->var2];

  a4->var7 = 1;
  a4->var9 = [v9 fontFamily];
  a4->var6 = 400;
  a4->var3 = [v9 characterSet];
  a4->var10 = 0;
  a4->var8 = [v9 pitch];
}

@end