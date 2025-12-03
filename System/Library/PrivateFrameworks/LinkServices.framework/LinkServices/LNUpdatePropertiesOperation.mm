@interface LNUpdatePropertiesOperation
- (_TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface priority:(int64_t)priority queue:(id)queue activity:(id)activity;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNUpdatePropertiesOperation

- (void)start
{
  selfCopy = self;
  sub_19767C1A0();
}

- (void)finishWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_19767C35C(error);
}

- (_TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface priority:(int64_t)priority queue:(id)queue activity:(id)activity
{
  v9 = sub_19774EBF0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = _Block_copy(activity);
  sub_19774EBC0();
  *(swift_allocObject() + 16) = v11;
  swift_unknownObjectRetain();
  queueCopy = queue;
  sub_19767C470();
}

@end