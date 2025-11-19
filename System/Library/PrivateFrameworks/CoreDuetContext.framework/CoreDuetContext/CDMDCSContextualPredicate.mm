@interface CDMDCSContextualPredicate
@end

@implementation CDMDCSContextualPredicate

void __59___CDMDCSContextualPredicate_predicateForUserIsLeavingHome__block_invoke(uint64_t a1)
{
  v6 = +[_CDUserContextQueries keyPathForUserIsLeavingHomeStatus];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [v2 _predicateForChangeAtKeyPath:v6 identifier:v3];
  v5 = predicateForUserIsLeavingHome_contextualPredicate;
  predicateForUserIsLeavingHome_contextualPredicate = v4;
}

void __62___CDMDCSContextualPredicate_predicateForUserIsArrivingAtHome__block_invoke(uint64_t a1)
{
  v6 = +[_CDUserContextQueries keyPathForUserIsArrivingAtHomeStatus];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [v2 _predicateForChangeAtKeyPath:v6 identifier:v3];
  v5 = predicateForUserIsArrivingAtHome_contextualPredicate;
  predicateForUserIsArrivingAtHome_contextualPredicate = v4;
}

void __67___CDMDCSContextualPredicate_predicateForPhotosAppBecameForeground__block_invoke(uint64_t a1)
{
  v8 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
  v2 = MEMORY[0x1E696AE18];
  v3 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
  v4 = +[_CDContextQueries appUsageBundleID];
  v5 = [v2 predicateWithFormat:@"SUBQUERY(self.%@.value, $appInfo, $appInfo.%@ == %@) .@count > 0", v3, v4, @"com.apple.mobileslideshow"];

  v6 = [*(a1 + 32) _predicateForKeyPath:v8 withPredicate:v5 identifier:@"2984e253-ce6b-f5b2-77af-000000000000"];
  v7 = predicateForPhotosAppBecameForeground_contextualPredicate;
  predicateForPhotosAppBecameForeground_contextualPredicate = v6;
}

void __60___CDMDCSContextualPredicate_predicateForNetworkQualityFair__block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = +[_CDContextQueries keyPathForWiredConnectionQuality];
  v15[0] = v2;
  v3 = +[_CDContextQueries keyPathForWiFiConnectionQuality];
  v15[1] = v3;
  v4 = +[_CDContextQueries keyPathForCellConnectionQuality];
  v15[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v7 = MEMORY[0x1E696AE18];
  v8 = +[_CDContextQueries keyPathForWiredConnectionQuality];
  v9 = +[_CDContextQueries keyPathForWiFiConnectionQuality];
  v10 = +[_CDContextQueries keyPathForCellConnectionQuality];
  v11 = [v7 predicateWithFormat:@"self.%@.value >= %@ or self.%@.value >= %@ or self.%@.value >= %@", v8, &unk_1F1D19068, v9, &unk_1F1D19068, v10, &unk_1F1D19068];

  v12 = [*(a1 + 32) contextualPredicateForKeyPaths:v6 withPredicate:v11 identifier:@"0f403649-9be2-e755-d0fa-000000000000"];
  v13 = predicateForNetworkQualityFair_contextualPredicate;
  predicateForNetworkQualityFair_contextualPredicate = v12;

  v14 = *MEMORY[0x1E69E9840];
}

void __59___CDMDCSContextualPredicate_predicateForNetworkQualityBad__block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = +[_CDContextQueries keyPathForWiredConnectionQuality];
  v15[0] = v2;
  v3 = +[_CDContextQueries keyPathForWiFiConnectionQuality];
  v15[1] = v3;
  v4 = +[_CDContextQueries keyPathForCellConnectionQuality];
  v15[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v7 = MEMORY[0x1E696AE18];
  v8 = +[_CDContextQueries keyPathForWiredConnectionQuality];
  v9 = +[_CDContextQueries keyPathForWiFiConnectionQuality];
  v10 = +[_CDContextQueries keyPathForCellConnectionQuality];
  v11 = [v7 predicateWithFormat:@"self.%@.value <= %@ and self.%@.value <= %@ and self.%@.value <= %@", v8, &unk_1F1D19080, v9, &unk_1F1D19080, v10, &unk_1F1D19080];

  v12 = [*(a1 + 32) contextualPredicateForKeyPaths:v6 withPredicate:v11 identifier:@"a56a7166-c833-0cbd-948e-000000000000"];
  v13 = predicateForNetworkQualityBad_contextualPredicate;
  predicateForNetworkQualityBad_contextualPredicate = v12;

  v14 = *MEMORY[0x1E69E9840];
}

void __58___CDMDCSContextualPredicate_predicateForIsConnectedToCar__block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = +[_CDContextQueries keyPathForCarplayConnectedStatus];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:v2];
  v4 = +[_CDContextQueries keyPathForCarConnectedStatus];
  v5 = [_CDContextualPredicate predicateForChangeAtKeyPath:v4];
  v6 = *(a1 + 32);
  v12[0] = v3;
  v12[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = NSStringFromSelector(*(a1 + 40));
  v9 = [v6 orPredicateWithSubpredicates:v7 identifier:v8];
  v10 = predicateForIsConnectedToCar_contextualPredicate;
  predicateForIsConnectedToCar_contextualPredicate = v9;

  v11 = *MEMORY[0x1E69E9840];
}

void __75___CDMDCSContextualPredicate_predicateForIsConnectedToAudioBluetoothDevice__block_invoke(uint64_t a1)
{
  v9 = +[_CDContextQueries keyPathForBluetoothDataDictionary];
  v2 = +[_CDContextQueries bluetoothConnectionStatusKey];
  v3 = +[_CDContextQueries bluetoothDeviceTypeKey];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.%@.value.%@ == %@ and self.%@.value.%@ in %@", v9, v2, MEMORY[0x1E695E118], v9, v3, &unk_1F1D191E8];
  v5 = *(a1 + 32);
  v6 = NSStringFromSelector(*(a1 + 40));
  v7 = [v5 _predicateForKeyPath:v9 withPredicate:v4 identifier:v6];
  v8 = predicateForIsConnectedToAudioBluetoothDevice_contextualPredicate;
  predicateForIsConnectedToAudioBluetoothDevice_contextualPredicate = v7;
}

void __51___CDMDCSContextualPredicate_predicateForNextAlarm__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = +[_CDContextQueries keyPathForNextAlarm];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [v2 _predicateForChangeAtKeyPath:v6 identifier:v3];
  v5 = predicateForNextAlarm_contextualPredicate;
  predicateForNextAlarm_contextualPredicate = v4;
}

void __59___CDMDCSContextualPredicate_predicateForBacklightOnStatus__block_invoke(uint64_t a1)
{
  v6 = +[_CDContextQueries keyPathForBacklightOnStatus];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [v2 _predicateForChangeAtKeyPath:v6 identifier:v3];
  v5 = predicateForBacklightOnStatus_contextualPredicate;
  predicateForBacklightOnStatus_contextualPredicate = v4;
}

void __55___CDMDCSContextualPredicate_predicateForForegroundApp__block_invoke(uint64_t a1)
{
  v6 = +[_CDContextQueries keyPathForForegroundApp];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = [v2 _predicateForChangeAtKeyPath:v6 identifier:v3];
  v5 = predicateForForegroundApp_contextualPredicate;
  predicateForForegroundApp_contextualPredicate = v4;
}

void __54___CDMDCSContextualPredicate_predicateWithIdentifier___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) predicates];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 identifier];
        [v2 setObject:v8 forKey:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];
  v11 = predicateWithIdentifier__mapping;
  predicateWithIdentifier__mapping = v10;

  v12 = *MEMORY[0x1E69E9840];
}

void __40___CDMDCSContextualPredicate_predicates__block_invoke()
{
  v18[8] = *MEMORY[0x1E69E9840];
  v0 = +[_CDMDCSContextualPredicate predicateForUserIsLeavingHome];
  v18[0] = v0;
  v1 = +[_CDMDCSContextualPredicate predicateForUserIsArrivingAtHome];
  v18[1] = v1;
  v2 = +[_CDMDCSContextualPredicate predicateForPhotosAppBecameForeground];
  v18[2] = v2;
  v3 = +[_CDMDCSContextualPredicate predicateForNetworkQualityFair];
  v18[3] = v3;
  v4 = +[_CDMDCSContextualPredicate predicateForNetworkQualityBad];
  v18[4] = v4;
  v5 = +[_CDMDCSContextualPredicate predicateForIsConnectedToCar];
  v18[5] = v5;
  v6 = +[_CDMDCSContextualPredicate predicateForIsConnectedToAudioBluetoothDevice];
  v18[6] = v6;
  v7 = +[_CDMDCSContextualPredicate predicateForNextAlarm];
  v18[7] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:8];
  v9 = predicates_predicates;
  predicates_predicates = v8;

  if (os_variant_has_internal_content())
  {
    v10 = predicates_predicates;
    v11 = +[_CDMDCSContextualPredicate predicateForBacklightOnStatus];
    v17[0] = v11;
    v12 = +[_CDMDCSContextualPredicate predicateForForegroundApp];
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v14 = [v10 arrayByAddingObjectsFromArray:v13];
    v15 = predicates_predicates;
    predicates_predicates = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __44___CDMDCSContextualPredicate_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  initWithCoder__allowedParameterClasses = [v0 setWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end