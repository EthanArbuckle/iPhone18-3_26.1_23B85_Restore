@interface PXVmlClient
+ (id)colorWithRecolorInfoColorString:(id)string;
+ (void)readClientDataFromShape:(_xmlNode *)shape toGraphic:(id)graphic state:(id)state;
@end

@implementation PXVmlClient

+ (void)readClientDataFromShape:(_xmlNode *)shape toGraphic:(id)graphic state:(id)state
{
  graphicCopy = graphic;
  stateCopy = state;
  if (OCXFindChild(shape, PXVmlNamespace, "iscomment"))
  {
    v8 = [graphicCopy ensureClientDataOfClass:objc_opt_class()];
    [v8 setIsComment:1];
  }

  v9 = OCXFindChild(shape, PXVmlNamespace, "textdata");
  if (v9)
  {
    v10 = CXDefaultStringAttribute(v9, CXNoNamespace, "id", 0);
    if (v10)
    {
      packagePart = [stateCopy packagePart];
      package = [packagePart package];
      v12 = [packagePart relationshipForIdentifier:v10];
      targetLocation = [v12 targetLocation];
      v14 = [package partForLocation:targetLocation];

      data = [v14 data];
      if (data)
      {
        objc_opt_class();
        v33 = stateCopy;
        v16 = graphicCopy;
        objc_opt_class();
        [PXLegacyText readLegacyTextFromData:data toShape:v16 state:v33];

        stateCopy = v33;
      }

      targetLocation2 = [v12 targetLocation];
      [package resetPartForLocation:targetLocation2];
    }
  }

  v18 = OCXFindChild(shape, CXNoNamespace, "recolorinfo");
  v19 = v18;
  if (v18 && CXDefaultBoolAttribute(v18, CXNoNamespace, "recolorstate", 1))
  {
    v20 = CXDefaultLongAttribute(v19, CXNoNamespace, "numcolors", 0);
    if (v20 < 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v20];
    }

    v21 = CXDefaultLongAttribute(v19, CXNoNamespace, "numfills", 0);
    if (v21 < 1)
    {
      if (v20 < 1)
      {
LABEL_28:

        goto LABEL_29;
      }

      v22 = 0;
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v21];
    }

    v31 = [graphicCopy ensureClientDataOfClass:objc_opt_class()];
    v32 = v22;
    v30 = [[OADImageRecolorInfo alloc] initWithColors:v36 fills:v22];
    [v31 setImageRecolorInfo:v30];
    for (i = OCXFindChild(v19, CXNoNamespace, "recolorinfoentry"); i; i = OCXFindNextChild(i, CXNoNamespace, "recolorinfoentry"))
    {
      v24 = CXDefaultStringAttribute(i, CXNoNamespace, "fromcolor", 0);
      v25 = [PXVmlClient colorWithRecolorInfoColorString:v24];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [OADColor tsuColorWithRgbColor:v25];
      }

      else
      {
        v26 = 0;
      }

      v27 = CXDefaultStringAttribute(i, CXNoNamespace, "tocolor", 0);
      v28 = [PXVmlClient colorWithRecolorInfoColorString:v27];
      v29 = v28;
      if (v26)
      {
        if (v28)
        {
          [v36 setObject:v28 forKey:v26];
        }
      }
    }

    goto LABEL_28;
  }

LABEL_29:
}

+ (id)colorWithRecolorInfoColorString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (!stringCopy)
  {
    goto LABEL_12;
  }

  if ([stringCopy hasPrefix:{@"rgb(", "hasSuffix:", @")"}])
  {
    v5 = objc_msgSend(v4, "substringWithRange:", objc_msgSend(@"rgb("), "length", objc_msgSend(v4, "length") - (objc_msgSend(@"rgb("), "length" + objc_msgSend(@""), "length")));
    v6 = [v5 componentsSeparatedByString:{@", "}];
    if ([v6 count] == 3)
    {
      v7 = [v6 objectAtIndex:0];
      intValue = [v7 intValue];

      v9 = [v6 objectAtIndex:1];
      LODWORD(v7) = [v9 intValue];

      v10 = [v6 objectAtIndex:2];
      intValue2 = [v10 intValue];

      v12 = [OADRgbColor alloc];
      *&v13 = intValue;
      *&v14 = v7;
      *&v15 = intValue2;
      v16 = [(OADRgbColor *)v12 initWithRedByte:v13 greenByte:v14 blueByte:v15];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_13;
  }

  if (![v4 hasPrefix:@"scheme"])
  {
    goto LABEL_12;
  }

  {
    +[PXVmlClient(Private) colorWithRecolorInfoColorString:];
  }

  v17 = +[PXVmlClient(Private) colorWithRecolorInfoColorString:]::schemeColorEnumMap;
  if (!+[PXVmlClient(Private) colorWithRecolorInfoColorString:]::schemeColorEnumMap)
  {
    v18 = [[TCEnumerationMap alloc] initWithStructs:&+[PXVmlClient(Private) colorWithRecolorInfoColorString:]::schemeColorEnumStructs count:8 caseSensitive:1];
    v19 = +[PXVmlClient(Private) colorWithRecolorInfoColorString:]::schemeColorEnumMap;
    +[PXVmlClient(Private) colorWithRecolorInfoColorString:]::schemeColorEnumMap = v18;

    v17 = +[PXVmlClient(Private) colorWithRecolorInfoColorString:]::schemeColorEnumMap;
  }

  v20 = [v17 valueForString:v4];
  if (v20 != -130883970)
  {
    v16 = [[OADSchemeColor alloc] initWithSchemeColorIndex:v20];
  }

  else
  {
LABEL_12:
    v16 = 0;
  }

LABEL_13:

  return v16;
}

@end