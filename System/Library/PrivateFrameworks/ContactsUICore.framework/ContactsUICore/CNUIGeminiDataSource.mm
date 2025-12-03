@interface CNUIGeminiDataSource
- (CNUIGeminiDataSource)initWithGeminiManager:(id)manager;
- (CNUIGeminiDataSourceDelegate)delegate;
- (NSString)channelIdentifier;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)channelsDidChangeForGeminiManager:(id)manager;
- (void)resetDataSource;
- (void)setContact:(id)contact;
@end

@implementation CNUIGeminiDataSource

- (CNUIGeminiDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNUIGeminiDataSource)initWithGeminiManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = CNUIGeminiDataSource;
  v6 = [(CNUIGeminiDataSource *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geminiManager, manager);
    v7->_substituteDanglingChannel = 0;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      v7->_substituteDanglingChannel = 1;
    }

    [managerCopy addDelegate:v7 queue:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    v11 = v7;
  }

  return v7;
}

- (void)resetDataSource
{
  contact = self->_contact;
  self->_contact = 0;

  geminiResult = self->_geminiResult;
  self->_geminiResult = 0;
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  identifier = [(CNContact *)self->_contact identifier];
  identifier2 = [contactCopy identifier];
  v7 = [identifier isEqualToString:identifier2];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_contact, contact);
    geminiManager = [(CNUIGeminiDataSource *)self geminiManager];
    v9 = [geminiManager remoteGeminiResultForContact:contactCopy substituteDefaultForDangling:-[CNUIGeminiDataSource substituteDanglingChannel](self error:{"substituteDanglingChannel"), 0}];
    [(CNUIGeminiDataSource *)self setGeminiResult:v9];

    delegate = [(CNUIGeminiDataSource *)self delegate];
    [delegate geminiDataSourceDidUpdate:self];
  }
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v4 = *MEMORY[0x1E6996568];
  contact = [(CNUIGeminiDataSource *)self contact];
  preferredChannel = [contact preferredChannel];
  LODWORD(v4) = (*(v4 + 16))(v4, preferredChannel);

  if (v4)
  {
    geminiManager = [(CNUIGeminiDataSource *)self geminiManager];
    [(CNUIGeminiDataSource *)self channelsDidChangeForGeminiManager:geminiManager];
  }
}

- (NSString)channelIdentifier
{
  selectedChannelIdentifier = [(CNUIGeminiDataSource *)self selectedChannelIdentifier];
  if (selectedChannelIdentifier && (v4 = selectedChannelIdentifier, -[CNUIGeminiDataSource selectedChannelIdentifier](self, "selectedChannelIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    selectedChannelIdentifier2 = [(CNUIGeminiDataSource *)self selectedChannelIdentifier];
  }

  else
  {
    geminiResult = [(CNUIGeminiDataSource *)self geminiResult];
    channel = [geminiResult channel];
    selectedChannelIdentifier2 = [channel channelIdentifier];
  }

  return selectedChannelIdentifier2;
}

- (void)channelsDidChangeForGeminiManager:(id)manager
{
  geminiManager = [(CNUIGeminiDataSource *)self geminiManager];
  contact = [(CNUIGeminiDataSource *)self contact];
  v6 = [geminiManager remoteGeminiResultForContact:contact substituteDefaultForDangling:-[CNUIGeminiDataSource substituteDanglingChannel](self error:{"substituteDanglingChannel"), 0}];
  [(CNUIGeminiDataSource *)self setGeminiResult:v6];

  delegate = [(CNUIGeminiDataSource *)self delegate];
  [delegate geminiDataSourceDidUpdate:self];
}

@end