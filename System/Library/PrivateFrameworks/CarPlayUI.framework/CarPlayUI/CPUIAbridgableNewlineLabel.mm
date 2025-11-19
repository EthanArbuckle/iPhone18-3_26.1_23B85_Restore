@interface CPUIAbridgableNewlineLabel
+ (id)sanitizedTextForText:(id)a3;
@end

@implementation CPUIAbridgableNewlineLabel

+ (id)sanitizedTextForText:(id)a3
{
  v3 = sanitizedTextForText__onceToken_59;
  v4 = a3;
  if (v3 != -1)
  {
    +[CPUIAbridgableNewlineLabel sanitizedTextForText:];
  }

  v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [v6 componentsSeparatedByCharactersInSet:sanitizedTextForText____disallowedCharacterSet_58];
  v8 = [v7 componentsJoinedByString:&stru_2855CA368];

  return v8;
}

void __51__CPUIAbridgableNewlineLabel_sanitizedTextForText___block_invoke()
{
  v3 = objc_opt_new();
  v0 = [MEMORY[0x277CCA900] illegalCharacterSet];
  [v3 formUnionWithCharacterSet:v0];

  v1 = [v3 copy];
  v2 = sanitizedTextForText____disallowedCharacterSet_58;
  sanitizedTextForText____disallowedCharacterSet_58 = v1;
}

@end