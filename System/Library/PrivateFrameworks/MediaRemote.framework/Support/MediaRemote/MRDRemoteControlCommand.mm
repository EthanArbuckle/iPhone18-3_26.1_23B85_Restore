@interface MRDRemoteControlCommand
- (BOOL)alwaysIgnoreDuringCall;
- (BOOL)alwaysIgnoreDuringSharePlay;
- (BOOL)isAVRCPCommand;
- (BOOL)isContextSensitive;
- (BOOL)nowPlayingAppStackEligible;
- (BOOL)originatedFromAccessory;
- (BOOL)originatedFromHID;
- (BOOL)shouldImplicitlyLaunchApplication;
- (MRDRemoteControlCommand)initWithCommandType:(unsigned int)type playerPath:(id)path unresolvedPlayerPath:(id)playerPath senderAppDisplayID:(id)d optionsData:(id)data;
- (NSData)optionsData;
- (NSData)protobufData;
- (NSString)destinationAppDisplayID;
- (id)_completionHandler;
- (id)_copyWithZone:(_NSZone *)zone usingConcreteClass:(Class)class;
- (id)_optionsDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)optionValueForKey:(__CFString *)key;
- (int)destinationAppProcessID;
- (void)_setCompletionHandler:(id)handler;
@end

@implementation MRDRemoteControlCommand

- (MRDRemoteControlCommand)initWithCommandType:(unsigned int)type playerPath:(id)path unresolvedPlayerPath:(id)playerPath senderAppDisplayID:(id)d optionsData:(id)data
{
  pathCopy = path;
  playerPathCopy = playerPath;
  dCopy = d;
  dataCopy = data;
  v31.receiver = self;
  v31.super_class = MRDRemoteControlCommand;
  v16 = [(MRDRemoteControlCommand *)&v31 init];
  v17 = v16;
  if (v16)
  {
    v16->_commandType = type;
    v18 = [pathCopy copy];
    playerPath = v17->_playerPath;
    v17->_playerPath = v18;

    v20 = [playerPathCopy copy];
    unresolvedPlayerPath = v17->_unresolvedPlayerPath;
    v17->_unresolvedPlayerPath = v20;

    v22 = [dCopy copy];
    senderAppDisplayID = v17->_senderAppDisplayID;
    v17->_senderAppDisplayID = v22;

    v24 = [dataCopy copy];
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
  senderID = [(MRDRemoteControlCommand *)self senderID];
  commandID = [(MRDRemoteControlCommand *)self commandID];
  remoteControlInterfaceID = [(MRDRemoteControlCommand *)self remoteControlInterfaceID];
  v9 = [NSString stringWithFormat:@"<%@ %p, command = %@, %@\n, commandID = %@\n, remote control interface = %@\n, appOptions = %ld\n, path = %@\n, unresolvedPath = %@\n>", v5, self, v4, senderID, commandID, remoteControlInterfaceID, [(MRDRemoteControlCommand *)self appOptions], self->_playerPath, self->_unresolvedPlayerPath];

  return v9;
}

- (id)debugDescription
{
  commandType = self->_commandType;
  v4 = MRMediaRemoteCopyCommandDescription();
  v5 = objc_opt_class();
  senderID = [(MRDRemoteControlCommand *)self senderID];
  commandID = [(MRDRemoteControlCommand *)self commandID];
  remoteControlInterfaceID = [(MRDRemoteControlCommand *)self remoteControlInterfaceID];
  appOptions = [(MRDRemoteControlCommand *)self appOptions];
  playerPath = self->_playerPath;
  unresolvedPlayerPath = self->_unresolvedPlayerPath;
  _optionsDictionary = [(MRDRemoteControlCommand *)self _optionsDictionary];
  v13 = [NSString stringWithFormat:@"<%@ %p, command = %@, %@\n, commandID = %@\n, remote control interface = %@\n, appOptions = %ld\n, path = %@\n, unresolvedPath = %@\n, options = %@\n>", v5, self, v4, senderID, commandID, remoteControlInterfaceID, appOptions, playerPath, unresolvedPlayerPath, _optionsDictionary];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MRDRemoteControlCommand *)self _copyWithZone:zone usingConcreteClass:v5];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MRDRemoteControlCommand *)self _copyWithZone:zone usingConcreteClass:v5];
}

- (NSData)protobufData
{
  cachedProtobufData = self->_cachedProtobufData;
  if (!cachedProtobufData)
  {
    origin = [(MRPlayerPath *)self->_playerPath origin];
    v5 = objc_alloc_init(_MRReceivedCommandProtobuf);
    commandType = self->_commandType;
    [v5 setCommand:MRMediaRemoteCommandToProtobuf()];
    _optionsDictionary = [(MRDRemoteControlCommand *)self _optionsDictionary];
    v8 = MRMediaRemoteCommandOptionsToProtobuf();
    [v5 setOptions:v8];

    if (origin)
    {
      identifier = [origin identifier];
    }

    else
    {
      identifier = 0;
    }

    [v5 setOriginUID:identifier];
    [v5 setSenderAppDisplayID:self->_senderAppDisplayID];
    destinationAppDisplayID = [(MRDRemoteControlCommand *)self destinationAppDisplayID];
    [v5 setDestinationAppDisplayID:destinationAppDisplayID];

    [v5 setDestinationAppProcessID:{-[MRDRemoteControlCommand destinationAppProcessID](self, "destinationAppProcessID")}];
    remoteControlInterfaceID = [(MRDRemoteControlCommand *)self remoteControlInterfaceID];
    [v5 setRemoteControlInterfaceID:remoteControlInterfaceID];

    appOptions = self->_appOptions;
    v13 = MRProtobufFromSendCommandAppOptions();
    [v5 setAppOptions:v13];

    protobuf = [(MRPlayerPath *)self->_playerPath protobuf];
    [v5 setPlayerPath:protobuf];

    data = [v5 data];
    v16 = self->_cachedProtobufData;
    self->_cachedProtobufData = data;

    cachedProtobufData = self->_cachedProtobufData;
  }

  return cachedProtobufData;
}

- (int)destinationAppProcessID
{
  client = [(MRPlayerPath *)self->_playerPath client];
  processIdentifier = [client processIdentifier];

  return processIdentifier;
}

- (NSString)destinationAppDisplayID
{
  client = [(MRPlayerPath *)self->_playerPath client];
  bundleIdentifier = [client bundleIdentifier];

  return bundleIdentifier;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)alwaysIgnoreDuringSharePlay
{
  v2 = [(MRDRemoteControlCommand *)self optionValueForKey:kMRMediaRemoteOptionAlwaysIgnoreDuringSharePlay];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  remoteControlInterfaceID = [(MRDRemoteControlCommand *)self remoteControlInterfaceID];
  v3 = [remoteControlInterfaceID isEqualToString:@"com.apple.AVRCP"];

  return v3;
}

- (id)optionValueForKey:(__CFString *)key
{
  _optionsDictionary = [(MRDRemoteControlCommand *)self _optionsDictionary];
  v5 = [_optionsDictionary objectForKey:key];

  return v5;
}

- (BOOL)nowPlayingAppStackEligible
{
  v3 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v3 supportMultiplayerHost];

  if ((supportMultiplayerHost & 1) == 0)
  {
    v5 = +[MRUserSettings currentSettings];
    computeNowPlayingApplication = [v5 computeNowPlayingApplication];

    if ((computeNowPlayingApplication & 1) == 0)
    {
      v7 = +[MRUserSettings currentSettings];
      [v7 nowPlayingAppStackFailedPlayInterval];
      v9 = v8;

      if (v9 > 0.0)
      {
        playerPath = [(MRDRemoteControlCommand *)self playerPath];
        origin = [playerPath origin];
        isLocal = [origin isLocal];

        if (isLocal)
        {
          if ([(MRDRemoteControlCommand *)self commandType]== 2)
          {
            v13 = +[MRDMediaRemoteServer server];
            nowPlayingServer = [v13 nowPlayingServer];
            playerPath2 = [(MRDRemoteControlCommand *)self playerPath];
            v16 = [nowPlayingServer queryExistingPlayerPath:playerPath2];
            playerClient = [v16 playerClient];
            isPlaying = [playerClient isPlaying];

            if ((isPlaying & 1) == 0)
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

- (void)_setCompletionHandler:(id)handler
{
  v4 = [handler copy];
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

- (id)_copyWithZone:(_NSZone *)zone usingConcreteClass:(Class)class
{
  v5 = [(objc_class *)class allocWithZone:zone];
  commandType = self->_commandType;
  playerPath = self->_playerPath;
  unresolvedPlayerPath = self->_unresolvedPlayerPath;
  senderAppDisplayID = self->_senderAppDisplayID;
  optionsData = [(MRDRemoteControlCommand *)self optionsData];
  v11 = [(objc_class *)v5 initWithCommandType:commandType playerPath:playerPath unresolvedPlayerPath:unresolvedPlayerPath senderAppDisplayID:senderAppDisplayID optionsData:optionsData];

  *(v11 + 14) = self->_appOptions;
  v12 = [self->_completionHandler copy];
  v13 = v11[8];
  v11[8] = v12;

  objc_storeStrong(v11 + 5, self->_dateCreated);
  return v11;
}

@end