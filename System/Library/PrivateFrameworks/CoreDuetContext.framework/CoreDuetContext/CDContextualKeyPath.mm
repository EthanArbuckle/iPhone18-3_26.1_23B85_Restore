@interface CDContextualKeyPath
@end

@implementation CDContextualKeyPath

void __44___CDContextualKeyPath_isMultiDeviceKeyPath__block_invoke()
{
  v30[9] = *MEMORY[0x1E69E9840];
  v23 = +[_CDUserContextQueries keyPathForUserIsLeavingHomeStatus];
  v30[0] = v23;
  v0 = +[_CDUserContextQueries keyPathForUserIsArrivingAtHomeStatus];
  v30[1] = v0;
  v1 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
  v30[2] = v1;
  v2 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
  v30[3] = v2;
  v3 = +[_CDContextQueries keyPathForBacklightOnStatus];
  v30[4] = v3;
  v4 = +[_CDContextQueries keyPathForWiredConnectionQuality];
  v30[5] = v4;
  v5 = +[_CDContextQueries keyPathForWiFiConnectionQuality];
  v30[6] = v5;
  v6 = +[_CDContextQueries keyPathForCellConnectionQuality];
  v30[7] = v6;
  v7 = +[_CDContextQueries keyPathForNextAlarm];
  v30[8] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:9];

  if (os_variant_has_internal_content())
  {
    v9 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
    v29[0] = v9;
    v10 = +[_CDContextQueries keyPathForForegroundApp];
    v29[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v12 = [v8 arrayByAddingObjectsFromArray:v11];
  }

  else
  {
    v12 = v8;
  }

  v13 = [MEMORY[0x1E695DFA8] set];
  [v13 addObjectsFromArray:v12];
  v14 = +[_CDMDCSContextualPredicate predicates];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v24 + 1) + 8 * v18) keyPaths];
        [v13 unionSet:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v20 = [v13 copy];
  v21 = isMultiDeviceKeyPath_whitelist;
  isMultiDeviceKeyPath_whitelist = v20;

  v22 = *MEMORY[0x1E69E9840];
}

@end