@interface EXContentFormat
+ (id)edContentFormatFromXmlContentFormatElement:(_xmlNode *)element;
@end

@implementation EXContentFormat

+ (id)edContentFormatFromXmlContentFormatElement:(_xmlNode *)element
{
  if (element)
  {
    v9 = 0;
    v4 = 0;
    if (CXOptionalUnsignedLongAttribute(element, CXNoNamespace, "numFmtId", &v9))
    {
      v8 = 0;
      CXOptionalStringAttribute(element, CXNoNamespace, "formatCode", &v8);
      v5 = v8;
      v6 = [EDString edStringWithString:v5];
      v4 = [EDContentFormat contentFormatWithFormatString:v6 formatId:v9];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end