@interface DDRevealBridge
+ (BOOL)_revealItem:(id)a3 view:(id)a4 location:(CGPoint)a5 menuInteraction:(id)a6 context:(id)a7;
+ (BOOL)_textActionsAreAvailableForItem:(id)a3;
+ (BOOL)underlyingViewDisappeared:(id)a3;
+ (id)_lookupTextForText:(id)a3;
+ (id)updatedTextInteractionMenuElements:(id)a3 withRVItem:(id)a4 view:(id)a5 context:(id)a6;
@end

@implementation DDRevealBridge

+ (BOOL)_revealItem:(id)a3 view:(id)a4 location:(CGPoint)a5 menuInteraction:(id)a6 context:(id)a7
{
  y = a5.y;
  x = a5.x;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [a7 copy];
  if (!v12)
  {
    goto LABEL_13;
  }

  v16 = [v12 normalizedType];
  v17 = 0;
  if (v16 > 2)
  {
    if (v16 == 6)
    {
      v18 = [v12 query];
      if (v18 && +[(DDParsecAction *)DDLookupAction])
      {
        v27 = [DDLookupAction alloc];
        v28 = [v12 reportAnIssueExtendedBlock];
        v29 = [v12 reportAnIssueMetadataFetchingBlock];
        v22 = [(DDLookupAction *)v27 initWithRVQuery:v18 reportAnIssueBlock:v28 metadataFetchingBlock:v29 context:v15];

        goto LABEL_25;
      }

LABEL_24:
      v22 = 0;
LABEL_25:

      v17 = 0;
      v24 = 0;
      if (v22)
      {
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (v16 != 3)
    {
      goto LABEL_14;
    }

    v23 = [v12 ddResult];
    v24 = [v23 coreResult];

    if (v24)
    {
      v22 = [DDContextMenuAction defaultActionWithResult:v24 context:v15];
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

  if (v16 != 1)
  {
    if (v16 != 2)
    {
      goto LABEL_14;
    }

    v18 = [v12 text];
    if ([v18 length] && +[DDParsecAction isAvailable](DDLookupAction, "isAvailable"))
    {
      v19 = [DDLookupAction alloc];
      v20 = [v12 highlightRange];
      v22 = [(DDLookupAction *)v19 initWithQueryString:v18 range:v20 context:v21, v15];
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v26 = [v12 normalizedURL];
  v17 = v26;
  if (v26)
  {
    if ((dd_urlLooksSuspicious(v26) & 1) == 0)
    {
      v22 = [DDContextMenuAction defaultActionWithURL:v17 context:v15];
      v24 = 0;
      if (v22)
      {
LABEL_26:
        if (v24)
        {
          v30 = +[DDDetectionController sharedController];
          [v30 interactionDidStartForResult:v24];
        }

        else
        {
          if (!v17)
          {
LABEL_31:
            v31 = [[DDRVInteractionDelegate alloc] initWithItem:v12];
            v32 = +[DDDetectionController sharedController];
            [v32 performAction:v22 inView:v13 interactionDelegate:v31];

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
  if (v14)
  {
    [v14 _presentMenuAtLocation:{x, y}];
LABEL_32:
    v25 = 1;
    goto LABEL_33;
  }

  v25 = 0;
LABEL_33:

  return v25;
}

+ (id)_lookupTextForText:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (_MergedGlobals_9 != -1)
    {
      +[DDRevealBridge _lookupTextForText:];
    }

    v4 = [v3 componentsSeparatedByCharactersInSet:qword_280B122F8];
    v5 = [v4 componentsJoinedByString:@" "];
    v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:v6];
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

+ (BOOL)_textActionsAreAvailableForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 normalizedType];
  if (v5 == 2)
  {
    goto LABEL_4;
  }

  if (v5 != 3)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v6 = [v4 originalSelectedText];
  v7 = [v6 length];

  if (v7)
  {
LABEL_4:
    v8 = [v4 originalSelectedText];

    if (v8)
    {
      v9 = [v4 originalSelectedText];
      goto LABEL_15;
    }

    v10 = [v4 highlightRange];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v12 = v10 + v11, [v4 text], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v12 > v14))
    {
      v15 = 0;
      v16 = 0;
      goto LABEL_27;
    }

    v19 = [v4 text];
    v21 = [v4 highlightRange];
    v20 = [v19 substringWithRange:{v21, v22}];
    goto LABEL_14;
  }

  v17 = [v4 ddResult];
  v18 = [v17 category];

  v9 = 0;
  if (v18 <= 6 && ((1 << v18) & 0x58) != 0)
  {
    v19 = [v4 ddResult];
    v20 = [v19 matchedString];
LABEL_14:
    v9 = v20;
  }

LABEL_15:
  if (([v9 length] - 513) >= 0xFFFFFFFFFFFFFE00)
  {
    v15 = [a1 _lookupTextForText:v9];

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
    v15 = v9;
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

+ (id)updatedTextInteractionMenuElements:(id)a3 withRVItem:(id)a4 view:(id)a5 context:(id)a6
{
  v178 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v127 = a4;
  v10 = a5;
  v126 = a6;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  obj = v9;
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
    v15 = [v140 identifier];
    v16 = [v15 isEqualToString:v133];

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
  v129 = [v140 children];
  v18 = [v129 countByEnumeratingWithState:&v164 objects:v176 count:16];
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
        objc_enumerationMutation(v129);
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

    v35 = [v129 countByEnumeratingWithState:&v164 objects:v176 count:16];
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
    if (v127)
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

        v38 |= [v10 canPerformAction:NSSelectorFromString(*(*(&v160 + 1) + 8 * i)) withSender:v41];
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
              if ([v10 canPerformAction:NSSelectorFromString(v47) withSender:v140])
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
  if (!v127)
  {
LABEL_84:
    v123 = 0;
    v130 = 0;
    goto LABEL_88;
  }

LABEL_74:
  v123 = 0;
  v130 = 0;
  if ((v38 & 1) == 0)
  {
    goto LABEL_88;
  }

  v49 = [[DDContextMenuAction alloc] initWithRVItem:v127];
  v50 = [v126 objectForKeyedSubscript:@"kDDContextNoRoomForSubtitlesKey"];
  v51 = [v50 BOOLValue];

  if (v51)
  {
    v52 = 5;
  }

  else
  {
    v52 = 1;
  }

  v155 = 0;
  v53 = [(DDContextMenuAction *)v49 contextMenuConfigurationWithIdentifier:v133 inView:v10 context:v126 defaultAction:0 menuProvider:&v155 options:v52];
  v54 = v155;
  v55 = v54;
  if (!v54)
  {
    v123 = 0;
    goto LABEL_86;
  }

  v123 = (*(v54 + 2))(v54, obj);
  v56 = [v123 children];
  v57 = [v56 count] == 0;

  if (v57)
  {
LABEL_86:

    v48 = 0;
    goto LABEL_87;
  }

  v58 = [v123 children];
  v48 = [v58 mutableCopy];

  if (!v48)
  {
    goto LABEL_87;
  }

  v59 = [v48 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v130 = [v48 firstObject];
  }

  else
  {
    v130 = 0;
  }

  v98 = [v130 identifier];
  v99 = [v98 hasPrefix:@"com.apple.datadetectors.DDSearchWebAction"];

  if (v99)
  {
    [v48 removeObjectAtIndex:0];
    goto LABEL_88;
  }

  v100 = [v127 normalizedType];
  if (v100 == 2)
  {
LABEL_188:
    v103 = [v127 originalSelectedText];
    v104 = [DDSearchWebAction alloc];
    if (v103)
    {
      v105 = -[DDSearchWebAction initWithQueryString:range:context:](v104, "initWithQueryString:range:context:", v103, 0, [v103 length], v126);
      goto LABEL_195;
    }

    v106 = [v127 text];
    v107 = [v127 highlightRange];
    v109 = [(DDSearchWebAction *)v104 initWithQueryString:v106 range:v107 context:v108, v126];

LABEL_196:
    if (v109)
    {
      v113 = [[DDRVInteractionDelegate alloc] initWithItem:v127];
      objc_initWeak(&location, v10);
      v135 = MEMORY[0x277D750C8];
      v114 = [(DDSearchWebAction *)v109 localizedName];
      v115 = [(DDAction *)v109 icon];
      v116 = [(DDAction *)v109 generateIdentifier];
      v150[0] = MEMORY[0x277D85DD0];
      v150[1] = 3221225472;
      v150[2] = __77__DDRevealBridge_updatedTextInteractionMenuElements_withRVItem_view_context___block_invoke;
      v150[3] = &unk_2782915A0;
      v117 = v109;
      v151 = v117;
      objc_copyWeak(&v153, &location);
      v118 = v113;
      v152 = v118;
      v130 = [v135 actionWithTitle:v114 image:v115 identifier:v116 handler:v150];

      objc_destroyWeak(&v153);
      objc_destroyWeak(&location);

      goto LABEL_88;
    }

LABEL_87:
    v130 = 0;
    goto LABEL_88;
  }

  if (v100 != 3)
  {
    goto LABEL_87;
  }

  v101 = [v127 originalSelectedText];
  v102 = [v101 length] == 0;

  if (!v102)
  {
    goto LABEL_188;
  }

  v110 = [v127 ddResult];
  v111 = [v110 category];

  v130 = 0;
  if (v111 <= 6 && ((1 << v111) & 0x58) != 0)
  {
    v112 = [v127 ddResult];
    v103 = [v112 matchedString];

    v105 = -[DDSearchWebAction initWithQueryString:range:context:]([DDSearchWebAction alloc], "initWithQueryString:range:context:", v103, 0, [v103 length], v126);
LABEL_195:
    v109 = v105;
    goto LABEL_196;
  }

LABEL_88:
  v134 = v48;
  if ([v127 normalizedType] == 1)
  {
LABEL_93:
    v62 = 0;
    LOBYTE(v63) = 0;
    v121 = v138 != 0;
  }

  else
  {
    v60 = [v127 ddResult];
    if ([v60 category] == 2)
    {

      goto LABEL_93;
    }

    v61 = [v127 ddResult];
    if ([v61 category] == 1)
    {

      goto LABEL_93;
    }

    v82 = [v127 ddResult];
    v83 = [v82 type];
    if ([v83 isEqualToString:v120])
    {
      v62 = 0;
    }

    else
    {
      v90 = [v127 ddResult];
      v91 = [v90 type];
      v92 = [v91 isEqualToString:v119];

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

              v63 |= [v10 canPerformAction:NSSelectorFromString(*(*(&v146 + 1) + 8 * k)) withSender:v138];
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

          v65 |= [v10 canPerformAction:NSSelectorFromString(*(*(&v142 + 1) + 8 * m)) withSender:v141];
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
  v70 = [v140 children];
  v71 = [v70 mutableCopy];

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
    v75 = [v139 title];
    v76 = [v139 image];
    v131 = [v74 commandWithTitle:v75 image:v76 action:v43 propertyList:0];

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
  if ([v127 normalizedType] == 2 && !objc_msgSend(a1, "_textActionsAreAvailableForItem:", v127))
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
    if (v130)
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
      [v71 addObject:v130];
    }

    goto LABEL_154;
  }

LABEL_147:
  if (v130)
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
  v85 = [v140 children];
  v86 = [v85 count] == 0;

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

+ (BOOL)underlyingViewDisappeared:(id)a3
{
  v3 = a3;
  v4 = +[DDDetectionController sharedController];
  v5 = [v4 tryDismissActionInView:v3];

  return v5;
}

@end