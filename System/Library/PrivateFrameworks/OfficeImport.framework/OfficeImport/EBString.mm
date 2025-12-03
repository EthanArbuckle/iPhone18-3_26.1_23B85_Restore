@interface EBString
+ (id)edStringFromXlString:(const void *)string edResources:(id)resources;
+ (void)xlStringFromEDString:(id)string state:(id)state;
@end

@implementation EBString

+ (id)edStringFromXlString:(const void *)string edResources:(id)resources
{
  resourcesCopy = resources;
  if (string)
  {
    v6 = objc_alloc_init(EDString);
    v7 = [MEMORY[0x277CCACA8] stringWithOcText:string + 8];
    [(EDString *)v6 setString:v7];

    if (((*(string + 8) - *(string + 7)) & 0x7FFFFFFF8) != 0)
    {
      v18 = v6;
      v8 = +[(EDCollection *)EDRunsCollection];
      v10 = *(string + 7);
      v9 = *(string + 8);
      string = [(EDString *)v6 string];
      v12 = [string length];
      v13 = v9 - v10;

      if (((v9 - v10) & 0x7FFFFFFF8) != 0)
      {
        v14 = 0;
        do
        {
          v15 = *(*(string + 7) + 8 * v14);
          if (v15 && v12 > *v15)
          {
            v16 = [EDRun runWithCharIndex:*v15 fontIndex:[EBFontTable edFontIndexFromXlFontIndex:v15[1]] resources:resourcesCopy];
            [v8 addObject:v16];
          }

          ++v14;
        }

        while ((v13 >> 3) != v14);
      }

      v6 = v18;
      [(EDString *)v18 setRuns:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)xlStringFromEDString:(id)string state:(id)state
{
  stringCopy = string;
  if (stringCopy)
  {
    string = [stringCopy string];
    if ([string length] >= 0xFFFF)
    {
      v5 = [string substringToIndex:65534];

      string = v5;
      [TCMessageContext reportWarning:ECStringTooLong];
    }

    OcText::OcText(&v8);
    [string copyToOcText:&v8];
    operator new();
  }

  return 0;
}

@end