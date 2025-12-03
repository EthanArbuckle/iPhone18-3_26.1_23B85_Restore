@interface NMSPodcastIdentifierSet
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPodcastIdentifierSet:(id)set;
- (NMSPodcastIdentifierSet)initWithDictionary:(id)dictionary;
- (NMSPodcastIdentifierSet)initWithStoreID:(id)d feedURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation NMSPodcastIdentifierSet

- (NMSPodcastIdentifierSet)initWithStoreID:(id)d feedURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = NMSPodcastIdentifierSet;
  v9 = [(NMSPodcastIdentifierSet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storeID, d);
    objc_storeStrong(&v10->_feedURL, l);
  }

  return v10;
}

- (NMSPodcastIdentifierSet)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"storeID"];
  if ([v5 isEqualToNumber:&unk_286C8D778])
  {

    v5 = 0;
  }

  v6 = [dictionaryCopy objectForKey:@"feedURL"];
  if (![v6 length])
  {

    v6 = 0;
  }

  v7 = [(NMSPodcastIdentifierSet *)self initWithStoreID:v5 feedURL:v6];

  return v7;
}

- (id)dictionaryRepresentation
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"storeID";
  storeID = [(NMSPodcastIdentifierSet *)self storeID];
  v4 = [storeID copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &unk_286C8D778;
  }

  v14[1] = @"feedURL";
  v15[0] = v6;
  feedURL = [(NMSPodcastIdentifierSet *)self feedURL];
  v8 = [feedURL copy];
  v9 = v8;
  v10 = &stru_286C836D8;
  if (v8)
  {
    v10 = v8;
  }

  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)isEqualToPodcastIdentifierSet:(id)set
{
  setCopy = set;
  storeID = [(NMSPodcastIdentifierSet *)self storeID];
  if (storeID)
  {
    v6 = storeID;
    storeID2 = [setCopy storeID];

    if (storeID2)
    {
      storeID3 = [(NMSPodcastIdentifierSet *)self storeID];
      storeID4 = [setCopy storeID];
      v10 = [storeID3 isEqualToNumber:storeID4];
LABEL_7:
      v14 = v10;

      goto LABEL_15;
    }
  }

  feedURL = [(NMSPodcastIdentifierSet *)self feedURL];
  if (feedURL)
  {
    v12 = feedURL;
    feedURL2 = [setCopy feedURL];

    if (feedURL2)
    {
      storeID3 = [(NMSPodcastIdentifierSet *)self feedURL];
      storeID4 = [setCopy feedURL];
      v10 = [storeID3 isEqualToString:storeID4];
      goto LABEL_7;
    }
  }

  storeID5 = [(NMSPodcastIdentifierSet *)self storeID];
  if (storeID5)
  {
    v16 = 0;
  }

  else
  {
    storeID6 = [setCopy storeID];
    v16 = storeID6 == 0;
  }

  feedURL3 = [(NMSPodcastIdentifierSet *)self feedURL];
  if (feedURL3)
  {
    v19 = 0;
  }

  else
  {
    feedURL4 = [setCopy feedURL];
    v19 = feedURL4 == 0;
  }

  v14 = v16 && v19;
LABEL_15:

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NMSPodcastIdentifierSet *)self isEqualToPodcastIdentifierSet:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  storeID = [(NMSPodcastIdentifierSet *)self storeID];
  v3 = [storeID hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = NMSPodcastIdentifierSet;
  v4 = [(NMSPodcastIdentifierSet *)&v9 description];
  storeID = [(NMSPodcastIdentifierSet *)self storeID];
  feedURL = [(NMSPodcastIdentifierSet *)self feedURL];
  v7 = [v3 stringWithFormat:@"%@ storeID <%@> feedURL <%@>", v4, storeID, feedURL];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(NSNumber *)self->_storeID copyWithZone:?];
  v6 = [(NSString *)self->_feedURL copyWithZone:zone];
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithStoreID:feedURL:", v5, v6}];

  return v7;
}

@end