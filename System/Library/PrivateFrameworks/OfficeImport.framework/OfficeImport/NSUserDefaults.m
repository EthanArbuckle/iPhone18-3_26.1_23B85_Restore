@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __67__NSUserDefaults_NSUserDefaults_TSUAdditions__tsu_registerDefaults__block_invoke()
{
  v0 = SFUBundle();
  v5 = [v0 URLForResource:@"Defaults" withExtension:@"plist"];

  if (v5)
  {
    v1 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:?];
    v2 = v1;
    if (v1 && [v1 count])
    {
      v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v3 registerDefaults:v2];
    }
  }

  return MEMORY[0x2821F9730]();
}

@end