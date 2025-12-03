@interface EXHyperlink
+ (id)edHyperlinkFromXmlHyperlinkElement:(_xmlNode *)element state:(id)state;
@end

@implementation EXHyperlink

+ (id)edHyperlinkFromXmlHyperlinkElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  if (element)
  {
    v6 = +[EDHyperlink hyperlink];
    currentPart = [stateCopy currentPart];
    v8 = [stateCopy OCXReadRelationshipForNode:element packagePart:currentPart];

    if (!v8)
    {
      [v6 setType:3];
      goto LABEL_11;
    }

    targetLocation = [v8 targetLocation];
    v10 = targetLocation;
    if (!targetLocation)
    {
      element = 0;
LABEL_21:

      goto LABEL_22;
    }

    absoluteURL = [targetLocation absoluteURL];
    absoluteString = [absoluteURL absoluteString];
    v13 = [EDString edStringWithString:absoluteString];
    [v6 setPath:v13];

    path = [v6 path];
    string = [path string];
    if (([string hasPrefix:@"mailto:"] & 1) == 0)
    {
      path2 = [v6 path];
      string2 = [path2 string];
      if (([string2 hasPrefix:@"http://"] & 1) == 0)
      {
        path3 = [v6 path];
        string3 = [path3 string];
        v33 = [string3 hasPrefix:@"https://"];

        if ((v33 & 1) == 0)
        {
          v18 = 1;
          goto LABEL_9;
        }

LABEL_8:
        v18 = 0;
LABEL_9:
        [v6 setType:v18];

LABEL_11:
        v38 = 0;
        v19 = CXOptionalStringAttribute(element, CXNoNamespace, "ref", &v38);
        v20 = v38;
        if (v19)
        {
          v21 = [EXReference edReferenceFromXmlReference:v20];
          [v6 setReference:v21];
        }

        v37 = v20;
        v22 = CXOptionalStringAttribute(element, CXNoNamespace, "location", &v37);
        v23 = v37;

        if (v22)
        {
          v24 = [EDString edStringWithString:v23];
          [v6 setTextMark:v24];
        }

        v36 = v23;
        v25 = CXOptionalStringAttribute(element, CXNoNamespace, "tooltip", &v36);
        v26 = v36;

        if (v25)
        {
          v27 = [EDString edStringWithString:v26];
          [v6 setToolTip:v27];
        }

        v35 = v26;
        v28 = CXOptionalStringAttribute(element, CXNoNamespace, "display", &v35);
        v29 = v35;

        if (v28)
        {
          v30 = [EDString edStringWithString:v29];
          [v6 setDescriptionText:v30];
        }

        element = v6;

        goto LABEL_21;
      }
    }

    goto LABEL_8;
  }

LABEL_22:

  return element;
}

@end