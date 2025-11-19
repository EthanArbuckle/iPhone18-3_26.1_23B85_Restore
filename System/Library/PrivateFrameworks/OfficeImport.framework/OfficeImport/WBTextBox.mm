@interface WBTextBox
+ (void)checkForOleObject:(id)a3;
+ (void)readFrom:(void *)a3 parent:(id)a4 reader:(id)a5;
+ (void)readTextFrom:(id)a3 to:(id)a4 chain:(unsigned __int16)a5;
@end

@implementation WBTextBox

+ (void)readFrom:(void *)a3 parent:(id)a4 reader:(id)a5
{
  v40 = a4;
  v7 = a5;
  isTextIDSet = EshTextBox::isTextIDSet((a3 + 272));
  if (isTextIDSet)
  {
    TextID = EshTextBox::getTextID((a3 + 272));
  }

  else
  {
    if (!EshShapeImageData::isOLEIDSet((a3 + 480)))
    {
      goto LABEL_19;
    }

    TextID = EshShapeImageData::getOLEID((a3 + 480));
  }

  if (TextID != -1)
  {
    v39 = objc_alloc_init(WDATextBox);
    v9 = [v7 targetDocument];
    [v40 setTextBox:v39 document:v9];

    [(WDATextBox *)v39 setOle:isTextIDSet ^ 1u];
    [(WDATextBox *)v39 setParent:v40];
    v10 = [v7 targetDocument];
    [(WDATextBox *)v39 setDocument:v10];

    v11 = [v40 drawable];
    v12 = [v11 id];

    if (EshTextBox::isNextTextboxSet((a3 + 272)))
    {
      NextTextbox = EshTextBox::getNextTextbox((a3 + 272));
      if (NextTextbox == v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = NextTextbox;
      }
    }

    else
    {
      v14 = 0;
    }

    [(WDATextBox *)v39 setNextTextBoxId:v14];
    v15 = [v40 drawable];
    v16 = [v7 previousFlowElement];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[WDATextBox nextTextBoxId](v39, "nextTextBoxId")}];
    [v16 setObject:v15 forKeyedSubscript:v17];

    v18 = [v7 previousFlowElement];
    v19 = MEMORY[0x277CCABB0];
    v20 = [v40 drawable];
    v21 = [v19 numberWithUnsignedInt:{objc_msgSend(v20, "id")}];
    v22 = [v18 objectForKeyedSubscript:v21];

    if (!v22)
    {
      v23 = MEMORY[0x277CCABB0];
      v24 = [v40 drawable];
      v25 = [v23 numberWithUnsignedInt:{objc_msgSend(v24, "id")}];
      [(WDATextBox *)v39 setFlowId:v25];

      [(WDATextBox *)v39 setFlowSequence:&unk_286F6DD28];
      v22 = [v40 drawable];
    }

    v37 = [v22 clientData];
    for (i = [v37 textBox];
    {
      v27 = objc_opt_class();
      v28 = [v7 officeArtState];
      v29 = [v28 drawableForShapeId:{objc_msgSend(i, "nextTextBoxId")}];
      v30 = TSUCheckedDynamicCast(v27, v29);

      if (!v30)
      {
        break;
      }

      v31 = [v30 clientData];
      v32 = [v31 textBox];
      v33 = [i flowId];
      [v32 setFlowId:v33];

      v34 = MEMORY[0x277CCABB0];
      v35 = [i flowSequence];
      v36 = [v34 numberWithUnsignedInt:{objc_msgSend(v35, "unsignedIntValue") + 1}];
      [v32 setFlowSequence:v36];
    }

    if (!TextID)
    {
      [v7 cacheTextBox:v39 withChainIndex:HIWORD(TextID)];
    }
  }

LABEL_19:
}

+ (void)readTextFrom:(id)a3 to:(id)a4 chain:(unsigned __int16)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 parent];
  v11 = [v10 textType];

  if (v11 == 2)
  {
    v12 = [v8 headerStoryTable];
  }

  else
  {
    v12 = [v8 storyTable];
  }

  if (v5 - 1 < ((*(v12 + 3) - *(v12 + 2)) >> 3))
  {
    v13 = *(WrdBookmarkTable::getBookmark(v12, v5 - 1) + 8);
    v22 = &unk_286ED3718;
    v14 = [v9 parent];
    v15 = [v14 textType];

    if (v15 == 2)
    {
      v16 = 7;
    }

    else
    {
      v16 = 6;
    }

    v23 = v16;
    v24 = v13;
    v17 = [v9 text];

    if (!v17)
    {
      v18 = [WDText alloc];
      v19 = [v9 document];
      v20 = [(WDText *)v18 initWithDocument:v19 textType:v23];

      [v9 setText:v20];
    }

    v21 = [v9 text];
    [WBText readFrom:v8 text:v21 textRun:&v22];

    [a1 checkForOleObject:v9];
  }
}

+ (void)checkForOleObject:(id)a3
{
  v25 = a3;
  if (([v25 isOle] & 1) == 0)
  {
    goto LABEL_43;
  }

  v3 = [v25 text];
  v4 = [v3 blockCount];

  if (v4 != 1)
  {
    v16 = [v25 text];
    v17 = [v16 blockCount];

    if (v17 != 2)
    {
      goto LABEL_43;
    }

    v18 = [v25 text];
    v6 = [v18 blockAt:1];

    if ([v6 blockType])
    {
      goto LABEL_42;
    }

    v7 = v6;
    if ([v7 runCount] > 1)
    {
      goto LABEL_41;
    }

    if ([v7 runCount] == 1)
    {
      v11 = [v7 runAt:0];
      if ([v11 runType])
      {
        goto LABEL_40;
      }

      v19 = [v11 string];
      v20 = [v19 length];

      if (v20)
      {
        goto LABEL_41;
      }
    }
  }

  v5 = [v25 text];
  v6 = [v5 blockAt:0];

  if ([v6 blockType])
  {
    goto LABEL_42;
  }

  v7 = v6;
  v8 = [v7 runCount];
  if (!v8)
  {
    v11 = 0;
    goto LABEL_40;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = [v7 runAt:v9];
    v13 = [v12 runType];
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_39;
      }

      switch(v13)
      {
        case 12:
          goto LABEL_19;
        case 7:
          if ([v12 fieldMarkerType] != 21)
          {
            goto LABEL_39;
          }

          v10 = 3;
          v15 = 1;
          break;
        case 5:
          v14 = v12;

          v15 = 0;
          v10 = 2;
          v11 = v14;
          break;
        default:
          goto LABEL_39;
      }
    }

    else
    {
      if (v10)
      {
        if (v13)
        {
          if (v13 != 7 || [v12 fieldMarkerType] != 20)
          {
            goto LABEL_39;
          }

LABEL_19:
          v15 = 0;
          v10 = 2;
          goto LABEL_21;
        }
      }

      else if (v13 != 7 || [v12 fieldMarkerType] != 19)
      {
        goto LABEL_39;
      }

      v15 = 0;
      v10 = 1;
    }

LABEL_21:

    ++v9;
  }

  while (v9 < v8);
  if (v11)
  {
    v21 = v15;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    v22 = [v25 parent];
    v12 = [v22 drawable];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v11 drawable];
      v24 = [v23 ole];
      [v12 setOle:v24];
    }

LABEL_39:
  }

LABEL_40:

LABEL_41:
  v6 = v7;
LABEL_42:

LABEL_43:
}

@end