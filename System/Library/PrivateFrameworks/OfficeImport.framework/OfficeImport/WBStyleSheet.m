@interface WBStyleSheet
+ (void)initializeStyles:(id)a3 with:(void *)a4 reader:(id)a5;
+ (void)readFrom:(id)a3 styleSheet:(id)a4;
@end

@implementation WBStyleSheet

+ (void)readFrom:(id)a3 styleSheet:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [WBObjectFactory create:57];
  if (v7)
  {
  }

  else
  {
    v8 = 0;
  }

  v9 = [v15 wrdReader];
  (*(*v9 + 208))(v9, v8);
  [a1 initializeStyles:v6 with:v8 reader:v15];
  v10 = [v6 defaultCharacterProperties];
  [v10 setResolveMode:0];
  v11 = [v15 fontAtIndex:v8[4]];
  [v10 setFont:v11];
  v12 = [v15 fontAtIndex:v8[7]];

  [v10 setExtendedFont:v12];
  v13 = [v15 fontAtIndex:v8[5]];

  [v10 setFarEastFont:v13];
  v14 = [v15 fontAtIndex:v8[6]];

  [v10 setSymbolFont:v14];
  (*(*v8 + 8))(v8);
}

+ (void)initializeStyles:(id)a3 with:(void *)a4 reader:(id)a5
{
  v29 = a3;
  v7 = a5;
  v28 = ((*(a4 + 8) - *(a4 + 6)) >> 3);
  if (((*(a4 + 8) - *(a4 + 6)) >> 3))
  {
    v8 = 0;
    v27 = @"Normal";
    do
    {
      StyleReference = WrdStyleSheet::getStyleReference(a4, v8);
      if (*(StyleReference + 24))
      {
        v10 = [MEMORY[0x277CCACA8] stringWithCsString:StyleReference + 8];
        v11 = v29;
      }

      else
      {
        v11 = v29;
        v10 = @"__WB_UNKNOWN_DEFAULT_STYLE_NAME__";
        switch(v8)
        {
          case 0:
            v12 = v27;
            goto LABEL_21;
          case 1:
            v12 = @"Heading 1";
            goto LABEL_21;
          case 2:
            v12 = @"Heading 2";
            goto LABEL_21;
          case 3:
            v12 = @"Heading 3";
            goto LABEL_21;
          case 4:
            v12 = @"Heading 4";
            goto LABEL_21;
          case 5:
            v12 = @"Heading 5";
            goto LABEL_21;
          case 6:
            v12 = @"Heading 6";
            goto LABEL_21;
          case 7:
            v12 = @"Heading 7";
            goto LABEL_21;
          case 8:
            v12 = @"Heading 8";
            goto LABEL_21;
          case 9:
            v12 = @"Heading 9";
            goto LABEL_21;
          case 10:
            v12 = @"Default Paragraph Font";
            goto LABEL_21;
          case 11:
            v12 = @"Table Normal";
            goto LABEL_21;
          case 12:
            v12 = @"No List";
            goto LABEL_21;
          case 13:
            break;
          case 14:
            v12 = @"Document Map";
LABEL_21:
            v13 = v12;
            v11 = v29;
            v10 = v13;
            break;
          default:
            v10 = &stru_286EE1130;
            break;
        }
      }

      v14 = [v11 styleNameToUniqueId:{v10, v27}];
      v15 = [v29 styleWithId:v14];
      v16 = *(StyleReference + 152);
      if (v15)
      {
        v17 = [v29 styleNameToUniqueId:v14];

        v18 = [v29 createStyleWithId:v17 type:v16];

        v19 = v18;
        v14 = v17;
        [v18 setName:v10];
      }

      else
      {
        v19 = [v29 createStyleWithId:v14 type:v16];
        [v19 setName:v10];
      }

      if (v8 || v16 != 1)
      {
        if (v8 == 10 && v16 == 2)
        {
          [v29 setDefaultCharacterStyle:v19];
        }

        else if (v8 == 11 && v16 == 3)
        {
          [v29 setDefaultTableStyle:v19];
        }

        else if (v8 == 12 && v16 == 4)
        {
          [v29 setDefaultListStyle:v19];
        }
      }

      else
      {
        [v29 setDefaultParagraphStyle:v19];
      }

      [v7 addStyle:v19 index:v8];

      v8 = (v8 + 1);
    }

    while (v28 != v8);
    v20 = 0;
    do
    {
      v21 = [v7 styleAtIndex:v20];
      [WBStyle readFrom:v7 wrdStyle:WrdStyleSheet::getStyleReference(a4 style:v20), v21];
      v22 = [v21 name];
      v23 = [v22 componentsSeparatedByString:{@", "}];
      if ([v23 count] >= 2)
      {
        v24 = [v23 count];
        if (v24)
        {
          for (i = 0; i != v24; ++i)
          {
            v26 = [v23 objectAtIndex:i];
            if ([v26 length])
            {
              [v29 addStyle:v21 name:v26];
            }
          }
        }
      }

      v20 = (v20 + 1);
    }

    while (v20 != v28);
  }
}

@end