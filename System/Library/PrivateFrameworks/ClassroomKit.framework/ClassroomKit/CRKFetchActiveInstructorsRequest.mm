@interface CRKFetchActiveInstructorsRequest
- (CRKFetchActiveInstructorsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchActiveInstructorsRequest

- (CRKFetchActiveInstructorsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CRKFetchActiveInstructorsRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"includeImages"];
    *(&v5->super._handlesNotifications + 1) = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[CRKFetchActiveInstructorsRequest includeImages](self, "includeImages")}];
  [coderCopy encodeObject:v6 forKey:@"includeImages"];
}

@end