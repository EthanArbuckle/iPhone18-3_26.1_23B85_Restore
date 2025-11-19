@interface CKLStreamRawMessageObserver
- (void)eventMatched:(id)a3;
@end

@implementation CKLStreamRawMessageObserver

- (void)eventMatched:(id)a3
{
  v11 = objc_msgSend_composedMessage(a3, a2, a3);
  if (objc_msgSend_hasPrefix_(v11, v3, @"SIM: "))
  {
    v5 = objc_msgSend_substringFromIndex_(v11, v4, 5);

    v11 = v5;
  }

  v6 = objc_msgSend_initWithFormat_(objc_alloc(MEMORY[0x277CCACA8]), v11, @"%@", v11);
  v7 = v6;
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  puts(v10);
}

@end