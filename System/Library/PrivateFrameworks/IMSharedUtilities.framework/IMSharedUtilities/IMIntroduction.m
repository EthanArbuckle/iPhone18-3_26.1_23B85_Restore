@interface IMIntroduction
+ (id)introductionWithHandle:(id)a3 suggestedName:(id)a4;
- (IMIntroduction)initWithHandle:(id)a3 suggestedName:(id)a4;
- (id)convertToCoreRecentsEvent;
@end

@implementation IMIntroduction

+ (id)introductionWithHandle:(id)a3 suggestedName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[IMIntroduction alloc] initWithHandle:v6 suggestedName:v5];

  return v7;
}

- (IMIntroduction)initWithHandle:(id)a3 suggestedName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IMIntroduction;
  v9 = [(IMIntroduction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handle, a3);
    objc_storeStrong(&v10->_suggestedName, a4);
  }

  return v10;
}

- (id)convertToCoreRecentsEvent
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(IMIntroduction *)self handle];
  v4 = MEMORY[0x1AC570A50]();

  v5 = [(IMIntroduction *)self handle];
  IsEmail = IMStringIsEmail();

  if (v4)
  {
    v7 = sub_1A867EC8C();
    v8 = [(IMIntroduction *)self handle];
    v9 = [(IMIntroduction *)self suggestedName];
    v10 = [v7 recentEventForPhoneNumber:v8 displayName:v9 metadata:0];
  }

  else
  {
    if (!IsEmail)
    {
      goto LABEL_10;
    }

    v11 = sub_1A867EC8C();
    v8 = [(IMIntroduction *)self handle];
    v9 = [(IMIntroduction *)self suggestedName];
    v10 = [v11 recentEventForEmailAddress:v8 displayName:v9 metadata:0];
  }

  v12 = v10;

  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(IMIntroduction *)self handle];
        v15 = [(IMIntroduction *)self suggestedName];
        v18 = 138412546;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Created CRRecentEvent for handle: %@ suggestedName: %@", &v18, 0x16u);
      }
    }

    goto LABEL_13;
  }

LABEL_10:
  v16 = IMLogHandleForCategory("IMIntroduction");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C264C(self, v16);
  }

  v12 = 0;
LABEL_13:

  return v12;
}

@end