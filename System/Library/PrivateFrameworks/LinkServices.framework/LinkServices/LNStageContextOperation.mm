@interface LNStageContextOperation
- (_TtC12LinkServicesP33_EBC5CE9D4C868F46BBC21F4512E463B523LNStageContextOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface priority:(int64_t)priority queue:(id)queue activity:(id)activity;
- (void)start;
@end

@implementation LNStageContextOperation

- (void)start
{
  selfCopy = self;
  sub_19766A830();
}

- (_TtC12LinkServicesP33_EBC5CE9D4C868F46BBC21F4512E463B523LNStageContextOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface priority:(int64_t)priority queue:(id)queue activity:(id)activity
{
  v9 = sub_19774EBF0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = _Block_copy(activity);
  sub_19774EBC0();
  *(swift_allocObject() + 16) = v11;
  swift_unknownObjectRetain();
  queueCopy = queue;
  sub_19766AB0C();
}

@end