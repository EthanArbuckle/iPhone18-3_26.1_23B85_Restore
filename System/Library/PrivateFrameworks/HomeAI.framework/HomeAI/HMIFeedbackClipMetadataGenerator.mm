@interface HMIFeedbackClipMetadataGenerator
+ (id)metadataForCameraProfile:(id)profile;
+ (id)metadataForClip:(id)clip;
+ (id)metadataForClip:(id)clip withCameraProfile:(id)profile inHome:(id)home;
+ (id)metadataForHome:(id)home;
@end

@implementation HMIFeedbackClipMetadataGenerator

+ (id)metadataForCameraProfile:(id)profile
{
  v64[13] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  settingsControl = [profileCopy settingsControl];
  nightVision = [settingsControl nightVision];
  currentHorizontalTilt = [settingsControl currentHorizontalTilt];
  currentVerticalTilt = [settingsControl currentVerticalTilt];
  opticalZoom = [settingsControl opticalZoom];
  digitalZoom = [settingsControl digitalZoom];
  imageRotation = [settingsControl imageRotation];
  v55 = settingsControl;
  imageMirroring = [settingsControl imageMirroring];
  accessory = [profileCopy accessory];

  if (accessory)
  {
    name = [accessory name];
    uniqueIdentifier = [accessory uniqueIdentifier];
    model = [accessory model];
    manufacturer = [accessory manufacturer];
    firmwareVersion = [accessory firmwareVersion];
    room = [accessory room];
    v14 = room;
    if (room)
    {
      name2 = [room name];
    }

    else
    {
      name2 = 0;
    }

    v63[0] = @"cameraName";
    if (name)
    {
      v48 = 0;
      null = name;
      goto LABEL_9;
    }
  }

  else
  {
    uniqueIdentifier = 0;
    name2 = 0;
    firmwareVersion = 0;
    manufacturer = 0;
    model = 0;
    v63[0] = @"cameraName";
  }

  null = [MEMORY[0x277CBEB68] null];
  name = 0;
  v48 = 1;
LABEL_9:
  v43 = null;
  v64[0] = null;
  v63[1] = @"cameraUUID";
  uUIDString = [uniqueIdentifier UUIDString];
  v47 = uUIDString;
  if (!uUIDString)
  {
    uUIDString = [MEMORY[0x277CBEB68] null];
  }

  v42 = uUIDString;
  v64[1] = uUIDString;
  v63[2] = @"roomName";
  null2 = name2;
  if (!name2)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v41 = null2;
  v64[2] = null2;
  v63[3] = @"nightVision";
  value = [nightVision value];
  v56 = value;
  if (!value)
  {
    value = [MEMORY[0x277CBEB68] null];
  }

  v49 = accessory;
  v40 = value;
  v64[3] = value;
  v63[4] = @"currentHorizontalTilt";
  value2 = [currentHorizontalTilt value];
  v46 = value2;
  if (!value2)
  {
    value2 = [MEMORY[0x277CBEB68] null];
  }

  v54 = nightVision;
  v39 = value2;
  v64[4] = value2;
  v63[5] = @"currentVerticalTilt";
  value3 = [currentVerticalTilt value];
  v21 = value3;
  if (!value3)
  {
    value3 = [MEMORY[0x277CBEB68] null];
  }

  v38 = value3;
  v64[5] = value3;
  v63[6] = @"opticalZoom";
  v52 = opticalZoom;
  value4 = [opticalZoom value];
  v23 = value4;
  if (!value4)
  {
    value4 = [MEMORY[0x277CBEB68] null];
  }

  v53 = currentVerticalTilt;
  v37 = value4;
  v64[6] = value4;
  v63[7] = @"digitalZoom";
  value5 = [digitalZoom value];
  v25 = value5;
  if (!value5)
  {
    value5 = [MEMORY[0x277CBEB68] null];
  }

  v36 = value5;
  v64[7] = value5;
  v63[8] = @"imageRotation";
  value6 = [imageRotation value];
  v27 = value6;
  if (!value6)
  {
    value6 = [MEMORY[0x277CBEB68] null];
  }

  v45 = v21;
  v35 = value6;
  v64[8] = value6;
  v63[9] = @"imageMirroring";
  v50 = imageMirroring;
  value7 = [imageMirroring value];
  null3 = value7;
  if (!value7)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v51 = currentHorizontalTilt;
  v64[9] = null3;
  v63[10] = @"model";
  null4 = model;
  if (!model)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v64[10] = null4;
  v63[11] = @"manufacturer";
  null5 = manufacturer;
  if (!manufacturer)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  v64[11] = null5;
  v63[12] = @"firmwareVersion";
  null6 = firmwareVersion;
  if (!firmwareVersion)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v64[12] = null6;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:13];
  if (!firmwareVersion)
  {
  }

  if (!manufacturer)
  {
  }

  if (!model)
  {
  }

  if (!value7)
  {
  }

  if (!v27)
  {
  }

  if (!v25)
  {
  }

  if (!v23)
  {
  }

  if (!v45)
  {
  }

  if (!v46)
  {
  }

  v33 = v56;
  if (!v56)
  {

    v33 = 0;
  }

  if (name2)
  {
    if (v47)
    {
      goto LABEL_55;
    }
  }

  else
  {

    if (v47)
    {
      goto LABEL_55;
    }
  }

LABEL_55:
  if (v48)
  {
  }

  return v44;
}

+ (id)metadataForClip:(id)clip
{
  v18[5] = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  significantEvents = [clipCopy significantEvents];
  v5 = [significantEvents na_map:&__block_literal_global_16];

  v17[0] = @"clipUUID";
  uniqueIdentifier = [clipCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v18[0] = uUIDString;
  v17[1] = @"startDate";
  startDate = [clipCopy startDate];
  v9 = HMIConvertNSDateToIsoDateString(startDate);
  v18[1] = v9;
  v17[2] = @"duration";
  v10 = MEMORY[0x277CCABB0];
  [clipCopy duration];
  v11 = [v10 numberWithDouble:?];
  v12 = HMIJSONDecimalNumberForNumber(v11, 2);
  v18[2] = v12;
  v17[3] = @"quality";
  [clipCopy quality];

  v13 = HMStringFromCameraClipQuality();
  v18[3] = v13;
  v17[4] = @"significantEvents";
  allObjects = [v5 allObjects];
  v18[4] = allObjects;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];

  return v15;
}

id __52__HMIFeedbackClipMetadataGenerator_metadataForClip___block_invoke(uint64_t a1, void *a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"timeOffsetWithinClip";
  v2 = MEMORY[0x277CCABB0];
  v3 = a2;
  [v3 timeOffsetWithinClip];
  v4 = [v2 numberWithDouble:?];
  v5 = HMIJSONDecimalNumberForNumber(v4, 2);
  v13[0] = v5;
  v12[1] = @"dateOfOccurrence";
  v6 = [v3 dateOfOccurrence];
  v7 = HMIConvertNSDateToIsoDateString(v6);
  v13[1] = v7;
  v12[2] = @"confidenceLevel";
  [v3 confidenceLevel];
  v8 = HMStringFromCameraSignificantEventConfidenceLevel();
  v13[2] = v8;
  v12[3] = @"reason";
  [v3 reason];

  v9 = HMStringFromCameraSignificantEventReason();
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

+ (id)metadataForHome:(id)home
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"homeUUID";
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v8[0] = uUIDString;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)metadataForClip:(id)clip withCameraProfile:(id)profile inHome:(id)home
{
  homeCopy = home;
  profileCopy = profile;
  v9 = [HMIFeedbackClipMetadataGenerator metadataForClip:clip];
  v10 = [HMIFeedbackClipMetadataGenerator metadataForCameraProfile:profileCopy];

  v11 = [HMIFeedbackClipMetadataGenerator metadataForHome:homeCopy];

  v12 = [[HMIFeedbackClipMetadata alloc] initWithClipMetadata:v9 cameraMetadata:v10 homeMetadata:v11];

  return v12;
}

@end