@interface LNStageContextOperation
- (_TtC12LinkServicesP33_EBC5CE9D4C868F46BBC21F4512E463B523LNStageContextOperation)initWithIdentifier:(id)a3 connectionInterface:(id)a4 priority:(int64_t)a5 queue:(id)a6 activity:(id)a7;
- (void)start;
@end

@implementation LNStageContextOperation

- (void)start
{
  v2 = self;
  sub_19766A830();
}

- (_TtC12LinkServicesP33_EBC5CE9D4C868F46BBC21F4512E463B523LNStageContextOperation)initWithIdentifier:(id)a3 connectionInterface:(id)a4 priority:(int64_t)a5 queue:(id)a6 activity:(id)a7
{
  v9 = sub_19774EBF0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = _Block_copy(a7);
  sub_19774EBC0();
  *(swift_allocObject() + 16) = v11;
  swift_unknownObjectRetain();
  v12 = a6;
  sub_19766AB0C();
}

@end