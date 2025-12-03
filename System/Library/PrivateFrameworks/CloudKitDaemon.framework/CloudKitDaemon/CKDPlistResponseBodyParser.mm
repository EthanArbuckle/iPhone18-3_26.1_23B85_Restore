@interface CKDPlistResponseBodyParser
- (void)finishWithCompletion:(id)completion;
@end

@implementation CKDPlistResponseBodyParser

- (void)finishWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_parseQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2253E772C;
  v9[3] = &unk_278546550;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

@end