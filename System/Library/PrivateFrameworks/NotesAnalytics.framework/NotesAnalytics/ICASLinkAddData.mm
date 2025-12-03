@interface ICASLinkAddData
- (ICASLinkAddData)initWithLinkAddApproach:(id)approach linkContentType:(id)type isTokenizedLink:(id)link;
- (id)toDict;
@end

@implementation ICASLinkAddData

- (ICASLinkAddData)initWithLinkAddApproach:(id)approach linkContentType:(id)type isTokenizedLink:(id)link
{
  approachCopy = approach;
  typeCopy = type;
  linkCopy = link;
  v15.receiver = self;
  v15.super_class = ICASLinkAddData;
  v12 = [(ICASLinkAddData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_linkAddApproach, approach);
    objc_storeStrong(&v13->_linkContentType, type);
    objc_storeStrong(&v13->_isTokenizedLink, link);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"linkAddApproach";
  linkAddApproach = [(ICASLinkAddData *)self linkAddApproach];
  if (linkAddApproach)
  {
    linkAddApproach2 = [(ICASLinkAddData *)self linkAddApproach];
  }

  else
  {
    linkAddApproach2 = objc_opt_new();
  }

  v5 = linkAddApproach2;
  v16[0] = linkAddApproach2;
  v15[1] = @"linkContentType";
  linkContentType = [(ICASLinkAddData *)self linkContentType];
  if (linkContentType)
  {
    linkContentType2 = [(ICASLinkAddData *)self linkContentType];
  }

  else
  {
    linkContentType2 = objc_opt_new();
  }

  v8 = linkContentType2;
  v16[1] = linkContentType2;
  v15[2] = @"isTokenizedLink";
  isTokenizedLink = [(ICASLinkAddData *)self isTokenizedLink];
  if (isTokenizedLink)
  {
    isTokenizedLink2 = [(ICASLinkAddData *)self isTokenizedLink];
  }

  else
  {
    isTokenizedLink2 = objc_opt_new();
  }

  v11 = isTokenizedLink2;
  v16[2] = isTokenizedLink2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end