@interface OCXStreamUtility
+ (BOOL)pScanStreamForwardToApplicableContentInAlternateContent:(_xmlTextReader *)a3;
+ (BOOL)readStream:(_xmlTextReader *)a3 streamState:(id)a4;
@end

@implementation OCXStreamUtility

+ (BOOL)pScanStreamForwardToApplicableContentInAlternateContent:(_xmlTextReader *)a3
{
  v4 = xmlTextReaderDepth(a3);
  while (xmlTextReaderRead(a3) == 1)
  {
    v5 = xmlTextReaderConstLocalName(a3);
    v6 = xmlTextReaderNodeType(a3);
    v7 = xmlTextReaderDepth(a3);
    if (v7 == v4 && v6 == 15)
    {
      break;
    }

    if (v7 == v4 + 1 && v6 == 1 && (!xmlStrEqual(v5, "Choice") || xmlTextReaderHasAttributes(a3)) && (xmlStrEqual(v5, "Choice") && [CXNamespace isPrefixSupportedFromStream:a3 prefix:xmlTextReaderGetAttribute(a3, "Requires")]|| xmlStrEqual(v5, "Fallback")))
    {
      return 1;
    }
  }

  return 0;
}

+ (BOOL)readStream:(_xmlTextReader *)a3 streamState:(id)a4
{
  v5 = a4;
  while (1)
  {
    do
    {
      while (1)
      {
        if (![v5 hasLevels] || xmlTextReaderRead(a3) != 1)
        {
          v10 = 0;
          goto LABEL_13;
        }

        v6 = xmlTextReaderNodeType(a3);
        v7 = xmlTextReaderDepth(a3);
        if (v7 != [v5 currentContextDepth] || v6 != 15)
        {
          break;
        }

        [v5 popLevel];
      }
    }

    while (v7 != [v5 currentContextChildDepth] || v6 != 1);
    v8 = xmlTextReaderConstLocalName(a3);
    if (!xmlStrEqual(v8, "AlternateContent"))
    {
      break;
    }

    if ([OCXStreamUtility pScanStreamForwardToApplicableContentInAlternateContent:a3])
    {
      v9 = xmlTextReaderDepth(a3);
      [v5 pushLevel:v9 name:xmlTextReaderConstLocalName(a3)];
    }
  }

  v10 = 1;
LABEL_13:

  return v10;
}

@end