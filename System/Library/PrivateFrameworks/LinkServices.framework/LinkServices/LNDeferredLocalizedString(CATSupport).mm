@interface LNDeferredLocalizedString(CATSupport)
- (id)localizedKeyWithParameters;
- (id)parameterDefinitions;
- (id)parametersForCAT;
@end

@implementation LNDeferredLocalizedString(CATSupport)

- (id)parametersForCAT
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  arguments = [self arguments];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__LNDeferredLocalizedString_CATSupport__parametersForCAT__block_invoke;
  v6[3] = &unk_1E74B0C38;
  v4 = v2;
  v7 = v4;
  [arguments enumerateObjectsUsingBlock:v6];

  return v4;
}

- (id)parameterDefinitions
{
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  arguments = [self arguments];
  v4 = [v2 initWithCapacity:{objc_msgSend(arguments, "count")}];

  arguments2 = [self arguments];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__LNDeferredLocalizedString_CATSupport__parameterDefinitions__block_invoke;
  v8[3] = &unk_1E74B0C38;
  v6 = v4;
  v9 = v6;
  [arguments2 enumerateObjectsUsingBlock:v8];

  return v6;
}

- (id)localizedKeyWithParameters
{
  if (localizedKeyWithParameters_onceToken != -1)
  {
    dispatch_once(&localizedKeyWithParameters_onceToken, &__block_literal_global_3223);
  }

  localizedKey = [self localizedKey];
  ln_stringByEscapingForXML = [localizedKey ln_stringByEscapingForXML];
  v4 = [ln_stringByEscapingForXML mutableCopy];

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v5 = localizedKeyWithParameters_regularExpression;
  localizedKey2 = [self localizedKey];
  localizedKey3 = [self localizedKey];
  v8 = [localizedKey3 length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__LNDeferredLocalizedString_CATSupport__localizedKeyWithParameters__block_invoke_2;
  v13[3] = &unk_1E74B0C10;
  v13[4] = self;
  v15 = v17;
  v16 = v18;
  v9 = v4;
  v14 = v9;
  [v5 enumerateMatchesInString:localizedKey2 options:0 range:0 usingBlock:{v8, v13}];

  v10 = v14;
  v11 = v9;

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);

  return v11;
}

@end