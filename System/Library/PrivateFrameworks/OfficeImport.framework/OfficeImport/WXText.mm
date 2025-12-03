@interface WXText
+ (id)addNewSectionTo:(id)to state:(id)state;
+ (void)createChildren:(_xmlNode *)children baseStyle:(id)style to:(id)to state:(id)state;
+ (void)createChildrenFromStream:(_xmlTextReader *)stream baseStyle:(id)style to:(id)to state:(id)state;
+ (void)readFrom:(_xmlNode *)from state:(id)state;
+ (void)readFromParagraph:(_xmlNode *)paragraph baseStyle:(id)style to:(id)to state:(id)state;
+ (void)readFromStream:(_xmlTextReader *)stream state:(id)state;
+ (void)readFromString:(id)string to:(id)to;
+ (void)readFromTable:(_xmlNode *)table baseStyle:(id)style to:(id)to state:(id)state;
+ (void)updateTextBoxIdsFromState:(id)state;
@end

@implementation WXText

+ (void)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  document = [stateCopy document];
  addSection = [document addSection];
  text = [addSection text];
  [WXText readFrom:from baseStyle:0 to:text state:stateCopy];

  [WXText updateTextBoxIdsFromState:stateCopy];
}

+ (void)readFromStream:(_xmlTextReader *)stream state:(id)state
{
  stateCopy = state;
  document = [stateCopy document];
  addSection = [document addSection];
  text = [addSection text];
  [WXText readFromStream:stream baseStyle:0 to:text state:stateCopy];

  [WXText updateTextBoxIdsFromState:stateCopy];
}

+ (void)readFromString:(id)string to:(id)to
{
  stringCopy = string;
  addParagraph = [to addParagraph];
  [WXParagraph readFromString:stringCopy to:addParagraph];
}

+ (void)createChildren:(_xmlNode *)children baseStyle:(id)style to:(id)to state:(id)state
{
  styleCopy = style;
  toCopy = to;
  stateCopy = state;
  v11 = OCXFirstChild(children);
  v12 = 0;
  while (v11)
  {
    if ([stateCopy isNewSectionRequested])
    {
      v13 = [WXText addNewSectionTo:toCopy state:stateCopy];

      toCopy = v13;
    }

    name = v11->name;
    if (xmlStrEqual(name, "p"))
    {
      [WXText readFromParagraph:v11 baseStyle:styleCopy to:toCopy state:stateCopy];
      ++v12;
      HIDWORD(v15) = 429496728 - 858993459 * v12;
      LODWORD(v15) = HIDWORD(v15);
      if ((v15 >> 2) <= 0xCCCCCCC)
      {
        cancelDelegate = [stateCopy cancelDelegate];
        isCancelled = [cancelDelegate isCancelled];

        if (isCancelled)
        {
          [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
        }
      }
    }

    else
    {
      if (xmlStrEqual(name, "tbl"))
      {
        [WXText readFromTable:v11 baseStyle:styleCopy to:toCopy state:stateCopy];
        goto LABEL_11;
      }

      if (xmlStrEqual(name, "sdt"))
      {
        [TCMessageContext reportWarning:WXFormsNotSupported];
        wXMainNamespace = [stateCopy WXMainNamespace];
        v19 = OCXFindChild(v11, wXMainNamespace, "sdtContent");

        if (v19)
        {
          [WXText createChildren:v19 baseStyle:styleCopy to:toCopy state:stateCopy];
        }
      }

      else
      {
        if (xmlStrEqual(name, "subSection") || xmlStrEqual(name, "pBdrGroup"))
        {
          [WXText createChildren:v11 baseStyle:styleCopy to:toCopy state:stateCopy];
          goto LABEL_11;
        }

        if (xmlStrEqual(name, "annotation"))
        {
          [stateCopy addText:toCopy node:v11];
          goto LABEL_11;
        }

        if (xmlStrEqual(name, "sectPr"))
        {
          cancelDelegate2 = [stateCopy cancelDelegate];
          isCancelled2 = [cancelDelegate2 isCancelled];

          if (isCancelled2)
          {
            [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
          }

          document = [stateCopy document];
          lastSection = [document lastSection];
          [WXSection readFrom:v11 to:lastSection state:stateCopy];
LABEL_24:

          lastBlock = document;
          goto LABEL_25;
        }

        if (xmlStrEqual(name, "bookmarkStart"))
        {
          [stateCopy addPendingBookmark:v11];
        }

        else if (xmlStrEqual(name, "bookmarkEnd"))
        {
          lastBlock = [toCopy lastBlock];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            document = lastBlock;
            lastSection = [lastBlock addBookmark];
            [WXBookmark readFrom:v11 to:lastSection state:stateCopy];
            goto LABEL_24;
          }

          [stateCopy addPendingBookmark:v11];
LABEL_25:
        }
      }
    }

LABEL_11:
    v11 = OCXNextSibling(v11);
  }
}

+ (void)createChildrenFromStream:(_xmlTextReader *)stream baseStyle:(id)style to:(id)to state:(id)state
{
  styleCopy = style;
  toCopy = to;
  stateCopy = state;
  v11 = objc_alloc_init(OCXSStream);
  v12 = xmlTextReaderDepth(stream);
  [(OCXSStream *)v11 pushLevel:v12 name:xmlTextReaderConstLocalName(stream)];
  v13 = 0;
  while ([OCXStreamUtility readStream:stream streamState:v11])
  {
    v14 = xmlTextReaderConstLocalName(stream);
    if ([stateCopy isNewSectionRequested])
    {
      v15 = [WXText addNewSectionTo:toCopy state:stateCopy];

      toCopy = v15;
    }

    if (xmlStrEqual(v14, "p"))
    {
      [WXText readFromParagraph:xmlTextReaderExpand(stream) baseStyle:styleCopy to:toCopy state:stateCopy];
      ++v13;
      HIDWORD(v16) = -858993459 * v13 + 429496728;
      LODWORD(v16) = HIDWORD(v16);
      if ((v16 >> 2) <= 0xCCCCCCC)
      {
        cancelDelegate = [stateCopy cancelDelegate];
        isCancelled = [cancelDelegate isCancelled];

        if (isCancelled)
        {
          [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
        }
      }
    }

    else if (xmlStrEqual(v14, "tbl"))
    {
      [WXText readFromTable:xmlTextReaderExpand(stream) baseStyle:styleCopy to:toCopy state:stateCopy];
    }

    else
    {
      if (xmlStrEqual(v14, "sdt"))
      {
        [TCMessageContext reportWarning:WXFormsNotSupported];
        document = objc_alloc_init(OCXSStream);
        v20 = xmlTextReaderDepth(stream);
        [(OCXSStream *)document pushLevel:v20 name:xmlTextReaderConstLocalName(stream)];
        while ([OCXStreamUtility readStream:stream streamState:document])
        {
          v21 = xmlTextReaderConstLocalName(stream);
          if (xmlStrEqual(v21, "sdtContent"))
          {
            [WXText createChildrenFromStream:stream baseStyle:styleCopy to:toCopy state:stateCopy];
            goto LABEL_16;
          }
        }

        goto LABEL_16;
      }

      if (xmlStrEqual(v14, "subSection") || xmlStrEqual(v14, "pBdrGroup"))
      {
        [WXText createChildrenFromStream:stream baseStyle:styleCopy to:toCopy state:stateCopy];
      }

      else if (xmlStrEqual(v14, "annotation"))
      {
        [stateCopy addText:toCopy node:xmlTextReaderExpand(stream)];
      }

      else
      {
        if (xmlStrEqual(v14, "sectPr"))
        {
          cancelDelegate2 = [stateCopy cancelDelegate];
          isCancelled2 = [cancelDelegate2 isCancelled];

          if (isCancelled2)
          {
            [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
          }

          v24 = xmlTextReaderExpand(stream);
          document = [stateCopy document];
          lastSection = [(OCXSStream *)document lastSection];
          v26 = v24;
          addBookmark = lastSection;
          [WXSection readFrom:v26 to:lastSection state:stateCopy];
          goto LABEL_26;
        }

        if (xmlStrEqual(v14, "bookmarkStart"))
        {
          [stateCopy addPendingBookmark:xmlTextReaderExpand(stream)];
        }

        else if (xmlStrEqual(v14, "bookmarkEnd"))
        {
          document = [toCopy lastBlock];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            addBookmark = [(OCXSStream *)document addBookmark];
            [WXBookmark readFrom:xmlTextReaderExpand(stream) to:addBookmark state:stateCopy];
LABEL_26:

            goto LABEL_16;
          }

          [stateCopy addPendingBookmark:xmlTextReaderExpand(stream)];
LABEL_16:
        }

        else
        {
          if (xmlStrEqual(v14, "commentRangeStart"))
          {
            v28 = objc_opt_class();
            lastBlock = [toCopy lastBlock];
            document = TSUDynamicCast(v28, lastBlock);

            if (!document)
            {
              document = [toCopy addParagraph];
            }

            [WXAnnotation readFrom:xmlTextReaderExpand(stream) to:document type:0 state:stateCopy];
            goto LABEL_16;
          }

          if (xmlStrEqual(v14, "commentRangeEnd"))
          {
            v30 = objc_opt_class();
            lastBlock2 = [toCopy lastBlock];
            document = TSUDynamicCast(v30, lastBlock2);

            if (!document)
            {
              document = [toCopy addParagraph];
            }

            [WXAnnotation readFrom:xmlTextReaderExpand(stream) to:document type:1 state:stateCopy];
            goto LABEL_16;
          }
        }
      }
    }
  }
}

+ (id)addNewSectionTo:(id)to state:(id)state
{
  stateCopy = state;
  lastBlock = [to lastBlock];
  if ([lastBlock blockType])
  {
    [lastBlock blockType];
  }

  else
  {
    [WXParagraph readFromString:@"\f" to:lastBlock];
  }

  [stateCopy setNewSectionRequested:0];
  document = [stateCopy document];
  addSection = [document addSection];
  text = [addSection text];

  return text;
}

+ (void)updateTextBoxIdsFromState:(id)state
{
  stateCopy = state;
  wxoavState = [stateCopy wxoavState];
  nextVmlShapeIdToTextBoxMap = [wxoavState nextVmlShapeIdToTextBoxMap];
  keyEnumerator = [nextVmlShapeIdToTextBoxMap keyEnumerator];
  v6 = 1;
  while (1)
  {

    wxoavState = [keyEnumerator nextObject];
    if (!wxoavState)
    {
      break;
    }

    wxoavState2 = [stateCopy wxoavState];
    nextVmlShapeIdToTextBoxMap2 = [wxoavState2 nextVmlShapeIdToTextBoxMap];
    nextVmlShapeIdToTextBoxMap = [nextVmlShapeIdToTextBoxMap2 objectForKey:wxoavState];

    wxoavState3 = [stateCopy wxoavState];
    v10 = [wxoavState3 officeArtShapeIdWithVmlShapeId:wxoavState];

    [nextVmlShapeIdToTextBoxMap setNextTextBoxId:v10];
    v11 = objc_opt_class();
    drawingState = [stateCopy drawingState];
    v13 = [drawingState drawableForShapeId:{objc_msgSend(nextVmlShapeIdToTextBoxMap, "nextTextBoxId")}];
    clientData = [v13 clientData];
    v15 = TSUDynamicCast(v11, clientData);

    v16 = objc_opt_class();
    textBox = [v15 textBox];
    v18 = TSUDynamicCast(v16, textBox);

    nextTextBoxId = [nextVmlShapeIdToTextBoxMap nextTextBoxId];
    parent = [nextVmlShapeIdToTextBoxMap parent];
    drawable = [parent drawable];
    v22 = [drawable id];

    if (nextTextBoxId == v22 || v18 == nextVmlShapeIdToTextBoxMap)
    {
      [nextVmlShapeIdToTextBoxMap setNextTextBoxId:{0, keyEnumerator}];
    }

    flowId = [nextVmlShapeIdToTextBoxMap flowId];
    if (flowId)
    {
      flowSequence = [nextVmlShapeIdToTextBoxMap flowSequence];
      v25 = flowSequence == 0;

      v6 &= v25;
    }
  }

  if (v6)
  {
    wxoavState4 = [stateCopy wxoavState];
    nextVmlShapeIdToTextBoxMap3 = [wxoavState4 nextVmlShapeIdToTextBoxMap];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __45__WXText_Private__updateTextBoxIdsFromState___block_invoke;
    v29[3] = &unk_2799CDA68;
    v30 = stateCopy;
    [nextVmlShapeIdToTextBoxMap3 enumerateKeysAndObjectsUsingBlock:v29];
  }
}

void __45__WXText_Private__updateTextBoxIdsFromState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  v6 = [v5 flowId];
  if (!v6 || ([v5 flowSequence], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v8 = v5;
    v9 = MEMORY[0x277CCABB0];
    v10 = [v8 parent];
    v11 = [v10 drawable];
    v12 = [v9 numberWithUnsignedInt:{objc_msgSend(v11, "id")}];
    [v8 setFlowId:v12];

    [v8 setFlowSequence:&unk_286F6DD58];
    while ([v8 nextTextBoxId])
    {
      v13 = objc_opt_class();
      v14 = [*(a1 + 32) drawingState];
      v15 = [v14 drawableForShapeId:{objc_msgSend(v8, "nextTextBoxId")}];
      v16 = [v15 clientData];
      v17 = TSUDynamicCast(v13, v16);

      v18 = objc_opt_class();
      v19 = [v17 textBox];
      v20 = TSUDynamicCast(v18, v19);

      if (v20)
      {
        v21 = MEMORY[0x277CCABB0];
        v22 = [v8 flowSequence];
        v23 = [v21 numberWithUnsignedInt:{objc_msgSend(v22, "unsignedIntValue") + 1}];
        [v20 setFlowSequence:v23];

        v24 = [v8 flowId];
        [v20 setFlowId:v24];
      }

      v8 = v20;
    }
  }
}

+ (void)readFromParagraph:(_xmlNode *)paragraph baseStyle:(id)style to:(id)to state:(id)state
{
  v37 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  toCopy = to;
  stateCopy = state;
  v26 = styleCopy;
  if ([styleCopy type] != 1)
  {

    v26 = 0;
  }

  if (paragraph)
  {
    addParagraph = [toCopy addParagraph];
    pendingComments = [stateCopy pendingComments];
    v24 = [pendingComments copy];
    paragraphCopy = paragraph;

    [stateCopy clearPendingComments];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v24;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v14)
    {
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v13);
          }

          +[WXAnnotation readFrom:to:type:state:](WXAnnotation, "readFrom:to:type:state:", [*(*(&v31 + 1) + 8 * i) pointerValue], addParagraph, 0, stateCopy);
        }

        v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v14);
    }

    [stateCopy pendingBookmarks];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v17 = v28 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v18)
    {
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v17);
          }

          pointerValue = [*(*(&v27 + 1) + 8 * j) pointerValue];
          addBookmark = [addParagraph addBookmark];
          [WXBookmark readFrom:pointerValue to:addBookmark state:stateCopy];
        }

        v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    [stateCopy clearPendingBookmarks];
    [WXParagraph readFrom:paragraphCopy baseStyle:v26 to:addParagraph state:stateCopy];
  }
}

+ (void)readFromTable:(_xmlNode *)table baseStyle:(id)style to:(id)to state:(id)state
{
  styleCopy = style;
  toCopy = to;
  stateCopy = state;
  if (!table)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  addTable = [toCopy addTable];
  [WXTable readFrom:table to:addTable state:stateCopy];
}

@end