@interface UILabel(Linguistic)
- (uint64_t)numberOfWordsInText;
@end

@implementation UILabel(Linguistic)

- (uint64_t)numberOfWordsInText
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = objc_getAssociatedObject(a1, a2);
  if (v4 && ([a1 text], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "text"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    v8 = [v4 number];
  }

  else
  {
    v9 = *MEMORY[0x277CCA408];
    v10 = objc_alloc(MEMORY[0x277CCAAE8]);
    v24[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v12 = [v10 initWithTagSchemes:v11 options:30];

    v13 = [a1 text];
    [v12 setString:v13];

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v14 = [a1 text];
    v15 = [v14 length];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__UILabel_Linguistic__numberOfWordsInText__block_invoke;
    v19[3] = &unk_2787847F8;
    v19[4] = &v20;
    [v12 enumerateTagsInRange:0 scheme:v15 options:v9 usingBlock:{30, v19}];

    v16 = objc_opt_new();
    v17 = [a1 text];
    [v16 setText:v17];

    [v16 setNumber:v21[3]];
    objc_setAssociatedObject(a1, a2, v16, 1);
    v8 = v21[3];
    _Block_object_dispose(&v20, 8);

    v4 = v16;
  }

  return v8;
}

@end