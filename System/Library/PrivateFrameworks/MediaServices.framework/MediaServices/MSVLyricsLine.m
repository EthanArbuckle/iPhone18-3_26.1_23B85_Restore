@interface MSVLyricsLine
- (BOOL)containsTimeOffset:(double)a3 withErrorMargin:(double)a4;
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
    v3 = self->_primaryVocalText;
  }

  else
  {
    v3 = [(MSVLyricsTextElement *)self lyricsText];
  }

  return v3;
}

- (id)agent
{
  v8.receiver = self;
  v8.super_class = MSVLyricsLine;
  v3 = [(MSVLyricsElement *)&v8 agent];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(MSVLyricsLine *)self parentSection];
    v5 = [v6 agent];
  }

  return v5;
}

- (BOOL)containsTimeOffset:(double)a3 withErrorMargin:(double)a4
{
  [(MSVLyricsElement *)self startTime];
  if (v7 - a4 > a3)
  {
    return 0;
  }

  [(MSVLyricsElement *)self endTime];
  return v9 + a4 >= a3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MSVLyricsLine *)self lineIndex];
  v8.receiver = self;
  v8.super_class = MSVLyricsLine;
  v5 = [(MSVLyricsTextElement *)&v8 description];
  v6 = [v3 stringWithFormat:@"Line index: %ld, lyrics text element: %@", v4, v5];

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