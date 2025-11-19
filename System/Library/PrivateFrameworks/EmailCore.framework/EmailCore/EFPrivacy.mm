@interface EFPrivacy
@end

@implementation EFPrivacy

void __71__EFPrivacy_EmailCore__ec_redactedQueryStringForSearchableQueryString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v20 = v3;
  v5 = [v3 rangeAtIndex:1];
  v7 = [v4 substringWithRange:{v5, v6}];
  v8 = *(a1 + 32);
  v9 = [v20 rangeAtIndex:2];
  v11 = [v8 substringWithRange:{v9, v10}];
  v12 = [v11 emailAddressValue];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 ef_publicDescription];
  }

  else
  {
    v15 = MEMORY[0x277D07198];
    v16 = [v11 stringValue];
    v14 = [v15 fullyOrPartiallyRedactedStringForString:v16];
  }

  v17 = *(a1 + 40);
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = '%@'", v7, v11];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = '%@'", v7, v14];
  [v17 replaceOccurrencesOfString:v18 withString:v19 options:1024 range:{0, objc_msgSend(*(a1 + 40), "length")}];
}

@end