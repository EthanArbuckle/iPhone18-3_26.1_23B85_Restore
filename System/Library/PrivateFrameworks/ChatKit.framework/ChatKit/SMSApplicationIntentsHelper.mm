@interface SMSApplicationIntentsHelper
+ (BOOL)continueWithSendMessageInteraction:(id)interaction chatRegistry:(id)registry navigationProvider:(id)provider conversationList:(id)list chatController:(id)controller;
+ (BOOL)isSendMessageInteraction:(id)interaction;
@end

@implementation SMSApplicationIntentsHelper

+ (BOOL)isSendMessageInteraction:(id)interaction
{
  if (interaction)
  {
    intent = [interaction intent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (BOOL)continueWithSendMessageInteraction:(id)interaction chatRegistry:(id)registry navigationProvider:(id)provider conversationList:(id)list chatController:(id)controller
{
  v87 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  registryCopy = registry;
  providerCopy = provider;
  listCopy = list;
  controllerCopy = controller;
  v71 = interactionCopy;
  [interactionCopy intent];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v72 = v84 = 0u;
  attachments = [v72 attachments];
  v13 = [attachments countByEnumeratingWithState:&v81 objects:v86 count:16];
  v14 = 0x1E696A000uLL;
  if (!v13)
  {
    v16 = 0;
    goto LABEL_27;
  }

  v15 = v13;
  v16 = 0;
  v74 = attachments;
  v75 = *v82;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v82 != v75)
      {
        objc_enumerationMutation(attachments);
      }

      v18 = *(*(&v81 + 1) + 8 * i);
      sharedLink = [v18 sharedLink];

      if (sharedLink)
      {
        v20 = objc_alloc(*(v14 + 2736));
        sharedLink2 = [v18 sharedLink];
        absoluteString = [sharedLink2 absoluteString];
        v23 = [v20 initWithString:absoluteString attributes:0];

        v24 = [[CKComposition alloc] initWithText:v23 subject:0];
        defaultHFSFileManager = v24;
        if (v16)
        {
          v26 = [(CKComposition *)v16 compositionByAppendingComposition:v24];

          v16 = v26;
        }

        else
        {
          defaultHFSFileManager = v24;
          v16 = defaultHFSFileManager;
        }
      }

      else
      {
        file = [v18 file];

        if (!file)
        {
          continue;
        }

        file2 = [v18 file];
        typeIdentifier = [file2 typeIdentifier];
        if ([typeIdentifier isEqual:@"com.apple.live-photo"])
        {
          file3 = [v18 file];
          fileURL = [file3 fileURL];
          pathExtension = [fileURL pathExtension];
          v33 = [pathExtension isEqualToIgnoringCase:@"mov"];

          if (v33)
          {
            attachments = v74;
            v14 = 0x1E696A000;
            continue;
          }
        }

        else
        {
        }

        defaultHFSFileManager = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
        file4 = [v18 file];
        fileURL2 = [file4 fileURL];

        lastPathComponent = [fileURL2 lastPathComponent];
        v37 = [(CKComposition *)defaultHFSFileManager im_randomTemporaryFileURLWithFileName:lastPathComponent];

        v80 = 0;
        LODWORD(lastPathComponent) = [(CKComposition *)defaultHFSFileManager im_copySecurityScopedResourceAtURL:fileURL2 toDestination:v37 error:&v80];
        v23 = v80;
        if (lastPathComponent)
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

          attachments = v74;
        }

        else
        {
          attachments = v74;
          v14 = 0x1E696A000;
        }
      }
    }

    v15 = [attachments countByEnumeratingWithState:&v81 objects:v86 count:16];
  }

  while (v15);
LABEL_27:

  content = [v72 content];
  if ([content length])
  {
    v42 = [objc_alloc(*(v14 + 2736)) initWithString:content attributes:0];
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

  conversationIdentifier = [v72 conversationIdentifier];
  v45 = [registryCopy existingChatWithGUID:conversationIdentifier];

  speakableGroupName = [v72 speakableGroupName];
  v47 = speakableGroupName;
  if (!v45 && speakableGroupName)
  {
    vocabularyIdentifier = [speakableGroupName vocabularyIdentifier];
    v45 = [registryCopy existingChatWithGUID:vocabularyIdentifier];
  }

  if (!v45 && v47)
  {
    spokenPhrase = [v47 spokenPhrase];
    v45 = [registryCopy existingChatWithDisplayName:spokenPhrase];
  }

  if (v45)
  {
LABEL_51:
    array = [listCopy conversationForExistingChat:v45];
    v59 = controllerCopy;
    intentHandlingStatus = [v71 intentHandlingStatus];
    conversation = [v59 conversation];
    if ([conversation isEqual:array])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v63 = v59;
        v64 = v63;
        if (intentHandlingStatus != 3)
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

    if (intentHandlingStatus != 3)
    {
      [array setUnsentComposition:v16];
    }

    v65 = v68;
    [v68 showConversation:array animate:1];
    goto LABEL_60;
  }

  v50 = [v72 valueForKeyPath:@"recipients.personHandle.value"];
  array = [MEMORY[0x1E695DF70] array];
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
            [array addObject:v56];
          }
        }
      }

      v53 = [v45 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v53);
  }

  v57 = [array copy];
  v58 = [registryCopy existingChatWithAddresses:v57 allowAlternativeService:0 bestHandles:0];

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