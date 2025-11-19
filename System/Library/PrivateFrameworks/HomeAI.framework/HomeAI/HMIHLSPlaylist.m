@interface HMIHLSPlaylist
- (HMIHLSPlaylist)initWithPlaylistString:(id)a3;
- (HMIHLSPlaylist)initWithTargetDuration:(double)a3;
- (NSString)playlistString;
- (void)appendEncryptionModeWithPath:(id)a3;
- (void)appendInitializationSegmentWithPath:(id)a3;
- (void)appendSeparableSegmentWithPath:(id)a3 duration:(double)a4 byteRange:(_NSRange)a5;
@end

@implementation HMIHLSPlaylist

- (HMIHLSPlaylist)initWithPlaylistString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMIHLSPlaylist;
  v5 = [(HMIHLSPlaylist *)&v10 init];
  if (v5)
  {
    v6 = [v4 componentsSeparatedByString:@"\n"];
    v7 = [v6 mutableCopy];
    lines = v5->_lines;
    v5->_lines = v7;
  }

  return v5;
}

- (HMIHLSPlaylist)initWithTargetDuration:(double)a3
{
  v10.receiver = self;
  v10.super_class = HMIHLSPlaylist;
  v4 = [(HMIHLSPlaylist *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    lines = v4->_lines;
    v4->_lines = v5;

    [(NSMutableArray *)v4->_lines addObject:@"#EXTM3U"];
    [(NSMutableArray *)v4->_lines addObject:@"#EXT-X-VERSION:7"];
    v7 = v4->_lines;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"#EXT-X-TARGETDURATION:%.6f", *&a3];
    [(NSMutableArray *)v7 addObject:v8];

    [(NSMutableArray *)v4->_lines addObject:@"#EXT-X-PLAYLIST-TYPE:VOD"];
    [(NSMutableArray *)v4->_lines addObject:@"#EXT-X-INDEPENDENT-SEGMENTS"];
  }

  return v4;
}

- (NSString)playlistString
{
  v2 = [(HMIHLSPlaylist *)self lines];
  v3 = [v2 componentsJoinedByString:@"\n"];

  return v3;
}

- (void)appendEncryptionModeWithPath:(id)a3
{
  lines = self->_lines;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"#EXT-X-KEY:METHOD=AES-256-GCM, URI=%@", a3];
  [(NSMutableArray *)lines addObject:v4];
}

- (void)appendInitializationSegmentWithPath:(id)a3
{
  lines = self->_lines;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"#EXT-X-MAP:URI=%@", a3];
  [(NSMutableArray *)lines addObject:v4];
}

- (void)appendSeparableSegmentWithPath:(id)a3 duration:(double)a4 byteRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v15 = a3;
  lines = self->_lines;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"#EXTINF:%.5f", *&a4];
  [(NSMutableArray *)lines addObject:v10];

  if (length)
  {
    v11 = self->_lines;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"#EXT-X-BYTERANGE:%lu@%lu", length, location];
    [(NSMutableArray *)v11 addObject:v12];
  }

  v13 = self->_lines;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v15];
  [(NSMutableArray *)v13 addObject:v14];
}

@end