@interface ICAppURLUtilities
+ (BOOL)isLaunchingQuickNoteViaPencil:(id)a3;
+ (BOOL)isNewNoteURL:(id)a3;
+ (BOOL)isQuickNoteModeURL:(id)a3;
+ (BOOL)isShowDefaultCloudFolderURL:(id)a3;
+ (BOOL)isShowDefaultFolderURL:(id)a3;
+ (BOOL)isShowFolderListURL:(id)a3;
+ (BOOL)isShowFolderURL:(id)a3 options:(unint64_t)a4;
+ (BOOL)isShowHTMLFolderURL:(id)a3 options:(unint64_t)a4;
+ (BOOL)isShowHTMLNoteURL:(id)a3;
+ (BOOL)isShowLegacyNoteURL:(id)a3;
+ (BOOL)isShowNoteFocusedInFolderURL:(id)a3;
+ (BOOL)isShowNoteURL:(id)a3 options:(unint64_t)a4;
+ (BOOL)isShowPaperURL:(id)a3;
+ (BOOL)isShowRecentlyDeletedFolderURL:(id)a3;
+ (BOOL)isShowSmartFoldersHelpURL:(id)a3;
+ (BOOL)isSystemPaperURL:(id)a3;
+ (BOOL)isTranscriptionDonationURL:(id)a3;
+ (BOOL)isTranscriptionDonationURLPositive:(id)a3;
+ (BOOL)quickNoteURLIsContinuing:(id)a3;
+ (BOOL)quickNoteURLShouldShowList:(id)a3;
+ (BOOL)quickNoteURLShouldShowShareSheet:(id)a3;
+ (BOOL)quickNoteURLShouldShowiCloudShareSheet:(id)a3;
+ (id)NotesAppIDForNoteMentionedInURL:(id)a3;
+ (id)URLForAttributedString:(id)a3 range:(_NSRange)a4;
+ (id)URLWithSchemeForString:(id)a3;
+ (id)accountFromACAccountIDInURL:(id)a3 context:(id)a4;
+ (id)appURLForContainingFolderWithNoteFocused:(id)a3;
+ (id)appURLForDefaultFolder;
+ (id)appURLForFolder:(id)a3;
+ (id)appURLForFolderList;
+ (id)appURLForHTMLFolder:(id)a3;
+ (id)appURLForHTMLNote:(id)a3;
+ (id)appURLForNote:(id)a3 inFolder:(id)a4;
+ (id)appURLForShowPaper;
+ (id)appURLForShowSmartFoldersHelp;
+ (id)appURLForTranscriptionDonationForAttachmentIdentifier:(id)a3 isPositive:(BOOL)a4;
+ (id)attachmentForTranscriptionDonationURL:(id)a3 managedObjectContext:(id)a4;
+ (id)attachmentIdentifierFromQuickNoteURL:(id)a3;
+ (id)contentOffsetFromQuickNoteURL:(id)a3;
+ (id)defaultCloudFolderForACAccountInURL:(id)a3 context:(id)a4;
+ (id)defaultCloudFolderURLForACAccountID:(id)a3;
+ (id)detectedURLInString:(id)a3 allowNonLinkCharacters:(BOOL)a4;
+ (id)entityURIForNote:(id)a3;
+ (id)firstQueryItemInURL:(id)a3 andHost:(id)a4 andQueryItemName:(id)a5;
+ (id)folderIdentifierForShowNoteURL:(id)a3;
+ (id)modernNoteIdentifierFromEntityURI:(id)a3;
+ (id)noteIdentifierFromNotesAppURL:(id)a3;
+ (id)noteIdentifierFromQuickNoteURL:(id)a3;
+ (id)objectIDForHTMLFolderEntityURI:(id)a3 context:(id)a4;
+ (id)objectIDForHTMLFolderMentionedInURL:(id)a3 options:(unint64_t)a4 context:(id)a5;
+ (id)objectIDForModernFolderEntityURI:(id)a3 noteContext:(id)a4;
+ (id)objectIDForModernFolderMentionedInURL:(id)a3 options:(unint64_t)a4 noteContext:(id)a5;
+ (id)objectIDURIRepresentationForFolderMentionedInLegacyShowFolderURL:(id)a3;
+ (id)objectIDURIRepresentationForFolderMentionedInLegacyShowHTMLFolderURL:(id)a3;
+ (id)objectIDURIRepresentationForHTMLNoteEntityURI:(id)a3 context:(id)a4;
+ (id)objectIDURIRepresentationForHTMLNoteMentionedInURL:(id)a3;
+ (id)predicateForFolderWithNoteFocusedInURL:(id)a3;
+ (id)predicateForNotesMentionedInURL:(id)a3;
+ (id)predicateForNotesMentionedInURL:(id)a3 action:(id)a4 queryItemName:(id)a5;
+ (id)predicateForNotesWithIdentifier:(id)a3;
+ (id)predicateForVisibleNotesMentionedInURL:(id)a3;
+ (id)recentlyDeletedFolderForACAccountInURL:(id)a3 context:(id)a4;
+ (id)recentlyDeletedFolderURLForACAccountID:(id)a3;
+ (id)referralURLForSnapshotBackgroundTask;
+ (id)urlByAppendingACAccountIDToURL:(id)a3 acAccountID:(id)a4;
+ (id)urlForNewNote;
+ (id)urlForQuickNoteWithOptions:(id)a3;
@end

@implementation ICAppURLUtilities

+ (id)predicateForVisibleNotesMentionedInURL:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [a1 predicateForNotesMentionedInURL:a3];
  v4 = +[ICCloudSyncingObject predicateForUnmarkedForDeletionObjects];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = MEMORY[0x277CCA920];
    v10[0] = v3;
    v10[1] = v4;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v6 = [v7 andPredicateWithSubpredicates:v8];
  }

  return v6;
}

+ (id)predicateForNotesMentionedInURL:(id)a3
{
  v4 = a3;
  v5 = [v4 scheme];
  v6 = ICIsNotesURLScheme(v5);

  if (!v6)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v7 = [a1 modernNoteIdentifierFromEntityURI:v4];
  if ([v7 length])
  {
    v8 = [a1 predicateForNotesWithIdentifier:v7];
  }

  else
  {
    if (![a1 isShowNoteURL:v4 options:1])
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = [a1 predicateForNotesMentionedInURL:v4 action:@"showNote"];
  }

  v9 = v8;
LABEL_8:

LABEL_9:

  return v9;
}

+ (id)predicateForNotesMentionedInURL:(id)a3 action:(id)a4 queryItemName:(id)a5
{
  v6 = [a1 firstQueryItemInURL:a3 andHost:a4 andQueryItemName:a5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 value];
    v9 = [a1 predicateForNotesWithIdentifier:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)predicateForNotesWithIdentifier:(id)a3
{
  v3 = a3;
  if (isValidIdentifier(v3))
  {
    v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K ==[c] %@", @"identifier", v3];
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ICAppURLUtilities *)v3 predicateForNotesWithIdentifier:v5, v6, v7, v8, v9, v10, v11];
    }

    v4 = 0;
  }

  return v4;
}

+ (id)appURLForHTMLNote:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CCACE0];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    [v5 setScheme:@"applenotes"];
    [v5 setHost:@"showHTMLNote"];
    v6 = MEMORY[0x277CCAD18];
    v7 = [v4 objectID];

    v8 = [v7 URIRepresentation];
    v9 = [v8 absoluteString];
    v10 = [v6 queryItemWithName:@"objectIDURI" value:v9];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v5 setQueryItems:v11];

    v12 = [v5 URL];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)objectIDURIRepresentationForHTMLNoteMentionedInURL:(id)a3
{
  v4 = a3;
  if ([a1 isShowHTMLNoteURL:v4])
  {
    v5 = [a1 firstQueryItemInURL:v4 andHost:@"showHTMLNote" andQueryItemName:@"objectIDURI"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 value];
      v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)appURLForFolder:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 identifier];
  if ([v4 length])
  {
    v5 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v5 setScheme:@"applenotes"];
    [v5 setHost:@"showFolder"];
    v6 = MEMORY[0x277CCAD18];
    v7 = [v3 objectID];
    v8 = [v7 URIRepresentation];
    v9 = [v8 absoluteString];
    v10 = [v6 queryItemWithName:@"objectIDURI" value:v9];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v5 setQueryItems:v11];

    v12 = [v5 URL];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)objectIDForModernFolderMentionedInURL:(id)a3 options:(unint64_t)a4 noteContext:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if ((v6 & 1) != 0 || ([a1 objectIDForModernFolderEntityURI:v8 noteContext:v9], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [a1 objectIDURIRepresentationForFolderMentionedInLegacyShowFolderURL:v8];
    if (v12)
    {
      v13 = [v9 persistentStoreCoordinator];
      v11 = [v13 managedObjectIDForURIRepresentation:v12];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = v10;
    v12 = 0;
  }

  return v11;
}

+ (id)objectIDURIRepresentationForFolderMentionedInLegacyShowFolderURL:(id)a3
{
  v4 = a3;
  if ([a1 isShowFolderURL:v4 options:1])
  {
    v5 = [a1 firstQueryItemInURL:v4 andHost:@"showFolder" andQueryItemName:@"objectIDURI"];
    v6 = [v5 value];
    v7 = [v6 length];

    if (v7)
    {
      v8 = MEMORY[0x277CBEBC0];
      v9 = [v5 value];
      v10 = [v8 URLWithString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)appURLForHTMLFolder:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CCACE0];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    [v5 setScheme:@"applenotes"];
    [v5 setHost:@"showHTMLFolder"];
    v6 = MEMORY[0x277CCAD18];
    v7 = [v4 objectID];

    v8 = [v7 URIRepresentation];
    v9 = [v8 absoluteString];
    v10 = [v6 queryItemWithName:@"objectIDURI" value:v9];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v5 setQueryItems:v11];

    v12 = [v5 URL];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)objectIDForHTMLFolderMentionedInURL:(id)a3 options:(unint64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a1 objectIDForHTMLFolderEntityURI:v7 context:v8];
  if (!v9)
  {
    v10 = [a1 objectIDURIRepresentationForFolderMentionedInLegacyShowHTMLFolderURL:v7];
    if (v10)
    {
      v11 = [v8 managedObjectContext];
      v12 = [v11 persistentStoreCoordinator];
      v9 = [v12 managedObjectIDForURIRepresentation:v10];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)objectIDURIRepresentationForFolderMentionedInLegacyShowHTMLFolderURL:(id)a3
{
  v4 = a3;
  if ([a1 isShowHTMLFolderURL:v4 options:1])
  {
    v5 = [a1 firstQueryItemInURL:v4 andHost:@"showHTMLFolder" andQueryItemName:@"objectIDURI"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 value];
      v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)appURLForDefaultFolder
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"applenotes"];
  [v2 setHost:@"showDefaultFolder"];
  v3 = [v2 URL];

  return v3;
}

+ (id)appURLForFolderList
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"applenotes"];
  [v2 setHost:@"showFolderList"];
  v3 = [v2 URL];

  return v3;
}

+ (id)appURLForShowSmartFoldersHelp
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"applenotes"];
  [v2 setHost:@"showSmartFoldersHelp"];
  v3 = [v2 URL];

  return v3;
}

+ (BOOL)isShowFolderListURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 scheme];
    v6 = ICIsNotesURLScheme(v5);

    if (v6)
    {
      v7 = [v4 host];
      v8 = [v7 ic_isCaseInsensitiveEqualToString:@"showFolderList"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isShowDefaultFolderURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 scheme];
    v6 = ICIsNotesURLScheme(v5);

    if (v6)
    {
      v7 = [v4 host];
      v8 = [v7 ic_isCaseInsensitiveEqualToString:@"showDefaultFolder"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isShowFolderURL:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    if ((v4 & 1) != 0 || ([a1 isModernFolderEntityURI:v6] & 1) == 0)
    {
      v8 = [MEMORY[0x277CCACE0] componentsWithURL:v6 resolvingAgainstBaseURL:1];
      v9 = [v8 scheme];
      v10 = ICIsNotesURLScheme(v9);

      if (v10)
      {
        v11 = [v8 host];
        v7 = [v11 ic_isCaseInsensitiveEqualToString:@"showFolder"];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isShowRecentlyDeletedFolderURL:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 scheme];
    if (ICIsNotesURLScheme(v5))
    {
      v6 = [v4 host];
      v7 = [v6 ic_isCaseInsensitiveEqualToString:@"showRecentlyDeletedFolder"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)recentlyDeletedFolderURLForACAccountID:(id)a3
{
  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setScheme:@"applenotes"];
  [v6 setHost:@"showRecentlyDeletedFolder"];
  v7 = [v6 URL];
  v8 = [a1 urlByAppendingACAccountIDToURL:v7 acAccountID:v5];

  return v8;
}

+ (id)recentlyDeletedFolderForACAccountInURL:(id)a3 context:(id)a4
{
  v4 = [a1 accountFromACAccountIDInURL:a3 context:a4];
  v5 = [v4 trashFolder];

  return v5;
}

+ (BOOL)isShowDefaultCloudFolderURL:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 scheme];
    if (ICIsNotesURLScheme(v5))
    {
      v6 = [v4 host];
      v7 = [v6 ic_isCaseInsensitiveEqualToString:@"showDefaultCloudFolder"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)defaultCloudFolderURLForACAccountID:(id)a3
{
  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setScheme:@"applenotes"];
  [v6 setHost:@"showDefaultCloudFolder"];
  v7 = [v6 URL];
  v8 = [a1 urlByAppendingACAccountIDToURL:v7 acAccountID:v5];

  return v8;
}

+ (id)defaultCloudFolderForACAccountInURL:(id)a3 context:(id)a4
{
  v4 = [a1 accountFromACAccountIDInURL:a3 context:a4];
  v5 = [v4 defaultFolder];

  return v5;
}

+ (BOOL)isShowHTMLFolderURL:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    if ((v4 & 1) != 0 || ([a1 isHTMLFolderEntityURI:v6] & 1) == 0)
    {
      v8 = [MEMORY[0x277CCACE0] componentsWithURL:v6 resolvingAgainstBaseURL:1];
      v9 = [v8 scheme];
      v10 = ICIsNotesURLScheme(v9);

      if (v10)
      {
        v11 = [v8 host];
        v7 = [v11 ic_isCaseInsensitiveEqualToString:@"showHTMLFolder"];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isShowNoteURL:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    if ((v4 & 1) != 0 || ([a1 isModernNoteEntityURI:v6] & 1) == 0)
    {
      v8 = [MEMORY[0x277CCACE0] componentsWithURL:v6 resolvingAgainstBaseURL:1];
      v9 = [v8 scheme];
      v10 = ICIsNotesURLScheme(v9);

      if (v10)
      {
        v11 = [v8 host];
        v7 = [v11 ic_isCaseInsensitiveEqualToString:@"showNote"];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)folderIdentifierForShowNoteURL:(id)a3
{
  v4 = a3;
  if (v4 && [a1 isShowNoteURL:v4])
  {
    v5 = [a1 firstQueryItemInURL:v4 andHost:@"showNote" andQueryItemName:@"folderIdentifier"];
    v6 = [v5 value];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isShowLegacyNoteURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 scheme];
    v6 = ICIsNotesURLScheme(v5);

    if (v6)
    {
      v7 = [v4 host];
      v8 = [v7 ic_isCaseInsensitiveEqualToString:@"showLegacyNote"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isShowHTMLNoteURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 scheme];
    v6 = ICIsNotesURLScheme(v5);

    if (v6)
    {
      v7 = [v4 host];
      v8 = [v7 ic_isCaseInsensitiveEqualToString:@"showHTMLNote"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isShowSmartFoldersHelpURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 scheme];
    v6 = ICIsNotesURLScheme(v5);

    if (v6)
    {
      v7 = [v4 host];
      v8 = [v7 ic_isCaseInsensitiveEqualToString:@"showSmartFoldersHelp"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isSystemPaperURL:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:1];
    v4 = [v3 scheme];
    v5 = ICIsNotesURLScheme(v4);

    if (v5)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = [v3 queryItems];
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            v12 = [v11 name];
            if ([v12 ic_isCaseInsensitiveEqualToString:@"displayMode"])
            {
              v13 = [v11 value];
              v14 = [v13 containsString:@"paper"];

              if (v14)
              {
                LOBYTE(v5) = 1;
                goto LABEL_16;
              }
            }

            else
            {
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }

      LOBYTE(v5) = 0;
LABEL_16:
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)urlForNewNote
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"applenotes"];
  [v2 setHost:@"newNote"];
  v3 = [v2 URL];

  return v3;
}

+ (BOOL)isNewNoteURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 scheme];
    v6 = ICIsNotesURLScheme(v5);

    if (v6)
    {
      v7 = [v4 host];
      v8 = [v7 ic_isCaseInsensitiveEqualToString:@"newNote"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isTranscriptionDonationURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 scheme];
    v6 = ICIsNotesURLScheme(v5);

    if (v6)
    {
      v7 = [v4 host];
      v8 = [v7 ic_isCaseInsensitiveEqualToString:@"transcriptionFeedback"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isTranscriptionDonationURLPositive:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 scheme];
    v6 = ICIsNotesURLScheme(v5);

    if (v6)
    {
      v7 = [v4 host];
      if ([v7 ic_isCaseInsensitiveEqualToString:@"transcriptionFeedback"])
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v8 = [v4 queryItems];
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v19 = v7;
          v11 = *v21;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v20 + 1) + 8 * i);
              v14 = [v13 name];
              v15 = [v14 ic_isCaseInsensitiveEqualToString:@"isPositive"];

              if (v15)
              {
                v17 = [v13 value];
                v16 = [v17 isEqual:@"1"];

                goto LABEL_17;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }

          v16 = 0;
LABEL_17:
          v7 = v19;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)attachmentForTranscriptionDonationURL:(id)a3 managedObjectContext:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [MEMORY[0x277CCACE0] componentsWithURL:v5 resolvingAgainstBaseURL:1];
    v8 = [v7 scheme];
    v9 = ICIsNotesURLScheme(v8);

    if (v9)
    {
      v10 = [v7 host];
      if ([v10 ic_isCaseInsensitiveEqualToString:@"transcriptionFeedback"])
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = [v7 queryItems];
        v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v22 = v10;
          v23 = v6;
          v14 = *v25;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v24 + 1) + 8 * i);
              v17 = [v16 name];
              v18 = [v17 ic_isCaseInsensitiveEqualToString:@"attachmentID"];

              if (v18)
              {
                v20 = [v16 value];
                v6 = v23;
                v19 = [(ICBaseAttachment *)ICAttachment attachmentWithIdentifier:v20 context:v23];

                goto LABEL_17;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v19 = 0;
          v6 = v23;
LABEL_17:
          v10 = v22;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)appURLForTranscriptionDonationForAttachmentIdentifier:(id)a3 isPositive:(BOOL)a4
{
  v4 = a4;
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACE0];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setScheme:@"applenotes"];
  [v7 setHost:@"transcriptionFeedback"];
  if (v4)
  {
    v8 = @"1";
  }

  else
  {
    v8 = @"0";
  }

  v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"isPositive" value:v8];
  v14[0] = v9;
  v10 = [MEMORY[0x277CCAD18] queryItemWithName:@"attachmentID" value:v6];

  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [v7 setQueryItems:v11];

  v12 = [v7 URL];

  return v12;
}

+ (id)appURLForShowPaper
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"applenotes"];
  [v2 setHost:@"showPaper"];
  v3 = [v2 URL];

  return v3;
}

+ (BOOL)isShowPaperURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 scheme];
    v6 = ICIsNotesURLScheme(v5);

    if (v6)
    {
      v7 = [v4 host];
      v8 = [v7 ic_isCaseInsensitiveEqualToString:@"showPaper"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isShowNoteFocusedInFolderURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 scheme];
    v6 = ICIsNotesURLScheme(v5);

    if (v6)
    {
      v7 = [v4 host];
      v8 = [v7 ic_isCaseInsensitiveEqualToString:@"focusNoteInFolder"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)appURLForContainingFolderWithNoteFocused:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [a3 identifier];
  if ([v3 length])
  {
    v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v4 setScheme:@"applenotes"];
    [v4 setHost:@"focusNoteInFolder"];
    v5 = [MEMORY[0x277CCAD18] queryItemWithName:@"identifier" value:v3];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v4 setQueryItems:v6];

    v7 = [v4 URL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)appURLForNote:(id)a3 inFolder:(id)a4
{
  v5 = a4;
  v6 = [a3 identifier];
  if ([v6 length])
  {
    v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v7 setScheme:@"applenotes"];
    [v7 setHost:@"showNote"];
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"identifier" value:v6];
    [v8 addObject:v9];

    if (v5)
    {
      v10 = [v5 identifier];
      v11 = [v10 length];

      if (v11)
      {
        v12 = MEMORY[0x277CCAD18];
        v13 = [v5 identifier];
        v14 = [v12 queryItemWithName:@"folderIdentifier" value:v13];
        [v8 addObject:v14];
      }
    }

    v15 = [v8 copy];
    [v7 setQueryItems:v15];

    v16 = [v7 URL];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)predicateForFolderWithNoteFocusedInURL:(id)a3
{
  v4 = a3;
  if ([a1 isShowNoteFocusedInFolderURL:v4])
  {
    v5 = [a1 predicateForNotesMentionedInURL:v4 action:@"focusNoteInFolder"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)urlForQuickNoteWithOptions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v4 setScheme:@"applenotes"];
  [v4 setHost:@"quicknote"];
  v5 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = MEMORY[0x277CCAD18];
        v13 = [v6 objectForKeyedSubscript:{v11, v17}];
        v14 = [v12 queryItemWithName:v11 value:v13];
        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [v4 setQueryItems:v5];
  v15 = [v4 URL];

  return v15;
}

+ (BOOL)isQuickNoteModeURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 scheme];
    v6 = [v4 host];
    v7 = [v4 scheme];
    if ((ICIsNotesURLScheme(v7) & 1) != 0 || [v5 ic_isCaseInsensitiveEqualToString:@"mobilenotes-quicknote"])
    {
      v8 = [v6 ic_isCaseInsensitiveEqualToString:@"quicknote"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isLaunchingQuickNoteViaPencil:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() isQuickNoteModeURL:v3])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 ic_BOOLValueForQueryItemWithKey:@"launchedByPencil"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)quickNoteURLShouldShowList:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() isQuickNoteModeURL:v3])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    v5 = [v4 ic_BOOLValueForQueryItemWithKey:@"showList"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)quickNoteURLShouldShowShareSheet:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() isQuickNoteModeURL:v3])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    v5 = [v4 ic_BOOLValueForQueryItemWithKey:@"showShareSheet"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)quickNoteURLShouldShowiCloudShareSheet:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() isQuickNoteModeURL:v3])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    v5 = [v4 ic_BOOLValueForQueryItemWithKey:@"showiCloudShareSheet"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)attachmentIdentifierFromQuickNoteURL:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() isQuickNoteModeURL:v3])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    v5 = [v4 ic_stringValueForQueryItemWithKey:@"attachment"];
    if (!isValidIdentifier(v5))
    {

      v6 = os_log_create("com.apple.notes", "Application");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(ICAppURLUtilities *)v6 attachmentIdentifierFromQuickNoteURL:v7, v8, v9, v10, v11, v12, v13];
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)noteIdentifierFromQuickNoteURL:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() isQuickNoteModeURL:v3])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    v5 = [v4 ic_stringValueForQueryItemWithKey:@"note"];
    if (!isValidIdentifier(v5))
    {

      v6 = os_log_create("com.apple.notes", "Application");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(ICAppURLUtilities *)v6 attachmentIdentifierFromQuickNoteURL:v7, v8, v9, v10, v11, v12, v13];
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)contentOffsetFromQuickNoteURL:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() isQuickNoteModeURL:v3])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    v5 = [v4 ic_queryItemWithKey:@"contentOffsetY"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 value];
      [v7 doubleValue];
      v9 = v8;

      v10 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, v9}];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)quickNoteURLIsContinuing:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() isQuickNoteModeURL:v3])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    v5 = [v4 ic_BOOLValueForQueryItemWithKey:@"continuing"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)firstQueryItemInURL:(id)a3 andHost:(id)a4 andQueryItemName:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (a3)
  {
    v9 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:1];
    v10 = [v9 scheme];
    v11 = ICIsNotesURLScheme(v10);

    if (v11)
    {
      v12 = [v9 host];
      v13 = [v12 ic_isCaseInsensitiveEqualToString:v7];

      if (v13)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = [v9 queryItems];
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
LABEL_6:
          v18 = 0;
          while (1)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v25 + 1) + 8 * v18);
            v20 = [v19 name];
            v21 = [v20 ic_isCaseInsensitiveEqualToString:v8];

            if (v21)
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
              if (v16)
              {
                goto LABEL_6;
              }

              goto LABEL_12;
            }
          }

          v22 = v19;

          if (v22)
          {
            goto LABEL_22;
          }
        }

        else
        {
LABEL_12:
        }

        v23 = os_log_create("com.apple.notes", "Application");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [ICAppURLUtilities firstQueryItemInURL:v8 andHost:v9 andQueryItemName:v23];
        }
      }

      else
      {
        v23 = os_log_create("com.apple.notes", "Application");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [ICAppURLUtilities firstQueryItemInURL:v7 andHost:v9 andQueryItemName:v23];
        }
      }
    }

    v22 = 0;
LABEL_22:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)urlByAppendingACAccountIDToURL:(id)a3 acAccountID:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:1];
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"acAccountID" value:v5];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v6 setQueryItems:v8];
  }

  v9 = [v6 URL];

  return v9;
}

+ (id)accountFromACAccountIDInURL:(id)a3 context:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 queryItems];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      v13 = [v12 name];
      v14 = [v13 ic_isCaseInsensitiveEqualToString:@"acAccountID"];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = [v12 value];

    if (!v15)
    {
      goto LABEL_12;
    }

    v16 = [ICAccount accountWithIdentifier:v15 context:v5];
  }

  else
  {
LABEL_9:

    v15 = 0;
LABEL_12:
    v16 = 0;
  }

  return v16;
}

+ (id)referralURLForSnapshotBackgroundTask
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"applenotes"];
  [v2 setHost:@"snapshotBackgroundTask"];
  v3 = [v2 URL];

  return v3;
}

+ (id)URLForAttributedString:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__39;
  v25 = __Block_byref_object_dispose__39;
  v26 = 0;
  if (length)
  {
    v8 = *MEMORY[0x277D740E8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __50__ICAppURLUtilities_URLForAttributedString_range___block_invoke;
    v20[3] = &unk_278195358;
    v20[4] = &v21;
    [v6 enumerateAttribute:v8 inRange:location options:length usingBlock:{0, v20}];
  }

  else
  {
    if (location < [v6 length])
    {
      v9 = [v7 attribute:*MEMORY[0x277D740E8] atIndex:location effectiveRange:0];
      v10 = v22[5];
      v22[5] = v9;
    }

    if (v22[5])
    {
      v11 = 1;
    }

    else
    {
      v11 = location == 0;
    }

    if (!v11)
    {
      v12 = [v7 attribute:*MEMORY[0x277D740E8] atIndex:location - 1 effectiveRange:0];
      v13 = v22[5];
      v22[5] = v12;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v22[5];
LABEL_14:
    v15 = v14;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [MEMORY[0x277CBEBC0] URLWithString:v22[5]];
    goto LABEL_14;
  }

  if (v22[5])
  {
    v16 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412290;
      v28 = v18;
      _os_log_impl(&dword_214D51000, v16, OS_LOG_TYPE_DEFAULT, "Cannot convert link attribute of type %@ to an NSURL", buf, 0xCu);
    }
  }

  v15 = 0;
LABEL_20:
  _Block_object_dispose(&v21, 8);

  return v15;
}

void __50__ICAppURLUtilities_URLForAttributedString_range___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  if (v8)
  {
    v13 = v8;
    v9 = *(*(a1 + 32) + 8);
    v12 = *(v9 + 40);
    v10 = (v9 + 40);
    v11 = v12;
    if (v12)
    {
      *v10 = 0;

      *a5 = 1;
    }

    else
    {
      objc_storeStrong(v10, a2);
    }

    v8 = v13;
  }
}

+ (id)URLWithSchemeForString:(id)a3
{
  v3 = MEMORY[0x277CCACE0];
  v4 = a3;
  v5 = [[v3 alloc] initWithString:v4];
  v6 = [v5 scheme];

  if (v6)
  {
    [MEMORY[0x277CBEBC0] URLWithString:v4];
  }

  else
  {
    [ICAppURLUtilities detectedURLInString:v4 allowNonLinkCharacters:1];
  }
  v7 = ;

  return v7;
}

+ (id)noteIdentifierFromNotesAppURL:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 scheme], v5 = objc_claimAutoreleasedReturnValue(), v6 = ICIsNotesURLScheme(v5), v5, v6))
  {
    v7 = [a1 modernNoteIdentifierFromEntityURI:v4];
    if ([v7 length])
    {
      v8 = v7;
    }

    else
    {
      v8 = NotesAppGUIDForNoteMentionedInURL(v4);
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)NotesAppIDForNoteMentionedInURL:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 scheme];
  if ((ICIsNotesURLScheme(v4) & 1) == 0)
  {

    goto LABEL_5;
  }

  v5 = [v3 host];
  if (![v5 ic_isCaseInsensitiveEqualToString:@"showNote"])
  {
    v7 = [v3 host];
    v8 = [v7 ic_isCaseInsensitiveEqualToString:@"showHTMLNote"];

    if (v8)
    {
      goto LABEL_7;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_22;
  }

LABEL_7:
  v9 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [v9 queryItems];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
LABEL_9:
    v14 = 0;
    while (1)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v21 + 1) + 8 * v14);
      v16 = [v15 name];
      v17 = [v16 ic_isCaseInsensitiveEqualToString:@"identifier"];

      if (v17)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    v18 = [v15 value];

    if (!v18)
    {
      goto LABEL_20;
    }

    if (isValidIdentifier(v18))
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
LABEL_15:

    v18 = 0;
LABEL_20:
    v19 = 0;
  }

  v6 = v19;

LABEL_22:

  return v6;
}

+ (id)detectedURLInString:(id)a3 allowNonLinkCharacters:(BOOL)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = 0;
  v6 = [MEMORY[0x277CCA948] dataDetectorWithTypes:32 error:&v26];
  v7 = v26;
  if (v6)
  {
    v8 = [v5 ic_range];
    v10 = v9;
    [v6 matchesInString:v5 options:0 range:{v8, v9}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v25 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      v21 = v7;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if (!a4 && (v8 != [*(*(&v22 + 1) + 8 * i) range] || v10 != v17))
          {
            continue;
          }

          v19 = [v16 URL];
          v7 = v21;
          goto LABEL_20;
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        v19 = 0;
        v7 = v21;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_20:
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ICAppURLUtilities detectedURLInString:v11 allowNonLinkCharacters:?];
    }

    v19 = 0;
  }

  return v19;
}

+ (id)entityURIForNote:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = a3;
  static ICAppURLUtilities.entityURI(for:)(v7, v6);

  v8 = sub_2150A3750();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2150A36B0();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

+ (id)objectIDURIRepresentationForHTMLNoteEntityURI:(id)a3 context:(id)a4
{
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  sub_2150A36F0();
  swift_unknownObjectRetain();
  static ICAppURLUtilities.objectIDURIRepresentation(forHTMLNoteEntityURI:context:)(a4, v11);
  swift_unknownObjectRelease();
  v12 = *(v6 + 8);
  v12(v8, v5);
  v13 = (*(v6 + 48))(v11, 1, v5);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_2150A36B0();
    v12(v11, v5);
    v14 = v15;
  }

  return v14;
}

+ (id)modernNoteIdentifierFromEntityURI:(id)a3
{
  v3 = sub_2150A3750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  _sSo17ICAppURLUtilitiesC11NotesSharedE20modernNoteIdentifier13fromEntityURISSSg10Foundation3URLV_tFZ_0();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  if (v8)
  {
    v9 = sub_2150A4A90();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)objectIDForHTMLFolderEntityURI:(id)a3 context:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  if (a3)
  {
    sub_2150A36F0();
    v9 = sub_2150A3750();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_2150A3750();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  swift_unknownObjectRetain();
  v11 = _sSo17ICAppURLUtilitiesC11NotesSharedE8objectID22forHTMLFolderEntityURI7contextSo015NSManagedObjectF0CSg10Foundation3URLVSg_So15ICLegacyContext_ptFZ_0(v8, a4);
  swift_unknownObjectRelease();
  sub_214F302D4(v8, &qword_27CA41D40);

  return v11;
}

+ (id)objectIDForModernFolderEntityURI:(id)a3 noteContext:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if (a3)
  {
    sub_2150A36F0();
    v9 = sub_2150A3750();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_2150A3750();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = a4;
  v12 = _sSo17ICAppURLUtilitiesC11NotesSharedE8objectID24forModernFolderEntityURI11noteContextSo015NSManagedObjectF0CSg10Foundation3URLVSg_So06ICNoteM0CtFZ_0(v8, v11);

  sub_214F302D4(v8, &qword_27CA41D40);

  return v12;
}

+ (void)firstQueryItemInURL:(uint64_t)a1 andHost:(uint64_t)a2 andQueryItemName:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_214D51000, log, OS_LOG_TYPE_DEBUG, "Unknown host %@ in url %@", &v3, 0x16u);
}

+ (void)firstQueryItemInURL:(uint64_t)a1 andHost:(void *)a2 andQueryItemName:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 query];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "Unknown query item %@ in query %@", &v6, 0x16u);
}

@end