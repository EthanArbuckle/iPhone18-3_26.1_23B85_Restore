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
  v5 = [(DADraftMessageRequest *)self message];
  v6 = [v5 subject];
  v7 = [v3 stringWithFormat:@"%@ subject %@", v4, v6];

  return v7;
}

@end