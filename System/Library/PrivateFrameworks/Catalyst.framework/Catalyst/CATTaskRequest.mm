@interface CATTaskRequest
- (CATTaskRequest)init;
- (CATTaskRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATTaskRequest

- (CATTaskRequest)init
{
  v3.receiver = self;
  v3.super_class = CATTaskRequest;
  return [(CATTaskRequest *)&v3 init];
}

- (CATTaskRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CATTaskRequest;
  v5 = [(CATTaskRequest *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handlesNotifications"];
    v5->_handlesNotifications = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[CATTaskRequest handlesNotifications](self, "handlesNotifications")}];
  [coderCopy encodeObject:v6 forKey:@"handlesNotifications"];
}

@end