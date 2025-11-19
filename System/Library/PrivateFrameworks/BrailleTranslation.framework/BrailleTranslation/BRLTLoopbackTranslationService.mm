@interface BRLTLoopbackTranslationService
- (BRLTLoopbackTranslationService)initWithServiceIdentifier:(id)a3 connection:(id)a4 loopbackService:(id)a5;
@end

@implementation BRLTLoopbackTranslationService

- (BRLTLoopbackTranslationService)initWithServiceIdentifier:(id)a3 connection:(id)a4 loopbackService:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = BRLTLoopbackTranslationService;
  v10 = [(BRLTTranslationService *)&v13 initWithServiceIdentifier:a3 connection:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_loopbackService, a5);
  }

  return v11;
}

@end