@interface OcclusionDebugView
- (_TtC18CosmeticAssessment18OcclusionDebugView)initWithCoder:(id)coder;
@end

@implementation OcclusionDebugView

- (_TtC18CosmeticAssessment18OcclusionDebugView)initWithCoder:(id)coder
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_configuration;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_observedRectangleView;
  v6 = objc_allocWithZone(type metadata accessor for ObservedRectangleView());
  *(&self->super.super.super.isa + v5) = sub_247C834A8(MEMORY[0x277D84F90]);
  v7 = self + OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_lastUpdateTimestamp;
  *v7 = 0;
  v7[8] = 1;
  result = sub_247D20398();
  __break(1u);
  return result;
}

@end