@interface CRPunchoutCommand
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CRPunchoutCommand

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = CRPunchoutCommand;
  v5 = [(CRBasicPayloadCommand *)&v9 copyWithZone:?];
  v6 = [(CRPunchoutCommand *)self punchout];
  v7 = [v6 copyWithZone:a3];
  [v5 setPunchout:v7];

  return v5;
}

@end