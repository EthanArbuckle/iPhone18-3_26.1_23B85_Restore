@interface SMSApplicationIntentsHelper
+ (BOOL)continueWithSendMessageInteraction:(id)a3 chatRegistry:(id)a4 navigationProvider:(id)a5 conversationList:(id)a6 chatController:(id)a7;
+ (BOOL)isSendMessageInteraction:(id)a3;
@end

@implementation SMSApplicationIntentsHelper

+ (BOOL)isSendMessageInteraction:(id)a3
{
  if (a3)
  {
    v3 = [a3 intent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (BOOL)continueWithSendMessageInteraction:(id)a3 chatRegistry:(id)a4 navigationProvider:(id)a5 conversationList:(id)a6 chatController:(id)a7
{
  v87 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v73 = a4;
  v67 = a5;
  v70 = a6;
  v69 = a7;
  v71 = v11;
  [v11 intent];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v72 = v84 = 0u;
  v12 = [v72 attachments];
  v13 = [v12 countByEnumeratingWithState:&v81 objects:v86 count:16];
  v14 = 0x1E696A000uLL;
  if (!v13)
  {
    v16 = 0;
    goto LABEL_27;
  }

  v15 = v13;
  v16 = 0;
  v74 = v12;
  v75 = *v82;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v82 != v75)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v81 + 1) + 8 * i);
      v19 = [v18 sharedLink];

      if (v19)
      {
        v20 = objc_alloc(*(v14 + 2736));
        v21 = [v18 sharedLink];
        v22 = [v21 absoluteString];
        v23 = [v20 initWithString:v22 attributes:0];

        v24 = [[CKComposition alloc] initWithText:v23 subject:0];
        v25 = v24;
        if (v16)
        {
          v26 = [(CKComposition *)v16 compositionByAppendingComposition:v24];

          v16 = v26;
        }

        else
        {
          v25 = v24;
          v16 = v25;
        }
      }

      else
      {
        v27 = [v18 file];

        if (!v27)
        {
          continue;
        }

        v28 = [v18 file];
        v29 = [v28 typeIdentifier];
        if ([v29 isEqual:@"com.apple.live-photo"])
        {
          v30 = [v18 file];
          v31 = [v30 fileURL];
          v32 = [v31 pathExtension];
          v33 = [v32 isEqualToIgnoringCase:@"mov"];

          if (v33)
          {
            v12 = v74;
            v14 = 0x1E696A000;
            continue;
          }
        }

        else
        {
        }

        v25 = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
        v34 = [v18 file];
        v35 = [v34 fileURL];

        v36 = [v35 lastPathComponent];
        v37 = [(CKComposition *)v25 im_randomTemporaryFileURLWithFileName:v36];

        v80 = 0;
        LODWORD(v36) = [(CKComposition *)v25 im_copySecurityScopedResourceAtURL:v35 toDestination:v37 error:&v80];
        v23 = v80;
        if (v36)
        {
          v38 = +[CKMediaObjectManager sharedInstance];
          v39 = [v38 mediaObjectWithFileURL:v37 filename:0 transcoderUserInfo:0];

          v14 = 0x1E696A000;
          if (v16)
          {
            v40 = [(CKComposition *)v16 compositionByAppendingMediaObject:v39];

            v16 = v40;
          }

          else
          {
            v16 = [CKComposition compositionWithMediaObject:v39 subject:0];
          }

          v12 = v74;
        }

        else
        {
          v12 = v74;
          v14 = 0x1E696A000;
        }
      }
    }

    v15 = [v12 countByEnumeratingWithState:&v81 objects:v86 count:16];
  }

  while (v15);
LABEL_27:

  v41 = [v72 content];
  if ([v41 length])
  {
    v42 = [objc_alloc(*(v14 + 2736)) initWithString:v41 attributes:0];
    if (v16)
    {
      v43 = [(CKComposition *)v16 compositionByAppendingText:v42];

      v16 = v43;
    }

    else
    {
      v16 = [[CKComposition alloc] initWithText:v42 subject:0];
    }
  }

  v44 = [v72 conversationIdentifier];
  v45 = [v73 existingChatWithGUID:v44];

  v46 = [v72 speakableGroupName];
  v47 = v46;
  if (!v45 && v46)
  {
    v48 = [v46 vocabularyIdentifier];
    v45 = [v73 existingChatWithGUID:v48];
  }

  if (!v45 && v47)
  {
    v49 = [v47 spokenPhrase];
    v45 = [v73 existingChatWithDisplayName:v49];
  }

  if (v45)
  {
LABEL_51:
    v51 = [v70 conversationForExistingChat:v45];
    v59 = v69;
    v60 = [v71 intentHandlingStatus];
    v61 = [v59 conversation];
    if ([v61 isEqual:v51])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v63 = v59;
        v64 = v63;
        if (v60 != 3)
        {
          [v63 setComposition:v16];
          [v64 showKeyboardForReply];
        }

        v65 = v68;
LABEL_60:

        goto LABEL_61;
      }
    }

    else
    {
    }

    if (v60 != 3)
    {
      [v51 setUnsentComposition:v16];
    }

    v65 = v68;
    [v68 showConversation:v51 animate:1];
    goto LABEL_60;
  }

  v50 = [v72 valueForKeyPath:@"recipients.personHandle.value"];
  v51 = [MEMORY[0x1E695DF70] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v45 = v50;
  v52 = [v45 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v77;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v77 != v54)
        {
          objc_enumerationMutation(v45);
        }

        v56 = *(*(&v76 + 1) + 8 * j);
        if (v56)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v51 addObject:v56];
          }
        }
      }

      v53 = [v45 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v53);
  }

  v57 = [v51 copy];
  v58 = [v73 existingChatWithAddresses:v57 allowAlternativeService:0 bestHandles:0];

  if (v58)
  {

    v45 = v58;
    goto LABEL_51;
  }

  v65 = v68;
  [v68 showNewMessageCompositionPanelWithRecipients:v45 composition:v16 chatID:0 animated:1];
LABEL_61:

  return 1;
}

@end