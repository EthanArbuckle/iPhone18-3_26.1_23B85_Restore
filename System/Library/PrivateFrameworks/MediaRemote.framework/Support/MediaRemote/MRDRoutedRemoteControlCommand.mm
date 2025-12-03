@interface MRDRoutedRemoteControlCommand
- (MRDRoutedRemoteControlCommand)initWithCommand:(id)command routedApp:(id)app;
- (id)description;
@end

@implementation MRDRoutedRemoteControlCommand

- (MRDRoutedRemoteControlCommand)initWithCommand:(id)command routedApp:(id)app
{
  appCopy = app;
  commandCopy = command;
  v8 = [commandCopy _copyWithZone:0 usingConcreteClass:objc_opt_class()];

  v9 = v8;
  if (v9)
  {
    v10 = [appCopy copy];
    routedAppDisplayID = v9->_routedAppDisplayID;
    v9->_routedAppDisplayID = v10;

    completionHandler = v9->super._completionHandler;
    v9->super._completionHandler = 0;

    optionsData = v9->super._optionsData;
    v9->super._optionsData = 0;
  }

  return v9;
}

- (id)description
{
  commandType = self->super._commandType;
  v4 = MRMediaRemoteCopyCommandDescription();
  v5 = [NSString stringWithFormat:@"<%@ %p, command = %@, routedToApp = %@>", objc_opt_class(), self, v4, self->_routedAppDisplayID];

  return v5;
}

@end