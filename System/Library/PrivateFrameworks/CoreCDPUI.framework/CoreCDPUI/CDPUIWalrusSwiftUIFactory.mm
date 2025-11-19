@interface CDPUIWalrusSwiftUIFactory
- (CDPUIWalrusSwiftUIFactory)init;
- (id)makeSwiftUIViewWithCdpContext:(id)a3 advancedDataProtectionViewModelDelegate:(id)a4 presentingViewController:(id)a5;
- (void)makeSwiftUIUpsellViewWithCDPContext:(id)a3 urlBag:(id)a4 networkObserver:(id)a5 viewModelDelegate:(id)a6 completion:(id)a7;
@end

@implementation CDPUIWalrusSwiftUIFactory

- (id)makeSwiftUIViewWithCdpContext:(id)a3 advancedDataProtectionViewModelDelegate:(id)a4 presentingViewController:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  v11 = sub_245217664(v8, a4, v9);

  swift_unknownObjectRelease();

  return v11;
}

- (void)makeSwiftUIUpsellViewWithCDPContext:(id)a3 urlBag:(id)a4 networkObserver:(id)a5 viewModelDelegate:(id)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  swift_unknownObjectRetain();
  v17 = self;
  sub_245217A10(v14, v15, v16, a6, sub_245217368, v13);

  swift_unknownObjectRelease();
}

- (CDPUIWalrusSwiftUIFactory)init
{
  v3.receiver = self;
  v3.super_class = CDPUIWalrusSwiftUIFactory;
  return [(CDPUIWalrusSwiftUIFactory *)&v3 init];
}

@end