@interface MSVLyricsWord
- (MSVLyricsLine)parentLine;
- (MSVLyricsWord)init;
- (MSVLyricsWord)parentWord;
- (_NSRange)characterRange;
- (id)agent;
@end

@implementation MSVLyricsWord

- (_NSRange)characterRange
{
  p_characterRange = &self->_characterRange;
  location = self->_characterRange.location;
  length = p_characterRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (MSVLyricsWord)parentWord
{
  WeakRetained = objc_loadWeakRetained(&self->_parentWord);

  return WeakRetained;
}

- (MSVLyricsLine)parentLine
{
  WeakRetained = objc_loadWeakRetained(&self->_parentLine);

  return WeakRetained;
}

- (id)agent
{
  v8.receiver = self;
  v8.super_class = MSVLyricsWord;
  agent = [(MSVLyricsElement *)&v8 agent];
  v4 = agent;
  if (agent)
  {
    agent2 = agent;
  }

  else
  {
    parentLine = [(MSVLyricsWord *)self parentLine];
    agent2 = [parentLine agent];
  }

  return agent2;
}

- (MSVLyricsWord)init
{
  v5.receiver = self;
  v5.super_class = MSVLyricsWord;
  v2 = [(MSVLyricsTextElement *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSVLyricsElement *)v2 setType:2];
  }

  return v3;
}

@end