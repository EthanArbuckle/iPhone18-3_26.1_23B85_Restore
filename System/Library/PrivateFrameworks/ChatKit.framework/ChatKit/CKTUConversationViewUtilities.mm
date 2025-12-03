@interface CKTUConversationViewUtilities
+ (BOOL)activityHasImageForTUConversation:(id)conversation;
+ (CGSize)faceTimeIconSize;
+ (id)activityAppNameForTUConversation:(id)conversation;
+ (id)activityBundleIdentifierForTUConversation:(id)conversation;
+ (id)activityDescriptionStringForTUConversation:(id)conversation;
+ (id)activityIconForTUConversation:(id)conversation iconSize:(double)size;
+ (id)activityImageForTUConversation:(id)conversation;
+ (id)activityTextForTUConversation:(id)conversation;
+ (id)activityTitleForTUConversation:(id)conversation;
+ (id)faceTimeIconForTUConversation:(id)conversation;
+ (id)joinStateStatusStringForTUConversation:(id)conversation;
+ (id)sharePlayIcon;
+ (id)titleForAVMode:(unint64_t)mode;
+ (unint64_t)ckTUConversationStateForTUConversation:(id)conversation;
+ (void)formatLPImageForScreenShare:(id)share conversation:(id)conversation;
@end

@implementation CKTUConversationViewUtilities

+ (id)faceTimeIconForTUConversation:(id)conversation
{
  v3 = @"video.fill";
  if (conversation && ![MEMORY[0x1E69A5B78] conversationIsVideoCall:?])
  {
    v3 = @"phone.fill";
  }

  v4 = MEMORY[0x1E69DCAB8];
  v5 = v3;
  v6 = +[CKUIBehavior sharedBehaviors];
  tuConversationBalloonIconConfiguration = [v6 tuConversationBalloonIconConfiguration];
  v8 = [v4 systemImageNamed:v5 withConfiguration:tuConversationBalloonIconConfiguration];

  return v8;
}

+ (id)sharePlayIcon
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v4 = [v2 systemImageNamed:@"shareplay" withConfiguration:v3];

  return v4;
}

+ (id)activityBundleIdentifierForTUConversation:(id)conversation
{
  v3 = [MEMORY[0x1E69A5B78] activitySessionForTUConversation:conversation];
  activity = [v3 activity];
  bundleIdentifier = [activity bundleIdentifier];

  return bundleIdentifier;
}

+ (id)activityIconForTUConversation:(id)conversation iconSize:(double)size
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DCEB0];
  conversationCopy = conversation;
  mainScreen = [v5 mainScreen];
  [mainScreen scale];
  v9 = v8;

  v10 = [CKTUConversationViewUtilities activityBundleIdentifierForTUConversation:conversationCopy];

  v11 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v10 allowPlaceholder:1 error:0];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v10];
    v13 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:size scale:{size, v9}];
    v18[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v12 prepareImagesForImageDescriptors:v14];

    v15 = [v12 imageForImageDescriptor:v13];
    v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v15 scale:"CGImage") orientation:{0, v9}];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)activityImageForTUConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([MEMORY[0x1E69A5B78] isScreenShareActivityForTUConversation:conversationCopy])
  {
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.inset.filled.and.person.filled"];
    imageData = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    v6 = [v4 imageWithConfiguration:imageData];
    v7 = MEMORY[0x1E69DCAD8];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v9 = [v7 configurationWithHierarchicalColor:whiteColor];
    v10 = [v6 imageByApplyingSymbolConfiguration:v9];

LABEL_5:
    goto LABEL_7;
  }

  v4 = [MEMORY[0x1E69A5B78] activityMetadataForTUConversation:conversationCopy];
  if (objc_opt_respondsToSelector())
  {
    v11 = MEMORY[0x1E69DCAB8];
    imageData = [v4 imageData];
    v10 = [v11 imageWithData:imageData];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (BOOL)activityHasImageForTUConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([MEMORY[0x1E69A5B78] activeTUConversationHasActivitySession:conversationCopy])
  {
    if ([MEMORY[0x1E69A5B78] isScreenShareActivityForTUConversation:conversationCopy])
    {
      v4 = 1;
    }

    else
    {
      v5 = [MEMORY[0x1E69A5B78] activityMetadataForTUConversation:conversationCopy];
      if (objc_opt_respondsToSelector())
      {
        imageData = [v5 imageData];
        v4 = imageData != 0;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (CGSize)faceTimeIconSize
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationBalloonFaceTimeIconDimensions];
  v4 = v3;

  v5 = v4;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

+ (id)titleForAVMode:(unint64_t)mode
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAVLessSharePlayEnabled = [mEMORY[0x1E69A8070] isAVLessSharePlayEnabled];

  if (isAVLessSharePlayEnabled)
  {
    v6 = CKFrameworkBundle();
    v7 = v6;
    if (mode)
    {
      v8 = @"FACE_TIME_DEFAULT";
    }

    else
    {
      v8 = @"EXPANSE_DEFAULT";
    }
  }

  else
  {
    v6 = CKFrameworkBundle();
    v7 = v6;
    v8 = @"FACE_TIME_DEFAULT";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"ChatKit"];

  return v9;
}

+ (id)activityTitleForTUConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([MEMORY[0x1E69A5B78] activeTUConversationHasActivitySession:conversationCopy])
  {
    if ([MEMORY[0x1E69A5B78] isScreenShareActivityForTUConversation:conversationCopy])
    {
      v4 = [MEMORY[0x1E69A5B78] remoteParticipantHandleSharingScreenForTUConversation:conversationCopy];
      if (v4)
      {
        v5 = [CKEntity entityForAddress:v4];
        [v5 fullName];
      }

      else
      {
        v5 = CKFrameworkBundle();
        [v5 localizedStringForKey:@"EXPANSE_LOCAL_SCREENSHARE" value:&stru_1F04268F8 table:@"ChatKit"];
      }
      title = ;
      goto LABEL_12;
    }

    v4 = [MEMORY[0x1E69A5B78] activityMetadataForTUConversation:conversationCopy];
    v5 = [CKTUConversationViewUtilities activityAppNameForTUConversation:conversationCopy];
    if (objc_opt_respondsToSelector())
    {
      title = [v4 title];
LABEL_12:
      v7 = title;

      v5 = v7;
    }
  }

  else
  {
    if (conversationCopy)
    {
      v5 = +[CKTUConversationViewUtilities titleForAVMode:](CKTUConversationViewUtilities, "titleForAVMode:", [conversationCopy avMode]);
      goto LABEL_14;
    }

    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"FACE_TIME_DEFAULT" value:&stru_1F04268F8 table:@"ChatKit"];
  }

LABEL_14:

  return v5;
}

+ (id)activityTextForTUConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([MEMORY[0x1E69A5B78] isScreenShareActivityForTUConversation:conversationCopy])
  {
    subTitle = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69A5B78] activityMetadataForTUConversation:conversationCopy];
    if (objc_opt_respondsToSelector())
    {
      subTitle = [v5 subTitle];
    }

    else
    {
      subTitle = 0;
    }
  }

  return subTitle;
}

+ (id)activityAppNameForTUConversation:(id)conversation
{
  v3 = [MEMORY[0x1E69A5B78] activitySessionForTUConversation:conversation];
  activity = [v3 activity];
  localizedApplicationName = [activity localizedApplicationName];
  v6 = localizedApplicationName;
  if (localizedApplicationName)
  {
    fallbackApplicationName = localizedApplicationName;
  }

  else
  {
    fallbackApplicationName = [activity fallbackApplicationName];
  }

  v8 = fallbackApplicationName;

  return v8;
}

+ (void)formatLPImageForScreenShare:(id)share conversation:(id)conversation
{
  v4 = MEMORY[0x1E69DC888];
  shareCopy = share;
  systemWhiteColor = [v4 systemWhiteColor];
  properties = [shareCopy properties];

  [properties setOverlaidTextColor:systemWhiteColor];
}

+ (id)joinStateStatusStringForTUConversation:(id)conversation
{
  mergedActiveRemoteParticipants = [conversation mergedActiveRemoteParticipants];
  v4 = [mergedActiveRemoteParticipants count];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"MultiwayOverrideActiveParticipants"];

  if (v6)
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults2 integerForKey:@"MultiwayOverrideActiveParticipants"];
  }

  if (v4)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = IMSharedUtilitiesFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"%lu People Active" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
    v11 = [v8 localizedStringWithFormat:v10, v4];
  }

  else
  {
    v9 = CKFrameworkBundle();
    v11 = [v9 localizedStringForKey:@"FACETIME_WAITING" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  return v11;
}

+ (unint64_t)ckTUConversationStateForTUConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (!conversationCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Setting state to CKTUConversationStateCallEnded for nil TUConversation", &v11, 2u);
      }

      goto LABEL_17;
    }

LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  v4 = [MEMORY[0x1E69A5B78] activeTUConversationHasActivitySession:conversationCopy];
  state = [conversationCopy state];
  if (state > 4)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = conversationCopy;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "TUConversationState is TUConversationStateCallEnded. Setting state to CKTUConversationStateCallEnded for TUConversation %@", &v11, 0xCu);
      }

LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v6 = 3;
  if (!v4)
  {
    v6 = 1;
  }

  v7 = 2;
  if (v4)
  {
    v7 = 4;
  }

  if (((1 << state) & 0x13) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

LABEL_19:

  return v8;
}

+ (id)activityDescriptionStringForTUConversation:(id)conversation
{
  v3 = [MEMORY[0x1E69A5B78] activitySessionForTUConversation:conversation];
  activity = [v3 activity];
  metadata = [activity metadata];
  context = [metadata context];
  identifier = [context identifier];

  if (([identifier isEqualToString:@"CPGroupActivityGenericContext"] & 1) == 0 && !objc_msgSend(identifier, "isEqualToString:", @"CPGroupActivityWorkoutTogetherContext"))
  {
    if (([identifier isEqualToString:@"CPGroupActivityListenTogetherContext"] & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"CPGroupActivityWatchTogetherContext"))
    {
      v8 = CKFrameworkBundle();
      originator = v8;
      v10 = @"EXPANSE_ACTIVITY_DESCRIPTION_PLAYING";
      goto LABEL_4;
    }

    if ([identifier isEqualToString:@"CPGroupActivityScreenSharingContext"])
    {
      originator = [activity originator];
      v14 = CKFrameworkBundle();
      v15 = v14;
      if (originator)
      {
        v16 = @"EXPANSE_ACTIVITY_DESCRIPTIONE_VIEWING";
      }

      else
      {
        v16 = @"EXPANSE_ACTIVITY_DESCRIPTION_SHARING";
      }

      v11 = [v14 localizedStringForKey:v16 value:&stru_1F04268F8 table:@"ChatKit"];

      goto LABEL_5;
    }
  }

  v8 = CKFrameworkBundle();
  originator = v8;
  v10 = @"EXPANSE_ACTIVITY_DESCRIPTION_DEFAULT";
LABEL_4:
  v11 = [v8 localizedStringForKey:v10 value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_5:

  uppercaseString = [v11 uppercaseString];

  return uppercaseString;
}

@end