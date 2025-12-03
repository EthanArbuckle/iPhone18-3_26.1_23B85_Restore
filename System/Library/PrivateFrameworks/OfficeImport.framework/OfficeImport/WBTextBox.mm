@interface WBTextBox
+ (void)checkForOleObject:(id)object;
+ (void)readFrom:(void *)from parent:(id)parent reader:(id)reader;
+ (void)readTextFrom:(id)from to:(id)to chain:(unsigned __int16)chain;
@end

@implementation WBTextBox

+ (void)readFrom:(void *)from parent:(id)parent reader:(id)reader
{
  parentCopy = parent;
  readerCopy = reader;
  isTextIDSet = EshTextBox::isTextIDSet((from + 272));
  if (isTextIDSet)
  {
    TextID = EshTextBox::getTextID((from + 272));
  }

  else
  {
    if (!EshShapeImageData::isOLEIDSet((from + 480)))
    {
      goto LABEL_19;
    }

    TextID = EshShapeImageData::getOLEID((from + 480));
  }

  if (TextID != -1)
  {
    v39 = objc_alloc_init(WDATextBox);
    targetDocument = [readerCopy targetDocument];
    [parentCopy setTextBox:v39 document:targetDocument];

    [(WDATextBox *)v39 setOle:isTextIDSet ^ 1u];
    [(WDATextBox *)v39 setParent:parentCopy];
    targetDocument2 = [readerCopy targetDocument];
    [(WDATextBox *)v39 setDocument:targetDocument2];

    drawable = [parentCopy drawable];
    v12 = [drawable id];

    if (EshTextBox::isNextTextboxSet((from + 272)))
    {
      NextTextbox = EshTextBox::getNextTextbox((from + 272));
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
    drawable2 = [parentCopy drawable];
    previousFlowElement = [readerCopy previousFlowElement];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[WDATextBox nextTextBoxId](v39, "nextTextBoxId")}];
    [previousFlowElement setObject:drawable2 forKeyedSubscript:v17];

    previousFlowElement2 = [readerCopy previousFlowElement];
    v19 = MEMORY[0x277CCABB0];
    drawable3 = [parentCopy drawable];
    v21 = [v19 numberWithUnsignedInt:{objc_msgSend(drawable3, "id")}];
    drawable5 = [previousFlowElement2 objectForKeyedSubscript:v21];

    if (!drawable5)
    {
      v23 = MEMORY[0x277CCABB0];
      drawable4 = [parentCopy drawable];
      v25 = [v23 numberWithUnsignedInt:{objc_msgSend(drawable4, "id")}];
      [(WDATextBox *)v39 setFlowId:v25];

      [(WDATextBox *)v39 setFlowSequence:&unk_286F6DD28];
      drawable5 = [parentCopy drawable];
    }

    clientData = [drawable5 clientData];
    for (i = [clientData textBox];
    {
      v27 = objc_opt_class();
      officeArtState = [readerCopy officeArtState];
      v29 = [officeArtState drawableForShapeId:{objc_msgSend(i, "nextTextBoxId")}];
      v30 = TSUCheckedDynamicCast(v27, v29);

      if (!v30)
      {
        break;
      }

      clientData2 = [v30 clientData];
      textBox = [clientData2 textBox];
      flowId = [i flowId];
      [textBox setFlowId:flowId];

      v34 = MEMORY[0x277CCABB0];
      flowSequence = [i flowSequence];
      v36 = [v34 numberWithUnsignedInt:{objc_msgSend(flowSequence, "unsignedIntValue") + 1}];
      [textBox setFlowSequence:v36];
    }

    if (!TextID)
    {
      [readerCopy cacheTextBox:v39 withChainIndex:HIWORD(TextID)];
    }
  }

LABEL_19:
}

+ (void)readTextFrom:(id)from to:(id)to chain:(unsigned __int16)chain
{
  chainCopy = chain;
  fromCopy = from;
  toCopy = to;
  parent = [toCopy parent];
  textType = [parent textType];

  if (textType == 2)
  {
    headerStoryTable = [fromCopy headerStoryTable];
  }

  else
  {
    headerStoryTable = [fromCopy storyTable];
  }

  if (chainCopy - 1 < ((*(headerStoryTable + 3) - *(headerStoryTable + 2)) >> 3))
  {
    v13 = *(WrdBookmarkTable::getBookmark(headerStoryTable, chainCopy - 1) + 8);
    v22 = &unk_286ED3718;
    parent2 = [toCopy parent];
    textType2 = [parent2 textType];

    if (textType2 == 2)
    {
      v16 = 7;
    }

    else
    {
      v16 = 6;
    }

    v23 = v16;
    v24 = v13;
    text = [toCopy text];

    if (!text)
    {
      v18 = [WDText alloc];
      document = [toCopy document];
      v20 = [(WDText *)v18 initWithDocument:document textType:v23];

      [toCopy setText:v20];
    }

    text2 = [toCopy text];
    [WBText readFrom:fromCopy text:text2 textRun:&v22];

    [self checkForOleObject:toCopy];
  }
}

+ (void)checkForOleObject:(id)object
{
  objectCopy = object;
  if (([objectCopy isOle] & 1) == 0)
  {
    goto LABEL_43;
  }

  text = [objectCopy text];
  blockCount = [text blockCount];

  if (blockCount != 1)
  {
    text2 = [objectCopy text];
    blockCount2 = [text2 blockCount];

    if (blockCount2 != 2)
    {
      goto LABEL_43;
    }

    text3 = [objectCopy text];
    v6 = [text3 blockAt:1];

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

      string = [v11 string];
      v20 = [string length];

      if (v20)
      {
        goto LABEL_41;
      }
    }
  }

  text4 = [objectCopy text];
  v6 = [text4 blockAt:0];

  if ([v6 blockType])
  {
    goto LABEL_42;
  }

  v7 = v6;
  runCount = [v7 runCount];
  if (!runCount)
  {
    v11 = 0;
    goto LABEL_40;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    drawable = [v7 runAt:v9];
    runType = [drawable runType];
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_39;
      }

      switch(runType)
      {
        case 12:
          goto LABEL_19;
        case 7:
          if ([drawable fieldMarkerType] != 21)
          {
            goto LABEL_39;
          }

          v10 = 3;
          v15 = 1;
          break;
        case 5:
          v14 = drawable;

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
        if (runType)
        {
          if (runType != 7 || [drawable fieldMarkerType] != 20)
          {
            goto LABEL_39;
          }

LABEL_19:
          v15 = 0;
          v10 = 2;
          goto LABEL_21;
        }
      }

      else if (runType != 7 || [drawable fieldMarkerType] != 19)
      {
        goto LABEL_39;
      }

      v15 = 0;
      v10 = 1;
    }

LABEL_21:

    ++v9;
  }

  while (v9 < runCount);
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
    parent = [objectCopy parent];
    drawable = [parent drawable];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      drawable2 = [v11 drawable];
      v24 = [drawable2 ole];
      [drawable setOle:v24];
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