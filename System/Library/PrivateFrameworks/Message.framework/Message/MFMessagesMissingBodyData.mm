@interface MFMessagesMissingBodyData
- (void)initWithMessagesMissingBodyData:(void *)a3 messagesNotMissingBodyData:(void *)a4 fragmentedMessages:(uint64_t)a5 messagesScannedInFilesystemCount:;
@end

@implementation MFMessagesMissingBodyData

- (void)initWithMessagesMissingBodyData:(void *)a3 messagesNotMissingBodyData:(void *)a4 fragmentedMessages:(uint64_t)a5 messagesScannedInFilesystemCount:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v25.receiver = a1;
    v25.super_class = MFMessagesMissingBodyData;
    v12 = objc_msgSendSuper2(&v25, sel_init);
    a1 = v12;
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

      v16 = [v10 copy];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = [MEMORY[0x1E696AC90] indexSet];
      }

      v19 = a1[2];
      a1[2] = v18;

      v20 = [v11 copy];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = [MEMORY[0x1E696AC90] indexSet];
      }

      v23 = a1[3];
      a1[3] = v22;

      a1[4] = a5;
    }
  }

  return a1;
}

@end