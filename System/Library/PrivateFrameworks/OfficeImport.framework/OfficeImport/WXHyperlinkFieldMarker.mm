@interface WXHyperlinkFieldMarker
+ (void)readFrom:(_xmlNode *)from paragraphNamespace:(_xmlNs *)namespace to:(id)to state:(id)state;
@end

@implementation WXHyperlinkFieldMarker

+ (void)readFrom:(_xmlNode *)from paragraphNamespace:(_xmlNs *)namespace to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  packagePart = [stateCopy packagePart];
  v12 = [stateCopy OCXReadRelationshipForNode:from packagePart:packagePart];

  wXMainNamespace = [stateCopy WXMainNamespace];
  v31 = 0;
  CXOptionalStringAttribute(from, wXMainNamespace, "anchor", &v31);
  v14 = v31;

  if (v12 | v14)
  {
    if (v12)
    {
      targetLocation = [v12 targetLocation];
      v16 = targetLocation;
      if (targetLocation)
      {
        scheme = [targetLocation scheme];
        lowercaseString = [scheme lowercaseString];

        v30 = lowercaseString;
        if (([lowercaseString isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"https") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"ftp") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"mailto") & 1) != 0 || (objc_msgSend(v16, "isFileURL") & 1) != 0 || (objc_msgSend(v16, "absoluteString"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "rangeOfString:", @"///"), v21 = v20, v19, v21))
        {
          if (v14)
          {
            v22 = v14;
          }

          [v16 absoluteString];
          v23 = 0;
          v25 = fragment2 = v14;
        }

        else
        {
          fragment = [v16 fragment];

          v25 = 0;
          if (fragment)
          {
            fragment2 = [v16 fragment];
            v23 = 1;
          }

          else
          {
            [lowercaseString isEqualToString:@"javascript"];
            v23 = 0;
            fragment2 = 0;
          }
        }
      }

      else
      {
        v23 = 0;
        fragment2 = 0;
        v25 = 0;
      }
    }

    else if (v14)
    {
      v25 = v14;
      fragment2 = 0;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      fragment2 = 0;
      v25 = 0;
    }

    v26 = [toCopy addHyperlinkFieldMarker:19];
    [v26 setInternalLink:v23];
    [v26 setLink:v25];
    [v26 setFragment:fragment2];
    v27 = [toCopy addFieldMarker:20];
    [WXParagraph readRunsFrom:from paragraphNamespace:namespace to:toCopy targetRun:0 state:stateCopy];
    v28 = [toCopy addHyperlinkFieldMarker:21];
  }

  else
  {
    [WXParagraph readRunsFrom:from paragraphNamespace:namespace to:toCopy targetRun:0 state:stateCopy];
  }
}

@end