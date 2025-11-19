@interface NMSPodcastIdentifierSet
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPodcastIdentifierSet:(id)a3;
- (NMSPodcastIdentifierSet)initWithDictionary:(id)a3;
- (NMSPodcastIdentifierSet)initWithStoreID:(id)a3 feedURL:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation NMSPodcastIdentifierSet

- (NMSPodcastIdentifierSet)initWithStoreID:(id)a3 feedURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NMSPodcastIdentifierSet;
  v9 = [(NMSPodcastIdentifierSet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storeID, a3);
    objc_storeStrong(&v10->_feedURL, a4);
  }

  return v10;
}

- (NMSPodcastIdentifierSet)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"storeID"];
  if ([v5 isEqualToNumber:&unk_286C8D778])
  {

    v5 = 0;
  }

  v6 = [v4 objectForKey:@"feedURL"];
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
  v3 = [(NMSPodcastIdentifierSet *)self storeID];
  v4 = [v3 copy];
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
  v7 = [(NMSPodcastIdentifierSet *)self feedURL];
  v8 = [v7 copy];
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

- (BOOL)isEqualToPodcastIdentifierSet:(id)a3
{
  v4 = a3;
  v5 = [(NMSPodcastIdentifierSet *)self storeID];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 storeID];

    if (v7)
    {
      v8 = [(NMSPodcastIdentifierSet *)self storeID];
      v9 = [v4 storeID];
      v10 = [v8 isEqualToNumber:v9];
LABEL_7:
      v14 = v10;

      goto LABEL_15;
    }
  }

  v11 = [(NMSPodcastIdentifierSet *)self feedURL];
  if (v11)
  {
    v12 = v11;
    v13 = [v4 feedURL];

    if (v13)
    {
      v8 = [(NMSPodcastIdentifierSet *)self feedURL];
      v9 = [v4 feedURL];
      v10 = [v8 isEqualToString:v9];
      goto LABEL_7;
    }
  }

  v15 = [(NMSPodcastIdentifierSet *)self storeID];
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v17 = [v4 storeID];
    v16 = v17 == 0;
  }

  v18 = [(NMSPodcastIdentifierSet *)self feedURL];
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v20 = [v4 feedURL];
    v19 = v20 == 0;
  }

  v14 = v16 && v19;
LABEL_15:

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NMSPodcastIdentifierSet *)self isEqualToPodcastIdentifierSet:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(NMSPodcastIdentifierSet *)self storeID];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = NMSPodcastIdentifierSet;
  v4 = [(NMSPodcastIdentifierSet *)&v9 description];
  v5 = [(NMSPodcastIdentifierSet *)self storeID];
  v6 = [(NMSPodcastIdentifierSet *)self feedURL];
  v7 = [v3 stringWithFormat:@"%@ storeID <%@> feedURL <%@>", v4, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(NSNumber *)self->_storeID copyWithZone:?];
  v6 = [(NSString *)self->_feedURL copyWithZone:a3];
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithStoreID:feedURL:", v5, v6}];

  return v7;
}

@end