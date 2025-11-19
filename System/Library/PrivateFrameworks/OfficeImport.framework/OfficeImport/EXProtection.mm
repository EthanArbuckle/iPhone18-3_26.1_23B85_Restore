@interface EXProtection
+ (id)edProtectionFromXmlElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation EXProtection

+ (id)edProtectionFromXmlElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v12 = 0;
  v6 = 1;
  v11 = 1;
  if (a3)
  {
    CXOptionalBoolAttribute(a3, CXNoNamespace, "hidden", &v12);
    v7 = [v5 EXSpreadsheetMLNamespace];
    v8 = OCXFindChild(a3, v7, "Locked");

    if (v8)
    {
      v6 = 0;
      v11 = 0;
    }

    else
    {
      CXOptionalBoolAttribute(a3, CXNoNamespace, "locked", &v11);
      v6 = v11;
    }
  }

  v9 = [EDProtection protectionWithHidden:v12 locked:v6];

  return v9;
}

@end