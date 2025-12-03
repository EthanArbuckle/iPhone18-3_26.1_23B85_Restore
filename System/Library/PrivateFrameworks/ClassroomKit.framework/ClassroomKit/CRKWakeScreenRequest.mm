@interface CRKWakeScreenRequest
- (CRKWakeScreenRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKWakeScreenRequest

- (CRKWakeScreenRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CRKWakeScreenRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shouldBecomeExclusive"];
    *(&v5->super._handlesNotifications + 1) = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKWakeScreenRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKWakeScreenRequest shouldBecomeExclusive](self, "shouldBecomeExclusive", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"shouldBecomeExclusive"];
}

@end