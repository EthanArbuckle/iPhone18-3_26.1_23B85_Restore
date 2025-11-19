@interface GKScoreParser
+ (id)formattedDifferenceBetweenFirstScore:(id)a3 secondScore:(id)a4;
- (void)parseScore:(id)a3;
@end

@implementation GKScoreParser

- (void)parseScore:(id)a3
{
  v4 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__9;
  v14[4] = __Block_byref_object_dispose__9;
  v15 = 0;
  v5 = objc_opt_new();
  [(GKScoreParser *)self setPrefix:v5];

  v6 = objc_opt_new();
  [(GKScoreParser *)self setSuffix:v6];

  v7 = objc_opt_new();
  [(GKScoreParser *)self setNumericSeparators:v7];

  v8 = [v4 length];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__GKScoreParser_parseScore___block_invoke;
  v9[3] = &unk_2785E0320;
  v11 = v18;
  v12 = v16;
  v13 = v14;
  v9[4] = self;
  v10 = @" ";
  [v4 enumerateSubstringsInRange:0 options:v8 usingBlock:{2, v9}];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

void __28__GKScoreParser_parseScore___block_invoke(uint64_t a1, void *a2)
{
  v39 = a2;
  v4 = [v39 characterAtIndex:0];
  v5 = v4;
  v6 = *(*(a1 + 48) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    if ((v4 - 58) <= 0xFFFFFFF5 && v4 != 45)
    {
      v9 = [*(a1 + 32) prefix];
      goto LABEL_7;
    }

    *(v6 + 24) = 1;
    v11 = *(*(a1 + 56) + 8);
    if (v4 != 45)
    {
      *(v11 + 24) = 0;
      [*(a1 + 32) setPrecision:{objc_msgSend(*(a1 + 32), "precision") + 1}];
      goto LABEL_43;
    }

    goto LABEL_25;
  }

  v7 = [*(a1 + 32) suffix];
  v8 = [v7 length];

  if (v8)
  {
LABEL_3:
    v9 = [*(a1 + 32) suffix];
LABEL_7:
    v10 = v9;
    [v9 appendString:v39];

    goto LABEL_43;
  }

  if ((v5 - 48) >= 0xA)
  {
    v20 = *(*(a1 + 64) + 8);
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v21 = *(v20 + 40);
      if (v21 && ([v21 isEqualToString:*(a1 + 40)] & 1) == 0)
      {
        [*(a1 + 32) setError:1];
      }

      v22 = [*(a1 + 32) suffix];
      [v22 appendString:*(*(*(a1 + 64) + 8) + 40)];

      goto LABEL_3;
    }

    objc_storeStrong((v20 + 40), a2);
    v11 = *(*(a1 + 56) + 8);
LABEL_25:
    *(v11 + 24) = 1;
    goto LABEL_43;
  }

  v12 = *(*(*(a1 + 64) + 8) + 40);
  if (v12)
  {
    if ([v12 isEqualToString:@":"])
    {
      v13 = *(a1 + 32);
      v14 = [v13 colonCount];
      [v13 setColonCount:v14 + 1];
      if (v14 >= 2)
      {
        [*(a1 + 32) setError:1];
      }
    }

    v15 = [*(a1 + 32) numericSeparators];
    if ([v15 count] && (objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "isEqualToString:", *(a1 + 40)) & 1) != 0)
    {
      v16 = [*(a1 + 32) numericSeparators];
      v17 = [*(a1 + 32) numericSeparators];
      v18 = [v16 objectAtIndexedSubscript:{objc_msgSend(v17, "count") - 1}];
      v19 = [v18 isEqualToString:*(a1 + 40)];

      if ((v19 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    v23 = [*(a1 + 32) numericSeparators];
    v24 = [v23 count];

    v25 = [*(a1 + 32) numericSeparators];
    v26 = v25;
    if (v24)
    {
      v27 = [*(a1 + 32) numericSeparators];
      v28 = [v26 objectAtIndexedSubscript:{objc_msgSend(v27, "count") - 1}];
      v29 = [v28 isEqualToString:*(*(*(a1 + 64) + 8) + 40)];

      v26 = [*(a1 + 32) numericSeparators];
      v30 = [v26 count];
      v31 = v30;
      if (v29)
      {
        if (v30 >= 2)
        {
          v32 = *(*(*(a1 + 64) + 8) + 40);

          if (v32)
          {
            [*(a1 + 32) setError:1];
LABEL_32:
            v33 = [*(a1 + 32) suffix];
            [v33 appendString:*(*(*(a1 + 64) + 8) + 40)];

LABEL_33:
            v34 = [*(a1 + 32) suffix];
            [v34 appendString:v39];

LABEL_41:
            v36 = *(*(a1 + 64) + 8);
            v37 = *(v36 + 40);
            *(v36 + 40) = 0;

            goto LABEL_42;
          }

LABEL_40:
          [*(a1 + 32) setPrecision:1];
          goto LABEL_41;
        }

LABEL_39:

        goto LABEL_40;
      }

      if (v31 != 1)
      {
        v38 = *(*(*(a1 + 64) + 8) + 40);
        if (v38 && ([v38 isEqualToString:*(a1 + 40)] & 1) == 0)
        {
          [*(a1 + 32) setError:1];
        }

        goto LABEL_33;
      }

      v25 = [*(a1 + 32) numericSeparators];
      v26 = v25;
      v35 = *(*(*(a1 + 64) + 8) + 40);
    }

    else
    {
      v35 = *(*(*(a1 + 64) + 8) + 40);
    }

    [v25 addObject:v35];
    goto LABEL_39;
  }

  [*(a1 + 32) setPrecision:{objc_msgSend(*(a1 + 32), "precision") + 1}];
LABEL_42:
  *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_43:
}

+ (id)formattedDifferenceBetweenFirstScore:(id)a3 secondScore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [v5 formattedScore];
  [v7 parseScore:v8];

  v9 = objc_opt_new();
  v10 = [v6 formattedScore];
  [v9 parseScore:v10];

  if ([v7 error] & 1) != 0 || (objc_msgSend(v9, "error"))
  {
    v11 = 0;
    goto LABEL_63;
  }

  v12 = [v5 score];
  v13 = [v6 score];
  if (v12 - v13 >= 0)
  {
    v14 = v12 - v13;
  }

  else
  {
    v14 = v13 - v12;
  }

  if (v12 != v13)
  {
    v16 = [v7 numericSeparators];
    v17 = [v16 count];
    v18 = [v9 numericSeparators];
    if (v17 >= [v18 count])
    {
      v19 = v7;
    }

    else
    {
      v19 = v9;
    }

    v20 = [v19 numericSeparators];

    v21 = [v7 colonCount];
    if (v21 >= [v9 colonCount])
    {
      v22 = v7;
    }

    else
    {
      v22 = v9;
    }

    v23 = [v22 colonCount];
    v24 = [v7 precision];
    if (v24 >= [v9 precision])
    {
      v25 = v7;
    }

    else
    {
      v25 = v9;
    }

    v26 = [v25 precision];
    if (v23 >= 1)
    {
      if ([v20 count] < 2)
      {
        if (v23 == 1)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%ld:%02ld", v14 / 0x3C, v14 % 0x3C, v52];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%ld:%02ld:%02ld", v14 / 0xE10, (v14 % 0xE10) / 60, (v14 % 0xE10) % 60];
        }
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%ld:%02ld:%05.2f", v14 / 0x57E40, ((v14 % 0x57E40) / 6000.0), ((v14 % 0x57E40 - 6000 * ((v14 % 0x57E40) / 6000.0)) / 100.0)];
      }
      v15 = ;
LABEL_43:
      v39 = [v5 score];
      if (v39 >= 0)
      {
        v40 = v39;
      }

      else
      {
        v40 = -v39;
      }

      v41 = [v6 score];
      if (v41 >= 0)
      {
        v42 = v41;
      }

      else
      {
        v42 = -v41;
      }

      if (v40 >= v42)
      {
        v43 = v7;
      }

      else
      {
        v43 = v9;
      }

      v44 = [v43 prefix];
      v45 = [v5 score];
      if (v45 >= 0)
      {
        v46 = v45;
      }

      else
      {
        v46 = -v45;
      }

      v47 = [v6 score];
      if (v47 >= 0)
      {
        v48 = v47;
      }

      else
      {
        v48 = -v47;
      }

      if (v46 >= v48)
      {
        v49 = v7;
      }

      else
      {
        v49 = v9;
      }

      v50 = [v49 suffix];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v44, v15, v50];

      goto LABEL_62;
    }

    v27 = v26;
    v28 = [v7 numericSeparators];
    if ([v28 count])
    {
      v29 = [v9 numericSeparators];
      v30 = [v29 count];

      if (v30)
      {
        v31 = [v20 objectAtIndexedSubscript:{objc_msgSend(v20, "count") - 1}];
        v32 = [v20 count];
        if (v27 == 3 && v32 == 1)
        {
          v34 = 0;
        }

        else
        {
          v34 = v27;
        }

        goto LABEL_35;
      }
    }

    else
    {
    }

    v34 = 0;
    v31 = 0;
LABEL_35:
    v35 = objc_opt_new();
    if ([v20 count])
    {
      v36 = [v20 objectAtIndexedSubscript:0];
      [v35 setGroupingSeparator:v36];
    }

    else
    {
      [v35 setGroupingSeparator:{@", "}];
    }

    [v35 setGroupingSize:3];
    [v35 setUsesGroupingSeparator:1];
    [v35 setDecimalSeparator:v31];
    [v35 setNumberStyle:1];
    [v35 setMinimumFractionDigits:v34];
    [v35 setMaximumFractionDigits:v34];
    if (v31 && v34 >= 1)
    {
      v37 = [MEMORY[0x277CCABB0] numberWithDouble:v14 / __exp10(v34)];
    }

    else
    {
      v37 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
    }

    v38 = v37;
    v15 = [v35 stringFromNumber:v37];

    goto LABEL_43;
  }

  v11 = 0;
  v15 = &stru_283AFD1E0;
LABEL_62:

LABEL_63:

  return v11;
}

@end