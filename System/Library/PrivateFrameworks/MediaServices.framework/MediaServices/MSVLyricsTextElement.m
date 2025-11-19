@interface MSVLyricsTextElement
- (MSVLyricsTextElement)init;
- (id)description;
@end

@implementation MSVLyricsTextElement

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MSVLyricsTextElement *)self lyricsText];
  v8.receiver = self;
  v8.super_class = MSVLyricsTextElement;
  v5 = [(MSVLyricsElement *)&v8 description];
  v6 = [v3 stringWithFormat:@"Text: %@, lyrics element: %@", v4, v5];

  return v6;
}

- (MSVLyricsTextElement)init
{
  v5.receiver = self;
  v5.super_class = MSVLyricsTextElement;
  v2 = [(MSVLyricsTextElement *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD60] string];
    [(MSVLyricsXMLElement *)v2 setMutableText:v3];
  }

  return v2;
}

@end