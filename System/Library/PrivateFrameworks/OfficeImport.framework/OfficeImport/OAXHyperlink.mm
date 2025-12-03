@interface OAXHyperlink
+ (id)readHyperlink:(_xmlNode *)hyperlink state:(id)state;
@end

@implementation OAXHyperlink

+ (id)readHyperlink:(_xmlNode *)hyperlink state:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADHyperlink);
  v8 = CXDefaultStringAttribute(hyperlink, CXNoNamespace, "tooltip", 0);
  [(OADHyperlink *)v7 setTooltip:v8];

  v9 = CXDefaultStringAttribute(hyperlink, CXNoNamespace, "action", 0);
  [(OADHyperlink *)v7 setAction:v9];

  [(OADHyperlink *)v7 setDoEndSound:CXDefaultBoolAttribute(hyperlink, CXNoNamespace, "endSnd", 0)];
  [(OADHyperlink *)v7 setIsVisited:CXDefaultBoolAttribute(hyperlink, CXNoNamespace, "highlightClick", 0)];
  [(OADHyperlink *)v7 setDoAddToHistory:CXDefaultBoolAttribute(hyperlink, CXNoNamespace, "history", 1)];
  v10 = CXDefaultStringAttribute(hyperlink, CXNoNamespace, "invalidUrl", 0);
  [(OADHyperlink *)v7 setInvalidUrl:v10];

  v11 = CXDefaultStringAttribute(hyperlink, CXNoNamespace, "tgtFrame", 0);
  [(OADHyperlink *)v7 setTargetFrame:v11];

  packagePart = [stateCopy packagePart];
  v13 = [stateCopy OCXReadRelationshipForNode:hyperlink packagePart:packagePart];

  if (v13)
  {
    targetLocation = [v13 targetLocation];
    scheme = [targetLocation scheme];
    relativePath = [targetLocation relativePath];
    host = [targetLocation host];
    if (relativePath && [relativePath length] >= 3)
    {
      v4 = [relativePath substringToIndex:3];
      v17 = 1;
      v18 = 1;
      if ([v4 isEqualToString:@"www"])
      {
        goto LABEL_13;
      }

      if (!host)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = 0;
      if (!host)
      {
        goto LABEL_11;
      }
    }

    if ([host length] >= 3)
    {
      v19 = [host substringToIndex:3];
      v18 = [v19 isEqualToString:@"www"];

      if (!v17)
      {
LABEL_14:
        if (!scheme && v18)
        {
          v20 = objc_alloc(MEMORY[0x277CBEBC0]);
          if (host)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"http://%@%@", host, relativePath];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"http://%@", relativePath];
          }
          v21 = ;
          v22 = [v20 initWithString:v21];

          [(OADHyperlink *)v7 setTargetLocation:v22];
          goto LABEL_21;
        }

LABEL_18:
        [(OADHyperlink *)v7 setTargetLocation:targetLocation];
LABEL_21:
        -[OADHyperlink setTargetMode:](v7, "setTargetMode:", [v13 targetMode]);
        client = [stateCopy client];
        [client postprocessHyperlink:v7 relationship:v13 state:stateCopy];

        goto LABEL_22;
      }

LABEL_13:

      goto LABEL_14;
    }

LABEL_11:
    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

    v18 = 0;
    goto LABEL_13;
  }

LABEL_22:

  return v7;
}

@end