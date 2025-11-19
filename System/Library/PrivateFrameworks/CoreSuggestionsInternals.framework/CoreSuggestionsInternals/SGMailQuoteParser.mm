@interface SGMailQuoteParser
+ (id)_tofuRegions:(id)a3 utf8:(const char *)a4 isAOSPMail:(BOOL)a5;
+ (id)_xWrote:(id)a3 utf8:(const char *)a4;
@end

@implementation SGMailQuoteParser

+ (id)_xWrote:(id)a3 utf8:(const char *)a4
{
  v7 = a3;
  v8 = objc_opt_new();
  v4 = v7;
  _PASMemoryHeavyOperation();
  v5 = v8;

  return v8;
}

void __34__SGMailQuoteParser__xWrote_utf8___block_invoke(uint64_t a1)
{
  v2 = +[SGMailPatterns replyAttributionPattern];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SGMailQuoteParser__xWrote_utf8___block_invoke_2;
  v5[3] = &unk_27894FA58;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v2 enumerateMatchesInUtf8:v4 fromString:v3 ngroups:0 block:v5];
}

uint64_t __34__SGMailQuoteParser__xWrote_utf8___block_invoke_2(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) length];
  if (v2 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (v2 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  [v3 addIndexesInRange:{v6, v5 - v6}];
  return 0;
}

+ (id)_tofuRegions:(id)a3 utf8:(const char *)a4 isAOSPMail:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0x7FFFFFFFFFFFFFFFLL;
  v45 = MEMORY[0x277D85DD0];
  v46 = 3221225472;
  v47 = __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke;
  v48 = &unk_2789561D0;
  v49 = v6;
  v50 = &v51;
  _PASMemoryHeavyOperation();
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__24205;
  v43 = __Block_byref_object_dispose__24206;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__24205;
  v37 = __Block_byref_object_dispose__24206;
  v38 = 0;
  v28[4] = MEMORY[0x277D85DD0];
  v28[5] = 3221225472;
  v28[6] = __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_22;
  v28[7] = &unk_27894F9E0;
  v7 = v49;
  v29 = v7;
  v30 = &v51;
  v31 = &v39;
  v32 = &v33;
  _PASMemoryHeavyOperation();
  v8 = v40[5];
  if (v8 && v34[5])
  {
    v9 = [v8 unsignedIntegerValue];
    v10 = [v34[5] unsignedIntegerValue];
    v11 = v9 >= v10 ? v10 : v9;
    if (v11 < v52[3])
    {
      v52[3] = v11;
    }
  }

  if (v5)
  {
    v12 = patterns_24207();
    v13 = [v12 regex2ForKey:@"SXReply"];

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = 0;
    v26 = v13;
    v27 = v7;
    _PASEnumerateSimpleLinesInString();

    _Block_object_dispose(v28, 8);
  }

  v14 = [v7 length];
  v15 = [v7 length];
  v16 = 4000;
  if (v15 < 0xFA0)
  {
    v16 = v15;
  }

  v17 = v14 - v16;
  v18 = v52[3];
  if (v17 < v18)
  {
    v25 = v7;
    _PASMemoryHeavyOperation();

    v18 = v52[3];
  }

  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = objc_opt_new();
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x277CCAA78]);
    v21 = v52[3];
    v22 = [v7 length];
    v19 = [v20 initWithIndexesInRange:{v21, v22 - v52[3]}];
  }

  v23 = v19;

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v51, 8);

  return v23;
}

void __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke(uint64_t a1)
{
  v2 = patterns_24207();
  v3 = [v2 regex2ForKey:@"OriginalMessage/F"];

  v6 = *(a1 + 40);
  v5 = *(a1 + 32);
  v4 = v3;
  _PASEnumerateSimpleLinesInString();
}

void __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_22(uint64_t a1)
{
  v2 = patterns_24207();
  v3 = [v2 regex2ForKey:@"BodyHeaders/F"];

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_2_23;
  v6[3] = &unk_27894F9B8;
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v5 = v3;
  SGEnumerateBodyHeaderCandidates(v7, v6);
}

BOOL __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2 + a3 < *(*(*(a1 + 48) + 8) + 24);
  if (a3 <= 1)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    return v4;
  }

  v5 = *(*(a1 + 56) + 8);
  if (a3 > 0x65 || a3 - 1 < 0xA || *(v5 + 24) < 2uLL)
  {
LABEL_10:
    *(v5 + 24) = 0;
    return v4;
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) substringWithRange:a2];
  v9 = [v7 matchesString:v8];

  if (!v9)
  {
    v5 = *(*(a1 + 56) + 8);
    goto LABEL_10;
  }

  v10 = *(*(a1 + 48) + 8);
  v4 = 0;
  if (a2 < *(v10 + 24))
  {
    *(v10 + 24) = a2;
  }

  return v4;
}

void __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) substringFromIndex:*(a1 + 48)];
  v3 = patterns_24207();
  v4 = [v3 regex2ForKey:@"CorporateFooter"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_6;
  v6[3] = &unk_27894FA30;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v6[5] = v5;
  [v4 enumerateMatchesInString:v2 ngroups:0 block:v6];
}

uint64_t __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *a2 + *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  if (v2 < *(v3 + 24))
  {
    *(v3 + 24) = v2;
  }

  return 0;
}

uint64_t __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_2_23(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) substringWithRange:{a2, a3}];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v8 = *(a1 + 40);
  v16 = (a2 + a3) < *(*(*(a1 + 48) + 8) + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_3_24;
  v12[3] = &unk_27894F990;
  v12[7] = a2;
  v12[8] = a3;
  v9 = *(a1 + 64);
  v12[4] = *(a1 + 56);
  v12[5] = &v13;
  v12[6] = v9;
  [v8 enumerateMatchesInString:v7 ngroups:0 block:v12];
  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  objc_autoreleasePoolPop(v6);
  return v10;
}

uint64_t __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_3_24(void *a1, void *a2)
{
  v3 = a1 + 4;
  if (!*(*(a1[4] + 8) + 40))
  {
    v4 = 1;
    goto LABEL_5;
  }

  v3 = a1 + 6;
  if (!*(*(a1[6] + 8) + 40))
  {
    v4 = 0;
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7] + *a2];
    v6 = *(*v3 + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *(*(a1[5] + 8) + 24) = v4;
  }

  return 0;
}

uint64_t __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = (a2 + a3) < *(*(*(a1 + 48) + 8) + 24);
  v6 = [*(a1 + 32) substringWithRange:{a2, a3}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_3;
  v10[3] = &unk_27894F940;
  v10[6] = a2;
  v10[7] = a3;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 48);
  v10[5] = &v11;
  [v7 enumerateMatchesInString:v6 ngroups:0 block:v10];
  v8 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __50__SGMailQuoteParser__tofuRegions_utf8_isAOSPMail___block_invoke_3(void *a1, void *a2)
{
  v2 = *a2 + a1[6];
  v3 = *(a1[4] + 8);
  if (v2 < *(v3 + 24))
  {
    *(v3 + 24) = v2;
  }

  *(*(a1[5] + 8) + 24) = 0;
  return 0;
}

@end