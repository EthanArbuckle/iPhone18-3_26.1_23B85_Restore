@interface AXLTCaption
- (BOOL)privileged;
- (NSArray)segments;
- (NSAttributedString)textWithConfidence;
- (_TtC17LiveTranscription11AXLTCaption)init;
- (_TtC17LiveTranscription11AXLTCaption)initWithCaption:(id)a3;
- (_TtC17LiveTranscription11AXLTCaption)initWithId:(int64_t)a3 appID:(id)a4 appName:(id)a5 time:(id)a6 text:(id)a7 segments:(id)a8 placeholder:(id)a9 actionType:(int64_t)a10;
- (_TtC17LiveTranscription11AXLTCaption)initWithId:(int64_t)a3 liveCaption:(id)a4;
- (int64_t)actionType;
- (int64_t)resultType;
- (void)setActionType:(int64_t)a3;
- (void)setPrivileged:(BOOL)a3;
- (void)setResultType:(int64_t)a3;
- (void)setSegments:(id)a3;
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

- (void)setSegments:(id)a3
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

- (void)setActionType:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)resultType
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setResultType:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)privileged
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPrivileged:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (_TtC17LiveTranscription11AXLTCaption)initWithId:(int64_t)a3 appID:(id)a4 appName:(id)a5 time:(id)a6 text:(id)a7 segments:(id)a8 placeholder:(id)a9 actionType:(int64_t)a10
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
  return AXLTCaption.init(id:appID:appName:time:text:segments:placeholder:actionType:)(a3, v10, v12, v13, v15, v16, v18, v19, v21, v22, v23, v24, a10);
}

- (_TtC17LiveTranscription11AXLTCaption)initWithId:(int64_t)a3 liveCaption:(id)a4
{
  v5 = a4;
  v6 = sub_256039C84(a3, v5);

  return v6;
}

- (_TtC17LiveTranscription11AXLTCaption)initWithCaption:(id)a3
{
  v3 = a3;
  v4 = sub_256039F04(v3);

  return v4;
}

- (_TtC17LiveTranscription11AXLTCaption)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end