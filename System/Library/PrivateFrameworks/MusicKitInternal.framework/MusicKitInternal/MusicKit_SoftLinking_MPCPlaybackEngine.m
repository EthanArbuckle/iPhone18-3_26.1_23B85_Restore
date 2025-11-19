@interface MusicKit_SoftLinking_MPCPlaybackEngine
- (MusicKit_SoftLinking_MPCPlaybackEngine)initWithPlayerID:(id)a3 options:(unint64_t)a4 fallbackPlaybackIntent:(id)a5;
- (MusicKit_SoftLinking_MPCPlaybackIntent)fallbackPlaybackIntent;
- (void)musicKit_setFallbackPlaybackIntent:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPCPlaybackEngine

- (MusicKit_SoftLinking_MPCPlaybackEngine)initWithPlayerID:(id)a3 options:(unint64_t)a4 fallbackPlaybackIntent:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
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
    v13 = [[v11 alloc] initWithPlayerID:v8];
    underlyingPlaybackEngine = v10->_underlyingPlaybackEngine;
    v10->_underlyingPlaybackEngine = v13;

    if (v6)
    {
      [(MPCPlaybackEngine *)v10->_underlyingPlaybackEngine setSystemMusicApplication:1];
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    [(MPCPlaybackEngine *)v10->_underlyingPlaybackEngine setAudioAnalyzerEnabled:1];
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    [(MPCPlaybackEngine *)v10->_underlyingPlaybackEngine setPictureInPictureSupported:1];
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
LABEL_10:
        v15 = v10->_underlyingPlaybackEngine;
        v16 = [v9 _underlyingPlaybackIntent];
        [(MPCPlaybackEngine *)v15 setFallbackPlaybackIntent:v16];

        goto LABEL_11;
      }

LABEL_9:
      [(MPCPlaybackEngine *)v10->_underlyingPlaybackEngine setStateRestorationSupported:1];
      goto LABEL_10;
    }

LABEL_15:
    [(MPCPlaybackEngine *)v10->_underlyingPlaybackEngine setVideoSupported:1];
    if ((v6 & 0x10) == 0)
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
  v3 = [(MPCPlaybackEngine *)self->_underlyingPlaybackEngine fallbackPlaybackIntent];

  if (v3)
  {
    v4 = [MusicKit_SoftLinking_MPCPlaybackIntent alloc];
    v5 = [(MPCPlaybackEngine *)self->_underlyingPlaybackEngine fallbackPlaybackIntent];
    v6 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)v4 initWithUnderlyingPlaybackIntent:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)musicKit_setFallbackPlaybackIntent:(id)a3
{
  underlyingPlaybackEngine = self->_underlyingPlaybackEngine;
  v4 = [a3 _underlyingPlaybackIntent];
  [(MPCPlaybackEngine *)underlyingPlaybackEngine setFallbackPlaybackIntent:v4];
}

@end