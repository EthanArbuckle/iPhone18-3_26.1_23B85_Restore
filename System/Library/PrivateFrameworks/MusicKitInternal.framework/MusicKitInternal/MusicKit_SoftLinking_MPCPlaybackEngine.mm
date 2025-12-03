@interface MusicKit_SoftLinking_MPCPlaybackEngine
- (MusicKit_SoftLinking_MPCPlaybackEngine)initWithPlayerID:(id)d options:(unint64_t)options fallbackPlaybackIntent:(id)intent;
- (MusicKit_SoftLinking_MPCPlaybackIntent)fallbackPlaybackIntent;
- (void)musicKit_setFallbackPlaybackIntent:(id)intent;
@end

@implementation MusicKit_SoftLinking_MPCPlaybackEngine

- (MusicKit_SoftLinking_MPCPlaybackEngine)initWithPlayerID:(id)d options:(unint64_t)options fallbackPlaybackIntent:(id)intent
{
  optionsCopy = options;
  dCopy = d;
  intentCopy = intent;
  v18.receiver = self;
  v18.super_class = MusicKit_SoftLinking_MPCPlaybackEngine;
  v10 = [(MusicKit_SoftLinking_MPCPlaybackEngine *)&v18 init];
  if (v10)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v11 = getMPCPlaybackEngineClass_softClass;
    v23 = getMPCPlaybackEngineClass_softClass;
    if (!getMPCPlaybackEngineClass_softClass)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __getMPCPlaybackEngineClass_block_invoke;
      v19[3] = &unk_1E84C3838;
      v19[4] = &v20;
      __getMPCPlaybackEngineClass_block_invoke(v19);
      v11 = v21[3];
    }

    v12 = v11;
    _Block_object_dispose(&v20, 8);
    v13 = [[v11 alloc] initWithPlayerID:dCopy];
    underlyingPlaybackEngine = v10->_underlyingPlaybackEngine;
    v10->_underlyingPlaybackEngine = v13;

    if (optionsCopy)
    {
      [(MPCPlaybackEngine *)v10->_underlyingPlaybackEngine setSystemMusicApplication:1];
      if ((optionsCopy & 2) == 0)
      {
LABEL_6:
        if ((optionsCopy & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((optionsCopy & 2) == 0)
    {
      goto LABEL_6;
    }

    [(MPCPlaybackEngine *)v10->_underlyingPlaybackEngine setAudioAnalyzerEnabled:1];
    if ((optionsCopy & 4) == 0)
    {
LABEL_7:
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    [(MPCPlaybackEngine *)v10->_underlyingPlaybackEngine setPictureInPictureSupported:1];
    if ((optionsCopy & 8) == 0)
    {
LABEL_8:
      if ((optionsCopy & 0x10) == 0)
      {
LABEL_10:
        v15 = v10->_underlyingPlaybackEngine;
        _underlyingPlaybackIntent = [intentCopy _underlyingPlaybackIntent];
        [(MPCPlaybackEngine *)v15 setFallbackPlaybackIntent:_underlyingPlaybackIntent];

        goto LABEL_11;
      }

LABEL_9:
      [(MPCPlaybackEngine *)v10->_underlyingPlaybackEngine setStateRestorationSupported:1];
      goto LABEL_10;
    }

LABEL_15:
    [(MPCPlaybackEngine *)v10->_underlyingPlaybackEngine setVideoSupported:1];
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:

  return v10;
}

- (MusicKit_SoftLinking_MPCPlaybackIntent)fallbackPlaybackIntent
{
  fallbackPlaybackIntent = [(MPCPlaybackEngine *)self->_underlyingPlaybackEngine fallbackPlaybackIntent];

  if (fallbackPlaybackIntent)
  {
    v4 = [MusicKit_SoftLinking_MPCPlaybackIntent alloc];
    fallbackPlaybackIntent2 = [(MPCPlaybackEngine *)self->_underlyingPlaybackEngine fallbackPlaybackIntent];
    v6 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)v4 initWithUnderlyingPlaybackIntent:fallbackPlaybackIntent2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)musicKit_setFallbackPlaybackIntent:(id)intent
{
  underlyingPlaybackEngine = self->_underlyingPlaybackEngine;
  _underlyingPlaybackIntent = [intent _underlyingPlaybackIntent];
  [(MPCPlaybackEngine *)underlyingPlaybackEngine setFallbackPlaybackIntent:_underlyingPlaybackIntent];
}

@end