@interface WBStyleSheet
+ (void)initializeStyles:(id)styles with:(void *)with reader:(id)reader;
+ (void)readFrom:(id)from styleSheet:(id)sheet;
@end

@implementation WBStyleSheet

+ (void)readFrom:(id)from styleSheet:(id)sheet
{
  fromCopy = from;
  sheetCopy = sheet;
  v7 = [WBObjectFactory create:57];
  if (v7)
  {
  }

  else
  {
    v8 = 0;
  }

  wrdReader = [fromCopy wrdReader];
  (*(*wrdReader + 208))(wrdReader, v8);
  [self initializeStyles:sheetCopy with:v8 reader:fromCopy];
  defaultCharacterProperties = [sheetCopy defaultCharacterProperties];
  [defaultCharacterProperties setResolveMode:0];
  v11 = [fromCopy fontAtIndex:v8[4]];
  [defaultCharacterProperties setFont:v11];
  v12 = [fromCopy fontAtIndex:v8[7]];

  [defaultCharacterProperties setExtendedFont:v12];
  v13 = [fromCopy fontAtIndex:v8[5]];

  [defaultCharacterProperties setFarEastFont:v13];
  v14 = [fromCopy fontAtIndex:v8[6]];

  [defaultCharacterProperties setSymbolFont:v14];
  (*(*v8 + 8))(v8);
}

+ (void)initializeStyles:(id)styles with:(void *)with reader:(id)reader
{
  stylesCopy = styles;
  readerCopy = reader;
  v28 = ((*(with + 8) - *(with + 6)) >> 3);
  if (((*(with + 8) - *(with + 6)) >> 3))
  {
    v8 = 0;
    v27 = @"Normal";
    do
    {
      StyleReference = WrdStyleSheet::getStyleReference(with, v8);
      if (*(StyleReference + 24))
      {
        v10 = [MEMORY[0x277CCACA8] stringWithCsString:StyleReference + 8];
        v11 = stylesCopy;
      }

      else
      {
        v11 = stylesCopy;
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
            v11 = stylesCopy;
            v10 = v13;
            break;
          default:
            v10 = &stru_286EE1130;
            break;
        }
      }

      v14 = [v11 styleNameToUniqueId:{v10, v27}];
      v15 = [stylesCopy styleWithId:v14];
      v16 = *(StyleReference + 152);
      if (v15)
      {
        v17 = [stylesCopy styleNameToUniqueId:v14];

        v18 = [stylesCopy createStyleWithId:v17 type:v16];

        v19 = v18;
        v14 = v17;
        [v18 setName:v10];
      }

      else
      {
        v19 = [stylesCopy createStyleWithId:v14 type:v16];
        [v19 setName:v10];
      }

      if (v8 || v16 != 1)
      {
        if (v8 == 10 && v16 == 2)
        {
          [stylesCopy setDefaultCharacterStyle:v19];
        }

        else if (v8 == 11 && v16 == 3)
        {
          [stylesCopy setDefaultTableStyle:v19];
        }

        else if (v8 == 12 && v16 == 4)
        {
          [stylesCopy setDefaultListStyle:v19];
        }
      }

      else
      {
        [stylesCopy setDefaultParagraphStyle:v19];
      }

      [readerCopy addStyle:v19 index:v8];

      v8 = (v8 + 1);
    }

    while (v28 != v8);
    v20 = 0;
    do
    {
      v21 = [readerCopy styleAtIndex:v20];
      [WBStyle readFrom:readerCopy wrdStyle:WrdStyleSheet::getStyleReference(with style:v20), v21];
      name = [v21 name];
      v23 = [name componentsSeparatedByString:{@", "}];
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
              [stylesCopy addStyle:v21 name:v26];
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