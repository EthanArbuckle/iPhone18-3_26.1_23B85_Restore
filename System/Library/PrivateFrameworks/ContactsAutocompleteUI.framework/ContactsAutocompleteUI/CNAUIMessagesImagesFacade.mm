@interface CNAUIMessagesImagesFacade
- (id)imageDataForResult:(id)result;
- (id)imageForResult:(id)result;
@end

@implementation CNAUIMessagesImagesFacade

- (id)imageForResult:(id)result
{
  v3 = [(CNAUIMessagesImagesFacade *)self imageDataForResult:result];
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

- (id)imageDataForResult:(id)result
{
  v11[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (IMCoreLibraryCore() && getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc())
  {
    psSuggestion = [resultCopy psSuggestion];
    messagesGroupIdentifier = [psSuggestion messagesGroupIdentifier];

    if (messagesGroupIdentifier)
    {
      v11[0] = messagesGroupIdentifier;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      IMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc = getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc();
      if (!IMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc)
      {
        [CNAUIMessagesImagesFacade imageDataForResult:];
      }

      v8 = IMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc(v6);

      v9 = [v8 objectForKeyedSubscript:messagesGroupIdentifier];
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