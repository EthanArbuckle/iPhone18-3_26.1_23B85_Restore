@interface HKMedicationsTextNDCParser
- (HKMedicationsTextNDCParser)init;
- (id)parsedNDCCodeFromString:(id)a3;
@end

@implementation HKMedicationsTextNDCParser

- (HKMedicationsTextNDCParser)init
{
  v21[3] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = HKMedicationsTextNDCParser;
  v2 = [(HKMedicationsTextNDCParser *)&v20 init];
  if (v2)
  {
    v19 = 0;
    v3 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"\\b([0-9]{4})[\\ -]([0-9]{4})[\\ -]([0-9]{2})\\b" options:1 error:&v19];
    v4 = v19;
    v21[0] = v3;
    v18 = v4;
    v5 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"\\b([0-9]{5})[\\ -]([0-9]{3})[\\ -]([0-9]{2})\\b" options:1 error:&v18];
    v6 = v18;

    v21[1] = v5;
    v17 = v6;
    v7 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"\\b([0-9]{5})[\\ -]([0-9]{4})[\\ -]([0-9]{1})\\b" options:1 error:&v17];
    v8 = v17;

    v21[2] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    NDC10RegularExpressions = v2->_NDC10RegularExpressions;
    v2->_NDC10RegularExpressions = v9;

    v16 = v8;
    v11 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"\\b([0-9]{5})[\\ -]([0-9]{4})[\\ -]([0-9]{2})\\b" options:1 error:&v16];
    v12 = v16;

    NDC11RegularExpression = v2->_NDC11RegularExpression;
    v2->_NDC11RegularExpression = v11;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)parsedNDCCodeFromString:(id)a3
{
  v4 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  v5 = [(HKMedicationsTextNDCParser *)self NDC11RegularExpression];
  v6 = [v4 length];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __54__HKMedicationsTextNDCParser_parsedNDCCodeFromString___block_invoke;
  v32[3] = &unk_2796D2868;
  v34 = &v35;
  v7 = v4;
  v33 = v7;
  [v5 enumerateMatchesInString:v7 options:0 range:0 usingBlock:{v6, v32}];

  v8 = v36[5];
  if (v8)
  {
    v9 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:&stru_2863C3358];
    v10 = v36[5];
    v36[5] = v9;

    v11 = [v36[5] stringByReplacingOccurrencesOfString:@" " withString:&stru_2863C3358];
    v12 = v36[5];
    v36[5] = v11;

    v13 = v36[5];
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v15 = [(HKMedicationsTextNDCParser *)self NDC10RegularExpressions];
      v16 = [v15 count];

      if (i >= v16)
      {
        v13 = 0;
        goto LABEL_11;
      }

      v17 = [(HKMedicationsTextNDCParser *)self NDC10RegularExpressions];
      v18 = [v17 objectAtIndexedSubscript:i];

      v19 = [v7 length];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __54__HKMedicationsTextNDCParser_parsedNDCCodeFromString___block_invoke_2;
      v29[3] = &unk_2796D2868;
      v31 = &v35;
      v30 = v7;
      [v18 enumerateMatchesInString:v30 options:0 range:0 usingBlock:{v19, v29}];
      v20 = v36[5];
      if (v20)
      {
        break;
      }
    }

    if (i < 3)
    {
      v21 = qword_2518B0CC8[i];
      v22 = [v20 mutableCopy];
      [v22 insertString:@"0" atIndex:v21];
      v23 = v36[5];
      v36[5] = v22;

      v20 = v36[5];
    }

    v24 = [v20 stringByReplacingOccurrencesOfString:@"-" withString:&stru_2863C3358];
    v25 = v36[5];
    v36[5] = v24;

    v26 = [v36[5] stringByReplacingOccurrencesOfString:@" " withString:&stru_2863C3358];
    v27 = v36[5];
    v36[5] = v26;

    v13 = v36[5];
  }

LABEL_11:

  _Block_object_dispose(&v35, 8);

  return v13;
}

void __54__HKMedicationsTextNDCParser_parsedNDCCodeFromString___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 range];
  v9 = [v6 substringWithRange:{v7, v8}];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a4 = 1;
}

void __54__HKMedicationsTextNDCParser_parsedNDCCodeFromString___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 range];
  v9 = [v6 substringWithRange:{v7, v8}];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a4 = 1;
}

@end