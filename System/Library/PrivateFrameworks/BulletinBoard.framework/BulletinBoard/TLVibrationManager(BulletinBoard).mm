@interface TLVibrationManager(BulletinBoard)
- (id)bb_vibrationIdentifierForAlertConfiguration:()BulletinBoard;
- (uint64_t)bb_isVibrationEnabledForAlertConfiguration:()BulletinBoard;
- (uint64_t)bb_isVibrationEnabledForAlertType:()BulletinBoard topic:;
- (uint64_t)bb_isVibrationEnabledForSectionInfo:()BulletinBoard;
@end

@implementation TLVibrationManager(BulletinBoard)

- (uint64_t)bb_isVibrationEnabledForSectionInfo:()BulletinBoard
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D71F50];
  sectionID = [v4 sectionID];
  v7 = [v5 bb_toneLibraryAlertTypeForSectionID:sectionID];

  if (v7)
  {
    subsections = [v4 subsections];
    if ([subsections count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = subsections;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            subsectionID = [*(*(&v19 + 1) + 8 * v13) subsectionID];
            v15 = [self bb_isVibrationEnabledForAlertType:v7 topic:subsectionID];

            if (v15)
            {
              v16 = 1;
              goto LABEL_14;
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v16 = 0;
LABEL_14:
    }

    else
    {
      v16 = [self bb_isVibrationEnabledForAlertType:v7 topic:0];
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (uint64_t)bb_isVibrationEnabledForAlertType:()BulletinBoard topic:
{
  v1 = [self currentVibrationIdentifierForAlertType:? topic:?];
  v2 = [v1 isEqualToString:*MEMORY[0x277D72070]];

  return v2 ^ 1u;
}

- (id)bb_vibrationIdentifierForAlertConfiguration:()BulletinBoard
{
  v4 = a3;
  vibrationIdentifier = [v4 vibrationIdentifier];
  if (![vibrationIdentifier length])
  {
    type = [v4 type];
    topic = [v4 topic];
    v8 = [self currentVibrationIdentifierForAlertType:type topic:topic];

    vibrationIdentifier = v8;
  }

  return vibrationIdentifier;
}

- (uint64_t)bb_isVibrationEnabledForAlertConfiguration:()BulletinBoard
{
  v1 = [self bb_vibrationIdentifierForAlertConfiguration:?];
  v2 = [v1 isEqualToString:*MEMORY[0x277D72070]];

  return v2 ^ 1u;
}

@end