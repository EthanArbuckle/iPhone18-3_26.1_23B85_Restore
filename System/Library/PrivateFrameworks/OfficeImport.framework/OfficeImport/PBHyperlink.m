@interface PBHyperlink
+ (id)readAnimationInfoContainerHolder:(id)a3 presentationState:(id)a4;
+ (void)readHyperlinksWithPresentationState:(id)a3;
@end

@implementation PBHyperlink

+ (void)readHyperlinksWithPresentationState:(id)a3
{
  v3 = a3;
  OcSummary::OcSummary(v26);
  v4 = [v3 reader];
  (*(*v4 + 120))(v4, v26);
  DocumentRef = PptBinaryReader::getDocumentRef([v3 reader]);
  objc_opt_class();
  v6 = [v3 documentRoot];
  v7 = [v6 pbReferenceWithID:DocumentRef];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  TCVerifyInputMeetsCondition(isKindOfClass & 1);
  v9 = [v7 firstChildOfType:1033];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 childCount];
    if (v11 >= 2)
    {
      v12 = 0;
      v13 = 1;
      v24 = v7;
      v25 = v3;
      do
      {
        v14 = [v10 childAt:{v13, v24, v25}];
        v15 = [v14 eshObject];
        if ((*(*v15 + 16))(v15) == 4055)
        {
          v16 = [v14 firstChildOfType:4051];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 eshObject];
            if (v18)
            {
              if (v19)
              {
                if (v12 < ((v28 - v27) >> 3))
                {
                  v20 = *(v27 + 8 * v12);
                  v21 = [v3 hyperlinkInfoWithId:v19[12] createIfAbsent:1];
                  if (*(v20 + 40))
                  {
                    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:v20 + 24];
                    [v21 setHyperlink1:v22];
                  }

                  if (*(v20 + 64))
                  {
                    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:v20 + 48];
                    [v21 setHyperlink2:v23];
                  }

                  v7 = v24;
                  v3 = v25;
                }

                ++v12;
              }
            }
          }
        }

        ++v13;
      }

      while (v11 != v13);
    }
  }

  OcSummary::~OcSummary(v26);
}

+ (id)readAnimationInfoContainerHolder:(id)a3 presentationState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 firstChildOfType:4083];
  v8 = [v7 eshObject];

  if (!v8)
  {
    v13 = 0;
    goto LABEL_48;
  }

  v32 = v6;
  v9 = [v6 hyperlinkInfoWithId:*(v8 + 52) createIfAbsent:0];
  v31 = [v9 screenTip];
  v33 = [v9 hyperlink1];
  v10 = [v9 hyperlink2];
  v11 = *(v8 + 56);
  if (v11 == 4)
  {
    v12 = *(v8 + 72);
  }

  else
  {
    v12 = 255;
  }

  v14 = *(v8 + 64);
  v30 = v10;
  v15 = [v10 componentsSeparatedByString:{@", "}];
  if ([v15 count] < 2)
  {
    v17 = 0;
  }

  else
  {
    v16 = [v15 objectAtIndex:1];
    v17 = [v16 intValue];

    if ([v15 count] >= 3)
    {
      v34 = [v15 objectAtIndex:2];
      goto LABEL_11;
    }
  }

  v34 = &stru_286EE1130;
LABEL_11:
  v18 = 0;
  v19 = 1;
  if (v11 <= 3)
  {
    if (v11 != 2)
    {
      v20 = 0;
      v21 = v11 == 3;
      v22 = v31;
      if (!v21)
      {
        goto LABEL_44;
      }

      if ((v14 - 1) < 6)
      {
        v19 = 0;
        v23 = 0;
        v24 = off_2799CDC48[v14 - 1];
        goto LABEL_46;
      }

      v18 = 0;
      v19 = 0;
LABEL_33:
      v20 = 0;
      goto LABEL_44;
    }

    if (v12)
    {
      v18 = 0;
      v20 = 0;
      v22 = v31;
      goto LABEL_44;
    }

    v22 = v31;
    v25 = [v5 childOfType:4026 instance:2];
    v26 = [v25 eshObject];

    if (!v26 || !*(v26 + 64))
    {
      v18 = 0;
      v20 = 0;
      v19 = 1;
      goto LABEL_44;
    }

    v27 = [MEMORY[0x277CCACA8] stringWithCsString:v26 + 48];
    v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27];

    v19 = 1;
    v24 = @"ppaction://program";
LABEL_46:
    v13 = objc_alloc_init(OADHyperlink);
    [(OADHyperlink *)v13 setTargetLocation:v23];
    [(OADHyperlink *)v13 setTargetMode:v19];
    [(OADHyperlink *)v13 setTargetFrame:0];
    [(OADHyperlink *)v13 setAction:v24];
    [(OADHyperlink *)v13 setTooltip:v22];
    [(OADHyperlink *)v13 setInvalidUrl:0];
    [(OADHyperlink *)v13 setDoEndSound:*(v8 + 69)];
    [(OADHyperlink *)v13 setIsVisited:*(v8 + 71)];
    [(OADHyperlink *)v13 setDoAddToHistory:1];

    goto LABEL_47;
  }

  if (v11 == 4)
  {
    v18 = 0;
    if (v12 > 8)
    {
      v22 = v31;
      if (v12 == 9)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ppaction://hlinkpres?slideindex=%d&slidetitle=%@", v17, v34];
        v18 = [MEMORY[0x277CBEBC0] URLWithString:v33];
        goto LABEL_44;
      }

      v20 = 0;
      if (v12 != 10)
      {
        goto LABEL_44;
      }

      v24 = @"ppaction://hlinkfile";
      v23 = [MEMORY[0x277CBEBC0] URLWithString:v33];
      goto LABEL_46;
    }

    v22 = v31;
    if (v12 == 7)
    {
      v18 = 0;
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ppaction://hlinksldjump?slideindex=%d", v17];
      goto LABEL_42;
    }

    v20 = 0;
    if (v12 != 8)
    {
      goto LABEL_44;
    }

    if (v33)
    {
      v23 = [MEMORY[0x277CBEBC0] URLWithString:?];
      if (v23)
      {
        v24 = 0;
        goto LABEL_46;
      }

      v29 = [v33 tc_escapedPath];
      v18 = [MEMORY[0x277CBEBC0] URLWithString:v29];

      goto LABEL_33;
    }

LABEL_31:
    v18 = 0;
    goto LABEL_33;
  }

  v20 = 0;
  v21 = v11 == 7;
  v22 = v31;
  if (v21)
  {
    if (v12 == 6 && [(__CFString *)v34 length])
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ppaction://customshow?id=%d", 0];
      v18 = 0;
LABEL_42:
      v19 = 0;
      goto LABEL_44;
    }

    goto LABEL_31;
  }

LABEL_44:
  v23 = v18;
  v24 = v20;
  if (v23 | v20)
  {
    goto LABEL_46;
  }

  v13 = 0;
LABEL_47:

  v6 = v32;
LABEL_48:

  return v13;
}

@end