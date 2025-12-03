@interface OCXStreamUtility
+ (BOOL)pScanStreamForwardToApplicableContentInAlternateContent:(_xmlTextReader *)content;
+ (BOOL)readStream:(_xmlTextReader *)stream streamState:(id)state;
@end

@implementation OCXStreamUtility

+ (BOOL)pScanStreamForwardToApplicableContentInAlternateContent:(_xmlTextReader *)content
{
  v4 = xmlTextReaderDepth(content);
  while (xmlTextReaderRead(content) == 1)
  {
    v5 = xmlTextReaderConstLocalName(content);
    v6 = xmlTextReaderNodeType(content);
    v7 = xmlTextReaderDepth(content);
    if (v7 == v4 && v6 == 15)
    {
      break;
    }

    if (v7 == v4 + 1 && v6 == 1 && (!xmlStrEqual(v5, "Choice") || xmlTextReaderHasAttributes(content)) && (xmlStrEqual(v5, "Choice") && [CXNamespace isPrefixSupportedFromStream:content prefix:xmlTextReaderGetAttribute(content, "Requires")]|| xmlStrEqual(v5, "Fallback")))
    {
      return 1;
    }
  }

  return 0;
}

+ (BOOL)readStream:(_xmlTextReader *)stream streamState:(id)state
{
  stateCopy = state;
  while (1)
  {
    do
    {
      while (1)
      {
        if (![stateCopy hasLevels] || xmlTextReaderRead(stream) != 1)
        {
          v10 = 0;
          goto LABEL_13;
        }

        v6 = xmlTextReaderNodeType(stream);
        v7 = xmlTextReaderDepth(stream);
        if (v7 != [stateCopy currentContextDepth] || v6 != 15)
        {
          break;
        }

        [stateCopy popLevel];
      }
    }

    while (v7 != [stateCopy currentContextChildDepth] || v6 != 1);
    v8 = xmlTextReaderConstLocalName(stream);
    if (!xmlStrEqual(v8, "AlternateContent"))
    {
      break;
    }

    if ([OCXStreamUtility pScanStreamForwardToApplicableContentInAlternateContent:stream])
    {
      v9 = xmlTextReaderDepth(stream);
      [stateCopy pushLevel:v9 name:xmlTextReaderConstLocalName(stream)];
    }
  }

  v10 = 1;
LABEL_13:

  return v10;
}

@end