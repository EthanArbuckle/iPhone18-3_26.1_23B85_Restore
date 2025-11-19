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
  v6 = [v4 identifier];
  [v5 setIdentifier:v6];

  v7 = [v4 displayName];
  [v5 setDisplayName:v7];

  v8 = [a1 writeContentURLIfPossibleFromProtobuf:v4];
  [v5 setContentURL:v8];

  v9 = [v4 recipients];
  v10 = [v9 bs_compactMap:&__block_literal_global_11];
  [v5 setRecipients:v10];

  v11 = [v4 sender];

  if (v11)
  {
    v12 = MEMORY[0x277CF3528];
    v13 = [v4 sender];
    v14 = [v12 contactFromProtobuf:v13];
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
    v15 = [v4 imageName];
    [v5 setImageName:v15];
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

  v4 = [v3 contentURLLocalFileLocation];
  if (!v4)
  {
    v8 = blt_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BBCommunicationContext(protobuf) *)v3 writeContentURLIfPossibleFromProtobuf:v8];
    }

    goto LABEL_10;
  }

  v5 = [v3 contentURLData];
  v6 = [BLTReferenceCountedFile retain:v4 fileData:v5];

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

  v7 = v4;
LABEL_11:

LABEL_12:

  return v7;
}

- (id)blt_protobuf
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [a1 identifier];
  [v2 setIdentifier:v3];

  [v2 setBundleIdentifier:&stru_285432190];
  v4 = [a1 displayName];
  [v2 setDisplayName:v4];

  [v2 setMentionsCurrentUser:{objc_msgSend(a1, "mentionsCurrentUser")}];
  [v2 setNotifyRecipientAnyway:{objc_msgSend(a1, "notifyRecipientAnyway")}];
  [v2 setReplyToCurrentUser:{objc_msgSend(a1, "isReplyToCurrentUser")}];
  [v2 setRecipientCount:{objc_msgSend(a1, "recipientCount")}];
  [v2 setSystemImage:{objc_msgSend(a1, "systemImage")}];
  v5 = [a1 imageName];
  [v2 setImageName:v5];

  [v2 setCapabilities:{objc_msgSend(a1, "capabilities")}];
  v6 = [a1 sender];

  if (v6)
  {
    v7 = [a1 sender];
    v8 = [v7 blt_protobuf];
    [v2 setSender:v8];
  }

  v9 = [a1 contentURL];

  if (v9)
  {
    v10 = [a1 imageDataForContentURL];
    [v2 setContentURLData:v10];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [a1 recipients];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) blt_protobuf];
        if (v16)
        {
          [v2 addRecipients:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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