@interface ICInvitation(UI)
- (BOOL)hasThumbnail;
- (id)contentDescription;
- (id)joinActionTitle;
- (id)joinDescription;
- (id)participantsInfoDescription;
- (id)removeActionTitle;
- (id)thumbnailImageForAppearance:()UI size:;
- (id)typeDescription;
- (void)updateFromShare:()UI;
@end

@implementation ICInvitation(UI)

- (void)updateFromShare:()UI
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695B830]];
  v6 = ICDynamicCast();
  [self setRootObjectType:v6];

  [self setServerShare:v4];
  objc_opt_class();
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695B828]];
  v8 = ICDynamicCast();
  [self setTitle:v8];

  creationDate = [v4 creationDate];
  [self setCreationDate:creationDate];

  modificationDate = [v4 modificationDate];
  [self setModificationDate:modificationDate];

  objc_opt_class();
  encryptedValues = [v4 encryptedValues];
  v12 = [encryptedValues objectForKeyedSubscript:*MEMORY[0x1E69B75B8]];
  v13 = ICDynamicCast();
  [self setSnippet:v13];

  objc_opt_class();
  v14 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B75B0]];
  v15 = ICDynamicCast();
  [self setSnippetAttachmentType:{objc_msgSend(v15, "integerValue")}];

  objc_opt_class();
  v16 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B75A8]];
  v17 = ICDynamicCast();
  [self setSnippetAttachmentCount:{objc_msgSend(v17, "integerValue")}];

  v18 = [v4 ic_encryptedInlineableDataAssetForKeyPrefix:*MEMORY[0x1E69B7590]];
  [self setThumbnailDataLight:v18];

  v19 = [v4 ic_encryptedInlineableDataAssetForKeyPrefix:*MEMORY[0x1E69B7588]];
  [self setThumbnailDataDark:v19];

  objc_opt_class();
  v20 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B7578]];
  v21 = ICDynamicCast();
  [self setNoteCount:{objc_msgSend(v21, "integerValue")}];

  objc_opt_class();
  v22 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B7580]];
  v23 = ICDynamicCast();
  [self setNoteCountRecursive:{objc_msgSend(v23, "integerValue")}];

  objc_opt_class();
  v24 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B75C0]];
  v25 = ICDynamicCast();
  [self setSubfolderCount:{objc_msgSend(v25, "integerValue")}];

  objc_opt_class();
  v27 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B75C8]];

  v26 = ICDynamicCast();
  [self setSubfolderCountRecursive:{objc_msgSend(v26, "integerValue")}];
}

- (id)typeDescription
{
  rootObjectType = [self rootObjectType];
  v3 = [rootObjectType isEqualToString:@"com.apple.notes.note"];

  if (v3)
  {
    v4 = @"Shared Note";
  }

  else
  {
    rootObjectType2 = [self rootObjectType];
    v6 = [rootObjectType2 isEqualToString:@"com.apple.notes.folder"];

    if (v6)
    {
      v4 = @"Shared Folder";
    }

    else
    {
      v4 = @"Shared Item";
    }
  }

  v7 = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);

  return v7;
}

- (id)participantsInfoDescription
{
  serverShare = [self serverShare];
  ic_nonCurrentUserAcceptedParticipants = [serverShare ic_nonCurrentUserAcceptedParticipants];

  v4 = [ic_nonCurrentUserAcceptedParticipants ic_compactMap:&__block_literal_global_36];
  rootObjectType = [self rootObjectType];
  v6 = [rootObjectType isEqualToString:@"com.apple.notes.note"];

  if (v6)
  {
    if ([v4 count])
    {
      if ([v4 count] == 1)
      {
        v7 = [ic_nonCurrentUserAcceptedParticipants count];
        v8 = MEMORY[0x1E696AEC0];
        if (v7 == 1)
        {
          v9 = @"Shared note with %@";
LABEL_15:
          v15 = __ICLocalizedFrameworkString_impl(v9, v9, 0, 1);
          v16 = [v4 objectAtIndexedSubscript:0];
          [v8 localizedStringWithFormat:v15, v16, v28];
          v22 = LABEL_34:;
          goto LABEL_35;
        }

        goto LABEL_20;
      }

      v19 = [v4 count];
      v8 = MEMORY[0x1E696AEC0];
      if (v19 != 2)
      {
LABEL_20:
        v21 = @"Shared note with %@ and %lu others";
LABEL_33:
        v15 = __ICLocalizedFrameworkString_impl(v21, v21, 0, 1);
        v16 = [v4 objectAtIndexedSubscript:0];
        [v8 localizedStringWithFormat:v15, v16, objc_msgSend(ic_nonCurrentUserAcceptedParticipants, "count") - 1];
        goto LABEL_34;
      }

      v20 = @"Shared note with %@ and %@";
LABEL_30:
      v15 = __ICLocalizedFrameworkString_impl(v20, v20, 0, 1);
      v16 = [v4 objectAtIndexedSubscript:0];
      v25 = [v4 objectAtIndexedSubscript:1];
      v22 = [v8 localizedStringWithFormat:v15, v16, v25];

LABEL_35:
      goto LABEL_36;
    }

    if ([ic_nonCurrentUserAcceptedParticipants count])
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = @"Shared note with %lu people";
LABEL_25:
      v15 = __ICLocalizedFrameworkString_impl(v18, v18, 0, 1);
      v22 = [v17 localizedStringWithFormat:v15, objc_msgSend(ic_nonCurrentUserAcceptedParticipants, "count")];
LABEL_36:

      goto LABEL_37;
    }

    v27 = @"Shared note";
  }

  else
  {
    rootObjectType2 = [self rootObjectType];
    v11 = [rootObjectType2 isEqualToString:@"com.apple.notes.folder"];

    v12 = [v4 count];
    if (v11)
    {
      if (v12)
      {
        if ([v4 count] == 1)
        {
          v13 = [ic_nonCurrentUserAcceptedParticipants count];
          v8 = MEMORY[0x1E696AEC0];
          if (v13 == 1)
          {
            v9 = @"Shared folder with %@";
            goto LABEL_15;
          }
        }

        else
        {
          v23 = [v4 count];
          v8 = MEMORY[0x1E696AEC0];
          if (v23 == 2)
          {
            v20 = @"Shared folder with %@ and %@";
            goto LABEL_30;
          }
        }

        v21 = @"Shared folder with %@ and %lu others";
        goto LABEL_33;
      }

      if ([ic_nonCurrentUserAcceptedParticipants count])
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = @"Shared folder with %lu people";
        goto LABEL_25;
      }

      v27 = @"Shared folder";
    }

    else
    {
      if (v12)
      {
        if ([v4 count] == 1)
        {
          v14 = [ic_nonCurrentUserAcceptedParticipants count];
          v8 = MEMORY[0x1E696AEC0];
          if (v14 == 1)
          {
            v9 = @"With %@";
            goto LABEL_15;
          }
        }

        else
        {
          v24 = [v4 count];
          v8 = MEMORY[0x1E696AEC0];
          if (v24 == 2)
          {
            v20 = @"With %@ and %@";
            goto LABEL_30;
          }
        }

        v21 = @"With %@ and %lu others";
        goto LABEL_33;
      }

      if ([ic_nonCurrentUserAcceptedParticipants count])
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = @"With %lu people";
        goto LABEL_25;
      }

      v27 = @"Shared item";
    }
  }

  v22 = __ICLocalizedFrameworkString_impl(v27, v27, 0, 1);
LABEL_37:

  return v22;
}

- (id)contentDescription
{
  rootObjectType = [self rootObjectType];
  v3 = [rootObjectType isEqualToString:@"com.apple.notes.note"];

  if (v3)
  {
    v4 = MEMORY[0x1E69B77F0];
    snippet = [self snippet];
    snippetAttachmentType = [self snippetAttachmentType];
    snippetAttachmentCount = [self snippetAttachmentCount];
    account = [self account];
    v9 = [v4 contentInfoTextWithSnippet:snippet attachmentContentInfoType:snippetAttachmentType attachmentContentInfoCount:snippetAttachmentCount account:account];
  }

  else
  {
    rootObjectType2 = [self rootObjectType];
    v11 = [rootObjectType2 isEqualToString:@"com.apple.notes.folder"];

    if (v11)
    {
      [MEMORY[0x1E69B7760] contentInfoTextWithNoteCount:objc_msgSend(self subfolderCount:{"noteCount"), objc_msgSend(self, "subfolderCount")}];
    }

    else
    {
      [self snippet];
    }
    v12 = ;
    snippet = v12;
    if (v12)
    {
      v13 = v12;
      snippet = v13;
    }

    else
    {
      v13 = __ICLocalizedFrameworkString_impl(@"No contents", @"No contents", 0, 1);
    }

    v9 = v13;
  }

  return v9;
}

- (id)joinDescription
{
  account = [self account];
  fullName = [account fullName];
  ic_localizedNameWithDefaultFormattingStyle = [fullName ic_localizedNameWithDefaultFormattingStyle];

  account2 = [self account];
  primaryEmail = [account2 primaryEmail];

  if (ic_localizedNameWithDefaultFormattingStyle && primaryEmail)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = __ICLocalizedFrameworkString_impl(@"You will join as %@ (%@)", @"You will join as %@ (%@)", 0, 1);
    [v7 localizedStringWithFormat:v8, ic_localizedNameWithDefaultFormattingStyle, primaryEmail];
    v11 = LABEL_9:;

    goto LABEL_11;
  }

  if (ic_localizedNameWithDefaultFormattingStyle | primaryEmail)
  {
    v9 = MEMORY[0x1E696AEC0];
    v8 = __ICLocalizedFrameworkString_impl(@"You will join as %@", @"You will join as %@", 0, 1);
    if (ic_localizedNameWithDefaultFormattingStyle)
    {
      v10 = ic_localizedNameWithDefaultFormattingStyle;
    }

    else
    {
      v10 = primaryEmail;
    }

    [v9 localizedStringWithFormat:v8, v10, v13];
    goto LABEL_9;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)joinActionTitle
{
  rootObjectType = [self rootObjectType];
  v3 = [rootObjectType isEqualToString:@"com.apple.notes.note"];

  if (v3)
  {
    v4 = @"View Note";
  }

  else
  {
    rootObjectType2 = [self rootObjectType];
    v6 = [rootObjectType2 isEqualToString:@"com.apple.notes.folder"];

    if (v6)
    {
      v4 = @"View Folder";
    }

    else
    {
      v4 = @"View";
    }
  }

  v7 = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);

  return v7;
}

- (id)removeActionTitle
{
  rootObjectType = [self rootObjectType];
  v3 = [rootObjectType isEqualToString:@"com.apple.notes.note"];

  if (v3)
  {
    v4 = @"Remove Note";
  }

  else
  {
    rootObjectType2 = [self rootObjectType];
    v6 = [rootObjectType2 isEqualToString:@"com.apple.notes.folder"];

    if (v6)
    {
      v4 = @"Remove Folder";
    }

    else
    {
      v4 = @"Remove";
    }
  }

  v7 = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);

  return v7;
}

- (BOOL)hasThumbnail
{
  thumbnailDataLight = [self thumbnailDataLight];
  if (thumbnailDataLight)
  {
    thumbnailDataDark = [self thumbnailDataDark];
    v4 = thumbnailDataDark != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)thumbnailImageForAppearance:()UI size:
{
  type = [a5 type];
  if (type == 1)
  {
    v10 = objc_alloc(MEMORY[0x1E69DCAB8]);
    thumbnailDataDark = [self thumbnailDataDark];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    v10 = objc_alloc(MEMORY[0x1E69DCAB8]);
    thumbnailDataDark = [self thumbnailDataLight];
  }

  v12 = thumbnailDataDark;
  v13 = [v10 initWithData:thumbnailDataDark];
  [MEMORY[0x1E69DCEB0] ic_scale];
  v5 = [v13 ic_scaledImageWithSize:a2 scale:{a3, v14}];

LABEL_6:

  return v5;
}

@end