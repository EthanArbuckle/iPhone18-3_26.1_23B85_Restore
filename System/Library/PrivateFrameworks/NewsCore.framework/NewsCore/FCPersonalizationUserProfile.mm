@interface FCPersonalizationUserProfile
- (FCPersonalizationUserProfile)initWithCoder:(id)coder;
- (FCPersonalizationUserProfile)initWithSubscribedTagIDs:(id)ds mutedTagIDs:(id)iDs autofavoritedTagIDs:(id)tagIDs purchasedTagIDs:(id)purchasedTagIDs bundleSubscription:(id)subscription;
- (FCPersonalizationUserProfile)initWithSubscribedTagIDs:(id)ds mutedTagIDs:(id)iDs autofavoritedTagIDs:(id)tagIDs purchasedTagIDs:(id)purchasedTagIDs readArticleIDs:(id)articleIDs listenedArticleIDs:(id)listenedArticleIDs seenArticleIDs:(id)seenArticleIDs bundleSubscription:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCPersonalizationUserProfile

- (FCPersonalizationUserProfile)initWithSubscribedTagIDs:(id)ds mutedTagIDs:(id)iDs autofavoritedTagIDs:(id)tagIDs purchasedTagIDs:(id)purchasedTagIDs readArticleIDs:(id)articleIDs listenedArticleIDs:(id)listenedArticleIDs seenArticleIDs:(id)seenArticleIDs bundleSubscription:(id)self0
{
  dsCopy = ds;
  iDsCopy = iDs;
  tagIDsCopy = tagIDs;
  purchasedTagIDsCopy = purchasedTagIDs;
  articleIDsCopy = articleIDs;
  listenedArticleIDsCopy = listenedArticleIDs;
  seenArticleIDsCopy = seenArticleIDs;
  subscriptionCopy = subscription;
  v40.receiver = self;
  v40.super_class = FCPersonalizationUserProfile;
  v24 = [(FCPersonalizationUserProfile *)&v40 init];
  if (v24)
  {
    v25 = [dsCopy copy];
    subscribedTagIDs = v24->_subscribedTagIDs;
    v24->_subscribedTagIDs = v25;

    v27 = [iDsCopy copy];
    mutedTagIDs = v24->_mutedTagIDs;
    v24->_mutedTagIDs = v27;

    v29 = [tagIDsCopy copy];
    autofavoritedTagIDs = v24->_autofavoritedTagIDs;
    v24->_autofavoritedTagIDs = v29;

    v31 = [purchasedTagIDsCopy copy];
    purchasedTagIDs = v24->_purchasedTagIDs;
    v24->_purchasedTagIDs = v31;

    v33 = [articleIDsCopy copy];
    readArticleIDs = v24->_readArticleIDs;
    v24->_readArticleIDs = v33;

    v35 = [listenedArticleIDsCopy copy];
    listenedArticleIDs = v24->_listenedArticleIDs;
    v24->_listenedArticleIDs = v35;

    v37 = [seenArticleIDsCopy copy];
    seenArticleIDs = v24->_seenArticleIDs;
    v24->_seenArticleIDs = v37;

    objc_storeStrong(&v24->_bundleSubscription, subscription);
  }

  return v24;
}

- (FCPersonalizationUserProfile)initWithSubscribedTagIDs:(id)ds mutedTagIDs:(id)iDs autofavoritedTagIDs:(id)tagIDs purchasedTagIDs:(id)purchasedTagIDs bundleSubscription:(id)subscription
{
  v12 = MEMORY[0x1E695DFD8];
  subscriptionCopy = subscription;
  purchasedTagIDsCopy = purchasedTagIDs;
  tagIDsCopy = tagIDs;
  iDsCopy = iDs;
  dsCopy = ds;
  v18 = [v12 set];
  v19 = [MEMORY[0x1E695DFD8] set];
  v20 = [MEMORY[0x1E695DFD8] set];
  v21 = [(FCPersonalizationUserProfile *)self initWithSubscribedTagIDs:dsCopy mutedTagIDs:iDsCopy autofavoritedTagIDs:tagIDsCopy purchasedTagIDs:purchasedTagIDsCopy readArticleIDs:v18 listenedArticleIDs:v19 seenArticleIDs:v20 bundleSubscription:subscriptionCopy];

  return v21;
}

- (FCPersonalizationUserProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscribedTagIDs"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mutedTagIDs"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autofavoritedTagIDs"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchasedTagIDs"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readArticleIDs"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listenedArticleIDs"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seenArticleIDs"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleSubscription"];

  v13 = [(FCPersonalizationUserProfile *)self initWithSubscribedTagIDs:v5 mutedTagIDs:v6 autofavoritedTagIDs:v7 purchasedTagIDs:v8 readArticleIDs:v9 listenedArticleIDs:v10 seenArticleIDs:v11 bundleSubscription:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  subscribedTagIDs = [(FCPersonalizationUserProfile *)self subscribedTagIDs];
  [coderCopy encodeObject:subscribedTagIDs forKey:@"subscribedTagIDs"];

  mutedTagIDs = [(FCPersonalizationUserProfile *)self mutedTagIDs];
  [coderCopy encodeObject:mutedTagIDs forKey:@"mutedTagIDs"];

  autofavoritedTagIDs = [(FCPersonalizationUserProfile *)self autofavoritedTagIDs];
  [coderCopy encodeObject:autofavoritedTagIDs forKey:@"autofavoritedTagIDs"];

  purchasedTagIDs = [(FCPersonalizationUserProfile *)self purchasedTagIDs];
  [coderCopy encodeObject:purchasedTagIDs forKey:@"purchasedTagIDs"];

  readArticleIDs = [(FCPersonalizationUserProfile *)self readArticleIDs];
  [coderCopy encodeObject:readArticleIDs forKey:@"readArticleIDs"];

  listenedArticleIDs = [(FCPersonalizationUserProfile *)self listenedArticleIDs];
  [coderCopy encodeObject:listenedArticleIDs forKey:@"listenedArticleIDs"];

  seenArticleIDs = [(FCPersonalizationUserProfile *)self seenArticleIDs];
  [coderCopy encodeObject:seenArticleIDs forKey:@"seenArticleIDs"];

  bundleSubscription = [(FCPersonalizationUserProfile *)self bundleSubscription];
  [coderCopy encodeObject:bundleSubscription forKey:@"bundleSubscription"];
}

@end