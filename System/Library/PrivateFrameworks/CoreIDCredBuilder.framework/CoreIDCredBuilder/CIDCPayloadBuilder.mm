@interface CIDCPayloadBuilder
- (CIDCPayloadBuilder)initWithDelegate:(id)delegate;
- (void)buildPayloadWithDetails:(id)details completion:(id)completion;
@end

@implementation CIDCPayloadBuilder

- (CIDCPayloadBuilder)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = CIDCPayloadBuilder;
  v5 = [(CIDCPayloadBuilder *)&v8 init];
  if (v5)
  {
    v6 = [[_TtC17CoreIDCredBuilder26CIDCInternalPayloadBuilder alloc] initWithDelegate:delegateCopy payloadBuilder:v5];
    [(CIDCPayloadBuilder *)v5 setPayloadBuilder:v6];
  }

  return v5;
}

- (void)buildPayloadWithDetails:(id)details completion:(id)completion
{
  completionCopy = completion;
  detailsCopy = details;
  payloadBuilder = [(CIDCPayloadBuilder *)self payloadBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__CIDCPayloadBuilder_buildPayloadWithDetails_completion___block_invoke;
  v10[3] = &unk_278E82D78;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [payloadBuilder buildPayloadWithDetails:detailsCopy completionHandler:v10];
}

@end