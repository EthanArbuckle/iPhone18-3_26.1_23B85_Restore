@interface HMIHLSPlaylist
- (HMIHLSPlaylist)initWithPlaylistString:(id)string;
- (HMIHLSPlaylist)initWithTargetDuration:(double)duration;
- (NSString)playlistString;
- (void)appendEncryptionModeWithPath:(id)path;
- (void)appendInitializationSegmentWithPath:(id)path;
- (void)appendSeparableSegmentWithPath:(id)path duration:(double)duration byteRange:(_NSRange)range;
@end

@implementation HMIHLSPlaylist

- (HMIHLSPlaylist)initWithPlaylistString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = HMIHLSPlaylist;
  v5 = [(HMIHLSPlaylist *)&v10 init];
  if (v5)
  {
    v6 = [stringCopy componentsSeparatedByString:@"\n"];
    v7 = [v6 mutableCopy];
    lines = v5->_lines;
    v5->_lines = v7;
  }

  return v5;
}

- (HMIHLSPlaylist)initWithTargetDuration:(double)duration
{
  v10.receiver = self;
  v10.super_class = HMIHLSPlaylist;
  v4 = [(HMIHLSPlaylist *)&v10 init];
  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    lines = v4->_lines;
    v4->_lines = array;

    [(NSMutableArray *)v4->_lines addObject:@"#EXTM3U"];
    [(NSMutableArray *)v4->_lines addObject:@"#EXT-X-VERSION:7"];
    v7 = v4->_lines;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"#EXT-X-TARGETDURATION:%.6f", *&duration];
    [(NSMutableArray *)v7 addObject:v8];

    [(NSMutableArray *)v4->_lines addObject:@"#EXT-X-PLAYLIST-TYPE:VOD"];
    [(NSMutableArray *)v4->_lines addObject:@"#EXT-X-INDEPENDENT-SEGMENTS"];
  }

  return v4;
}

- (NSString)playlistString
{
  lines = [(HMIHLSPlaylist *)self lines];
  v3 = [lines componentsJoinedByString:@"\n"];

  return v3;
}

- (void)appendEncryptionModeWithPath:(id)path
{
  lines = self->_lines;
  path = [MEMORY[0x277CCACA8] stringWithFormat:@"#EXT-X-KEY:METHOD=AES-256-GCM, URI=%@", path];
  [(NSMutableArray *)lines addObject:path];
}

- (void)appendInitializationSegmentWithPath:(id)path
{
  lines = self->_lines;
  path = [MEMORY[0x277CCACA8] stringWithFormat:@"#EXT-X-MAP:URI=%@", path];
  [(NSMutableArray *)lines addObject:path];
}

- (void)appendSeparableSegmentWithPath:(id)path duration:(double)duration byteRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  pathCopy = path;
  lines = self->_lines;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"#EXTINF:%.5f", *&duration];
  [(NSMutableArray *)lines addObject:v10];

  if (length)
  {
    v11 = self->_lines;
    location = [MEMORY[0x277CCACA8] stringWithFormat:@"#EXT-X-BYTERANGE:%lu@%lu", length, location];
    [(NSMutableArray *)v11 addObject:location];
  }

  v13 = self->_lines;
  pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", pathCopy];
  [(NSMutableArray *)v13 addObject:pathCopy];
}

@end