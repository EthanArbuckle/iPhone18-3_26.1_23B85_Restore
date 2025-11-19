@interface MPCNonZeroEffectiveRateTask
- (AVPlayerItem)playerItem;
- (MPCNonZeroEffectiveRateTask)initWithPlayerItem:(id)a3 identifier:(id)a4 timeout:(double)a5 queue:(id)a6 block:(id)a7;
- (void)effectiveRateDidChange:(id)a3;
- (void)taskDidExecute;
@end

@implementation MPCNonZeroEffectiveRateTask

- (AVPlayerItem)playerItem
{
  WeakRetained = objc_loadWeakRetained(&self->_playerItem);

  return WeakRetained;
}

- (void)taskDidExecute
{
  v4.receiver = self;
  v4.super_class = MPCNonZeroEffectiveRateTask;
  [(MPCDeferrableTask *)&v4 taskDidExecute];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E6960CD0] object:0];
}

- (void)effectiveRateDidChange:(id)a3
{
  v4 = a3;
  v5 = [(MPCNonZeroEffectiveRateTask *)self playerItem];
  v6 = [v5 timebase];

  v10 = [v4 object];

  v7 = v10;
  if (v10 == v6 && (EffectiveRate = CMTimebaseGetEffectiveRate(v6), v7 = v10, EffectiveRate > 0.00000011920929))
  {
    v9 = [(MPCDeferrableTask *)self disarmTimeout];

    if (v9)
    {

      [(MPCDeferrableTask *)self execute:0];
    }
  }

  else
  {
  }
}

- (MPCNonZeroEffectiveRateTask)initWithPlayerItem:(id)a3 identifier:(id)a4 timeout:(double)a5 queue:(id)a6 block:(id)a7
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v18.receiver = self;
  v18.super_class = MPCNonZeroEffectiveRateTask;
  v13 = [(MPCDeferrableTask *)&v18 initWithIdentifier:a4 timeout:a6 queue:a7 block:a5];
  v14 = v13;
  if (v13)
  {
    [(MPCNonZeroEffectiveRateTask *)v13 setPlayerItem:v12];
    if (CMTimebaseGetEffectiveRate([v12 timebase]) <= 0.00000011920929)
    {
      v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v14;
        _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Started waiting for a EffectiveRateChanged notification", buf, 0xCu);
      }

      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 addObserver:v14 selector:sel_effectiveRateDidChange_ name:*MEMORY[0x1E6960CD0] object:0];
    }

    else if ([(MPCDeferrableTask *)v14 disarmTimeout])
    {
      [(MPCDeferrableTask *)v14 execute:0];
    }
  }

  return v14;
}

@end