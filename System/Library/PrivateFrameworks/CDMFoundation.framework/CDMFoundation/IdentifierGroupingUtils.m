@interface IdentifierGroupingUtils
+ (id)getInterpretationGroupMax:(id)a3;
+ (id)getInterpretationGroups:(id)a3;
+ (id)limitAlignments:(id)a3 alignmentSpanDict:(id)a4;
+ (void)createIdentifierGroups:(id)a3 alignmentSpanDict:(id)a4 identifiers:(id)a5 nodeIndex:(unsigned int)a6 interpretationGroupCurrentMax:(id)a7 tagSpans:(id)a8;
+ (void)createNonOverlapping:(id)a3 interpretationGroup:(id)a4 start:(unint64_t)a5 interpretationGroups:(id)a6;
+ (void)sortAlignmentDict:(id)a3 orderedIndexes:(id)a4 alignmentSpanDict:(id)a5;
@end

@implementation IdentifierGroupingUtils

+ (id)getInterpretationGroups:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      v7 = objc_alloc(MEMORY[0x1E695DF70]);
      v8 = [v4 objectAtIndexedSubscript:v6];
      v9 = [v7 initWithObjects:{v8, 0}];

      [a1 createNonOverlapping:v4 interpretationGroup:v9 start:++v6 interpretationGroups:v5];
    }

    while (v6 < [v4 count]);
  }

  return v5;
}

+ (void)createNonOverlapping:(id)a3 interpretationGroup:(id)a4 start:(unint64_t)a5 interpretationGroups:(id)a6
{
  v19 = a3;
  v10 = a4;
  v11 = a6;
  if ([v11 count] <= 0x1F)
  {
    if ([v19 count] <= a5)
    {
      goto LABEL_13;
    }

    if ([v19 count] <= a5)
    {
      goto LABEL_12;
    }

    v12 = 0;
    v13 = v19;
    do
    {
      v14 = [v13 objectAtIndexedSubscript:a5];
      v15 = [v10 lastObject];
      v16 = [v14 overlaps:v15];

      if ((v16 & 1) == 0)
      {
        v17 = [v10 mutableCopy];
        [v17 addObject:v14];
        if (([MEMORY[0x1E69D1268] subset:v17 of:v11] & 1) == 0)
        {
          [a1 createNonOverlapping:v19 interpretationGroup:v17 start:a5 + 1 interpretationGroups:v11];
          v12 = 1;
        }
      }

      v18 = ++a5 >= [v19 count];
      v13 = v19;
    }

    while (!v18);
    if ((v12 & 1) == 0)
    {
LABEL_12:
      if ([v11 count] <= 0x1F)
      {
LABEL_13:
        if (([MEMORY[0x1E69D1268] subset:v10 of:v11] & 1) == 0)
        {
          [v11 addObject:v10];
        }
      }
    }
  }
}

+ (void)createIdentifierGroups:(id)a3 alignmentSpanDict:(id)a4 identifiers:(id)a5 nodeIndex:(unsigned int)a6 interpretationGroupCurrentMax:(id)a7 tagSpans:(id)a8
{
  v135 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v77 = a4;
  v97 = a5;
  v69 = a7;
  v13 = a8;
  v14 = v12;
  v75 = v13;
  if (v12 && [v12 count])
  {
    v71 = v12;
    v15 = [v12 sortedArrayUsingSelector:sel_compareStartAndSize_];
    if ([v15 count] < 0xD)
    {
      v19 = v15;
    }

    else
    {
      v16 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v132 = "+[IdentifierGroupingUtils createIdentifierGroups:alignmentSpanDict:identifiers:nodeIndex:interpretationGroupCurrentMax:tagSpans:]";
        v133 = 1024;
        *v134 = 12;
        *&v134[4] = 2112;
        *&v134[6] = v15;
        _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, "%s Limiting the number span alignments to %d when creating interpretation groups. Given %@", buf, 0x1Cu);
      }

      v17 = [a1 limitAlignments:v15 alignmentSpanDict:v77];

      v18 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v132 = "+[IdentifierGroupingUtils createIdentifierGroups:alignmentSpanDict:identifiers:nodeIndex:interpretationGroupCurrentMax:tagSpans:]";
        v133 = 2112;
        *v134 = v17;
        _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s Interpretation group span alignments after limiting: %@", buf, 0x16u);
      }

      v19 = v17;
    }

    v20 = [a1 getInterpretationGroups:v19];
    if (v69)
    {
      v98 = [v69 unsignedIntValue] + 1;
    }

    else
    {
      v98 = 0;
    }

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    obj = v20;
    v14 = v12;
    v73 = [obj countByEnumeratingWithState:&v121 objects:v130 count:16];
    if (v73)
    {
      v72 = *v122;
      do
      {
        v21 = 0;
        do
        {
          if (*v122 != v72)
          {
            v22 = v21;
            objc_enumerationMutation(obj);
            v21 = v22;
          }

          v74 = v21;
          v23 = *(*(&v121 + 1) + 8 * v21);
          v117 = 0u;
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v24 = v23;
          v79 = [v24 countByEnumeratingWithState:&v117 objects:v129 count:16];
          if (v79)
          {
            v83 = 0;
            v25 = 0;
            v78 = *v118;
            v76 = v24;
            while (1)
            {
              for (i = 0; i != v79; ++i)
              {
                if (*v118 != v78)
                {
                  objc_enumerationMutation(v24);
                }

                v27 = *(*(&v117 + 1) + 8 * i);
                v28 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v27];
                v29 = [v77 objectForKeyedSubscript:v28];

                v30 = [v29 usoGraph];
                if (!v30)
                {
                  goto LABEL_81;
                }

                v115 = 0u;
                v116 = 0u;
                v113 = 0u;
                v114 = 0u;
                v80 = v30;
                v31 = [v30 identifiers];
                v32 = [v31 countByEnumeratingWithState:&v113 objects:v128 count:16];
                v81 = i;
                if (!v32)
                {

                  v35 = 0;
                  v44 = 0;
                  goto LABEL_47;
                }

                v33 = v32;
                v93 = v31;
                v34 = 0;
                v95 = 0;
                v91 = 0;
                v35 = 0;
                v36 = *v114;
                do
                {
                  for (j = 0; j != v33; ++j)
                  {
                    if (*v114 != v36)
                    {
                      objc_enumerationMutation(v93);
                    }

                    v38 = *(*(&v113 + 1) + 8 * j);
                    v39 = [v38 nodeIndex];
                    if (v39 == [v27 nodeIndex])
                    {
                      if (v34)
                      {
                        goto LABEL_35;
                      }

                      if ([v29 hasInput])
                      {
                        v40 = [a1 getTokenIndexIdentifier:v25 interpretationGroup:v98 nodeIndex:a6 span:v29 spanIdentifier:v38];
                        if (v40)
                        {
                          [v97 addObject:v40];
                        }

LABEL_35:
                        v34 = 1;
                      }

                      else
                      {
                        v34 = 0;
                      }

                      v41 = [a1 createIdentifier:v25 interpretationGroupIndex:v98 nodeIndex:a6 spanIdentifier:v38];
                      v42 = [v38 groupIndex];
                      if (v35 <= v42)
                      {
                        v35 = v42;
                      }

                      [v97 addObject:v41];
                      v95 |= [v38 sourceComponent] == 1;

                      v91 = 1;
                      v83 = 1;
                      continue;
                    }
                  }

                  v33 = [v93 countByEnumeratingWithState:&v113 objects:v128 count:16];
                }

                while (v33);

                if (v91)
                {
                  v43 = v35 + 1;
                }

                else
                {
                  v43 = 0;
                }

                v25 = v43 + v25;
                v24 = v76;
                v44 = v95;
LABEL_47:
                if ((v83 & 1) != 0 && (v44 & 1) == 0)
                {
                  v111 = 0u;
                  v112 = 0u;
                  v109 = 0u;
                  v110 = 0u;
                  v45 = v75;
                  v84 = [v45 countByEnumeratingWithState:&v109 objects:v127 count:16];
                  if (v84)
                  {
                    v46 = 0;
                    v82 = *v110;
                    v87 = v27;
                    v88 = v29;
                    v86 = v45;
                    do
                    {
                      v47 = 0;
                      do
                      {
                        if (*v110 != v82)
                        {
                          v48 = v47;
                          objc_enumerationMutation(v45);
                          v47 = v48;
                        }

                        v85 = v47;
                        v49 = *(*(&v109 + 1) + 8 * v47);
                        v105 = 0u;
                        v106 = 0u;
                        v107 = 0u;
                        v108 = 0u;
                        v90 = v49;
                        v50 = [v49 usoGraph];
                        v51 = [v50 alignments];

                        v94 = v51;
                        v52 = [v51 countByEnumeratingWithState:&v105 objects:v126 count:16];
                        if (v52)
                        {
                          v53 = v52;
                          v54 = *v106;
                          v89 = *v106;
                          do
                          {
                            v55 = 0;
                            v92 = v53;
                            do
                            {
                              if (*v106 != v54)
                              {
                                objc_enumerationMutation(v94);
                              }

                              v96 = v55;
                              v56 = *(*(&v105 + 1) + 8 * v55);
                              if ([v56 equalIndexes:v27])
                              {
                                v103 = 0u;
                                v104 = 0u;
                                v101 = 0u;
                                v102 = 0u;
                                v57 = [v90 usoGraph];
                                v58 = [v57 identifiers];

                                v59 = [v58 countByEnumeratingWithState:&v101 objects:v125 count:16];
                                if (v59)
                                {
                                  v60 = v59;
                                  v61 = *v102;
                                  do
                                  {
                                    for (k = 0; k != v60; ++k)
                                    {
                                      if (*v102 != v61)
                                      {
                                        objc_enumerationMutation(v58);
                                      }

                                      v63 = *(*(&v101 + 1) + 8 * k);
                                      v64 = [v63 nodeIndex];
                                      if (v64 == [v56 nodeIndex])
                                      {
                                        v65 = [a1 createIdentifier:v25 interpretationGroupIndex:v98 nodeIndex:a6 spanIdentifier:v63];
                                        v66 = [v63 groupIndex];
                                        if (v35 <= v66)
                                        {
                                          v35 = v66;
                                        }

                                        [v97 addObject:v65];

                                        v46 = 1;
                                      }
                                    }

                                    v60 = [v58 countByEnumeratingWithState:&v101 objects:v125 count:16];
                                  }

                                  while (v60);
                                }

                                v27 = v87;
                                v29 = v88;
                                v45 = v86;
                                v54 = v89;
                                v53 = v92;
                              }

                              v55 = v96 + 1;
                            }

                            while (v96 + 1 != v53);
                            v53 = [v94 countByEnumeratingWithState:&v105 objects:v126 count:16];
                          }

                          while (v53);
                        }

                        v47 = v85 + 1;
                      }

                      while (v85 + 1 != v84);
                      v84 = [v45 countByEnumeratingWithState:&v109 objects:v127 count:16];
                    }

                    while (v84);

                    if (v46)
                    {
                      v25 = v25 + v35 + 1;
                    }

                    v24 = v76;
                  }

                  else
                  {
                  }
                }

                v30 = v80;
                i = v81;
LABEL_81:
              }

              v79 = [v24 countByEnumeratingWithState:&v117 objects:v129 count:16];
              if (!v79)
              {

                v98 += v83 & 1;
                v14 = v71;
                goto LABEL_85;
              }
            }
          }

LABEL_85:
          v21 = v74 + 1;
        }

        while (v74 + 1 != v73);
        v73 = [obj countByEnumeratingWithState:&v121 objects:v130 count:16];
      }

      while (v73);
    }
  }

  v67 = *MEMORY[0x1E69E9840];
}

+ (void)sortAlignmentDict:(id)a3 orderedIndexes:(id)a4 alignmentSpanDict:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [v7 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * v13)];
        v15 = v14;
        if (v14 && [v14 count] >= 2)
        {
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __78__IdentifierGroupingUtils_sortAlignmentDict_orderedIndexes_alignmentSpanDict___block_invoke;
          v17[3] = &unk_1E862E7A0;
          v18 = v9;
          [v15 sortUsingComparator:v17];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __78__IdentifierGroupingUtils_sortAlignmentDict_orderedIndexes_alignmentSpanDict___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696B098];
  v7 = a3;
  v8 = [v6 valueWithNonretainedObject:a2];
  v9 = [v5 objectForKeyedSubscript:v8];

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v7];

  v12 = [v10 objectForKeyedSubscript:v11];

  if (v9)
  {
    v13 = ![CDMServiceGraphUtil spanHasMatcherName:3 matchingSpan:v9];
    if (v12)
    {
LABEL_3:
      v14 = [CDMServiceGraphUtil spanHasMatcherName:3 matchingSpan:v12];
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 1;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  if ((v13 | v14))
  {
    v15 = v13 & v14;
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

+ (id)limitAlignments:(id)a3 alignmentSpanDict:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31 = a4;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = MEMORY[0x1E695DEC8];
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v11, "getStartIndex")}];
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v11, "getEndIndex")}];
        v15 = [v12 arrayWithObjects:{v13, v14, 0}];

        v16 = [v6 objectForKeyedSubscript:v15];
        if (!v16)
        {
          v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v6 setObject:v16 forKeyedSubscript:v15];
          [v32 addObject:v15];
        }

        [v16 addObject:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v8);
  }

  [a1 sortAlignmentDict:v6 orderedIndexes:v32 alignmentSpanDict:v31];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while ([v17 count] <= 0xB)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v18 = v32;
    v19 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (!v19)
    {

      break;
    }

    v20 = v19;
    v21 = 0;
    v22 = *v35;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = [v6 objectForKeyedSubscript:*(*(&v34 + 1) + 8 * j)];
        v25 = v24;
        if (v24 && [v24 count])
        {
          v26 = [v25 objectAtIndex:0];
          [v17 addObject:v26];

          [v25 removeObjectAtIndex:0];
          v21 = 1;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v20);

    if ((v21 & 1) == 0)
    {
      break;
    }
  }

  v27 = [v17 sortedArrayUsingSelector:sel_compareStartAndSize_];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)getInterpretationGroupMax:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 identifiers];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 hasInterpretationGroup])
        {
          if (!v7 || (v11 = [v10 interpretationGroup], v11 > objc_msgSend(v7, "unsignedIntValue")))
          {
            v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(v10, "interpretationGroup")}];

            v7 = v12;
          }
        }

        else
        {
          [v10 setInterpretationGroup:0];
          if (!v7)
          {
            v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:0];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

@end