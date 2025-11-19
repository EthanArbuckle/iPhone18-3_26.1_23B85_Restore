@interface MRMediaSuggestionElectedDeviceObserver
- (MRMediaSuggestionElectedDeviceObserver)initWithDelegate:(id)a3;
- (MRMediaSuggestionElectedDeviceObserverDelegate)delegate;
- (id)debugDescription;
- (void)dealloc;
- (void)deviceAvailableForMediaSuggestionsNotification:(id)a3;
- (void)setElectedDeviceIdentifier:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation MRMediaSuggestionElectedDeviceObserver

- (MRMediaSuggestionElectedDeviceObserver)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRMediaSuggestionElectedDeviceObserver;
  v5 = [(MRMediaSuggestionElectedDeviceObserver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_deviceAvailableForMediaSuggestionsNotification_ name:@"_MRMediaRemoteDeviceAvailableForMediaSuggestionsNotification" object:0];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_MRMediaRemoteDeviceAvailableForMediaSuggestionsNotification" object:0];

  [(MRMediaSuggestionElectedDeviceObserver *)self setObserving:0];
}

- (void)setElectedDeviceIdentifier:(id)a3
{
  v4 = a3;
  electedDeviceIdentifier = self->_electedDeviceIdentifier;
  if (electedDeviceIdentifier != v4)
  {
    v12 = v4;
    v6 = [(NSString *)electedDeviceIdentifier isEqual:v4];
    v4 = v12;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v12 copy];
      v8 = self->_electedDeviceIdentifier;
      self->_electedDeviceIdentifier = v7;

      v9 = [(MRMediaSuggestionElectedDeviceObserver *)self delegate];
      v10 = objc_opt_respondsToSelector();

      v4 = v12;
      if (v10)
      {
        v11 = [(MRMediaSuggestionElectedDeviceObserver *)self delegate];
        [v11 mediaSuggestionElectedDeviceObserverDeviceDidChange:self];

        v4 = v12;
      }
    }
  }
}

- (void)deviceAvailableForMediaSuggestionsNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"kMRAVEndpointOutputDeviceIdentifierUserInfoKey"];

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
  v4 = [(MRMediaSuggestionElectedDeviceObserver *)self electedDeviceIdentifier];
  v5 = [v3 stringWithFormat:@"    electedDeviceIdentifier = %@\n    observing = %d\n", v4, -[MRMediaSuggestionElectedDeviceObserver isObserving](self, "isObserving")];
  v6 = MRCreateFormattedDebugDescriptionFromClass(self, v5);

  return v6;
}

- (MRMediaSuggestionElectedDeviceObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end