@interface CNUIGeminiDataSource
- (CNUIGeminiDataSource)initWithGeminiManager:(id)a3;
- (CNUIGeminiDataSourceDelegate)delegate;
- (NSString)channelIdentifier;
- (void)applicationWillEnterForeground:(id)a3;
- (void)channelsDidChangeForGeminiManager:(id)a3;
- (void)resetDataSource;
- (void)setContact:(id)a3;
@end

@implementation CNUIGeminiDataSource

- (CNUIGeminiDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNUIGeminiDataSource)initWithGeminiManager:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CNUIGeminiDataSource;
  v6 = [(CNUIGeminiDataSource *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geminiManager, a3);
    v7->_substituteDanglingChannel = 0;
    v8 = [MEMORY[0x1E69DC938] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9)
    {
      v7->_substituteDanglingChannel = 1;
    }

    [v5 addDelegate:v7 queue:0];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

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

- (void)setContact:(id)a3
{
  v11 = a3;
  v5 = [(CNContact *)self->_contact identifier];
  v6 = [v11 identifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_contact, a3);
    v8 = [(CNUIGeminiDataSource *)self geminiManager];
    v9 = [v8 remoteGeminiResultForContact:v11 substituteDefaultForDangling:-[CNUIGeminiDataSource substituteDanglingChannel](self error:{"substituteDanglingChannel"), 0}];
    [(CNUIGeminiDataSource *)self setGeminiResult:v9];

    v10 = [(CNUIGeminiDataSource *)self delegate];
    [v10 geminiDataSourceDidUpdate:self];
  }
}

- (void)applicationWillEnterForeground:(id)a3
{
  v4 = *MEMORY[0x1E6996568];
  v5 = [(CNUIGeminiDataSource *)self contact];
  v6 = [v5 preferredChannel];
  LODWORD(v4) = (*(v4 + 16))(v4, v6);

  if (v4)
  {
    v7 = [(CNUIGeminiDataSource *)self geminiManager];
    [(CNUIGeminiDataSource *)self channelsDidChangeForGeminiManager:v7];
  }
}

- (NSString)channelIdentifier
{
  v3 = [(CNUIGeminiDataSource *)self selectedChannelIdentifier];
  if (v3 && (v4 = v3, -[CNUIGeminiDataSource selectedChannelIdentifier](self, "selectedChannelIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    v7 = [(CNUIGeminiDataSource *)self selectedChannelIdentifier];
  }

  else
  {
    v8 = [(CNUIGeminiDataSource *)self geminiResult];
    v9 = [v8 channel];
    v7 = [v9 channelIdentifier];
  }

  return v7;
}

- (void)channelsDidChangeForGeminiManager:(id)a3
{
  v4 = [(CNUIGeminiDataSource *)self geminiManager];
  v5 = [(CNUIGeminiDataSource *)self contact];
  v6 = [v4 remoteGeminiResultForContact:v5 substituteDefaultForDangling:-[CNUIGeminiDataSource substituteDanglingChannel](self error:{"substituteDanglingChannel"), 0}];
  [(CNUIGeminiDataSource *)self setGeminiResult:v6];

  v7 = [(CNUIGeminiDataSource *)self delegate];
  [v7 geminiDataSourceDidUpdate:self];
}

@end