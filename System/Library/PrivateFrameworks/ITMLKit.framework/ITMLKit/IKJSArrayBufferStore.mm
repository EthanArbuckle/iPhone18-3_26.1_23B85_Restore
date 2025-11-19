@interface IKJSArrayBufferStore
- (IKAppContext)appContext;
- (IKJSArrayBufferStore)initWithAppContext:(id)a3;
- (id)arrayBufferForData:(id)a3;
@end

@implementation IKJSArrayBufferStore

- (IKJSArrayBufferStore)initWithAppContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IKJSArrayBufferStore;
  v5 = [(IKJSArrayBufferStore *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    bufferStorage = v5->_bufferStorage;
    v5->_bufferStorage = v6;

    objc_storeWeak(&v5->_appContext, v4);
  }

  return v5;
}

- (id)arrayBufferForData:(id)a3
{
  v4 = a3;
  v5 = [(IKJSArrayBufferStore *)self appContext];
  v6 = [v5 jsContext];

  v7 = [v4 copy];
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];

  v10 = [(IKJSArrayBufferStore *)self bufferStorage];
  [v10 setObject:v7 forKey:v9];

  v11 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  [v11 setObject:self forKey:@"IKJSArrayBufferStoreStoreKey"];
  [v11 setObject:v9 forKey:@"IKJSArrayBufferStoreStoredDataKey"];
  v12 = v11;
  v13 = [MEMORY[0x277CD4658] valueWithJSValueRef:JSObjectMakeArrayBufferWithBytesNoCopy(objc_msgSend(v6 inContext:{"JSGlobalContextRef"), objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"), IKJSArrayBufferStoreDeallocator, v12, 0), v6}];

  return v13;
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end