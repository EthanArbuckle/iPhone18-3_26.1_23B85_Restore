@interface DADraftMessageRequest
- (id)description;
@end

@implementation DADraftMessageRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = DADraftMessageRequest;
  v4 = [(DADraftMessageRequest *)&v9 description];
  message = [(DADraftMessageRequest *)self message];
  subject = [message subject];
  v7 = [v3 stringWithFormat:@"%@ subject %@", v4, subject];

  return v7;
}

@end