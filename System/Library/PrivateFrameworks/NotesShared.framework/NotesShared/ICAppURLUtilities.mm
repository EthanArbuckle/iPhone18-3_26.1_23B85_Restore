@interface ICAppURLUtilities
+ (BOOL)isLaunchingQuickNoteViaPencil:(id)pencil;
+ (BOOL)isNewNoteURL:(id)l;
+ (BOOL)isQuickNoteModeURL:(id)l;
+ (BOOL)isShowDefaultCloudFolderURL:(id)l;
+ (BOOL)isShowDefaultFolderURL:(id)l;
+ (BOOL)isShowFolderListURL:(id)l;
+ (BOOL)isShowFolderURL:(id)l options:(unint64_t)options;
+ (BOOL)isShowHTMLFolderURL:(id)l options:(unint64_t)options;
+ (BOOL)isShowHTMLNoteURL:(id)l;
+ (BOOL)isShowLegacyNoteURL:(id)l;
+ (BOOL)isShowNoteFocusedInFolderURL:(id)l;
+ (BOOL)isShowNoteURL:(id)l options:(unint64_t)options;
+ (BOOL)isShowPaperURL:(id)l;
+ (BOOL)isShowRecentlyDeletedFolderURL:(id)l;
+ (BOOL)isShowSmartFoldersHelpURL:(id)l;
+ (BOOL)isSystemPaperURL:(id)l;
+ (BOOL)isTranscriptionDonationURL:(id)l;
+ (BOOL)isTranscriptionDonationURLPositive:(id)positive;
+ (BOOL)quickNoteURLIsContinuing:(id)continuing;
+ (BOOL)quickNoteURLShouldShowList:(id)list;
+ (BOOL)quickNoteURLShouldShowShareSheet:(id)sheet;
+ (BOOL)quickNoteURLShouldShowiCloudShareSheet:(id)sheet;
+ (id)NotesAppIDForNoteMentionedInURL:(id)l;
+ (id)URLForAttributedString:(id)string range:(_NSRange)range;
+ (id)URLWithSchemeForString:(id)string;
+ (id)accountFromACAccountIDInURL:(id)l context:(id)context;
+ (id)appURLForContainingFolderWithNoteFocused:(id)focused;
+ (id)appURLForDefaultFolder;
+ (id)appURLForFolder:(id)folder;
+ (id)appURLForFolderList;
+ (id)appURLForHTMLFolder:(id)folder;
+ (id)appURLForHTMLNote:(id)note;
+ (id)appURLForNote:(id)note inFolder:(id)folder;
+ (id)appURLForShowPaper;
+ (id)appURLForShowSmartFoldersHelp;
+ (id)appURLForTranscriptionDonationForAttachmentIdentifier:(id)identifier isPositive:(BOOL)positive;
+ (id)attachmentForTranscriptionDonationURL:(id)l managedObjectContext:(id)context;
+ (id)attachmentIdentifierFromQuickNoteURL:(id)l;
+ (id)contentOffsetFromQuickNoteURL:(id)l;
+ (id)defaultCloudFolderForACAccountInURL:(id)l context:(id)context;
+ (id)defaultCloudFolderURLForACAccountID:(id)d;
+ (id)detectedURLInString:(id)string allowNonLinkCharacters:(BOOL)characters;
+ (id)entityURIForNote:(id)note;
+ (id)firstQueryItemInURL:(id)l andHost:(id)host andQueryItemName:(id)name;
+ (id)folderIdentifierForShowNoteURL:(id)l;
+ (id)modernNoteIdentifierFromEntityURI:(id)i;
+ (id)noteIdentifierFromNotesAppURL:(id)l;
+ (id)noteIdentifierFromQuickNoteURL:(id)l;
+ (id)objectIDForHTMLFolderEntityURI:(id)i context:(id)context;
+ (id)objectIDForHTMLFolderMentionedInURL:(id)l options:(unint64_t)options context:(id)context;
+ (id)objectIDForModernFolderEntityURI:(id)i noteContext:(id)context;
+ (id)objectIDForModernFolderMentionedInURL:(id)l options:(unint64_t)options noteContext:(id)context;
+ (id)objectIDURIRepresentationForFolderMentionedInLegacyShowFolderURL:(id)l;
+ (id)objectIDURIRepresentationForFolderMentionedInLegacyShowHTMLFolderURL:(id)l;
+ (id)objectIDURIRepresentationForHTMLNoteEntityURI:(id)i context:(id)context;
+ (id)objectIDURIRepresentationForHTMLNoteMentionedInURL:(id)l;
+ (id)predicateForFolderWithNoteFocusedInURL:(id)l;
+ (id)predicateForNotesMentionedInURL:(id)l;
+ (id)predicateForNotesMentionedInURL:(id)l action:(id)action queryItemName:(id)name;
+ (id)predicateForNotesWithIdentifier:(id)identifier;
+ (id)predicateForVisibleNotesMentionedInURL:(id)l;
+ (id)recentlyDeletedFolderForACAccountInURL:(id)l context:(id)context;
+ (id)recentlyDeletedFolderURLForACAccountID:(id)d;
+ (id)referralURLForSnapshotBackgroundTask;
+ (id)urlByAppendingACAccountIDToURL:(id)l acAccountID:(id)d;
+ (id)urlForNewNote;
+ (id)urlForQuickNoteWithOptions:(id)options;
@end

@implementation ICAppURLUtilities

+ (id)predicateForVisibleNotesMentionedInURL:(id)l
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [self predicateForNotesMentionedInURL:l];
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

+ (id)predicateForNotesMentionedInURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v6 = ICIsNotesURLScheme(scheme);

  if (!v6)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v7 = [self modernNoteIdentifierFromEntityURI:lCopy];
  if ([v7 length])
  {
    v8 = [self predicateForNotesWithIdentifier:v7];
  }

  else
  {
    if (![self isShowNoteURL:lCopy options:1])
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = [self predicateForNotesMentionedInURL:lCopy action:@"showNote"];
  }

  v9 = v8;
LABEL_8:

LABEL_9:

  return v9;
}

+ (id)predicateForNotesMentionedInURL:(id)l action:(id)action queryItemName:(id)name
{
  v6 = [self firstQueryItemInURL:l andHost:action andQueryItemName:name];
  v7 = v6;
  if (v6)
  {
    value = [v6 value];
    v9 = [self predicateForNotesWithIdentifier:value];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)predicateForNotesWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (isValidIdentifier(identifierCopy))
  {
    identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K ==[c] %@", @"identifier", identifierCopy];
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ICAppURLUtilities *)identifierCopy predicateForNotesWithIdentifier:v5, v6, v7, v8, v9, v10, v11];
    }

    identifierCopy = 0;
  }

  return identifierCopy;
}

+ (id)appURLForHTMLNote:(id)note
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (note)
  {
    v3 = MEMORY[0x277CCACE0];
    noteCopy = note;
    v5 = objc_alloc_init(v3);
    [v5 setScheme:@"applenotes"];
    [v5 setHost:@"showHTMLNote"];
    v6 = MEMORY[0x277CCAD18];
    objectID = [noteCopy objectID];

    uRIRepresentation = [objectID URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];
    v10 = [v6 queryItemWithName:@"objectIDURI" value:absoluteString];
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

+ (id)objectIDURIRepresentationForHTMLNoteMentionedInURL:(id)l
{
  lCopy = l;
  if ([self isShowHTMLNoteURL:lCopy])
  {
    v5 = [self firstQueryItemInURL:lCopy andHost:@"showHTMLNote" andQueryItemName:@"objectIDURI"];
    v6 = v5;
    if (v5)
    {
      value = [v5 value];
      v8 = [MEMORY[0x277CBEBC0] URLWithString:value];
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

+ (id)appURLForFolder:(id)folder
{
  v14[1] = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  identifier = [folderCopy identifier];
  if ([identifier length])
  {
    v5 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v5 setScheme:@"applenotes"];
    [v5 setHost:@"showFolder"];
    v6 = MEMORY[0x277CCAD18];
    objectID = [folderCopy objectID];
    uRIRepresentation = [objectID URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];
    v10 = [v6 queryItemWithName:@"objectIDURI" value:absoluteString];
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

+ (id)objectIDForModernFolderMentionedInURL:(id)l options:(unint64_t)options noteContext:(id)context
{
  optionsCopy = options;
  lCopy = l;
  contextCopy = context;
  if ((optionsCopy & 1) != 0 || ([self objectIDForModernFolderEntityURI:lCopy noteContext:contextCopy], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [self objectIDURIRepresentationForFolderMentionedInLegacyShowFolderURL:lCopy];
    if (v12)
    {
      persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
      v11 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v12];
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

+ (id)objectIDURIRepresentationForFolderMentionedInLegacyShowFolderURL:(id)l
{
  lCopy = l;
  if ([self isShowFolderURL:lCopy options:1])
  {
    v5 = [self firstQueryItemInURL:lCopy andHost:@"showFolder" andQueryItemName:@"objectIDURI"];
    value = [v5 value];
    v7 = [value length];

    if (v7)
    {
      v8 = MEMORY[0x277CBEBC0];
      value2 = [v5 value];
      v10 = [v8 URLWithString:value2];
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

+ (id)appURLForHTMLFolder:(id)folder
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (folder)
  {
    v3 = MEMORY[0x277CCACE0];
    folderCopy = folder;
    v5 = objc_alloc_init(v3);
    [v5 setScheme:@"applenotes"];
    [v5 setHost:@"showHTMLFolder"];
    v6 = MEMORY[0x277CCAD18];
    objectID = [folderCopy objectID];

    uRIRepresentation = [objectID URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];
    v10 = [v6 queryItemWithName:@"objectIDURI" value:absoluteString];
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

+ (id)objectIDForHTMLFolderMentionedInURL:(id)l options:(unint64_t)options context:(id)context
{
  lCopy = l;
  contextCopy = context;
  v9 = [self objectIDForHTMLFolderEntityURI:lCopy context:contextCopy];
  if (!v9)
  {
    v10 = [self objectIDURIRepresentationForFolderMentionedInLegacyShowHTMLFolderURL:lCopy];
    if (v10)
    {
      managedObjectContext = [contextCopy managedObjectContext];
      persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
      v9 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v10];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)objectIDURIRepresentationForFolderMentionedInLegacyShowHTMLFolderURL:(id)l
{
  lCopy = l;
  if ([self isShowHTMLFolderURL:lCopy options:1])
  {
    v5 = [self firstQueryItemInURL:lCopy andHost:@"showHTMLFolder" andQueryItemName:@"objectIDURI"];
    v6 = v5;
    if (v5)
    {
      value = [v5 value];
      v8 = [MEMORY[0x277CBEBC0] URLWithString:value];
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

+ (BOOL)isShowFolderListURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    scheme = [v4 scheme];
    v6 = ICIsNotesURLScheme(scheme);

    if (v6)
    {
      host = [v4 host];
      v8 = [host ic_isCaseInsensitiveEqualToString:@"showFolderList"];
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

+ (BOOL)isShowDefaultFolderURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    scheme = [v4 scheme];
    v6 = ICIsNotesURLScheme(scheme);

    if (v6)
    {
      host = [v4 host];
      v8 = [host ic_isCaseInsensitiveEqualToString:@"showDefaultFolder"];
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

+ (BOOL)isShowFolderURL:(id)l options:(unint64_t)options
{
  optionsCopy = options;
  lCopy = l;
  if (lCopy)
  {
    if ((optionsCopy & 1) != 0 || ([self isModernFolderEntityURI:lCopy] & 1) == 0)
    {
      v8 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
      scheme = [v8 scheme];
      v10 = ICIsNotesURLScheme(scheme);

      if (v10)
      {
        host = [v8 host];
        v7 = [host ic_isCaseInsensitiveEqualToString:@"showFolder"];
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

+ (BOOL)isShowRecentlyDeletedFolderURL:(id)l
{
  if (!l)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCACE0] componentsWithURL:l resolvingAgainstBaseURL:1];
  v4 = v3;
  if (v3)
  {
    scheme = [v3 scheme];
    if (ICIsNotesURLScheme(scheme))
    {
      host = [v4 host];
      v7 = [host ic_isCaseInsensitiveEqualToString:@"showRecentlyDeletedFolder"];
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

+ (id)recentlyDeletedFolderURLForACAccountID:(id)d
{
  v4 = MEMORY[0x277CCACE0];
  dCopy = d;
  v6 = objc_alloc_init(v4);
  [v6 setScheme:@"applenotes"];
  [v6 setHost:@"showRecentlyDeletedFolder"];
  v7 = [v6 URL];
  v8 = [self urlByAppendingACAccountIDToURL:v7 acAccountID:dCopy];

  return v8;
}

+ (id)recentlyDeletedFolderForACAccountInURL:(id)l context:(id)context
{
  v4 = [self accountFromACAccountIDInURL:l context:context];
  trashFolder = [v4 trashFolder];

  return trashFolder;
}

+ (BOOL)isShowDefaultCloudFolderURL:(id)l
{
  if (!l)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCACE0] componentsWithURL:l resolvingAgainstBaseURL:1];
  v4 = v3;
  if (v3)
  {
    scheme = [v3 scheme];
    if (ICIsNotesURLScheme(scheme))
    {
      host = [v4 host];
      v7 = [host ic_isCaseInsensitiveEqualToString:@"showDefaultCloudFolder"];
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

+ (id)defaultCloudFolderURLForACAccountID:(id)d
{
  v4 = MEMORY[0x277CCACE0];
  dCopy = d;
  v6 = objc_alloc_init(v4);
  [v6 setScheme:@"applenotes"];
  [v6 setHost:@"showDefaultCloudFolder"];
  v7 = [v6 URL];
  v8 = [self urlByAppendingACAccountIDToURL:v7 acAccountID:dCopy];

  return v8;
}

+ (id)defaultCloudFolderForACAccountInURL:(id)l context:(id)context
{
  v4 = [self accountFromACAccountIDInURL:l context:context];
  defaultFolder = [v4 defaultFolder];

  return defaultFolder;
}

+ (BOOL)isShowHTMLFolderURL:(id)l options:(unint64_t)options
{
  optionsCopy = options;
  lCopy = l;
  if (lCopy)
  {
    if ((optionsCopy & 1) != 0 || ([self isHTMLFolderEntityURI:lCopy] & 1) == 0)
    {
      v8 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
      scheme = [v8 scheme];
      v10 = ICIsNotesURLScheme(scheme);

      if (v10)
      {
        host = [v8 host];
        v7 = [host ic_isCaseInsensitiveEqualToString:@"showHTMLFolder"];
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

+ (BOOL)isShowNoteURL:(id)l options:(unint64_t)options
{
  optionsCopy = options;
  lCopy = l;
  if (lCopy)
  {
    if ((optionsCopy & 1) != 0 || ([self isModernNoteEntityURI:lCopy] & 1) == 0)
    {
      v8 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
      scheme = [v8 scheme];
      v10 = ICIsNotesURLScheme(scheme);

      if (v10)
      {
        host = [v8 host];
        v7 = [host ic_isCaseInsensitiveEqualToString:@"showNote"];
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

+ (id)folderIdentifierForShowNoteURL:(id)l
{
  lCopy = l;
  if (lCopy && [self isShowNoteURL:lCopy])
  {
    v5 = [self firstQueryItemInURL:lCopy andHost:@"showNote" andQueryItemName:@"folderIdentifier"];
    value = [v5 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

+ (BOOL)isShowLegacyNoteURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    scheme = [v4 scheme];
    v6 = ICIsNotesURLScheme(scheme);

    if (v6)
    {
      host = [v4 host];
      v8 = [host ic_isCaseInsensitiveEqualToString:@"showLegacyNote"];
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

+ (BOOL)isShowHTMLNoteURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    scheme = [v4 scheme];
    v6 = ICIsNotesURLScheme(scheme);

    if (v6)
    {
      host = [v4 host];
      v8 = [host ic_isCaseInsensitiveEqualToString:@"showHTMLNote"];
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

+ (BOOL)isShowSmartFoldersHelpURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    scheme = [v4 scheme];
    v6 = ICIsNotesURLScheme(scheme);

    if (v6)
    {
      host = [v4 host];
      v8 = [host ic_isCaseInsensitiveEqualToString:@"showSmartFoldersHelp"];
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

+ (BOOL)isSystemPaperURL:(id)l
{
  v21 = *MEMORY[0x277D85DE8];
  if (l)
  {
    v3 = [MEMORY[0x277CCACE0] componentsWithURL:l resolvingAgainstBaseURL:1];
    scheme = [v3 scheme];
    v5 = ICIsNotesURLScheme(scheme);

    if (v5)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      queryItems = [v3 queryItems];
      v7 = [queryItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(queryItems);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            name = [v11 name];
            if ([name ic_isCaseInsensitiveEqualToString:@"displayMode"])
            {
              value = [v11 value];
              v14 = [value containsString:@"paper"];

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

          v8 = [queryItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (BOOL)isNewNoteURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    scheme = [v4 scheme];
    v6 = ICIsNotesURLScheme(scheme);

    if (v6)
    {
      host = [v4 host];
      v8 = [host ic_isCaseInsensitiveEqualToString:@"newNote"];
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

+ (BOOL)isTranscriptionDonationURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    scheme = [v4 scheme];
    v6 = ICIsNotesURLScheme(scheme);

    if (v6)
    {
      host = [v4 host];
      v8 = [host ic_isCaseInsensitiveEqualToString:@"transcriptionFeedback"];
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

+ (BOOL)isTranscriptionDonationURLPositive:(id)positive
{
  v25 = *MEMORY[0x277D85DE8];
  positiveCopy = positive;
  if (positiveCopy)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:positiveCopy resolvingAgainstBaseURL:1];
    scheme = [v4 scheme];
    v6 = ICIsNotesURLScheme(scheme);

    if (v6)
    {
      host = [v4 host];
      if ([host ic_isCaseInsensitiveEqualToString:@"transcriptionFeedback"])
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        queryItems = [v4 queryItems];
        v9 = [queryItems countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v19 = host;
          v11 = *v21;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(queryItems);
              }

              v13 = *(*(&v20 + 1) + 8 * i);
              name = [v13 name];
              v15 = [name ic_isCaseInsensitiveEqualToString:@"isPositive"];

              if (v15)
              {
                value = [v13 value];
                v16 = [value isEqual:@"1"];

                goto LABEL_17;
              }
            }

            v10 = [queryItems countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }

          v16 = 0;
LABEL_17:
          host = v19;
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

+ (id)attachmentForTranscriptionDonationURL:(id)l managedObjectContext:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  lCopy = l;
  contextCopy = context;
  if (lCopy)
  {
    v7 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    scheme = [v7 scheme];
    v9 = ICIsNotesURLScheme(scheme);

    if (v9)
    {
      host = [v7 host];
      if ([host ic_isCaseInsensitiveEqualToString:@"transcriptionFeedback"])
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        queryItems = [v7 queryItems];
        v12 = [queryItems countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v22 = host;
          v23 = contextCopy;
          v14 = *v25;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(queryItems);
              }

              v16 = *(*(&v24 + 1) + 8 * i);
              name = [v16 name];
              v18 = [name ic_isCaseInsensitiveEqualToString:@"attachmentID"];

              if (v18)
              {
                value = [v16 value];
                contextCopy = v23;
                v19 = [(ICBaseAttachment *)ICAttachment attachmentWithIdentifier:value context:v23];

                goto LABEL_17;
              }
            }

            v13 = [queryItems countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v19 = 0;
          contextCopy = v23;
LABEL_17:
          host = v22;
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

+ (id)appURLForTranscriptionDonationForAttachmentIdentifier:(id)identifier isPositive:(BOOL)positive
{
  positiveCopy = positive;
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACE0];
  identifierCopy = identifier;
  v7 = objc_alloc_init(v5);
  [v7 setScheme:@"applenotes"];
  [v7 setHost:@"transcriptionFeedback"];
  if (positiveCopy)
  {
    v8 = @"1";
  }

  else
  {
    v8 = @"0";
  }

  v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"isPositive" value:v8];
  v14[0] = v9;
  v10 = [MEMORY[0x277CCAD18] queryItemWithName:@"attachmentID" value:identifierCopy];

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

+ (BOOL)isShowPaperURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    scheme = [v4 scheme];
    v6 = ICIsNotesURLScheme(scheme);

    if (v6)
    {
      host = [v4 host];
      v8 = [host ic_isCaseInsensitiveEqualToString:@"showPaper"];
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

+ (BOOL)isShowNoteFocusedInFolderURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    scheme = [v4 scheme];
    v6 = ICIsNotesURLScheme(scheme);

    if (v6)
    {
      host = [v4 host];
      v8 = [host ic_isCaseInsensitiveEqualToString:@"focusNoteInFolder"];
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

+ (id)appURLForContainingFolderWithNoteFocused:(id)focused
{
  v9[1] = *MEMORY[0x277D85DE8];
  identifier = [focused identifier];
  if ([identifier length])
  {
    v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v4 setScheme:@"applenotes"];
    [v4 setHost:@"focusNoteInFolder"];
    v5 = [MEMORY[0x277CCAD18] queryItemWithName:@"identifier" value:identifier];
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

+ (id)appURLForNote:(id)note inFolder:(id)folder
{
  folderCopy = folder;
  identifier = [note identifier];
  if ([identifier length])
  {
    v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v7 setScheme:@"applenotes"];
    [v7 setHost:@"showNote"];
    array = [MEMORY[0x277CBEB18] array];
    v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"identifier" value:identifier];
    [array addObject:v9];

    if (folderCopy)
    {
      identifier2 = [folderCopy identifier];
      v11 = [identifier2 length];

      if (v11)
      {
        v12 = MEMORY[0x277CCAD18];
        identifier3 = [folderCopy identifier];
        v14 = [v12 queryItemWithName:@"folderIdentifier" value:identifier3];
        [array addObject:v14];
      }
    }

    v15 = [array copy];
    [v7 setQueryItems:v15];

    v16 = [v7 URL];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)predicateForFolderWithNoteFocusedInURL:(id)l
{
  lCopy = l;
  if ([self isShowNoteFocusedInFolderURL:lCopy])
  {
    v5 = [self predicateForNotesMentionedInURL:lCopy action:@"focusNoteInFolder"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)urlForQuickNoteWithOptions:(id)options
{
  v22 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v4 setScheme:@"applenotes"];
  [v4 setHost:@"quicknote"];
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = optionsCopy;
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
        [array addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [v4 setQueryItems:array];
  v15 = [v4 URL];

  return v15;
}

+ (BOOL)isQuickNoteModeURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    scheme = [v4 scheme];
    host = [v4 host];
    scheme2 = [v4 scheme];
    if ((ICIsNotesURLScheme(scheme2) & 1) != 0 || [scheme ic_isCaseInsensitiveEqualToString:@"mobilenotes-quicknote"])
    {
      v8 = [host ic_isCaseInsensitiveEqualToString:@"quicknote"];
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

+ (BOOL)isLaunchingQuickNoteViaPencil:(id)pencil
{
  pencilCopy = pencil;
  if ([objc_opt_class() isQuickNoteModeURL:pencilCopy])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:pencilCopy resolvingAgainstBaseURL:1];
    v5 = [v4 ic_BOOLValueForQueryItemWithKey:@"launchedByPencil"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)quickNoteURLShouldShowList:(id)list
{
  listCopy = list;
  if ([objc_opt_class() isQuickNoteModeURL:listCopy])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:listCopy resolvingAgainstBaseURL:0];
    v5 = [v4 ic_BOOLValueForQueryItemWithKey:@"showList"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)quickNoteURLShouldShowShareSheet:(id)sheet
{
  sheetCopy = sheet;
  if ([objc_opt_class() isQuickNoteModeURL:sheetCopy])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:sheetCopy resolvingAgainstBaseURL:0];
    v5 = [v4 ic_BOOLValueForQueryItemWithKey:@"showShareSheet"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)quickNoteURLShouldShowiCloudShareSheet:(id)sheet
{
  sheetCopy = sheet;
  if ([objc_opt_class() isQuickNoteModeURL:sheetCopy])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:sheetCopy resolvingAgainstBaseURL:0];
    v5 = [v4 ic_BOOLValueForQueryItemWithKey:@"showiCloudShareSheet"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)attachmentIdentifierFromQuickNoteURL:(id)l
{
  lCopy = l;
  if ([objc_opt_class() isQuickNoteModeURL:lCopy])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
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

+ (id)noteIdentifierFromQuickNoteURL:(id)l
{
  lCopy = l;
  if ([objc_opt_class() isQuickNoteModeURL:lCopy])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
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

+ (id)contentOffsetFromQuickNoteURL:(id)l
{
  lCopy = l;
  if ([objc_opt_class() isQuickNoteModeURL:lCopy])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    v5 = [v4 ic_queryItemWithKey:@"contentOffsetY"];
    v6 = v5;
    if (v5)
    {
      value = [v5 value];
      [value doubleValue];
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

+ (BOOL)quickNoteURLIsContinuing:(id)continuing
{
  continuingCopy = continuing;
  if ([objc_opt_class() isQuickNoteModeURL:continuingCopy])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:continuingCopy resolvingAgainstBaseURL:0];
    v5 = [v4 ic_BOOLValueForQueryItemWithKey:@"continuing"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)firstQueryItemInURL:(id)l andHost:(id)host andQueryItemName:(id)name
{
  v30 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  nameCopy = name;
  if (l)
  {
    v9 = [MEMORY[0x277CCACE0] componentsWithURL:l resolvingAgainstBaseURL:1];
    scheme = [v9 scheme];
    v11 = ICIsNotesURLScheme(scheme);

    if (v11)
    {
      host = [v9 host];
      v13 = [host ic_isCaseInsensitiveEqualToString:hostCopy];

      if (v13)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        queryItems = [v9 queryItems];
        v15 = [queryItems countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(queryItems);
            }

            v19 = *(*(&v25 + 1) + 8 * v18);
            name = [v19 name];
            v21 = [name ic_isCaseInsensitiveEqualToString:nameCopy];

            if (v21)
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [queryItems countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          [ICAppURLUtilities firstQueryItemInURL:nameCopy andHost:v9 andQueryItemName:v23];
        }
      }

      else
      {
        v23 = os_log_create("com.apple.notes", "Application");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [ICAppURLUtilities firstQueryItemInURL:hostCopy andHost:v9 andQueryItemName:v23];
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

+ (id)urlByAppendingACAccountIDToURL:(id)l acAccountID:(id)d
{
  v11[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = [MEMORY[0x277CCACE0] componentsWithURL:l resolvingAgainstBaseURL:1];
  if (dCopy)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"acAccountID" value:dCopy];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v6 setQueryItems:v8];
  }

  v9 = [v6 URL];

  return v9;
}

+ (id)accountFromACAccountIDInURL:(id)l context:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = [MEMORY[0x277CCACE0] componentsWithURL:l resolvingAgainstBaseURL:1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  queryItems = [v6 queryItems];
  v8 = [queryItems countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(queryItems);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      name = [v12 name];
      v14 = [name ic_isCaseInsensitiveEqualToString:@"acAccountID"];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [queryItems countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    value = [v12 value];

    if (!value)
    {
      goto LABEL_12;
    }

    v16 = [ICAccount accountWithIdentifier:value context:contextCopy];
  }

  else
  {
LABEL_9:

    value = 0;
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

+ (id)URLForAttributedString:(id)string range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v7 = stringCopy;
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
    [stringCopy enumerateAttribute:v8 inRange:location options:length usingBlock:{0, v20}];
  }

  else
  {
    if (location < [stringCopy length])
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

+ (id)URLWithSchemeForString:(id)string
{
  v3 = MEMORY[0x277CCACE0];
  stringCopy = string;
  v5 = [[v3 alloc] initWithString:stringCopy];
  scheme = [v5 scheme];

  if (scheme)
  {
    [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  }

  else
  {
    [ICAppURLUtilities detectedURLInString:stringCopy allowNonLinkCharacters:1];
  }
  v7 = ;

  return v7;
}

+ (id)noteIdentifierFromNotesAppURL:(id)l
{
  lCopy = l;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([lCopy scheme], v5 = objc_claimAutoreleasedReturnValue(), v6 = ICIsNotesURLScheme(v5), v5, v6))
  {
    v7 = [self modernNoteIdentifierFromEntityURI:lCopy];
    if ([v7 length])
    {
      v8 = v7;
    }

    else
    {
      v8 = NotesAppGUIDForNoteMentionedInURL(lCopy);
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)NotesAppIDForNoteMentionedInURL:(id)l
{
  v26 = *MEMORY[0x277D85DE8];
  lCopy = l;
  scheme = [lCopy scheme];
  if ((ICIsNotesURLScheme(scheme) & 1) == 0)
  {

    goto LABEL_5;
  }

  host = [lCopy host];
  if (![host ic_isCaseInsensitiveEqualToString:@"showNote"])
  {
    host2 = [lCopy host];
    v8 = [host2 ic_isCaseInsensitiveEqualToString:@"showHTMLNote"];

    if (v8)
    {
      goto LABEL_7;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_22;
  }

LABEL_7:
  v9 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  queryItems = [v9 queryItems];
  v11 = [queryItems countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(queryItems);
      }

      v15 = *(*(&v21 + 1) + 8 * v14);
      name = [v15 name];
      v17 = [name ic_isCaseInsensitiveEqualToString:@"identifier"];

      if (v17)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [queryItems countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    value = [v15 value];

    if (!value)
    {
      goto LABEL_20;
    }

    if (isValidIdentifier(value))
    {
      v19 = value;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
LABEL_15:

    value = 0;
LABEL_20:
    v19 = 0;
  }

  v6 = v19;

LABEL_22:

  return v6;
}

+ (id)detectedURLInString:(id)string allowNonLinkCharacters:(BOOL)characters
{
  v28 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v26 = 0;
  v6 = [MEMORY[0x277CCA948] dataDetectorWithTypes:32 error:&v26];
  v7 = v26;
  if (v6)
  {
    ic_range = [stringCopy ic_range];
    v10 = v9;
    [v6 matchesInString:stringCopy options:0 range:{ic_range, v9}];
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
          if (!characters && (ic_range != [*(*(&v22 + 1) + 8 * i) range] || v10 != v17))
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

+ (id)entityURIForNote:(id)note
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  noteCopy = note;
  static ICAppURLUtilities.entityURI(for:)(noteCopy, v6);

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

+ (id)objectIDURIRepresentationForHTMLNoteEntityURI:(id)i context:(id)context
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
  static ICAppURLUtilities.objectIDURIRepresentation(forHTMLNoteEntityURI:context:)(context, v11);
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

+ (id)modernNoteIdentifierFromEntityURI:(id)i
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

+ (id)objectIDForHTMLFolderEntityURI:(id)i context:(id)context
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  if (i)
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
  v11 = _sSo17ICAppURLUtilitiesC11NotesSharedE8objectID22forHTMLFolderEntityURI7contextSo015NSManagedObjectF0CSg10Foundation3URLVSg_So15ICLegacyContext_ptFZ_0(v8, context);
  swift_unknownObjectRelease();
  sub_214F302D4(v8, &qword_27CA41D40);

  return v11;
}

+ (id)objectIDForModernFolderEntityURI:(id)i noteContext:(id)context
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if (i)
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

  contextCopy = context;
  v12 = _sSo17ICAppURLUtilitiesC11NotesSharedE8objectID24forModernFolderEntityURI11noteContextSo015NSManagedObjectF0CSg10Foundation3URLVSg_So06ICNoteM0CtFZ_0(v8, contextCopy);

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