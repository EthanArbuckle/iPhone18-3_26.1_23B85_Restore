@interface CHBDataValueProperties
+ (Class)chbDataValuePropertiesClassWithState:(id)state;
+ (id)chdDataValueProperties;
+ (id)chdDataValuePropertiesFrom:(const XlChartSeriesFormat *)from state:(id)state;
+ (id)chdDataValuePropertiesFromState:(id)state;
+ (id)readFrom:(const XlChartSeriesFormat *)from state:(id)state;
@end

@implementation CHBDataValueProperties

+ (id)chdDataValueProperties
{
  v2 = objc_alloc_init(CHDDataValueProperties);

  return v2;
}

+ (id)readFrom:(const XlChartSeriesFormat *)from state:(id)state
{
  stateCopy = state;
  if (from)
  {
    v7 = [self chdDataValuePropertiesFrom:from state:stateCopy];
    [v7 setDataValueIndex:from->var9];
    XlChartBinaryReader::setDataPointFormat([stateCopy xlReader], from->var12, LOWORD(from->var9));
    v8 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartSeriesFormat:from state:stateCopy];
    [v7 setGraphicProperties:v8];

    v9 = [CHBMarker readFrom:from state:stateCopy];
    [v7 setMarker:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)chdDataValuePropertiesFrom:(const XlChartSeriesFormat *)from state:(id)state
{
  v5 = [self chbDataValuePropertiesClassWithState:state];
  chdDataValueProperties = [v5 chdDataValueProperties];
  [v5 read:chdDataValueProperties from:from];

  return chdDataValueProperties;
}

+ (id)chdDataValuePropertiesFromState:(id)state
{
  stateCopy = state;
  v5 = [objc_msgSend(self chbDataValuePropertiesClassWithState:{stateCopy), "chdDataValueProperties"}];

  return v5;
}

+ (Class)chbDataValuePropertiesClassWithState:(id)state
{
  stateCopy = state;
  xlCurrentPlot = [stateCopy xlCurrentPlot];
  if ((*(*xlCurrentPlot + 16))(xlCurrentPlot) != 2)
  {
    (*(*xlCurrentPlot + 16))(xlCurrentPlot);
  }

  v5 = objc_opt_class();

  return v5;
}

@end