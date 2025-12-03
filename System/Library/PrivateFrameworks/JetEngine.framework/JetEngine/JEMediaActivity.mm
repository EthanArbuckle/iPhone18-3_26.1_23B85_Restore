@interface JEMediaActivity
- (JEMediaActivity)init;
- (JEMediaActivity)initWithType:(int64_t)type playlistItem:(id)item pipeline:(id)pipeline topic:(id)topic;
- (JEMediaPlaylistItem)playlistItem;
- (id)eventDataForTransitioningEvents;
- (id)startMetricsFields;
- (id)stopMetricsFields;
- (int64_t)type;
- (unint64_t)positionWithOverallPosition:(unint64_t)position;
- (void)setPlaylistItem:(id)item;
- (void)setType:(int64_t)type;
@end

@implementation JEMediaActivity

- (int64_t)type
{
  v3 = OBJC_IVAR___JEMediaActivity_type;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setType:(int64_t)type
{
  v5 = OBJC_IVAR___JEMediaActivity_type;
  swift_beginAccess();
  *(&self->super.isa + v5) = type;
}

- (JEMediaPlaylistItem)playlistItem
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPlaylistItem:(id)item
{
  v5 = OBJC_IVAR___JEMediaActivity_playlistItem;
  swift_beginAccess();
  *(&self->super.isa + v5) = item;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (JEMediaActivity)initWithType:(int64_t)type playlistItem:(id)item pipeline:(id)pipeline topic:(id)topic
{
  v10 = sub_1AB460544();
  v12 = v11;
  swift_getObjectType();
  swift_unknownObjectRetain();
  pipelineCopy = pipeline;

  return sub_1AB2D56A4(type, item, pipelineCopy, v10, v12, self);
}

- (unint64_t)positionWithOverallPosition:(unint64_t)position
{
  selfCopy = self;
  v5 = sub_1AB2D3B88(position);

  return v5;
}

- (id)eventDataForTransitioningEvents
{
  selfCopy = self;
  sub_1AB2D464C(v11);

  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1AB461D84();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)startMetricsFields
{

  v2 = sub_1AB4602D4();

  return v2;
}

- (id)stopMetricsFields
{

  v2 = sub_1AB4602D4();

  return v2;
}

- (JEMediaActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end