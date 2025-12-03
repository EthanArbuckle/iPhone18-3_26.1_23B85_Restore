@interface CAFNowPlayingSnapshot
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSnapshot:(id)snapshot;
- (BOOL)isValid;
- (CAFNowPlayingSnapshot)initWithCoder:(id)coder;
- (CAFNowPlayingSnapshot)initWithTitles:(id)titles artworkData:(id)data mediaSourceType:(unsigned __int8)type mediaSourceIdentifier:(id)identifier artworkToken:(int64_t)token mediaItemImageToken:(int64_t)imageToken artworkType:(int64_t)artworkType multicast:(unint64_t)self0 playbackState:(unsigned __int8)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAFNowPlayingSnapshot

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  artworkData = [(CAFNowPlayingSnapshot *)self artworkData];
  [coderCopy encodeObject:artworkData forKey:@"kCAFCarNowPlayingArtworkKey"];

  titles = [(CAFNowPlayingSnapshot *)self titles];
  [coderCopy encodeObject:titles forKey:@"kCAFCarNowPlayingTitlesKey"];

  [coderCopy encodeInteger:-[CAFNowPlayingSnapshot mediaSourceType](self forKey:{"mediaSourceType"), @"kCAFCarNowPlayingSourceTypeKey"}];
  currentMediaSourceIdentifier = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];
  [coderCopy encodeObject:currentMediaSourceIdentifier forKey:@"kCAFCarNowPlayingMediaSourceIdentifierKey"];

  [coderCopy encodeInteger:-[CAFNowPlayingSnapshot lastArtworkToken](self forKey:{"lastArtworkToken"), @"kCAFCarNowPlayingLastArtworkToken"}];
  [coderCopy encodeInteger:-[CAFNowPlayingSnapshot lastMediaItemImageToken](self forKey:{"lastMediaItemImageToken"), @"kCAFCarNowPlayingLastMediaItemImageToken"}];
  [coderCopy encodeInteger:-[CAFNowPlayingSnapshot artworkType](self forKey:{"artworkType"), @"kCAFCarNowPlayingArtworkTypeKey"}];
  [coderCopy encodeInteger:-[CAFNowPlayingSnapshot multicast](self forKey:{"multicast"), @"kCAFCarNowPlayingMulticastKey"}];
  [coderCopy encodeInteger:-[CAFNowPlayingSnapshot playbackState](self forKey:{"playbackState"), @"kCAFCarNowPlayingPlaybackStateKey"}];
}

- (CAFNowPlayingSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CAFNowPlayingSnapshot;
  v5 = [(CAFNowPlayingSnapshot *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCAFCarNowPlayingArtworkKey"];
    artworkData = v5->_artworkData;
    v5->_artworkData = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kCAFCarNowPlayingTitlesKey"];
    titles = v5->_titles;
    v5->_titles = v11;

    v5->_mediaSourceType = [coderCopy decodeIntegerForKey:@"kCAFCarNowPlayingSourceTypeKey"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCAFCarNowPlayingMediaSourceIdentifierKey"];
    currentMediaSourceIdentifier = v5->_currentMediaSourceIdentifier;
    v5->_currentMediaSourceIdentifier = v13;

    v5->_lastArtworkToken = [coderCopy decodeIntegerForKey:@"kCAFCarNowPlayingLastArtworkToken"];
    v5->_lastMediaItemImageToken = [coderCopy decodeIntegerForKey:@"kCAFCarNowPlayingLastMediaItemImageToken"];
    v5->_artworkType = [coderCopy decodeIntegerForKey:@"kCAFCarNowPlayingArtworkTypeKey"];
    v5->_multicast = [coderCopy decodeIntegerForKey:@"kCAFCarNowPlayingMulticastKey"];
    v5->_playbackState = [coderCopy decodeIntegerForKey:@"kCAFCarNowPlayingPlaybackStateKey"];
  }

  return v5;
}

- (CAFNowPlayingSnapshot)initWithTitles:(id)titles artworkData:(id)data mediaSourceType:(unsigned __int8)type mediaSourceIdentifier:(id)identifier artworkToken:(int64_t)token mediaItemImageToken:(int64_t)imageToken artworkType:(int64_t)artworkType multicast:(unint64_t)self0 playbackState:(unsigned __int8)self1
{
  titlesCopy = titles;
  dataCopy = data;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = CAFNowPlayingSnapshot;
  v21 = [(CAFNowPlayingSnapshot *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_titles, titles);
    objc_storeStrong(&v22->_artworkData, data);
    v22->_mediaSourceType = type;
    objc_storeStrong(&v22->_currentMediaSourceIdentifier, identifier);
    v22->_lastArtworkToken = token;
    v22->_lastMediaItemImageToken = imageToken;
    v22->_artworkType = artworkType;
    v22->_multicast = multicast;
    v22->_playbackState = state;
  }

  return v22;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = CAFNowPlayingSnapshot;
  v14 = [(CAFNowPlayingSnapshot *)&v16 description];
  currentMediaSourceIdentifier = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFNowPlayingSnapshot mediaSourceType](self, "mediaSourceType")}];
  titles = [(CAFNowPlayingSnapshot *)self titles];
  lastArtworkToken = [(CAFNowPlayingSnapshot *)self lastArtworkToken];
  lastMediaItemImageToken = [(CAFNowPlayingSnapshot *)self lastMediaItemImageToken];
  artworkData = [(CAFNowPlayingSnapshot *)self artworkData];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CAFNowPlayingSnapshot artworkType](self, "artworkType")}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CAFNowPlayingSnapshot multicast](self, "multicast")}];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFNowPlayingSnapshot playbackState](self, "playbackState")}];
  v12 = [v15 stringWithFormat:@"%@: source %@ (%@) titles %@, artwork tokens (%lu, %lu), artwork %@, artworkType %@ multicast %@ playbackState %@", v14, currentMediaSourceIdentifier, v4, titles, lastArtworkToken, lastMediaItemImageToken, artworkData, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CAFNowPlayingSnapshot *)self isEqualToSnapshot:equalCopy];

  return v5;
}

- (BOOL)isEqualToSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  mediaSourceType = [snapshotCopy mediaSourceType];
  if (mediaSourceType == -[CAFNowPlayingSnapshot mediaSourceType](self, "mediaSourceType") && (v6 = [snapshotCopy lastArtworkToken], v6 == -[CAFNowPlayingSnapshot lastArtworkToken](self, "lastArtworkToken")) && (v7 = objc_msgSend(snapshotCopy, "lastMediaItemImageToken"), v7 == -[CAFNowPlayingSnapshot lastMediaItemImageToken](self, "lastMediaItemImageToken")) && (v8 = objc_msgSend(snapshotCopy, "artworkType"), v8 == -[CAFNowPlayingSnapshot artworkType](self, "artworkType")) && (v9 = objc_msgSend(snapshotCopy, "multicast"), v9 == -[CAFNowPlayingSnapshot multicast](self, "multicast")))
  {
    playbackState = [snapshotCopy playbackState];
    v11 = playbackState == [(CAFNowPlayingSnapshot *)self playbackState];
  }

  else
  {
    v11 = 0;
  }

  titles = [(CAFNowPlayingSnapshot *)self titles];

  v13 = titles == 0 && v11;
  if (titles && v11)
  {
    titles2 = [(CAFNowPlayingSnapshot *)self titles];
    titles3 = [snapshotCopy titles];
    v13 = [titles2 isEqualToArray:titles3];
  }

  currentMediaSourceIdentifier = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];

  v17 = (currentMediaSourceIdentifier == 0) & v13;
  if (currentMediaSourceIdentifier && v13)
  {
    currentMediaSourceIdentifier2 = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];
    currentMediaSourceIdentifier3 = [snapshotCopy currentMediaSourceIdentifier];
    v17 = [currentMediaSourceIdentifier2 isEqualToString:currentMediaSourceIdentifier3];
  }

  artworkData = [(CAFNowPlayingSnapshot *)self artworkData];

  v21 = (artworkData == 0) & v17;
  if (artworkData && v17)
  {
    artworkData2 = [(CAFNowPlayingSnapshot *)self artworkData];
    artworkData3 = [snapshotCopy artworkData];
    v21 = [artworkData2 isEqualToData:artworkData3];
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

  titles = [(CAFNowPlayingSnapshot *)self titles];

  if (titles)
  {
    titles2 = [(CAFNowPlayingSnapshot *)self titles];
    v14 ^= [titles2 hash];
  }

  currentMediaSourceIdentifier = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];

  if (currentMediaSourceIdentifier)
  {
    currentMediaSourceIdentifier2 = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];
    v14 ^= [currentMediaSourceIdentifier2 hash];
  }

  artworkData = [(CAFNowPlayingSnapshot *)self artworkData];

  if (artworkData)
  {
    artworkData2 = [(CAFNowPlayingSnapshot *)self artworkData];
    v14 ^= [artworkData2 hash];
  }

  return v14;
}

- (BOOL)isValid
{
  currentMediaSourceIdentifier = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];
  v3 = [currentMediaSourceIdentifier length] != 0;

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CAFNowPlayingSnapshot alloc];
  titles = [(CAFNowPlayingSnapshot *)self titles];
  artworkData = [(CAFNowPlayingSnapshot *)self artworkData];
  mediaSourceType = [(CAFNowPlayingSnapshot *)self mediaSourceType];
  currentMediaSourceIdentifier = [(CAFNowPlayingSnapshot *)self currentMediaSourceIdentifier];
  lastArtworkToken = [(CAFNowPlayingSnapshot *)self lastArtworkToken];
  lastMediaItemImageToken = [(CAFNowPlayingSnapshot *)self lastMediaItemImageToken];
  artworkType = [(CAFNowPlayingSnapshot *)self artworkType];
  multicast = [(CAFNowPlayingSnapshot *)self multicast];
  LOBYTE(v15) = [(CAFNowPlayingSnapshot *)self playbackState];
  v13 = [(CAFNowPlayingSnapshot *)v4 initWithTitles:titles artworkData:artworkData mediaSourceType:mediaSourceType mediaSourceIdentifier:currentMediaSourceIdentifier artworkToken:lastArtworkToken mediaItemImageToken:lastMediaItemImageToken artworkType:artworkType multicast:multicast playbackState:v15];

  return v13;
}

@end