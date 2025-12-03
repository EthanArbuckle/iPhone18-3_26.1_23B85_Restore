@interface HLPAnalyticsEventContentViewed
+ (id)eventWithTopicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(int64_t)style;
- (id)_initWithTopicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(int64_t)style;
- (id)caRepresentation;
- (void)log;
@end

@implementation HLPAnalyticsEventContentViewed

- (id)_initWithTopicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(int64_t)style
{
  dCopy = d;
  titleCopy = title;
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = HLPAnalyticsEventContentViewed;
  v14 = [(HLPAnalyticsEventContentViewed *)&v19 init];
  p_isa = &v14->super.super.isa;
  if (v14)
  {
    objc_storeStrong(&v14->_topicID, d);
    objc_storeStrong(p_isa + 4, title);
    objc_storeStrong(p_isa + 5, source);
    v16 = @"unspecified";
    if (style == 1)
    {
      v16 = @"light";
    }

    if (style == 2)
    {
      v17 = @"dark";
    }

    else
    {
      v17 = v16;
    }

    objc_storeStrong(p_isa + 6, v17);
  }

  return p_isa;
}

+ (id)eventWithTopicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(int64_t)style
{
  sourceCopy = source;
  titleCopy = title;
  dCopy = d;
  v13 = [[self alloc] _initWithTopicID:dCopy topicTitle:titleCopy source:sourceCopy interfaceStyle:style];

  return v13;
}

- (void)log
{
  v3 = +[HLPAnalyticsEventController sharedInstance];
  [v3 incrementCounterForKey:@"content_viewed_counter"];

  v4.receiver = self;
  v4.super_class = HLPAnalyticsEventContentViewed;
  [(HLPAnalyticsEvent *)&v4 log];
}

- (id)caRepresentation
{
  v16.receiver = self;
  v16.super_class = HLPAnalyticsEventContentViewed;
  caRepresentation = [(HLPAnalyticsEvent *)&v16 caRepresentation];
  v4 = [caRepresentation mutableCopy];

  source = [(HLPAnalyticsEventContentViewed *)self source];
  [v4 setObject:source forKeyedSubscript:@"view_src"];

  viewMode = [(HLPAnalyticsEventContentViewed *)self viewMode];
  [v4 setObject:viewMode forKeyedSubscript:@"mode"];

  topicID = [(HLPAnalyticsEventContentViewed *)self topicID];
  [v4 setObject:topicID forKeyedSubscript:@"topic_ID"];

  topicTitle = [(HLPAnalyticsEventContentViewed *)self topicTitle];
  [v4 setObject:topicTitle forKeyedSubscript:@"topic_title"];

  fromTopicID = [(HLPAnalyticsEventContentViewed *)self fromTopicID];

  if (fromTopicID)
  {
    fromTopicID2 = [(HLPAnalyticsEventContentViewed *)self fromTopicID];
    [v4 setObject:fromTopicID2 forKeyedSubscript:@"from_topic_ID"];
  }

  externalURLString = [(HLPAnalyticsEventContentViewed *)self externalURLString];

  if (externalURLString)
  {
    externalURLString2 = [(HLPAnalyticsEventContentViewed *)self externalURLString];
    [v4 setObject:externalURLString2 forKeyedSubscript:@"external_link"];
  }

  v13 = +[HLPAnalyticsEventController sharedInstance];
  v14 = [v13 counterForKey:@"content_viewed_counter"];
  [v4 setObject:v14 forKeyedSubscript:@"session_view_num"];

  return v4;
}

@end