@interface MFMessagesMissingBodyData
- (void)initWithMessagesMissingBodyData:(void *)data messagesNotMissingBodyData:(void *)bodyData fragmentedMessages:(uint64_t)messages messagesScannedInFilesystemCount:;
@end

@implementation MFMessagesMissingBodyData

- (void)initWithMessagesMissingBodyData:(void *)data messagesNotMissingBodyData:(void *)bodyData fragmentedMessages:(uint64_t)messages messagesScannedInFilesystemCount:
{
  v9 = a2;
  dataCopy = data;
  bodyDataCopy = bodyData;
  if (self)
  {
    v25.receiver = self;
    v25.super_class = MFMessagesMissingBodyData;
    v12 = objc_msgSendSuper2(&v25, sel_init);
    self = v12;
    if (v12)
    {
      v13 = [v9 copy];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = MEMORY[0x1E695E0F0];
      }

      objc_storeStrong(v12 + 1, v15);

      v16 = [dataCopy copy];
      v17 = v16;
      if (v16)
      {
        indexSet = v16;
      }

      else
      {
        indexSet = [MEMORY[0x1E696AC90] indexSet];
      }

      v19 = self[2];
      self[2] = indexSet;

      v20 = [bodyDataCopy copy];
      v21 = v20;
      if (v20)
      {
        indexSet2 = v20;
      }

      else
      {
        indexSet2 = [MEMORY[0x1E696AC90] indexSet];
      }

      v23 = self[3];
      self[3] = indexSet2;

      self[4] = messages;
    }
  }

  return self;
}

@end