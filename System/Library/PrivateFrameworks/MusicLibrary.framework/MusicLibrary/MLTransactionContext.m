@interface MLTransactionContext
- (MLTransactionContext)initWithCoder:(id)a3;
- (MLTransactionContext)initWithPrivacyContext:(id)a3 path:(id)a4 priorityLevel:(unint64_t)a5 options:(unint64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MLTransactionContext

- (MLTransactionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MLTransactionContext;
  v5 = [(MLTransactionContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MLTransactionContextPathKey"];
    path = v5->_path;
    v5->_path = v6;

    v5->_priorityLevel = [v4 decodeIntegerForKey:@"MLTransactionContextPriorityLevelKey"];
    v5->_options = [v4 decodeIntegerForKey:@"MLTransactionContextOptionsKey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MLTransactionContextPrivacyContextKey"];
    privacyContext = v5->_privacyContext;
    v5->_privacyContext = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  path = self->_path;
  v5 = a3;
  [v5 encodeObject:path forKey:@"MLTransactionContextPathKey"];
  [v5 encodeInteger:self->_priorityLevel forKey:@"MLTransactionContextPriorityLevelKey"];
  [v5 encodeInteger:self->_options forKey:@"MLTransactionContextOptionsKey"];
  [v5 encodeObject:self->_privacyContext forKey:@"MLTransactionContextPrivacyContextKey"];
}

- (MLTransactionContext)initWithPrivacyContext:(id)a3 path:(id)a4 priorityLevel:(unint64_t)a5 options:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = MLTransactionContext;
  v13 = [(MLTransactionContext *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_privacyContext, a3);
    v15 = [v12 copy];
    path = v14->_path;
    v14->_path = v15;

    v14->_priorityLevel = a5;
    v14->_options = a6;
  }

  return v14;
}

@end