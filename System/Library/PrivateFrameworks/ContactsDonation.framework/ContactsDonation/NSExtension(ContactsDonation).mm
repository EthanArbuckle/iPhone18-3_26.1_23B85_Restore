@interface NSExtension(ContactsDonation)
- (id)_cnd_requestWithInputItems:()ContactsDonation;
@end

@implementation NSExtension(ContactsDonation)

- (id)_cnd_requestWithInputItems:()ContactsDonation
{
  v4 = MEMORY[0x277CFBE90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  completionHandlerAdapter = [v6 completionHandlerAdapter];
  [self beginExtensionRequestWithInputItems:v5 completion:completionHandlerAdapter];

  future = [v6 future];
  [future addFailureBlock:&__block_literal_global_3];

  return future;
}

@end