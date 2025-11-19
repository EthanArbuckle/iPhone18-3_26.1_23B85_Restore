@interface IKJSMediaItem
- (IKJSMediaItem)initWithType:(id)a3 :(id)a4;
- (NSString)type;
- (void)dealloc;
- (void)loadCertificateDataForURI:(id)a3 withCallback:(id)a4;
- (void)loadContentIdentifierDataForURI:(id)a3 withCallback:(id)a4;
- (void)loadKeyDataForURI:(id)a3 requestData:(id)a4 withCallback:(id)a5;
- (void)setType:(id)a3;
@end

@implementation IKJSMediaItem

- (IKJSMediaItem)initWithType:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IKAppContext currentAppContext];
  v15.receiver = self;
  v15.super_class = IKJSMediaItem;
  v9 = [(IKJSObject *)&v15 initWithAppContext:v8];

  if (v9)
  {
    v10 = [IKAppMediaItemBridge alloc];
    v11 = [(IKJSObject *)v9 appContext];
    v12 = [(IKAppMediaItemBridge *)v10 initWithAppContext:v11 jsMediaItem:v9];
    bridge = v9->_bridge;
    v9->_bridge = v12;

    if (v7 && ([v7 isEqualToString:@"undefined"] & 1) == 0)
    {
      [(IKAppMediaItemBridge *)v9->_bridge setUrl:v7];
    }

    [(IKJSMediaItem *)v9 setType:v6];
  }

  return v9;
}

- (void)dealloc
{
  [(IKAppMediaItemBridge *)self->_bridge cleanup];
  v3.receiver = self;
  v3.super_class = IKJSMediaItem;
  [(IKJSMediaItem *)&v3 dealloc];
}

- (void)setType:(id)a3
{
  v6 = a3;
  if (([(__CFString *)v6 isEqualToString:@"video"]& 1) == 0 && ([(__CFString *)v6 isEqualToString:@"audio"]& 1) == 0)
  {
    v4 = @"video";

    v6 = v4;
  }

  v5 = [(IKJSMediaItem *)self bridge];
  [v5 setType:v6];
}

- (NSString)type
{
  v2 = [(IKJSMediaItem *)self bridge];
  v3 = [v2 type];

  return v3;
}

- (void)loadCertificateDataForURI:(id)a3 withCallback:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __56__IKJSMediaItem_loadCertificateDataForURI_withCallback___block_invoke;
  v21 = &unk_27979B898;
  v8 = v7;
  v22 = v8;
  v9 = MEMORY[0x259C21BA0](&v18);
  v10 = MEMORY[0x277CD4658];
  v11 = [(IKJSObject *)self appContext:v18];
  v12 = [v11 jsContext];
  v13 = [v10 valueWithObject:self inContext:v12];

  if ([v13 hasProperty:@"loadCertificate"])
  {
    v23[0] = v6;
    v14 = MEMORY[0x259C21BA0](v9);
    v23[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v16 = [(IKJSObject *)self invokeMethod:@"loadCertificate" withArguments:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ITMLKitErrorDomain" code:103 userInfo:0];
    (*(v8 + 2))(v8, 0, 0, v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __56__IKJSMediaItem_loadCertificateDataForURI_withCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 isString])
  {
    v6 = [v9 toString];
  }

  else
  {
    v6 = 0;
  }

  if ([v5 isString])
  {
    v7 = [v5 toString];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:1 userInfo:0];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)loadContentIdentifierDataForURI:(id)a3 withCallback:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __62__IKJSMediaItem_loadContentIdentifierDataForURI_withCallback___block_invoke;
  v21 = &unk_27979B898;
  v8 = v7;
  v22 = v8;
  v9 = MEMORY[0x259C21BA0](&v18);
  v10 = MEMORY[0x277CD4658];
  v11 = [(IKJSObject *)self appContext:v18];
  v12 = [v11 jsContext];
  v13 = [v10 valueWithObject:self inContext:v12];

  if ([v13 hasProperty:@"loadAssetID"])
  {
    v23[0] = v6;
    v14 = MEMORY[0x259C21BA0](v9);
    v23[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v16 = [(IKJSObject *)self invokeMethod:@"loadAssetID" withArguments:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ITMLKitErrorDomain" code:103 userInfo:0];
    (*(v8 + 2))(v8, 0, 0, v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __62__IKJSMediaItem_loadContentIdentifierDataForURI_withCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 isString])
  {
    v6 = [v9 toString];
  }

  else
  {
    v6 = 0;
  }

  if ([v5 isString])
  {
    v7 = [v5 toString];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:1 userInfo:0];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)loadKeyDataForURI:(id)a3 requestData:(id)a4 withCallback:(id)a5
{
  v23[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__IKJSMediaItem_loadKeyDataForURI_requestData_withCallback___block_invoke;
  v21[3] = &unk_27979B8C0;
  v11 = v10;
  v22 = v11;
  v12 = MEMORY[0x259C21BA0](v21);
  v13 = MEMORY[0x277CD4658];
  v14 = [(IKJSObject *)self appContext];
  v15 = [v14 jsContext];
  v16 = [v13 valueWithObject:self inContext:v15];

  if ([v16 hasProperty:@"loadKey"])
  {
    v23[0] = v8;
    v23[1] = v9;
    v17 = MEMORY[0x259C21BA0](v12);
    v23[2] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
    v19 = [(IKJSObject *)self invokeMethod:@"loadKey" withArguments:v18];
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ITMLKitErrorDomain" code:103 userInfo:0];
    (*(v11 + 2))(v11, 0, 0, v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __60__IKJSMediaItem_loadKeyDataForURI_requestData_withCallback___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if ([v13 isString])
  {
    v9 = [v13 toString];
  }

  else
  {
    v9 = 0;
  }

  if ([v7 isObject])
  {
    v10 = [v7 toObjectOfClass:objc_opt_class()];
  }

  else
  {
    v10 = 0;
  }

  if ([v8 isString])
  {
    v11 = [v8 toString];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:1 userInfo:0];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end