@interface LNExportTransientEntitiesOperation
- (_TtC12LinkServicesP33_D8B6462C04E82DA0D5A4ABC704B0DC8934LNExportTransientEntitiesOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface priority:(int64_t)priority queue:(id)queue activity:(id)activity;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNExportTransientEntitiesOperation

- (void)start
{
  selfCopy = self;
  sub_1976694EC();
}

- (void)finishWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_197669780(error);
}

- (_TtC12LinkServicesP33_D8B6462C04E82DA0D5A4ABC704B0DC8934LNExportTransientEntitiesOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface priority:(int64_t)priority queue:(id)queue activity:(id)activity
{
  v9 = sub_19774EBF0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = _Block_copy(activity);
  sub_19774EBC0();
  *(swift_allocObject() + 16) = v11;
  swift_unknownObjectRetain();
  queueCopy = queue;
  sub_197669898();
}

@end