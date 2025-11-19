@interface HMDMediaSessionState
- (BOOL)isEqual:(id)a3;
- (HMDMediaSessionState)initWithSessionIdentifier:(id)a3;
- (NSNumber)muted;
- (NSNumber)volume;
- (NSString)description;
- (NSString)mediaUniqueIdentifier;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (int64_t)playbackState;
- (int64_t)repeatState;
- (int64_t)shuffleState;
- (unint64_t)hash;
- (void)setMediaUniqueIdentifier:(id)a3;
- (void)setMuted:(id)a3;
- (void)setPlaybackState:(int64_t)a3;
- (void)setRepeatState:(int64_t)a3;
- (void)setShuffleState:(int64_t)a3;
- (void)setVolume:(id)a3;
@end

@implementation HMDMediaSessionState

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(HMDMediaSessionState *)self sessionIdentifier];
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

  v11 = [(HMDMediaSessionState *)self volume];
  v12 = [(HMDMediaSessionState *)self mediaUniqueIdentifier];
  v13 = [v4 stringWithFormat:@"MediaSession state sessionIdentifier: %@, Playback state: %@, Shuffle state: %@, Repeat state: %@, Volume: %@, Media identifier: %@", v5, v6, v8, v10, v11, v12];

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v13 forKey:*MEMORY[0x277D0F170]];

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDMediaSessionState *)self sessionIdentifier];
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

  v10 = [(HMDMediaSessionState *)self volume];
  v11 = [(HMDMediaSessionState *)self mediaUniqueIdentifier];
  v12 = [v3 stringWithFormat:@"[HMDMediaSessionState sessionIdentifier: %@, Playback state: %@, Shuffle state: %@, Repeat state: %@, Volume: %@, Media identifier: %@]", v4, v5, v7, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

    v7 = [(HMDMediaSessionState *)self sessionIdentifier];
    v8 = [(HMDMediaSessionState *)v6 sessionIdentifier];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = [(HMDMediaSessionState *)self playbackState];
    if (v10 == [(HMDMediaSessionState *)v6 playbackState]&& (v11 = [(HMDMediaSessionState *)self shuffleState], v11 == [(HMDMediaSessionState *)v6 shuffleState]) && (v12 = [(HMDMediaSessionState *)self repeatState], v12 == [(HMDMediaSessionState *)v6 repeatState]))
    {
      v13 = [(HMDMediaSessionState *)self volume];
      [v13 floatValue];
      v15 = v14;
      v16 = [(HMDMediaSessionState *)v6 volume];
      [v16 floatValue];
      if (vabds_f32(v15, v17) >= *MEMORY[0x277CD1F78])
      {
        v20 = 0;
      }

      else
      {
        v18 = [(HMDMediaSessionState *)self mediaUniqueIdentifier];
        v19 = [(HMDMediaSessionState *)v6 mediaUniqueIdentifier];
        v20 = [v18 isEqual:v19];
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
  v2 = [(HMDMediaSessionState *)self sessionIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (void)setMediaUniqueIdentifier:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  if (([v5 isEqualToString:self->_mediaUniqueIdentifier] & 1) == 0)
  {
    objc_storeStrong(&self->_mediaUniqueIdentifier, a3);
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

- (void)setMuted:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_muted != v5)
  {
    objc_storeStrong(&self->_muted, a3);
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

- (void)setVolume:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_volume != v5)
  {
    objc_storeStrong(&self->_volume, a3);
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

- (void)setRepeatState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_repeatState != a3)
  {
    self->_repeatState = a3;
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

- (void)setShuffleState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_shuffleState != a3)
  {
    self->_shuffleState = a3;
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

- (void)setPlaybackState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_playbackState != a3)
  {
    self->_playbackState = a3;
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

- (HMDMediaSessionState)initWithSessionIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
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