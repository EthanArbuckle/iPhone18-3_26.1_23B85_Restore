@interface MSVLyricsLine
- (BOOL)containsTimeOffset:(double)offset withErrorMargin:(double)margin;
- (MSVLyricsLine)init;
- (MSVLyricsSection)parentSection;
- (NSAttributedString)primaryVocalText;
- (id)agent;
- (id)description;
@end

@implementation MSVLyricsLine

- (MSVLyricsSection)parentSection
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSection);

  return WeakRetained;
}

- (NSAttributedString)primaryVocalText
{
  if ([(MSVLyricsLine *)self hasBackgroundVocal])
  {
    lyricsText = self->_primaryVocalText;
  }

  else
  {
    lyricsText = [(MSVLyricsTextElement *)self lyricsText];
  }

  return lyricsText;
}

- (id)agent
{
  v8.receiver = self;
  v8.super_class = MSVLyricsLine;
  agent = [(MSVLyricsElement *)&v8 agent];
  v4 = agent;
  if (agent)
  {
    agent2 = agent;
  }

  else
  {
    parentSection = [(MSVLyricsLine *)self parentSection];
    agent2 = [parentSection agent];
  }

  return agent2;
}

- (BOOL)containsTimeOffset:(double)offset withErrorMargin:(double)margin
{
  [(MSVLyricsElement *)self startTime];
  if (v7 - margin > offset)
  {
    return 0;
  }

  [(MSVLyricsElement *)self endTime];
  return v9 + margin >= offset;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  lineIndex = [(MSVLyricsLine *)self lineIndex];
  v8.receiver = self;
  v8.super_class = MSVLyricsLine;
  v5 = [(MSVLyricsTextElement *)&v8 description];
  v6 = [v3 stringWithFormat:@"Line index: %ld, lyrics text element: %@", lineIndex, v5];

  return v6;
}

- (MSVLyricsLine)init
{
  v7.receiver = self;
  v7.super_class = MSVLyricsLine;
  v2 = [(MSVLyricsTextElement *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(MSVLyricsElement *)v2 setType:1];
    v4 = objc_opt_new();
    primaryVocalText = v3->_primaryVocalText;
    v3->_primaryVocalText = v4;
  }

  return v3;
}

@end