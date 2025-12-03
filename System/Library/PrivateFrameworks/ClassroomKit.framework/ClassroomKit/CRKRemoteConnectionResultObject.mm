@interface CRKRemoteConnectionResultObject
- (CRKRemoteConnectionResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKRemoteConnectionResultObject

- (CRKRemoteConnectionResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CRKRemoteConnectionResultObject;
  v5 = [(CATTaskResultObject *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"response"];
    v5->_response = [v6 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKRemoteConnectionResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKRemoteConnectionResultObject response](self, "response", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"response"];
}

@end