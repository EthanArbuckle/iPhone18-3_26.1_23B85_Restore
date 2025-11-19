@interface WXHyperlinkFieldMarker
+ (void)readFrom:(_xmlNode *)a3 paragraphNamespace:(_xmlNs *)a4 to:(id)a5 state:(id)a6;
@end

@implementation WXHyperlinkFieldMarker

+ (void)readFrom:(_xmlNode *)a3 paragraphNamespace:(_xmlNs *)a4 to:(id)a5 state:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [v10 packagePart];
  v12 = [v10 OCXReadRelationshipForNode:a3 packagePart:v11];

  v13 = [v10 WXMainNamespace];
  v31 = 0;
  CXOptionalStringAttribute(a3, v13, "anchor", &v31);
  v14 = v31;

  if (v12 | v14)
  {
    if (v12)
    {
      v15 = [v12 targetLocation];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 scheme];
        v18 = [v17 lowercaseString];

        v30 = v18;
        if (([v18 isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"https") & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"ftp") & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"mailto") & 1) != 0 || (objc_msgSend(v16, "isFileURL") & 1) != 0 || (objc_msgSend(v16, "absoluteString"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "rangeOfString:", @"///"), v21 = v20, v19, v21))
        {
          if (v14)
          {
            v22 = v14;
          }

          [v16 absoluteString];
          v23 = 0;
          v25 = v24 = v14;
        }

        else
        {
          v29 = [v16 fragment];

          v25 = 0;
          if (v29)
          {
            v24 = [v16 fragment];
            v23 = 1;
          }

          else
          {
            [v18 isEqualToString:@"javascript"];
            v23 = 0;
            v24 = 0;
          }
        }
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
      }
    }

    else if (v14)
    {
      v25 = v14;
      v24 = 0;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    v26 = [v9 addHyperlinkFieldMarker:19];
    [v26 setInternalLink:v23];
    [v26 setLink:v25];
    [v26 setFragment:v24];
    v27 = [v9 addFieldMarker:20];
    [WXParagraph readRunsFrom:a3 paragraphNamespace:a4 to:v9 targetRun:0 state:v10];
    v28 = [v9 addHyperlinkFieldMarker:21];
  }

  else
  {
    [WXParagraph readRunsFrom:a3 paragraphNamespace:a4 to:v9 targetRun:0 state:v10];
  }
}

@end