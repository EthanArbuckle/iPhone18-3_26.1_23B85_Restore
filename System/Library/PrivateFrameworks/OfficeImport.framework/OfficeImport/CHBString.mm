@interface CHBString
+ (id)edRunsFromXlChartTextFrame:(const void *)frame state:(id)state;
+ (id)edStringFromXlChartTextFrame:(const void *)frame state:(id)state;
+ (id)nsStringWithHandlingMultilevelCategoryDataFromOCText:(const OcText *)text chdFormula:(id)formula state:(id)state;
+ (unint64_t)edFontIndexForXlChartTextFrame:(void *)frame state:(id)state;
@end

@implementation CHBString

+ (id)edRunsFromXlChartTextFrame:(const void *)frame state:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  if (((*(frame + 38) - *(frame + 36)) & 0x3FFFC) != 0)
  {
    v6 = +[(EDCollection *)EDRunsCollection];
    v7 = v6;
    v8 = *(frame + 18);
    v9 = *(frame + 19) - v8;
    if ((v9 & 0x3FFFC) != 0)
    {
      v21 = v6;
      v10 = 0;
      v11 = 0;
      v12 = v9 >> 2;
      do
      {
        if (v11 >= v12)
        {
          std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
        }

        if ((v9 & 0x3FFFC) != 4 || *(frame + 93) < 0)
        {
          v17 = [EDRun runWithCharIndex:*(v8 + v10) fontIndex:[EBFontTable edFontIndexFromXlFontIndex:*(v8 + v10 + 2)] resources:resources];
        }

        else
        {
          fonts = [resources fonts];
          v14 = [fonts objectAtIndex:{+[EBFontTable edFontIndexFromXlFontIndex:](EBFontTable, "edFontIndexFromXlFontIndex:", *(v8 + v10 + 2))}];
          v15 = [v14 copy];
          if (*([stateCopy xlReader] + 1344) == 1 && *(frame + 93) >= 64)
          {
            v22 = *(frame + 12);
            v16 = [OITSUColor colorWithCsColour:&v22];
          }

          else
          {
            colors = [resources colors];
            v16 = [colors colorWithIndex:*(frame + 93)];
          }

          [v15 setColor:v16];
          v17 = [EDRun runWithCharIndex:*(v8 + v10) font:v15 resources:resources];
        }

        [v21 addObject:v17];

        ++v11;
        v8 = *(frame + 18);
        v9 = *(frame + 19) - v8;
        v12 = v9 >> 2;
        v10 += 4;
      }

      while (v11 < (v9 >> 2));
      v7 = v21;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)edStringFromXlChartTextFrame:(const void *)frame state:(id)state
{
  stateCopy = state;
  if (frame)
  {
    v7 = objc_alloc_init(EDString);
    v8 = CXGetRootElement(*(frame + 14), *(frame + 45));
    v9 = v8;
    if (v8)
    {
      if (xmlStrEqual(v8->name, "txPr") || xmlStrEqual(v9->name, "richFrt"))
      {
        v10 = [(OAXDrawingState *)[EXOfficeArtState alloc] initWithClient:0];
        v11 = [[CHXReadState alloc] initWithDrawingState:v10];
        resources = [stateCopy resources];
        [(CHXReadState *)v11 setResources:resources];

        v13 = [CHXFont edRunCollectionFromXmlTextPropertiesElement:v9 state:v11];
        if (v13)
        {
          [(EDString *)v7 setRuns:v13];
        }
      }

      else
      {
        v13 = 0;
      }

      xmlFreeDoc(v9->doc);
    }

    else
    {
      v13 = 0;
    }

    if (*(frame + 11))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithOcText:?];
      [(EDString *)v7 setString:v14];
    }

    if (v13)
    {
      v15 = [self edRunsFromXlChartTextFrame:frame state:stateCopy];
      v16 = [v15 count];
      if (v16 >= [v13 count])
      {
        v17 = [v13 count];
        if (v17)
        {
          for (i = 0; i != v17; ++i)
          {
            v19 = [v13 objectAtIndex:i];
            v20 = [v15 objectAtIndex:i];
            font = [v20 font];
            [v19 overrideFont:font];
          }
        }
      }
    }

    else
    {
      v15 = [self edRunsFromXlChartTextFrame:frame state:stateCopy];
      [(EDString *)v7 setRuns:v15];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)edFontIndexForXlChartTextFrame:(void *)frame state:(id)state
{
  stateCopy = state;
  v6 = [CHBString edStringFromXlChartTextFrame:frame state:stateCopy];
  if ([v6 areThereRuns])
  {
    runs = [v6 runs];
    v8 = [runs objectAtIndex:0];
    fontIndex = [v8 fontIndex];
  }

  else
  {
    runs = [stateCopy chart];
    fontIndex = [runs defaultFontIndex];
  }

  return fontIndex;
}

+ (id)nsStringWithHandlingMultilevelCategoryDataFromOCText:(const OcText *)text chdFormula:(id)formula state:(id)state
{
  formulaCopy = formula;
  stateCopy = state;
  if (!formulaCopy || [formulaCopy tokenCount] != 1)
  {
    goto LABEL_18;
  }

  v26 = 0;
  v9 = [formulaCopy lastExtendedDataForTokenAtIndex:0 length:&v26];
  v10 = 0;
  if (!v9 || v26 < 8)
  {
    goto LABEL_19;
  }

  v11 = [formulaCopy tokenTypeAtIndex:0];
  v12 = 1;
  v13 = 6;
  v14 = 4;
  v15 = 2;
  if (v11 > 90)
  {
    if (v11 != 91)
    {
      v16 = v9;
      if (v11 == 101)
      {
        goto LABEL_15;
      }

      v17 = 1;
      v18 = 1;
      v19 = 1;
      if (v11 != 123)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v16 = (v9 + 2);
    v13 = 8;
    v14 = 6;
    v15 = 4;
    goto LABEL_15;
  }

  if (v11 == 37)
  {
    v16 = v9;
    goto LABEL_15;
  }

  if (v11 == 59)
  {
    goto LABEL_13;
  }

  v16 = v9;
  v17 = 1;
  v18 = 1;
  v19 = 1;
  if (v11 == 69)
  {
LABEL_15:
    v12 = *v16;
    v18 = *(v9 + v15);
    v17 = *(v9 + v14);
    v19 = *(v9 + v13);
  }

LABEL_16:
  if (v12 == v18 && v17 <= v19)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  v10 = v12 > v18 || v17 != v19;
LABEL_19:
  v20 = [MEMORY[0x277CCACA8] stringWithOcText:text];
  v21 = v20;
  if (v10)
  {
    v22 = [v20 componentsSeparatedByString:@"\n"];
    if ([v22 count])
    {
      v23 = [v22 objectAtIndex:{objc_msgSend(v22, "count") - 1}];

      v21 = v23;
    }
  }

  return v21;
}

@end