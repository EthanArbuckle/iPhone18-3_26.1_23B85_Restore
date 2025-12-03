@interface AXLTCaption
- (BOOL)privileged;
- (NSArray)segments;
- (NSAttributedString)textWithConfidence;
- (_TtC17LiveTranscription11AXLTCaption)init;
- (_TtC17LiveTranscription11AXLTCaption)initWithCaption:(id)caption;
- (_TtC17LiveTranscription11AXLTCaption)initWithId:(int64_t)id appID:(id)d appName:(id)name time:(id)time text:(id)text segments:(id)segments placeholder:(id)placeholder actionType:(int64_t)self0;
- (_TtC17LiveTranscription11AXLTCaption)initWithId:(int64_t)id liveCaption:(id)caption;
- (int64_t)actionType;
- (int64_t)resultType;
- (void)setActionType:(int64_t)type;
- (void)setPrivileged:(BOOL)privileged;
- (void)setResultType:(int64_t)type;
- (void)setSegments:(id)segments;
@end

@implementation AXLTCaption

- (NSArray)segments
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  v4 = *(self + v3);
  sub_25603AB14(0, &qword_27F825818, 0x277CDCF18);

  v5 = sub_25605374C();

  return v5;
}

- (void)setSegments:(id)segments
{
  sub_25603AB14(0, &qword_27F825818, 0x277CDCF18);
  v4 = sub_25605375C();
  v5 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSAttributedString)textWithConfidence
{
  v3 = sub_25605335C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25603AB14(0, &qword_27F8256D0, 0x277CCA898);
  v8 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  v9 = sub_25605383C();

  return v9;
}

- (int64_t)actionType
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActionType:(int64_t)type
{
  v5 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (int64_t)resultType
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setResultType:(int64_t)type
{
  v5 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (BOOL)privileged
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPrivileged:(BOOL)privileged
{
  v5 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  swift_beginAccess();
  *(self + v5) = privileged;
}

- (_TtC17LiveTranscription11AXLTCaption)initWithId:(int64_t)id appID:(id)d appName:(id)name time:(id)time text:(id)text segments:(id)segments placeholder:(id)placeholder actionType:(int64_t)self0
{
  v10 = sub_2560536AC();
  v12 = v11;
  v13 = sub_2560536AC();
  v15 = v14;
  v16 = sub_2560536AC();
  v18 = v17;
  v19 = sub_2560536AC();
  v21 = v20;
  sub_25603AB14(0, &qword_27F825818, 0x277CDCF18);
  v22 = sub_25605375C();
  v23 = sub_2560536AC();
  return AXLTCaption.init(id:appID:appName:time:text:segments:placeholder:actionType:)(id, v10, v12, v13, v15, v16, v18, v19, v21, v22, v23, v24, type);
}

- (_TtC17LiveTranscription11AXLTCaption)initWithId:(int64_t)id liveCaption:(id)caption
{
  captionCopy = caption;
  v6 = sub_256039C84(id, captionCopy);

  return v6;
}

- (_TtC17LiveTranscription11AXLTCaption)initWithCaption:(id)caption
{
  captionCopy = caption;
  v4 = sub_256039F04(captionCopy);

  return v4;
}

- (_TtC17LiveTranscription11AXLTCaption)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end