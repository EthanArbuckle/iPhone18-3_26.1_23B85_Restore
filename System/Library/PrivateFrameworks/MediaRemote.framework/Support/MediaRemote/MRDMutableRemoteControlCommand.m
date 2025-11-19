@interface MRDMutableRemoteControlCommand
- (NSString)destinationAppDisplayID;
- (int)destinationAppProcessID;
- (void)setDestinationAppDisplayID:(id)a3;
- (void)setOptionValue:(id)a3 forKey:(__CFString *)a4;
- (void)setOptionsData:(id)a3;
- (void)setSenderAppDisplayID:(id)a3;
@end

@implementation MRDMutableRemoteControlCommand

- (void)setOptionsData:(id)a3
{
  v4 = [a3 copy];
  optionsData = self->super._optionsData;
  self->super._optionsData = v4;
}

- (void)setSenderAppDisplayID:(id)a3
{
  v4 = [a3 copy];
  senderAppDisplayID = self->super._senderAppDisplayID;
  self->super._senderAppDisplayID = v4;
}

- (void)setDestinationAppDisplayID:(id)a3
{
  v7 = a3;
  v4 = [(MRDRemoteControlCommand *)self playerPath];
  v5 = [v4 client];

  if (v5)
  {
    if (v7)
    {
      [v5 setBundleIdentifier:v7];
    }
  }

  else
  {
    v5 = [[MRClient alloc] initWithProcessIdentifier:0 bundleIdentifier:v7];
    v6 = [(MRDRemoteControlCommand *)self playerPath];
    [v6 setClient:v5];
  }
}

- (int)destinationAppProcessID
{
  v2 = [(MRDRemoteControlCommand *)self playerPath];
  v3 = [v2 client];
  v4 = [v3 processIdentifier];

  return v4;
}

- (NSString)destinationAppDisplayID
{
  v2 = [(MRDRemoteControlCommand *)self playerPath];
  v3 = [v2 client];
  v4 = [v3 bundleIdentifier];

  return v4;
}

- (void)setOptionValue:(id)a3 forKey:(__CFString *)a4
{
  v6 = a3;
  v7 = [(MRDRemoteControlCommand *)self _optionsDictionary];
  [v7 setValue:v6 forKey:a4];
}

@end