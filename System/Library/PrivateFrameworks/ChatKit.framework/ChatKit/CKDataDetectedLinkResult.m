@interface CKDataDetectedLinkResult
- (NSURL)url;
- (_NSRange)range;
- (_TtC7ChatKit24CKDataDetectedLinkResult)init;
@end

@implementation CKDataDetectedLinkResult

- (_NSRange)range
{
  v2 = self + OBJC_IVAR____TtC7ChatKit24CKDataDetectedLinkResult_range;
  v3 = *(self + OBJC_IVAR____TtC7ChatKit24CKDataDetectedLinkResult_range);
  v4 = *(v2 + 1);
  result.length = v4;
  result.location = v3;
  return result;
}

- (NSURL)url
{
  v3 = sub_190D515F0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC7ChatKit24CKDataDetectedLinkResult_url, v3, v5);
  v8 = sub_190D51570();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (_TtC7ChatKit24CKDataDetectedLinkResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end