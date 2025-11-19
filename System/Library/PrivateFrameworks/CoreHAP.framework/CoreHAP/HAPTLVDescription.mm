@interface HAPTLVDescription
- (HAPTLVDescription)descriptionWithIndent:(id)a3;
- (id)description;
@end

@implementation HAPTLVDescription

- (id)description
{
  v3 = [MEMORY[0x277D0F908] indentation];
  v4 = [(HAPTLVDescription *)self descriptionWithIndent:v3];

  return v4;
}

- (HAPTLVDescription)descriptionWithIndent:(id)a3
{
  v4 = a3;
  v5 = [v4 indentationByLevels:1];
  v6 = [MEMORY[0x277CCAB68] string];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@{", v4];
  [v6 appendString:v7];

  [(HAPTLVDescription *)self description:v6 indent:v5];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@}", v4];

  [v6 appendString:v8];

  return v6;
}

@end