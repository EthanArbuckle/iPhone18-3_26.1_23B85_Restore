@interface HKMedicationsTokenizer
- (HKMedicationsTokenizer)init;
- (id)wordsFromTranscript:(id)a3;
@end

@implementation HKMedicationsTokenizer

- (HKMedicationsTokenizer)init
{
  v6.receiver = self;
  v6.super_class = HKMedicationsTokenizer;
  v2 = [(HKMedicationsTokenizer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
    [(HKMedicationsTokenizer *)v3 setTokenizer:v4];
  }

  return v3;
}

- (id)wordsFromTranscript:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HKMedicationsTokenizer *)self tokenizer];
  [v5 setString:v4];

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = [(HKMedicationsTokenizer *)self tokenizer];
  v8 = [v4 length];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__HKMedicationsTokenizer_wordsFromTranscript___block_invoke;
  v13[3] = &unk_2796D2A80;
  v14 = v4;
  v9 = v6;
  v15 = v9;
  v10 = v4;
  [v7 enumerateTokensInRange:0 usingBlock:{v8, v13}];

  v11 = v9;
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

void __46__HKMedicationsTokenizer_wordsFromTranscript___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    v8 = [*(a1 + 32) substringWithRange:{a2, a3}];
    v6 = *(a1 + 40);
    v7 = [v8 lowercaseString];
    [v6 addObject:v7];
  }
}

@end