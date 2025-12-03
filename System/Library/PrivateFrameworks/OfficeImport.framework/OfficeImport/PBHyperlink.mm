@interface PBHyperlink
+ (id)readAnimationInfoContainerHolder:(id)holder presentationState:(id)state;
+ (void)readHyperlinksWithPresentationState:(id)state;
@end

@implementation PBHyperlink

+ (void)readHyperlinksWithPresentationState:(id)state
{
  stateCopy = state;
  OcSummary::OcSummary(v26);
  reader = [stateCopy reader];
  (*(*reader + 120))(reader, v26);
  DocumentRef = PptBinaryReader::getDocumentRef([stateCopy reader]);
  objc_opt_class();
  documentRoot = [stateCopy documentRoot];
  v7 = [documentRoot pbReferenceWithID:DocumentRef];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  TCVerifyInputMeetsCondition(isKindOfClass & 1);
  v9 = [v7 firstChildOfType:1033];
  v10 = v9;
  if (v9)
  {
    childCount = [v9 childCount];
    if (childCount >= 2)
    {
      v12 = 0;
      v13 = 1;
      v24 = v7;
      v25 = stateCopy;
      do
      {
        v14 = [v10 childAt:{v13, v24, v25}];
        eshObject = [v14 eshObject];
        if ((*(*eshObject + 16))(eshObject) == 4055)
        {
          v16 = [v14 firstChildOfType:4051];
          v17 = v16;
          if (v16)
          {
            eshObject2 = [v16 eshObject];
            if (eshObject2)
            {
              if (v19)
              {
                if (v12 < ((v28 - v27) >> 3))
                {
                  v20 = *(v27 + 8 * v12);
                  v21 = [stateCopy hyperlinkInfoWithId:v19[12] createIfAbsent:1];
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
                  stateCopy = v25;
                }

                ++v12;
              }
            }
          }
        }

        ++v13;
      }

      while (childCount != v13);
    }
  }

  OcSummary::~OcSummary(v26);
}

+ (id)readAnimationInfoContainerHolder:(id)holder presentationState:(id)state
{
  holderCopy = holder;
  stateCopy = state;
  v7 = [holderCopy firstChildOfType:4083];
  eshObject = [v7 eshObject];

  if (!eshObject)
  {
    v13 = 0;
    goto LABEL_48;
  }

  v32 = stateCopy;
  v9 = [stateCopy hyperlinkInfoWithId:*(eshObject + 52) createIfAbsent:0];
  screenTip = [v9 screenTip];
  hyperlink1 = [v9 hyperlink1];
  hyperlink2 = [v9 hyperlink2];
  v11 = *(eshObject + 56);
  if (v11 == 4)
  {
    v12 = *(eshObject + 72);
  }

  else
  {
    v12 = 255;
  }

  v14 = *(eshObject + 64);
  v30 = hyperlink2;
  v15 = [hyperlink2 componentsSeparatedByString:{@", "}];
  if ([v15 count] < 2)
  {
    intValue = 0;
  }

  else
  {
    v16 = [v15 objectAtIndex:1];
    intValue = [v16 intValue];

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
      v22 = screenTip;
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
      v22 = screenTip;
      goto LABEL_44;
    }

    v22 = screenTip;
    v25 = [holderCopy childOfType:4026 instance:2];
    eshObject2 = [v25 eshObject];

    if (!eshObject2 || !*(eshObject2 + 64))
    {
      v18 = 0;
      v20 = 0;
      v19 = 1;
      goto LABEL_44;
    }

    v27 = [MEMORY[0x277CCACA8] stringWithCsString:eshObject2 + 48];
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
    [(OADHyperlink *)v13 setDoEndSound:*(eshObject + 69)];
    [(OADHyperlink *)v13 setIsVisited:*(eshObject + 71)];
    [(OADHyperlink *)v13 setDoAddToHistory:1];

    goto LABEL_47;
  }

  if (v11 == 4)
  {
    v18 = 0;
    if (v12 > 8)
    {
      v22 = screenTip;
      if (v12 == 9)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ppaction://hlinkpres?slideindex=%d&slidetitle=%@", intValue, v34];
        v18 = [MEMORY[0x277CBEBC0] URLWithString:hyperlink1];
        goto LABEL_44;
      }

      v20 = 0;
      if (v12 != 10)
      {
        goto LABEL_44;
      }

      v24 = @"ppaction://hlinkfile";
      v23 = [MEMORY[0x277CBEBC0] URLWithString:hyperlink1];
      goto LABEL_46;
    }

    v22 = screenTip;
    if (v12 == 7)
    {
      v18 = 0;
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ppaction://hlinksldjump?slideindex=%d", intValue];
      goto LABEL_42;
    }

    v20 = 0;
    if (v12 != 8)
    {
      goto LABEL_44;
    }

    if (hyperlink1)
    {
      v23 = [MEMORY[0x277CBEBC0] URLWithString:?];
      if (v23)
      {
        v24 = 0;
        goto LABEL_46;
      }

      tc_escapedPath = [hyperlink1 tc_escapedPath];
      v18 = [MEMORY[0x277CBEBC0] URLWithString:tc_escapedPath];

      goto LABEL_33;
    }

LABEL_31:
    v18 = 0;
    goto LABEL_33;
  }

  v20 = 0;
  v21 = v11 == 7;
  v22 = screenTip;
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

  stateCopy = v32;
LABEL_48:

  return v13;
}

@end