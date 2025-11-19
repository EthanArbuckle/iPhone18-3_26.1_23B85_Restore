@interface LNLinkUndoManagersConnectionOperation
- (_TtC12LinkServicesP33_EE3B95D90A41B46BC92A99E41AF6946437LNLinkUndoManagersConnectionOperation)initWithIdentifier:(id)a3 connectionInterface:(id)a4 priority:(int64_t)a5 queue:(id)a6 activity:(id)a7;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNLinkUndoManagersConnectionOperation

- (void)start
{
  v2 = self;
  sub_197670530();
}

- (void)finishWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_197670714(a3);
}

- (_TtC12LinkServicesP33_EE3B95D90A41B46BC92A99E41AF6946437LNLinkUndoManagersConnectionOperation)initWithIdentifier:(id)a3 connectionInterface:(id)a4 priority:(int64_t)a5 queue:(id)a6 activity:(id)a7
{
  v9 = sub_19774EBF0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = _Block_copy(a7);
  sub_19774EBC0();
  *(swift_allocObject() + 16) = v11;
  swift_unknownObjectRetain();
  v12 = a6;
  sub_197670828();
}

@end