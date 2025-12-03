@interface CLSBusinessGeoServiceQuery
- (CLSBusinessGeoServiceQuery)initWithMUIDs:(id)ds;
- (void)prepareForRetry;
- (void)submitWithHandler:(id)handler;
@end

@implementation CLSBusinessGeoServiceQuery

- (void)prepareForRetry
{
  self->_isCancelled = 0;
  mEMORY[0x277D0EBD0] = [MEMORY[0x277D0EBD0] sharedService];
  v3 = [mEMORY[0x277D0EBD0] ticketForMUIDs:self->_muids traits:0];
  ticket = self->_ticket;
  self->_ticket = v3;
}

- (void)submitWithHandler:(id)handler
{
  handlerCopy = handler;
  ticket = self->_ticket;
  v8 = MEMORY[0x277D85DD0];
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [CLSGeoMapQueryHelper auditToken:v8];
  [(GEOMapServiceTicket *)ticket submitWithHandler:&v8 auditToken:v7 timeout:20 networkActivity:0];
}

void __48__CLSBusinessGeoServiceQuery_submitWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v6 = a2;
  v7 = a3;
  (*(*(a1 + 40) + 16))();
}

- (CLSBusinessGeoServiceQuery)initWithMUIDs:(id)ds
{
  dsCopy = ds;
  v13.receiver = self;
  v13.super_class = CLSBusinessGeoServiceQuery;
  v5 = [(CLSBusinessGeoServiceQuery *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_isCancelled = 0;
    v7 = [dsCopy copy];
    muids = v6->_muids;
    v6->_muids = v7;

    mEMORY[0x277D0EBD0] = [MEMORY[0x277D0EBD0] sharedService];
    v10 = [mEMORY[0x277D0EBD0] ticketForMUIDs:v6->_muids traits:0];
    ticket = v6->_ticket;
    v6->_ticket = v10;
  }

  return v6;
}

@end