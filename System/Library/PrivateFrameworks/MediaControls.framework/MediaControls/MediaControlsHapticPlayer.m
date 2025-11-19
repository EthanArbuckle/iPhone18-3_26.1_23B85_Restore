@interface MediaControlsHapticPlayer
- (void)checkError:(id)a3;
- (void)dealloc;
- (void)expandedButtonChanged;
- (void)prepare;
- (void)setupExpandedButtonChanged;
- (void)tearDown;
@end

@implementation MediaControlsHapticPlayer

- (void)prepare
{
  v8 = 0;
  v3 = [objc_alloc(MEMORY[0x1E695F570]) initAndReturnError:&v8];
  v4 = v8;
  engine = self->_engine;
  self->_engine = v3;

  [(MediaControlsHapticPlayer *)self checkError:v4];
  [(MediaControlsHapticPlayer *)self setupExpandedButtonChanged];
  v6 = self->_engine;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MediaControlsHapticPlayer_prepare__block_invoke;
  v7[3] = &unk_1E7663C68;
  v7[4] = self;
  [(CHHapticEngine *)v6 prewarmWithCompletionHandler:v7];
}

- (void)tearDown
{
  [(CHHapticEngine *)self->_engine stopPrewarm];
  engine = self->_engine;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__MediaControlsHapticPlayer_tearDown__block_invoke;
  v4[3] = &unk_1E7663C68;
  v4[4] = self;
  [(CHHapticEngine *)engine stopWithCompletionHandler:v4];
}

- (void)dealloc
{
  [(MediaControlsHapticPlayer *)self tearDown];
  v3.receiver = self;
  v3.super_class = MediaControlsHapticPlayer;
  [(MediaControlsHapticPlayer *)&v3 dealloc];
}

- (void)expandedButtonChanged
{
  engine = self->_engine;
  v8 = 0;
  [(CHHapticEngine *)engine startAndReturnError:&v8];
  v4 = v8;
  [(MediaControlsHapticPlayer *)self checkError:v4];
  expandedButtonChangedPlayer = self->_expandedButtonChangedPlayer;
  v7 = v4;
  [(CHHapticPatternPlayer *)expandedButtonChangedPlayer startAtTime:&v7 error:0.0];
  v6 = v7;

  [(MediaControlsHapticPlayer *)self checkError:v6];
}

- (void)checkError:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = MCLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_ERROR, "[MediaControlsHapticPlayer] Error: %{public}@", &v5, 0xCu);
    }
  }
}

- (void)setupExpandedButtonChanged
{
  v27[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695F588]);
  v4 = *MEMORY[0x1E695F4E0];
  v5 = objc_alloc(MEMORY[0x1E695F590]);
  LODWORD(v6) = 1.0;
  v7 = [v5 initWithParameterID:*MEMORY[0x1E695F4D0] value:v6];
  v27[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E695F590]);
  LODWORD(v9) = 1.0;
  v10 = [v8 initWithParameterID:*MEMORY[0x1E695F4D8] value:v9];
  v27[1] = v10;
  v11 = objc_alloc(MEMORY[0x1E695F590]);
  LODWORD(v12) = 1.0;
  v13 = [v11 initWithParameterID:*MEMORY[0x1E695F4C8] value:v12];
  v27[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
  v15 = [v3 initWithEventType:v4 parameters:v14 relativeTime:0.0];

  v16 = objc_alloc(MEMORY[0x1E695F5A0]);
  v26 = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v25 = 0;
  v18 = [v16 initWithEvents:v17 parameters:MEMORY[0x1E695E0F0] error:&v25];
  v19 = v25;

  [(MediaControlsHapticPlayer *)self checkError:v19];
  engine = self->_engine;
  v24 = v19;
  v21 = [(CHHapticEngine *)engine createPrivilegedPlayerWithPlayable:v18 error:&v24];
  v22 = v24;

  expandedButtonChangedPlayer = self->_expandedButtonChangedPlayer;
  self->_expandedButtonChangedPlayer = v21;

  [(MediaControlsHapticPlayer *)self checkError:v22];
}

@end