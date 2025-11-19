@interface ICASLinkAddData
- (ICASLinkAddData)initWithLinkAddApproach:(id)a3 linkContentType:(id)a4 isTokenizedLink:(id)a5;
- (id)toDict;
@end

@implementation ICASLinkAddData

- (ICASLinkAddData)initWithLinkAddApproach:(id)a3 linkContentType:(id)a4 isTokenizedLink:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASLinkAddData;
  v12 = [(ICASLinkAddData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_linkAddApproach, a3);
    objc_storeStrong(&v13->_linkContentType, a4);
    objc_storeStrong(&v13->_isTokenizedLink, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"linkAddApproach";
  v3 = [(ICASLinkAddData *)self linkAddApproach];
  if (v3)
  {
    v4 = [(ICASLinkAddData *)self linkAddApproach];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"linkContentType";
  v6 = [(ICASLinkAddData *)self linkContentType];
  if (v6)
  {
    v7 = [(ICASLinkAddData *)self linkContentType];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"isTokenizedLink";
  v9 = [(ICASLinkAddData *)self isTokenizedLink];
  if (v9)
  {
    v10 = [(ICASLinkAddData *)self isTokenizedLink];
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