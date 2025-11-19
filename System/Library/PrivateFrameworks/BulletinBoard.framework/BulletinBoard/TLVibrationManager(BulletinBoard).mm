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
  v6 = [v4 sectionID];
  v7 = [v5 bb_toneLibraryAlertTypeForSectionID:v6];

  if (v7)
  {
    v8 = [v4 subsections];
    if ([v8 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
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

            v14 = [*(*(&v19 + 1) + 8 * v13) subsectionID];
            v15 = [a1 bb_isVibrationEnabledForAlertType:v7 topic:v14];

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
      v16 = [a1 bb_isVibrationEnabledForAlertType:v7 topic:0];
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
  v1 = [a1 currentVibrationIdentifierForAlertType:? topic:?];
  v2 = [v1 isEqualToString:*MEMORY[0x277D72070]];

  return v2 ^ 1u;
}

- (id)bb_vibrationIdentifierForAlertConfiguration:()BulletinBoard
{
  v4 = a3;
  v5 = [v4 vibrationIdentifier];
  if (![v5 length])
  {
    v6 = [v4 type];
    v7 = [v4 topic];
    v8 = [a1 currentVibrationIdentifierForAlertType:v6 topic:v7];

    v5 = v8;
  }

  return v5;
}

- (uint64_t)bb_isVibrationEnabledForAlertConfiguration:()BulletinBoard
{
  v1 = [a1 bb_vibrationIdentifierForAlertConfiguration:?];
  v2 = [v1 isEqualToString:*MEMORY[0x277D72070]];

  return v2 ^ 1u;
}

@end