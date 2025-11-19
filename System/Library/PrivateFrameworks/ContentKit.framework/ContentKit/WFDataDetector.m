@interface WFDataDetector
+ (BOOL)hasResultForString:(id)a3 ofTypes:(unint64_t)a4;
+ (id)resultsForString:(id)a3 ofTypes:(unint64_t)a4 error:(id *)a5;
@end

@implementation WFDataDetector

+ (BOOL)hasResultForString:(id)a3 ofTypes:(unint64_t)a4
{
  v5 = a3;
  v10 = 0;
  if (v5)
  {
    if (a4 && ([MEMORY[0x277CCA948] dataDetectorWithTypes:a4 error:0], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstMatchInString:options:range:", v5, 0, 0, objc_msgSend(v5, "length")), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7) || (a4 & 0x200000000) != 0 && (WFNumberFromString(v5), v8 = objc_claimAutoreleasedReturnValue(), v8, v8) || (a4 & 0x400000000) != 0 && (WFDictionariesFromString(v5, 0), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = 1;
    }
  }

  return v10;
}

+ (id)resultsForString:(id)a3 ofTypes:(unint64_t)a4 error:(id *)a5
{
  v9 = a3;
  if (!v9)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"WFDataDetector.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"string"}];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_15:
    v12 = MEMORY[0x277CBEBF8];
    if ((a4 & 0x200000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v17 = WFNumberFromString(v9);
    if ((a4 & 0x400000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_3:
  v10 = [MEMORY[0x277CCA948] dataDetectorWithTypes:a4 error:a5];
  v11 = [v10 matchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
  v12 = v11;
  if ((a4 & 0x20) != 0 && ![v11 count] && objc_msgSend(v9, "rangeOfString:", @":") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    if (v13)
    {
      v14 = [MEMORY[0x277CCACC0] linkCheckingResultWithRange:0 URL:{objc_msgSend(v9, "length"), v13}];
      v15 = [v12 arrayByAddingObject:v14];

      v12 = v15;
    }
  }

  if ((~a4 & 0x30) == 0)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49__WFDataDetector_resultsForString_ofTypes_error___block_invoke;
    v24[3] = &unk_2783491B8;
    v25 = v9;
    v16 = [v12 if_map:v24];

    v12 = v16;
  }

  if ((a4 & 0x200000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v17 = 0;
  if ((a4 & 0x400000000) != 0)
  {
LABEL_13:
    v23 = 0;
    v18 = WFDictionariesFromString(v9, &v23);
    v19 = v23;
    goto LABEL_18;
  }

LABEL_17:
  v19 = 0;
  v18 = 0;
LABEL_18:
  v21 = [[WFDataDetectorResults alloc] initWithTextCheckingResults:v12 number:v17 dictionaries:v18 dictionaryType:v19];

  return v21;
}

id __49__WFDataDetector_resultsForString_ofTypes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 resultType] != 32)
  {
    goto LABEL_7;
  }

  v4 = [v3 URL];
  v5 = [v4 host];
  if (([v5 isEqualToString:@"maps.apple.com"] & 1) == 0)
  {

LABEL_7:
    v12 = v3;
    goto LABEL_8;
  }

  v6 = [*(a1 + 32) containsString:@"maps.apple.com"];

  if (v6)
  {
    goto LABEL_7;
  }

  v7 = [MEMORY[0x277CCA948] dataDetectorWithTypes:16 error:0];
  v8 = *(a1 + 32);
  v9 = [v3 range];
  v11 = [v7 matchesInString:v8 options:0 range:{v9, v10}];
  v12 = [v11 firstObject];

  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v12;
}

@end