@interface FCPublisherTopicFeature
- (FCPublisherTopicFeature)init;
- (FCPublisherTopicFeature)initWithPersonalizationIdentifier:(id)a3;
- (FCPublisherTopicFeature)initWithPublisherTagID:(id)a3 topicTagID:(id)a4;
- (NSArray)features;
@end

@implementation FCPublisherTopicFeature

- (FCPublisherTopicFeature)init
{
  v16 = *MEMORY[0x1E69E9840];
  [(FCPublisherTopicFeature *)self initWithPublisherTagID:0 topicTagID:0];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPublisherTopicFeature init]";
    v10 = 2080;
    v11 = "FCPersonalizationFeature.m";
    v12 = 1024;
    v13 = 753;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPublisherTopicFeature init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPublisherTopicFeature)initWithPersonalizationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 rangeOfString:@"+"];
  v7 = v6;
  v8 = [v4 rangeOfString:@"+" options:4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL && v8 > v5)
  {
    v13 = v5 + v7;
    v14 = v8 - v13;
    v15 = v8 + v9;
    v16 = [v4 length] - (v8 + v9);
    v17 = [v4 substringWithRange:{v13, v14}];
    v18 = [v4 substringWithRange:{v15, v16}];
    self = [(FCPublisherTopicFeature *)self initWithPublisherTagID:v17 topicTagID:v18];

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (FCPublisherTopicFeature)initWithPublisherTagID:(id)a3 topicTagID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = FCPublisherTopicFeature;
  v8 = [(FCPersonalizationFeature *)&v13 init];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      [(FCPublisherTopicFeature *)v8 setPublisherTagID:v6];
    }

    if (v7)
    {
      [(FCPublisherTopicFeature *)v9 setTopicTagID:v7];
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"f4", @"+", v6, @"+", v7];
    personalizationIdentifier = v9->super._personalizationIdentifier;
    v9->super._personalizationIdentifier = v10;
  }

  return v9;
}

- (NSArray)features
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [FCTagIDFeature alloc];
  v4 = [(FCPublisherTopicFeature *)self publisherTagID];
  v5 = [(FCTagIDFeature *)v3 initWithTagID:v4];
  v12[0] = v5;
  v6 = [FCTagIDFeature alloc];
  v7 = [(FCPublisherTopicFeature *)self topicTagID];
  v8 = [(FCTagIDFeature *)v6 initWithTagID:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end