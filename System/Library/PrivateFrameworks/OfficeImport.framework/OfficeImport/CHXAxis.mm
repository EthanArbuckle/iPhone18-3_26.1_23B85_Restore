@interface CHXAxis
+ (Class)chxAxisClassWithChdAxis:(id)axis;
+ (Class)chxAxisClassWithXmlAxisElement:(_xmlNode *)element state:(id)state;
+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)element state:(id)state;
+ (int)chdAxisPositionFromXmlAxisElement:(_xmlNode *)element state:(id)state;
+ (int)chdCrossesFromXmlAxisElement:(_xmlNode *)element state:(id)state;
+ (int)chdTickLabelPositionFromXmlTickLabelPositionElement:(_xmlNode *)element;
+ (int)chdTickMarkFromXmlTickMarkElement:(_xmlNode *)element;
+ (void)readScalingFromXmlScalingElement:(_xmlNode *)element axis:(id)axis state:(id)state;
@end

@implementation CHXAxis

+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v7 = [self chxAxisClassWithXmlAxisElement:element state:stateCopy];
  if (v7)
  {
    v8 = [v7 chdAxisFromXmlAxisElement:element state:stateCopy];
    drawingState = [stateCopy drawingState];
    oAXChartNamespace = [drawingState OAXChartNamespace];
    v11 = OCXFindRequiredChild(element, oAXChartNamespace, "axId");

    [v8 setAxisId:{CXRequiredUnsignedLongAttribute(v11, CXNoNamespace, "val")}];
    drawingState2 = [stateCopy drawingState];
    oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
    v14 = OCXFindChild(element, oAXChartNamespace2, "delete");

    if (v14)
    {
      [v8 setDeleted:{CXRequiredBoolAttribute(v14, CXNoNamespace, "val")}];
    }

    else
    {
      drawingState3 = [stateCopy drawingState];
      appVersion = [drawingState3 appVersion];

      [v8 setDeleted:{objc_msgSend(appVersion, "hasPrefix:", @"12."}];
    }

    drawingState4 = [stateCopy drawingState];
    oAXChartNamespace3 = [drawingState4 OAXChartNamespace];
    v19 = OCXFindRequiredChild(element, oAXChartNamespace3, "scaling");

    [self readScalingFromXmlScalingElement:v19 axis:v8 state:stateCopy];
    [v8 setAxisPosition:{objc_msgSend(self, "chdAxisPositionFromXmlAxisElement:state:", element, stateCopy)}];
    drawingState5 = [stateCopy drawingState];
    oAXChartNamespace4 = [drawingState5 OAXChartNamespace];
    v22 = OCXFindChild(element, oAXChartNamespace4, "title");

    if (v22)
    {
      v23 = [CHXTitle chdTitleFromXmlTitleElement:v22 isChartTitle:0 state:stateCopy];
      [v8 setTitle:v23];
    }

    drawingState6 = [stateCopy drawingState];
    oAXChartNamespace5 = [drawingState6 OAXChartNamespace];
    v26 = OCXFindChild(element, oAXChartNamespace5, "numFmt");

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

    drawingState7 = [stateCopy drawingState];
    oAXChartNamespace6 = [drawingState7 OAXChartNamespace];
    v33 = OCXFindChild(element, oAXChartNamespace6, "majorTickMark");

    if (v33)
    {
      v34 = [self chdTickMarkFromXmlTickMarkElement:v33];
    }

    else
    {
      v34 = 2;
    }

    [v8 setMajorTickMark:v34];
    drawingState8 = [stateCopy drawingState];
    oAXChartNamespace7 = [drawingState8 OAXChartNamespace];
    v37 = OCXFindChild(element, oAXChartNamespace7, "minorTickMark");

    if (v37)
    {
      v38 = [self chdTickMarkFromXmlTickMarkElement:v37];
    }

    else
    {
      v38 = 0;
    }

    [v8 setMinorTickMark:v38];
    drawingState9 = [stateCopy drawingState];
    oAXChartNamespace8 = [drawingState9 OAXChartNamespace];
    v41 = OCXFindChild(element, oAXChartNamespace8, "tickLblPos");

    if (v41)
    {
      [v8 setTickLabelPosition:{objc_msgSend(self, "chdTickLabelPositionFromXmlTickLabelPositionElement:", v41)}];
    }

    drawingState10 = [stateCopy drawingState];
    oAXChartNamespace9 = [drawingState10 OAXChartNamespace];
    v44 = OCXFindChild(element, oAXChartNamespace9, "crossBetween");

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

    [v8 setCrosses:{objc_msgSend(self, "chdCrossesFromXmlAxisElement:state:", element, stateCopy)}];
    drawingState11 = [stateCopy drawingState];
    oAXChartNamespace10 = [drawingState11 OAXChartNamespace];
    v49 = OCXFindChild(element, oAXChartNamespace10, "crossesAt");

    if (v49)
    {
      v86 = 0.0;
      if (CXOptionalDoubleAttribute(v49, CXNoNamespace, "val", &v86))
      {
        [v8 setCrossesAt:v86];
      }
    }

    drawingState12 = [stateCopy drawingState];
    oAXChartNamespace11 = [drawingState12 OAXChartNamespace];
    v52 = OCXFindChild(element, oAXChartNamespace11, "txPr");

    if (v52)
    {
      v53 = objc_alloc_init(OADTextBody);
      drawingState13 = [stateCopy drawingState];
      [OAXTextBody readTextBodyFromXmlNode:v52 textBody:v53 drawingState:drawingState13];

      v55 = [CHXFont edFontWithOadTextBody:v53 state:stateCopy];
      [v8 setFont:v55];
      if ([(OADTextBody *)v53 paragraphCount])
      {
        firstParagraphEffects = [(OADTextBody *)v53 firstParagraphEffects];
        v57 = [OAXEffect updateIncomingEffects:firstParagraphEffects];

        [v8 setLabelEffects:v57];
      }

      properties = [(OADTextBody *)v53 properties];
      v59 = 0.0;
      if (properties)
      {
        properties2 = [(OADTextBody *)v53 properties];
        hasRotation = [properties2 hasRotation];

        if (hasRotation)
        {
          properties3 = [(OADTextBody *)v53 properties];
          [properties3 rotation];
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

    drawingState14 = [stateCopy drawingState];
    oAXChartNamespace12 = [drawingState14 OAXChartNamespace];
    v69 = OCXFindChild(element, oAXChartNamespace12, "minorGridlines");

    v70 = objc_alloc_init(OADGraphicProperties);
    [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v70 element:v69 state:stateCopy];
    if (!v69)
    {
      v71 = +[OADStroke nullStroke];
      [(OADGraphicProperties *)v70 setStroke:v71];
    }

    autoStyling = [stateCopy autoStyling];
    [autoStyling resolveMinorGridLinesGraphicProperties:v70];

    [v8 setMinorGridLinesGraphicProperties:v70];
    drawingState15 = [stateCopy drawingState];
    oAXChartNamespace13 = [drawingState15 OAXChartNamespace];
    v75 = OCXFindChild(element, oAXChartNamespace13, "majorGridlines");

    v76 = objc_alloc_init(OADGraphicProperties);
    [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v76 element:v75 state:stateCopy];
    if (!v75)
    {
      v77 = +[OADStroke nullStroke];
      [(OADGraphicProperties *)v76 setStroke:v77];
    }

    autoStyling2 = [stateCopy autoStyling];
    [autoStyling2 resolveMajorGridLinesGraphicProperties:v76];

    [v8 setMajorGridLinesGraphicProperties:v76];
    v79 = objc_alloc_init(OADGraphicProperties);
    [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v79 element:element state:stateCopy];
    if ([(OADGraphicProperties *)v79 hasStroke])
    {
      stroke = [(OADGraphicProperties *)v79 stroke];
      if ([stroke isFillOverridden])
      {
        stroke2 = [(OADGraphicProperties *)v79 stroke];
        fill = [stroke2 fill];
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

    autoStyling3 = [stateCopy autoStyling];
    [autoStyling3 resolveAxisGraphicProperties:v79];

    [v8 setAxisGraphicProperties:v79];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (Class)chxAxisClassWithXmlAxisElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  HasName = CXNodeHasName(element, oAXChartNamespace, "valAx");

  if (HasName || ([stateCopy drawingState], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "OAXChartNamespace"), v10 = objc_claimAutoreleasedReturnValue(), v11 = CXNodeHasName(element, v10, "catAx"), v10, v9, v11) || (objc_msgSend(stateCopy, "drawingState"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "OAXChartNamespace"), v13 = objc_claimAutoreleasedReturnValue(), v14 = CXNodeHasName(element, v13, "dateAx"), v13, v12, v14) || (objc_msgSend(stateCopy, "drawingState"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "OAXChartNamespace"), v16 = objc_claimAutoreleasedReturnValue(), v17 = CXNodeHasName(element, v16, "serAx"), v16, v15, v17))
  {
    v18 = objc_opt_class();
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (Class)chxAxisClassWithChdAxis:(id)axis
{
  axisCopy = axis;
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

+ (void)readScalingFromXmlScalingElement:(_xmlNode *)element axis:(id)axis state:(id)state
{
  axisCopy = axis;
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v11 = OCXFindChild(element, oAXChartNamespace, "max");

  if (v11)
  {
    v19 = 0.0;
    if (CXOptionalDoubleAttribute(v11, CXNoNamespace, "val", &v19))
    {
      [axisCopy setScalingMaximum:v19];
    }
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v14 = OCXFindChild(element, oAXChartNamespace2, "min");

  if (v14)
  {
    v19 = 0.0;
    if (CXOptionalDoubleAttribute(v14, CXNoNamespace, "val", &v19))
    {
      [axisCopy setScalingMinimum:v19];
    }
  }

  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v17 = OCXFindChild(element, oAXChartNamespace3, "orientation");

  if (v17)
  {
    v18 = CXDefaultStringAttribute(v17, CXNoNamespace, "val", 0);
    if ([v18 isEqualToString:@"maxMin"])
    {
      [axisCopy setOrientation:1];
      [axisCopy setReverseOrder:1];
    }
  }
}

+ (int)chdAxisPositionFromXmlAxisElement:(_xmlNode *)element state:(id)state
{
  drawingState = [state drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v7 = OCXFindRequiredChild(element, oAXChartNamespace, "axPos");

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

+ (int)chdTickMarkFromXmlTickMarkElement:(_xmlNode *)element
{
  if (!element)
  {
    return 3;
  }

  v12 = 0;
  v3 = CXOptionalStringAttribute(element, CXNoNamespace, "val", &v12);
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

+ (int)chdTickLabelPositionFromXmlTickLabelPositionElement:(_xmlNode *)element
{
  if (!element)
  {
    return 3;
  }

  v13 = 0;
  v3 = CXOptionalStringAttribute(element, CXNoNamespace, "val", &v13);
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

+ (int)chdCrossesFromXmlAxisElement:(_xmlNode *)element state:(id)state
{
  drawingState = [state drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v7 = OCXFindChild(element, oAXChartNamespace, "crosses");

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