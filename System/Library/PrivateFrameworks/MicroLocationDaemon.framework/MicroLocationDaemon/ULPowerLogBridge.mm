@interface ULPowerLogBridge
+ (void)ULPowerLogTimeInsensitive:(id)insensitive event:(id)event;
@end

@implementation ULPowerLogBridge

+ (void)ULPowerLogTimeInsensitive:(id)insensitive event:(id)event
{
  insensitiveCopy = insensitive;
  eventCopy = event;
  if (+[ULPowerLogBridge ULPowerLogEnabled])
  {
    [MEMORY[0x277CCACA8] stringWithCString:objc_msgSend(eventCopy encoding:{"UTF8String"), 4}];
    PLLogRegisteredEvent();
  }
}

@end