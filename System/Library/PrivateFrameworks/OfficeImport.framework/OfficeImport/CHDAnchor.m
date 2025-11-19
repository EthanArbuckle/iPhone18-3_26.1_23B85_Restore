@interface CHDAnchor
- (id)description;
@end

@implementation CHDAnchor

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDAnchor;
  v2 = [(CHDAnchor *)&v4 description];

  return v2;
}

@end