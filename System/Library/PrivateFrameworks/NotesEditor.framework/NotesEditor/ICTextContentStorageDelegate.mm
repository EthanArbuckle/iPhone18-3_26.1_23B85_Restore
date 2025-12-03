@interface ICTextContentStorageDelegate
- (BOOL)textContentManager:(id)manager shouldEnumerateTextElement:(id)element options:(unint64_t)options;
- (id)textContentStorage:(id)storage textParagraphWithRange:(_NSRange)range;
@end

@implementation ICTextContentStorageDelegate

- (BOOL)textContentManager:(id)manager shouldEnumerateTextElement:(id)element options:(unint64_t)options
{
  managerCopy = manager;
  elementCopy = element;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __86__ICTextContentStorageDelegate_textContentManager_shouldEnumerateTextElement_options___block_invoke;
    v67[3] = &unk_2781AD930;
    v68 = managerCopy;
    [elementCopy setMarkerTextAttributeOverrides:v67];
  }

  if (!ICInternalSettingsIsCollapsibleSectionsEnabled() || [(ICTextContentStorageDelegate *)self insideSiriSnippet])
  {
    goto LABEL_8;
  }

  objc_opt_class();
  v9 = ICDynamicCast();
  elementRange = [v9 elementRange];
  v11 = elementRange;
  if (elementRange && ([elementRange isEmpty] & 1) == 0)
  {
    objc_opt_class();
    v14 = ICCheckedDynamicCast();
    documentRange = [managerCopy documentRange];
    location = [documentRange location];
    location2 = [v11 location];
    v17 = [managerCopy offsetFromLocation:location toLocation:location2];

    textStorage = [v14 textStorage];
    v19 = [textStorage attribute:*MEMORY[0x277D35DA8] atIndex:v17 effectiveRange:0];

    uuid = [v19 uuid];
    if (!uuid)
    {
      v43 = 1;
      goto LABEL_30;
    }

    v21 = uuid;
    v66 = v19;
    uuid2 = [v19 uuid];
    v23 = [v14 isUUIDHidden:uuid2];

    if (!v23)
    {
      v43 = 1;
LABEL_29:
      v19 = v66;
LABEL_30:

      if (!v43)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    objc_opt_class();
    objc_opt_class();
    v24 = ICDynamicCast();
    textStorage2 = [v24 textStorage];
    ICDynamicCast();
    v26 = v65 = v14;

    documentRange2 = [managerCopy documentRange];
    location3 = [documentRange2 location];
    endLocation = [v11 endLocation];
    v30 = [managerCopy offsetFromLocation:location3 toLocation:endLocation];

    v31 = v26;
    v14 = v65;
    string = [v31 string];
    v33 = [string substringWithRange:{v17, v30 - v17}];

    if (([v33 ic_containsNonWhitespaceCharacters] & 1) == 0)
    {
      string2 = [v31 string];
      v35 = [string2 length];
      v36 = v30 + 1;

      if (v35 > v36)
      {
        v64 = v31;
        v37 = [v31 attribute:*MEMORY[0x277D35DA8] atIndex:v36 effectiveRange:0];
        outlineController = [v65 outlineController];
        uuid3 = [v37 uuid];
        if (uuid3)
        {
          v40 = uuid3;
          v63 = outlineController;
          [v37 uuid];
          v42 = v41 = v37;
          if ([v65 isUUIDHidden:v42])
          {

            v37 = v41;
            outlineController = v63;
          }

          else
          {
            uuid4 = [v41 uuid];
            LODWORD(v62) = [v63 isUUIDCollapsible:uuid4];

            v45 = MEMORY[0x277D35DA8];
            v37 = v41;
            outlineController = v63;
            if (v62)
            {
              [v66 uuid];
              v62 = v37;
              v47 = v46 = v45;
              v48 = [v63 closestVisibleAncestorForUUID:v47];

              v49 = [v64 attribute:*v46 atIndex:objc_msgSend(v63 effectiveRange:{"rangeForUUID:", v48), 0}];
              LODWORD(v46) = [v62 style];
              style = [v49 style];

              v51 = v46 >= style;
              v37 = v62;
              outlineController = v63;
              if (!v51)
              {

                LOBYTE(documentRange) = 1;
                v31 = v64;
LABEL_28:

                v43 = 0;
                goto LABEL_29;
              }
            }
          }
        }

        v31 = v64;
      }
    }

    textStorage3 = [v65 textStorage];
    alwaysEnumerateTrailingParagraph = [textStorage3 alwaysEnumerateTrailingParagraph];
    LOBYTE(documentRange) = alwaysEnumerateTrailingParagraph && ([managerCopy documentRange], v54 = ;
    goto LABEL_28;
  }

LABEL_8:
  LOBYTE(documentRange) = 1;
LABEL_9:

  return documentRange & 1;
}

id __86__ICTextContentStorageDelegate_textContentManager_shouldEnumerateTextElement_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 documentRange];
  v9 = [v8 location];
  v10 = [v7 elementRange];
  v11 = [v10 location];
  v12 = [v6 offsetFromLocation:v9 toLocation:v11];

  v13 = *(a1 + 32);
  v14 = [v7 elementRange];
  v15 = [v14 location];
  v16 = [v7 elementRange];

  v17 = [v16 endLocation];
  v18 = [v13 offsetFromLocation:v15 toLocation:v17];

  if (v18)
  {
    objc_opt_class();
    objc_opt_class();
    v19 = ICDynamicCast();
    v20 = [v19 textStorage];
    v21 = ICDynamicCast();

    v22 = [v21 attribute:*MEMORY[0x277D35DA8] atIndex:v12 effectiveRange:0];
    v23 = *MEMORY[0x277D740A8];
    [v21 attribute:*MEMORY[0x277D740A8] atIndex:v12 effectiveRange:0];
    v25 = v24 = v5;
    objc_opt_class();
    v26 = [v21 styler];
    v27 = ICDynamicCast();

    v28 = MEMORY[0x277D36918];
    v29 = [v27 zoomController];
    [v29 zoomFactor];
    v47 = v25;
    v48 = v22;
    v30 = v25;
    v5 = v24;
    v31 = [v28 bulletTextAttributesWithTextFont:v30 paragraphStyle:v22 zoomFactor:?];

    v32 = [v5 mutableCopy];
    v33 = [v31 objectForKeyedSubscript:v23];
    [v32 setObject:v33 forKeyedSubscript:v23];

    v34 = *MEMORY[0x277D740C0];
    v35 = [v31 objectForKeyedSubscript:*MEMORY[0x277D740C0]];
    [v32 setObject:v35 forKeyedSubscript:v34];

    [v32 setObject:0 forKeyedSubscript:*MEMORY[0x277D740E8]];
    [v32 setObject:0 forKeyedSubscript:*MEMORY[0x277D741F0]];
    [v32 setObject:0 forKeyedSubscript:*MEMORY[0x277D74150]];
    [v32 setObject:0 forKeyedSubscript:*MEMORY[0x277D74068]];
    v36 = *MEMORY[0x277D74118];
    v37 = [v5 objectForKeyedSubscript:*MEMORY[0x277D74118]];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = objc_alloc_init(MEMORY[0x277D74248]);
    }

    v40 = v39;

    v41 = [v40 mutableCopy];
    v42 = [v27 tabStopsForAttributedString:v21 inRange:{v12, v18}];
    [v41 setTabStops:v42];

    v43 = [v41 tabStops];
    v44 = [v43 lastObject];
    [v44 location];
    [v41 setHeadIndent:?];

    v45 = [v41 copy];
    [v32 setObject:v45 forKeyedSubscript:v36];
  }

  else
  {
    v32 = v5;
  }

  return v32;
}

- (id)textContentStorage:(id)storage textParagraphWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v7 = storageCopy;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    textStorage = [storageCopy textStorage];
    v10 = [textStorage attribute:*MEMORY[0x277D35DA8] atIndex:location effectiveRange:0];

    textStorage2 = [v7 textStorage];
    v12 = *MEMORY[0x277D74060];
    v13 = [textStorage2 attribute:*MEMORY[0x277D74060] atIndex:location effectiveRange:0];

    if ([v10 isList] && (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
    {
      v8 = 0;
    }

    else
    {
      v44 = v13;
      v45 = v12;
      v48 = v10;
      v59 = 0;
      v60 = &v59;
      v61 = 0x3032000000;
      v62 = __Block_byref_object_copy__7;
      v63 = __Block_byref_object_dispose__7;
      v64 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__ICTextContentStorageDelegate_textContentStorage_textParagraphWithRange___block_invoke;
      aBlock[3] = &unk_2781AD958;
      v56 = &v59;
      v14 = v7;
      v55 = v14;
      v57 = location;
      v58 = length;
      v15 = _Block_copy(aBlock);
      objc_opt_class();
      textStorage3 = [v14 textStorage];
      v49 = ICDynamicCast();

      objc_opt_class();
      textViews = [v49 textViews];
      anyObject = [textViews anyObject];
      v19 = ICDynamicCast();
      editorContainer = [v19 editorContainer];
      note = [editorContainer note];

      v47 = note;
      calculateDocumentController = [note calculateDocumentController];
      v23 = v15 + 2;
      v24 = v15[2](v15);
      v25 = v15[2](v15);
      ic_range = [v25 ic_range];
      [calculateDocumentController formatExpressionsInAttributedString:v24 range:ic_range textStorageOffset:v27 skipStaleExpressions:{location, 0}];

      textStorage4 = [v14 textStorage];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __74__ICTextContentStorageDelegate_textContentStorage_textParagraphWithRange___block_invoke_2;
      v50[3] = &unk_2781AD980;
      v52 = location;
      v53 = length;
      v29 = v15;
      v51 = v29;
      [textStorage4 enumerateAttribute:v45 inRange:location options:length usingBlock:{0, v50}];
      v46 = calculateDocumentController;

      [v14 attributedString];
      v31 = v30 = v47;
      v32 = [v31 length];

      if ([v48 style] == 4 && location + length == v32)
      {
        v33 = (*v23)(v29);
        v34 = *MEMORY[0x277D74118];
        v35 = [v33 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0];

        objc_opt_class();
        v36 = ICDynamicCast();
        v37 = [v36 mutableCopy];

        [v37 setParagraphSpacing:*MEMORY[0x277D369E0]];
        v38 = (*v23)(v29);
        v39 = [v37 copy];
        [v38 addAttribute:v34 value:v39 range:{0, length}];

        v30 = v47;
      }

      v40 = v60[5];
      if (v40 && [v40 length] != length)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"!updatedAttributedString || updatedAttributedString.length == range.length" functionName:"-[ICTextContentStorageDelegate textContentStorage:textParagraphWithRange:]" simulateCrash:1 showAlert:0 format:@"Text paragraph length has changed"];
      }

      if (v60[5])
      {
        v41 = objc_alloc(MEMORY[0x277D742C8]);
        v42 = [v60[5] copy];
        v8 = [v41 initWithAttributedString:v42];
      }

      else
      {
        v8 = 0;
      }

      _Block_object_dispose(&v59, 8);
      v10 = v48;
      v13 = v44;
    }
  }

  return v8;
}

id __74__ICTextContentStorageDelegate_textContentStorage_textParagraphWithRange___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + 40);
    *(v2 + 40) = v4;
  }

  else
  {
    v5 = [*(a1 + 32) attributedString];
    v6 = [v5 attributedSubstringFromRange:{*(a1 + 48), *(a1 + 56)}];
    v7 = [v6 mutableCopy];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(*(a1 + 40) + 8) + 40);

  return v10;
}

void __74__ICTextContentStorageDelegate_textContentStorage_textParagraphWithRange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v12 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v12;
    if ((isKindOfClass & 1) == 0)
    {
      v9 = a3 - *(a1 + 40);
      v10 = (*(*(a1 + 32) + 16))();
      [v10 removeAttribute:*MEMORY[0x277D741F0] range:{v9, a4}];

      v11 = (*(*(a1 + 32) + 16))();
      [v11 removeAttribute:*MEMORY[0x277D74150] range:{v9, a4}];

      v7 = v12;
    }
  }
}

@end