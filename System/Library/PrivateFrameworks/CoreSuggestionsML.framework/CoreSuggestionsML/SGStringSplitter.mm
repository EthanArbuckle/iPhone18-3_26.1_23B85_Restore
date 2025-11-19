@interface SGStringSplitter
+ (id)splitString:(id)a3 withCharacterSet:(id)a4;
@end

@implementation SGStringSplitter

+ (id)splitString:(id)a3 withCharacterSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__237;
  v30 = __Block_byref_object_dispose__238;
  v31 = objc_opt_new();
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13 = MEMORY[0x277D85DD0];
  v7 = v6;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  _PASIterateLongChars();
  if (*(v21 + 24) == 1)
  {
    v9 = [v8 length];
    v10 = [v8 substringWithRange:{v17[3], v9 - v17[3]}];
    [v27[5] addObject:v10];
  }

  v11 = v27[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);

  return v11;
}

void __49__SGStringSplitter_splitString_withCharacterSet___block_invoke(uint64_t a1, UTF32Char a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 48) + 8) + 24) = CFCharacterSetIsLongCharacterMember(*(a1 + 32), a2) != 0;
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 56) + 8);
  if (*(v7 + 24) & 1) != 0 || *(*(v6 + 8) + 24) == 1 && (*(*(*(a1 + 64) + 8) + 24) = a4, v6 = *(a1 + 48), v7 = *(*(a1 + 56) + 8), (*(v7 + 24)))
  {
    if ((*(*(v6 + 8) + 24) & 1) == 0)
    {
      v8 = *(*(*(a1 + 64) + 8) + 24);
      v9 = [*(a1 + 40) substringWithRange:{v8, a4 - v8}];
      [*(*(*(a1 + 72) + 8) + 40) addObject:v9];

      v6 = *(a1 + 48);
      v7 = *(*(a1 + 56) + 8);
    }
  }

  *(v7 + 24) = *(*(v6 + 8) + 24);
}

@end