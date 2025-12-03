@interface MLTransactionContext
- (MLTransactionContext)initWithCoder:(id)coder;
- (MLTransactionContext)initWithPrivacyContext:(id)context path:(id)path priorityLevel:(unint64_t)level options:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MLTransactionContext

- (MLTransactionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MLTransactionContext;
  v5 = [(MLTransactionContext *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MLTransactionContextPathKey"];
    path = v5->_path;
    v5->_path = v6;

    v5->_priorityLevel = [coderCopy decodeIntegerForKey:@"MLTransactionContextPriorityLevelKey"];
    v5->_options = [coderCopy decodeIntegerForKey:@"MLTransactionContextOptionsKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MLTransactionContextPrivacyContextKey"];
    privacyContext = v5->_privacyContext;
    v5->_privacyContext = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  path = self->_path;
  coderCopy = coder;
  [coderCopy encodeObject:path forKey:@"MLTransactionContextPathKey"];
  [coderCopy encodeInteger:self->_priorityLevel forKey:@"MLTransactionContextPriorityLevelKey"];
  [coderCopy encodeInteger:self->_options forKey:@"MLTransactionContextOptionsKey"];
  [coderCopy encodeObject:self->_privacyContext forKey:@"MLTransactionContextPrivacyContextKey"];
}

- (MLTransactionContext)initWithPrivacyContext:(id)context path:(id)path priorityLevel:(unint64_t)level options:(unint64_t)options
{
  contextCopy = context;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = MLTransactionContext;
  v13 = [(MLTransactionContext *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_privacyContext, context);
    v15 = [pathCopy copy];
    path = v14->_path;
    v14->_path = v15;

    v14->_priorityLevel = level;
    v14->_options = options;
  }

  return v14;
}

@end