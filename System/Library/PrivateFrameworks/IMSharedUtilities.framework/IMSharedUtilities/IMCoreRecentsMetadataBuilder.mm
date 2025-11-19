@interface IMCoreRecentsMetadataBuilder
+ (id)deprecatedReferenceURLsForMessageGUID:(id)a3;
+ (id)metadataDictionaryForMessageID:(id)a3 senderID:(id)a4 date:(id)a5;
@end

@implementation IMCoreRecentsMetadataBuilder

+ (id)deprecatedReferenceURLsForMessageGUID:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v3 stringWithFormat:@"sms://open?message-guid=%@", v4];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sms:/open?message-guid=%@", v4, v5];

  v9[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

  return v7;
}

+ (id)metadataDictionaryForMessageID:(id)a3 senderID:(id)a4 date:(id)a5
{
  v27[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_1EB30AF28 != -1)
  {
    sub_1A88C25C0();
  }

  if (qword_1EB30AF38 != -1)
  {
    sub_1A88C25D4();
  }

  if (qword_1EB30AF48 != -1)
  {
    sub_1A88C25E8();
  }

  if (qword_1EB30AF58 != -1)
  {
    sub_1A88C25FC();
  }

  if (qword_1EB30AF68 != -1)
  {
    sub_1A88C2610();
  }

  if (qword_1EB30AF78 != -1)
  {
    sub_1A88C2624();
  }

  if (qword_1EB30AF88 != -1)
  {
    sub_1A88C2638();
  }

  if (v9)
  {
    if (v10)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
    }
  }

  v9 = &stru_1F1BB91F0;
  if (!v10)
  {
LABEL_23:
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
      }
    }

    v10 = [MEMORY[0x1E695DF00] now];
  }

LABEL_28:
  v13 = [(__CFString *)v9 _appearsToBePhoneNumber];
  v14 = IMNormalizeFormattedString();
  v15 = &unk_1EB30AF40;
  if (!v13)
  {
    v15 = &unk_1EB30AF30;
  }

  v16 = *v15;
  v17 = [a1 referenceURLForMessageGUID:v8];
  if (v14)
  {
    if (v16)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
    }
  }

  v14 = &stru_1F1BB91F0;
  if (!v16)
  {
LABEL_38:
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
      }
    }

    v16 = &stru_1F1BB91F0;
  }

LABEL_43:
  v26[0] = qword_1EB30AF70;
  v26[1] = qword_1EB30AF80;
  v27[0] = v14;
  v27[1] = v16;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v24[0] = qword_1EB30AF50;
  v24[1] = qword_1EB30AF90;
  v25[0] = v10;
  v25[1] = v20;
  v24[2] = qword_1EB30AF60;
  v24[3] = @"messages:message-guid";
  v25[2] = v17;
  v25[3] = v8;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];

  return v21;
}

@end