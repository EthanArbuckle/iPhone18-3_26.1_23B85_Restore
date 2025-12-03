@interface ICASBioAuthData
- (ICASBioAuthData)initWithBioAuthType:(id)type;
- (id)toDict;
@end

@implementation ICASBioAuthData

- (ICASBioAuthData)initWithBioAuthType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ICASBioAuthData;
  v6 = [(ICASBioAuthData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bioAuthType, type);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"bioAuthType";
  bioAuthType = [(ICASBioAuthData *)self bioAuthType];
  if (bioAuthType)
  {
    bioAuthType2 = [(ICASBioAuthData *)self bioAuthType];
  }

  else
  {
    bioAuthType2 = objc_opt_new();
  }

  v5 = bioAuthType2;
  v10[0] = bioAuthType2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end