@interface FCEdgeCacheHint
+ (id)edgeCacheHintForAudioContent;
+ (id)edgeCacheHintForCurrentIssueArticles;
+ (id)edgeCacheHintForCurrentIssues;
+ (id)edgeCacheHintForEditorial;
+ (id)edgeCacheHintForEvergreenArticles;
+ (id)edgeCacheHintForFeaturedArticles;
+ (id)edgeCacheHintForForYouConfig;
+ (id)edgeCacheHintForLocalNews;
+ (id)edgeCacheHintForMagazineContent;
+ (id)edgeCacheHintForNotificationPool;
+ (id)edgeCacheHintForPurchaseLookup;
+ (id)edgeCacheHintForRecipeLists;
+ (id)edgeCacheHintForSportsArticles;
+ (id)edgeCacheHintForSpotlight;
+ (id)edgeCacheHintForTopStories;
+ (id)edgeCacheHintForTrending;
+ (id)edgeCacheHintForWidgetArticles;
+ (id)edgeCacheHintForWidgetConfig;
- (FCEdgeCacheHint)initWithGroupName:(id)name cacheControlKey:(id)key;
@end

@implementation FCEdgeCacheHint

+ (id)edgeCacheHintForPurchaseLookup
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"purchaselookup"];

  return v2;
}

- (FCEdgeCacheHint)initWithGroupName:(id)name cacheControlKey:(id)key
{
  nameCopy = name;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = FCEdgeCacheHint;
  v8 = [(FCEdgeCacheHint *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    groupName = v8->_groupName;
    v8->_groupName = v9;

    v11 = [keyCopy copy];
    cacheControlKey = v8->_cacheControlKey;
    v8->_cacheControlKey = v11;
  }

  return v8;
}

+ (id)edgeCacheHintForTopStories
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"topstories"];

  return v2;
}

+ (id)edgeCacheHintForForYouConfig
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"foryouconfig"];

  return v2;
}

+ (id)edgeCacheHintForTrending
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"trending"];

  return v2;
}

+ (id)edgeCacheHintForEditorial
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"editorial"];

  return v2;
}

+ (id)edgeCacheHintForWidgetConfig
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"today"];

  return v2;
}

+ (id)edgeCacheHintForWidgetArticles
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"widgetarticles"];

  return v2;
}

+ (id)edgeCacheHintForFeaturedArticles
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"featuredarticles"];

  return v2;
}

+ (id)edgeCacheHintForCurrentIssues
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"currentissues"];

  return v2;
}

+ (id)edgeCacheHintForCurrentIssueArticles
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"currentissuearticles"];

  return v2;
}

+ (id)edgeCacheHintForSpotlight
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"spotlight"];

  return v2;
}

+ (id)edgeCacheHintForMagazineContent
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"magazinecontent"];

  return v2;
}

+ (id)edgeCacheHintForAudioContent
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"audiocontent"];

  return v2;
}

+ (id)edgeCacheHintForLocalNews
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"localnews"];

  return v2;
}

+ (id)edgeCacheHintForEvergreenArticles
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"evergreenarticles"];

  return v2;
}

+ (id)edgeCacheHintForSportsArticles
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"sportsarticles"];

  return v2;
}

+ (id)edgeCacheHintForNotificationPool
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"notificationpool"];

  return v2;
}

+ (id)edgeCacheHintForRecipeLists
{
  v2 = [objc_alloc(objc_opt_class()) initWithGroupName:@"news" cacheControlKey:@"recipes"];

  return v2;
}

@end