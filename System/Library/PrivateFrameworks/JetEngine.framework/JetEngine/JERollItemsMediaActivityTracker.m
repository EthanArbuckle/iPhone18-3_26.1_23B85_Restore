@interface JERollItemsMediaActivityTracker
- (JERollItemsMediaActivityTracker)init;
- (JERollItemsMediaActivityTracker)initWithPipeline:(id)a3 playlist:(id)a4 eventData:(id)a5 topic:(id)a6;
- (void)jumpFromOverallPosition:(unint64_t)a3 fromRollItem:(id)a4 toRollItem:(id)a5 eventData:(id)a6;
- (void)playStartedWithPlaybackRate:(float)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 rollItem:(id)a7 eventData:(id)a8;
- (void)playStoppedAtOverallPosition:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6;
- (void)resetEventData:(id)a3;
- (void)seekStoppedAtOverallPosition:(unint64_t)a3 type:(id)a4 reason:(id)a5 rollItem:(id)a6 eventData:(id)a7;
- (void)updateEventData:(id)a3;
@end

@implementation JERollItemsMediaActivityTracker

- (JERollItemsMediaActivityTracker)initWithPipeline:(id)a3 playlist:(id)a4 eventData:(id)a5 topic:(id)a6
{
  v6 = a5;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    v6 = sub_1AB460954();
  }

  v9 = sub_1AB460544();
  v11 = v10;
  v12 = a3;
  swift_unknownObjectRetain();
  return RollItemsMediaActivityTracker.init(pipeline:playlist:eventData:topic:)(v12, a4, v6, v9, v11);
}

- (void)playStartedWithPlaybackRate:(float)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 rollItem:(id)a7 eventData:(id)a8
{
  v8 = a8;
  if (a8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    v8 = sub_1AB460954();
  }

  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = self;
  _s9JetEngine29RollItemsMediaActivityTrackerC28playStartedAtOverallPosition_4type6reason8rollItem9eventDatays6UInt64V_So07JEMediaF11TriggerTypeaSo0tF15PlayStartReasonaSo09JEHLSRollP0CSaySDySSypGGSgtF_0(a4, v14, v15, v16, v8);
}

- (void)playStoppedAtOverallPosition:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6
{
  v6 = a6;
  if (a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    v6 = sub_1AB460954();
  }

  v11 = sub_1AB460544();
  v13 = v12;
  v14 = sub_1AB460544();
  v16 = v15;
  v17 = a4;
  v18 = a5;
  v19 = self;
  sub_1AB317F54(0, a3, v11, v13, v14, v16, v6);
}

- (void)jumpFromOverallPosition:(unint64_t)a3 fromRollItem:(id)a4 toRollItem:(id)a5 eventData:(id)a6
{
  v6 = a6;
  if (a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    v6 = sub_1AB460954();
  }

  v11 = a4;
  v12 = a5;
  v13 = self;
  v15.value._rawValue = v6;
  RollItemsMediaActivityTracker.jumpFromOverallPosition(_:fromRollItem:toRollItem:eventData:)(a3, v11, v12, v15);
}

- (void)seekStoppedAtOverallPosition:(unint64_t)a3 type:(id)a4 reason:(id)a5 rollItem:(id)a6 eventData:(id)a7
{
  v7 = a7;
  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    v7 = sub_1AB460954();
  }

  v12 = sub_1AB460544();
  v14 = v13;
  v15 = sub_1AB460544();
  v17 = v16;
  v18 = a4;
  v19 = a5;
  v20 = self;
  sub_1AB317F54(1, a3, v12, v14, v15, v17, v7);
}

- (void)updateEventData:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  *(&self->super.isa + OBJC_IVAR___JERollItemsMediaActivityTracker_trackerEventData) = sub_1AB460954();
}

- (void)resetEventData:(id)a3
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    v4 = sub_1AB460954();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *(&self->super.isa + OBJC_IVAR___JERollItemsMediaActivityTracker_trackerEventData) = v4;
}

- (JERollItemsMediaActivityTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end