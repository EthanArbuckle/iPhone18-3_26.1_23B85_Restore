@interface FCRecommendedCategory
- (BOOL)isEqual:(id)a3;
- (FCRecommendedCategory)initWithIdentifier:(id)a3 name:(id)a4 curatedTagIDs:(id)a5 recommendedTopicTagIDs:(id)a6 recommendedChannelTagIDs:(id)a7 subcategories:(id)a8;
- (unint64_t)hash;
@end

@implementation FCRecommendedCategory

- (FCRecommendedCategory)initWithIdentifier:(id)a3 name:(id)a4 curatedTagIDs:(id)a5 recommendedTopicTagIDs:(id)a6 recommendedChannelTagIDs:(id)a7 subcategories:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v35.receiver = self;
  v35.super_class = FCRecommendedCategory;
  v20 = [(FCRecommendedCategory *)&v35 init];
  if (v20)
  {
    v21 = [v14 copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [v15 copy];
    name = v20->_name;
    v20->_name = v23;

    if ([v16 count])
    {
      v25 = v16;
    }

    else
    {
      v25 = v18;
    }

    v26 = [v25 copy];
    curatedTagIDs = v20->_curatedTagIDs;
    v20->_curatedTagIDs = v26;

    v28 = [v17 copy];
    topicTagIDs = v20->_topicTagIDs;
    v20->_topicTagIDs = v28;

    v30 = [v18 copy];
    channelTagIDs = v20->_channelTagIDs;
    v20->_channelTagIDs = v30;

    v32 = [v19 copy];
    subcategories = v20->_subcategories;
    v20->_subcategories = v32;
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
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

  v12 = [(FCRecommendedCategory *)self identifier];
  if (v12 || ([v11 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(FCRecommendedCategory *)self identifier];
    v5 = [v11 identifier];
    if (![v4 isEqualToString:v5])
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

  v15 = [(FCRecommendedCategory *)self name];
  if (v15 || ([v11 name], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(FCRecommendedCategory *)self name];
    v7 = [v11 name];
    if (![v6 isEqualToString:v7])
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

  v16 = [(FCRecommendedCategory *)self topicTagIDs];
  v17 = [v11 topicTagIDs];
  if (![v16 isEqualToArray:v17])
  {

    v14 = 0;
    if (!v26)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  v23 = v6;
  v18 = [(FCRecommendedCategory *)self channelTagIDs];
  [v11 channelTagIDs];
  v22 = v24 = v18;
  if ([v18 isEqualToArray:?])
  {
    v19 = [(FCRecommendedCategory *)self subcategories];
    v21 = [v11 subcategories];
    v14 = [v19 isEqualToArray:v21];
  }

  else
  {
    v14 = 0;
  }

  v6 = v23;

  if (v26)
  {
LABEL_24:
    v3 = v28;
    v13 = v27;
LABEL_25:

    if (!v15)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

LABEL_34:
  v3 = v28;
  v13 = v27;
  if (!v15)
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
  if (!v12)
  {
  }

LABEL_31:
  return v14;
}

- (unint64_t)hash
{
  v3 = [(FCRecommendedCategory *)self identifier];
  v4 = [v3 hash];
  v5 = [(FCRecommendedCategory *)self name];
  v6 = [v5 hash] ^ v4;
  v7 = [(FCRecommendedCategory *)self topicTagIDs];
  v8 = [v7 hash];
  v9 = [(FCRecommendedCategory *)self channelTagIDs];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(FCRecommendedCategory *)self subcategories];
  v12 = [v11 hash];

  return v10 ^ v12;
}

@end