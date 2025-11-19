@interface ICASTagAddData
- (ICASTagAddData)initWithIsExistingTag:(id)a3 tagAddApproach:(id)a4 isAutoConversionEnabled:(id)a5;
- (id)toDict;
@end

@implementation ICASTagAddData

- (ICASTagAddData)initWithIsExistingTag:(id)a3 tagAddApproach:(id)a4 isAutoConversionEnabled:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASTagAddData;
  v12 = [(ICASTagAddData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_isExistingTag, a3);
    objc_storeStrong(&v13->_tagAddApproach, a4);
    objc_storeStrong(&v13->_isAutoConversionEnabled, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"isExistingTag";
  v3 = [(ICASTagAddData *)self isExistingTag];
  if (v3)
  {
    v4 = [(ICASTagAddData *)self isExistingTag];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"tagAddApproach";
  v6 = [(ICASTagAddData *)self tagAddApproach];
  if (v6)
  {
    v7 = [(ICASTagAddData *)self tagAddApproach];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"isAutoConversionEnabled";
  v9 = [(ICASTagAddData *)self isAutoConversionEnabled];
  if (v9)
  {
    v10 = [(ICASTagAddData *)self isAutoConversionEnabled];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v16[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end