@interface MRDRemoteControlCommand
- (BOOL)alwaysIgnoreDuringCall;
- (BOOL)alwaysIgnoreDuringSharePlay;
- (BOOL)isAVRCPCommand;
- (BOOL)isContextSensitive;
- (BOOL)nowPlayingAppStackEligible;
- (BOOL)originatedFromAccessory;
- (BOOL)originatedFromHID;
- (BOOL)shouldImplicitlyLaunchApplication;
- (MRDRemoteControlCommand)initWithCommandType:(unsigned int)a3 playerPath:(id)a4 unresolvedPlayerPath:(id)a5 senderAppDisplayID:(id)a6 optionsData:(id)a7;
- (NSData)optionsData;
- (NSData)protobufData;
- (NSString)destinationAppDisplayID;
- (id)_completionHandler;
- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4;
- (id)_optionsDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)optionValueForKey:(__CFString *)a3;
- (int)destinationAppProcessID;
- (void)_setCompletionHandler:(id)a3;
@end

@implementation MRDRemoteControlCommand

- (MRDRemoteControlCommand)initWithCommandType:(unsigned int)a3 playerPath:(id)a4 unresolvedPlayerPath:(id)a5 senderAppDisplayID:(id)a6 optionsData:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v31.receiver = self;
  v31.super_class = MRDRemoteControlCommand;
  v16 = [(MRDRemoteControlCommand *)&v31 init];
  v17 = v16;
  if (v16)
  {
    v16->_commandType = a3;
    v18 = [v12 copy];
    playerPath = v17->_playerPath;
    v17->_playerPath = v18;

    v20 = [v13 copy];
    unresolvedPlayerPath = v17->_unresolvedPlayerPath;
    v17->_unresolvedPlayerPath = v20;

    v22 = [v14 copy];
    senderAppDisplayID = v17->_senderAppDisplayID;
    v17->_senderAppDisplayID = v22;

    v24 = [v15 copy];
    optionsData = v17->_optionsData;
    v17->_optionsData = v24;

    v26 = [(MRDRemoteControlCommand *)v17 optionValueForKey:kMRMediaRemoteOptionSendOptionsNumber];
    v17->_appOptions = [v26 intValue];

    v27 = objc_alloc_init(NSDate);
    dateCreated = v17->_dateCreated;
    v17->_dateCreated = v27;

    parsedOptionsDict = v17->_parsedOptionsDict;
    v17->_parsedOptionsDict = 0;
  }

  return v17;
}

- (id)description
{
  commandType = self->_commandType;
  v4 = MRMediaRemoteCopyCommandDescription();
  v5 = objc_opt_class();
  v6 = [(MRDRemoteControlCommand *)self senderID];
  v7 = [(MRDRemoteControlCommand *)self commandID];
  v8 = [(MRDRemoteControlCommand *)self remoteControlInterfaceID];
  v9 = [NSString stringWithFormat:@"<%@ %p, command = %@, %@\n, commandID = %@\n, remote control interface = %@\n, appOptions = %ld\n, path = %@\n, unresolvedPath = %@\n>", v5, self, v4, v6, v7, v8, [(MRDRemoteControlCommand *)self appOptions], self->_playerPath, self->_unresolvedPlayerPath];

  return v9;
}

- (id)debugDescription
{
  commandType = self->_commandType;
  v4 = MRMediaRemoteCopyCommandDescription();
  v5 = objc_opt_class();
  v6 = [(MRDRemoteControlCommand *)self senderID];
  v7 = [(MRDRemoteControlCommand *)self commandID];
  v8 = [(MRDRemoteControlCommand *)self remoteControlInterfaceID];
  v9 = [(MRDRemoteControlCommand *)self appOptions];
  playerPath = self->_playerPath;
  unresolvedPlayerPath = self->_unresolvedPlayerPath;
  v12 = [(MRDRemoteControlCommand *)self _optionsDictionary];
  v13 = [NSString stringWithFormat:@"<%@ %p, command = %@, %@\n, commandID = %@\n, remote control interface = %@\n, appOptions = %ld\n, path = %@\n, unresolvedPath = %@\n, options = %@\n>", v5, self, v4, v6, v7, v8, v9, playerPath, unresolvedPlayerPath, v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MRDRemoteControlCommand *)self _copyWithZone:a3 usingConcreteClass:v5];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MRDRemoteControlCommand *)self _copyWithZone:a3 usingConcreteClass:v5];
}

- (NSData)protobufData
{
  cachedProtobufData = self->_cachedProtobufData;
  if (!cachedProtobufData)
  {
    v4 = [(MRPlayerPath *)self->_playerPath origin];
    v5 = objc_alloc_init(_MRReceivedCommandProtobuf);
    commandType = self->_commandType;
    [v5 setCommand:MRMediaRemoteCommandToProtobuf()];
    v7 = [(MRDRemoteControlCommand *)self _optionsDictionary];
    v8 = MRMediaRemoteCommandOptionsToProtobuf();
    [v5 setOptions:v8];

    if (v4)
    {
      v9 = [v4 identifier];
    }

    else
    {
      v9 = 0;
    }

    [v5 setOriginUID:v9];
    [v5 setSenderAppDisplayID:self->_senderAppDisplayID];
    v10 = [(MRDRemoteControlCommand *)self destinationAppDisplayID];
    [v5 setDestinationAppDisplayID:v10];

    [v5 setDestinationAppProcessID:{-[MRDRemoteControlCommand destinationAppProcessID](self, "destinationAppProcessID")}];
    v11 = [(MRDRemoteControlCommand *)self remoteControlInterfaceID];
    [v5 setRemoteControlInterfaceID:v11];

    appOptions = self->_appOptions;
    v13 = MRProtobufFromSendCommandAppOptions();
    [v5 setAppOptions:v13];

    v14 = [(MRPlayerPath *)self->_playerPath protobuf];
    [v5 setPlayerPath:v14];

    v15 = [v5 data];
    v16 = self->_cachedProtobufData;
    self->_cachedProtobufData = v15;

    cachedProtobufData = self->_cachedProtobufData;
  }

  return cachedProtobufData;
}

- (int)destinationAppProcessID
{
  v2 = [(MRPlayerPath *)self->_playerPath client];
  v3 = [v2 processIdentifier];

  return v3;
}

- (NSString)destinationAppDisplayID
{
  v2 = [(MRPlayerPath *)self->_playerPath client];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (NSData)optionsData
{
  parsedOptionsDict = self->_parsedOptionsDict;
  if (parsedOptionsDict)
  {
    v4 = [NSPropertyListSerialization dataWithPropertyList:parsedOptionsDict format:200 options:0 error:0];
    optionsData = self->_optionsData;
    self->_optionsData = v4;
  }

  v6 = self->_optionsData;

  return v6;
}

- (BOOL)alwaysIgnoreDuringCall
{
  v2 = [(MRDRemoteControlCommand *)self optionValueForKey:kMRMediaRemoteOptionAlwaysIgnoreDuringCall];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)alwaysIgnoreDuringSharePlay
{
  v2 = [(MRDRemoteControlCommand *)self optionValueForKey:kMRMediaRemoteOptionAlwaysIgnoreDuringSharePlay];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isContextSensitive
{
  commandType = self->_commandType;
  v3 = commandType == 125;
  if (commandType == 122)
  {
    v3 = 1;
  }

  v4 = commandType > 0x1A;
  v5 = (1 << commandType) & 0x6000001;
  return !v4 && v5 != 0 || v3;
}

- (BOOL)shouldImplicitlyLaunchApplication
{
  commandType = self->_commandType;
  result = 1;
  if ((commandType - 122 > 0x10 || ((1 << (commandType - 122)) & 0x1C809) == 0) && commandType != 0 && commandType != 2)
  {
    return 0;
  }

  return result;
}

- (BOOL)originatedFromAccessory
{
  v3 = [NSSet setWithObjects:@"com.apple.iapd", @"com.apple.iap2d", @"com.apple.BTAvrcp", 0];
  LOBYTE(self) = [v3 containsObject:self->_senderAppDisplayID];

  return self;
}

- (BOOL)originatedFromHID
{
  v3 = [NSSet setWithObjects:@"com.apple.rcd", @"rcd", 0];
  LOBYTE(self) = [v3 containsObject:self->_senderAppDisplayID];

  return self;
}

- (BOOL)isAVRCPCommand
{
  v2 = [(MRDRemoteControlCommand *)self remoteControlInterfaceID];
  v3 = [v2 isEqualToString:@"com.apple.AVRCP"];

  return v3;
}

- (id)optionValueForKey:(__CFString *)a3
{
  v4 = [(MRDRemoteControlCommand *)self _optionsDictionary];
  v5 = [v4 objectForKey:a3];

  return v5;
}

- (BOOL)nowPlayingAppStackEligible
{
  v3 = +[MRUserSettings currentSettings];
  v4 = [v3 supportMultiplayerHost];

  if ((v4 & 1) == 0)
  {
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 computeNowPlayingApplication];

    if ((v6 & 1) == 0)
    {
      v7 = +[MRUserSettings currentSettings];
      [v7 nowPlayingAppStackFailedPlayInterval];
      v9 = v8;

      if (v9 > 0.0)
      {
        v10 = [(MRDRemoteControlCommand *)self playerPath];
        v11 = [v10 origin];
        v12 = [v11 isLocal];

        if (v12)
        {
          if ([(MRDRemoteControlCommand *)self commandType]== 2)
          {
            v13 = +[MRDMediaRemoteServer server];
            v14 = [v13 nowPlayingServer];
            v15 = [(MRDRemoteControlCommand *)self playerPath];
            v16 = [v14 queryExistingPlayerPath:v15];
            v17 = [v16 playerClient];
            v18 = [v17 isPlaying];

            if ((v18 & 1) == 0)
            {
              return 1;
            }
          }

          else if (![(MRDRemoteControlCommand *)self commandType])
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

- (id)_completionHandler
{
  v2 = objc_retainBlock(self->_completionHandler);

  return v2;
}

- (void)_setCompletionHandler:(id)a3
{
  v4 = [a3 copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v4;
}

- (id)_optionsDictionary
{
  parsedOptionsDict = self->_parsedOptionsDict;
  if (!parsedOptionsDict)
  {
    optionsData = self->_optionsData;
    if (optionsData)
    {
      v5 = [NSPropertyListSerialization propertyListWithData:optionsData options:0 format:0 error:0];
    }

    else
    {
      v5 = &__NSDictionary0__struct;
    }

    v6 = [v5 mutableCopy];
    v7 = self->_parsedOptionsDict;
    self->_parsedOptionsDict = v6;

    parsedOptionsDict = self->_parsedOptionsDict;
  }

  return parsedOptionsDict;
}

- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4
{
  v5 = [(objc_class *)a4 allocWithZone:a3];
  commandType = self->_commandType;
  playerPath = self->_playerPath;
  unresolvedPlayerPath = self->_unresolvedPlayerPath;
  senderAppDisplayID = self->_senderAppDisplayID;
  v10 = [(MRDRemoteControlCommand *)self optionsData];
  v11 = [(objc_class *)v5 initWithCommandType:commandType playerPath:playerPath unresolvedPlayerPath:unresolvedPlayerPath senderAppDisplayID:senderAppDisplayID optionsData:v10];

  *(v11 + 14) = self->_appOptions;
  v12 = [self->_completionHandler copy];
  v13 = v11[8];
  v11[8] = v12;

  objc_storeStrong(v11 + 5, self->_dateCreated);
  return v11;
}

@end