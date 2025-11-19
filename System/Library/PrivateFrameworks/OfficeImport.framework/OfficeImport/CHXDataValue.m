@interface CHXDataValue
+ (id)chdDataValueFromXmlDataValueElement:(_xmlNode *)a3 state:(id)a4;
+ (id)chdNumberValueFromXmlDataValueElement:(_xmlNode *)a3 state:(id)a4;
+ (id)chdStringValueFromXmlDataValueElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXDataValue

+ (id)chdStringValueFromXmlDataValueElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [v6 drawingState];
  v8 = [v7 OAXChartNamespace];
  v9 = [EXString readStringWithAsciiCodeFromXmlStringElement:OCXFindRequiredChild(a3, v8, "v")];

  EDValue::makeWithNSString(v9, &v12);
  v10 = [a1 chdDataValueFromXmlDataValueElement:a3 state:v6];
  [v10 setValue:&v12];
  EDValue::~EDValue(&v12);

  return v10;
}

+ (id)chdNumberValueFromXmlDataValueElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [v6 drawingState];
  v8 = [v7 OAXChartNamespace];
  v9 = [EXString readStringWithAsciiCodeFromXmlStringElement:OCXFindRequiredChild(a3, v8, "v")];

  v10 = [v9 doubleValue];
  EDValue::makeWithNumber(v10, v11, &v14);
  v12 = [a1 chdDataValueFromXmlDataValueElement:a3 state:v6];
  [v12 setValue:&v14];
  EDValue::~EDValue(&v14);

  return v12;
}

+ (id)chdDataValueFromXmlDataValueElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = +[CHDDataValue dataValue];
  [v6 setIndex:{CXRequiredUnsignedLongAttribute(a3, CXNoNamespace, "idx")}];
  v13 = 0;
  v7 = CXOptionalStringAttribute(a3, CXNoNamespace, "formatCode", &v13);
  v8 = v13;
  if (v7)
  {
    v9 = [EDString edStringWithString:v8];
    v10 = [EDContentFormat contentFormatWithFormatString:v9];

    v11 = [v5 resources];
    [v6 setContentFormatWithResources:v10 resources:v11];
  }

  return v6;
}

@end