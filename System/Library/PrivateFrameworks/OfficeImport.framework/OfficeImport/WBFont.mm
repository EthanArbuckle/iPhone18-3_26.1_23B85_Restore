@interface WBFont
+ (id)readFrom:(const WrdFontFamilyName *)from withFontTable:(id)table;
+ (void)write:(id)write to:(WrdFontFamilyName *)to;
@end

@implementation WBFont

+ (id)readFrom:(const WrdFontFamilyName *)from withFontTable:(id)table
{
  tableCopy = table;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:&from->var1];
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

  v14 = [tableCopy createFontWithName:v13];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:&from->var2];
    [v14 addAlternateName:v15];
    [v14 setFontFamily:from->var9];
    [v14 setCharacterSet:from->var3];
    [v14 setPitch:from->var8];
  }

  return v14;
}

+ (void)write:(id)write to:(WrdFontFamilyName *)to
{
  writeCopy = write;
  name = [writeCopy name];
  [name copyToCsString:&to->var1];

  CsString::append(&to->var1, 0);
  secondName = [writeCopy secondName];
  v7 = [secondName length];

  if (v7)
  {
    [writeCopy secondName];
  }

  else
  {
    [writeCopy name];
  }
  v8 = ;
  [v8 copyToCsString:&to->var2];

  to->var7 = 1;
  to->var9 = [writeCopy fontFamily];
  to->var6 = 400;
  to->var3 = [writeCopy characterSet];
  to->var10 = 0;
  to->var8 = [writeCopy pitch];
}

@end