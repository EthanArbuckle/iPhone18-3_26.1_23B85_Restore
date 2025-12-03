@interface CDPUIWalrusSwiftUIFactory
- (CDPUIWalrusSwiftUIFactory)init;
- (id)makeSwiftUIViewWithCdpContext:(id)context advancedDataProtectionViewModelDelegate:(id)delegate presentingViewController:(id)controller;
- (void)makeSwiftUIUpsellViewWithCDPContext:(id)context urlBag:(id)bag networkObserver:(id)observer viewModelDelegate:(id)delegate completion:(id)completion;
@end

@implementation CDPUIWalrusSwiftUIFactory

- (id)makeSwiftUIViewWithCdpContext:(id)context advancedDataProtectionViewModelDelegate:(id)delegate presentingViewController:(id)controller
{
  contextCopy = context;
  swift_unknownObjectRetain();
  controllerCopy = controller;
  selfCopy = self;
  v11 = sub_245217664(contextCopy, delegate, controllerCopy);

  swift_unknownObjectRelease();

  return v11;
}

- (void)makeSwiftUIUpsellViewWithCDPContext:(id)context urlBag:(id)bag networkObserver:(id)observer viewModelDelegate:(id)delegate completion:(id)completion
{
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  contextCopy = context;
  bagCopy = bag;
  observerCopy = observer;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_245217A10(contextCopy, bagCopy, observerCopy, delegate, sub_245217368, v13);

  swift_unknownObjectRelease();
}

- (CDPUIWalrusSwiftUIFactory)init
{
  v3.receiver = self;
  v3.super_class = CDPUIWalrusSwiftUIFactory;
  return [(CDPUIWalrusSwiftUIFactory *)&v3 init];
}

@end