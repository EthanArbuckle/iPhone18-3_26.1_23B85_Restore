@interface DTXService
+ (void)instantiateServiceWithChannel:(id)channel;
- (DTXService)initWithChannel:(id)channel;
@end

@implementation DTXService

+ (void)instantiateServiceWithChannel:(id)channel
{
  channelCopy = channel;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithChannel_(v5, v6, channelCopy);
}

- (DTXService)initWithChannel:(id)channel
{
  channelCopy = channel;
  v14.receiver = self;
  v14.super_class = DTXService;
  v6 = [(DTXService *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_247F3E0E4;
    v12[3] = &unk_278EEE5C8;
    v8 = v6;
    v13 = v8;
    objc_msgSend_setMessageHandler_(channelCopy, v9, v12);
    objc_msgSend_setDispatchTarget_(channelCopy, v10, v8);
    objc_storeStrong(v8 + 1, channel);
  }

  return v7;
}

@end