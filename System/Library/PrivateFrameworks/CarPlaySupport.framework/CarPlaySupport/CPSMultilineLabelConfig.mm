@interface CPSMultilineLabelConfig
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLabelConfig:(id)config;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CPSMultilineLabelConfig

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v10[2] = a2;
  v10[1] = zone;
  v10[0] = objc_opt_new();
  text = [(CPSMultilineLabelConfig *)selfCopy text];
  [v10[0] setText:?];
  *&v3 = MEMORY[0x277D82BD8](text).n128_u64[0];
  font = [(CPSMultilineLabelConfig *)selfCopy font];
  [v10[0] setFont:?];
  *&v4 = MEMORY[0x277D82BD8](font).n128_u64[0];
  lineCount = [(CPSMultilineLabelConfig *)selfCopy lineCount];
  [v10[0] setLineCount:lineCount];
  v9 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);
  return v9;
}

- (BOOL)isEqualToLabelConfig:(id)config
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, config);
  lineCount = [(CPSMultilineLabelConfig *)selfCopy lineCount];
  if (lineCount == [location[0] lineCount])
  {
    font = [(CPSMultilineLabelConfig *)selfCopy font];
    font2 = [location[0] font];
    v6 = [(UIFont *)font isEqual:?];
    MEMORY[0x277D82BD8](font2);
    MEMORY[0x277D82BD8](font);
    v10 = (v6 & 1) != 0;
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (location[0] == selfCopy)
  {
    v8 = 1;
    v5 = 1;
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = CPSMultilineLabelConfig;
    if ([(CPSMultilineLabelConfig *)&v4 isEqual:location[0]])
    {
      v8 = [(CPSMultilineLabelConfig *)selfCopy isEqualToLabelConfig:location[0]];
    }

    else
    {
      v8 = 0;
    }

    v5 = 1;
  }

  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (id)description
{
  v9 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  lineCount = [(CPSMultilineLabelConfig *)self lineCount];
  font = [(CPSMultilineLabelConfig *)self font];
  [(UIFont *)font pointSize];
  v7 = v2;
  attributedText = [(CPSMultilineLabelConfig *)self attributedText];
  v3 = @"YES";
  if (!attributedText)
  {
    v3 = @"NO";
  }

  v8 = v3;
  text = [(CPSMultilineLabelConfig *)self text];
  v13 = [v9 stringWithFormat:@"<%@: %p lineCount=%ld fontSize=%f %@ - %@>", v5, self, lineCount, v7, v8, text];
  MEMORY[0x277D82BD8](text);
  MEMORY[0x277D82BD8](attributedText);
  MEMORY[0x277D82BD8](font);

  return v13;
}

@end