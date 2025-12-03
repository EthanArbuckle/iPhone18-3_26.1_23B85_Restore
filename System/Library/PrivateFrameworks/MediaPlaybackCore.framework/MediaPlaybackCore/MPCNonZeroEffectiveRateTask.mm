@interface MPCNonZeroEffectiveRateTask
- (AVPlayerItem)playerItem;
- (MPCNonZeroEffectiveRateTask)initWithPlayerItem:(id)item identifier:(id)identifier timeout:(double)timeout queue:(id)queue block:(id)block;
- (void)effectiveRateDidChange:(id)change;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6960CD0] object:0];
}

- (void)effectiveRateDidChange:(id)change
{
  changeCopy = change;
  playerItem = [(MPCNonZeroEffectiveRateTask *)self playerItem];
  timebase = [playerItem timebase];

  object = [changeCopy object];

  v7 = object;
  if (object == timebase && (EffectiveRate = CMTimebaseGetEffectiveRate(timebase), v7 = object, EffectiveRate > 0.00000011920929))
  {
    disarmTimeout = [(MPCDeferrableTask *)self disarmTimeout];

    if (disarmTimeout)
    {

      [(MPCDeferrableTask *)self execute:0];
    }
  }

  else
  {
  }
}

- (MPCNonZeroEffectiveRateTask)initWithPlayerItem:(id)item identifier:(id)identifier timeout:(double)timeout queue:(id)queue block:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v18.receiver = self;
  v18.super_class = MPCNonZeroEffectiveRateTask;
  v13 = [(MPCDeferrableTask *)&v18 initWithIdentifier:identifier timeout:queue queue:block block:timeout];
  v14 = v13;
  if (v13)
  {
    [(MPCNonZeroEffectiveRateTask *)v13 setPlayerItem:itemCopy];
    if (CMTimebaseGetEffectiveRate([itemCopy timebase]) <= 0.00000011920929)
    {
      v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v14;
        _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Started waiting for a EffectiveRateChanged notification", buf, 0xCu);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v14 selector:sel_effectiveRateDidChange_ name:*MEMORY[0x1E6960CD0] object:0];
    }

    else if ([(MPCDeferrableTask *)v14 disarmTimeout])
    {
      [(MPCDeferrableTask *)v14 execute:0];
    }
  }

  return v14;
}

@end