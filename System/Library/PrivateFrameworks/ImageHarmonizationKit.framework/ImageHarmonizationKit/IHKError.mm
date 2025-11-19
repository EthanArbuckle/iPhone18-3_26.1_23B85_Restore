@interface IHKError
+ (id)errorWithCode:(int64_t)a3 message:(id)a4;
+ (id)errorWithCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5;
@end

@implementation IHKError

+ (id)errorWithCode:(int64_t)a3 message:(id)a4
{
  v4 = objc_msgSend_errorWithCode_message_underlyingError_(a1, a2, a3, a4, 0);

  return v4;
}

+ (id)errorWithCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5
{
  v6 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], a2, a4, a4, a5, *MEMORY[0x277CCA450], a5, *MEMORY[0x277CCA7E8], 0);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v7, @"com.apple.imageharmonizationkit", a3, v6);

  return v8;
}

@end