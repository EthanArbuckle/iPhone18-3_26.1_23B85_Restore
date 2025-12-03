@interface FCRecommendedCategory
- (BOOL)isEqual:(id)equal;
- (FCRecommendedCategory)initWithIdentifier:(id)identifier name:(id)name curatedTagIDs:(id)ds recommendedTopicTagIDs:(id)iDs recommendedChannelTagIDs:(id)tagIDs subcategories:(id)subcategories;
- (unint64_t)hash;
@end

@implementation FCRecommendedCategory

- (FCRecommendedCategory)initWithIdentifier:(id)identifier name:(id)name curatedTagIDs:(id)ds recommendedTopicTagIDs:(id)iDs recommendedChannelTagIDs:(id)tagIDs subcategories:(id)subcategories
{
  identifierCopy = identifier;
  nameCopy = name;
  dsCopy = ds;
  iDsCopy = iDs;
  tagIDsCopy = tagIDs;
  subcategoriesCopy = subcategories;
  v35.receiver = self;
  v35.super_class = FCRecommendedCategory;
  v20 = [(FCRecommendedCategory *)&v35 init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v23;

    if ([dsCopy count])
    {
      v25 = dsCopy;
    }

    else
    {
      v25 = tagIDsCopy;
    }

    v26 = [v25 copy];
    curatedTagIDs = v20->_curatedTagIDs;
    v20->_curatedTagIDs = v26;

    v28 = [iDsCopy copy];
    topicTagIDs = v20->_topicTagIDs;
    v20->_topicTagIDs = v28;

    v30 = [tagIDsCopy copy];
    channelTagIDs = v20->_channelTagIDs;
    v20->_channelTagIDs = v30;

    v32 = [subcategoriesCopy copy];
    subcategories = v20->_subcategories;
    v20->_subcategories = v32;
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = equalCopy;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    v14 = 0;
    goto LABEL_31;
  }

  identifier = [(FCRecommendedCategory *)self identifier];
  if (identifier || ([v11 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    identifier2 = [(FCRecommendedCategory *)self identifier];
    identifier3 = [v11 identifier];
    if (![identifier2 isEqualToString:identifier3])
    {
      v14 = 0;
LABEL_27:

      goto LABEL_28;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  name = [(FCRecommendedCategory *)self name];
  if (name || ([v11 name], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    name2 = [(FCRecommendedCategory *)self name];
    name3 = [v11 name];
    if (![name2 isEqualToString:name3])
    {
      v14 = 0;
      goto LABEL_25;
    }

    v28 = v3;
    v26 = 1;
    v27 = v13;
  }

  else
  {
    v26 = 0;
    v27 = v13;
    v28 = v3;
    v25 = 0;
  }

  topicTagIDs = [(FCRecommendedCategory *)self topicTagIDs];
  topicTagIDs2 = [v11 topicTagIDs];
  if (![topicTagIDs isEqualToArray:topicTagIDs2])
  {

    v14 = 0;
    if (!v26)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  v23 = name2;
  channelTagIDs = [(FCRecommendedCategory *)self channelTagIDs];
  [v11 channelTagIDs];
  v22 = v24 = channelTagIDs;
  if ([channelTagIDs isEqualToArray:?])
  {
    subcategories = [(FCRecommendedCategory *)self subcategories];
    subcategories2 = [v11 subcategories];
    v14 = [subcategories isEqualToArray:subcategories2];
  }

  else
  {
    v14 = 0;
  }

  name2 = v23;

  if (v26)
  {
LABEL_24:
    v3 = v28;
    v13 = v27;
LABEL_25:

    if (!name)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

LABEL_34:
  v3 = v28;
  v13 = v27;
  if (!name)
  {
LABEL_35:

    if ((v13 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_26:

  if (v13)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (!identifier)
  {
  }

LABEL_31:
  return v14;
}

- (unint64_t)hash
{
  identifier = [(FCRecommendedCategory *)self identifier];
  v4 = [identifier hash];
  name = [(FCRecommendedCategory *)self name];
  v6 = [name hash] ^ v4;
  topicTagIDs = [(FCRecommendedCategory *)self topicTagIDs];
  v8 = [topicTagIDs hash];
  channelTagIDs = [(FCRecommendedCategory *)self channelTagIDs];
  v10 = v6 ^ v8 ^ [channelTagIDs hash];
  subcategories = [(FCRecommendedCategory *)self subcategories];
  v12 = [subcategories hash];

  return v10 ^ v12;
}

@end