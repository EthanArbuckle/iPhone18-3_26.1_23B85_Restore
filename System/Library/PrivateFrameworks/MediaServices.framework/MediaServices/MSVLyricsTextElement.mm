@interface MSVLyricsTextElement
- (MSVLyricsTextElement)init;
- (id)description;
@end

@implementation MSVLyricsTextElement

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  lyricsText = [(MSVLyricsTextElement *)self lyricsText];
  v8.receiver = self;
  v8.super_class = MSVLyricsTextElement;
  v5 = [(MSVLyricsElement *)&v8 description];
  v6 = [v3 stringWithFormat:@"Text: %@, lyrics element: %@", lyricsText, v5];

  return v6;
}

- (MSVLyricsTextElement)init
{
  v5.receiver = self;
  v5.super_class = MSVLyricsTextElement;
  v2 = [(MSVLyricsTextElement *)&v5 init];
  if (v2)
  {
    string = [MEMORY[0x1E696AD60] string];
    [(MSVLyricsXMLElement *)v2 setMutableText:string];
  }

  return v2;
}

@end