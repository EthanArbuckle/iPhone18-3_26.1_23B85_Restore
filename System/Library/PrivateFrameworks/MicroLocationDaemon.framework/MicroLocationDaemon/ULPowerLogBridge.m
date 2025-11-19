@interface ULPowerLogBridge
+ (void)ULPowerLogTimeInsensitive:(id)a3 event:(id)a4;
@end

@implementation ULPowerLogBridge

+ (void)ULPowerLogTimeInsensitive:(id)a3 event:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (+[ULPowerLogBridge ULPowerLogEnabled])
  {
    [MEMORY[0x277CCACA8] stringWithCString:objc_msgSend(v5 encoding:{"UTF8String"), 4}];
    PLLogRegisteredEvent();
  }
}

@end