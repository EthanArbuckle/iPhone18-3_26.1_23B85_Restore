@interface ICCloudSyncingObject(UI)
+ (uint64_t)isInlineAttachment:()UI;
- (__CFString)shareViaICloudSystemImageName;
- (id)participantsInfoDescription;
- (id)shareViaICloudAddPeopleActionTitle;
- (id)shareViaICloudManageActionTitle;
@end

@implementation ICCloudSyncingObject(UI)

- (id)shareViaICloudManageActionTitle
{
  if (([a1 canBeSharedViaICloud] & 1) == 0 && !objc_msgSend(a1, "isSharedViaICloud"))
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a1 isSharedViaICloud])
      {
        v2 = @"Manage Shared Folder";
      }

      else
      {
        v2 = @"Share Folder";
      }

      goto LABEL_12;
    }

LABEL_9:
    v3 = 0;
    goto LABEL_13;
  }

  if ([a1 isSharedViaICloud])
  {
    v2 = @"Manage Shared Note";
  }

  else
  {
    v2 = @"Share Note";
  }

LABEL_12:
  v3 = __ICLocalizedFrameworkString_impl(v2, v2, 0, 1);
LABEL_13:

  return v3;
}

- (id)shareViaICloudAddPeopleActionTitle
{
  if (![a1 canBeSharedViaICloud])
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!_UISolariumEnabled())
      {
        v1 = @"Share Folder";
        goto LABEL_10;
      }

      goto LABEL_7;
    }

LABEL_8:
    v2 = 0;
    goto LABEL_11;
  }

  if (_UISolariumEnabled())
  {
LABEL_7:
    v1 = @"Share";
    goto LABEL_10;
  }

  v1 = @"Share Note";
LABEL_10:
  v2 = __ICLocalizedFrameworkString_impl(v1, v1, 0, 1);
LABEL_11:

  return v2;
}

- (__CFString)shareViaICloudSystemImageName
{
  if (([a1 canBeSharedViaICloud] & 1) != 0 || objc_msgSend(a1, "isSharedViaICloud"))
  {
    v2 = [a1 isSharedViaICloud];
    v3 = @"person.crop.circle.badge.plus";
    if (v2)
    {
      v3 = @"person.crop.circle.badge.checkmark";
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)participantsInfoDescription
{
  v1 = [a1 serverShareCheckingParent];
  v2 = [v1 ic_nonCurrentUserAcceptedParticipants];

  v3 = [v2 ic_compactMap:&__block_literal_global_44];
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v2 count];
      v5 = MEMORY[0x1E696AEC0];
      if (v4 == 1)
      {
        v6 = __ICLocalizedFrameworkString_impl(@"With %@", @"With %@", 0, 1);
        v7 = [v3 objectAtIndexedSubscript:0];
        [v5 localizedStringWithFormat:v6, v7, v13];
        v9 = LABEL_10:;
        goto LABEL_11;
      }
    }

    else
    {
      v10 = [v3 count];
      v5 = MEMORY[0x1E696AEC0];
      if (v10 == 2)
      {
        v6 = __ICLocalizedFrameworkString_impl(@"With %@ and %@", @"With %@ and %@", 0, 1);
        v7 = [v3 objectAtIndexedSubscript:0];
        v11 = [v3 objectAtIndexedSubscript:1];
        v9 = [v5 localizedStringWithFormat:v6, v7, v11];

LABEL_11:
        goto LABEL_12;
      }
    }

    v6 = __ICLocalizedFrameworkString_impl(@"With %@ and %lu others", @"With %@ and %lu others", 0, 1);
    v7 = [v3 objectAtIndexedSubscript:0];
    [v5 localizedStringWithFormat:v6, v7, objc_msgSend(v2, "count") - 1];
    goto LABEL_10;
  }

  if ([v2 count])
  {
    v8 = MEMORY[0x1E696AEC0];
    v6 = __ICLocalizedFrameworkString_impl(@"With %lu people", @"With %lu people", 0, 1);
    v9 = [v8 localizedStringWithFormat:v6, objc_msgSend(v2, "count")];
LABEL_12:

    goto LABEL_13;
  }

  v9 = __ICLocalizedFrameworkString_impl(@"Shared", @"Shared", 0, 1);
LABEL_13:

  return v9;
}

+ (uint64_t)isInlineAttachment:()UI
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_1F4FC5D80])
  {
    v4 = MEMORY[0x1E69B7888];
    v5 = [v3 attachmentUTI];
    v6 = [v4 typeUTIIsInlineAttachment:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end