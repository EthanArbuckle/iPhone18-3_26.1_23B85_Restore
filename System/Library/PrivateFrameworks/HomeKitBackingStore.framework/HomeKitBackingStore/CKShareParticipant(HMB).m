@interface CKShareParticipant(HMB)
- (BOOL)hmbIsEqualToParticipant:()HMB;
@end

@implementation CKShareParticipant(HMB)

- (BOOL)hmbIsEqualToParticipant:()HMB
{
  v4 = a3;
  if ([a1 isEqual:v4] && (v5 = objc_msgSend(a1, "acceptanceStatus"), v5 == objc_msgSend(v4, "acceptanceStatus")))
  {
    v6 = [a1 permission];
    v7 = v6 == [v4 permission];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end