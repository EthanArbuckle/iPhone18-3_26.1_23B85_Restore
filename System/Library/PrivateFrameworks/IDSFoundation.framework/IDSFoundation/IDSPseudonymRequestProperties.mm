@interface IDSPseudonymRequestProperties
+ (id)defaultProperties;
- (IDSPseudonymRequestProperties)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation IDSPseudonymRequestProperties

+ (id)defaultProperties
{
  v2 = objc_alloc_init(self);
  [v2 setRequestTimeoutInterval:600.0];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p requestTimeoutInterval: %f>", v5, self, *&self->_requestTimeoutInterval];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 1) = *&self->_requestTimeoutInterval;
  return result;
}

- (IDSPseudonymRequestProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = IDSPseudonymRequestProperties;
  v5 = [(IDSPseudonymRequestProperties *)&v8 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timeout"];
    v5->_requestTimeoutInterval = v6;
  }

  return v5;
}

@end