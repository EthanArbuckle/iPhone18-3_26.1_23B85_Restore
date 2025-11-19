@interface COMessageSessionNotice
- (COMessageSessionNotice)init;
@end

@implementation COMessageSessionNotice

- (COMessageSessionNotice)init
{
  v3.receiver = self;
  v3.super_class = COMessageSessionNotice;
  return [(COMessageSessionNotice *)&v3 init];
}

@end