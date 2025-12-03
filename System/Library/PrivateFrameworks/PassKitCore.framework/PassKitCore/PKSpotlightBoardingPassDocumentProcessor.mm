@interface PKSpotlightBoardingPassDocumentProcessor
- (id)attributeKeyMapForAirTransit;
- (id)attributeKeyMapForBusAndTrainTransit;
- (id)attributeKeyMapForDonation:(id)donation;
- (id)extractAttributesFromPKPass:(id)pass;
- (id)multiValuedSearchableAttributes;
@end

@implementation PKSpotlightBoardingPassDocumentProcessor

- (id)multiValuedSearchableAttributes
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = *MEMORY[0x1E6964130];
  v8[0] = *MEMORY[0x1E6964128];
  v8[1] = v3;
  v4 = *MEMORY[0x1E6964228];
  v8[2] = *MEMORY[0x1E6964008];
  v8[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];
  v6 = [v2 setWithArray:v5];

  return v6;
}

- (id)attributeKeyMapForAirTransit
{
  v8[7] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6964100];
  v7[0] = *MEMORY[0x1E6964120];
  v7[1] = v2;
  v8[0] = &unk_1F23B4358;
  v8[1] = &unk_1F23B4370;
  v3 = *MEMORY[0x1E6964090];
  v7[2] = *MEMORY[0x1E6964078];
  v7[3] = v3;
  v8[2] = &unk_1F23B4388;
  v8[3] = &unk_1F23B43A0;
  v4 = *MEMORY[0x1E6964130];
  v7[4] = *MEMORY[0x1E6964128];
  v7[5] = v4;
  v8[4] = &unk_1F23B43B8;
  v8[5] = &unk_1F23B43D0;
  v7[6] = *MEMORY[0x1E69640B8];
  v8[6] = &unk_1F23B43E8;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:7];

  return v5;
}

- (id)attributeKeyMapForBusAndTrainTransit
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6964228];
  v5[0] = *MEMORY[0x1E6964008];
  v5[1] = v2;
  v6[0] = &unk_1F23B4400;
  v6[1] = &unk_1F23B4418;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (id)attributeKeyMapForDonation:(id)donation
{
  donationCopy = donation;
  v5 = donationCopy;
  if (donationCopy && [donationCopy style] == 4)
  {
    transitType = [v5 transitType];
    if ((transitType - 2) < 2)
    {
      attributeKeyMapForBusAndTrainTransit = [(PKSpotlightBoardingPassDocumentProcessor *)self attributeKeyMapForBusAndTrainTransit];
LABEL_7:
      v8 = attributeKeyMapForBusAndTrainTransit;
      goto LABEL_9;
    }

    if (transitType == 1)
    {
      attributeKeyMapForBusAndTrainTransit = [(PKSpotlightBoardingPassDocumentProcessor *)self attributeKeyMapForAirTransit];
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)extractAttributesFromPKPass:(id)pass
{
  passCopy = pass;
  v4 = objc_opt_new();
  transitType = [passCopy transitType];
  if ((transitType - 2) < 3)
  {
    [v4 setObject:*MEMORY[0x1E6963AD0] forKey:*MEMORY[0x1E6964278]];
    frontFieldBuckets = [passCopy frontFieldBuckets];
    if ([frontFieldBuckets count] < 2)
    {
      goto LABEL_10;
    }

    v7 = [frontFieldBuckets objectAtIndexedSubscript:1];
    v8 = [v7 count];

    if (v8 != 2)
    {
      goto LABEL_10;
    }

    v9 = [frontFieldBuckets objectAtIndexedSubscript:1];
    v10 = [v9 objectAtIndexedSubscript:0];
    label = [v10 label];
    [v4 safelySetObject:label forKey:*MEMORY[0x1E6964250]];

    v12 = [v9 objectAtIndexedSubscript:1];
    label2 = [v12 label];
    [v4 safelySetObject:label2 forKey:*MEMORY[0x1E6964020]];
    goto LABEL_9;
  }

  if (transitType != 1)
  {
    goto LABEL_11;
  }

  [v4 setObject:*MEMORY[0x1E6963AA0] forKey:*MEMORY[0x1E6964278]];
  frontFieldBuckets = [passCopy frontFieldBuckets];
  if ([frontFieldBuckets count] >= 2)
  {
    v14 = [frontFieldBuckets objectAtIndexedSubscript:1];
    v15 = [v14 count];

    if (v15 == 2)
    {
      v9 = [frontFieldBuckets objectAtIndexedSubscript:1];
      v12 = [v9 objectAtIndexedSubscript:0];
      label2 = [v9 objectAtIndexedSubscript:1];
      label3 = [v12 label];
      [v4 safelySetObject:label3 forKey:*MEMORY[0x1E69640D8]];

      value = [v12 value];
      [v4 safelySetObject:value forKey:*MEMORY[0x1E69640C8]];

      v13Label = [label2 label];
      [v4 safelySetObject:v13Label forKey:*MEMORY[0x1E6964050]];

      value2 = [label2 value];
      [v4 safelySetObject:value2 forKey:*MEMORY[0x1E6964040]];

LABEL_9:
    }
  }

LABEL_10:

LABEL_11:

  return v4;
}

@end