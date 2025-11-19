@interface UIDebugLogReportFormatter
@end

@implementation UIDebugLogReportFormatter

void __52___UIDebugLogReportFormatter__componentsFromReport___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (![v5 type])
  {
    v6 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, a3}];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = [v5 indentLevel];
    v7 = [*(a1 + 32) _statements];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52___UIDebugLogReportFormatter__componentsFromReport___block_invoke_2;
    v14[3] = &unk_279014908;
    v14[4] = v15;
    v14[5] = &v16;
    [v7 enumerateObjectsAtIndexes:v6 options:2 usingBlock:v14];

    if (v17[3])
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%*s", v17[3], " "];
    }

    else
    {
      v8 = &stru_285EB2008;
    }

    v9 = MEMORY[0x277CCAB68];
    v10 = [v5 prefix];
    v11 = [v5 text];
    v12 = [v9 stringWithFormat:@"%@%@%@", v8, v10, v11];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", v8];
    [v12 replaceOccurrencesOfString:@"\n" withString:v13 options:0 range:{0, objc_msgSend(v12, "length")}];

    [*(a1 + 40) appendString:v12];
    _Block_object_dispose(v15, 8);
    _Block_object_dispose(&v16, 8);
  }

  if (*(a1 + 48) - 1 > a3)
  {
    [*(a1 + 40) appendString:@"\n"];
  }
}

void __52___UIDebugLogReportFormatter__componentsFromReport___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v6 = v3;
  if (v4 > [v3 indentLevel])
  {
    *(*(*(a1 + 32) + 8) + 24) = [v6 indentLevel];
    v5 = [v6 prefix];
    *(*(*(a1 + 40) + 8) + 24) += [v5 length];
  }
}

@end