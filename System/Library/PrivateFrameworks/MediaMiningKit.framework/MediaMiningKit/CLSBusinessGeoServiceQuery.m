@interface CLSBusinessGeoServiceQuery
- (CLSBusinessGeoServiceQuery)initWithMUIDs:(id)a3;
- (void)prepareForRetry;
- (void)submitWithHandler:(id)a3;
@end

@implementation CLSBusinessGeoServiceQuery

- (void)prepareForRetry
{
  self->_isCancelled = 0;
  v5 = [MEMORY[0x277D0EBD0] sharedService];
  v3 = [v5 ticketForMUIDs:self->_muids traits:0];
  ticket = self->_ticket;
  self->_ticket = v3;
}

- (void)submitWithHandler:(id)a3
{
  v4 = a3;
  ticket = self->_ticket;
  v8 = MEMORY[0x277D85DD0];
  v9 = v4;
  v6 = v4;
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

- (CLSBusinessGeoServiceQuery)initWithMUIDs:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CLSBusinessGeoServiceQuery;
  v5 = [(CLSBusinessGeoServiceQuery *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_isCancelled = 0;
    v7 = [v4 copy];
    muids = v6->_muids;
    v6->_muids = v7;

    v9 = [MEMORY[0x277D0EBD0] sharedService];
    v10 = [v9 ticketForMUIDs:v6->_muids traits:0];
    ticket = v6->_ticket;
    v6->_ticket = v10;
  }

  return v6;
}

@end