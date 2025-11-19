@interface NSAttributedString
@end

@implementation NSAttributedString

void __84__NSAttributedString_HFAdditions__hf_attributedStringWithDefaultAttributes_inRange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v7 = [v15 image];

  if (v7)
  {
    v8 = [v15 image];
    v9 = [v8 imageWithConfiguration:*(a1 + 32)];
    [v15 setImage:v9];

    v10 = [*(a1 + 40) attributesAtIndex:a3 effectiveRange:0];
    v11 = [v10 mutableCopy];

    v12 = *MEMORY[0x277D74118];
    v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277D74118]];
    v14 = [v13 mutableCopy];

    [v14 setLineBreakMode:1];
    [v11 setObject:v14 forKeyedSubscript:v12];
    [*(a1 + 40) setAttributes:v11 range:{a3, a4}];
  }
}

void __69__NSAttributedString_HFAdditions__hf_loadFromHTMLWithString_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCA898];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__NSAttributedString_HFAdditions__hf_loadFromHTMLWithString_options___block_invoke_2;
  v7[3] = &unk_277DFC418;
  v8 = v3;
  v6 = v3;
  [v4 loadFromHTMLWithString:v5 options:MEMORY[0x277CBEC10] completionHandler:v7];
}

void __69__NSAttributedString_HFAdditions__hf_loadFromHTMLWithString_options___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = HFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "[NSAttributedString loadFromHTMLWithString:options:completionHandler:]: %@", &v10, 0xCu);
    }
  }

  [*(a1 + 32) finishWithResult:v6 error:v7];

  v9 = *MEMORY[0x277D85DE8];
}

id __78__NSAttributedString_HFAdditions__hf_safeAttributedStringWithHTML_attributes___block_invoke(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 mutableCopy];
  v4 = [v3 length];
  v5 = [v3 string];
  v6 = [v5 rangeOfString:@"\u2028" options:0 range:{0, v4}];
  v8 = v7;

  while (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 replaceCharactersInRange:v6 withString:{v8, @"\n"}];
    v9 = v6 + 1;
    if (v4 == v9)
    {
      break;
    }

    v10 = [v3 string];
    v6 = [v10 rangeOfString:@"\u2028" options:0 range:{v9, v4 - v9}];
    v8 = v11;
  }

  v12 = objc_alloc(MEMORY[0x277CBEB58]);
  v28[0] = *MEMORY[0x277D74118];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v14 = [v12 initWithArray:v13];

  v15 = [v3 length];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __78__NSAttributedString_HFAdditions__hf_safeAttributedStringWithHTML_attributes___block_invoke_2;
  v25 = &unk_277DFC440;
  v16 = v3;
  v26 = v16;
  v17 = v14;
  v27 = v17;
  [v16 enumerateAttributesInRange:0 options:v15 usingBlock:{0, &v22}];
  v18 = *(a1 + 32);
  if (v18)
  {
    [v16 addAttributes:v18 range:{0, objc_msgSend(v16, "length", v22, v23, v24, v25, v26)}];
  }

  v19 = [MEMORY[0x277D2C900] futureWithResult:{v16, v22, v23, v24, v25}];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __78__NSAttributedString_HFAdditions__hf_safeAttributedStringWithHTML_attributes___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = *MEMORY[0x277D740E8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 isEqualToString:v10])
        {
          v13 = [v6 objectForKeyedSubscript:v12];
          v14 = [v13 host];

          if (!v14)
          {
            [*(a1 + 32) removeAttribute:v12 range:{a3, a4}];
          }
        }

        else if (([*(a1 + 40) containsObject:v12] & 1) == 0)
        {
          [*(a1 + 32) removeAttribute:v12 range:{a3, a4}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end