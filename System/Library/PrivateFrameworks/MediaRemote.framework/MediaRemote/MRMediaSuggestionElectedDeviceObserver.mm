@interface MRMediaSuggestionElectedDeviceObserver
- (MRMediaSuggestionElectedDeviceObserver)initWithDelegate:(id)delegate;
- (MRMediaSuggestionElectedDeviceObserverDelegate)delegate;
- (id)debugDescription;
- (void)dealloc;
- (void)deviceAvailableForMediaSuggestionsNotification:(id)notification;
- (void)setElectedDeviceIdentifier:(id)identifier;
- (void)start;
- (void)stop;
@end

@implementation MRMediaSuggestionElectedDeviceObserver

- (MRMediaSuggestionElectedDeviceObserver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = MRMediaSuggestionElectedDeviceObserver;
  v5 = [(MRMediaSuggestionElectedDeviceObserver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[MRMediaRemoteServiceClient sharedServiceClient];
    [v7 addMediaSuggestionElectedDeviceObserver:v6];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[MRMediaRemoteServiceClient sharedServiceClient];
  [v3 removeMediaSuggestionElectedDeviceObserver:self];

  v4.receiver = self;
  v4.super_class = MRMediaSuggestionElectedDeviceObserver;
  [(MRMediaSuggestionElectedDeviceObserver *)&v4 dealloc];
}

- (void)start
{
  [(MRMediaSuggestionElectedDeviceObserver *)self setObserving:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_deviceAvailableForMediaSuggestionsNotification_ name:@"_MRMediaRemoteDeviceAvailableForMediaSuggestionsNotification" object:0];

  MRMediaRemoteSetWantsRouteChangeNotifications(1);
  v4 = MRGetSharedService();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MRMediaSuggestionElectedDeviceObserver_start__block_invoke;
  v5[3] = &unk_1E769E578;
  v5[4] = self;
  [v4 mediaSuggestionDeviceUIDWithQueue:MEMORY[0x1E69E96A0] completion:v5];
}

void __47__MRMediaSuggestionElectedDeviceObserver_start__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v7 = v5;
    v6 = [*(a1 + 32) electedDeviceIdentifier];

    v5 = v7;
    if (!v6)
    {
      [*(a1 + 32) setElectedDeviceIdentifier:v7];
      v5 = v7;
    }
  }
}

- (void)stop
{
  MRMediaRemoteSetWantsRouteChangeNotifications(0);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_MRMediaRemoteDeviceAvailableForMediaSuggestionsNotification" object:0];

  [(MRMediaSuggestionElectedDeviceObserver *)self setObserving:0];
}

- (void)setElectedDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  electedDeviceIdentifier = self->_electedDeviceIdentifier;
  if (electedDeviceIdentifier != identifierCopy)
  {
    v12 = identifierCopy;
    v6 = [(NSString *)electedDeviceIdentifier isEqual:identifierCopy];
    identifierCopy = v12;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v12 copy];
      v8 = self->_electedDeviceIdentifier;
      self->_electedDeviceIdentifier = v7;

      delegate = [(MRMediaSuggestionElectedDeviceObserver *)self delegate];
      v10 = objc_opt_respondsToSelector();

      identifierCopy = v12;
      if (v10)
      {
        delegate2 = [(MRMediaSuggestionElectedDeviceObserver *)self delegate];
        [delegate2 mediaSuggestionElectedDeviceObserverDeviceDidChange:self];

        identifierCopy = v12;
      }
    }
  }
}

- (void)deviceAvailableForMediaSuggestionsNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"kMRAVEndpointOutputDeviceIdentifierUserInfoKey"];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__MRMediaSuggestionElectedDeviceObserver_deviceAvailableForMediaSuggestionsNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  electedDeviceIdentifier = [(MRMediaSuggestionElectedDeviceObserver *)self electedDeviceIdentifier];
  v5 = [v3 stringWithFormat:@"    electedDeviceIdentifier = %@\n    observing = %d\n", electedDeviceIdentifier, -[MRMediaSuggestionElectedDeviceObserver isObserving](self, "isObserving")];
  v6 = MRCreateFormattedDebugDescriptionFromClass(self, v5);

  return v6;
}

- (MRMediaSuggestionElectedDeviceObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end