@interface HMIFeedbackClipMetadataGenerator
+ (id)metadataForCameraProfile:(id)a3;
+ (id)metadataForClip:(id)a3;
+ (id)metadataForClip:(id)a3 withCameraProfile:(id)a4 inHome:(id)a5;
+ (id)metadataForHome:(id)a3;
@end

@implementation HMIFeedbackClipMetadataGenerator

+ (id)metadataForCameraProfile:(id)a3
{
  v64[13] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 settingsControl];
  v5 = [v4 nightVision];
  v6 = [v4 currentHorizontalTilt];
  v7 = [v4 currentVerticalTilt];
  v8 = [v4 opticalZoom];
  v9 = [v4 digitalZoom];
  v10 = [v4 imageRotation];
  v55 = v4;
  v11 = [v4 imageMirroring];
  v12 = [v3 accessory];

  if (v12)
  {
    v57 = [v12 name];
    v59 = [v12 uniqueIdentifier];
    v62 = [v12 model];
    v61 = [v12 manufacturer];
    v58 = [v12 firmwareVersion];
    v13 = [v12 room];
    v14 = v13;
    if (v13)
    {
      v60 = [v13 name];
    }

    else
    {
      v60 = 0;
    }

    v63[0] = @"cameraName";
    if (v57)
    {
      v48 = 0;
      v15 = v57;
      goto LABEL_9;
    }
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v61 = 0;
    v62 = 0;
    v63[0] = @"cameraName";
  }

  v15 = [MEMORY[0x277CBEB68] null];
  v57 = 0;
  v48 = 1;
LABEL_9:
  v43 = v15;
  v64[0] = v15;
  v63[1] = @"cameraUUID";
  v16 = [v59 UUIDString];
  v47 = v16;
  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v42 = v16;
  v64[1] = v16;
  v63[2] = @"roomName";
  v17 = v60;
  if (!v60)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v41 = v17;
  v64[2] = v17;
  v63[3] = @"nightVision";
  v18 = [v5 value];
  v56 = v18;
  if (!v18)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v49 = v12;
  v40 = v18;
  v64[3] = v18;
  v63[4] = @"currentHorizontalTilt";
  v19 = [v6 value];
  v46 = v19;
  if (!v19)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v54 = v5;
  v39 = v19;
  v64[4] = v19;
  v63[5] = @"currentVerticalTilt";
  v20 = [v7 value];
  v21 = v20;
  if (!v20)
  {
    v20 = [MEMORY[0x277CBEB68] null];
  }

  v38 = v20;
  v64[5] = v20;
  v63[6] = @"opticalZoom";
  v52 = v8;
  v22 = [v8 value];
  v23 = v22;
  if (!v22)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v53 = v7;
  v37 = v22;
  v64[6] = v22;
  v63[7] = @"digitalZoom";
  v24 = [v9 value];
  v25 = v24;
  if (!v24)
  {
    v24 = [MEMORY[0x277CBEB68] null];
  }

  v36 = v24;
  v64[7] = v24;
  v63[8] = @"imageRotation";
  v26 = [v10 value];
  v27 = v26;
  if (!v26)
  {
    v26 = [MEMORY[0x277CBEB68] null];
  }

  v45 = v21;
  v35 = v26;
  v64[8] = v26;
  v63[9] = @"imageMirroring";
  v50 = v11;
  v28 = [v11 value];
  v29 = v28;
  if (!v28)
  {
    v29 = [MEMORY[0x277CBEB68] null];
  }

  v51 = v6;
  v64[9] = v29;
  v63[10] = @"model";
  v30 = v62;
  if (!v62)
  {
    v30 = [MEMORY[0x277CBEB68] null];
  }

  v64[10] = v30;
  v63[11] = @"manufacturer";
  v31 = v61;
  if (!v61)
  {
    v31 = [MEMORY[0x277CBEB68] null];
  }

  v64[11] = v31;
  v63[12] = @"firmwareVersion";
  v32 = v58;
  if (!v58)
  {
    v32 = [MEMORY[0x277CBEB68] null];
  }

  v64[12] = v32;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:13];
  if (!v58)
  {
  }

  if (!v61)
  {
  }

  if (!v62)
  {
  }

  if (!v28)
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

  if (v60)
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

+ (id)metadataForClip:(id)a3
{
  v18[5] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 significantEvents];
  v5 = [v4 na_map:&__block_literal_global_16];

  v17[0] = @"clipUUID";
  v6 = [v3 uniqueIdentifier];
  v7 = [v6 UUIDString];
  v18[0] = v7;
  v17[1] = @"startDate";
  v8 = [v3 startDate];
  v9 = HMIConvertNSDateToIsoDateString(v8);
  v18[1] = v9;
  v17[2] = @"duration";
  v10 = MEMORY[0x277CCABB0];
  [v3 duration];
  v11 = [v10 numberWithDouble:?];
  v12 = HMIJSONDecimalNumberForNumber(v11, 2);
  v18[2] = v12;
  v17[3] = @"quality";
  [v3 quality];

  v13 = HMStringFromCameraClipQuality();
  v18[3] = v13;
  v17[4] = @"significantEvents";
  v14 = [v5 allObjects];
  v18[4] = v14;
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

+ (id)metadataForHome:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"homeUUID";
  v3 = [a3 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)metadataForClip:(id)a3 withCameraProfile:(id)a4 inHome:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [HMIFeedbackClipMetadataGenerator metadataForClip:a3];
  v10 = [HMIFeedbackClipMetadataGenerator metadataForCameraProfile:v8];

  v11 = [HMIFeedbackClipMetadataGenerator metadataForHome:v7];

  v12 = [[HMIFeedbackClipMetadata alloc] initWithClipMetadata:v9 cameraMetadata:v10 homeMetadata:v11];

  return v12;
}

@end