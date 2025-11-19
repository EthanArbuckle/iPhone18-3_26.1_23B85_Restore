@interface DOCRootNode
- (NSString)description;
- (NSString)filename;
- (NSString)providerDomainID;
- (NSString)providerID;
- (_TtC26DocumentManagerExecutables11DOCRootNode)initWithSubject:(id)a3;
- (id)identifier;
@end

@implementation DOCRootNode

- (_TtC26DocumentManagerExecutables11DOCRootNode)initWithSubject:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  v3 = DOCRootNode.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (id)identifier
{
  v2 = self;
  v3 = [(FIProxyNode *)v2 source];
  v4 = [v3 identifier];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v7);

  return v5;
}

- (NSString)providerDomainID
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain))
  {
    v2 = [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain) identifier];
  }

  else
  {
    v3 = self;
    v4 = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249BCA190);

    v2 = v4;
  }

  return v2;
}

- (NSString)providerID
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain))
  {
    v2 = [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain) providerID];
  }

  else
  {
    v3 = self;
    v4 = MEMORY[0x24C1FAD20](0xD000000000000013, 0x8000000249BCA1B0);

    v2 = v4;
  }

  return v2;
}

- (NSString)filename
{
  v2 = self;
  v3 = [(FIProxyNode *)v2 source];
  v4 = [v3 filename];

  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x24C1FAD20](v5);
  }

  return v4;
}

@end