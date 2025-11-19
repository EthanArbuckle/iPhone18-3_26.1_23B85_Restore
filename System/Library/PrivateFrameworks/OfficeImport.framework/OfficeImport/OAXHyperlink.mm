@interface OAXHyperlink
+ (id)readHyperlink:(_xmlNode *)a3 state:(id)a4;
@end

@implementation OAXHyperlink

+ (id)readHyperlink:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(OADHyperlink);
  v8 = CXDefaultStringAttribute(a3, CXNoNamespace, "tooltip", 0);
  [(OADHyperlink *)v7 setTooltip:v8];

  v9 = CXDefaultStringAttribute(a3, CXNoNamespace, "action", 0);
  [(OADHyperlink *)v7 setAction:v9];

  [(OADHyperlink *)v7 setDoEndSound:CXDefaultBoolAttribute(a3, CXNoNamespace, "endSnd", 0)];
  [(OADHyperlink *)v7 setIsVisited:CXDefaultBoolAttribute(a3, CXNoNamespace, "highlightClick", 0)];
  [(OADHyperlink *)v7 setDoAddToHistory:CXDefaultBoolAttribute(a3, CXNoNamespace, "history", 1)];
  v10 = CXDefaultStringAttribute(a3, CXNoNamespace, "invalidUrl", 0);
  [(OADHyperlink *)v7 setInvalidUrl:v10];

  v11 = CXDefaultStringAttribute(a3, CXNoNamespace, "tgtFrame", 0);
  [(OADHyperlink *)v7 setTargetFrame:v11];

  v12 = [v6 packagePart];
  v13 = [v6 OCXReadRelationshipForNode:a3 packagePart:v12];

  if (v13)
  {
    v14 = [v13 targetLocation];
    v25 = [v14 scheme];
    v15 = [v14 relativePath];
    v16 = [v14 host];
    if (v15 && [v15 length] >= 3)
    {
      v4 = [v15 substringToIndex:3];
      v17 = 1;
      v18 = 1;
      if ([v4 isEqualToString:@"www"])
      {
        goto LABEL_13;
      }

      if (!v16)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = 0;
      if (!v16)
      {
        goto LABEL_11;
      }
    }

    if ([v16 length] >= 3)
    {
      v19 = [v16 substringToIndex:3];
      v18 = [v19 isEqualToString:@"www"];

      if (!v17)
      {
LABEL_14:
        if (!v25 && v18)
        {
          v20 = objc_alloc(MEMORY[0x277CBEBC0]);
          if (v16)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"http://%@%@", v16, v15];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"http://%@", v15];
          }
          v21 = ;
          v22 = [v20 initWithString:v21];

          [(OADHyperlink *)v7 setTargetLocation:v22];
          goto LABEL_21;
        }

LABEL_18:
        [(OADHyperlink *)v7 setTargetLocation:v14];
LABEL_21:
        -[OADHyperlink setTargetMode:](v7, "setTargetMode:", [v13 targetMode]);
        v23 = [v6 client];
        [v23 postprocessHyperlink:v7 relationship:v13 state:v6];

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