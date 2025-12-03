@interface FCPublisherTopicFeature
- (FCPublisherTopicFeature)init;
- (FCPublisherTopicFeature)initWithPersonalizationIdentifier:(id)identifier;
- (FCPublisherTopicFeature)initWithPublisherTagID:(id)d topicTagID:(id)iD;
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

- (FCPublisherTopicFeature)initWithPersonalizationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy rangeOfString:@"+"];
  v7 = v6;
  v8 = [identifierCopy rangeOfString:@"+" options:4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL && v8 > v5)
  {
    v13 = v5 + v7;
    v14 = v8 - v13;
    v15 = v8 + v9;
    v16 = [identifierCopy length] - (v8 + v9);
    v17 = [identifierCopy substringWithRange:{v13, v14}];
    v18 = [identifierCopy substringWithRange:{v15, v16}];
    self = [(FCPublisherTopicFeature *)self initWithPublisherTagID:v17 topicTagID:v18];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FCPublisherTopicFeature)initWithPublisherTagID:(id)d topicTagID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v13.receiver = self;
  v13.super_class = FCPublisherTopicFeature;
  v8 = [(FCPersonalizationFeature *)&v13 init];
  v9 = v8;
  if (v8)
  {
    if (dCopy)
    {
      [(FCPublisherTopicFeature *)v8 setPublisherTagID:dCopy];
    }

    if (iDCopy)
    {
      [(FCPublisherTopicFeature *)v9 setTopicTagID:iDCopy];
    }

    iDCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"f4", @"+", dCopy, @"+", iDCopy];
    personalizationIdentifier = v9->super._personalizationIdentifier;
    v9->super._personalizationIdentifier = iDCopy;
  }

  return v9;
}

- (NSArray)features
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [FCTagIDFeature alloc];
  publisherTagID = [(FCPublisherTopicFeature *)self publisherTagID];
  v5 = [(FCTagIDFeature *)v3 initWithTagID:publisherTagID];
  v12[0] = v5;
  v6 = [FCTagIDFeature alloc];
  topicTagID = [(FCPublisherTopicFeature *)self topicTagID];
  v8 = [(FCTagIDFeature *)v6 initWithTagID:topicTagID];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end