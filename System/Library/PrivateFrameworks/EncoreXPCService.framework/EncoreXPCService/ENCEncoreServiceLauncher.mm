@interface ENCEncoreServiceLauncher
- (ENCEncoreServiceLauncher)init;
@end

@implementation ENCEncoreServiceLauncher

- (ENCEncoreServiceLauncher)init
{
  v6.receiver = self;
  v6.super_class = ENCEncoreServiceLauncher;
  v2 = [(ENCEncoreServiceLauncher *)&v6 init];
  if (v2)
  {
    v3 = +[EncoreService service];
    encoreService = v2->_encoreService;
    v2->_encoreService = v3;
  }

  return v2;
}

@end