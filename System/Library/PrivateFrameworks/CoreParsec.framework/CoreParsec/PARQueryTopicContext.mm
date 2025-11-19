@interface PARQueryTopicContext
- (PARQueryTopicContext)initWithCoder:(id)a3;
- (PARQueryTopicContext)initWithTopic:(id)a3 index:(int64_t)a4;
- (int64_t)index;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARQueryTopicContext

- (int64_t)index
{
  v2 = [(PARQueryTopicContext *)self contextId];
  v3 = [v2 integerValue];

  return v3;
}

- (PARQueryTopicContext)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PARQueryTopicContext;
  v5 = [(PARQueryTopicContext *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextId"];
    contextId = v5->_contextId;
    v5->_contextId = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"topic"];
    topic = v5->_topic;
    v5->_topic = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PARQueryTopicContext *)self contextId];
  [v4 encodeObject:v5 forKey:@"contextId"];

  v6 = [(PARQueryTopicContext *)self topic];
  [v4 encodeObject:v6 forKey:@"topic"];
}

- (PARQueryTopicContext)initWithTopic:(id)a3 index:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PARQueryTopicContext;
  v7 = [(PARQueryTopicContext *)&v11 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v9 = [v8 stringValue];
    [(PARQueryTopicContext *)v7 setContextId:v9];

    [(PARQueryTopicContext *)v7 setTopic:v6];
  }

  return v7;
}

@end