@interface CHBString
+ (id)edRunsFromXlChartTextFrame:(const void *)a3 state:(id)a4;
+ (id)edStringFromXlChartTextFrame:(const void *)a3 state:(id)a4;
+ (id)nsStringWithHandlingMultilevelCategoryDataFromOCText:(const OcText *)a3 chdFormula:(id)a4 state:(id)a5;
+ (unint64_t)edFontIndexForXlChartTextFrame:(void *)a3 state:(id)a4;
@end

@implementation CHBString

+ (id)edRunsFromXlChartTextFrame:(const void *)a3 state:(id)a4
{
  v20 = a4;
  v5 = [v20 resources];
  if (((*(a3 + 38) - *(a3 + 36)) & 0x3FFFC) != 0)
  {
    v6 = +[(EDCollection *)EDRunsCollection];
    v7 = v6;
    v8 = *(a3 + 18);
    v9 = *(a3 + 19) - v8;
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

        if ((v9 & 0x3FFFC) != 4 || *(a3 + 93) < 0)
        {
          v17 = [EDRun runWithCharIndex:*(v8 + v10) fontIndex:[EBFontTable edFontIndexFromXlFontIndex:*(v8 + v10 + 2)] resources:v5];
        }

        else
        {
          v13 = [v5 fonts];
          v14 = [v13 objectAtIndex:{+[EBFontTable edFontIndexFromXlFontIndex:](EBFontTable, "edFontIndexFromXlFontIndex:", *(v8 + v10 + 2))}];
          v15 = [v14 copy];
          if (*([v20 xlReader] + 1344) == 1 && *(a3 + 93) >= 64)
          {
            v22 = *(a3 + 12);
            v16 = [OITSUColor colorWithCsColour:&v22];
          }

          else
          {
            v18 = [v5 colors];
            v16 = [v18 colorWithIndex:*(a3 + 93)];
          }

          [v15 setColor:v16];
          v17 = [EDRun runWithCharIndex:*(v8 + v10) font:v15 resources:v5];
        }

        [v21 addObject:v17];

        ++v11;
        v8 = *(a3 + 18);
        v9 = *(a3 + 19) - v8;
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

+ (id)edStringFromXlChartTextFrame:(const void *)a3 state:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = objc_alloc_init(EDString);
    v8 = CXGetRootElement(*(a3 + 14), *(a3 + 45));
    v9 = v8;
    if (v8)
    {
      if (xmlStrEqual(v8->name, "txPr") || xmlStrEqual(v9->name, "richFrt"))
      {
        v10 = [(OAXDrawingState *)[EXOfficeArtState alloc] initWithClient:0];
        v11 = [[CHXReadState alloc] initWithDrawingState:v10];
        v12 = [v6 resources];
        [(CHXReadState *)v11 setResources:v12];

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

    if (*(a3 + 11))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithOcText:?];
      [(EDString *)v7 setString:v14];
    }

    if (v13)
    {
      v15 = [a1 edRunsFromXlChartTextFrame:a3 state:v6];
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
            v21 = [v20 font];
            [v19 overrideFont:v21];
          }
        }
      }
    }

    else
    {
      v15 = [a1 edRunsFromXlChartTextFrame:a3 state:v6];
      [(EDString *)v7 setRuns:v15];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)edFontIndexForXlChartTextFrame:(void *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [CHBString edStringFromXlChartTextFrame:a3 state:v5];
  if ([v6 areThereRuns])
  {
    v7 = [v6 runs];
    v8 = [v7 objectAtIndex:0];
    v9 = [v8 fontIndex];
  }

  else
  {
    v7 = [v5 chart];
    v9 = [v7 defaultFontIndex];
  }

  return v9;
}

+ (id)nsStringWithHandlingMultilevelCategoryDataFromOCText:(const OcText *)a3 chdFormula:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (!v7 || [v7 tokenCount] != 1)
  {
    goto LABEL_18;
  }

  v26 = 0;
  v9 = [v7 lastExtendedDataForTokenAtIndex:0 length:&v26];
  v10 = 0;
  if (!v9 || v26 < 8)
  {
    goto LABEL_19;
  }

  v11 = [v7 tokenTypeAtIndex:0];
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
  v20 = [MEMORY[0x277CCACA8] stringWithOcText:a3];
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