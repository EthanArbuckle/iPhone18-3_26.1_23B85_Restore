@interface CAFNowPlayingSnapshot
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSnapshot:(id)a3;
- (BOOL)isValid;
- (CAFNowPlayingSnapshot)initWithCoder:(id)a3;
- (CAFNowPlayingSnapshot)initWithTitles:(id)a3 artworkData:(id)a4 mediaSourceType:(unsigned __int8)a5 mediaSourceIdentifier:(id)a6 artworkToken:(int64_t)a7 mediaItemImageToken:(int64_t)a8 artworkType:(int64_t)a9 multicast:(unint64_t)a10 playbackState:(unsigned __int8)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAFNowPlayingSnapshot

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CAFNowPlayingSnapshot *)self artworkData];
  [v7 encodeObject:v4 forKey:@"kCAFCarNowPlayingArtworkKey"];

  v5 = [(CAFNowPlayingSnapshot *)self titles];
  [v7 encodeObject:v5 forKey:@"kCAFCarNowPlayingTitlesKey"];

  [v7 encodeInteger:-[CAFNowPlayingSnapshot mediaSourceType](self forKey:{"mediaSourceType"), @"kCAFCarNowPlayingSourceTypeKey"}];
  v6 = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];
  [v7 encodeObject:v6 forKey:@"kCAFCarNowPlayingMediaSourceIdentifierKey"];

  [v7 encodeInteger:-[CAFNowPlayingSnapshot lastArtworkToken](self forKey:{"lastArtworkToken"), @"kCAFCarNowPlayingLastArtworkToken"}];
  [v7 encodeInteger:-[CAFNowPlayingSnapshot lastMediaItemImageToken](self forKey:{"lastMediaItemImageToken"), @"kCAFCarNowPlayingLastMediaItemImageToken"}];
  [v7 encodeInteger:-[CAFNowPlayingSnapshot artworkType](self forKey:{"artworkType"), @"kCAFCarNowPlayingArtworkTypeKey"}];
  [v7 encodeInteger:-[CAFNowPlayingSnapshot multicast](self forKey:{"multicast"), @"kCAFCarNowPlayingMulticastKey"}];
  [v7 encodeInteger:-[CAFNowPlayingSnapshot playbackState](self forKey:{"playbackState"), @"kCAFCarNowPlayingPlaybackStateKey"}];
}

- (CAFNowPlayingSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CAFNowPlayingSnapshot;
  v5 = [(CAFNowPlayingSnapshot *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCAFCarNowPlayingArtworkKey"];
    artworkData = v5->_artworkData;
    v5->_artworkData = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kCAFCarNowPlayingTitlesKey"];
    titles = v5->_titles;
    v5->_titles = v11;

    v5->_mediaSourceType = [v4 decodeIntegerForKey:@"kCAFCarNowPlayingSourceTypeKey"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCAFCarNowPlayingMediaSourceIdentifierKey"];
    currentMediaSourceIdentifier = v5->_currentMediaSourceIdentifier;
    v5->_currentMediaSourceIdentifier = v13;

    v5->_lastArtworkToken = [v4 decodeIntegerForKey:@"kCAFCarNowPlayingLastArtworkToken"];
    v5->_lastMediaItemImageToken = [v4 decodeIntegerForKey:@"kCAFCarNowPlayingLastMediaItemImageToken"];
    v5->_artworkType = [v4 decodeIntegerForKey:@"kCAFCarNowPlayingArtworkTypeKey"];
    v5->_multicast = [v4 decodeIntegerForKey:@"kCAFCarNowPlayingMulticastKey"];
    v5->_playbackState = [v4 decodeIntegerForKey:@"kCAFCarNowPlayingPlaybackStateKey"];
  }

  return v5;
}

- (CAFNowPlayingSnapshot)initWithTitles:(id)a3 artworkData:(id)a4 mediaSourceType:(unsigned __int8)a5 mediaSourceIdentifier:(id)a6 artworkToken:(int64_t)a7 mediaItemImageToken:(int64_t)a8 artworkType:(int64_t)a9 multicast:(unint64_t)a10 playbackState:(unsigned __int8)a11
{
  v18 = a3;
  v19 = a4;
  v20 = a6;
  v24.receiver = self;
  v24.super_class = CAFNowPlayingSnapshot;
  v21 = [(CAFNowPlayingSnapshot *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_titles, a3);
    objc_storeStrong(&v22->_artworkData, a4);
    v22->_mediaSourceType = a5;
    objc_storeStrong(&v22->_currentMediaSourceIdentifier, a6);
    v22->_lastArtworkToken = a7;
    v22->_lastMediaItemImageToken = a8;
    v22->_artworkType = a9;
    v22->_multicast = a10;
    v22->_playbackState = a11;
  }

  return v22;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = CAFNowPlayingSnapshot;
  v14 = [(CAFNowPlayingSnapshot *)&v16 description];
  v3 = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFNowPlayingSnapshot mediaSourceType](self, "mediaSourceType")}];
  v5 = [(CAFNowPlayingSnapshot *)self titles];
  v6 = [(CAFNowPlayingSnapshot *)self lastArtworkToken];
  v7 = [(CAFNowPlayingSnapshot *)self lastMediaItemImageToken];
  v8 = [(CAFNowPlayingSnapshot *)self artworkData];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CAFNowPlayingSnapshot artworkType](self, "artworkType")}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CAFNowPlayingSnapshot multicast](self, "multicast")}];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFNowPlayingSnapshot playbackState](self, "playbackState")}];
  v12 = [v15 stringWithFormat:@"%@: source %@ (%@) titles %@, artwork tokens (%lu, %lu), artwork %@, artworkType %@ multicast %@ playbackState %@", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CAFNowPlayingSnapshot *)self isEqualToSnapshot:v4];

  return v5;
}

- (BOOL)isEqualToSnapshot:(id)a3
{
  v4 = a3;
  v5 = [v4 mediaSourceType];
  if (v5 == -[CAFNowPlayingSnapshot mediaSourceType](self, "mediaSourceType") && (v6 = [v4 lastArtworkToken], v6 == -[CAFNowPlayingSnapshot lastArtworkToken](self, "lastArtworkToken")) && (v7 = objc_msgSend(v4, "lastMediaItemImageToken"), v7 == -[CAFNowPlayingSnapshot lastMediaItemImageToken](self, "lastMediaItemImageToken")) && (v8 = objc_msgSend(v4, "artworkType"), v8 == -[CAFNowPlayingSnapshot artworkType](self, "artworkType")) && (v9 = objc_msgSend(v4, "multicast"), v9 == -[CAFNowPlayingSnapshot multicast](self, "multicast")))
  {
    v10 = [v4 playbackState];
    v11 = v10 == [(CAFNowPlayingSnapshot *)self playbackState];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(CAFNowPlayingSnapshot *)self titles];

  v13 = v12 == 0 && v11;
  if (v12 && v11)
  {
    v14 = [(CAFNowPlayingSnapshot *)self titles];
    v15 = [v4 titles];
    v13 = [v14 isEqualToArray:v15];
  }

  v16 = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];

  v17 = (v16 == 0) & v13;
  if (v16 && v13)
  {
    v18 = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];
    v19 = [v4 currentMediaSourceIdentifier];
    v17 = [v18 isEqualToString:v19];
  }

  v20 = [(CAFNowPlayingSnapshot *)self artworkData];

  v21 = (v20 == 0) & v17;
  if (v20 && v17)
  {
    v22 = [(CAFNowPlayingSnapshot *)self artworkData];
    v23 = [v4 artworkData];
    v21 = [v22 isEqualToData:v23];
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFNowPlayingSnapshot mediaSourceType](self, "mediaSourceType")}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CAFNowPlayingSnapshot lastArtworkToken](self, "lastArtworkToken")}];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CAFNowPlayingSnapshot lastMediaItemImageToken](self, "lastMediaItemImageToken")}];
  v8 = [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CAFNowPlayingSnapshot artworkType](self, "artworkType")}];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CAFNowPlayingSnapshot multicast](self, "multicast")}];
  v12 = [v11 hash];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFNowPlayingSnapshot playbackState](self, "playbackState")}];
  v14 = v10 ^ v12 ^ [v13 hash];

  v15 = [(CAFNowPlayingSnapshot *)self titles];

  if (v15)
  {
    v16 = [(CAFNowPlayingSnapshot *)self titles];
    v14 ^= [v16 hash];
  }

  v17 = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];

  if (v17)
  {
    v18 = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];
    v14 ^= [v18 hash];
  }

  v19 = [(CAFNowPlayingSnapshot *)self artworkData];

  if (v19)
  {
    v20 = [(CAFNowPlayingSnapshot *)self artworkData];
    v14 ^= [v20 hash];
  }

  return v14;
}

- (BOOL)isValid
{
  v2 = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CAFNowPlayingSnapshot alloc];
  v5 = [(CAFNowPlayingSnapshot *)self titles];
  v6 = [(CAFNowPlayingSnapshot *)self artworkData];
  v7 = [(CAFNowPlayingSnapshot *)self mediaSourceType];
  v8 = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];
  v9 = [(CAFNowPlayingSnapshot *)self lastArtworkToken];
  v10 = [(CAFNowPlayingSnapshot *)self lastMediaItemImageToken];
  v11 = [(CAFNowPlayingSnapshot *)self artworkType];
  v12 = [(CAFNowPlayingSnapshot *)self multicast];
  LOBYTE(v15) = [(CAFNowPlayingSnapshot *)self playbackState];
  v13 = [(CAFNowPlayingSnapshot *)v4 initWithTitles:v5 artworkData:v6 mediaSourceType:v7 mediaSourceIdentifier:v8 artworkToken:v9 mediaItemImageToken:v10 artworkType:v11 multicast:v12 playbackState:v15];

  return v13;
}

@end