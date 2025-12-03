@interface LNLinkUndoManagersConnectionOperation
- (_TtC12LinkServicesP33_EE3B95D90A41B46BC92A99E41AF6946437LNLinkUndoManagersConnectionOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface priority:(int64_t)priority queue:(id)queue activity:(id)activity;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNLinkUndoManagersConnectionOperation

- (void)start
{
  selfCopy = self;
  sub_197670530();
}

- (void)finishWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_197670714(error);
}

- (_TtC12LinkServicesP33_EE3B95D90A41B46BC92A99E41AF6946437LNLinkUndoManagersConnectionOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface priority:(int64_t)priority queue:(id)queue activity:(id)activity
{
  v9 = sub_19774EBF0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = _Block_copy(activity);
  sub_19774EBC0();
  *(swift_allocObject() + 16) = v11;
  swift_unknownObjectRetain();
  queueCopy = queue;
  sub_197670828();
}

@end