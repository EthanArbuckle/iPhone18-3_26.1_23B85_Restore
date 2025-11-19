@interface CHXAxis
+ (Class)chxAxisClassWithChdAxis:(id)a3;
+ (Class)chxAxisClassWithXmlAxisElement:(_xmlNode *)a3 state:(id)a4;
+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4;
+ (int)chdAxisPositionFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4;
+ (int)chdCrossesFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4;
+ (int)chdTickLabelPositionFromXmlTickLabelPositionElement:(_xmlNode *)a3;
+ (int)chdTickMarkFromXmlTickMarkElement:(_xmlNode *)a3;
+ (void)readScalingFromXmlScalingElement:(_xmlNode *)a3 axis:(id)a4 state:(id)a5;
@end

@implementation CHXAxis

+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [a1 chxAxisClassWithXmlAxisElement:a3 state:v6];
  if (v7)
  {
    v8 = [v7 chdAxisFromXmlAxisElement:a3 state:v6];
    v9 = [v6 drawingState];
    v10 = [v9 OAXChartNamespace];
    v11 = OCXFindRequiredChild(a3, v10, "axId");

    [v8 setAxisId:{CXRequiredUnsignedLongAttribute(v11, CXNoNamespace, "val")}];
    v12 = [v6 drawingState];
    v13 = [v12 OAXChartNamespace];
    v14 = OCXFindChild(a3, v13, "delete");

    if (v14)
    {
      [v8 setDeleted:{CXRequiredBoolAttribute(v14, CXNoNamespace, "val")}];
    }

    else
    {
      v15 = [v6 drawingState];
      v16 = [v15 appVersion];

      [v8 setDeleted:{objc_msgSend(v16, "hasPrefix:", @"12."}];
    }

    v17 = [v6 drawingState];
    v18 = [v17 OAXChartNamespace];
    v19 = OCXFindRequiredChild(a3, v18, "scaling");

    [a1 readScalingFromXmlScalingElement:v19 axis:v8 state:v6];
    [v8 setAxisPosition:{objc_msgSend(a1, "chdAxisPositionFromXmlAxisElement:state:", a3, v6)}];
    v20 = [v6 drawingState];
    v21 = [v20 OAXChartNamespace];
    v22 = OCXFindChild(a3, v21, "title");

    if (v22)
    {
      v23 = [CHXTitle chdTitleFromXmlTitleElement:v22 isChartTitle:0 state:v6];
      [v8 setTitle:v23];
    }

    v24 = [v6 drawingState];
    v25 = [v24 OAXChartNamespace];
    v26 = OCXFindChild(a3, v25, "numFmt");

    if (v26)
    {
      v87 = 0;
      v27 = CXOptionalStringAttribute(v26, CXNoNamespace, "formatCode", &v87);
      v28 = v87;
      if (v27)
      {
        v29 = [EDString edStringWithString:v28];
        v30 = [EDContentFormat contentFormatWithFormatString:v29];

        [v8 setContentFormat:v30];
      }

      v86 = 0.0;
      if (CXOptionalDoubleAttribute(v26, CXNoNamespace, "sourceLinked", &v86))
      {
        [v8 setIsContentFormatDerivedFromDataPoints:{v86 == 1.0, v86}];
      }
    }

    v31 = [v6 drawingState];
    v32 = [v31 OAXChartNamespace];
    v33 = OCXFindChild(a3, v32, "majorTickMark");

    if (v33)
    {
      v34 = [a1 chdTickMarkFromXmlTickMarkElement:v33];
    }

    else
    {
      v34 = 2;
    }

    [v8 setMajorTickMark:v34];
    v35 = [v6 drawingState];
    v36 = [v35 OAXChartNamespace];
    v37 = OCXFindChild(a3, v36, "minorTickMark");

    if (v37)
    {
      v38 = [a1 chdTickMarkFromXmlTickMarkElement:v37];
    }

    else
    {
      v38 = 0;
    }

    [v8 setMinorTickMark:v38];
    v39 = [v6 drawingState];
    v40 = [v39 OAXChartNamespace];
    v41 = OCXFindChild(a3, v40, "tickLblPos");

    if (v41)
    {
      [v8 setTickLabelPosition:{objc_msgSend(a1, "chdTickLabelPositionFromXmlTickLabelPositionElement:", v41)}];
    }

    v42 = [v6 drawingState];
    v43 = [v42 OAXChartNamespace];
    v44 = OCXFindChild(a3, v43, "crossBetween");

    if (v44)
    {
      v45 = CXRequiredStringAttribute(v44, CXNoNamespace, "val");
      if ([v45 isEqualToString:@"between"])
      {
        v46 = 1;
      }

      else
      {
        v46 = [v45 isEqualToString:@"midCat"] ^ 1;
      }

      [v8 setCrossBetween:v46];
    }

    [v8 setCrosses:{objc_msgSend(a1, "chdCrossesFromXmlAxisElement:state:", a3, v6)}];
    v47 = [v6 drawingState];
    v48 = [v47 OAXChartNamespace];
    v49 = OCXFindChild(a3, v48, "crossesAt");

    if (v49)
    {
      v86 = 0.0;
      if (CXOptionalDoubleAttribute(v49, CXNoNamespace, "val", &v86))
      {
        [v8 setCrossesAt:v86];
      }
    }

    v50 = [v6 drawingState];
    v51 = [v50 OAXChartNamespace];
    v52 = OCXFindChild(a3, v51, "txPr");

    if (v52)
    {
      v53 = objc_alloc_init(OADTextBody);
      v54 = [v6 drawingState];
      [OAXTextBody readTextBodyFromXmlNode:v52 textBody:v53 drawingState:v54];

      v55 = [CHXFont edFontWithOadTextBody:v53 state:v6];
      [v8 setFont:v55];
      if ([(OADTextBody *)v53 paragraphCount])
      {
        v56 = [(OADTextBody *)v53 firstParagraphEffects];
        v57 = [OAXEffect updateIncomingEffects:v56];

        [v8 setLabelEffects:v57];
      }

      v58 = [(OADTextBody *)v53 properties];
      v59 = 0.0;
      if (v58)
      {
        v60 = [(OADTextBody *)v53 properties];
        v61 = [v60 hasRotation];

        if (v61)
        {
          v62 = [(OADTextBody *)v53 properties];
          [v62 rotation];
          v64 = v63;
          v65 = v63;

          if (v64 > -1000.0 || v64 <= -1001.0)
          {
            v59 = v65;
          }

          else
          {
            v59 = 0.0;
          }
        }
      }

      [v8 setTickLabelRotationAngle:v59];
    }

    v67 = [v6 drawingState];
    v68 = [v67 OAXChartNamespace];
    v69 = OCXFindChild(a3, v68, "minorGridlines");

    v70 = objc_alloc_init(OADGraphicProperties);
    [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v70 element:v69 state:v6];
    if (!v69)
    {
      v71 = +[OADStroke nullStroke];
      [(OADGraphicProperties *)v70 setStroke:v71];
    }

    v72 = [v6 autoStyling];
    [v72 resolveMinorGridLinesGraphicProperties:v70];

    [v8 setMinorGridLinesGraphicProperties:v70];
    v73 = [v6 drawingState];
    v74 = [v73 OAXChartNamespace];
    v75 = OCXFindChild(a3, v74, "majorGridlines");

    v76 = objc_alloc_init(OADGraphicProperties);
    [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v76 element:v75 state:v6];
    if (!v75)
    {
      v77 = +[OADStroke nullStroke];
      [(OADGraphicProperties *)v76 setStroke:v77];
    }

    v78 = [v6 autoStyling];
    [v78 resolveMajorGridLinesGraphicProperties:v76];

    [v8 setMajorGridLinesGraphicProperties:v76];
    v79 = objc_alloc_init(OADGraphicProperties);
    [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v79 element:a3 state:v6];
    if ([(OADGraphicProperties *)v79 hasStroke])
    {
      v80 = [(OADGraphicProperties *)v79 stroke];
      if ([v80 isFillOverridden])
      {
        v81 = [(OADGraphicProperties *)v79 stroke];
        v82 = [v81 fill];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [v8 setLineVisible:0];
        }
      }

      else
      {
      }
    }

    v84 = [v6 autoStyling];
    [v84 resolveAxisGraphicProperties:v79];

    [v8 setAxisGraphicProperties:v79];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (Class)chxAxisClassWithXmlAxisElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 drawingState];
  v7 = [v6 OAXChartNamespace];
  HasName = CXNodeHasName(a3, v7, "valAx");

  if (HasName || ([v5 drawingState], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "OAXChartNamespace"), v10 = objc_claimAutoreleasedReturnValue(), v11 = CXNodeHasName(a3, v10, "catAx"), v10, v9, v11) || (objc_msgSend(v5, "drawingState"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "OAXChartNamespace"), v13 = objc_claimAutoreleasedReturnValue(), v14 = CXNodeHasName(a3, v13, "dateAx"), v13, v12, v14) || (objc_msgSend(v5, "drawingState"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "OAXChartNamespace"), v16 = objc_claimAutoreleasedReturnValue(), v17 = CXNodeHasName(a3, v16, "serAx"), v16, v15, v17))
  {
    v18 = objc_opt_class();
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (Class)chxAxisClassWithChdAxis:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)readScalingFromXmlScalingElement:(_xmlNode *)a3 axis:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 drawingState];
  v10 = [v9 OAXChartNamespace];
  v11 = OCXFindChild(a3, v10, "max");

  if (v11)
  {
    v19 = 0.0;
    if (CXOptionalDoubleAttribute(v11, CXNoNamespace, "val", &v19))
    {
      [v7 setScalingMaximum:v19];
    }
  }

  v12 = [v8 drawingState];
  v13 = [v12 OAXChartNamespace];
  v14 = OCXFindChild(a3, v13, "min");

  if (v14)
  {
    v19 = 0.0;
    if (CXOptionalDoubleAttribute(v14, CXNoNamespace, "val", &v19))
    {
      [v7 setScalingMinimum:v19];
    }
  }

  v15 = [v8 drawingState];
  v16 = [v15 OAXChartNamespace];
  v17 = OCXFindChild(a3, v16, "orientation");

  if (v17)
  {
    v18 = CXDefaultStringAttribute(v17, CXNoNamespace, "val", 0);
    if ([v18 isEqualToString:@"maxMin"])
    {
      [v7 setOrientation:1];
      [v7 setReverseOrder:1];
    }
  }
}

+ (int)chdAxisPositionFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = [a4 drawingState];
  v6 = [v5 OAXChartNamespace];
  v7 = OCXFindRequiredChild(a3, v6, "axPos");

  v8 = CXRequiredStringAttribute(v7, CXNoNamespace, "val");
  if ([v8 isEqualToString:@"b"])
  {
    v9 = 0;
  }

  else if ([v8 isEqualToString:@"l"])
  {
    v9 = 1;
  }

  else if ([v8 isEqualToString:@"r"])
  {
    v9 = 2;
  }

  else if ([v8 isEqualToString:@"t"])
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int)chdTickMarkFromXmlTickMarkElement:(_xmlNode *)a3
{
  if (!a3)
  {
    return 3;
  }

  v12 = 0;
  v3 = CXOptionalStringAttribute(a3, CXNoNamespace, "val", &v12);
  v4 = v12;
  v5 = v4;
  if (v3)
  {
    [v4 isEqualToString:@"cross"];
    v6 = [v5 isEqualToString:@"in"];
    v7 = [v5 isEqualToString:@"none"];
    v8 = [v5 isEqualToString:@"out"];
    if (v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    if (v7)
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 3;
  }

  return v10;
}

+ (int)chdTickLabelPositionFromXmlTickLabelPositionElement:(_xmlNode *)a3
{
  if (!a3)
  {
    return 3;
  }

  v13 = 0;
  v3 = CXOptionalStringAttribute(a3, CXNoNamespace, "val", &v13);
  v4 = v13;
  v5 = v4;
  if (v3)
  {
    v6 = [v4 isEqualToString:@"high"];
    v7 = [v5 isEqualToString:@"low"];
    v8 = [v5 isEqualToString:@"nextTo"];
    v9 = [v5 isEqualToString:@"none"];
    if (v6)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    if (v7)
    {
      v10 = 1;
    }

    if (v8)
    {
      v10 = 3;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 3;
  }

  return v11;
}

+ (int)chdCrossesFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = [a4 drawingState];
  v6 = [v5 OAXChartNamespace];
  v7 = OCXFindChild(a3, v6, "crosses");

  if (!v7)
  {
    return 0;
  }

  v8 = CXRequiredStringAttribute(v7, CXNoNamespace, "val");
  if (([v8 isEqualToString:@"autoZero"] & 1) == 0)
  {
    if ([v8 isEqualToString:@"min"])
    {
      v9 = 1;
      goto LABEL_6;
    }

    v10 = [v8 isEqualToString:@"max"];

    if (v10)
    {
      return 2;
    }

    return 0;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

@end