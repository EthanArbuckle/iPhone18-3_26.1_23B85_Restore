@interface AttachmentDataReport
- (_TtC14CopresenceCore20AttachmentDataReport)init;
- (_TtC14CopresenceCore20AttachmentDataReport)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AttachmentDataReport

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AttachmentDataReport.encode(with:)(v4);
}

- (_TtC14CopresenceCore20AttachmentDataReport)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized AttachmentDataReport.init(coder:)(v3);

  return v4;
}

- (_TtC14CopresenceCore20AttachmentDataReport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end