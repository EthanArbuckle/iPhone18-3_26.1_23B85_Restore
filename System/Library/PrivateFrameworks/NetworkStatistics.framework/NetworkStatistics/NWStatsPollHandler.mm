@interface NWStatsPollHandler
- (NWStatsPollHandler)init;
- (id)description;
- (void)handleSnapshot:(id)snapshot;
@end

@implementation NWStatsPollHandler

- (NWStatsPollHandler)init
{
  v4.receiver = self;
  v4.super_class = NWStatsPollHandler;
  result = [(NWStatsPollHandler *)&v4 init];
  if (result)
  {
    v3 = pollHandlerNextSeqno++;
    result->_instanceNumber = v3;
  }

  return result;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsPollHandler at %p instance %lld, context %lld", self, -[NWStatsPollHandler instanceNumber](self, "instanceNumber"), self->_ntstatContext];

  return v2;
}

- (void)handleSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  deliveryBlock = [(NWStatsPollHandler *)self deliveryBlock];

  if (deliveryBlock)
  {
    deliveryBlock2 = [(NWStatsPollHandler *)self deliveryBlock];
    (deliveryBlock2)[2](deliveryBlock2, snapshotCopy);
  }
}

@end