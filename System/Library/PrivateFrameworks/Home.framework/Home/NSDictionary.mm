@interface NSDictionary
@end

@implementation NSDictionary

id __49__NSDictionary_HFDebugging__hf_prettyDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKey:v3];
  v5 = MEMORY[0x277CCACA8];
  v6 = [v3 hf_prettyDescription];

  v7 = [v4 hf_prettyDescription];
  v8 = [v5 stringWithFormat:@"%@ -> %@", v6, v7];

  return v8;
}

id __58__NSDictionary_HFDebugging__hf_prettyExpensiveDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKey:v3];
  v5 = MEMORY[0x277CCACA8];
  v6 = [v3 hf_prettyExpensiveDescription];

  v7 = [v4 hf_prettyExpensiveDescription];
  v8 = [v5 stringWithFormat:@"%@ -> %@", v6, v7];

  return v8;
}

id __53__NSDictionary_HFDebugging__hf_prettyFullDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKey:v3];
  v5 = MEMORY[0x277CCACA8];
  v6 = [v3 hf_prettyFullDescription];

  v7 = [v4 hf_prettyFullDescription];
  v8 = [v5 stringWithFormat:@"%@ -> %@", v6, v7];

  return v8;
}

@end