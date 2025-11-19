@interface NSMutableData
@end

@implementation NSMutableData

void __47__NSMutableData_FastEncoding__hmf_appendArray___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v2 hmf_appendObject:v3];
}

uint64_t __45__NSMutableData_FastEncoding__hmf_appendSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 hash];
  if (v6 <= [v5 hash])
  {
    v8 = [v4 hash];
    if (v8 >= [v5 hash])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void __45__NSMutableData_FastEncoding__hmf_appendSet___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v2 hmf_appendObject:v3];
}

void __52__NSMutableData_FastEncoding__hmf_appendDictionary___block_invoke(id *a1, uint64_t a2)
{
  v5 = [a1[4] objectAtIndexedSubscript:a2];
  [a1[5] hmf_appendObject:v5];
  v3 = a1[5];
  v4 = [a1[6] objectForKeyedSubscript:v5];
  [v3 hmf_appendObject:v4];
}

@end