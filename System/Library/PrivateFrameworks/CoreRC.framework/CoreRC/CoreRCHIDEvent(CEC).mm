@interface CoreRCHIDEvent(CEC)
@end

@implementation CoreRCHIDEvent(CEC)

- (void)initWithCECDeckControlMode:()CEC pressed:.cold.1(void *a1, char a2)
{
  if (gLogCategory_CoreRCHID <= 60 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    CECDeckControlModeString(a2);
    LogPrintF();
  }
}

@end