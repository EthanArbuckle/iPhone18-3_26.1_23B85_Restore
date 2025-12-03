@interface IMIntroduction
+ (id)introductionWithHandle:(id)handle suggestedName:(id)name;
- (IMIntroduction)initWithHandle:(id)handle suggestedName:(id)name;
- (id)convertToCoreRecentsEvent;
@end

@implementation IMIntroduction

+ (id)introductionWithHandle:(id)handle suggestedName:(id)name
{
  nameCopy = name;
  handleCopy = handle;
  v7 = [[IMIntroduction alloc] initWithHandle:handleCopy suggestedName:nameCopy];

  return v7;
}

- (IMIntroduction)initWithHandle:(id)handle suggestedName:(id)name
{
  handleCopy = handle;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = IMIntroduction;
  v9 = [(IMIntroduction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handle, handle);
    objc_storeStrong(&v10->_suggestedName, name);
  }

  return v10;
}

- (id)convertToCoreRecentsEvent
{
  v22 = *MEMORY[0x1E69E9840];
  handle = [(IMIntroduction *)self handle];
  v4 = MEMORY[0x1AC570A50]();

  handle2 = [(IMIntroduction *)self handle];
  IsEmail = IMStringIsEmail();

  if (v4)
  {
    v7 = sub_1A867EC8C();
    handle3 = [(IMIntroduction *)self handle];
    suggestedName = [(IMIntroduction *)self suggestedName];
    v10 = [v7 recentEventForPhoneNumber:handle3 displayName:suggestedName metadata:0];
  }

  else
  {
    if (!IsEmail)
    {
      goto LABEL_10;
    }

    v11 = sub_1A867EC8C();
    handle3 = [(IMIntroduction *)self handle];
    suggestedName = [(IMIntroduction *)self suggestedName];
    v10 = [v11 recentEventForEmailAddress:handle3 displayName:suggestedName metadata:0];
  }

  v12 = v10;

  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        handle4 = [(IMIntroduction *)self handle];
        suggestedName2 = [(IMIntroduction *)self suggestedName];
        v18 = 138412546;
        v19 = handle4;
        v20 = 2112;
        v21 = suggestedName2;
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