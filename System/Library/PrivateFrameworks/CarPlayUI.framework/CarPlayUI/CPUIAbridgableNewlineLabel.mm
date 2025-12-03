@interface CPUIAbridgableNewlineLabel
+ (id)sanitizedTextForText:(id)text;
@end

@implementation CPUIAbridgableNewlineLabel

+ (id)sanitizedTextForText:(id)text
{
  v3 = sanitizedTextForText__onceToken_59;
  textCopy = text;
  if (v3 != -1)
  {
    +[CPUIAbridgableNewlineLabel sanitizedTextForText:];
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [textCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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