@interface WXText
+ (id)addNewSectionTo:(id)a3 state:(id)a4;
+ (void)createChildren:(_xmlNode *)a3 baseStyle:(id)a4 to:(id)a5 state:(id)a6;
+ (void)createChildrenFromStream:(_xmlTextReader *)a3 baseStyle:(id)a4 to:(id)a5 state:(id)a6;
+ (void)readFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)readFromParagraph:(_xmlNode *)a3 baseStyle:(id)a4 to:(id)a5 state:(id)a6;
+ (void)readFromStream:(_xmlTextReader *)a3 state:(id)a4;
+ (void)readFromString:(id)a3 to:(id)a4;
+ (void)readFromTable:(_xmlNode *)a3 baseStyle:(id)a4 to:(id)a5 state:(id)a6;
+ (void)updateTextBoxIdsFromState:(id)a3;
@end

@implementation WXText

+ (void)readFrom:(_xmlNode *)a3 state:(id)a4
{
  v8 = a4;
  v5 = [v8 document];
  v6 = [v5 addSection];
  v7 = [v6 text];
  [WXText readFrom:a3 baseStyle:0 to:v7 state:v8];

  [WXText updateTextBoxIdsFromState:v8];
}

+ (void)readFromStream:(_xmlTextReader *)a3 state:(id)a4
{
  v8 = a4;
  v5 = [v8 document];
  v6 = [v5 addSection];
  v7 = [v6 text];
  [WXText readFromStream:a3 baseStyle:0 to:v7 state:v8];

  [WXText updateTextBoxIdsFromState:v8];
}

+ (void)readFromString:(id)a3 to:(id)a4
{
  v6 = a3;
  v5 = [a4 addParagraph];
  [WXParagraph readFromString:v6 to:v5];
}

+ (void)createChildren:(_xmlNode *)a3 baseStyle:(id)a4 to:(id)a5 state:(id)a6
{
  v25 = a4;
  v9 = a5;
  v10 = a6;
  v11 = OCXFirstChild(a3);
  v12 = 0;
  while (v11)
  {
    if ([v10 isNewSectionRequested])
    {
      v13 = [WXText addNewSectionTo:v9 state:v10];

      v9 = v13;
    }

    name = v11->name;
    if (xmlStrEqual(name, "p"))
    {
      [WXText readFromParagraph:v11 baseStyle:v25 to:v9 state:v10];
      ++v12;
      HIDWORD(v15) = 429496728 - 858993459 * v12;
      LODWORD(v15) = HIDWORD(v15);
      if ((v15 >> 2) <= 0xCCCCCCC)
      {
        v16 = [v10 cancelDelegate];
        v17 = [v16 isCancelled];

        if (v17)
        {
          [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
        }
      }
    }

    else
    {
      if (xmlStrEqual(name, "tbl"))
      {
        [WXText readFromTable:v11 baseStyle:v25 to:v9 state:v10];
        goto LABEL_11;
      }

      if (xmlStrEqual(name, "sdt"))
      {
        [TCMessageContext reportWarning:WXFormsNotSupported];
        v18 = [v10 WXMainNamespace];
        v19 = OCXFindChild(v11, v18, "sdtContent");

        if (v19)
        {
          [WXText createChildren:v19 baseStyle:v25 to:v9 state:v10];
        }
      }

      else
      {
        if (xmlStrEqual(name, "subSection") || xmlStrEqual(name, "pBdrGroup"))
        {
          [WXText createChildren:v11 baseStyle:v25 to:v9 state:v10];
          goto LABEL_11;
        }

        if (xmlStrEqual(name, "annotation"))
        {
          [v10 addText:v9 node:v11];
          goto LABEL_11;
        }

        if (xmlStrEqual(name, "sectPr"))
        {
          v20 = [v10 cancelDelegate];
          v21 = [v20 isCancelled];

          if (v21)
          {
            [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
          }

          v24 = [v10 document];
          v22 = [v24 lastSection];
          [WXSection readFrom:v11 to:v22 state:v10];
LABEL_24:

          v23 = v24;
          goto LABEL_25;
        }

        if (xmlStrEqual(name, "bookmarkStart"))
        {
          [v10 addPendingBookmark:v11];
        }

        else if (xmlStrEqual(name, "bookmarkEnd"))
        {
          v23 = [v9 lastBlock];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
            v22 = [v23 addBookmark];
            [WXBookmark readFrom:v11 to:v22 state:v10];
            goto LABEL_24;
          }

          [v10 addPendingBookmark:v11];
LABEL_25:
        }
      }
    }

LABEL_11:
    v11 = OCXNextSibling(v11);
  }
}

+ (void)createChildrenFromStream:(_xmlTextReader *)a3 baseStyle:(id)a4 to:(id)a5 state:(id)a6
{
  v32 = a4;
  v9 = a5;
  v10 = a6;
  v11 = objc_alloc_init(OCXSStream);
  v12 = xmlTextReaderDepth(a3);
  [(OCXSStream *)v11 pushLevel:v12 name:xmlTextReaderConstLocalName(a3)];
  v13 = 0;
  while ([OCXStreamUtility readStream:a3 streamState:v11])
  {
    v14 = xmlTextReaderConstLocalName(a3);
    if ([v10 isNewSectionRequested])
    {
      v15 = [WXText addNewSectionTo:v9 state:v10];

      v9 = v15;
    }

    if (xmlStrEqual(v14, "p"))
    {
      [WXText readFromParagraph:xmlTextReaderExpand(a3) baseStyle:v32 to:v9 state:v10];
      ++v13;
      HIDWORD(v16) = -858993459 * v13 + 429496728;
      LODWORD(v16) = HIDWORD(v16);
      if ((v16 >> 2) <= 0xCCCCCCC)
      {
        v17 = [v10 cancelDelegate];
        v18 = [v17 isCancelled];

        if (v18)
        {
          [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
        }
      }
    }

    else if (xmlStrEqual(v14, "tbl"))
    {
      [WXText readFromTable:xmlTextReaderExpand(a3) baseStyle:v32 to:v9 state:v10];
    }

    else
    {
      if (xmlStrEqual(v14, "sdt"))
      {
        [TCMessageContext reportWarning:WXFormsNotSupported];
        v19 = objc_alloc_init(OCXSStream);
        v20 = xmlTextReaderDepth(a3);
        [(OCXSStream *)v19 pushLevel:v20 name:xmlTextReaderConstLocalName(a3)];
        while ([OCXStreamUtility readStream:a3 streamState:v19])
        {
          v21 = xmlTextReaderConstLocalName(a3);
          if (xmlStrEqual(v21, "sdtContent"))
          {
            [WXText createChildrenFromStream:a3 baseStyle:v32 to:v9 state:v10];
            goto LABEL_16;
          }
        }

        goto LABEL_16;
      }

      if (xmlStrEqual(v14, "subSection") || xmlStrEqual(v14, "pBdrGroup"))
      {
        [WXText createChildrenFromStream:a3 baseStyle:v32 to:v9 state:v10];
      }

      else if (xmlStrEqual(v14, "annotation"))
      {
        [v10 addText:v9 node:xmlTextReaderExpand(a3)];
      }

      else
      {
        if (xmlStrEqual(v14, "sectPr"))
        {
          v22 = [v10 cancelDelegate];
          v23 = [v22 isCancelled];

          if (v23)
          {
            [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
          }

          v24 = xmlTextReaderExpand(a3);
          v19 = [v10 document];
          v25 = [(OCXSStream *)v19 lastSection];
          v26 = v24;
          v27 = v25;
          [WXSection readFrom:v26 to:v25 state:v10];
          goto LABEL_26;
        }

        if (xmlStrEqual(v14, "bookmarkStart"))
        {
          [v10 addPendingBookmark:xmlTextReaderExpand(a3)];
        }

        else if (xmlStrEqual(v14, "bookmarkEnd"))
        {
          v19 = [v9 lastBlock];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [(OCXSStream *)v19 addBookmark];
            [WXBookmark readFrom:xmlTextReaderExpand(a3) to:v27 state:v10];
LABEL_26:

            goto LABEL_16;
          }

          [v10 addPendingBookmark:xmlTextReaderExpand(a3)];
LABEL_16:
        }

        else
        {
          if (xmlStrEqual(v14, "commentRangeStart"))
          {
            v28 = objc_opt_class();
            v29 = [v9 lastBlock];
            v19 = TSUDynamicCast(v28, v29);

            if (!v19)
            {
              v19 = [v9 addParagraph];
            }

            [WXAnnotation readFrom:xmlTextReaderExpand(a3) to:v19 type:0 state:v10];
            goto LABEL_16;
          }

          if (xmlStrEqual(v14, "commentRangeEnd"))
          {
            v30 = objc_opt_class();
            v31 = [v9 lastBlock];
            v19 = TSUDynamicCast(v30, v31);

            if (!v19)
            {
              v19 = [v9 addParagraph];
            }

            [WXAnnotation readFrom:xmlTextReaderExpand(a3) to:v19 type:1 state:v10];
            goto LABEL_16;
          }
        }
      }
    }
  }
}

+ (id)addNewSectionTo:(id)a3 state:(id)a4
{
  v5 = a4;
  v6 = [a3 lastBlock];
  if ([v6 blockType])
  {
    [v6 blockType];
  }

  else
  {
    [WXParagraph readFromString:@"\f" to:v6];
  }

  [v5 setNewSectionRequested:0];
  v7 = [v5 document];
  v8 = [v7 addSection];
  v9 = [v8 text];

  return v9;
}

+ (void)updateTextBoxIdsFromState:(id)a3
{
  v3 = a3;
  v4 = [v3 wxoavState];
  v5 = [v4 nextVmlShapeIdToTextBoxMap];
  v28 = [v5 keyEnumerator];
  v6 = 1;
  while (1)
  {

    v4 = [v28 nextObject];
    if (!v4)
    {
      break;
    }

    v7 = [v3 wxoavState];
    v8 = [v7 nextVmlShapeIdToTextBoxMap];
    v5 = [v8 objectForKey:v4];

    v9 = [v3 wxoavState];
    v10 = [v9 officeArtShapeIdWithVmlShapeId:v4];

    [v5 setNextTextBoxId:v10];
    v11 = objc_opt_class();
    v12 = [v3 drawingState];
    v13 = [v12 drawableForShapeId:{objc_msgSend(v5, "nextTextBoxId")}];
    v14 = [v13 clientData];
    v15 = TSUDynamicCast(v11, v14);

    v16 = objc_opt_class();
    v17 = [v15 textBox];
    v18 = TSUDynamicCast(v16, v17);

    v19 = [v5 nextTextBoxId];
    v20 = [v5 parent];
    v21 = [v20 drawable];
    v22 = [v21 id];

    if (v19 == v22 || v18 == v5)
    {
      [v5 setNextTextBoxId:{0, v28}];
    }

    v23 = [v5 flowId];
    if (v23)
    {
      v24 = [v5 flowSequence];
      v25 = v24 == 0;

      v6 &= v25;
    }
  }

  if (v6)
  {
    v26 = [v3 wxoavState];
    v27 = [v26 nextVmlShapeIdToTextBoxMap];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __45__WXText_Private__updateTextBoxIdsFromState___block_invoke;
    v29[3] = &unk_2799CDA68;
    v30 = v3;
    [v27 enumerateKeysAndObjectsUsingBlock:v29];
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

+ (void)readFromParagraph:(_xmlNode *)a3 baseStyle:(id)a4 to:(id)a5 state:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v25 = a5;
  v10 = a6;
  v26 = v9;
  if ([v9 type] != 1)
  {

    v26 = 0;
  }

  if (a3)
  {
    v11 = [v25 addParagraph];
    v12 = [v10 pendingComments];
    v24 = [v12 copy];
    v23 = a3;

    [v10 clearPendingComments];
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

          +[WXAnnotation readFrom:to:type:state:](WXAnnotation, "readFrom:to:type:state:", [*(*(&v31 + 1) + 8 * i) pointerValue], v11, 0, v10);
        }

        v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v14);
    }

    [v10 pendingBookmarks];
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

          v21 = [*(*(&v27 + 1) + 8 * j) pointerValue];
          v22 = [v11 addBookmark];
          [WXBookmark readFrom:v21 to:v22 state:v10];
        }

        v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    [v10 clearPendingBookmarks];
    [WXParagraph readFrom:v23 baseStyle:v26 to:v11 state:v10];
  }
}

+ (void)readFromTable:(_xmlNode *)a3 baseStyle:(id)a4 to:(id)a5 state:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  if (!a3)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v11 = [v9 addTable];
  [WXTable readFrom:a3 to:v11 state:v10];
}

@end