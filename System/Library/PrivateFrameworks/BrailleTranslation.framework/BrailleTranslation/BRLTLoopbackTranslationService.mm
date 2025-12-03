@interface BRLTLoopbackTranslationService
- (BRLTLoopbackTranslationService)initWithServiceIdentifier:(id)identifier connection:(id)connection loopbackService:(id)service;
@end

@implementation BRLTLoopbackTranslationService

- (BRLTLoopbackTranslationService)initWithServiceIdentifier:(id)identifier connection:(id)connection loopbackService:(id)service
{
  serviceCopy = service;
  v13.receiver = self;
  v13.super_class = BRLTLoopbackTranslationService;
  v10 = [(BRLTTranslationService *)&v13 initWithServiceIdentifier:identifier connection:connection];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_loopbackService, service);
  }

  return v11;
}

@end