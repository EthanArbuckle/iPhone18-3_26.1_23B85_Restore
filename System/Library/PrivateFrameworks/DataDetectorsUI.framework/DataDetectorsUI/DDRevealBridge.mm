@interface DDRevealBridge
+ (BOOL)_revealItem:(id)item view:(id)view location:(CGPoint)location menuInteraction:(id)interaction context:(id)context;
+ (BOOL)_textActionsAreAvailableForItem:(id)item;
+ (BOOL)underlyingViewDisappeared:(id)disappeared;
+ (id)_lookupTextForText:(id)text;
+ (id)updatedTextInteractionMenuElements:(id)elements withRVItem:(id)item view:(id)view context:(id)context;
@end

@implementation DDRevealBridge

+ (BOOL)_revealItem:(id)item view:(id)view location:(CGPoint)location menuInteraction:(id)interaction context:(id)context
{
  y = location.y;
  x = location.x;
  itemCopy = item;
  viewCopy = view;
  interactionCopy = interaction;
  v15 = [context copy];
  if (!itemCopy)
  {
    goto LABEL_13;
  }

  normalizedType = [itemCopy normalizedType];
  v17 = 0;
  if (normalizedType > 2)
  {
    if (normalizedType == 6)
    {
      query = [itemCopy query];
      if (query && +[(DDParsecAction *)DDLookupAction])
      {
        v27 = [DDLookupAction alloc];
        reportAnIssueExtendedBlock = [itemCopy reportAnIssueExtendedBlock];
        reportAnIssueMetadataFetchingBlock = [itemCopy reportAnIssueMetadataFetchingBlock];
        v22 = [(DDLookupAction *)v27 initWithRVQuery:query reportAnIssueBlock:reportAnIssueExtendedBlock metadataFetchingBlock:reportAnIssueMetadataFetchingBlock context:v15];

        goto LABEL_25;
      }

LABEL_24:
      v22 = 0;
LABEL_25:

      v17 = 0;
      coreResult = 0;
      if (v22)
      {
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (normalizedType != 3)
    {
      goto LABEL_14;
    }

    ddResult = [itemCopy ddResult];
    coreResult = [ddResult coreResult];

    if (coreResult)
    {
      v22 = [DDContextMenuAction defaultActionWithResult:coreResult context:v15];
      v17 = 0;
      if (v22)
      {
        goto LABEL_26;
      }

      goto LABEL_14;
    }

LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  if (normalizedType != 1)
  {
    if (normalizedType != 2)
    {
      goto LABEL_14;
    }

    query = [itemCopy text];
    if ([query length] && +[DDParsecAction isAvailable](DDLookupAction, "isAvailable"))
    {
      v19 = [DDLookupAction alloc];
      highlightRange = [itemCopy highlightRange];
      v22 = [(DDLookupAction *)v19 initWithQueryString:query range:highlightRange context:v21, v15];
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  normalizedURL = [itemCopy normalizedURL];
  v17 = normalizedURL;
  if (normalizedURL)
  {
    if ((dd_urlLooksSuspicious(normalizedURL) & 1) == 0)
    {
      v22 = [DDContextMenuAction defaultActionWithURL:v17 context:v15];
      coreResult = 0;
      if (v22)
      {
LABEL_26:
        if (coreResult)
        {
          v30 = +[DDDetectionController sharedController];
          [v30 interactionDidStartForResult:coreResult];
        }

        else
        {
          if (!v17)
          {
LABEL_31:
            v31 = [[DDRVInteractionDelegate alloc] initWithItem:itemCopy];
            v32 = +[DDDetectionController sharedController];
            [v32 performAction:v22 inView:viewCopy interactionDelegate:v31];

            goto LABEL_32;
          }

          v30 = +[DDDetectionController sharedController];
          [v30 interactionDidStartForURL:v17];
        }

        goto LABEL_31;
      }
    }
  }

LABEL_14:
  if (interactionCopy)
  {
    [interactionCopy _presentMenuAtLocation:{x, y}];
LABEL_32:
    v25 = 1;
    goto LABEL_33;
  }

  v25 = 0;
LABEL_33:

  return v25;
}

+ (id)_lookupTextForText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    if (_MergedGlobals_9 != -1)
    {
      +[DDRevealBridge _lookupTextForText:];
    }

    v4 = [textCopy componentsSeparatedByCharactersInSet:qword_280B122F8];
    v5 = [v4 componentsJoinedByString:@" "];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __37__DDRevealBridge__lookupTextForText___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] characterSetWithRange:{65532, 1}];
  v1 = qword_280B122F8;
  qword_280B122F8 = v0;

  v2 = qword_280B122F8;
  v3 = [MEMORY[0x277CCA900] newlineCharacterSet];
  [v2 formUnionWithCharacterSet:v3];
}

+ (BOOL)_textActionsAreAvailableForItem:(id)item
{
  itemCopy = item;
  normalizedType = [itemCopy normalizedType];
  if (normalizedType == 2)
  {
    goto LABEL_4;
  }

  if (normalizedType != 3)
  {
    originalSelectedText3 = 0;
    goto LABEL_15;
  }

  originalSelectedText = [itemCopy originalSelectedText];
  v7 = [originalSelectedText length];

  if (v7)
  {
LABEL_4:
    originalSelectedText2 = [itemCopy originalSelectedText];

    if (originalSelectedText2)
    {
      originalSelectedText3 = [itemCopy originalSelectedText];
      goto LABEL_15;
    }

    highlightRange = [itemCopy highlightRange];
    if (highlightRange == 0x7FFFFFFFFFFFFFFFLL || (v12 = highlightRange + v11, [itemCopy text], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v12 > v14))
    {
      v15 = 0;
      v16 = 0;
      goto LABEL_27;
    }

    text = [itemCopy text];
    highlightRange2 = [itemCopy highlightRange];
    matchedString = [text substringWithRange:{highlightRange2, v22}];
    goto LABEL_14;
  }

  ddResult = [itemCopy ddResult];
  category = [ddResult category];

  originalSelectedText3 = 0;
  if (category <= 6 && ((1 << category) & 0x58) != 0)
  {
    text = [itemCopy ddResult];
    matchedString = [text matchedString];
LABEL_14:
    originalSelectedText3 = matchedString;
  }

LABEL_15:
  if (([originalSelectedText3 length] - 513) >= 0xFFFFFFFFFFFFFE00)
  {
    v15 = [self _lookupTextForText:originalSelectedText3];

    v23 = [v15 length];
    if (v23)
    {
      if (v23 >= 0x21)
      {
        v24 = v23;
        v25 = [v15 componentsSeparatedByString:@" "];
        if (([v25 count] - 33) >= 0xFFFFFFFFFFFFFFE0)
        {
          v26 = [v25 componentsJoinedByString:&stru_282C1E0A8];
          v27 = [v26 length];

          if (v27 >= 0x21)
          {
            v31 = 0;
            v32 = &v31;
            v33 = 0x2020000000;
            v34 = 0;
            v28 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __50__DDRevealBridge__textActionsAreAvailableForItem___block_invoke;
            v30[3] = &unk_2782915C8;
            v30[4] = &v31;
            [v28 enumerateTokensInRange:0 usingBlock:{v24, v30}];
            v16 = v32[3] < 0x21;

            _Block_object_dispose(&v31, 8);
          }

          else
          {
            v16 = 1;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v15 = originalSelectedText3;
  }

LABEL_27:

  return v16;
}

uint64_t __50__DDRevealBridge__textActionsAreAvailableForItem___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (++*(*(*(result + 32) + 8) + 24) >= 0x20uLL)
  {
    *a5 = 1;
  }

  return result;
}

+ (id)updatedTextInteractionMenuElements:(id)elements withRVItem:(id)item view:(id)view context:(id)context
{
  v178 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  itemCopy = item;
  viewCopy = view;
  contextCopy = context;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  obj = elementsCopy;
  v11 = [obj countByEnumeratingWithState:&v168 objects:v177 count:16];
  if (!v11)
  {
LABEL_11:

    v17 = obj;
    goto LABEL_164;
  }

  v12 = *v169;
  v133 = *MEMORY[0x277D76D08];
  v120 = *MEMORY[0x277D04048];
  v119 = *MEMORY[0x277D041B0];
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (*v169 != v12)
    {
      objc_enumerationMutation(obj);
    }

    v14 = *(*(&v168 + 1) + 8 * v13);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_4;
    }

    v140 = v14;
    identifier = [v140 identifier];
    v16 = [identifier isEqualToString:v133];

    if (v16)
    {
      break;
    }

LABEL_4:
    if (v11 == ++v13)
    {
      v11 = [obj countByEnumeratingWithState:&v168 objects:v177 count:16];
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    }
  }

  v125 = [obj mutableCopy];
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  children = [v140 children];
  v18 = [children countByEnumeratingWithState:&v164 objects:v176 count:16];
  if (!v18)
  {
    v141 = 0;
    v138 = 0;
    v139 = 0;
    v131 = 0;
    v136 = 0;
    v124 = 0;
    v128 = MEMORY[0x277CBEBF8];
    v132 = MEMORY[0x277CBEBF8];
    goto LABEL_49;
  }

  v141 = 0;
  v138 = 0;
  v139 = 0;
  v131 = 0;
  v136 = 0;
  v124 = 0;
  v19 = *v165;
  v128 = MEMORY[0x277CBEBF8];
  v132 = MEMORY[0x277CBEBF8];
  while (2)
  {
    v20 = 0;
    while (2)
    {
      if (*v165 != v19)
      {
        objc_enumerationMutation(children);
      }

      v21 = *(*(&v164 + 1) + 8 * v20);
      v22 = [DDContextMenuAction identificationStringsForMenuElement:v21 useDefault:1];
      if ([v22 containsObject:@"_define:"] & 1) != 0 || (objc_msgSend(v22, "containsObject:", @"define:"))
      {
        v23 = v132;
        v24 = v139;
        v25 = v141;
        v139 = v21;
        v26 = v136;
        v132 = v22;
        goto LABEL_20;
      }

      if ([v22 containsObject:@"_lookup:"] & 1) != 0 || (objc_msgSend(v22, "containsObject:", @"lookup:"))
      {
        v23 = v128;
        v24 = v131;
        v25 = v141;
        v131 = v21;
        v26 = v136;
        v128 = v22;
        goto LABEL_20;
      }

      if ([v22 containsObject:@"_translate:"] & 1) != 0 || (objc_msgSend(v22, "containsObject:", @"translate:"))
      {
        v23 = v124;
        v24 = v138;
        v25 = v141;
        v138 = v21;
        v26 = v136;
        v124 = v22;
        goto LABEL_20;
      }

      if ([v22 containsObject:@"_findSelected:"])
      {
        v23 = v136;
        v24 = v141;
        v25 = v21;
        v26 = v22;
        goto LABEL_20;
      }

      v34 = [v22 containsObject:@"findSelected:"];
      v23 = v136;
      v29 = v141;
      v24 = v141;
      v25 = v21;
      v26 = v22;
      if (v34)
      {
LABEL_20:
        v27 = v22;

        v28 = v21;
        v29 = v25;
        v136 = v26;
      }

      if (v139)
      {
        v30 = v131 == 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = v30 || v138 == 0;
      v141 = v29;
      v33 = v31 || v29 == 0;

      if (!v33)
      {
        goto LABEL_49;
      }

      if (v18 != ++v20)
      {
        continue;
      }

      break;
    }

    v35 = [children countByEnumeratingWithState:&v164 objects:v176 count:16];
    v18 = v35;
    if (v35)
    {
      continue;
    }

    break;
  }

LABEL_49:

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v43 = 0;
    v38 = 1;
    v48 = 0;
    if (itemCopy)
    {
      goto LABEL_74;
    }

    goto LABEL_84;
  }

  v36 = [v132 arrayByAddingObjectsFromArray:v128];
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v37 = v36;
  v38 = 0;
  v39 = [v37 countByEnumeratingWithState:&v160 objects:v175 count:16];
  if (v39)
  {
    v40 = *v161;
    if (v131)
    {
      v41 = v131;
    }

    else
    {
      v41 = v140;
    }

    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v161 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v38 |= [viewCopy canPerformAction:NSSelectorFromString(*(*(&v160 + 1) + 8 * i)) withSender:v41];
      }

      v39 = [v37 countByEnumeratingWithState:&v160 objects:v175 count:16];
    }

    while (v39);
  }

  v43 = 0;
  if (v139)
  {
    if (((v38 ^ 1) & 1) != 0 && !v131)
    {
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v43 = 0;
      v44 = [&unk_282C2CB20 countByEnumeratingWithState:&v156 objects:v174 count:16];
      if (v44)
      {
        v45 = *v157;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v157 != v45)
            {
              objc_enumerationMutation(&unk_282C2CB20);
            }

            if (!v43)
            {
              v47 = *(*(&v156 + 1) + 8 * j);
              if ([viewCopy canPerformAction:NSSelectorFromString(v47) withSender:v140])
              {
                v43 = NSSelectorFromString(v47);
                v38 = 1;
              }

              else
              {
                v43 = 0;
              }
            }
          }

          v44 = [&unk_282C2CB20 countByEnumeratingWithState:&v156 objects:v174 count:16];
        }

        while (v44);
      }
    }
  }

  v48 = 0;
  if (!itemCopy)
  {
LABEL_84:
    v123 = 0;
    firstObject2 = 0;
    goto LABEL_88;
  }

LABEL_74:
  v123 = 0;
  firstObject2 = 0;
  if ((v38 & 1) == 0)
  {
    goto LABEL_88;
  }

  v49 = [[DDContextMenuAction alloc] initWithRVItem:itemCopy];
  v50 = [contextCopy objectForKeyedSubscript:@"kDDContextNoRoomForSubtitlesKey"];
  bOOLValue = [v50 BOOLValue];

  if (bOOLValue)
  {
    v52 = 5;
  }

  else
  {
    v52 = 1;
  }

  v155 = 0;
  v53 = [(DDContextMenuAction *)v49 contextMenuConfigurationWithIdentifier:v133 inView:viewCopy context:contextCopy defaultAction:0 menuProvider:&v155 options:v52];
  v54 = v155;
  v55 = v54;
  if (!v54)
  {
    v123 = 0;
    goto LABEL_86;
  }

  v123 = (*(v54 + 2))(v54, obj);
  children2 = [v123 children];
  v57 = [children2 count] == 0;

  if (v57)
  {
LABEL_86:

    v48 = 0;
    goto LABEL_87;
  }

  children3 = [v123 children];
  v48 = [children3 mutableCopy];

  if (!v48)
  {
    goto LABEL_87;
  }

  firstObject = [v48 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject2 = [v48 firstObject];
  }

  else
  {
    firstObject2 = 0;
  }

  identifier2 = [firstObject2 identifier];
  v99 = [identifier2 hasPrefix:@"com.apple.datadetectors.DDSearchWebAction"];

  if (v99)
  {
    [v48 removeObjectAtIndex:0];
    goto LABEL_88;
  }

  normalizedType = [itemCopy normalizedType];
  if (normalizedType == 2)
  {
LABEL_188:
    originalSelectedText = [itemCopy originalSelectedText];
    v104 = [DDSearchWebAction alloc];
    if (originalSelectedText)
    {
      v105 = -[DDSearchWebAction initWithQueryString:range:context:](v104, "initWithQueryString:range:context:", originalSelectedText, 0, [originalSelectedText length], contextCopy);
      goto LABEL_195;
    }

    text = [itemCopy text];
    highlightRange = [itemCopy highlightRange];
    contextCopy = [(DDSearchWebAction *)v104 initWithQueryString:text range:highlightRange context:v108, contextCopy];

LABEL_196:
    if (contextCopy)
    {
      v113 = [[DDRVInteractionDelegate alloc] initWithItem:itemCopy];
      objc_initWeak(&location, viewCopy);
      v135 = MEMORY[0x277D750C8];
      localizedName = [(DDSearchWebAction *)contextCopy localizedName];
      icon = [(DDAction *)contextCopy icon];
      generateIdentifier = [(DDAction *)contextCopy generateIdentifier];
      v150[0] = MEMORY[0x277D85DD0];
      v150[1] = 3221225472;
      v150[2] = __77__DDRevealBridge_updatedTextInteractionMenuElements_withRVItem_view_context___block_invoke;
      v150[3] = &unk_2782915A0;
      v117 = contextCopy;
      v151 = v117;
      objc_copyWeak(&v153, &location);
      v118 = v113;
      v152 = v118;
      firstObject2 = [v135 actionWithTitle:localizedName image:icon identifier:generateIdentifier handler:v150];

      objc_destroyWeak(&v153);
      objc_destroyWeak(&location);

      goto LABEL_88;
    }

LABEL_87:
    firstObject2 = 0;
    goto LABEL_88;
  }

  if (normalizedType != 3)
  {
    goto LABEL_87;
  }

  originalSelectedText2 = [itemCopy originalSelectedText];
  v102 = [originalSelectedText2 length] == 0;

  if (!v102)
  {
    goto LABEL_188;
  }

  ddResult = [itemCopy ddResult];
  category = [ddResult category];

  firstObject2 = 0;
  if (category <= 6 && ((1 << category) & 0x58) != 0)
  {
    ddResult2 = [itemCopy ddResult];
    originalSelectedText = [ddResult2 matchedString];

    v105 = -[DDSearchWebAction initWithQueryString:range:context:]([DDSearchWebAction alloc], "initWithQueryString:range:context:", originalSelectedText, 0, [originalSelectedText length], contextCopy);
LABEL_195:
    contextCopy = v105;
    goto LABEL_196;
  }

LABEL_88:
  v134 = v48;
  if ([itemCopy normalizedType] == 1)
  {
LABEL_93:
    v62 = 0;
    LOBYTE(v63) = 0;
    v121 = v138 != 0;
  }

  else
  {
    ddResult3 = [itemCopy ddResult];
    if ([ddResult3 category] == 2)
    {

      goto LABEL_93;
    }

    ddResult4 = [itemCopy ddResult];
    if ([ddResult4 category] == 1)
    {

      goto LABEL_93;
    }

    ddResult5 = [itemCopy ddResult];
    type = [ddResult5 type];
    if ([type isEqualToString:v120])
    {
      v62 = 0;
    }

    else
    {
      ddResult6 = [itemCopy ddResult];
      type2 = [ddResult6 type];
      v92 = [type2 isEqualToString:v119];

      v62 = v92 ^ 1;
    }

    if (v138)
    {
      v93 = v62;
    }

    else
    {
      v93 = 0;
    }

    if (v93 == 1)
    {
      if (objc_opt_respondsToSelector())
      {
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v94 = v124;
        v63 = 0;
        v95 = [v94 countByEnumeratingWithState:&v146 objects:v173 count:16];
        if (v95)
        {
          v96 = *v147;
          do
          {
            for (k = 0; k != v95; ++k)
            {
              if (*v147 != v96)
              {
                objc_enumerationMutation(v94);
              }

              v63 |= [viewCopy canPerformAction:NSSelectorFromString(*(*(&v146 + 1) + 8 * k)) withSender:v138];
            }

            v95 = [v94 countByEnumeratingWithState:&v146 objects:v173 count:16];
          }

          while (v95);
        }

        v121 = 1;
        v62 = 1;
      }

      else
      {
        v121 = 1;
        v62 = 1;
        LOBYTE(v63) = 1;
      }
    }

    else
    {
      v121 = v138 != 0;
      LOBYTE(v63) = 0;
    }
  }

  if (!v141)
  {
    v69 = [v125 indexOfObject:v140];
    if (v38 & v62)
    {
      LOBYTE(v65) = 1;
      goto LABEL_108;
    }

    goto LABEL_120;
  }

  if (objc_opt_respondsToSelector())
  {
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v64 = v136;
    v65 = 0;
    v66 = [v64 countByEnumeratingWithState:&v142 objects:v172 count:16];
    if (v66)
    {
      v67 = *v143;
      do
      {
        for (m = 0; m != v66; ++m)
        {
          if (*v143 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v65 |= [viewCopy canPerformAction:NSSelectorFromString(*(*(&v142 + 1) + 8 * m)) withSender:v141];
        }

        v66 = [v64 countByEnumeratingWithState:&v142 objects:v172 count:16];
      }

      while (v66);
    }
  }

  else
  {
    LOBYTE(v65) = 1;
  }

  v69 = [v125 indexOfObject:v140];
  if ((v38 & v62 & 1) == 0)
  {
    if (v65)
    {
      [v125 replaceObjectAtIndex:v69 withObject:v141];
      goto LABEL_122;
    }

LABEL_120:
    if ((v63 & 1) == 0)
    {
      [v125 removeObject:v140];
      goto LABEL_134;
    }

    [v125 replaceObjectAtIndex:v69 withObject:v138];
LABEL_122:
    ++v69;
LABEL_134:
    v80 = v140;
    goto LABEL_159;
  }

LABEL_108:
  children4 = [v140 children];
  v71 = [children4 mutableCopy];

  if (v131)
  {
    v72 = 1;
  }

  else
  {
    v72 = v139 == 0;
  }

  v73 = !v72;
  if (!v72 && v43)
  {
    v74 = MEMORY[0x277D75370];
    title = [v139 title];
    image = [v139 image];
    v131 = [v74 commandWithTitle:title image:image action:v43 propertyList:0];

    v77 = [v71 indexOfObject:v139];
    if (v77 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v71 replaceObjectAtIndex:v77 withObject:v131];
    }

    goto LABEL_127;
  }

  if (v43)
  {
    v73 = 0;
  }

  if (v73 != 1)
  {
LABEL_127:
    v78 = v131;
    if (v131)
    {
      goto LABEL_128;
    }

    v131 = 0;
    v79 = 1;
    if (!(v63 & 1 | !v121))
    {
      goto LABEL_136;
    }

LABEL_146:
    if ((v65 & 1) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_147;
  }

  v131 = v139;
LABEL_128:
  if ([itemCopy normalizedType] == 2 && !objc_msgSend(self, "_textActionsAreAvailableForItem:", itemCopy))
  {
    v79 = 1;
LABEL_145:
    [v71 removeObject:v131];
    v78 = 1;
    if (v63 & 1 | !v121)
    {
      goto LABEL_146;
    }

    goto LABEL_136;
  }

  v79 = 0;
  if (!+[(DDParsecAction *)DDLookupAction])
  {
    goto LABEL_145;
  }

  v78 = 0;
  if (v63 & 1 | !v121)
  {
    goto LABEL_146;
  }

LABEL_136:
  [v71 removeObject:v138];
  v78 = 1;
  if ((v65 & 1) == 0)
  {
LABEL_137:
    [v71 removeObject:v141];
    if (firstObject2)
    {
      v81 = v79;
    }

    else
    {
      v81 = 1;
    }

    if ((v81 & 1) == 0)
    {
LABEL_153:
      [v71 addObject:firstObject2];
    }

    goto LABEL_154;
  }

LABEL_147:
  if (firstObject2)
  {
    v84 = v79;
  }

  else
  {
    v84 = 1;
  }

  if ((v84 & 1) == 0)
  {
    goto LABEL_153;
  }

  if (!v78)
  {
    ++v69;
    goto LABEL_157;
  }

LABEL_154:
  children5 = [v140 children];
  v86 = [children5 count] == 0;

  if (v86)
  {
    [v125 removeObjectAtIndex:v69];
LABEL_157:
    v80 = v140;
  }

  else
  {
    v80 = [v140 menuByReplacingChildren:v71];

    [v125 replaceObjectAtIndex:v69++ withObject:v80];
  }

LABEL_159:
  if ((v38 & 1) != 0 && [v134 count])
  {
    v87 = [v123 menuByReplacingChildren:v134];

    [v125 insertObject:v87 atIndex:v69];
  }

  else
  {
    v87 = v123;
  }

  v17 = v125;

LABEL_164:
  v88 = *MEMORY[0x277D85DE8];

  return v17;
}

void __77__DDRevealBridge_updatedTextInteractionMenuElements_withRVItem_view_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [DDContextMenuAction performAction:v2 fromView:WeakRetained alertController:0 interactionDelegate:*(a1 + 40)];
}

+ (BOOL)underlyingViewDisappeared:(id)disappeared
{
  disappearedCopy = disappeared;
  v4 = +[DDDetectionController sharedController];
  v5 = [v4 tryDismissActionInView:disappearedCopy];

  return v5;
}

@end