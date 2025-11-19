@interface ISSymbol
+ (id)_generateVariantKeyFromOptions:(unint64_t)a3;
+ (id)symbolForType:(id)a3;
+ (id)symbolForTypeIdentifier:(id)a3 withResolutionStrategy:(int64_t)a4 variantOptions:(unint64_t)a5 error:(id *)a6;
+ (id)symbolForURL:(id)a3;
@end

@implementation ISSymbol

+ (id)symbolForURL:(id)a3
{
  v3 = a3;
  if ([v3 __is_isApplication])
  {
    v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithURL:v3 allowPlaceholder:1 error:0];
  }

  else
  {
    if (![v3 __is_isAppExtension])
    {
      v5 = 0;
      goto LABEL_10;
    }

    v4 = [objc_alloc(MEMORY[0x1E69635D0]) initWithURL:v3 error:0];
  }

  v5 = v4;
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 iconDictionary];
      v7 = [v6 _IF_stringForKey:0x1F1A4F300];

      if (v7)
      {
        v8 = [v5 URL];
        v9 = [(IFSymbol *)[ISSymbol alloc] initWithSymbolName:v7 bundleURL:v8];

        goto LABEL_11;
      }
    }
  }

LABEL_10:
  v7 = [v3 __is_typeIdentifier];
  v9 = [ISSymbol symbolForType:v7];
LABEL_11:

  return v9;
}

+ (id)symbolForType:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = *MEMORY[0x1E6963800];
  }

  v9 = 0;
  v5 = [a1 symbolForTypeIdentifier:v4 withResolutionStrategy:0 variantOptions:1 error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = _ISDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ISSymbol *)v4 symbolForType:v6, v7];
    }

    v5 = [(IFSymbol *)[ISSymbol alloc] initWithSymbolName:@"questionmark.square" bundleURL:0];
  }

  return v5;
}

+ (id)symbolForTypeIdentifier:(id)a3 withResolutionStrategy:(int64_t)a4 variantOptions:(unint64_t)a5 error:(id *)a6
{
  v30[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (v10)
  {
    v11 = [a1 _generateVariantKeyFromOptions:a5];
    v12 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:v10];
    v13 = v12;
    v14 = 0;
    if (a4 <= 1)
    {
      if (!a4)
      {
        v15 = [v12 _IS_symbolProvidingRecordWithVariantKey:v11 allowNonVariantMatch:0];
        goto LABEL_20;
      }

      if (a4 != 1)
      {
        goto LABEL_26;
      }

      v18 = [v12 _IS_symbolProvidingRecordWithVariantKey:v11 allowNonVariantMatch:0 preferHeroOverBaseSymbol:1];
      v14 = v18;
      if (v11)
      {
        goto LABEL_21;
      }

      v19 = [v18 _IS_symbolHeroName];
      if (!v19)
      {
LABEL_22:
        v22 = [v14 _IS_symbolName];
LABEL_23:
        v21 = v22;
        if (v22)
        {
          goto LABEL_24;
        }

LABEL_26:
        if (!a6)
        {
          v17 = 0;
          goto LABEL_31;
        }

        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to find symbol using type id: %@. Options: %lu, strategy: %ld", v10, a5, a4, *MEMORY[0x1E696A578]];
        v28 = v24;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.iconServices.symbol-error" code:-1 userInfo:v21];
        *a6 = v17 = 0;
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }
    }

    else
    {
      switch(a4)
      {
        case 2:
          v20 = [v12 _IS_symbolProvidingRecordWithVariantKey:v11 allowNonVariantMatch:1];
          break;
        case 4:
          v20 = v12;
          break;
        case 3:
          v15 = v12;
LABEL_20:
          v14 = v15;
          if (v11)
          {
LABEL_21:
            v22 = [v14 _IS_symbolNameForVariantKey:v11];
            goto LABEL_23;
          }

          goto LABEL_22;
        default:
          goto LABEL_26;
      }

      v14 = v20;
      v19 = [v20 _IS_symbolNameForVariantKey:v11];
      if (!v19)
      {
        goto LABEL_22;
      }
    }

    v21 = v19;
LABEL_24:
    if ([v14 isCoreType])
    {
      v23 = 0;
    }

    else
    {
      v23 = [v14 iconResourceBundleURL];
    }

    v17 = [(IFSymbol *)[ISSymbol alloc] initWithSymbolName:v21 bundleURL:v23];

    goto LABEL_30;
  }

  if (!a6)
  {
    v17 = 0;
    goto LABEL_33;
  }

  v29 = *MEMORY[0x1E696A578];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid type id"];
  v30[0] = v16;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];

  [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.iconServices.symbol-error" code:-2 userInfo:v11];
  *a6 = v17 = 0;
LABEL_32:

LABEL_33:
  v25 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)_generateVariantKeyFromOptions:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v12 = 0;
  }

  else
  {
    if (_generateVariantKeyFromOptions__onceToken != -1)
    {
      +[ISSymbol _generateVariantKeyFromOptions:];
    }

    v4 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = _generateVariantKeyFromOptions__orderedOptions;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if (([v10 unsignedIntegerValue] & a3) != 0)
          {
            v11 = [_generateVariantKeyFromOptions__optionsToKeyPieces objectForKeyedSubscript:v10];
            [v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v12 = [v4 componentsJoinedByString:@"."];
    }

    else
    {
      v13 = _ISDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ISSymbol _generateVariantKeyFromOptions:v13];
      }

      v12 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

void __43__ISSymbol__generateVariantKeyFromOptions___block_invoke()
{
  v7[33] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A65340;
  v6[1] = &unk_1F1A65358;
  v7[0] = @"fill";
  v7[1] = @"landscape";
  v6[2] = &unk_1F1A65370;
  v6[3] = &unk_1F1A65388;
  v7[2] = @"slash";
  v7[3] = @"radio_leftright";
  v6[4] = &unk_1F1A653A0;
  v6[5] = &unk_1F1A653B8;
  v7[4] = @"apps";
  v7[5] = @"righttoleft";
  v6[6] = &unk_1F1A653D0;
  v6[7] = &unk_1F1A653E8;
  v7[6] = @"badge_play";
  v7[7] = @"badge_plus";
  v6[8] = &unk_1F1A65400;
  v6[9] = &unk_1F1A65418;
  v7[8] = @"badge_minus";
  v7[9] = @"badge_checkmark";
  v6[10] = &unk_1F1A65430;
  v6[11] = &unk_1F1A65448;
  v7[10] = @"badge_xmark";
  v7[11] = @"badge_questionmark";
  v6[12] = &unk_1F1A65460;
  v6[13] = &unk_1F1A65478;
  v7[12] = @"badge_exclamationmark";
  v7[13] = @"arrow_forward";
  v6[14] = &unk_1F1A65490;
  v6[15] = &unk_1F1A654A8;
  v7[14] = @"arrow_turnupforward";
  v7[15] = @"lock_locked";
  v6[16] = &unk_1F1A654C0;
  v6[17] = &unk_1F1A654D8;
  v7[16] = @"lock_unlocked";
  v7[17] = @"camerarear";
  v6[18] = &unk_1F1A654F0;
  v6[19] = &unk_1F1A65508;
  v7[18] = @"sideright";
  v7[19] = @"exclamationmark";
  v6[20] = &unk_1F1A65520;
  v6[21] = &unk_1F1A65538;
  v7[20] = @"figurerun";
  v7[21] = @"watchface";
  v6[22] = &unk_1F1A65550;
  v6[23] = &unk_1F1A65568;
  v7[22] = @"left";
  v7[23] = @"right";
  v6[24] = &unk_1F1A65580;
  v6[25] = &unk_1F1A65598;
  v7[24] = @"chargingcase";
  v7[25] = @"radio_forward";
  v6[26] = &unk_1F1A655B0;
  v6[27] = &unk_1F1A655C8;
  v7[26] = @"homepod";
  v7[27] = @"homepodmini";
  v6[28] = &unk_1F1A655E0;
  v6[29] = &unk_1F1A655F8;
  v7[28] = @"appletv";
  v7[29] = @"imac";
  v6[30] = &unk_1F1A65610;
  v6[31] = &unk_1F1A65628;
  v7[30] = @"laptop";
  v7[31] = @"speaker";
  v6[32] = &unk_1F1A65640;
  v7[32] = @"tv";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:33];
  v1 = _generateVariantKeyFromOptions__optionsToKeyPieces;
  _generateVariantKeyFromOptions__optionsToKeyPieces = v0;

  v2 = [_generateVariantKeyFromOptions__optionsToKeyPieces allKeys];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];
  v4 = _generateVariantKeyFromOptions__orderedOptions;
  _generateVariantKeyFromOptions__orderedOptions = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)symbolForType:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 localizedDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1A77B8000, a3, OS_LOG_TYPE_ERROR, "Failed to find symbol with type %@. Error: %@.", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end