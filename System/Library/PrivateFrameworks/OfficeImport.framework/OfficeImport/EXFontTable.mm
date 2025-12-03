@interface EXFontTable
+ (void)readFrom:(_xmlNode *)from state:(id)state;
+ (void)setDefaultWithState:(id)state;
@end

@implementation EXFontTable

+ (void)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  if (from)
  {
    v23 = stateCopy;
    resources = [stateCopy resources];
    fonts = [resources fonts];

    eXSpreadsheetMLNamespace = [v23 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "font");

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
            name = [v10 name];
            [v13 setName:name];
          }

          if (v11)
          {
            v15 = v13;

            v10 = v15;
          }

          [fonts addObject:v13];
        }

        else if (v10)
        {
          [fonts addObject:v10];
        }

        else
        {
          v16 = [EDFont alloc];
          resources2 = [v23 resources];
          v18 = [(EDFont *)v16 initWithResources:resources2];
          [fonts addObject:v18];

          v10 = 0;
        }

        eXSpreadsheetMLNamespace2 = [v23 EXSpreadsheetMLNamespace];
        Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "font");

        v11 = 0;
      }

      while (Child);
    }

    if (![fonts count])
    {
      v20 = [EDFont alloc];
      resources3 = [v23 resources];
      v22 = [(EDFont *)v20 initWithResources:resources3];

      [fonts addObject:v22];
    }

    stateCopy = v23;
  }
}

+ (void)setDefaultWithState:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  v4 = [EDFont fontWithResources:resources];

  [v4 setHeight:240.0];
  resources2 = [stateCopy resources];
  fonts = [resources2 fonts];

  [fonts addObject:v4];
}

@end