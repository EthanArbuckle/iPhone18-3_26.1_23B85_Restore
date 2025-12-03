@interface IHKError
+ (id)errorWithCode:(int64_t)code message:(id)message;
+ (id)errorWithCode:(int64_t)code message:(id)message underlyingError:(id)error;
@end

@implementation IHKError

+ (id)errorWithCode:(int64_t)code message:(id)message
{
  v4 = objc_msgSend_errorWithCode_message_underlyingError_(self, a2, code, message, 0);

  return v4;
}

+ (id)errorWithCode:(int64_t)code message:(id)message underlyingError:(id)error
{
  v6 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], a2, message, message, error, *MEMORY[0x277CCA450], error, *MEMORY[0x277CCA7E8], 0);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v7, @"com.apple.imageharmonizationkit", code, v6);

  return v8;
}

@end