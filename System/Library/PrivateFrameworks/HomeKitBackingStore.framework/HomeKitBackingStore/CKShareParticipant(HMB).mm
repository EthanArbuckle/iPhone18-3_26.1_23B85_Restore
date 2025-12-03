@interface CKShareParticipant(HMB)
- (BOOL)hmbIsEqualToParticipant:()HMB;
@end

@implementation CKShareParticipant(HMB)

- (BOOL)hmbIsEqualToParticipant:()HMB
{
  v4 = a3;
  if ([self isEqual:v4] && (v5 = objc_msgSend(self, "acceptanceStatus"), v5 == objc_msgSend(v4, "acceptanceStatus")))
  {
    permission = [self permission];
    v7 = permission == [v4 permission];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end