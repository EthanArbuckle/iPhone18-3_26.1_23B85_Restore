@interface LNFetchEntityURLOperation
- (_TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface priority:(int64_t)priority queue:(id)queue activity:(id)activity;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchEntityURLOperation

- (void)start
{
  selfCopy = self;
  sub_1976A8854();
}

- (void)finishWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_1976A8A9C(error);
}

- (_TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface priority:(int64_t)priority queue:(id)queue activity:(id)activity
{
  v9 = sub_19774EBF0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = _Block_copy(activity);
  sub_19774EBC0();
  *(swift_allocObject() + 16) = v11;
  swift_unknownObjectRetain();
  queueCopy = queue;
  sub_1976A8C24();
}

@end