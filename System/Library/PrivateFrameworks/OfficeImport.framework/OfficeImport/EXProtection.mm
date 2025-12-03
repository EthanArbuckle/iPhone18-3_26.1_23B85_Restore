@interface EXProtection
+ (id)edProtectionFromXmlElement:(_xmlNode *)element state:(id)state;
@end

@implementation EXProtection

+ (id)edProtectionFromXmlElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v12 = 0;
  v6 = 1;
  v11 = 1;
  if (element)
  {
    CXOptionalBoolAttribute(element, CXNoNamespace, "hidden", &v12);
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    v8 = OCXFindChild(element, eXSpreadsheetMLNamespace, "Locked");

    if (v8)
    {
      v6 = 0;
      v11 = 0;
    }

    else
    {
      CXOptionalBoolAttribute(element, CXNoNamespace, "locked", &v11);
      v6 = v11;
    }
  }

  v9 = [EDProtection protectionWithHidden:v12 locked:v6];

  return v9;
}

@end