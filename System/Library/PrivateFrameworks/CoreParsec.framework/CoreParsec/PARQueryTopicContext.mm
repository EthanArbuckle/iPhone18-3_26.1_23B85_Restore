@interface PARQueryTopicContext
- (PARQueryTopicContext)initWithCoder:(id)coder;
- (PARQueryTopicContext)initWithTopic:(id)topic index:(int64_t)index;
- (int64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARQueryTopicContext

- (int64_t)index
{
  contextId = [(PARQueryTopicContext *)self contextId];
  integerValue = [contextId integerValue];

  return integerValue;
}

- (PARQueryTopicContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PARQueryTopicContext;
  v5 = [(PARQueryTopicContext *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextId"];
    contextId = v5->_contextId;
    v5->_contextId = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"topic"];
    topic = v5->_topic;
    v5->_topic = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contextId = [(PARQueryTopicContext *)self contextId];
  [coderCopy encodeObject:contextId forKey:@"contextId"];

  topic = [(PARQueryTopicContext *)self topic];
  [coderCopy encodeObject:topic forKey:@"topic"];
}

- (PARQueryTopicContext)initWithTopic:(id)topic index:(int64_t)index
{
  topicCopy = topic;
  v11.receiver = self;
  v11.super_class = PARQueryTopicContext;
  v7 = [(PARQueryTopicContext *)&v11 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:index];
    stringValue = [v8 stringValue];
    [(PARQueryTopicContext *)v7 setContextId:stringValue];

    [(PARQueryTopicContext *)v7 setTopic:topicCopy];
  }

  return v7;
}

@end