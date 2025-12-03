@interface MFMessagesMissingParts
- (id)initWithFragmentedMessages:(void *)messages nonFragmentedMessages:(void *)fragmentedMessages messagesScannedInFilesystemCount:;
@end

@implementation MFMessagesMissingParts

- (id)initWithFragmentedMessages:(void *)messages nonFragmentedMessages:(void *)fragmentedMessages messagesScannedInFilesystemCount:
{
  v7 = a2;
  messagesCopy = messages;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = MFMessagesMissingParts;
    self = objc_msgSendSuper2(&v17, sel_init);
    if (self)
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

      objc_storeStrong(self + 1, v11);

      v12 = [messagesCopy copy];
      v13 = v12;
      if (v12)
      {
        indexSet = v12;
      }

      else
      {
        indexSet = [MEMORY[0x1E696AC90] indexSet];
      }

      v15 = self[2];
      self[2] = indexSet;

      self[3] = fragmentedMessages;
    }
  }

  return self;
}

@end