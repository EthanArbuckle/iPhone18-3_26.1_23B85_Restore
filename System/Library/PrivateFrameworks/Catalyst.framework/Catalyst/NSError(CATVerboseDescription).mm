@interface NSError(CATVerboseDescription)
+ (id)formattedCode:()CATVerboseDescription;
- (id)verboseDescriptionWithIdentation:()CATVerboseDescription;
- (uint64_t)formattedCode;
@end

@implementation NSError(CATVerboseDescription)

- (id)verboseDescriptionWithIdentation:()CATVerboseDescription
{
  v4 = [&stru_2855FDC88 stringByPaddingToLength:a3 withString:@" " startingAtIndex:0];
  userInfo = [self userInfo];
  v6 = [userInfo mutableCopy];

  v7 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@%@: %p\n", v4, objc_opt_class(), self];
  localizedDescription = [self localizedDescription];
  v9 = localizedDescription;
  if (localizedDescription)
  {
    [v7 appendFormat:@"%@Desc   : %@\n", v4, localizedDescription];
  }

  localizedRecoverySuggestion = [self localizedRecoverySuggestion];
  v11 = localizedRecoverySuggestion;
  if (localizedRecoverySuggestion)
  {
    [v7 appendFormat:@"%@Sugg   : %@\n", v4, localizedRecoverySuggestion];
  }

  v12 = [v6 objectForKeyedSubscript:@"NSDescription"];
  v13 = v12;
  if (v12)
  {
    [v7 appendFormat:@"%@US Desc: %@\n", v4, v12];
  }

  v14 = [v6 objectForKeyedSubscript:@"NSRecoverySuggestion"];
  v15 = v14;
  if (v14)
  {
    [v7 appendFormat:@"%@US Sugg: %@\n", v4, v14];
  }

  domain = [self domain];
  [v7 appendFormat:@"%@Domain : %@\n", v4, domain];

  formattedCode = [self formattedCode];
  [v7 appendFormat:@"%@Code   : %@\n", v4, formattedCode];

  userInfo2 = [self userInfo];
  v19 = *MEMORY[0x277CCA7E8];
  v20 = [userInfo2 objectForKey:*MEMORY[0x277CCA7E8]];

  if (v20)
  {
    v21 = [v20 verboseDescriptionWithIdentation:a3 + 2];
    [v7 appendFormat:@"%@...Underlying error:\n%@", v4, v21];
  }

  [v6 removeObjectForKey:*MEMORY[0x277CCA450]];
  [v6 removeObjectForKey:@"NSDescription"];
  [v6 removeObjectForKey:*MEMORY[0x277CCA498]];
  [v6 removeObjectForKey:@"NSRecoverySuggestion"];
  [v6 removeObjectForKey:v19];
  if ([v6 count])
  {
    [v7 appendFormat:@"%@Extra info:\n%@", v4, v6];
  }

  return v7;
}

+ (id)formattedCode:()CATVerboseDescription
{
  v4 = a3 >> 26;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%lX (%ld)", a3, a3];
  v6 = v5;
  if (v4)
  {
    0x3FFF = [v5 stringByAppendingFormat:@" [sys = 0x%1$lX, sub = 0x%2$lX, code = 0x%3$lX (%3$ld)]", v4, (a3 >> 14) & 0xFFF, a3 & 0x3FFF];

    v6 = 0x3FFF;
  }

  return v6;
}

- (uint64_t)formattedCode
{
  v1 = MEMORY[0x277CCA9B8];
  code = [self code];

  return [v1 formattedCode:code];
}

@end