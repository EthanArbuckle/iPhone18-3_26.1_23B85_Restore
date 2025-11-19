@interface HLPAnalyticsEventContentViewed
+ (id)eventWithTopicID:(id)a3 topicTitle:(id)a4 source:(id)a5 interfaceStyle:(int64_t)a6;
- (id)_initWithTopicID:(id)a3 topicTitle:(id)a4 source:(id)a5 interfaceStyle:(int64_t)a6;
- (id)caRepresentation;
- (void)log;
@end

@implementation HLPAnalyticsEventContentViewed

- (id)_initWithTopicID:(id)a3 topicTitle:(id)a4 source:(id)a5 interfaceStyle:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = HLPAnalyticsEventContentViewed;
  v14 = [(HLPAnalyticsEventContentViewed *)&v19 init];
  p_isa = &v14->super.super.isa;
  if (v14)
  {
    objc_storeStrong(&v14->_topicID, a3);
    objc_storeStrong(p_isa + 4, a4);
    objc_storeStrong(p_isa + 5, a5);
    v16 = @"unspecified";
    if (a6 == 1)
    {
      v16 = @"light";
    }

    if (a6 == 2)
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

+ (id)eventWithTopicID:(id)a3 topicTitle:(id)a4 source:(id)a5 interfaceStyle:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] _initWithTopicID:v12 topicTitle:v11 source:v10 interfaceStyle:a6];

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
  v3 = [(HLPAnalyticsEvent *)&v16 caRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(HLPAnalyticsEventContentViewed *)self source];
  [v4 setObject:v5 forKeyedSubscript:@"view_src"];

  v6 = [(HLPAnalyticsEventContentViewed *)self viewMode];
  [v4 setObject:v6 forKeyedSubscript:@"mode"];

  v7 = [(HLPAnalyticsEventContentViewed *)self topicID];
  [v4 setObject:v7 forKeyedSubscript:@"topic_ID"];

  v8 = [(HLPAnalyticsEventContentViewed *)self topicTitle];
  [v4 setObject:v8 forKeyedSubscript:@"topic_title"];

  v9 = [(HLPAnalyticsEventContentViewed *)self fromTopicID];

  if (v9)
  {
    v10 = [(HLPAnalyticsEventContentViewed *)self fromTopicID];
    [v4 setObject:v10 forKeyedSubscript:@"from_topic_ID"];
  }

  v11 = [(HLPAnalyticsEventContentViewed *)self externalURLString];

  if (v11)
  {
    v12 = [(HLPAnalyticsEventContentViewed *)self externalURLString];
    [v4 setObject:v12 forKeyedSubscript:@"external_link"];
  }

  v13 = +[HLPAnalyticsEventController sharedInstance];
  v14 = [v13 counterForKey:@"content_viewed_counter"];
  [v4 setObject:v14 forKeyedSubscript:@"session_view_num"];

  return v4;
}

@end