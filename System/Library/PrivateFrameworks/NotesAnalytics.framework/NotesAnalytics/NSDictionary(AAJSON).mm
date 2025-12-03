@interface NSDictionary(AAJSON)
- (id)aa_jsonData;
- (void)aa_jsonData;
@end

@implementation NSDictionary(AAJSON)

- (id)aa_jsonData
{
  v6 = 0;
  v1 = [MEMORY[0x277CCAAA0] dataWithJSONObject:self options:8 error:&v6];
  v2 = v6;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(NSDictionary(AAJSON) *)v2 aa_jsonData];
    }
  }

  return v1;
}

- (void)aa_jsonData
{
  v7 = *MEMORY[0x277D85DE8];
  localizedDescription = [self localizedDescription];
  v5 = 138412290;
  v6 = localizedDescription;
  _os_log_error_impl(&dword_25C6BF000, a2, OS_LOG_TYPE_ERROR, "error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end