@interface NSDictionary(HFDebugging)
- (id)hf_prettyDescription;
- (id)hf_prettyExpensiveDescription;
- (id)hf_prettyFullDescription;
@end

@implementation NSDictionary(HFDebugging)

- (id)hf_prettyDescription
{
  v2 = [a1 allKeys];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__NSDictionary_HFDebugging__hf_prettyDescription__block_invoke;
  v6[3] = &unk_277DF5DC8;
  v6[4] = a1;
  v3 = [v2 na_map:v6];
  v4 = [v3 description];

  return v4;
}

- (id)hf_prettyExpensiveDescription
{
  v2 = [a1 allKeys];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__NSDictionary_HFDebugging__hf_prettyExpensiveDescription__block_invoke;
  v6[3] = &unk_277DF5DC8;
  v6[4] = a1;
  v3 = [v2 na_map:v6];
  v4 = [v3 description];

  return v4;
}

- (id)hf_prettyFullDescription
{
  v2 = [a1 allKeys];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__NSDictionary_HFDebugging__hf_prettyFullDescription__block_invoke;
  v6[3] = &unk_277DF5DC8;
  v6[4] = a1;
  v3 = [v2 na_map:v6];
  v4 = [v3 description];

  return v4;
}

@end