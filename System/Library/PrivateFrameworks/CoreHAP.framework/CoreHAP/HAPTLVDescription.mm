@interface HAPTLVDescription
- (HAPTLVDescription)descriptionWithIndent:(id)indent;
- (id)description;
@end

@implementation HAPTLVDescription

- (id)description
{
  indentation = [MEMORY[0x277D0F908] indentation];
  v4 = [(HAPTLVDescription *)self descriptionWithIndent:indentation];

  return v4;
}

- (HAPTLVDescription)descriptionWithIndent:(id)indent
{
  indentCopy = indent;
  v5 = [indentCopy indentationByLevels:1];
  string = [MEMORY[0x277CCAB68] string];
  indentCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@{", indentCopy];
  [string appendString:indentCopy];

  [(HAPTLVDescription *)self description:string indent:v5];
  indentCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@}", indentCopy];

  [string appendString:indentCopy2];

  return string;
}

@end