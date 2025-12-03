@interface NSDictionary(HFDebugging)
- (id)hf_prettyDescription;
- (id)hf_prettyExpensiveDescription;
- (id)hf_prettyFullDescription;
@end

@implementation NSDictionary(HFDebugging)

- (id)hf_prettyDescription
{
  allKeys = [self allKeys];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__NSDictionary_HFDebugging__hf_prettyDescription__block_invoke;
  v6[3] = &unk_277DF5DC8;
  v6[4] = self;
  v3 = [allKeys na_map:v6];
  v4 = [v3 description];

  return v4;
}

- (id)hf_prettyExpensiveDescription
{
  allKeys = [self allKeys];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__NSDictionary_HFDebugging__hf_prettyExpensiveDescription__block_invoke;
  v6[3] = &unk_277DF5DC8;
  v6[4] = self;
  v3 = [allKeys na_map:v6];
  v4 = [v3 description];

  return v4;
}

- (id)hf_prettyFullDescription
{
  allKeys = [self allKeys];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__NSDictionary_HFDebugging__hf_prettyFullDescription__block_invoke;
  v6[3] = &unk_277DF5DC8;
  v6[4] = self;
  v3 = [allKeys na_map:v6];
  v4 = [v3 description];

  return v4;
}

@end