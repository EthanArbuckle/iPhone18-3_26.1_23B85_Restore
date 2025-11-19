@interface CPSMultilineLabelConfig
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLabelConfig:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CPSMultilineLabelConfig

- (id)copyWithZone:(_NSZone *)a3
{
  v11 = self;
  v10[2] = a2;
  v10[1] = a3;
  v10[0] = objc_opt_new();
  v7 = [(CPSMultilineLabelConfig *)v11 text];
  [v10[0] setText:?];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = [(CPSMultilineLabelConfig *)v11 font];
  [v10[0] setFont:?];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v5 = [(CPSMultilineLabelConfig *)v11 lineCount];
  [v10[0] setLineCount:v5];
  v9 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);
  return v9;
}

- (BOOL)isEqualToLabelConfig:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(CPSMultilineLabelConfig *)v9 lineCount];
  if (v7 == [location[0] lineCount])
  {
    v5 = [(CPSMultilineLabelConfig *)v9 font];
    v4 = [location[0] font];
    v6 = [(UIFont *)v5 isEqual:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    v10 = (v6 & 1) != 0;
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0] == v7)
  {
    v8 = 1;
    v5 = 1;
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = CPSMultilineLabelConfig;
    if ([(CPSMultilineLabelConfig *)&v4 isEqual:location[0]])
    {
      v8 = [(CPSMultilineLabelConfig *)v7 isEqualToLabelConfig:location[0]];
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
  v6 = [(CPSMultilineLabelConfig *)self lineCount];
  v12 = [(CPSMultilineLabelConfig *)self font];
  [(UIFont *)v12 pointSize];
  v7 = v2;
  v11 = [(CPSMultilineLabelConfig *)self attributedText];
  v3 = @"YES";
  if (!v11)
  {
    v3 = @"NO";
  }

  v8 = v3;
  v10 = [(CPSMultilineLabelConfig *)self text];
  v13 = [v9 stringWithFormat:@"<%@: %p lineCount=%ld fontSize=%f %@ - %@>", v5, self, v6, v7, v8, v10];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  return v13;
}

@end