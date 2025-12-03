@interface ICASStyleData
- (ICASStyleData)initWithStyleType:(id)type;
- (id)toDict;
@end

@implementation ICASStyleData

- (ICASStyleData)initWithStyleType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ICASStyleData;
  v6 = [(ICASStyleData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleType, type);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"styleType";
  styleType = [(ICASStyleData *)self styleType];
  if (styleType)
  {
    styleType2 = [(ICASStyleData *)self styleType];
  }

  else
  {
    styleType2 = objc_opt_new();
  }

  v5 = styleType2;
  v10[0] = styleType2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end