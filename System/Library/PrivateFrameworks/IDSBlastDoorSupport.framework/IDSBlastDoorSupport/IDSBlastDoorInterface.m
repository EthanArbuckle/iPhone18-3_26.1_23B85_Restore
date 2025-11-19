@interface IDSBlastDoorInterface
- (IDSBlastDoorInterface)init;
- (void)unpackClientMessage:(id)a3 context:(id)a4 resultHandler:(id)a5;
- (void)unpackPayloadDictionary:(id)a3 resultHandler:(id)a4;
@end

@implementation IDSBlastDoorInterface

- (IDSBlastDoorInterface)init
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = IDSBlastDoorInterface;
  v2 = [(IDSBlastDoorInterface *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(IDSBlastDoorInterfaceInternal);
    interface = v2->_interface;
    v2->_interface = v3;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)unpackPayloadDictionary:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IDSBlastDoorInterface *)self interface];
  [v8 unpackPayloadDictionary:v7 resultHandler:v6];
}

- (void)unpackClientMessage:(id)a3 context:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IDSBlastDoorInterface *)self interface];
  [v11 unpackClientMessage:v10 context:v9 resultHandler:v8];
}

@end