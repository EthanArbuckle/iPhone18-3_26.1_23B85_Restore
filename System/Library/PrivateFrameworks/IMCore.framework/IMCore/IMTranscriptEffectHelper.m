@interface IMTranscriptEffectHelper
+ (BOOL)effectIdentifierIsFullScreenMoment:(id)a3;
+ (BOOL)effectIdentifierIsImpactEffect:(id)a3;
+ (BOOL)identifierIsEffectIdentifier:(id)a3;
+ (BOOL)shouldShowReplayButtonForEffectIdentifier:(id)a3;
+ (id)allEffectIdentifiers;
+ (id)findIdentifierByMathcingPartialSufix:(id)a3;
+ (id)identifierNameMap;
+ (id)nameForEffectIdentifier:(id)a3;
+ (id)replayStringForEffectIdentifier:(id)a3;
+ (id)replayStringMap;
+ (id)sendWithEffectStringMap;
+ (id)sendWithStringForEffectIdentifier:(id)a3;
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

+ (BOOL)identifierIsEffectIdentifier:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_identifierNameMap(a1, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  return v9 != 0;
}

+ (BOOL)effectIdentifierIsFullScreenMoment:(id)a3
{
  v4 = a3;
  if (objc_msgSend_identifierIsEffectIdentifier_(a1, v5, v4))
  {
    objc_msgSend_rangeOfString_(v4, v6, @"com.apple.messages.effect");
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)effectIdentifierIsImpactEffect:(id)a3
{
  v4 = a3;
  if (objc_msgSend_identifierIsEffectIdentifier_(a1, v5, v4))
  {
    objc_msgSend_rangeOfString_(v4, v6, @"com.apple.MobileSMS.expressivesend");
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

+ (id)findIdentifierByMathcingPartialSufix:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = objc_msgSend_allEffectIdentifiers(a1, v5, v6, 0);
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
        if (objc_msgSend_localizedCaseInsensitiveContainsString_(v13, v9, v4))
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

+ (id)nameForEffectIdentifier:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_identifierNameMap(a1, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  return v9;
}

+ (id)replayStringForEffectIdentifier:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_replayStringMap(a1, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  return v9;
}

+ (id)sendWithStringForEffectIdentifier:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_sendWithEffectStringMap(a1, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  return v9;
}

+ (BOOL)shouldShowReplayButtonForEffectIdentifier:(id)a3
{
  v3 = a3;
  isFeatureEnabled = objc_msgSend_isFeatureEnabled(a1, v4, v5);
  LOBYTE(a1) = 0;
  if (v3 && isFeatureEnabled)
  {
    LODWORD(a1) = objc_msgSend_isEqualToString_(*MEMORY[0x1E69A7D78], v7, v3) ^ 1;
  }

  return a1;
}

@end