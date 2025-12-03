@interface IMSWHighlightCenterController
+ (id)sharedControllerWithAppIdentifier:(id)identifier;
- (IMSWHighlightCenterController)initWithAppIdentifier:(id)identifier;
- (id)collaborationHighlightForURL:(id)l error:(id *)error;
- (id)fetchAttributionsForHighlight:(id)highlight;
- (void)fetchAttributionsForHighlight:(id)highlight completionHandler:(id)handler;
@end

@implementation IMSWHighlightCenterController

+ (id)sharedControllerWithAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8268E7C;
  block[3] = &unk_1E780FCB0;
  v10 = identifierCopy;
  v4 = qword_1EB2EA138;
  v5 = identifierCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EB2EA138, block);
  }

  v6 = qword_1EB2EA130;
  v7 = qword_1EB2EA130;

  return v6;
}

- (IMSWHighlightCenterController)initWithAppIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = IMSWHighlightCenterController;
  v5 = [(IMSWHighlightCenterController *)&v18 init];
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v20 = "[IMSWHighlightCenterController initWithAppIdentifier:]";
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
      }
    }

    if (objc_msgSend_supportsSharedWithYou(MEMORY[0x1E69A8020], v6, v7))
    {
      v9 = objc_alloc(MEMORY[0x1AC56C550](@"SWHighlightCenter", @"SharedWithYou"));
      v11 = objc_msgSend_initWithAppIdentifier_(v9, v10, identifierCopy);
      highlightCenter = v5->_highlightCenter;
      v5->_highlightCenter = v11;

      objc_msgSend_setDelegate_(v5->_highlightCenter, v13, v5);
      v14 = objc_alloc_init(MEMORY[0x1E69A82D8]);
      utilities = v5->_utilities;
      v5->_utilities = v14;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)collaborationHighlightForURL:(id)l error:(id *)error
{
  lCopy = l;
  v9 = objc_msgSend_highlightCenter(self, v7, v8);
  v11 = objc_msgSend_collaborationHighlightForURL_error_(v9, v10, lCopy, error);

  return v11;
}

- (void)fetchAttributionsForHighlight:(id)highlight completionHandler:(id)handler
{
  handlerCopy = handler;
  highlightCopy = highlight;
  v10 = objc_msgSend_utilities(self, v8, v9);
  v13 = objc_msgSend_highlightCenter(self, v11, v12);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A82691A4;
  v16[3] = &unk_1E780FCD8;
  v17 = handlerCopy;
  v14 = handlerCopy;
  objc_msgSend_fetchAttributionsForHighlight_highlight_completionBlock_(v10, v15, v13, highlightCopy, v16);
}

- (id)fetchAttributionsForHighlight:(id)highlight
{
  highlightCopy = highlight;
  v7 = objc_msgSend_highlightCenter(self, v5, v6);
  v9 = objc_msgSend_fetchAttributionsForHighlight_(v7, v8, highlightCopy);

  return v9;
}

@end