@interface CNAUIMessagesImagesFacade
- (id)imageDataForResult:(id)a3;
- (id)imageForResult:(id)a3;
@end

@implementation CNAUIMessagesImagesFacade

- (id)imageForResult:(id)a3
{
  v3 = [(CNAUIMessagesImagesFacade *)self imageDataForResult:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] imageWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)imageDataForResult:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMCoreLibraryCore() && getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc())
  {
    v4 = [v3 psSuggestion];
    v5 = [v4 messagesGroupIdentifier];

    if (v5)
    {
      v11[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      IMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc = getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc();
      if (!IMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc)
      {
        [CNAUIMessagesImagesFacade imageDataForResult:];
      }

      v8 = IMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc(v6);

      v9 = [v8 objectForKeyedSubscript:v5];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)imageDataForResult:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return +[(CNComposeRecipientNamer *)v0];
}

@end