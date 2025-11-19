@interface MFMessagesMissingParts
- (id)initWithFragmentedMessages:(void *)a3 nonFragmentedMessages:(void *)a4 messagesScannedInFilesystemCount:;
@end

@implementation MFMessagesMissingParts

- (id)initWithFragmentedMessages:(void *)a3 nonFragmentedMessages:(void *)a4 messagesScannedInFilesystemCount:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = MFMessagesMissingParts;
    a1 = objc_msgSendSuper2(&v17, sel_init);
    if (a1)
    {
      v9 = [v7 copy];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = MEMORY[0x1E695E0F0];
      }

      objc_storeStrong(a1 + 1, v11);

      v12 = [v8 copy];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [MEMORY[0x1E696AC90] indexSet];
      }

      v15 = a1[2];
      a1[2] = v14;

      a1[3] = a4;
    }
  }

  return a1;
}

@end