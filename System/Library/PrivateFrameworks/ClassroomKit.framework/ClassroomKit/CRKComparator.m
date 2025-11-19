@interface CRKComparator
+ (id)compare;
+ (id)compareWithCriteria:(id)a3;
- (CRKComparator)init;
- (id)compare;
- (id)compareWithCriteria:(id)a3;
- (id)run;
- (int64_t)runComparison;
@end

@implementation CRKComparator

+ (id)compareWithCriteria:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 compareWithCriteria:v3];

  return v5;
}

+ (id)compare
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__CRKComparator_compare__block_invoke;
  v4[3] = &__block_descriptor_40_e29___CRKComparator_16__0___q___8l;
  v4[4] = a1;
  v2 = MEMORY[0x245D3AAD0](v4, a2);

  return v2;
}

uint64_t __24__CRKComparator_compare__block_invoke(uint64_t a1, uint64_t a2)
{
  return [*(a1 + 32) compareWithCriteria:a2];
}

{
  return [*(a1 + 32) compareWithCriteria:a2];
}

- (int64_t)runComparison
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CRKComparator *)self allCriteria];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = (*(*(*(&v10 + 1) + 8 * v6) + 16))();
        if (v7)
        {
          v8 = v7;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)run
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __20__CRKComparator_run__block_invoke;
  v4[3] = &unk_278DC23A8;
  v4[4] = self;
  v2 = MEMORY[0x245D3AAD0](v4, a2);

  return v2;
}

- (id)compareWithCriteria:(id)a3
{
  v4 = a3;
  v5 = [(CRKComparator *)self allCriteria];
  v6 = MEMORY[0x245D3AAD0](v4);

  [v5 addObject:v6];
  return self;
}

- (id)compare
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__CRKComparator_compare__block_invoke;
  v4[3] = &unk_278DC23D0;
  v4[4] = self;
  v2 = MEMORY[0x245D3AAD0](v4, a2);

  return v2;
}

- (CRKComparator)init
{
  v6.receiver = self;
  v6.super_class = CRKComparator;
  v2 = [(CRKComparator *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    allCriteria = v2->_allCriteria;
    v2->_allCriteria = v3;
  }

  return v2;
}

@end