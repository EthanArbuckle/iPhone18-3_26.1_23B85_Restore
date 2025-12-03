@interface EMFEmojiPreferencesClient
+ (id)serviceInterface;
- (EMFEmojiPreferencesClient)initWithMachName:(id)name;
- (id)_initWithoutConnection;
- (id)copySortedEmojis:(id)emojis keyword:(id)keyword localeIdentifier:(id)identifier;
- (void)_disconnect;
- (void)createConnectionIfNecessary;
- (void)dealloc;
- (void)didDisplaySkinToneHelp;
- (void)didUseEmoji:(id)emoji usageMode:(id)mode typingName:(id)name replacementContext:(id)context;
- (void)didUseEmoji:(id)emoji usageSource:(unint64_t)source replacementContext:(id)context searchQuery:(id)query resultPosition:(id)position numberSearchQueriesRun:(id)run wasPositiveEngagement:(BOOL)engagement;
- (void)didUseEmojiInEmojiKeyboardPalette:(id)palette wasFromRecentsSection:(BOOL)section;
- (void)didViewEmojiIndex:(int64_t)index forCategory:(id)category;
@end

@implementation EMFEmojiPreferencesClient

- (void)createConnectionIfNecessary
{
  if (!self->_isValid)
  {
    [(NSXPCConnection *)self->_connection invalidate];
    connection = self->_connection;
    self->_connection = 0;

    self->_isValid = 1;
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_machName options:4096];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = +[EMFEmojiPreferencesClient serviceInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    v7 = self->_connection;
    if (_emojiClientDispatchQueue(void)::onceToken != -1)
    {
      [EMFEmojiPreferencesClient createConnectionIfNecessary];
    }

    [(NSXPCConnection *)v7 _setQueue:_emojiClientDispatchQueue(void)::__xpc_queue];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__EMFEmojiPreferencesClient_createConnectionIfNecessary__block_invoke;
    v10[3] = &unk_1E7A5FB48;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__EMFEmojiPreferencesClient_createConnectionIfNecessary__block_invoke_2;
    v8[3] = &unk_1E7A5FB48;
    objc_copyWeak(&v9, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v8];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

+ (id)serviceInterface
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F24E4740];
  v3 = MEMORY[0x1E695DFD8];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v3 setWithArray:v4];

  [v2 setClasses:v5 forSelector:sel_sortedEmojis_keyword_localeIdentifier_handler_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v5 forSelector:sel_sortedEmojis_keyword_localeIdentifier_handler_ argumentIndex:0 ofReply:1];

  return v2;
}

- (void)dealloc
{
  machName = self->_machName;
  self->_machName = 0;

  if (self->_isValid)
  {
    [(NSXPCConnection *)self->_connection invalidate];
    connection = self->_connection;
    self->_connection = 0;
  }

  v5.receiver = self;
  v5.super_class = EMFEmojiPreferencesClient;
  [(EMFEmojiPreferences *)&v5 dealloc];
}

void __56__EMFEmojiPreferencesClient_createConnectionIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsValid:0];
}

- (EMFEmojiPreferencesClient)initWithMachName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = EMFEmojiPreferencesClient;
  v5 = [(EMFEmojiPreferences *)&v8 init];
  v6 = v5;
  if (v5)
  {
    if (!nameCopy)
    {
      nameCopy = @"com.apple.TextInput.emoji";
    }

    objc_storeStrong(&v5->_machName, nameCopy);
    v6->_isValid = 0;
    [(EMFEmojiPreferencesClient *)v6 createConnectionIfNecessary];
  }

  return v6;
}

- (id)_initWithoutConnection
{
  v6.receiver = self;
  v6.super_class = EMFEmojiPreferencesClient;
  v2 = [(EMFEmojiPreferences *)&v6 init];
  v3 = v2;
  if (v2)
  {
    machName = v2->_machName;
    v2->_machName = @"com.apple.TextInput.emoji";

    v3->_isValid = 0;
  }

  return v3;
}

- (void)_disconnect
{
  obj = self;
  objc_sync_enter(obj);
  [(NSXPCConnection *)obj->_connection invalidate];
  connection = obj->_connection;
  obj->_connection = 0;

  obj->_isValid = 0;
  objc_sync_exit(obj);
}

void __56__EMFEmojiPreferencesClient_createConnectionIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsValid:0];
}

- (void)didUseEmoji:(id)emoji usageMode:(id)mode typingName:(id)name replacementContext:(id)context
{
  emojiCopy = emoji;
  modeCopy = mode;
  nameCopy = name;
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = selfCopy;
  [v15 createConnectionIfNecessary];
  remoteObjectProxy = [v15[11] remoteObjectProxy];
  [remoteObjectProxy didUseEmoji:emojiCopy usageMode:modeCopy typingName:nameCopy replacementContext:contextCopy];

  v17.receiver = v15;
  v17.super_class = EMFEmojiPreferencesClient;
  [(EMFEmojiPreferences *)&v17 didUseEmoji:emojiCopy usageMode:modeCopy typingName:nameCopy];

  objc_sync_exit(v15);
}

- (void)didViewEmojiIndex:(int64_t)index forCategory:(id)category
{
  categoryCopy = category;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = selfCopy;
  [v8 createConnectionIfNecessary];
  remoteObjectProxy = [v8[11] remoteObjectProxy];
  [remoteObjectProxy didViewEmojiIndex:index forCategory:categoryCopy];

  v10.receiver = v8;
  v10.super_class = EMFEmojiPreferencesClient;
  [(EMFEmojiPreferences *)&v10 didViewEmojiIndex:index forCategory:categoryCopy];

  objc_sync_exit(v8);
}

- (void)didDisplaySkinToneHelp
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy;
  [v3 createConnectionIfNecessary];
  remoteObjectProxy = [v3[11] remoteObjectProxy];
  [remoteObjectProxy didDisplaySkinToneHelp];

  v5.receiver = v3;
  v5.super_class = EMFEmojiPreferencesClient;
  [(EMFEmojiPreferences *)&v5 didDisplaySkinToneHelp];

  objc_sync_exit(v3);
}

- (void)didUseEmoji:(id)emoji usageSource:(unint64_t)source replacementContext:(id)context searchQuery:(id)query resultPosition:(id)position numberSearchQueriesRun:(id)run wasPositiveEngagement:(BOOL)engagement
{
  emojiCopy = emoji;
  contextCopy = context;
  queryCopy = query;
  positionCopy = position;
  runCopy = run;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = selfCopy;
  [v21 createConnectionIfNecessary];
  remoteObjectProxy = [v21[11] remoteObjectProxy];
  LOBYTE(v23) = engagement;
  [remoteObjectProxy didUseEmoji:emojiCopy usageSource:source replacementContext:contextCopy searchQuery:queryCopy resultPosition:positionCopy numberSearchQueriesRun:runCopy wasPositiveEngagement:v23];

  objc_sync_exit(v21);
  v24.receiver = v21;
  v24.super_class = EMFEmojiPreferencesClient;
  [(EMFEmojiPreferences *)&v24 didUseEmoji:emojiCopy usageMode:0];
}

- (void)didUseEmojiInEmojiKeyboardPalette:(id)palette wasFromRecentsSection:(BOOL)section
{
  if (section)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  LOBYTE(v5) = 1;
  [(EMFEmojiPreferencesClient *)self didUseEmoji:palette usageSource:v4 replacementContext:0 searchQuery:0 resultPosition:0 numberSearchQueriesRun:0 wasPositiveEngagement:v5];
}

- (id)copySortedEmojis:(id)emojis keyword:(id)keyword localeIdentifier:(id)identifier
{
  emojisCopy = emojis;
  keywordCopy = keyword;
  identifierCopy = identifier;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = dispatch_semaphore_create(0);
  v13 = selfCopy;
  [v13 createConnectionIfNecessary];
  remoteObjectProxy = [v13[11] remoteObjectProxy];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__EMFEmojiPreferencesClient_copySortedEmojis_keyword_localeIdentifier___block_invoke;
  v20[3] = &unk_1E7A5FB70;
  v22 = &v23;
  v15 = v12;
  v21 = v15;
  [remoteObjectProxy sortedEmojis:emojisCopy keyword:keywordCopy localeIdentifier:identifierCopy handler:v20];

  v16 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v15, v16);

  objc_sync_exit(v13);
  v17 = v24[5];
  if (!v17)
  {
    v17 = emojisCopy;
  }

  v18 = v17;
  _Block_object_dispose(&v23, 8);

  return v18;
}

void __71__EMFEmojiPreferencesClient_copySortedEmojis_keyword_localeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end