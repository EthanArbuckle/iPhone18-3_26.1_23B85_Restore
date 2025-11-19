@interface LNUpdatePropertiesOperation
- (_TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation)initWithIdentifier:(id)a3 connectionInterface:(id)a4 priority:(int64_t)a5 queue:(id)a6 activity:(id)a7;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNUpdatePropertiesOperation

- (void)start
{
  v2 = self;
  sub_19767C1A0();
}

- (void)finishWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_19767C35C(a3);
}

- (_TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation)initWithIdentifier:(id)a3 connectionInterface:(id)a4 priority:(int64_t)a5 queue:(id)a6 activity:(id)a7
{
  v9 = sub_19774EBF0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = _Block_copy(a7);
  sub_19774EBC0();
  *(swift_allocObject() + 16) = v11;
  swift_unknownObjectRetain();
  v12 = a6;
  sub_19767C470();
}

@end