@interface HAP2AccessoryServerTransportBaseWithDelegate
- (HAP2AccessoryServerTransportDelegate)delegate;
- (void)didChangeStateWithError:(id)error;
- (void)setDelegate:(id)delegate;
@end

@implementation HAP2AccessoryServerTransportBaseWithDelegate

- (void)didChangeStateWithError:(id)error
{
  errorCopy = error;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  delegate = [(HAP2AccessoryServerTransportBaseWithDelegate *)self delegate];
  if (delegate)
  {
    state = [(HAP2AccessoryServerTransportBase *)self state];
    delegateQueue = [(HAP2AccessoryServerTransportBase *)self delegateQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__HAP2AccessoryServerTransportBaseWithDelegate_didChangeStateWithError___block_invoke;
    v9[3] = &unk_2786D6E88;
    v10 = delegate;
    selfCopy = self;
    v13 = state;
    v12 = errorCopy;
    dispatch_async(delegateQueue, v9);
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  propertyLock = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HAP2AccessoryServerTransportBaseWithDelegate_setDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  [propertyLock performWritingBlock:v7];
}

- (HAP2AccessoryServerTransportDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__25107;
  v11 = __Block_byref_object_dispose__25108;
  v12 = 0;
  propertyLock = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HAP2AccessoryServerTransportBaseWithDelegate_delegate__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [propertyLock performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __56__HAP2AccessoryServerTransportBaseWithDelegate_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

@end