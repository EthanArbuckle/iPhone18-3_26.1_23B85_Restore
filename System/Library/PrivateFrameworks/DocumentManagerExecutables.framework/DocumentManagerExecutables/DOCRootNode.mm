@interface DOCRootNode
- (NSString)description;
- (NSString)filename;
- (NSString)providerDomainID;
- (NSString)providerID;
- (_TtC26DocumentManagerExecutables11DOCRootNode)initWithSubject:(id)subject;
- (id)identifier;
@end

@implementation DOCRootNode

- (_TtC26DocumentManagerExecutables11DOCRootNode)initWithSubject:(id)subject
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  v3 = DOCRootNode.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (id)identifier
{
  selfCopy = self;
  source = [(FIProxyNode *)selfCopy source];
  identifier = [source identifier];

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
    identifier = [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain) identifier];
  }

  else
  {
    selfCopy = self;
    v4 = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249BCA190);

    identifier = v4;
  }

  return identifier;
}

- (NSString)providerID
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain))
  {
    providerID = [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain) providerID];
  }

  else
  {
    selfCopy = self;
    v4 = MEMORY[0x24C1FAD20](0xD000000000000013, 0x8000000249BCA1B0);

    providerID = v4;
  }

  return providerID;
}

- (NSString)filename
{
  selfCopy = self;
  source = [(FIProxyNode *)selfCopy source];
  filename = [source filename];

  if (!filename)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    filename = MEMORY[0x24C1FAD20](v5);
  }

  return filename;
}

@end