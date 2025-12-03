@interface CKTranscriptBackgroundBalloonAttributes
- (CGPoint)center;
- (CGRect)frame;
- (CGSize)size;
- (NSString)chatItemGuid;
- (_TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes)init;
- (_TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes)initWithChatItemGuid:(id)guid center:(CGPoint)center size:(CGSize)size hasBalloonShape:(BOOL)shape bubblePath:(id)path;
@end

@implementation CKTranscriptBackgroundBalloonAttributes

- (_TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes)initWithChatItemGuid:(id)guid center:(CGPoint)center size:(CGSize)size hasBalloonShape:(BOOL)shape bubblePath:(id)path
{
  height = size.height;
  width = size.width;
  y = center.y;
  x = center.x;
  v14 = sub_190D56F10();
  v15 = (self + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_chatItemGuid);
  *v15 = v14;
  v15[1] = v16;
  v17 = (self + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_center);
  *v17 = x;
  v17[1] = y;
  v18 = (self + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_size);
  *v18 = width;
  v18[1] = height;
  *(self + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_hasBalloonShape) = shape;
  *(self + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_bubblePath) = path;
  v21.receiver = self;
  v21.super_class = type metadata accessor for CKTranscriptBackgroundBalloonAttributes();
  pathCopy = path;
  return [(CKTranscriptBackgroundBalloonAttributes *)&v21 init];
}

- (NSString)chatItemGuid
{
  sub_190D52690();
  v2 = sub_190D56ED0();

  return v2;
}

- (CGPoint)center
{
  v2 = *(self + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_center);
  v3 = *(self + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_center + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGSize)size
{
  v2 = *(self + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_size);
  v3 = *(self + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_size + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)frame
{
  Frame = CGRectMakeFrame(*(self + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_center), *(self + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_center + 8), *(self + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_size));
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = Frame;
  return result;
}

- (_TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end