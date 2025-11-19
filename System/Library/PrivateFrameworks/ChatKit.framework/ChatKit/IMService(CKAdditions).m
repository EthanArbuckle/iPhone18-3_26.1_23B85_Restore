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
  v2 = [MEMORY[0x1E69A5CA0] smsService];
  v3 = v2 == a1;

  return v3;
}

- (id)__ck_entryViewDisplayName
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 messageEntryViewUsesAbbreviatedServiceNames];

  if (!v3)
  {
    goto LABEL_8;
  }

  if (![a1 __ck_isSMS])
  {
    if ([a1 __ck_isRCS])
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
    v7 = [a1 __ck_displayName];
    goto LABEL_11;
  }

  v4 = CKFrameworkBundle();
  v5 = v4;
  v6 = @"TEXT_MESSAGE_WATCH";
LABEL_10:
  v7 = [v4 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];

LABEL_11:

  return v7;
}

- (BOOL)__ck_isRCS
{
  v2 = [MEMORY[0x1E69A5CA0] rcsService];
  v3 = v2 == a1;

  return v3;
}

- (uint64_t)__ck_isMadrid
{
  if ([a1 __ck_isiMessage])
  {
    return 1;
  }

  return [a1 __ck_isiMessageLite];
}

- (BOOL)__ck_isiMessage
{
  v2 = [MEMORY[0x1E69A5CA0] iMessageService];
  v3 = v2 == a1;

  return v3;
}

- (uint64_t)__ck_isiMessageLite
{
  v1 = [a1 name];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69A7AF8]];

  return v2;
}

- (uint64_t)__ck_isSatelliteSMS
{
  v1 = [a1 name];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69A7AE8]];

  return v2;
}

- (uint64_t)__ck_isCarrierBased
{
  if ([a1 __ck_isSMS])
  {
    return 1;
  }

  return [a1 __ck_isRCS];
}

- (BOOL)__ck_isSendingAllowedForChat:()CKAdditions
{
  v4 = a3;
  v5 = 1;
  if (([MEMORY[0x1E69A7F58] isMessagesTheDefaultTextApp] & 1) == 0)
  {
    v7 = [a1 __ck_isCarrierBased];
    if (v4)
    {
      if (v7 && ![v4 isStewieChat])
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
  v3 = [v2 messageEntryViewUsesAbbreviatedServiceNames];

  if (!v3)
  {
    goto LABEL_8;
  }

  if ([a1 __ck_isiMessageLite])
  {
    v4 = @"MADRID";
  }

  else
  {
    if (![a1 __ck_isSatelliteSMS])
    {
      goto LABEL_8;
    }

    v4 = @"TEXT_MESSAGE_WATCH";
  }

  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F04268F8 table:@"ChatKit"];

  if (v6)
  {
    v7 = [a1 ___ck_appendSatelliteGlyphToString:v6];
    goto LABEL_9;
  }

LABEL_8:
  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = [a1 __ck_entryViewDisplayName];
  v7 = [v8 initWithString:v6];
LABEL_9:
  v9 = v7;

  return v9;
}

- (id)__ck_attributedEntryViewDisplayNameForSOS
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 messageEntryViewUsesAbbreviatedServiceNames];

  if (v3 && (CKFrameworkBundle(), v4 = objc_claimAutoreleasedReturnValue(), [v4 localizedStringForKey:@"TEXT_MESSAGE_SOS" value:&stru_1F04268F8 table:@"ChatKit"], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = [a1 ___ck_appendSatelliteGlyphToString:v5];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v5 = [a1 __ck_entryViewDisplayName];
    v6 = [v7 initWithString:v5];
  }

  v8 = v6;

  return v8;
}

- (uint64_t)__ck_maxRecipientCountForHandle:()CKAdditions simID:
{
  v6 = a3;
  v7 = a4;
  if ([a1 __ck_isSMS])
  {
    v8 = [MEMORY[0x1E69A7F58] IMMMSMaxRecipientsForPhoneNumber:v6 simID:v7];
  }

  else if ([a1 __ck_isRCS])
  {
    v9 = [MEMORY[0x1E69A7F50] sharedManager];
    v8 = [v9 groupMessagingMaxGroupSizeForPhoneNumber:v6 simID:v7];
  }

  else if ([MEMORY[0x1E69A5CA0] iMessageEnabled])
  {
    v8 = [a1 maxChatParticipantsForHandle:v6 simID:v7];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (uint64_t)__ck_displayReplyColor
{
  if ([a1 __ck_isMadrid])
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
  if ([a1 __ck_isSMS])
  {
    return 3;
  }

  else if ([a1 __ck_isiMessage])
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
  if ([a1 __ck_isiMessageLite])
  {
    return 1;
  }

  return [a1 __ck_isSatelliteSMS];
}

- (uint64_t)__ck_maxCharacterCountForEnforcing
{
  if (![a1 __ck_needsEnforceMaxCharacterCount])
  {
    return 0;
  }

  v2 = [a1 serviceProperties];
  v3 = [v2 valueForKey:*MEMORY[0x1E69A7B30]];
  v4 = [v3 intValue];

  return v4;
}

- (id)___ck_appendSatelliteGlyphToString:()CKAdditions
{
  v3 = [a3 stringByAppendingString:@" "];
  v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v3 attributes:0];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 satelliteServiceIcon];

  v7 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v7 setImage:v6];
  v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
  [v4 appendAttributedString:v8];

  v9 = [v4 copy];

  return v9;
}

@end