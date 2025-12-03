@interface HMDMediaSessionState
- (BOOL)isEqual:(id)equal;
- (HMDMediaSessionState)initWithSessionIdentifier:(id)identifier;
- (NSNumber)muted;
- (NSNumber)volume;
- (NSString)description;
- (NSString)mediaUniqueIdentifier;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (int64_t)playbackState;
- (int64_t)repeatState;
- (int64_t)shuffleState;
- (unint64_t)hash;
- (void)setMediaUniqueIdentifier:(id)identifier;
- (void)setMuted:(id)muted;
- (void)setPlaybackState:(int64_t)state;
- (void)setRepeatState:(int64_t)state;
- (void)setShuffleState:(int64_t)state;
- (void)setVolume:(id)volume;
@end

@implementation HMDMediaSessionState

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v4 = MEMORY[0x277CCACA8];
  sessionIdentifier = [(HMDMediaSessionState *)self sessionIdentifier];
  [(HMDMediaSessionState *)self playbackState];
  v6 = playbackStateAsString();
  v7 = [(HMDMediaSessionState *)self shuffleState]- 1;
  if (v7 > 2)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_27972A850[v7];
  }

  v9 = [(HMDMediaSessionState *)self repeatState]- 1;
  if (v9 > 2)
  {
    v10 = @"Unknown";
  }

  else
  {
    v10 = off_27972A868[v9];
  }

  volume = [(HMDMediaSessionState *)self volume];
  mediaUniqueIdentifier = [(HMDMediaSessionState *)self mediaUniqueIdentifier];
  v13 = [v4 stringWithFormat:@"MediaSession state sessionIdentifier: %@, Playback state: %@, Shuffle state: %@, Repeat state: %@, Volume: %@, Media identifier: %@", sessionIdentifier, v6, v8, v10, volume, mediaUniqueIdentifier];

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v13 forKey:*MEMORY[0x277D0F170]];

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  sessionIdentifier = [(HMDMediaSessionState *)self sessionIdentifier];
  [(HMDMediaSessionState *)self playbackState];
  v5 = playbackStateAsString();
  v6 = [(HMDMediaSessionState *)self shuffleState]- 1;
  if (v6 > 2)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_27972A850[v6];
  }

  v8 = [(HMDMediaSessionState *)self repeatState]- 1;
  if (v8 > 2)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_27972A868[v8];
  }

  volume = [(HMDMediaSessionState *)self volume];
  mediaUniqueIdentifier = [(HMDMediaSessionState *)self mediaUniqueIdentifier];
  v12 = [v3 stringWithFormat:@"[HMDMediaSessionState sessionIdentifier: %@, Playback state: %@, Shuffle state: %@, Repeat state: %@, Volume: %@, Media identifier: %@]", sessionIdentifier, v5, v7, v9, volume, mediaUniqueIdentifier];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_12;
    }

    sessionIdentifier = [(HMDMediaSessionState *)self sessionIdentifier];
    sessionIdentifier2 = [(HMDMediaSessionState *)v6 sessionIdentifier];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_12;
    }

    playbackState = [(HMDMediaSessionState *)self playbackState];
    if (playbackState == [(HMDMediaSessionState *)v6 playbackState]&& (v11 = [(HMDMediaSessionState *)self shuffleState], v11 == [(HMDMediaSessionState *)v6 shuffleState]) && (v12 = [(HMDMediaSessionState *)self repeatState], v12 == [(HMDMediaSessionState *)v6 repeatState]))
    {
      volume = [(HMDMediaSessionState *)self volume];
      [volume floatValue];
      v15 = v14;
      volume2 = [(HMDMediaSessionState *)v6 volume];
      [volume2 floatValue];
      if (vabds_f32(v15, v17) >= *MEMORY[0x277CD1F78])
      {
        v20 = 0;
      }

      else
      {
        mediaUniqueIdentifier = [(HMDMediaSessionState *)self mediaUniqueIdentifier];
        mediaUniqueIdentifier2 = [(HMDMediaSessionState *)v6 mediaUniqueIdentifier];
        v20 = [mediaUniqueIdentifier isEqual:mediaUniqueIdentifier2];
      }
    }

    else
    {
LABEL_12:
      v20 = 0;
    }
  }

  return v20;
}

- (unint64_t)hash
{
  sessionIdentifier = [(HMDMediaSessionState *)self sessionIdentifier];
  v3 = [sessionIdentifier hash];

  return v3;
}

- (void)setMediaUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  if (([identifierCopy isEqualToString:self->_mediaUniqueIdentifier] & 1) == 0)
  {
    objc_storeStrong(&self->_mediaUniqueIdentifier, identifier);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)mediaUniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mediaUniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMuted:(id)muted
{
  mutedCopy = muted;
  os_unfair_lock_lock_with_options();
  if (self->_muted != mutedCopy)
  {
    objc_storeStrong(&self->_muted, muted);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)muted
{
  os_unfair_lock_lock_with_options();
  v3 = self->_muted;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setVolume:(id)volume
{
  volumeCopy = volume;
  os_unfair_lock_lock_with_options();
  if (self->_volume != volumeCopy)
  {
    objc_storeStrong(&self->_volume, volume);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)volume
{
  os_unfair_lock_lock_with_options();
  v3 = self->_volume;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRepeatState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  if (self->_repeatState != state)
  {
    self->_repeatState = state;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)repeatState
{
  os_unfair_lock_lock_with_options();
  repeatState = self->_repeatState;
  os_unfair_lock_unlock(&self->_lock);
  return repeatState;
}

- (void)setShuffleState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  if (self->_shuffleState != state)
  {
    self->_shuffleState = state;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)shuffleState
{
  os_unfair_lock_lock_with_options();
  shuffleState = self->_shuffleState;
  os_unfair_lock_unlock(&self->_lock);
  return shuffleState;
}

- (void)setPlaybackState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  if (self->_playbackState != state)
  {
    self->_playbackState = state;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)playbackState
{
  os_unfair_lock_lock_with_options();
  playbackState = self->_playbackState;
  os_unfair_lock_unlock(&self->_lock);
  return playbackState;
}

- (HMDMediaSessionState)initWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = identifierCopy;
    v16.receiver = self;
    v16.super_class = HMDMediaSessionState;
    v6 = [(HMDMediaSessionState *)&v16 init];
    v7 = v6;
    if (v6)
    {
      v6->_lock._os_unfair_lock_opaque = 0;
      v8 = [v5 copy];
      sessionIdentifier = v7->_sessionIdentifier;
      v7->_sessionIdentifier = v8;

      v7->_playbackState = 0;
      v7->_shuffleState = 0;
      v7->_repeatState = 0;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
      volume = v7->_volume;
      v7->_volume = v10;

      muted = v7->_muted;
      v7->_muted = MEMORY[0x277CBEC28];
    }

    return v7;
  }

  else
  {
    v14 = _HMFPreconditionFailure();
    return +[(HMDHomeManagerModel *)v14];
  }
}

@end