@interface CHXBar2DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
+ (void)readFrom:(_xmlNode *)from chartType:(id)type state:(id)state;
@end

@implementation CHXBar2DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v8 = [(CHDChartType *)CHDBar2DType chartTypeWithChart:chart];

  [self readFrom:element chartType:v8 state:stateCopy];

  return v8;
}

+ (void)readFrom:(_xmlNode *)from chartType:(id)type state:(id)state
{
  typeCopy = type;
  stateCopy = state;
  [typeCopy setVaryColors:0];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v11 = OCXFindChild(from, oAXChartNamespace, "gapWidth");

  if (v11)
  {
    [typeCopy setGapWidth:{CXRequiredUnsignedLongAttribute(v11, CXNoNamespace, "val")}];
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v14 = OCXFindChild(from, oAXChartNamespace2, "overlap");

  if (v14)
  {
    [typeCopy setOverlap:{-CXRequiredLongAttribute(v14, CXNoNamespace, "val")}];
  }

  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v17 = OCXFindChild(from, oAXChartNamespace3, "barDir");

  if (v17)
  {
    v23 = 0;
    v17 = CXOptionalStringAttribute(v17, CXNoNamespace, "val", &v23);
    v18 = v23;
    v19 = v18;
    if (v17)
    {
      v17 = [v18 isEqualToString:@"col"];
    }
  }

  [typeCopy setColumn:v17];
  drawingState4 = [stateCopy drawingState];
  oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
  v22 = OCXFindChild(from, oAXChartNamespace4, "grouping");

  [typeCopy setGrouping:{+[CHXChartType chdGroupingFromXmlGroupingElement:](CHXChartType, "chdGroupingFromXmlGroupingElement:", v22)}];
}

@end