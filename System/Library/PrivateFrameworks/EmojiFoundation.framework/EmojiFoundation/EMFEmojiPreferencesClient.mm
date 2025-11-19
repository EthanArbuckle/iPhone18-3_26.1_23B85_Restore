@interface EMFEmojiPreferencesClient
+ (id)serviceInterface;
- (EMFEmojiPreferencesClient)initWithMachName:(id)a3;
- (id)_initWithoutConnection;
- (id)copySortedEmojis:(id)a3 keyword:(id)a4 localeIdentifier:(id)a5;
- (void)_disconnect;
- (void)createConnectionIfNecessary;
- (void)dealloc;
- (void)didDisplaySkinToneHelp;
- (void)didUseEmoji:(id)a3 usageMode:(id)a4 typingName:(id)a5 replacementContext:(id)a6;
- (void)didUseEmoji:(id)a3 usageSource:(unint64_t)a4 replacementContext:(id)a5 searchQuery:(id)a6 resultPosition:(id)a7 numberSearchQueriesRun:(id)a8 wasPositiveEngagement:(BOOL)a9;
- (void)didUseEmojiInEmojiKeyboardPalette:(id)a3 wasFromRecentsSection:(BOOL)a4;
- (void)didViewEmojiIndex:(int64_t)a3 forCategory:(id)a4;
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

- (EMFEmojiPreferencesClient)initWithMachName:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EMFEmojiPreferencesClient;
  v5 = [(EMFEmojiPreferences *)&v8 init];
  v6 = v5;
  if (v5)
  {
    if (!v4)
    {
      v4 = @"com.apple.TextInput.emoji";
    }

    objc_storeStrong(&v5->_machName, v4);
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

- (void)didUseEmoji:(id)a3 usageMode:(id)a4 typingName:(id)a5 replacementContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  objc_sync_enter(v14);
  v15 = v14;
  [v15 createConnectionIfNecessary];
  v16 = [v15[11] remoteObjectProxy];
  [v16 didUseEmoji:v10 usageMode:v11 typingName:v12 replacementContext:v13];

  v17.receiver = v15;
  v17.super_class = EMFEmojiPreferencesClient;
  [(EMFEmojiPreferences *)&v17 didUseEmoji:v10 usageMode:v11 typingName:v12];

  objc_sync_exit(v15);
}

- (void)didViewEmojiIndex:(int64_t)a3 forCategory:(id)a4
{
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = v7;
  [v8 createConnectionIfNecessary];
  v9 = [v8[11] remoteObjectProxy];
  [v9 didViewEmojiIndex:a3 forCategory:v6];

  v10.receiver = v8;
  v10.super_class = EMFEmojiPreferencesClient;
  [(EMFEmojiPreferences *)&v10 didViewEmojiIndex:a3 forCategory:v6];

  objc_sync_exit(v8);
}

- (void)didDisplaySkinToneHelp
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2;
  [v3 createConnectionIfNecessary];
  v4 = [v3[11] remoteObjectProxy];
  [v4 didDisplaySkinToneHelp];

  v5.receiver = v3;
  v5.super_class = EMFEmojiPreferencesClient;
  [(EMFEmojiPreferences *)&v5 didDisplaySkinToneHelp];

  objc_sync_exit(v3);
}

- (void)didUseEmoji:(id)a3 usageSource:(unint64_t)a4 replacementContext:(id)a5 searchQuery:(id)a6 resultPosition:(id)a7 numberSearchQueriesRun:(id)a8 wasPositiveEngagement:(BOOL)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = self;
  objc_sync_enter(v20);
  v21 = v20;
  [v21 createConnectionIfNecessary];
  v22 = [v21[11] remoteObjectProxy];
  LOBYTE(v23) = a9;
  [v22 didUseEmoji:v15 usageSource:a4 replacementContext:v16 searchQuery:v17 resultPosition:v18 numberSearchQueriesRun:v19 wasPositiveEngagement:v23];

  objc_sync_exit(v21);
  v24.receiver = v21;
  v24.super_class = EMFEmojiPreferencesClient;
  [(EMFEmojiPreferences *)&v24 didUseEmoji:v15 usageMode:0];
}

- (void)didUseEmojiInEmojiKeyboardPalette:(id)a3 wasFromRecentsSection:(BOOL)a4
{
  if (a4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  LOBYTE(v5) = 1;
  [(EMFEmojiPreferencesClient *)self didUseEmoji:a3 usageSource:v4 replacementContext:0 searchQuery:0 resultPosition:0 numberSearchQueriesRun:0 wasPositiveEngagement:v5];
}

- (id)copySortedEmojis:(id)a3 keyword:(id)a4 localeIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  v11 = self;
  objc_sync_enter(v11);
  v12 = dispatch_semaphore_create(0);
  v13 = v11;
  [v13 createConnectionIfNecessary];
  v14 = [v13[11] remoteObjectProxy];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__EMFEmojiPreferencesClient_copySortedEmojis_keyword_localeIdentifier___block_invoke;
  v20[3] = &unk_1E7A5FB70;
  v22 = &v23;
  v15 = v12;
  v21 = v15;
  [v14 sortedEmojis:v8 keyword:v9 localeIdentifier:v10 handler:v20];

  v16 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v15, v16);

  objc_sync_exit(v13);
  v17 = v24[5];
  if (!v17)
  {
    v17 = v8;
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