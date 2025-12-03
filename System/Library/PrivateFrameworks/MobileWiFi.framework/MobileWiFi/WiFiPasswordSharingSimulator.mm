@interface WiFiPasswordSharingSimulator
- (WiFiPasswordSharingSimulator)init;
- (void)dealloc;
- (void)runWithSSID:(id)d reply:(id)reply;
- (void)service:(id)service receivedNetworkInfo:(id)info;
@end

@implementation WiFiPasswordSharingSimulator

- (WiFiPasswordSharingSimulator)init
{
  v6.receiver = self;
  v6.super_class = WiFiPasswordSharingSimulator;
  v2 = [(WiFiPasswordSharingSimulator *)&v6 init];
  if (v2)
  {
    v2->_queue = dispatch_queue_create("mobilewifitool.wifi-password-sharing", 0);
    if (SharingLibraryCore())
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3052000000;
      v11 = __Block_byref_object_copy__1;
      v3 = getSFPasswordSharingServiceClass_softClass;
      v12 = __Block_byref_object_dispose__1;
      v13 = getSFPasswordSharingServiceClass_softClass;
      if (!getSFPasswordSharingServiceClass_softClass)
      {
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __getSFPasswordSharingServiceClass_block_invoke;
        v7[3] = &unk_27991A160;
        v7[4] = &v8;
        __getSFPasswordSharingServiceClass_block_invoke(v7);
        v3 = v9[5];
      }

      _Block_object_dispose(&v8, 8);
      v4 = objc_alloc_init(v3);
      v2->_service = v4;
      [(SFPasswordSharingService *)v4 setDelegate:v2];
      [(SFPasswordSharingService *)v2->_service setDispatchQueue:v2->_queue];
    }
  }

  return v2;
}

- (void)dealloc
{
  [(SFPasswordSharingService *)self->_service invalidate];

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = WiFiPasswordSharingSimulator;
  [(WiFiPasswordSharingSimulator *)&v4 dealloc];
}

- (void)runWithSSID:(id)d reply:(id)reply
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WiFiPasswordSharingSimulator_runWithSSID_reply___block_invoke;
  block[3] = &unk_27991B010;
  block[4] = self;
  block[5] = d;
  block[6] = reply;
  dispatch_async(queue, block);
}

uint64_t __50__WiFiPasswordSharingSimulator_runWithSSID_reply___block_invoke(uint64_t a1)
{
  if (SharingLibraryCore())
  {
    [*(*(a1 + 32) + 16) setNetworkName:*(a1 + 40)];

    *(*(a1 + 32) + 24) = [*(a1 + 48) copy];
    v2 = *(*(a1 + 32) + 16);

    return [v2 activate];
  }

  else
  {
    result = *(a1 + 48);
    if (result)
    {
      v4 = *(result + 16);

      return v4();
    }
  }

  return result;
}

- (void)service:(id)service receivedNetworkInfo:(id)info
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WiFiPasswordSharingSimulator_service_receivedNetworkInfo___block_invoke;
  block[3] = &unk_27991B038;
  block[4] = service;
  block[5] = info;
  block[6] = self;
  dispatch_async(queue, block);
}

uint64_t __60__WiFiPasswordSharingSimulator_service_receivedNetworkInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  result = printf("Received '%s' [ch=%ld psk=%s]\n", [objc_msgSend(*(a1 + 40) "networkName")], objc_msgSend(objc_msgSend(*(a1 + 40), "channel"), "integerValue"), objc_msgSend(objc_msgSend(*(a1 + 40), "psk"), "UTF8String"));
  v3 = *(*(a1 + 48) + 24);
  if (v3)
  {
    v4 = [*(a1 + 40) channel];
    v5 = [*(a1 + 40) psk];
    v6 = *(v3 + 16);

    return v6(v3, v4, v5);
  }

  return result;
}

@end