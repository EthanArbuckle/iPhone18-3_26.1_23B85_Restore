@interface CPSContactButtonRepresentation
- (CPSContactButtonRepresentation)initWithIdentifier:(id)identifier title:(id)title image:(id)image type:(int64_t)type;
- (NSUUID)identifier;
- (void)setIdentifier:(id)identifier;
@end

@implementation CPSContactButtonRepresentation

- (NSUUID)identifier
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContactButtonRepresentation.identifier.getter(v5);
  v6.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);

  return v6.super.isa;
}

- (void)setIdentifier:(id)identifier
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ContactButtonRepresentation.identifier.setter(v6);
}

- (CPSContactButtonRepresentation)initWithIdentifier:(id)identifier title:(id)title image:(id)image type:(int64_t)type
{
  v9 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (title)
  {
    title = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  imageCopy = image;
  return ContactButtonRepresentation.init(identifier:title:image:type:)(v11, title, v13, image, type);
}

@end