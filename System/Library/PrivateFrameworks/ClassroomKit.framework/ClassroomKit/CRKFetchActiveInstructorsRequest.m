@interface CRKFetchActiveInstructorsRequest
- (CRKFetchActiveInstructorsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchActiveInstructorsRequest

- (CRKFetchActiveInstructorsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRKFetchActiveInstructorsRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"includeImages"];
    *(&v5->super._handlesNotifications + 1) = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[CRKFetchActiveInstructorsRequest includeImages](self, "includeImages")}];
  [v5 encodeObject:v6 forKey:@"includeImages"];
}

@end