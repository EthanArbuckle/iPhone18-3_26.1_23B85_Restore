@interface EDComment
- (id)description;
@end

@implementation EDComment

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDComment;
  v2 = [(EDComment *)&v4 description];

  return v2;
}

@end