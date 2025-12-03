@interface MomentsImageTextAttachment
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (_TtC9MomentsUI26MomentsImageTextAttachment)initWithCoder:(id)coder;
- (_TtC9MomentsUI26MomentsImageTextAttachment)initWithData:(id)data ofType:(id)type;
- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container;
@end

@implementation MomentsImageTextAttachment

- (_TtC9MomentsUI26MomentsImageTextAttachment)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_imageView) = 0;
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_size);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_viewProvider) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container
{
  viewCopy = view;
  swift_unknownObjectRetain();
  containerCopy = container;
  selfCopy = self;
  v12 = MomentsImageTextAttachment.viewProvider(for:location:textContainer:)(view, location, container);

  swift_unknownObjectRelease();

  return v12;
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  height = fragment.size.height;
  width = fragment.size.width;
  v11 = fragment.origin.y;
  v12 = fragment.origin.x;
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  containerCopy = container;
  selfCopy = self;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v28.receiver = selfCopy;
  v28.super_class = type metadata accessor for MomentsImageTextAttachment();
  [(MomentsImageTextAttachment *)&v28 attachmentBoundsForAttributes:isa location:location textContainer:containerCopy proposedLineFragment:v12 position:v11, width, height, x, y];
  v20 = v19;

  v21 = (*((*MEMORY[0x277D85000] & selfCopy->super.super.isa) + 0x80))();
  v23 = v22;
  swift_unknownObjectRelease();

  v24 = round(v23 / -5.0);
  v25 = v20;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v24;
  result.origin.x = v25;
  return result;
}

- (_TtC9MomentsUI26MomentsImageTextAttachment)initWithData:(id)data ofType:(id)type
{
  if (data)
  {
    dataCopy = data;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end