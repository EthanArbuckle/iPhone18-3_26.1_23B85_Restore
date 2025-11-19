@interface BLTTestIDSService
- (BLTAbstractIDSDevice)defaultPairedDevice;
- (BLTTestIDSService)initWithService:(id)a3;
- (BOOL)sendProtobuf:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (id)_lightsAndSirensRequestForProtobuf:(id)a3;
- (unint64_t)_randomValueBetweenMin:(unint64_t)a3 max:(unint64_t)a4;
- (void)_handleProtobuf:(id)a3 identifier:(id)a4 sendDelay:(unint64_t)a5;
- (void)_sendBlockToAllDelegatesAfterTime:(unint64_t)a3 block:(id)a4;
- (void)_sendLightsAndSirensRequestForProtobuf:(id)a3 identifier:(id)a4 sendDelay:(unint64_t)a5;
- (void)_sendSetSectionInfoResponseWithIdentifier:(id)a3 sendDelay:(unint64_t)a4;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)removeDelegate:(id)a3;
@end

@implementation BLTTestIDSService

- (BLTTestIDSService)initWithService:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = BLTTestIDSService;
  v5 = [(BLTTestIDSService *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v5->_currentIdentifier = 1;
    v7 = [v4 copy];
    service = v6->_service;
    v6->_service = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    actionsByRequestType = v6->_actionsByRequestType;
    v6->_actionsByRequestType = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    actionsByResponseType = v6->_actionsByResponseType;
    v6->_actionsByResponseType = v11;

    v13 = [MEMORY[0x277CBEB18] array];
    delegates = v6->_delegates;
    v6->_delegates = v13;

    v15 = [[BLTPBProtobufSequenceNumberManager alloc] initWithServiceName:v6->_service updateSequenceNumbersOnOutOfOrder:0];
    sequenceNumberManager = v6->_sequenceNumberManager;
    v6->_sequenceNumberManager = v15;
  }

  return v6;
}

- (BLTAbstractIDSDevice)defaultPairedDevice
{
  v2 = objc_alloc_init(BLTTestIDSDevice);
  [(BLTTestIDSDevice *)v2 setIsConnected:1];
  [(BLTTestIDSDevice *)v2 setIsDefaultPairedDevice:1];
  [(BLTTestIDSDevice *)v2 setIsNearby:1];

  return v2;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(BLTTestIDSServiceDelegate);
  [(BLTTestIDSServiceDelegate *)v8 setDelegate:v7];

  [(BLTTestIDSServiceDelegate *)v8 setQueue:v6];
  [(NSMutableArray *)self->_delegates addObject:v8];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  delegates = self->_delegates;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __36__BLTTestIDSService_removeDelegate___block_invoke;
  v10 = &unk_278D323C8;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  [(NSMutableArray *)delegates enumerateObjectsUsingBlock:&v7];
  if (v14[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_delegates removeObjectAtIndex:v7, v8, v9, v10];
  }

  _Block_object_dispose(&v13, 8);
}

void __36__BLTTestIDSService_removeDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 delegate];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (BOOL)sendProtobuf:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v10 = a3;
  if (a7)
  {
    *a7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", self->_currentIdentifier];
    ++self->_currentIdentifier;
    a7 = *a7;
  }

  else
  {
    ++self->_currentIdentifier;
  }

  v11 = [(BLTTestIDSService *)self _randomSendDelay];
  delegates = self->_delegates;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__BLTTestIDSService_sendProtobuf_toDestinations_priority_options_identifier_error___block_invoke;
  v15[3] = &unk_278D323F0;
  v16 = a7;
  v17 = v11;
  v13 = a7;
  [(NSMutableArray *)delegates enumerateObjectsUsingBlock:v15];
  [(BLTTestIDSService *)self _handleProtobuf:v10 identifier:v13 sendDelay:v11];

  return 1;
}

void __83__BLTTestIDSService_sendProtobuf_toDestinations_priority_options_identifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, 1000000000 * *(a1 + 40));
  v5 = [v3 queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__BLTTestIDSService_sendProtobuf_toDestinations_priority_options_identifier_error___block_invoke_2;
  v7[3] = &unk_278D31400;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_after(v4, v5, v7);
}

void __83__BLTTestIDSService_sendProtobuf_toDestinations_priority_options_identifier_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 service:0 account:0 identifier:*(a1 + 40) didSendWithSuccess:1 error:0];
}

- (void)_handleProtobuf:(id)a3 identifier:(id)a4 sendDelay:(unint64_t)a5
{
  v10 = a3;
  v8 = a4;
  v9 = [v10 type];
  switch(v9)
  {
    case 13:
      [(BLTTestIDSService *)self _sendSetSectionInfoResponseWithIdentifier:v8 sendDelay:a5];
      break;
    case 12:
      [(BLTPBProtobufSequenceNumberManager *)self->_sequenceNumberManager setSessionState:0];
      break;
    case 1:
      [(BLTTestIDSService *)self _sendLightsAndSirensRequestForProtobuf:v10 identifier:v8 sendDelay:a5];
      break;
  }
}

- (id)_lightsAndSirensRequestForProtobuf:(id)a3
{
  v4 = a3;
  v5 = [[BLTPBProtobuf alloc] initWithIDSProtobuf:v4 sequenceNumberManager:self->_sequenceNumberManager];

  v6 = [BLTPBAddBulletinRequest alloc];
  v7 = [(BLTPBProtobuf *)v5 data];
  v8 = [(BLTPBAddBulletinRequest *)v6 initWithData:v7];

  v9 = objc_alloc_init(BLTPBHandleDidPlayLightsAndSirensReplyRequest);
  [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v9 setDidPlayLightsAndSirens:1];
  v10 = [(BLTPBAddBulletinRequest *)v8 bulletin];
  v11 = [v10 publisherBulletinID];
  [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v9 setPublisherMatchID:v11];

  v12 = [(BLTPBAddBulletinRequest *)v8 bulletin];
  v13 = [v12 sectionID];
  [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v9 setPhoneSectionID:v13];

  v14 = [MEMORY[0x277CBEAA8] date];
  [v14 timeIntervalSince1970];
  [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v9 setDate:?];

  return v9;
}

- (void)_sendBlockToAllDelegatesAfterTime:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  delegates = self->_delegates;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__BLTTestIDSService__sendBlockToAllDelegatesAfterTime_block___block_invoke;
  v9[3] = &unk_278D32418;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(NSMutableArray *)delegates enumerateObjectsUsingBlock:v9];
}

void __61__BLTTestIDSService__sendBlockToAllDelegatesAfterTime_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, *(a1 + 40));
  v5 = [v3 queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__BLTTestIDSService__sendBlockToAllDelegatesAfterTime_block___block_invoke_2;
  v8[3] = &unk_278D31478;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_after(v4, v5, v8);
}

void __61__BLTTestIDSService__sendBlockToAllDelegatesAfterTime_block___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) delegate];
  (*(v1 + 16))(v1, v2);
}

- (void)_sendLightsAndSirensRequestForProtobuf:(id)a3 identifier:(id)a4 sendDelay:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(BLTTestIDSService *)self _randomResponseDelay];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__BLTTestIDSService__sendLightsAndSirensRequestForProtobuf_identifier_sendDelay___block_invoke;
  v14[3] = &unk_278D32440;
  v11 = 1000000000 * (v10 + a5);
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [(BLTTestIDSService *)self _sendBlockToAllDelegatesAfterTime:v11 block:v14];
}

void __81__BLTTestIDSService__sendLightsAndSirensRequestForProtobuf_identifier_sendDelay___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v3 _lightsAndSirensRequestForProtobuf:v4];
  v6 = [[BLTPBProtobuf alloc] initWithProtobuf:v7 type:9 isResponse:0 sequenceNumberManager:*(*(a1 + 32) + 48)];
  [*(a1 + 32) _callDelegateActionForProtobuf:v6 delegate:v5 identifier:*(a1 + 48) type:9 isResponse:0];
}

- (void)_sendSetSectionInfoResponseWithIdentifier:(id)a3 sendDelay:(unint64_t)a4
{
  v6 = a3;
  v7 = [(BLTTestIDSService *)self _randomResponseDelay];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__BLTTestIDSService__sendSetSectionInfoResponseWithIdentifier_sendDelay___block_invoke;
  v10[3] = &unk_278D32468;
  v8 = 1000000000 * (v7 + a4);
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(BLTTestIDSService *)self _sendBlockToAllDelegatesAfterTime:v8 block:v10];
}

void __73__BLTTestIDSService__sendSetSectionInfoResponseWithIdentifier_sendDelay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_alloc_init(BLTPBSetSectionInfoResponse);
  v4 = [[BLTPBProtobuf alloc] initWithProtobuf:v5 type:13 isResponse:1 sequenceNumberManager:*(*(a1 + 32) + 48)];
  [*(a1 + 32) _callDelegateActionForProtobuf:v4 delegate:v3 identifier:*(a1 + 40) type:13 isResponse:1];
}

- (unint64_t)_randomValueBetweenMin:(unint64_t)a3 max:(unint64_t)a4
{
  v4 = a3;
  if (a4 > a3)
  {
    return arc4random() % (a4 - a3) + a3;
  }

  return v4;
}

@end