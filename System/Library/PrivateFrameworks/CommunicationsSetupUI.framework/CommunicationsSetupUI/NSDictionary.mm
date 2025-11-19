@interface NSDictionary
@end

@implementation NSDictionary

id __68__NSDictionary_FTRegAppleIDSetupUtilities____ftreg_candidateAliases__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"status"];
  v4 = [v3 intValue];

  v5 = [v2 objectForKey:@"uri"];

  if (v4 == 5051)
  {
    v6 = [v5 _stripFZIDPrefix];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end