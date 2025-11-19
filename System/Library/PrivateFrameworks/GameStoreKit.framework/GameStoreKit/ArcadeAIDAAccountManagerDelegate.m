@interface ArcadeAIDAAccountManagerDelegate
- (_TtC12GameStoreKitP33_DA95C10B247948D0168568265F7A28FC32ArcadeAIDAAccountManagerDelegate)init;
- (id)accountsForAccountManager:(id)a3;
@end

@implementation ArcadeAIDAAccountManagerDelegate

- (id)accountsForAccountManager:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24EAA5AA0(v4);

  type metadata accessor for AIDAServiceType(0);
  sub_24E69A5C4(0, &unk_27F226CE0);
  sub_24EAA5B98();
  v6 = sub_24F92AE28();

  return v6;
}

- (_TtC12GameStoreKitP33_DA95C10B247948D0168568265F7A28FC32ArcadeAIDAAccountManagerDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArcadeAIDAAccountManagerDelegate();
  return [(ArcadeAIDAAccountManagerDelegate *)&v3 init];
}

@end