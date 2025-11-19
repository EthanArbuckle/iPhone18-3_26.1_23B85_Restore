@interface NWStatsPollHandler
- (NWStatsPollHandler)init;
- (id)description;
- (void)handleSnapshot:(id)a3;
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

- (void)handleSnapshot:(id)a3
{
  v6 = a3;
  v4 = [(NWStatsPollHandler *)self deliveryBlock];

  if (v4)
  {
    v5 = [(NWStatsPollHandler *)self deliveryBlock];
    (v5)[2](v5, v6);
  }
}

@end