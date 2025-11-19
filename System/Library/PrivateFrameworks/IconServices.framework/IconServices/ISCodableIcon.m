@interface ISCodableIcon
- (id)_init;
@end

@implementation ISCodableIcon

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ISCodableIcon;
  return [(ISIcon *)&v3 _init];
}

@end