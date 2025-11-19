@interface MRDRoutedRemoteControlCommand
- (MRDRoutedRemoteControlCommand)initWithCommand:(id)a3 routedApp:(id)a4;
- (id)description;
@end

@implementation MRDRoutedRemoteControlCommand

- (MRDRoutedRemoteControlCommand)initWithCommand:(id)a3 routedApp:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 _copyWithZone:0 usingConcreteClass:objc_opt_class()];

  v9 = v8;
  if (v9)
  {
    v10 = [v6 copy];
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