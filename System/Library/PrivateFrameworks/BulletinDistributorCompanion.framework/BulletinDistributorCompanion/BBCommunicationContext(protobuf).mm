@interface BBCommunicationContext(protobuf)
+ (id)communicationContextFromProtobuf:()protobuf;
+ (id)writeContentURLIfPossibleFromProtobuf:()protobuf;
- (id)blt_protobuf;
@end

@implementation BBCommunicationContext(protobuf)

+ (id)communicationContextFromProtobuf:()protobuf
{
  v4 = a3;
  v5 = objc_opt_new();
  identifier = [v4 identifier];
  [v5 setIdentifier:identifier];

  displayName = [v4 displayName];
  [v5 setDisplayName:displayName];

  v8 = [self writeContentURLIfPossibleFromProtobuf:v4];
  [v5 setContentURL:v8];

  recipients = [v4 recipients];
  v10 = [recipients bs_compactMap:&__block_literal_global_11];
  [v5 setRecipients:v10];

  sender = [v4 sender];

  if (sender)
  {
    v12 = MEMORY[0x277CF3528];
    sender2 = [v4 sender];
    v14 = [v12 contactFromProtobuf:sender2];
    [v5 setSender:v14];
  }

  if ([v4 hasMentionsCurrentUser])
  {
    [v5 setMentionsCurrentUser:{objc_msgSend(v4, "mentionsCurrentUser")}];
  }

  if ([v4 hasNotifyRecipientAnyway])
  {
    [v5 setNotifyRecipientAnyway:{objc_msgSend(v4, "notifyRecipientAnyway")}];
  }

  if ([v4 hasReplyToCurrentUser])
  {
    [v5 setReplyToCurrentUser:{objc_msgSend(v4, "replyToCurrentUser")}];
  }

  if ([v4 hasRecipientCount])
  {
    [v5 setRecipientCount:{objc_msgSend(v4, "recipientCount")}];
  }

  if ([v4 hasImageName])
  {
    imageName = [v4 imageName];
    [v5 setImageName:imageName];
  }

  if ([v4 hasSystemImage])
  {
    [v5 setSystemImage:{objc_msgSend(v4, "systemImage")}];
  }

  if ([v4 hasCapabilities])
  {
    [v5 setCapabilities:{objc_msgSend(v4, "capabilities")}];
  }

  return v5;
}

+ (id)writeContentURLIfPossibleFromProtobuf:()protobuf
{
  v3 = a3;
  if (![v3 hasContentURLData])
  {
    v7 = 0;
    goto LABEL_12;
  }

  contentURLLocalFileLocation = [v3 contentURLLocalFileLocation];
  if (!contentURLLocalFileLocation)
  {
    v8 = blt_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BBCommunicationContext(protobuf) *)v3 writeContentURLIfPossibleFromProtobuf:v8];
    }

    goto LABEL_10;
  }

  contentURLData = [v3 contentURLData];
  v6 = [BLTReferenceCountedFile retain:contentURLLocalFileLocation fileData:contentURLData];

  if (!v6)
  {
    v8 = blt_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[BBCommunicationContext(protobuf) writeContentURLIfPossibleFromProtobuf:];
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

  v7 = contentURLLocalFileLocation;
LABEL_11:

LABEL_12:

  return v7;
}

- (id)blt_protobuf
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  identifier = [self identifier];
  [v2 setIdentifier:identifier];

  [v2 setBundleIdentifier:&stru_285432190];
  displayName = [self displayName];
  [v2 setDisplayName:displayName];

  [v2 setMentionsCurrentUser:{objc_msgSend(self, "mentionsCurrentUser")}];
  [v2 setNotifyRecipientAnyway:{objc_msgSend(self, "notifyRecipientAnyway")}];
  [v2 setReplyToCurrentUser:{objc_msgSend(self, "isReplyToCurrentUser")}];
  [v2 setRecipientCount:{objc_msgSend(self, "recipientCount")}];
  [v2 setSystemImage:{objc_msgSend(self, "systemImage")}];
  imageName = [self imageName];
  [v2 setImageName:imageName];

  [v2 setCapabilities:{objc_msgSend(self, "capabilities")}];
  sender = [self sender];

  if (sender)
  {
    sender2 = [self sender];
    blt_protobuf = [sender2 blt_protobuf];
    [v2 setSender:blt_protobuf];
  }

  contentURL = [self contentURL];

  if (contentURL)
  {
    imageDataForContentURL = [self imageDataForContentURL];
    [v2 setContentURLData:imageDataForContentURL];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  recipients = [self recipients];
  v12 = [recipients countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(recipients);
        }

        blt_protobuf2 = [*(*(&v19 + 1) + 8 * i) blt_protobuf];
        if (blt_protobuf2)
        {
          [v2 addRecipients:blt_protobuf2];
        }
      }

      v13 = [recipients countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)writeContentURLIfPossibleFromProtobuf:()protobuf .cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0(&dword_241FB3000, v0, v1, "Error saving contentURLData to: %@ from protobuf %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)writeContentURLIfPossibleFromProtobuf:()protobuf .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Error generating contentURL fileName for protobuf %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end