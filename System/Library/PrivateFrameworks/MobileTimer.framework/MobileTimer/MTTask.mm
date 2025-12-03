@interface MTTask
+ (id)taskWithIdentifier:(id)identifier delay:(double)delay completableBlock:(id)block;
- (id)description;
@end

@implementation MTTask

+ (id)taskWithIdentifier:(id)identifier delay:(double)delay completableBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  v9 = objc_opt_new();
  [v9 setIdentifier:identifierCopy];

  [v9 setDelay:delay];
  [v9 setCompletableBlock:blockCopy];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(MTTask *)self identifier];
  [(MTTask *)self delay];
  v7 = [v3 stringWithFormat:@"<%@:%p %@ delay:%f>", v4, self, identifier, v6];

  return v7;
}

@end