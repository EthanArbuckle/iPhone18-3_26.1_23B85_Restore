@interface NSMapTable(HFDebugging)
- (id)hf_prettyDescription;
- (id)hf_prettyExpensiveDescription;
- (id)hf_prettyFullDescription;
@end

@implementation NSMapTable(HFDebugging)

- (id)hf_prettyDescription
{
  v2 = [a1 keyEnumerator];
  v3 = [v2 allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__NSMapTable_HFDebugging__hf_prettyDescription__block_invoke;
  v7[3] = &unk_277DF5DC8;
  v7[4] = a1;
  v4 = [v3 na_map:v7];
  v5 = [v4 description];

  return v5;
}

- (id)hf_prettyExpensiveDescription
{
  v2 = [a1 keyEnumerator];
  v3 = [v2 allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__NSMapTable_HFDebugging__hf_prettyExpensiveDescription__block_invoke;
  v7[3] = &unk_277DF5DC8;
  v7[4] = a1;
  v4 = [v3 na_map:v7];
  v5 = [v4 description];

  return v5;
}

- (id)hf_prettyFullDescription
{
  v2 = [a1 keyEnumerator];
  v3 = [v2 allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__NSMapTable_HFDebugging__hf_prettyFullDescription__block_invoke;
  v7[3] = &unk_277DF5DC8;
  v7[4] = a1;
  v4 = [v3 na_map:v7];
  v5 = [v4 description];

  return v5;
}

@end