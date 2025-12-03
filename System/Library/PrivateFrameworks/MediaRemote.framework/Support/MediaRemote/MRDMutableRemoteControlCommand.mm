@interface MRDMutableRemoteControlCommand
- (NSString)destinationAppDisplayID;
- (int)destinationAppProcessID;
- (void)setDestinationAppDisplayID:(id)d;
- (void)setOptionValue:(id)value forKey:(__CFString *)key;
- (void)setOptionsData:(id)data;
- (void)setSenderAppDisplayID:(id)d;
@end

@implementation MRDMutableRemoteControlCommand

- (void)setOptionsData:(id)data
{
  v4 = [data copy];
  optionsData = self->super._optionsData;
  self->super._optionsData = v4;
}

- (void)setSenderAppDisplayID:(id)d
{
  v4 = [d copy];
  senderAppDisplayID = self->super._senderAppDisplayID;
  self->super._senderAppDisplayID = v4;
}

- (void)setDestinationAppDisplayID:(id)d
{
  dCopy = d;
  playerPath = [(MRDRemoteControlCommand *)self playerPath];
  client = [playerPath client];

  if (client)
  {
    if (dCopy)
    {
      [client setBundleIdentifier:dCopy];
    }
  }

  else
  {
    client = [[MRClient alloc] initWithProcessIdentifier:0 bundleIdentifier:dCopy];
    playerPath2 = [(MRDRemoteControlCommand *)self playerPath];
    [playerPath2 setClient:client];
  }
}

- (int)destinationAppProcessID
{
  playerPath = [(MRDRemoteControlCommand *)self playerPath];
  client = [playerPath client];
  processIdentifier = [client processIdentifier];

  return processIdentifier;
}

- (NSString)destinationAppDisplayID
{
  playerPath = [(MRDRemoteControlCommand *)self playerPath];
  client = [playerPath client];
  bundleIdentifier = [client bundleIdentifier];

  return bundleIdentifier;
}

- (void)setOptionValue:(id)value forKey:(__CFString *)key
{
  valueCopy = value;
  _optionsDictionary = [(MRDRemoteControlCommand *)self _optionsDictionary];
  [_optionsDictionary setValue:valueCopy forKey:key];
}

@end