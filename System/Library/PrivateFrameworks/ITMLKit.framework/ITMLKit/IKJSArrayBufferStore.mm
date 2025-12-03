@interface IKJSArrayBufferStore
- (IKAppContext)appContext;
- (IKJSArrayBufferStore)initWithAppContext:(id)context;
- (id)arrayBufferForData:(id)data;
@end

@implementation IKJSArrayBufferStore

- (IKJSArrayBufferStore)initWithAppContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = IKJSArrayBufferStore;
  v5 = [(IKJSArrayBufferStore *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    bufferStorage = v5->_bufferStorage;
    v5->_bufferStorage = v6;

    objc_storeWeak(&v5->_appContext, contextCopy);
  }

  return v5;
}

- (id)arrayBufferForData:(id)data
{
  dataCopy = data;
  appContext = [(IKJSArrayBufferStore *)self appContext];
  jsContext = [appContext jsContext];

  v7 = [dataCopy copy];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  bufferStorage = [(IKJSArrayBufferStore *)self bufferStorage];
  [bufferStorage setObject:v7 forKey:uUIDString];

  strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  [strongToWeakObjectsMapTable setObject:self forKey:@"IKJSArrayBufferStoreStoreKey"];
  [strongToWeakObjectsMapTable setObject:uUIDString forKey:@"IKJSArrayBufferStoreStoredDataKey"];
  v12 = strongToWeakObjectsMapTable;
  v13 = [MEMORY[0x277CD4658] valueWithJSValueRef:JSObjectMakeArrayBufferWithBytesNoCopy(objc_msgSend(jsContext inContext:{"JSGlobalContextRef"), objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"), IKJSArrayBufferStoreDeallocator, v12, 0), jsContext}];

  return v13;
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end