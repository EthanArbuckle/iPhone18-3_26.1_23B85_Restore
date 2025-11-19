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
  [a1 setRootObjectType:v6];

  [a1 setServerShare:v4];
  objc_opt_class();
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695B828]];
  v8 = ICDynamicCast();
  [a1 setTitle:v8];

  v9 = [v4 creationDate];
  [a1 setCreationDate:v9];

  v10 = [v4 modificationDate];
  [a1 setModificationDate:v10];

  objc_opt_class();
  v11 = [v4 encryptedValues];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69B75B8]];
  v13 = ICDynamicCast();
  [a1 setSnippet:v13];

  objc_opt_class();
  v14 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B75B0]];
  v15 = ICDynamicCast();
  [a1 setSnippetAttachmentType:{objc_msgSend(v15, "integerValue")}];

  objc_opt_class();
  v16 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B75A8]];
  v17 = ICDynamicCast();
  [a1 setSnippetAttachmentCount:{objc_msgSend(v17, "integerValue")}];

  v18 = [v4 ic_encryptedInlineableDataAssetForKeyPrefix:*MEMORY[0x1E69B7590]];
  [a1 setThumbnailDataLight:v18];

  v19 = [v4 ic_encryptedInlineableDataAssetForKeyPrefix:*MEMORY[0x1E69B7588]];
  [a1 setThumbnailDataDark:v19];

  objc_opt_class();
  v20 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B7578]];
  v21 = ICDynamicCast();
  [a1 setNoteCount:{objc_msgSend(v21, "integerValue")}];

  objc_opt_class();
  v22 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B7580]];
  v23 = ICDynamicCast();
  [a1 setNoteCountRecursive:{objc_msgSend(v23, "integerValue")}];

  objc_opt_class();
  v24 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B75C0]];
  v25 = ICDynamicCast();
  [a1 setSubfolderCount:{objc_msgSend(v25, "integerValue")}];

  objc_opt_class();
  v27 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B75C8]];

  v26 = ICDynamicCast();
  [a1 setSubfolderCountRecursive:{objc_msgSend(v26, "integerValue")}];
}

- (id)typeDescription
{
  v2 = [a1 rootObjectType];
  v3 = [v2 isEqualToString:@"com.apple.notes.note"];

  if (v3)
  {
    v4 = @"Shared Note";
  }

  else
  {
    v5 = [a1 rootObjectType];
    v6 = [v5 isEqualToString:@"com.apple.notes.folder"];

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
  v2 = [a1 serverShare];
  v3 = [v2 ic_nonCurrentUserAcceptedParticipants];

  v4 = [v3 ic_compactMap:&__block_literal_global_36];
  v5 = [a1 rootObjectType];
  v6 = [v5 isEqualToString:@"com.apple.notes.note"];

  if (v6)
  {
    if ([v4 count])
    {
      if ([v4 count] == 1)
      {
        v7 = [v3 count];
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
        [v8 localizedStringWithFormat:v15, v16, objc_msgSend(v3, "count") - 1];
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

    if ([v3 count])
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = @"Shared note with %lu people";
LABEL_25:
      v15 = __ICLocalizedFrameworkString_impl(v18, v18, 0, 1);
      v22 = [v17 localizedStringWithFormat:v15, objc_msgSend(v3, "count")];
LABEL_36:

      goto LABEL_37;
    }

    v27 = @"Shared note";
  }

  else
  {
    v10 = [a1 rootObjectType];
    v11 = [v10 isEqualToString:@"com.apple.notes.folder"];

    v12 = [v4 count];
    if (v11)
    {
      if (v12)
      {
        if ([v4 count] == 1)
        {
          v13 = [v3 count];
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

      if ([v3 count])
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
          v14 = [v3 count];
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

      if ([v3 count])
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
  v2 = [a1 rootObjectType];
  v3 = [v2 isEqualToString:@"com.apple.notes.note"];

  if (v3)
  {
    v4 = MEMORY[0x1E69B77F0];
    v5 = [a1 snippet];
    v6 = [a1 snippetAttachmentType];
    v7 = [a1 snippetAttachmentCount];
    v8 = [a1 account];
    v9 = [v4 contentInfoTextWithSnippet:v5 attachmentContentInfoType:v6 attachmentContentInfoCount:v7 account:v8];
  }

  else
  {
    v10 = [a1 rootObjectType];
    v11 = [v10 isEqualToString:@"com.apple.notes.folder"];

    if (v11)
    {
      [MEMORY[0x1E69B7760] contentInfoTextWithNoteCount:objc_msgSend(a1 subfolderCount:{"noteCount"), objc_msgSend(a1, "subfolderCount")}];
    }

    else
    {
      [a1 snippet];
    }
    v12 = ;
    v5 = v12;
    if (v12)
    {
      v13 = v12;
      v5 = v13;
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
  v2 = [a1 account];
  v3 = [v2 fullName];
  v4 = [v3 ic_localizedNameWithDefaultFormattingStyle];

  v5 = [a1 account];
  v6 = [v5 primaryEmail];

  if (v4 && v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = __ICLocalizedFrameworkString_impl(@"You will join as %@ (%@)", @"You will join as %@ (%@)", 0, 1);
    [v7 localizedStringWithFormat:v8, v4, v6];
    v11 = LABEL_9:;

    goto LABEL_11;
  }

  if (v4 | v6)
  {
    v9 = MEMORY[0x1E696AEC0];
    v8 = __ICLocalizedFrameworkString_impl(@"You will join as %@", @"You will join as %@", 0, 1);
    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = v6;
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
  v2 = [a1 rootObjectType];
  v3 = [v2 isEqualToString:@"com.apple.notes.note"];

  if (v3)
  {
    v4 = @"View Note";
  }

  else
  {
    v5 = [a1 rootObjectType];
    v6 = [v5 isEqualToString:@"com.apple.notes.folder"];

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
  v2 = [a1 rootObjectType];
  v3 = [v2 isEqualToString:@"com.apple.notes.note"];

  if (v3)
  {
    v4 = @"Remove Note";
  }

  else
  {
    v5 = [a1 rootObjectType];
    v6 = [v5 isEqualToString:@"com.apple.notes.folder"];

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
  v2 = [a1 thumbnailDataLight];
  if (v2)
  {
    v3 = [a1 thumbnailDataDark];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)thumbnailImageForAppearance:()UI size:
{
  v9 = [a5 type];
  if (v9 == 1)
  {
    v10 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v11 = [a1 thumbnailDataDark];
  }

  else
  {
    if (v9)
    {
      goto LABEL_6;
    }

    v10 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v11 = [a1 thumbnailDataLight];
  }

  v12 = v11;
  v13 = [v10 initWithData:v11];
  [MEMORY[0x1E69DCEB0] ic_scale];
  v5 = [v13 ic_scaledImageWithSize:a2 scale:{a3, v14}];

LABEL_6:

  return v5;
}

@end