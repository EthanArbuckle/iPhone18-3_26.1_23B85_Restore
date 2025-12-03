@interface JERollItemsMediaActivityTracker
- (JERollItemsMediaActivityTracker)init;
- (JERollItemsMediaActivityTracker)initWithPipeline:(id)pipeline playlist:(id)playlist eventData:(id)data topic:(id)topic;
- (void)jumpFromOverallPosition:(unint64_t)position fromRollItem:(id)item toRollItem:(id)rollItem eventData:(id)data;
- (void)playStartedWithPlaybackRate:(float)rate overallPosition:(unint64_t)position type:(id)type reason:(id)reason rollItem:(id)item eventData:(id)data;
- (void)playStoppedAtOverallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data;
- (void)resetEventData:(id)data;
- (void)seekStoppedAtOverallPosition:(unint64_t)position type:(id)type reason:(id)reason rollItem:(id)item eventData:(id)data;
- (void)updateEventData:(id)data;
@end

@implementation JERollItemsMediaActivityTracker

- (JERollItemsMediaActivityTracker)initWithPipeline:(id)pipeline playlist:(id)playlist eventData:(id)data topic:(id)topic
{
  dataCopy = data;
  if (data)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    dataCopy = sub_1AB460954();
  }

  v9 = sub_1AB460544();
  v11 = v10;
  pipelineCopy = pipeline;
  swift_unknownObjectRetain();
  return RollItemsMediaActivityTracker.init(pipeline:playlist:eventData:topic:)(pipelineCopy, playlist, dataCopy, v9, v11);
}

- (void)playStartedWithPlaybackRate:(float)rate overallPosition:(unint64_t)position type:(id)type reason:(id)reason rollItem:(id)item eventData:(id)data
{
  dataCopy = data;
  if (data)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    dataCopy = sub_1AB460954();
  }

  typeCopy = type;
  reasonCopy = reason;
  itemCopy = item;
  selfCopy = self;
  _s9JetEngine29RollItemsMediaActivityTrackerC28playStartedAtOverallPosition_4type6reason8rollItem9eventDatays6UInt64V_So07JEMediaF11TriggerTypeaSo0tF15PlayStartReasonaSo09JEHLSRollP0CSaySDySSypGGSgtF_0(position, typeCopy, reasonCopy, itemCopy, dataCopy);
}

- (void)playStoppedAtOverallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data
{
  dataCopy = data;
  if (data)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    dataCopy = sub_1AB460954();
  }

  v11 = sub_1AB460544();
  v13 = v12;
  v14 = sub_1AB460544();
  v16 = v15;
  typeCopy = type;
  reasonCopy = reason;
  selfCopy = self;
  sub_1AB317F54(0, position, v11, v13, v14, v16, dataCopy);
}

- (void)jumpFromOverallPosition:(unint64_t)position fromRollItem:(id)item toRollItem:(id)rollItem eventData:(id)data
{
  dataCopy = data;
  if (data)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    dataCopy = sub_1AB460954();
  }

  itemCopy = item;
  rollItemCopy = rollItem;
  selfCopy = self;
  v15.value._rawValue = dataCopy;
  RollItemsMediaActivityTracker.jumpFromOverallPosition(_:fromRollItem:toRollItem:eventData:)(position, itemCopy, rollItemCopy, v15);
}

- (void)seekStoppedAtOverallPosition:(unint64_t)position type:(id)type reason:(id)reason rollItem:(id)item eventData:(id)data
{
  dataCopy = data;
  if (data)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    dataCopy = sub_1AB460954();
  }

  v12 = sub_1AB460544();
  v14 = v13;
  v15 = sub_1AB460544();
  v17 = v16;
  typeCopy = type;
  reasonCopy = reason;
  selfCopy = self;
  sub_1AB317F54(1, position, v12, v14, v15, v17, dataCopy);
}

- (void)updateEventData:(id)data
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  *(&self->super.isa + OBJC_IVAR___JERollItemsMediaActivityTracker_trackerEventData) = sub_1AB460954();
}

- (void)resetEventData:(id)data
{
  if (data)
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