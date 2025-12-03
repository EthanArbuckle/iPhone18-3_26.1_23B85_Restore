@interface MRGroupComposition
+ (id)homePodHomeTheaterComposition;
+ (id)homePodHomeTheaterCompositionWithHomePodModelIdentifier:(id)identifier;
+ (id)homePodMiniHomeTheaterComposition;
+ (id)homePodMiniStereoPairComposition;
+ (id)homePodStereoPairComposition;
+ (id)homePodStereoPairCompositionWithModelIdentifier:(id)identifier;
+ (id)multiBuiltInComposition;
+ (id)unknownComposition;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)localizedGroupComposition;
- (id)localizedGroupCompositionForDeviceClass:(int64_t)class modelID:(id)d;
- (unint64_t)totalCount;
- (void)addHomePodWithModelIdentifier:(id)identifier;
@end

@implementation MRGroupComposition

- (unint64_t)totalCount
{
  atvCount = [(MRGroupComposition *)self atvCount];
  v4 = [(MRGroupComposition *)self homePodCount]+ atvCount;
  homePodMiniCount = [(MRGroupComposition *)self homePodMiniCount];
  v6 = v4 + homePodMiniCount + [(MRGroupComposition *)self headphoneCount];
  bluetoothSpeakerCount = [(MRGroupComposition *)self bluetoothSpeakerCount];
  v8 = bluetoothSpeakerCount + [(MRGroupComposition *)self setTopCount];
  v9 = v6 + v8 + [(MRGroupComposition *)self tvStickCount];
  tvCount = [(MRGroupComposition *)self tvCount];
  v11 = tvCount + [(MRGroupComposition *)self macCount];
  v12 = v11 + [(MRGroupComposition *)self hifiCount];
  v13 = v9 + v12 + [(MRGroupComposition *)self lofiCount];
  builtInCount = [(MRGroupComposition *)self builtInCount];
  v15 = builtInCount + [(MRGroupComposition *)self legacyBeatsCount];
  v16 = v15 + [(MRGroupComposition *)self iPhoneCount];
  v17 = v16 + [(MRGroupComposition *)self visionCount];
  v18 = v13 + v17 + [(MRGroupComposition *)self displayCount];
  carplayCount = [(MRGroupComposition *)self carplayCount];
  v20 = carplayCount + [(MRGroupComposition *)self vehicleCount];
  v21 = v20 + [(MRGroupComposition *)self hearingDeviceCount];
  v22 = v21 + [(MRGroupComposition *)self earPodCount];
  return v18 + v22 + [(MRGroupComposition *)self unknownCount];
}

+ (id)multiBuiltInComposition
{
  v2 = objc_alloc_init(MRGroupComposition);
  [(MRGroupComposition *)v2 setBuiltInCount:2];

  return v2;
}

+ (id)homePodStereoPairCompositionWithModelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(MRGroupComposition);
  [(MRGroupComposition *)v4 addHomePodWithModelIdentifier:identifierCopy];
  [(MRGroupComposition *)v4 addHomePodWithModelIdentifier:identifierCopy];

  return v4;
}

+ (id)homePodStereoPairComposition
{
  v2 = objc_alloc_init(MRGroupComposition);
  [(MRGroupComposition *)v2 setHomePodCount:2];

  return v2;
}

+ (id)homePodMiniStereoPairComposition
{
  v2 = objc_alloc_init(MRGroupComposition);
  [(MRGroupComposition *)v2 setHomePodMiniCount:2];

  return v2;
}

+ (id)homePodHomeTheaterCompositionWithHomePodModelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(MRGroupComposition);
  [(MRGroupComposition *)v4 addHomePodWithModelIdentifier:identifierCopy];

  [(MRGroupComposition *)v4 setAtvCount:1];

  return v4;
}

+ (id)homePodHomeTheaterComposition
{
  v2 = objc_alloc_init(MRGroupComposition);
  [(MRGroupComposition *)v2 setAtvCount:1];
  [(MRGroupComposition *)v2 setHomePodCount:1];

  return v2;
}

+ (id)homePodMiniHomeTheaterComposition
{
  v2 = objc_alloc_init(MRGroupComposition);
  [(MRGroupComposition *)v2 setAtvCount:1];
  [(MRGroupComposition *)v2 setHomePodMiniCount:1];

  return v2;
}

+ (id)unknownComposition
{
  v2 = objc_alloc_init(MRGroupComposition);
  [(MRGroupComposition *)v2 setUnknownCount:1];

  return v2;
}

- (void)addHomePodWithModelIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MEMORY[0x1E695DFD8];
  v9[0] = @"AudioAccessory5,1";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [v5 setWithArray:v6];

  if (identifierCopy && [v7 containsObject:identifierCopy])
  {
    [(MRGroupComposition *)self setHomePodMiniCount:[(MRGroupComposition *)self homePodMiniCount]+ 1];
  }

  else
  {
    [(MRGroupComposition *)self setHomePodCount:[(MRGroupComposition *)self homePodCount]+ 1];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)localizedGroupComposition
{
  v3 = +[MROrigin localOrigin];
  v4 = [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v3];

  if (v4)
  {
    deviceClass = [v4 deviceClass];
    [v4 modelID];
  }

  else
  {
    deviceClass = +[MRDeviceInfo deviceClass];
    MSVGetDeviceProductType();
  }
  v6 = ;
  v7 = [(MRGroupComposition *)self localizedGroupCompositionForDeviceClass:deviceClass modelID:v6];

  return v7;
}

- (id)localizedGroupCompositionForDeviceClass:(int64_t)class modelID:(id)d
{
  dCopy = d;
  if ([(MRGroupComposition *)self builtInCount])
  {
    v7 = [(MRGroupComposition *)self copy];
    selfCopy = v7;
    switch(class)
    {
      case 7:
        [(MRGroupComposition *)v7 setBuiltInCount:0];
        [(MRGroupComposition *)selfCopy addHomePodWithModelIdentifier:dCopy];
        break;
      case 4:
        [(MRGroupComposition *)v7 setBuiltInCount:0];
        [(MRGroupComposition *)selfCopy setAtvCount:[(MRGroupComposition *)selfCopy atvCount]+ 1];
        break;
      case 1:
        [(MRGroupComposition *)v7 setBuiltInCount:0];
        [(MRGroupComposition *)selfCopy setIPhoneCount:[(MRGroupComposition *)selfCopy iPhoneCount]+ 1];
        break;
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[MRGroupComposition allocWithZone:?]];
  soloProductIdentifier = [(MRGroupComposition *)self soloProductIdentifier];
  [(MRGroupComposition *)v4 setSoloProductIdentifier:soloProductIdentifier];

  soloModelIdentifier = [(MRGroupComposition *)self soloModelIdentifier];
  [(MRGroupComposition *)v4 setSoloModelIdentifier:soloModelIdentifier];

  [(MRGroupComposition *)v4 setAtvCount:[(MRGroupComposition *)self atvCount]];
  [(MRGroupComposition *)v4 setHomePodCount:[(MRGroupComposition *)self homePodCount]];
  [(MRGroupComposition *)v4 setHomePodMiniCount:[(MRGroupComposition *)self homePodMiniCount]];
  [(MRGroupComposition *)v4 setHeadphoneCount:[(MRGroupComposition *)self headphoneCount]];
  [(MRGroupComposition *)v4 setBluetoothSpeakerCount:[(MRGroupComposition *)self bluetoothSpeakerCount]];
  [(MRGroupComposition *)v4 setSetTopCount:[(MRGroupComposition *)self setTopCount]];
  [(MRGroupComposition *)v4 setTvStickCount:[(MRGroupComposition *)self tvStickCount]];
  [(MRGroupComposition *)v4 setTvCount:[(MRGroupComposition *)self tvCount]];
  [(MRGroupComposition *)v4 setMacCount:[(MRGroupComposition *)self macCount]];
  [(MRGroupComposition *)v4 setHifiCount:[(MRGroupComposition *)self hifiCount]];
  [(MRGroupComposition *)v4 setLofiCount:[(MRGroupComposition *)self lofiCount]];
  [(MRGroupComposition *)v4 setBuiltInCount:[(MRGroupComposition *)self builtInCount]];
  [(MRGroupComposition *)v4 setLegacyBeatsCount:[(MRGroupComposition *)self legacyBeatsCount]];
  [(MRGroupComposition *)v4 setIPhoneCount:[(MRGroupComposition *)self iPhoneCount]];
  [(MRGroupComposition *)v4 setVisionCount:[(MRGroupComposition *)self visionCount]];
  [(MRGroupComposition *)v4 setDisplayCount:[(MRGroupComposition *)self displayCount]];
  [(MRGroupComposition *)v4 setCarplayCount:[(MRGroupComposition *)self carplayCount]];
  [(MRGroupComposition *)v4 setVehicleCount:[(MRGroupComposition *)self vehicleCount]];
  [(MRGroupComposition *)v4 setHearingDeviceCount:[(MRGroupComposition *)self hearingDeviceCount]];
  [(MRGroupComposition *)v4 setEarPodCount:[(MRGroupComposition *)self earPodCount]];
  [(MRGroupComposition *)v4 setUnknownCount:[(MRGroupComposition *)self unknownCount]];
  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p); ", v5, self];

  soloModelIdentifier = [(MRGroupComposition *)self soloModelIdentifier];
  [v6 appendFormat:@"soloModelIdentifier: %@, ", soloModelIdentifier];

  soloProductIdentifier = [(MRGroupComposition *)self soloProductIdentifier];
  [v6 appendFormat:@"soloProductIdentifier: %@;", soloProductIdentifier];

  [v6 appendFormat:@"total count: %lu;", -[MRGroupComposition totalCount](self, "totalCount")];
  if ([(MRGroupComposition *)self atvCount])
  {
    [v6 appendFormat:@"atv: %lu;", -[MRGroupComposition atvCount](self, "atvCount")];
  }

  if ([(MRGroupComposition *)self homePodCount])
  {
    [v6 appendFormat:@"homePod: %lu;", -[MRGroupComposition homePodCount](self, "homePodCount")];
  }

  if ([(MRGroupComposition *)self homePodMiniCount])
  {
    [v6 appendFormat:@"homePodMini: %lu;", -[MRGroupComposition homePodMiniCount](self, "homePodMiniCount")];
  }

  if ([(MRGroupComposition *)self headphoneCount])
  {
    [v6 appendFormat:@"headphone: %lu;", -[MRGroupComposition headphoneCount](self, "headphoneCount")];
  }

  if ([(MRGroupComposition *)self bluetoothSpeakerCount])
  {
    [v6 appendFormat:@"bluetoothSpeaker: %lu;", -[MRGroupComposition bluetoothSpeakerCount](self, "bluetoothSpeakerCount")];
  }

  if ([(MRGroupComposition *)self setTopCount])
  {
    [v6 appendFormat:@"setTop: %lu;", -[MRGroupComposition setTopCount](self, "setTopCount")];
  }

  if ([(MRGroupComposition *)self tvStickCount])
  {
    [v6 appendFormat:@"tvStick: %lu;", -[MRGroupComposition tvStickCount](self, "tvStickCount")];
  }

  if ([(MRGroupComposition *)self tvCount])
  {
    [v6 appendFormat:@"tv: %lu;", -[MRGroupComposition tvCount](self, "tvCount")];
  }

  if ([(MRGroupComposition *)self macCount])
  {
    [v6 appendFormat:@"mac: %lu;", -[MRGroupComposition macCount](self, "macCount")];
  }

  if ([(MRGroupComposition *)self hifiCount])
  {
    [v6 appendFormat:@"hifi: %lu;", -[MRGroupComposition hifiCount](self, "hifiCount")];
  }

  if ([(MRGroupComposition *)self lofiCount])
  {
    [v6 appendFormat:@"lofi: %lu;", -[MRGroupComposition lofiCount](self, "lofiCount")];
  }

  if ([(MRGroupComposition *)self builtInCount])
  {
    [v6 appendFormat:@"builtIn: %lu;", -[MRGroupComposition builtInCount](self, "builtInCount")];
  }

  if ([(MRGroupComposition *)self legacyBeatsCount])
  {
    [v6 appendFormat:@"legacyBeats: %lu;", -[MRGroupComposition legacyBeatsCount](self, "legacyBeatsCount")];
  }

  if ([(MRGroupComposition *)self iPhoneCount])
  {
    [v6 appendFormat:@"iPhone: %lu;", -[MRGroupComposition iPhoneCount](self, "iPhoneCount")];
  }

  if ([(MRGroupComposition *)self visionCount])
  {
    [v6 appendFormat:@"vision: %lu;", -[MRGroupComposition visionCount](self, "visionCount")];
  }

  if ([(MRGroupComposition *)self displayCount])
  {
    [v6 appendFormat:@"display: %lu;", -[MRGroupComposition displayCount](self, "displayCount")];
  }

  if ([(MRGroupComposition *)self carplayCount])
  {
    [v6 appendFormat:@"carplay: %lu;", -[MRGroupComposition carplayCount](self, "carplayCount")];
  }

  if ([(MRGroupComposition *)self vehicleCount])
  {
    [v6 appendFormat:@"vehicle: %lu;", -[MRGroupComposition vehicleCount](self, "vehicleCount")];
  }

  if ([(MRGroupComposition *)self hearingDeviceCount])
  {
    [v6 appendFormat:@"hearingDevice: %lu;", -[MRGroupComposition hearingDeviceCount](self, "hearingDeviceCount")];
  }

  if ([(MRGroupComposition *)self earPodCount])
  {
    [v6 appendFormat:@"earPodCount: %lu;", -[MRGroupComposition earPodCount](self, "earPodCount")];
  }

  if ([(MRGroupComposition *)self unknownCount])
  {
    [v6 appendFormat:@"unknown: %lu;", -[MRGroupComposition unknownCount](self, "unknownCount")];
  }

  [v6 appendString:@">"];

  return v6;
}

@end