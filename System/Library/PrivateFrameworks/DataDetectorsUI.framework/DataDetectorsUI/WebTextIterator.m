@interface WebTextIterator
- (id)dd_doUrlificationForQuery:(void *)a3 forResults:(void *)a4 referenceDate:(void *)a5 document:(_BYTE *)a6 DOMWasModified:(uint64_t)a7 relevantResults:(void *)a8 URLificationBlock:;
- (uint64_t)dd_newQueryStopRange:(void *)a1;
@end

@implementation WebTextIterator

- (uint64_t)dd_newQueryStopRange:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  v4 = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  v24 = DDScanQueryCreate();
  if (([a1 atEnd] & 1) == 0)
  {
    alloc = *MEMORY[0x277CBECE8];
    v5 = -1;
    do
    {
      v6 = v5++;
      v7 = [a1 currentTextLength];
      if (v7)
      {
        v8 = v7;
        v23 = v6;
        v25 = v5;
        v9 = [a1 currentTextPointer];
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        do
        {
          if (!CFCharacterSetIsCharacterMember(Predefined, *(v9 + 2 * v10)))
          {
            v19 = CFStringCreateWithCharacters(alloc, [a1 currentTextPointer], objc_msgSend(a1, "currentTextLength"));
            v5 = v25;
            DDScanQueryAddTextFragment();
            CFRelease(v19);
            goto LABEL_26;
          }

          IsCharacterMember = CFCharacterSetIsCharacterMember(v4, *(v9 + 2 * v10));
          v15 = *(v9 + 2 * v10);
          v16 = (v15 == 9) | v13;
          if (IsCharacterMember)
          {
            v16 = v13;
            v11 = 1;
          }

          if (v15 == 160)
          {
            v13 = (v12 > 1) | v16;
          }

          else
          {
            v13 = v16;
          }

          if (v15 == 160)
          {
            ++v12;
          }

          else
          {
            v12 = 0;
          }

          ++v10;
        }

        while (v8 != v10);
        if (v11)
        {
          DDScanQueryAddLineBreak();
          v17 = v23;
          v5 = v25;
          if (!a2)
          {
            goto LABEL_26;
          }

          v18 = 4999;
        }

        else
        {
          DDScanQueryAddSeparator();
          v17 = v23;
          v5 = v25;
          if (!a2)
          {
            goto LABEL_26;
          }

          v18 = 9999;
        }

        if (v17 > v18)
        {
          goto LABEL_28;
        }
      }

      else
      {
        DDScanQueryAddSeparator();
        if (a2 && v6 > 999)
        {
LABEL_28:
          *a2 = [a1 currentRange];
          return v24;
        }
      }

LABEL_26:
      [a1 advance];
    }

    while (([a1 atEnd] & 1) == 0);
  }

  return v24;
}

- (id)dd_doUrlificationForQuery:(void *)a3 forResults:(void *)a4 referenceDate:(void *)a5 document:(_BYTE *)a6 DOMWasModified:(uint64_t)a7 relevantResults:(void *)a8 URLificationBlock:
{
  v179 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v137 = a4;
  v146 = a5;
  v139 = a8;
  v167 = a1;
  if (!a1)
  {
    goto LABEL_137;
  }

  v128 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v172 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v129 = v12;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v174 objects:v178 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v175;
    v18 = *MEMORY[0x277D04170];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v175 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v174 + 1) + 8 * i);
        v21 = [MEMORY[0x277CCAA70] indexPathWithIndex:v16];
        Type = DDResultGetType();
        if (CFStringCompare(Type, v18, 0))
        {
          [v172 addObject:v20];
          [v13 addObject:v21];
        }

        else
        {
          SubResults = DDResultGetSubResults();
          [v172 addObjectsFromArray:SubResults];
          if ([SubResults count])
          {
            v24 = 0;
            do
            {
              v25 = [v21 indexPathByAddingIndex:v24];
              [v13 addObject:v25];

              ++v24;
            }

            while (v24 < [SubResults count]);
          }
        }

        ++v16;
      }

      v15 = [obj countByEnumeratingWithState:&v174 objects:v178 count:16];
    }

    while (v15);
  }

  v26 = v172;
  v27 = [v167 dd_collectDDRangesForQuery:a2 forResults:v172];
  if (!v27)
  {
    a1 = 0;
    v12 = v129;
    v120 = v128;
    goto LABEL_136;
  }

  v28 = [v172 count];
  v12 = v129;
  if ([v27 count] != v28)
  {
    DDLog();
    v29 = CFTimeZoneCopyDefault();
    goto LABEL_130;
  }

  v29 = CFTimeZoneCopyDefault();
  v134 = v28;
  if (!v28)
  {
LABEL_130:
    CFRelease(v29);
    v30 = 0;
    v121 = 0;
    v168 = 0;
    v118 = 0;
    v119 = a6;
    v120 = v128;
    goto LABEL_133;
  }

  cf = v29;
  v30 = 0;
  v162 = 0;
  v163 = 0;
  v135 = 0;
  v158 = 0;
  v166 = 0;
  v168 = 0;
  v31 = 0;
  v32 = 4294901760;
  v126 = v27;
  v33 = v134;
  do
  {
    v34 = [v26 objectAtIndex:{v31, v124, MatchedString}];
    v152 = v31;
    v35 = [v27 objectAtIndex:v31];
    v36 = [MEMORY[0x277CBEB68] null];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      QueryRangeForURLification = DDResultGetQueryRangeForURLification();
      v40 = QueryRangeForURLification;
      v41 = v32 >> 16;
      if (v41 >= QueryRangeForURLification >> 16 && (v41 > QueryRangeForURLification >> 16 || SHIDWORD(v32) >= SHIDWORD(QueryRangeForURLification)))
      {
        v124 = v34;
        MatchedString = DDResultGetMatchedString();
        DDLog();
        goto LABEL_125;
      }

      v42 = v27;
      v43 = v26;
      v44 = v32;
      v150 = QueryRangeForURLification >> 16;
      v136 = v39;
      v45 = [v13 objectAtIndex:v152];
      v46 = [v45 dd_stringValue];

      v143 = v46;
      v142 = v139[2](v139, v34, v46, v137, cf);
      if (!v142)
      {
        v32 = v44;
        v26 = v43;
        v27 = v42;
LABEL_124:
        v33 = v134;

        goto LABEL_125;
      }

      v47 = [v35 objectAtIndex:0];
      v48 = [v35 lastObject];
      v141 = v47;
      v49 = [v47 node];
      v140 = v48;
      v50 = [v48 node];
      context = objc_autoreleasePoolPush();
      v173 = 0;
      v160 = v49;
      v149 = v50;
      v51 = [v49 dd_searchForLinkRemovingExistingDDLinksWithEndNode:v50 didModifyDOM:&v173];
      v131 = v173;
      v132 = v51;
      if (v51)
      {
        v52 = v168;
LABEL_123:
        v168 = v52;
        v135 = v131 & 1 | v135 & 1 | ((v132 & 1) == 0);
        objc_autoreleasePoolPop(context);

        v32 = v136;
        v26 = v172;
        v27 = v126;
        goto LABEL_124;
      }

      v54 = v150;
      v52 = v168;
      if (v150 > v136 >> 16)
      {
        goto LABEL_123;
      }

      v55 = v136 >> 16;
      v138 = v40 >> 32;
      v156 = 1;
      v56 = v150;
      v153 = v55;
      while (1)
      {
        v154 = [v35 objectAtIndex:v56 - v54];
        v57 = [v154 node];
        v58 = v56 <= v55 ? v55 : v56;
        while (v58 != v56)
        {
          v59 = v56 + 1;
          v60 = [v35 objectAtIndex:1 - v150 + v56];
          v61 = [v60 node];

          v56 = v59;
          if (v61 != v57)
          {
            v58 = v59 - 1;
            break;
          }
        }

        v62 = v163;
        if (v163 == v57)
        {
          obja = 0;
        }

        else
        {
          if (v158 && v163 != 0)
          {
            v63 = [v52 substringFromIndex:v166];
            [v163 setData:v63];
          }

          v64 = v57;
          obja = [v64 data];
          v166 = 0;
          v52 = 0;
          v158 = 0;
          v62 = v64;
        }

        v165 = [v57 parentNode];
        if (v57 == v160)
        {
          v65 = [v141 startOffset] + v138;
        }

        else
        {
          v65 = 0;
        }

        v163 = v62;
        if (v57 == v149)
        {
          v66 = [v140 startOffset] + (v136 >> 32);
          v68 = v162;
          v67 = v162;
        }

        else
        {
          if (obja)
          {
            v66 = [obja length];
            v67 = 0;
          }

          else
          {
            v69 = [v52 length];
            v67 = 0;
            v66 = v69 - v166;
          }

          v68 = v162;
        }

        v151 = v66;
        v169 = v52;
        if (v57 == v160 && v30 == v57)
        {
          v71 = v68;
        }

        else
        {
          v71 = 0;
        }

        v147 = v66 - v67;
        if (v30 == v57)
        {
          v72 = v66 - v67;
        }

        else
        {
          v72 = v66;
        }

        v164 = v72;
        if (!qword_280B122A0)
        {
          v73 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v74 = [v73 invertedSet];
          v75 = qword_280B122A0;
          qword_280B122A0 = v74;
        }

        v76 = v65 - v71;
        v77 = *(*(a2 + 16) + 48 * v58 + 40);
        v155 = v30;
        if (obja)
        {
          v78 = obja;
          v79 = v76;
        }

        else
        {
          v78 = v169;
          v79 = v76 + v166;
        }

        v80 = v77 & 0x18000000;
        v161 = v78;
        v81 = [v78 rangeOfCharacterFromSet:qword_280B122A0 options:0 range:{v79, v164 - v76}];
        if (v82)
        {
          break;
        }

        v92 = v80 != 0;
        v30 = v155;
        v156 |= v92;
LABEL_122:

        v56 = v58 + 1;
        v55 = v136 >> 16;
        v52 = v169;
        v54 = v150;
        if (v58 >= v153)
        {
          goto LABEL_123;
        }
      }

      if (v156)
      {
        v83 = v81 - v79;
      }

      else
      {
        v83 = 0;
      }

      v84 = v164 - v76 - v83;
      v85 = v58 != v153 && v80 == 0;
      v86 = !v85;
      v148 = v86;
      if (!v85)
      {
        if (v156)
        {
          v79 = v81;
        }

        v87 = [v161 rangeOfCharacterFromSet:qword_280B122A0 options:4 range:{v79, v84}];
        v84 = v88 - v79 + v87;
      }

      v89 = v83 + v76;
      v90 = v169;
      v91 = obja;
      v144 = v84;
      if (v89)
      {
        if (obja)
        {
          [obja substringToIndex:v89];
        }

        else
        {
          [v169 substringWithRange:{v166, v89}];
        }
        v93 = ;
        v94 = [v146 createTextNode:v93];
        v95 = [v165 insertBefore:v94 refChild:v57];

        v84 = v144;
        v90 = v169;
      }

      if (obja)
      {
        v96 = obja;
        v97 = v89;
      }

      else
      {
        v97 = v89 + v166;
        v96 = v90;
      }

      v157 = [v96 substringWithRange:{v97, v84}];
      v98 = [v146 createTextNode:v157];
      v99 = [v146 createElement:@"a"];
      if (objc_opt_respondsToSelector())
      {
        if (objc_opt_respondsToSelector())
        {
          [v99 setDir:@"ltr"];
        }

        [v99 setHref:v142];
        if (!v166)
        {
          v100 = obja ? obja : v90;
          if (v144 == [v100 length])
          {
            v101 = [v163 parentElement];
            v102 = [v101 getAttributeNode:@"color"];

            if (v102)
            {
              v103 = [v102 style];
              v104 = [v103 cssText];
              [v99 setAttribute:@"style" value:v104];
            }

            v90 = v169;
            v91 = obja;
          }
        }
      }

      v105 = [v99 appendChild:v98];
      v106 = [v165 insertBefore:v99 refChild:v57];
      [v99 setAttribute:@"x-apple-data-detectors" value:@"true"];
      v107 = DDResultGetCategory() - 1;
      if (v107 > 4)
      {
        v108 = 0;
      }

      else
      {
        v108 = off_2782912A0[v107];
      }

      [v99 setAttribute:@"x-apple-data-detectors-type" value:v108];
      [v99 setAttribute:@"x-apple-data-detectors-result" value:v143];
      if (v91)
      {
        v109 = [v91 length];
      }

      else
      {
        v109 = [v90 length] - v166;
      }

      v110 = v164 < v109;
      if (v164 >= v109)
      {
        v113 = [v57 data];
        v114 = [v113 length];

        if (v114)
        {
          [v57 setData:&stru_282C1E0A8];
        }

        v163 = 0;
        v166 = 0;
        v169 = 0;
        v30 = v155;
        v111 = v162;
        goto LABEL_118;
      }

      v30 = v155;
      v111 = v162;
      if (v158)
      {
        v112 = v164 + v166;
      }

      else
      {
        if (v169 != obja)
        {
          v159 = [obja copy];

          v111 = v162;
          v166 = v164;
          v169 = v159;
LABEL_118:
          if (v30 == v57)
          {
            v116 = v147 + v111;
          }

          else
          {
            v115 = v57;

            v30 = v115;
            v116 = v151;
          }

          v156 = v148;
          v158 = v110;
          v162 = v116;
          goto LABEL_122;
        }

        v112 = v164;
      }

      v166 = v112;
      goto LABEL_118;
    }

    if ((_MergedGlobals_4 & 1) == 0)
    {
      v124 = v34;
      DDLog();
      _MergedGlobals_4 = 1;
    }

LABEL_125:

    v31 = v152 + 1;
  }

  while (v152 + 1 != v33);
  CFRelease(cf);
  if (v158)
  {
    v117 = [v168 substringFromIndex:v166];
    v118 = v163;
    [v163 setData:v117];

    v12 = v129;
    v119 = a6;
    v120 = v128;
  }

  else
  {
    v12 = v129;
    v119 = a6;
    v120 = v128;
    v118 = v163;
  }

  v121 = v135;
LABEL_133:

  if (v119)
  {
    *v119 = v121 & 1;
  }

  a1 = v120;

LABEL_136:
LABEL_137:

  v122 = *MEMORY[0x277D85DE8];

  return a1;
}

@end