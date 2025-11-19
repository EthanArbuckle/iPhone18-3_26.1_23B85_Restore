@interface DDRTaskTurnOffCellNetworkRegistration
- (__CTServerConnection)serverConnection;
- (void)run;
@end

@implementation DDRTaskTurnOffCellNetworkRegistration

- (__CTServerConnection)serverConnection
{
  result = self->_serverConnection;
  if (!result)
  {
    result = _CTServerConnectionCreateWithIdentifier();
    self->_serverConnection = result;
    if (!result)
    {
      v4 = DDRLogForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100008F4C(v4);
      }

      return self->_serverConnection;
    }
  }

  return result;
}

- (void)run
{
  NSLog(@"turn off cell registration run", a2);
  if ([(DDRTaskTurnOffCellNetworkRegistration *)self serverConnection])
  {
    [(DDRTaskTurnOffCellNetworkRegistration *)self serverConnection];
    v3 = _CTServerConnectionDisableRegistration();
    v4 = HIDWORD(v3);
    if (HIDWORD(v3))
    {
      v5 = v3;
      v6 = DDRLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100008F90(v5, v4, v6);
      }
    }
  }
}

@end