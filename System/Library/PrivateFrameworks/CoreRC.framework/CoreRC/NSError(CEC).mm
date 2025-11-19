@interface NSError(CEC)
+ (uint64_t)cecAcknowledgementErrorWithUnderlyingError:()CEC;
+ (uint64_t)cecFeatureAbortErrorWithOpCode:()CEC reason:method:;
+ (uint64_t)cecIOErrorWithUnderlyingError:()CEC;
+ (uint64_t)cecTimeoutError;
+ (uint64_t)cecTopologyChangeError;
- (uint64_t)isCECAcknowledgementError;
@end

@implementation NSError(CEC)

+ (uint64_t)cecFeatureAbortErrorWithOpCode:()CEC reason:method:
{
  v12[5] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCA9B8];
  v11[0] = *MEMORY[0x277CCA450];
  v12[0] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v11[1] = *MEMORY[0x277CCA470];
  v12[1] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v11[2] = @"CoreCECFeatureAbortOpcodeErrorKey";
  v12[2] = [MEMORY[0x277CCACA8] stringWithUTF8String:CECMessageTypeString(a3)];
  v11[3] = @"CoreCECFeatureAbortReasonErrorKey";
  v11[4] = @"CoreCECFeatureAbortMethodErrorKey";
  v12[3] = [MEMORY[0x277CCACA8] stringWithUTF8String:CECAbortReasonString(a4)];
  v12[4] = a5;
  result = [v8 errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v12, v11, 5)}];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

+ (uint64_t)cecAcknowledgementErrorWithUnderlyingError:()CEC
{
  v9[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v8[0] = *MEMORY[0x277CCA450];
  v9[0] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v8[1] = *MEMORY[0x277CCA470];
  v5 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v8[2] = *MEMORY[0x277CCA7E8];
  v9[1] = v5;
  v9[2] = a3;
  result = [v4 errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, v8, 3)}];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (uint64_t)cecIOErrorWithUnderlyingError:()CEC
{
  v9[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v8[0] = *MEMORY[0x277CCA450];
  v9[0] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v8[1] = *MEMORY[0x277CCA470];
  v5 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v8[2] = *MEMORY[0x277CCA7E8];
  v9[1] = v5;
  v9[2] = a3;
  result = [v4 errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, v8, 3)}];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (uint64_t)cecTimeoutError
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v3[0] = *MEMORY[0x277CCA450];
  v4[0] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v3[1] = *MEMORY[0x277CCA470];
  v4[1] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  result = [v0 errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:4 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v4, v3, 2)}];
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

+ (uint64_t)cecTopologyChangeError
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v3[0] = *MEMORY[0x277CCA450];
  v4[0] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v3[1] = *MEMORY[0x277CCA470];
  v4[1] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  result = [v0 errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v4, v3, 2)}];
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)isCECAcknowledgementError
{
  result = [objc_msgSend(a1 "domain")];
  if (result)
  {
    return [a1 code] == 2;
  }

  return result;
}

@end