@interface ArtworkItemProvider
- (_TtC12GameStoreKit19ArtworkItemProvider)init;
- (_TtC12GameStoreKit19ArtworkItemProvider)initWithItem:(id)item typeIdentifier:(id)identifier;
- (id)loadDataRepresentationForTypeIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation ArtworkItemProvider

- (id)loadDataRepresentationForTypeIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_24F92B0D8();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  v11 = ArtworkItemProvider.loadDataRepresentation(forTypeIdentifier:completionHandler:)(v6, v8, sub_24EB13B50, v9);

  return v11;
}

- (_TtC12GameStoreKit19ArtworkItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit19ArtworkItemProvider)initWithItem:(id)item typeIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end