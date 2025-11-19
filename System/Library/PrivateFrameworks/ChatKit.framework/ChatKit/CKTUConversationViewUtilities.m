@interface CKTUConversationViewUtilities
+ (BOOL)activityHasImageForTUConversation:(id)a3;
+ (CGSize)faceTimeIconSize;
+ (id)activityAppNameForTUConversation:(id)a3;
+ (id)activityBundleIdentifierForTUConversation:(id)a3;
+ (id)activityDescriptionStringForTUConversation:(id)a3;
+ (id)activityIconForTUConversation:(id)a3 iconSize:(double)a4;
+ (id)activityImageForTUConversation:(id)a3;
+ (id)activityTextForTUConversation:(id)a3;
+ (id)activityTitleForTUConversation:(id)a3;
+ (id)faceTimeIconForTUConversation:(id)a3;
+ (id)joinStateStatusStringForTUConversation:(id)a3;
+ (id)sharePlayIcon;
+ (id)titleForAVMode:(unint64_t)a3;
+ (unint64_t)ckTUConversationStateForTUConversation:(id)a3;
+ (void)formatLPImageForScreenShare:(id)a3 conversation:(id)a4;
@end

@implementation CKTUConversationViewUtilities

+ (id)faceTimeIconForTUConversation:(id)a3
{
  v3 = @"video.fill";
  if (a3 && ![MEMORY[0x1E69A5B78] conversationIsVideoCall:?])
  {
    v3 = @"phone.fill";
  }

  v4 = MEMORY[0x1E69DCAB8];
  v5 = v3;
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 tuConversationBalloonIconConfiguration];
  v8 = [v4 systemImageNamed:v5 withConfiguration:v7];

  return v8;
}

+ (id)sharePlayIcon
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v4 = [v2 systemImageNamed:@"shareplay" withConfiguration:v3];

  return v4;
}

+ (id)activityBundleIdentifierForTUConversation:(id)a3
{
  v3 = [MEMORY[0x1E69A5B78] activitySessionForTUConversation:a3];
  v4 = [v3 activity];
  v5 = [v4 bundleIdentifier];

  return v5;
}

+ (id)activityIconForTUConversation:(id)a3 iconSize:(double)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DCEB0];
  v6 = a3;
  v7 = [v5 mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [CKTUConversationViewUtilities activityBundleIdentifierForTUConversation:v6];

  v11 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v10 allowPlaceholder:1 error:0];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v10];
    v13 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:a4 scale:{a4, v9}];
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

+ (id)activityImageForTUConversation:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E69A5B78] isScreenShareActivityForTUConversation:v3])
  {
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.inset.filled.and.person.filled"];
    v5 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    v6 = [v4 imageWithConfiguration:v5];
    v7 = MEMORY[0x1E69DCAD8];
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    v9 = [v7 configurationWithHierarchicalColor:v8];
    v10 = [v6 imageByApplyingSymbolConfiguration:v9];

LABEL_5:
    goto LABEL_7;
  }

  v4 = [MEMORY[0x1E69A5B78] activityMetadataForTUConversation:v3];
  if (objc_opt_respondsToSelector())
  {
    v11 = MEMORY[0x1E69DCAB8];
    v5 = [v4 imageData];
    v10 = [v11 imageWithData:v5];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (BOOL)activityHasImageForTUConversation:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E69A5B78] activeTUConversationHasActivitySession:v3])
  {
    if ([MEMORY[0x1E69A5B78] isScreenShareActivityForTUConversation:v3])
    {
      v4 = 1;
    }

    else
    {
      v5 = [MEMORY[0x1E69A5B78] activityMetadataForTUConversation:v3];
      if (objc_opt_respondsToSelector())
      {
        v6 = [v5 imageData];
        v4 = v6 != 0;
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

+ (id)titleForAVMode:(unint64_t)a3
{
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isAVLessSharePlayEnabled];

  if (v5)
  {
    v6 = CKFrameworkBundle();
    v7 = v6;
    if (a3)
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

+ (id)activityTitleForTUConversation:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E69A5B78] activeTUConversationHasActivitySession:v3])
  {
    if ([MEMORY[0x1E69A5B78] isScreenShareActivityForTUConversation:v3])
    {
      v4 = [MEMORY[0x1E69A5B78] remoteParticipantHandleSharingScreenForTUConversation:v3];
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
      v6 = ;
      goto LABEL_12;
    }

    v4 = [MEMORY[0x1E69A5B78] activityMetadataForTUConversation:v3];
    v5 = [CKTUConversationViewUtilities activityAppNameForTUConversation:v3];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 title];
LABEL_12:
      v7 = v6;

      v5 = v7;
    }
  }

  else
  {
    if (v3)
    {
      v5 = +[CKTUConversationViewUtilities titleForAVMode:](CKTUConversationViewUtilities, "titleForAVMode:", [v3 avMode]);
      goto LABEL_14;
    }

    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"FACE_TIME_DEFAULT" value:&stru_1F04268F8 table:@"ChatKit"];
  }

LABEL_14:

  return v5;
}

+ (id)activityTextForTUConversation:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E69A5B78] isScreenShareActivityForTUConversation:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69A5B78] activityMetadataForTUConversation:v3];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v5 subTitle];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)activityAppNameForTUConversation:(id)a3
{
  v3 = [MEMORY[0x1E69A5B78] activitySessionForTUConversation:a3];
  v4 = [v3 activity];
  v5 = [v4 localizedApplicationName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 fallbackApplicationName];
  }

  v8 = v7;

  return v8;
}

+ (void)formatLPImageForScreenShare:(id)a3 conversation:(id)a4
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v7 = [v4 systemWhiteColor];
  v6 = [v5 properties];

  [v6 setOverlaidTextColor:v7];
}

+ (id)joinStateStatusStringForTUConversation:(id)a3
{
  v3 = [a3 mergedActiveRemoteParticipants];
  v4 = [v3 count];

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:@"MultiwayOverrideActiveParticipants"];

  if (v6)
  {
    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v7 integerForKey:@"MultiwayOverrideActiveParticipants"];
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

+ (unint64_t)ckTUConversationStateForTUConversation:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
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

  v4 = [MEMORY[0x1E69A5B78] activeTUConversationHasActivitySession:v3];
  v5 = [v3 state];
  if (v5 > 4)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v3;
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

  if (((1 << v5) & 0x13) != 0)
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

+ (id)activityDescriptionStringForTUConversation:(id)a3
{
  v3 = [MEMORY[0x1E69A5B78] activitySessionForTUConversation:a3];
  v4 = [v3 activity];
  v5 = [v4 metadata];
  v6 = [v5 context];
  v7 = [v6 identifier];

  if (([v7 isEqualToString:@"CPGroupActivityGenericContext"] & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", @"CPGroupActivityWorkoutTogetherContext"))
  {
    if (([v7 isEqualToString:@"CPGroupActivityListenTogetherContext"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"CPGroupActivityWatchTogetherContext"))
    {
      v8 = CKFrameworkBundle();
      v9 = v8;
      v10 = @"EXPANSE_ACTIVITY_DESCRIPTION_PLAYING";
      goto LABEL_4;
    }

    if ([v7 isEqualToString:@"CPGroupActivityScreenSharingContext"])
    {
      v9 = [v4 originator];
      v14 = CKFrameworkBundle();
      v15 = v14;
      if (v9)
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
  v9 = v8;
  v10 = @"EXPANSE_ACTIVITY_DESCRIPTION_DEFAULT";
LABEL_4:
  v11 = [v8 localizedStringForKey:v10 value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_5:

  v12 = [v11 uppercaseString];

  return v12;
}

@end