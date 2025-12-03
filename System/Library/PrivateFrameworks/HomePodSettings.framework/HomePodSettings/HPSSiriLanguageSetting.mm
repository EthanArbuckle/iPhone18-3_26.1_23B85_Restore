@interface HPSSiriLanguageSetting
- (id)languages;
@end

@implementation HPSSiriLanguageSetting

- (id)languages
{
  v6[1] = *MEMORY[0x277D85DE8];
  value = [(HPSSetting *)self value];
  v6[0] = value;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end