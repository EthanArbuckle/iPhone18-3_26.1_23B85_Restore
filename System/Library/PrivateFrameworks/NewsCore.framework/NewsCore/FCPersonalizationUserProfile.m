@interface FCPersonalizationUserProfile
- (FCPersonalizationUserProfile)initWithCoder:(id)a3;
- (FCPersonalizationUserProfile)initWithSubscribedTagIDs:(id)a3 mutedTagIDs:(id)a4 autofavoritedTagIDs:(id)a5 purchasedTagIDs:(id)a6 bundleSubscription:(id)a7;
- (FCPersonalizationUserProfile)initWithSubscribedTagIDs:(id)a3 mutedTagIDs:(id)a4 autofavoritedTagIDs:(id)a5 purchasedTagIDs:(id)a6 readArticleIDs:(id)a7 listenedArticleIDs:(id)a8 seenArticleIDs:(id)a9 bundleSubscription:(id)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCPersonalizationUserProfile

- (FCPersonalizationUserProfile)initWithSubscribedTagIDs:(id)a3 mutedTagIDs:(id)a4 autofavoritedTagIDs:(id)a5 purchasedTagIDs:(id)a6 readArticleIDs:(id)a7 listenedArticleIDs:(id)a8 seenArticleIDs:(id)a9 bundleSubscription:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v40.receiver = self;
  v40.super_class = FCPersonalizationUserProfile;
  v24 = [(FCPersonalizationUserProfile *)&v40 init];
  if (v24)
  {
    v25 = [v16 copy];
    subscribedTagIDs = v24->_subscribedTagIDs;
    v24->_subscribedTagIDs = v25;

    v27 = [v17 copy];
    mutedTagIDs = v24->_mutedTagIDs;
    v24->_mutedTagIDs = v27;

    v29 = [v18 copy];
    autofavoritedTagIDs = v24->_autofavoritedTagIDs;
    v24->_autofavoritedTagIDs = v29;

    v31 = [v19 copy];
    purchasedTagIDs = v24->_purchasedTagIDs;
    v24->_purchasedTagIDs = v31;

    v33 = [v20 copy];
    readArticleIDs = v24->_readArticleIDs;
    v24->_readArticleIDs = v33;

    v35 = [v21 copy];
    listenedArticleIDs = v24->_listenedArticleIDs;
    v24->_listenedArticleIDs = v35;

    v37 = [v22 copy];
    seenArticleIDs = v24->_seenArticleIDs;
    v24->_seenArticleIDs = v37;

    objc_storeStrong(&v24->_bundleSubscription, a10);
  }

  return v24;
}

- (FCPersonalizationUserProfile)initWithSubscribedTagIDs:(id)a3 mutedTagIDs:(id)a4 autofavoritedTagIDs:(id)a5 purchasedTagIDs:(id)a6 bundleSubscription:(id)a7
{
  v12 = MEMORY[0x1E695DFD8];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 set];
  v19 = [MEMORY[0x1E695DFD8] set];
  v20 = [MEMORY[0x1E695DFD8] set];
  v21 = [(FCPersonalizationUserProfile *)self initWithSubscribedTagIDs:v17 mutedTagIDs:v16 autofavoritedTagIDs:v15 purchasedTagIDs:v14 readArticleIDs:v18 listenedArticleIDs:v19 seenArticleIDs:v20 bundleSubscription:v13];

  return v21;
}

- (FCPersonalizationUserProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscribedTagIDs"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mutedTagIDs"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autofavoritedTagIDs"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchasedTagIDs"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readArticleIDs"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listenedArticleIDs"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seenArticleIDs"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleSubscription"];

  v13 = [(FCPersonalizationUserProfile *)self initWithSubscribedTagIDs:v5 mutedTagIDs:v6 autofavoritedTagIDs:v7 purchasedTagIDs:v8 readArticleIDs:v9 listenedArticleIDs:v10 seenArticleIDs:v11 bundleSubscription:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCPersonalizationUserProfile *)self subscribedTagIDs];
  [v4 encodeObject:v5 forKey:@"subscribedTagIDs"];

  v6 = [(FCPersonalizationUserProfile *)self mutedTagIDs];
  [v4 encodeObject:v6 forKey:@"mutedTagIDs"];

  v7 = [(FCPersonalizationUserProfile *)self autofavoritedTagIDs];
  [v4 encodeObject:v7 forKey:@"autofavoritedTagIDs"];

  v8 = [(FCPersonalizationUserProfile *)self purchasedTagIDs];
  [v4 encodeObject:v8 forKey:@"purchasedTagIDs"];

  v9 = [(FCPersonalizationUserProfile *)self readArticleIDs];
  [v4 encodeObject:v9 forKey:@"readArticleIDs"];

  v10 = [(FCPersonalizationUserProfile *)self listenedArticleIDs];
  [v4 encodeObject:v10 forKey:@"listenedArticleIDs"];

  v11 = [(FCPersonalizationUserProfile *)self seenArticleIDs];
  [v4 encodeObject:v11 forKey:@"seenArticleIDs"];

  v12 = [(FCPersonalizationUserProfile *)self bundleSubscription];
  [v4 encodeObject:v12 forKey:@"bundleSubscription"];
}

@end