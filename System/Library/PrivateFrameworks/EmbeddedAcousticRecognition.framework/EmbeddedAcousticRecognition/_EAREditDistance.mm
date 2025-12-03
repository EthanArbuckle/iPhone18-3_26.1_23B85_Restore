@interface _EAREditDistance
- (_EAREditDistance)editDistanceWithRefText:(id)text hypText:(id)hypText caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense;
- (_EAREditDistance)editDistanceWithRefTokens:(id)tokens hypTokens:(id)hypTokens caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense;
- (void)editAlignmentWithRefText:(id)text hypText:(id)hypText placeholderSymbol:(id)symbol caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense completion:(id)completion;
- (void)editAlignmentWithRefTokens:(id)tokens hypTokens:(id)hypTokens placeholderSymbol:(id)symbol caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense completion:(id)completion;
@end

@implementation _EAREditDistance

- (_EAREditDistance)editDistanceWithRefTokens:(id)tokens hypTokens:(id)hypTokens caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense
{
  senseCopy = sense;
  insensitiveCopy = insensitive;
  tokensCopy = tokens;
  hypTokensCopy = hypTokens;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v76 = 0;
  v12 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\\\\\S*$" options:0 error:&v76];
  if (!v76)
  {
    v74 = insensitiveCopy;
    v75 = senseCopy;
    v69 = v12;
    v66 = v11;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([tokensCopy count] != -1)
    {
      v15 = 0;
      do
      {
        v16 = objc_alloc_init(_EARAlignmentState);
        [(_EARAlignmentState *)v16 setNumberOfInsertions:0];
        [(_EARAlignmentState *)v16 setNumberOfSubstitutions:0];
        [(_EARAlignmentState *)v16 setNumberOfDeletions:v15];
        [(_EARAlignmentState *)v16 setTotalCost:v15];
        [v13 addObject:v16];
        v17 = objc_alloc_init(_EARAlignmentState);
        [v14 addObject:v17];

        ++v15;
      }

      while (v15 < [tokensCopy count] + 1);
    }

    if ([hypTokensCopy count])
    {
      v68 = 1;
      v72 = hypTokensCopy;
      v73 = tokensCopy;
      v70 = v13;
      v71 = v14;
      do
      {
        v18 = [v13 objectAtIndexedSubscript:0];
        v19 = [v18 copy];
        [v14 setObject:v19 atIndexedSubscript:0];

        v20 = [v14 objectAtIndexedSubscript:0];
        [v20 incrementInsertions];

        v21 = [v14 objectAtIndexedSubscript:0];
        [v21 incrementCost];

        if ([tokensCopy count])
        {
          v22 = 1;
          do
          {
            v23 = [v13 objectAtIndexedSubscript:v22];
            totalCost = [v23 totalCost];

            v25 = [v14 objectAtIndexedSubscript:v22 - 1];
            v26 = v13;
            totalCost2 = [v25 totalCost];

            v28 = [v26 objectAtIndexedSubscript:v22 - 1];
            totalCost3 = [v28 totalCost];

            v30 = [hypTokensCopy objectAtIndexedSubscript:v68 - 1];
            v31 = [tokensCopy objectAtIndexedSubscript:v22 - 1];
            if (v74)
            {
              lowercaseString = [v30 lowercaseString];

              lowercaseString2 = [v31 lowercaseString];

              v30 = lowercaseString;
              v31 = lowercaseString2;
            }

            if (v75)
            {
              v34 = [v69 stringByReplacingMatchesInString:v30 options:0 range:0 withTemplate:{objc_msgSend(v30, "length"), &stru_1F2D44B60}];

              v35 = [v69 stringByReplacingMatchesInString:v31 options:0 range:0 withTemplate:{objc_msgSend(v31, "length"), &stru_1F2D44B60}];

              v30 = v34;
              v31 = v35;
            }

            hypTokensCopy = v72;
            v36 = totalCost3 + ([v30 isEqualToString:v31] ^ 1);
            if (v36 > totalCost || v36 > totalCost2)
            {
              if (totalCost2 >= totalCost)
              {
                v13 = v70;
                v44 = [v70 objectAtIndexedSubscript:v22];
                v45 = [v44 copy];
                v14 = v71;
                [v71 setObject:v45 atIndexedSubscript:v22];

                v46 = [v71 objectAtIndexedSubscript:v22];
                [v46 setTotalCost:totalCost + 1];

                v40 = [v71 objectAtIndexedSubscript:v22];
                [v40 incrementInsertions];
              }

              else
              {
                v14 = v71;
                v41 = [v71 objectAtIndexedSubscript:v22 - 1];
                v42 = [v41 copy];
                [v71 setObject:v42 atIndexedSubscript:v22];

                v43 = [v71 objectAtIndexedSubscript:v22];
                [v43 setTotalCost:totalCost2 + 1];

                v40 = [v71 objectAtIndexedSubscript:v22];
                [v40 incrementDeletions];
                v13 = v70;
              }
            }

            else
            {
              v13 = v70;
              v37 = [v70 objectAtIndexedSubscript:v22 - 1];
              v38 = [v37 copy];
              v14 = v71;
              [v71 setObject:v38 atIndexedSubscript:v22];

              if (([v30 isEqualToString:v31] & 1) == 0)
              {
                v39 = [v71 objectAtIndexedSubscript:v22];
                [v39 incrementSubstitutions];
              }

              v40 = [v71 objectAtIndexedSubscript:v22];
              [v40 setTotalCost:v36];
            }

            ++v22;
            tokensCopy = v73;
          }

          while (v22 <= [v73 count]);
        }

        if ([v13 count])
        {
          v47 = 0;
          do
          {
            v48 = [v14 objectAtIndexedSubscript:v47];
            v49 = [v48 copy];
            [v13 setObject:v49 atIndexedSubscript:v47];

            ++v47;
          }

          while (v47 < [v13 count]);
        }

        ++v68;
      }

      while (v68 <= [hypTokensCopy count]);
    }

    if ([v13 count])
    {
      v50 = [v13 count] - 1;
      v51 = MEMORY[0x1E696AD98];
      v52 = [v13 objectAtIndexedSubscript:v50];
      v53 = [v51 numberWithInteger:{objc_msgSend(v52, "numberOfInsertions")}];
      v54 = v13;
      v11 = v67;
      [v67 setObject:v53 forKeyedSubscript:@"Insertions"];

      v55 = MEMORY[0x1E696AD98];
      v56 = [v54 objectAtIndexedSubscript:v50];
      v57 = [v55 numberWithInteger:{objc_msgSend(v56, "numberOfDeletions")}];
      [v67 setObject:v57 forKeyedSubscript:@"Deletions"];

      v58 = MEMORY[0x1E696AD98];
      v59 = [v54 objectAtIndexedSubscript:v50];
      v60 = [v58 numberWithInteger:{objc_msgSend(v59, "numberOfSubstitutions")}];
      [v67 setObject:v60 forKeyedSubscript:@"Substitutions"];

      v61 = MEMORY[0x1E696AD98];
      v62 = [v54 objectAtIndexedSubscript:v50];
      v63 = [v61 numberWithInteger:{objc_msgSend(v62, "totalCost")}];
      [v67 setObject:v63 forKeyedSubscript:@"EditDistance"];
    }

    else
    {
      v54 = v13;
      v11 = v67;
      [v67 setObject:&unk_1F2D541E8 forKeyedSubscript:@"Insertions"];
      [v67 setObject:&unk_1F2D541E8 forKeyedSubscript:@"Deletions"];
      [v67 setObject:&unk_1F2D541E8 forKeyedSubscript:@"Substitutions"];
      [v67 setObject:&unk_1F2D541E8 forKeyedSubscript:@"EditDistance"];
    }

    v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(tokensCopy, "count")}];
    [v11 setObject:v64 forKeyedSubscript:@"ReferenceSize"];

    v12 = v69;
  }

  return v11;
}

- (_EAREditDistance)editDistanceWithRefText:(id)text hypText:(id)hypText caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense
{
  senseCopy = sense;
  insensitiveCopy = insensitive;
  hypTextCopy = hypText;
  textCopy = text;
  v12 = objc_alloc_init(_EARNLTokenizer);
  [(_EARNLTokenizer *)v12 setToLowerCase:0];
  [(_EARNLTokenizer *)v12 setReplacePunctuation:0];
  v13 = [(_EARNLTokenizer *)v12 tokenize:textCopy];

  v14 = [(_EARNLTokenizer *)v12 tokenize:hypTextCopy];

  v15 = [(_EAREditDistance *)self editDistanceWithRefTokens:v13 hypTokens:v14 caseInsensitive:insensitiveCopy removeWordSense:senseCopy];

  return v15;
}

- (void)editAlignmentWithRefTokens:(id)tokens hypTokens:(id)hypTokens placeholderSymbol:(id)symbol caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense completion:(id)completion
{
  insensitiveCopy = insensitive;
  senseCopy = sense;
  v98[1] = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  hypTokensCopy = hypTokens;
  symbolCopy = symbol;
  completionCopy = completion;
  v97 = tokensCopy;
  v15 = [tokensCopy count];
  v96 = hypTokensCopy;
  v16 = [hypTokensCopy count];
  if (!v15 || (v17 = v16) == 0)
  {
LABEL_11:
    (*(completionCopy + 2))(completionCopy, &unk_1F2D54200, 0, 0);
    goto LABEL_12;
  }

  for (i = 0; i != v15; ++i)
  {
    v19 = [v97 objectAtIndexedSubscript:i];

    if (v19 == symbolCopy)
    {
      goto LABEL_11;
    }
  }

  v20 = 0;
  do
  {
    v21 = [v96 objectAtIndexedSubscript:v20];

    if (v21 == symbolCopy)
    {
      goto LABEL_11;
    }

    ++v20;
  }

  while (v17 != v20);
  v88 = v15;
  v98[0] = 0;
  v22 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\\\\\S*$" options:0 error:v98];
  v23 = v22;
  if (v98[0])
  {
    (*(completionCopy + 2))(completionCopy, &unk_1F2D54200, 0, 0);
    goto LABEL_67;
  }

  v82[1] = v82;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v82 - v24;
  v26 = 0;
  v89 = v27;
  v90 = v25;
  if (v27 > 1)
  {
    v28 = v17 + 1;
  }

  else
  {
    v28 = 1;
  }

  v29 = (v28 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = vdupq_n_s64(v28 - 1);
  v31 = v25 + 8;
  v32 = xmmword_1B5AE0060;
  v33 = vdupq_n_s64(2uLL);
  do
  {
    v34 = vmovn_s64(vcgeq_u64(v30, v32));
    if (v34.i8[0])
    {
      *(v31 - 1) = v26;
    }

    if (v34.i8[4])
    {
      *v31 = v26 + 1;
    }

    v26 += 2;
    v32 = vaddq_s64(v32, v33);
    v31 += 2;
  }

  while (v29 != v26);
  v83 = completionCopy;
  v85 = symbolCopy;
  v35 = &v90[8 * v17 + 16];
  v87 = 8 * v17 + 8;
  v36 = (v90 + 8);
  v37 = 1;
  do
  {
    v38 = v37 - 1;
    v39 = *&v90[8 * (v37 - 1) * v89] + 1;
    v91 = v37;
    v92 = v36;
    *&v90[8 * v37 * v89] = v39;
    v93 = v35;
    v40 = 1;
    do
    {
      v41 = [v96 objectAtIndexedSubscript:v40 - 1];
      v42 = [v97 objectAtIndexedSubscript:v38];
      if (insensitiveCopy)
      {
        lowercaseString = [v41 lowercaseString];

        lowercaseString2 = [v42 lowercaseString];

        v42 = lowercaseString2;
        v41 = lowercaseString;
      }

      if (senseCopy)
      {
        v45 = [v23 stringByReplacingMatchesInString:v41 options:0 range:0 withTemplate:{objc_msgSend(v41, "length"), &stru_1F2D44B60}];

        v46 = [v23 stringByReplacingMatchesInString:v42 options:0 range:0 withTemplate:{objc_msgSend(v42, "length"), &stru_1F2D44B60}];

        v42 = v46;
        v41 = v45;
      }

      v47 = *(v36 - 1);
      v48 = v47 + ([v41 isEqualToString:v42] ^ 1);
      v49 = *v36++;
      v50 = v49 + 1;
      v51 = *(v35 - 1);
      if (v49 + 1 >= v51 + 1)
      {
        v50 = v51 + 1;
      }

      if (v48 >= v50)
      {
        v48 = v50;
      }

      *v35 = v48;
      v35 += 8;

      ++v40;
    }

    while (v40 <= v17);
    v37 = v91 + 1;
    v35 = &v93[v87];
    v36 = (v92 + v87);
  }

  while (v91 + 1 <= v88);
  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v93 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = v88;
  v54 = v17;
  symbolCopy = v85;
  v55 = v52;
  v84 = v52;
  do
  {
    if (v53)
    {
      if (!v54)
      {
        v64 = 0;
        v63 = v53 - 1;
        goto LABEL_61;
      }

      v91 = v54 - 1;
      v56 = [v96 objectAtIndexedSubscript:?];
      v57 = v53 - 1;
      v58 = [v97 objectAtIndexedSubscript:v53 - 1];
      v92 = v53;
      if (insensitiveCopy)
      {
        lowercaseString3 = [v56 lowercaseString];

        lowercaseString4 = [v58 lowercaseString];

        v56 = lowercaseString3;
        v58 = lowercaseString4;
      }

      if (senseCopy)
      {
        v61 = [v23 stringByReplacingMatchesInString:v56 options:0 range:0 withTemplate:{objc_msgSend(v56, "length"), &stru_1F2D44B60}];

        v62 = [v23 stringByReplacingMatchesInString:v58 options:0 range:0 withTemplate:{objc_msgSend(v58, "length"), &stru_1F2D44B60}];

        v56 = v61;
      }

      else
      {
        v62 = v58;
      }

      v65 = v89;
      v66 = v90;
      v67 = &v90[8 * v57 * v89];
      v87 = v57;
      v68 = v91;
      v86 = *&v67[8 * v91];
      v69 = [v56 isEqualToString:v62];
      v70 = *&v67[8 * v54];
      v53 = v92;
      v71 = *&v66[8 * v92 * v65 + 8 * v68];
      v72 = v70 + 1;
      if (v70 + 1 >= v71 + 1)
      {
        v72 = v71 + 1;
      }

      v73 = v70 <= v71;
      if (v70 <= v71)
      {
        v74 = v54;
      }

      else
      {
        v74 = v68;
      }

      v75 = v86 + (v69 ^ 1u);
      if (v73 || v75 <= v72)
      {
        v63 = v87;
      }

      else
      {
        v63 = v92;
      }

      if (v75 <= v72)
      {
        v64 = v68;
      }

      else
      {
        v64 = v74;
      }

      v55 = v84;
      symbolCopy = v85;
    }

    else
    {
      v63 = 0;
      v64 = v54 - 1;
    }

    if (v63 == v53)
    {
      v77 = symbolCopy;
      goto LABEL_62;
    }

LABEL_61:
    v77 = [v97 objectAtIndexedSubscript:v63];
    v53 = v63;
LABEL_62:
    if (v64 == v54)
    {
      v78 = symbolCopy;
    }

    else
    {
      v78 = [v96 objectAtIndexedSubscript:v64];
    }

    v79 = v78;
    [v55 addObject:v77];
    [v93 addObject:v79];

    v54 = v64;
  }

  while (v53 | v64);
  ReverseArray(v55);
  v80 = v93;
  ReverseArray(v93);
  v81 = [MEMORY[0x1E696AD98] numberWithInteger:*&v90[8 * v89 * v88 + 8 * v17]];
  completionCopy = v83;
  v83[2](v83, v81, v55, v80);

LABEL_67:
LABEL_12:
}

- (void)editAlignmentWithRefText:(id)text hypText:(id)hypText placeholderSymbol:(id)symbol caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense completion:(id)completion
{
  senseCopy = sense;
  insensitiveCopy = insensitive;
  completionCopy = completion;
  symbolCopy = symbol;
  hypTextCopy = hypText;
  textCopy = text;
  v20 = objc_alloc_init(_EARNLTokenizer);
  [(_EARNLTokenizer *)v20 setToLowerCase:0];
  [(_EARNLTokenizer *)v20 setReplacePunctuation:0];
  v18 = [(_EARNLTokenizer *)v20 tokenize:textCopy];

  v19 = [(_EARNLTokenizer *)v20 tokenize:hypTextCopy];

  [(_EAREditDistance *)self editAlignmentWithRefTokens:v18 hypTokens:v19 placeholderSymbol:symbolCopy caseInsensitive:insensitiveCopy removeWordSense:senseCopy completion:completionCopy];
}

@end