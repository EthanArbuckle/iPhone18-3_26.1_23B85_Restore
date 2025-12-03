@interface IMTranscriptEffectHelper
+ (BOOL)effectIdentifierIsFullScreenMoment:(id)moment;
+ (BOOL)effectIdentifierIsImpactEffect:(id)effect;
+ (BOOL)identifierIsEffectIdentifier:(id)identifier;
+ (BOOL)shouldShowReplayButtonForEffectIdentifier:(id)identifier;
+ (id)allEffectIdentifiers;
+ (id)findIdentifierByMathcingPartialSufix:(id)sufix;
+ (id)identifierNameMap;
+ (id)nameForEffectIdentifier:(id)identifier;
+ (id)replayStringForEffectIdentifier:(id)identifier;
+ (id)replayStringMap;
+ (id)sendWithEffectStringMap;
+ (id)sendWithStringForEffectIdentifier:(id)identifier;
@end

@implementation IMTranscriptEffectHelper

+ (id)allEffectIdentifiers
{
  if (qword_1EB2EA2A8 != -1)
  {
    sub_1A84E0C78();
  }

  v3 = qword_1EB2EA2A0;

  return v3;
}

+ (BOOL)identifierIsEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_msgSend_identifierNameMap(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, identifierCopy);

  return v9 != 0;
}

+ (BOOL)effectIdentifierIsFullScreenMoment:(id)moment
{
  momentCopy = moment;
  if (objc_msgSend_identifierIsEffectIdentifier_(self, v5, momentCopy))
  {
    objc_msgSend_rangeOfString_(momentCopy, v6, @"com.apple.messages.effect");
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)effectIdentifierIsImpactEffect:(id)effect
{
  effectCopy = effect;
  if (objc_msgSend_identifierIsEffectIdentifier_(self, v5, effectCopy))
  {
    objc_msgSend_rangeOfString_(effectCopy, v6, @"com.apple.MobileSMS.expressivesend");
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)identifierNameMap
{
  if (qword_1EB2EA2B8 != -1)
  {
    sub_1A84E0C8C();
  }

  v3 = qword_1EB2EA2B0;

  return v3;
}

+ (id)replayStringMap
{
  if (qword_1EB2EA2C8 != -1)
  {
    sub_1A84E0CA0();
  }

  v3 = qword_1EB2EA2C0;

  return v3;
}

+ (id)sendWithEffectStringMap
{
  if (qword_1EB2EA2D8 != -1)
  {
    sub_1A84E0CB4();
  }

  v3 = qword_1EB2EA2D0;

  return v3;
}

+ (id)findIdentifierByMathcingPartialSufix:(id)sufix
{
  v21 = *MEMORY[0x1E69E9840];
  sufixCopy = sufix;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = objc_msgSend_allEffectIdentifiers(self, v5, v6, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_localizedCaseInsensitiveContainsString_(v13, v9, sufixCopy))
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v16, v20, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)nameForEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_msgSend_identifierNameMap(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, identifierCopy);

  return v9;
}

+ (id)replayStringForEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_msgSend_replayStringMap(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, identifierCopy);

  return v9;
}

+ (id)sendWithStringForEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_msgSend_sendWithEffectStringMap(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, identifierCopy);

  return v9;
}

+ (BOOL)shouldShowReplayButtonForEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  isFeatureEnabled = objc_msgSend_isFeatureEnabled(self, v4, v5);
  LOBYTE(self) = 0;
  if (identifierCopy && isFeatureEnabled)
  {
    LODWORD(self) = objc_msgSend_isEqualToString_(*MEMORY[0x1E69A7D78], v7, identifierCopy) ^ 1;
  }

  return self;
}

@end