@interface CARLayerPropertyMarshal
- (CARLayerPropertyMarshal)init;
- (void)_handleConnectionReset;
- (void)_setupConnection;
- (void)invalidate;
- (void)sendLayerProperties:(id)properties;
@end

@implementation CARLayerPropertyMarshal

- (CARLayerPropertyMarshal)init
{
  v5.receiver = self;
  v5.super_class = CARLayerPropertyMarshal;
  v2 = [(CARLayerPropertyMarshal *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CARLayerPropertyMarshal *)v2 _setupConnection];
  }

  return v3;
}

- (void)sendLayerProperties:(id)properties
{
  propertiesCopy = properties;
  connection = [(CARLayerPropertyMarshal *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy sendLayerProperties:propertiesCopy];
}

- (void)invalidate
{
  connection = [(CARLayerPropertyMarshal *)self connection];
  [connection invalidate];

  [(CARLayerPropertyMarshal *)self setConnection:0];
}

- (void)_setupConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.layer-metadata" options:4096];
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803888];
  [v3 setRemoteObjectInterface:v4];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CARLayerPropertyMarshal__setupConnection__block_invoke;
  v7[3] = &unk_1E82FC248;
  objc_copyWeak(&v8, &location);
  [v3 setInterruptionHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__CARLayerPropertyMarshal__setupConnection__block_invoke_2;
  v5[3] = &unk_1E82FC248;
  objc_copyWeak(&v6, &location);
  [v3 setInvalidationHandler:v5];
  [v3 resume];
  [(CARLayerPropertyMarshal *)self setConnection:v3];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __43__CARLayerPropertyMarshal__setupConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionReset];
}

void __43__CARLayerPropertyMarshal__setupConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)_handleConnectionReset
{
  [(CARLayerPropertyMarshal *)self setConnection:0];

  [(CARLayerPropertyMarshal *)self _setupConnection];
}

@end