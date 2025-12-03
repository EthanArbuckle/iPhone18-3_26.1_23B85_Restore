@interface CPSClusterEstimatesView
- (id)_labelFont;
@end

@implementation CPSClusterEstimatesView

- (id)_labelFont
{
  v19[1] = *MEMORY[0x277D85DE8];
  v15[2] = self;
  v15[1] = a2;
  v7 = MEMORY[0x277D74310];
  v6 = *MEMORY[0x277D76968];
  traitCollection = [(CPSClusterEstimatesView *)self traitCollection];
  v15[0] = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](traitCollection);
  v18 = *MEMORY[0x277D74430];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v19[0] = v9;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:?];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = v15[0];
  v16 = *MEMORY[0x277D74380];
  v17 = v14;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:{1, v2}];
  v3 = [v10 fontDescriptorByAddingAttributes:?];
  v4 = v15[0];
  v15[0] = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v11);
  v13 = [MEMORY[0x277D74300] fontWithDescriptor:v15[0] size:0.0];
  v12 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);

  return v12;
}

@end