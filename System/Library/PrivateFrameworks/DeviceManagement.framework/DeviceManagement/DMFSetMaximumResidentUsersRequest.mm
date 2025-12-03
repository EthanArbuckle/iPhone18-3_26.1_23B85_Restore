@interface DMFSetMaximumResidentUsersRequest
- (DMFSetMaximumResidentUsersRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFSetMaximumResidentUsersRequest

- (DMFSetMaximumResidentUsersRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = DMFSetMaximumResidentUsersRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"count"];
    v5->_count = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFSetMaximumResidentUsersRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFSetMaximumResidentUsersRequest count](self, "count", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"count"];
}

@end