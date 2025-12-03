@interface AttachmentDataReport
- (_TtC14CopresenceCore20AttachmentDataReport)init;
- (_TtC14CopresenceCore20AttachmentDataReport)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AttachmentDataReport

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AttachmentDataReport.encode(with:)(coderCopy);
}

- (_TtC14CopresenceCore20AttachmentDataReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized AttachmentDataReport.init(coder:)(coderCopy);

  return v4;
}

- (_TtC14CopresenceCore20AttachmentDataReport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end