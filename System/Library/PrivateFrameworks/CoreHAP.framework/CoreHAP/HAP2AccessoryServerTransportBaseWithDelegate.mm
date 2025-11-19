@interface HAP2AccessoryServerTransportBaseWithDelegate
- (HAP2AccessoryServerTransportDelegate)delegate;
- (void)didChangeStateWithError:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation HAP2AccessoryServerTransportBaseWithDelegate

- (void)didChangeStateWithError:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v5 assertCurrentQueue];

  v6 = [(HAP2AccessoryServerTransportBaseWithDelegate *)self delegate];
  if (v6)
  {
    v7 = [(HAP2AccessoryServerTransportBase *)self state];
    v8 = [(HAP2AccessoryServerTransportBase *)self delegateQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__HAP2AccessoryServerTransportBaseWithDelegate_didChangeStateWithError___block_invoke;
    v9[3] = &unk_2786D6E88;
    v10 = v6;
    v11 = self;
    v13 = v7;
    v12 = v4;
    dispatch_async(v8, v9);
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HAP2AccessoryServerTransportBaseWithDelegate_setDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

- (HAP2AccessoryServerTransportDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__25107;
  v11 = __Block_byref_object_dispose__25108;
  v12 = 0;
  v3 = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HAP2AccessoryServerTransportBaseWithDelegate_delegate__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

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