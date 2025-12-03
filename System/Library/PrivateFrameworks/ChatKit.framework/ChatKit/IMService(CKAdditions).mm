@interface IMService(CKAdditions)
- (BOOL)__ck_isRCS;
- (BOOL)__ck_isSMS;
- (BOOL)__ck_isSendingAllowedForChat:()CKAdditions;
- (BOOL)__ck_isiMessage;
- (id)___ck_appendSatelliteGlyphToString:()CKAdditions;
- (id)__ck_attributedEntryViewDisplayName;
- (id)__ck_attributedEntryViewDisplayNameForSOS;
- (id)__ck_entryViewDisplayName;
- (uint64_t)__ck_displayReplyColor;
- (uint64_t)__ck_isCarrierBased;
- (uint64_t)__ck_isMadrid;
- (uint64_t)__ck_isSatelliteSMS;
- (uint64_t)__ck_isiMessageLite;
- (uint64_t)__ck_maxCharacterCountForEnforcing;
- (uint64_t)__ck_maxRecipientCountForHandle:()CKAdditions simID:;
- (uint64_t)__ck_needsEnforceMaxCharacterCount;
- (uint64_t)__ck_serviceType;
@end

@implementation IMService(CKAdditions)

- (BOOL)__ck_isSMS
{
  smsService = [MEMORY[0x1E69A5CA0] smsService];
  v3 = smsService == self;

  return v3;
}

- (id)__ck_entryViewDisplayName
{
  v2 = +[CKUIBehavior sharedBehaviors];
  messageEntryViewUsesAbbreviatedServiceNames = [v2 messageEntryViewUsesAbbreviatedServiceNames];

  if (!messageEntryViewUsesAbbreviatedServiceNames)
  {
    goto LABEL_8;
  }

  if (![self __ck_isSMS])
  {
    if ([self __ck_isRCS])
    {
      if ((IMDeviceIsGreenTea() & 1) != 0 || [MEMORY[0x1E69A8020] IMDeviceIsChinaRegion])
      {
        v4 = CKFrameworkBundle();
        v5 = v4;
        v6 = @"5G_MESSAGING_WATCH";
      }

      else
      {
        v4 = CKFrameworkBundle();
        v5 = v4;
        v6 = @"RCS_WATCH";
      }

      goto LABEL_10;
    }

LABEL_8:
    __ck_displayName = [self __ck_displayName];
    goto LABEL_11;
  }

  v4 = CKFrameworkBundle();
  v5 = v4;
  v6 = @"TEXT_MESSAGE_WATCH";
LABEL_10:
  __ck_displayName = [v4 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];

LABEL_11:

  return __ck_displayName;
}

- (BOOL)__ck_isRCS
{
  rcsService = [MEMORY[0x1E69A5CA0] rcsService];
  v3 = rcsService == self;

  return v3;
}

- (uint64_t)__ck_isMadrid
{
  if ([self __ck_isiMessage])
  {
    return 1;
  }

  return [self __ck_isiMessageLite];
}

- (BOOL)__ck_isiMessage
{
  iMessageService = [MEMORY[0x1E69A5CA0] iMessageService];
  v3 = iMessageService == self;

  return v3;
}

- (uint64_t)__ck_isiMessageLite
{
  name = [self name];
  v2 = [name isEqualToString:*MEMORY[0x1E69A7AF8]];

  return v2;
}

- (uint64_t)__ck_isSatelliteSMS
{
  name = [self name];
  v2 = [name isEqualToString:*MEMORY[0x1E69A7AE8]];

  return v2;
}

- (uint64_t)__ck_isCarrierBased
{
  if ([self __ck_isSMS])
  {
    return 1;
  }

  return [self __ck_isRCS];
}

- (BOOL)__ck_isSendingAllowedForChat:()CKAdditions
{
  v4 = a3;
  v5 = 1;
  if (([MEMORY[0x1E69A7F58] isMessagesTheDefaultTextApp] & 1) == 0)
  {
    __ck_isCarrierBased = [self __ck_isCarrierBased];
    if (v4)
    {
      if (__ck_isCarrierBased && ![v4 isStewieChat])
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (id)__ck_attributedEntryViewDisplayName
{
  v2 = +[CKUIBehavior sharedBehaviors];
  messageEntryViewUsesAbbreviatedServiceNames = [v2 messageEntryViewUsesAbbreviatedServiceNames];

  if (!messageEntryViewUsesAbbreviatedServiceNames)
  {
    goto LABEL_8;
  }

  if ([self __ck_isiMessageLite])
  {
    v4 = @"MADRID";
  }

  else
  {
    if (![self __ck_isSatelliteSMS])
    {
      goto LABEL_8;
    }

    v4 = @"TEXT_MESSAGE_WATCH";
  }

  v5 = CKFrameworkBundle();
  __ck_entryViewDisplayName = [v5 localizedStringForKey:v4 value:&stru_1F04268F8 table:@"ChatKit"];

  if (__ck_entryViewDisplayName)
  {
    v7 = [self ___ck_appendSatelliteGlyphToString:__ck_entryViewDisplayName];
    goto LABEL_9;
  }

LABEL_8:
  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  __ck_entryViewDisplayName = [self __ck_entryViewDisplayName];
  v7 = [v8 initWithString:__ck_entryViewDisplayName];
LABEL_9:
  v9 = v7;

  return v9;
}

- (id)__ck_attributedEntryViewDisplayNameForSOS
{
  v2 = +[CKUIBehavior sharedBehaviors];
  messageEntryViewUsesAbbreviatedServiceNames = [v2 messageEntryViewUsesAbbreviatedServiceNames];

  if (messageEntryViewUsesAbbreviatedServiceNames && (CKFrameworkBundle(), v4 = objc_claimAutoreleasedReturnValue(), [v4 localizedStringForKey:@"TEXT_MESSAGE_SOS" value:&stru_1F04268F8 table:@"ChatKit"], __ck_entryViewDisplayName = objc_claimAutoreleasedReturnValue(), v4, __ck_entryViewDisplayName))
  {
    v6 = [self ___ck_appendSatelliteGlyphToString:__ck_entryViewDisplayName];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    __ck_entryViewDisplayName = [self __ck_entryViewDisplayName];
    v6 = [v7 initWithString:__ck_entryViewDisplayName];
  }

  v8 = v6;

  return v8;
}

- (uint64_t)__ck_maxRecipientCountForHandle:()CKAdditions simID:
{
  v6 = a3;
  v7 = a4;
  if ([self __ck_isSMS])
  {
    v8 = [MEMORY[0x1E69A7F58] IMMMSMaxRecipientsForPhoneNumber:v6 simID:v7];
  }

  else if ([self __ck_isRCS])
  {
    mEMORY[0x1E69A7F50] = [MEMORY[0x1E69A7F50] sharedManager];
    v8 = [mEMORY[0x1E69A7F50] groupMessagingMaxGroupSizeForPhoneNumber:v6 simID:v7];
  }

  else if ([MEMORY[0x1E69A5CA0] iMessageEnabled])
  {
    v8 = [self maxChatParticipantsForHandle:v6 simID:v7];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (uint64_t)__ck_displayReplyColor
{
  if ([self __ck_isMadrid])
  {
    return 10;
  }

  else
  {
    return 11;
  }
}

- (uint64_t)__ck_serviceType
{
  if ([self __ck_isSMS])
  {
    return 3;
  }

  else if ([self __ck_isiMessage])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (uint64_t)__ck_needsEnforceMaxCharacterCount
{
  if ([self __ck_isiMessageLite])
  {
    return 1;
  }

  return [self __ck_isSatelliteSMS];
}

- (uint64_t)__ck_maxCharacterCountForEnforcing
{
  if (![self __ck_needsEnforceMaxCharacterCount])
  {
    return 0;
  }

  serviceProperties = [self serviceProperties];
  v3 = [serviceProperties valueForKey:*MEMORY[0x1E69A7B30]];
  intValue = [v3 intValue];

  return intValue;
}

- (id)___ck_appendSatelliteGlyphToString:()CKAdditions
{
  v3 = [a3 stringByAppendingString:@" "];
  v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v3 attributes:0];
  v5 = +[CKUIBehavior sharedBehaviors];
  satelliteServiceIcon = [v5 satelliteServiceIcon];

  v7 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v7 setImage:satelliteServiceIcon];
  v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
  [v4 appendAttributedString:v8];

  v9 = [v4 copy];

  return v9;
}

@end