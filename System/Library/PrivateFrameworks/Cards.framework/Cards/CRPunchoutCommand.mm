@interface CRPunchoutCommand
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRPunchoutCommand

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CRPunchoutCommand;
  v5 = [(CRBasicPayloadCommand *)&v9 copyWithZone:?];
  punchout = [(CRPunchoutCommand *)self punchout];
  v7 = [punchout copyWithZone:zone];
  [v5 setPunchout:v7];

  return v5;
}

@end