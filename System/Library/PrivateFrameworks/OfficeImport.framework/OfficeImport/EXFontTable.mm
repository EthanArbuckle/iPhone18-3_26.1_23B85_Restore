@interface EXFontTable
+ (void)readFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)setDefaultWithState:(id)a3;
@end

@implementation EXFontTable

+ (void)readFrom:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v23 = v5;
    v6 = [v5 resources];
    v7 = [v6 fonts];

    v8 = [v23 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v8, "font");

    v10 = 0;
    if (Child)
    {
      v11 = 1;
      do
      {
        v12 = [EXFont edFontFromXmlFontElement:Child inConditionalFormat:0 returnDefaultIfEmpty:0 state:v23];
        v13 = v12;
        if (v12)
        {
          if (([v12 isHeightOverridden] & 1) == 0 && v10)
          {
            [v10 height];
            [v13 setHeight:?];
          }

          if (([v13 isNameOverridden] & 1) == 0 && v10)
          {
            v14 = [v10 name];
            [v13 setName:v14];
          }

          if (v11)
          {
            v15 = v13;

            v10 = v15;
          }

          [v7 addObject:v13];
        }

        else if (v10)
        {
          [v7 addObject:v10];
        }

        else
        {
          v16 = [EDFont alloc];
          v17 = [v23 resources];
          v18 = [(EDFont *)v16 initWithResources:v17];
          [v7 addObject:v18];

          v10 = 0;
        }

        v19 = [v23 EXSpreadsheetMLNamespace];
        Child = OCXFindNextChild(Child, v19, "font");

        v11 = 0;
      }

      while (Child);
    }

    if (![v7 count])
    {
      v20 = [EDFont alloc];
      v21 = [v23 resources];
      v22 = [(EDFont *)v20 initWithResources:v21];

      [v7 addObject:v22];
    }

    v5 = v23;
  }
}

+ (void)setDefaultWithState:(id)a3
{
  v7 = a3;
  v3 = [v7 resources];
  v4 = [EDFont fontWithResources:v3];

  [v4 setHeight:240.0];
  v5 = [v7 resources];
  v6 = [v5 fonts];

  [v6 addObject:v4];
}

@end