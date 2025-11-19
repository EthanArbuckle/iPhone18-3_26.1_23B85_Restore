@interface EBString
+ (id)edStringFromXlString:(const void *)a3 edResources:(id)a4;
+ (void)xlStringFromEDString:(id)a3 state:(id)a4;
@end

@implementation EBString

+ (id)edStringFromXlString:(const void *)a3 edResources:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = objc_alloc_init(EDString);
    v7 = [MEMORY[0x277CCACA8] stringWithOcText:a3 + 8];
    [(EDString *)v6 setString:v7];

    if (((*(a3 + 8) - *(a3 + 7)) & 0x7FFFFFFF8) != 0)
    {
      v18 = v6;
      v8 = +[(EDCollection *)EDRunsCollection];
      v10 = *(a3 + 7);
      v9 = *(a3 + 8);
      v11 = [(EDString *)v6 string];
      v12 = [v11 length];
      v13 = v9 - v10;

      if (((v9 - v10) & 0x7FFFFFFF8) != 0)
      {
        v14 = 0;
        do
        {
          v15 = *(*(a3 + 7) + 8 * v14);
          if (v15 && v12 > *v15)
          {
            v16 = [EDRun runWithCharIndex:*v15 fontIndex:[EBFontTable edFontIndexFromXlFontIndex:v15[1]] resources:v5];
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

+ (void)xlStringFromEDString:(id)a3 state:(id)a4
{
  v4 = a3;
  if (v4)
  {
    v7 = [v4 string];
    if ([v7 length] >= 0xFFFF)
    {
      v5 = [v7 substringToIndex:65534];

      v7 = v5;
      [TCMessageContext reportWarning:ECStringTooLong];
    }

    OcText::OcText(&v8);
    [v7 copyToOcText:&v8];
    operator new();
  }

  return 0;
}

@end