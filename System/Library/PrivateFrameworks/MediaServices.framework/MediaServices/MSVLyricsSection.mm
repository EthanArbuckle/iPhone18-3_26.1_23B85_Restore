@interface MSVLyricsSection
+ (int64_t)_songPartForText:(id)text;
- (MSVLyricsSection)init;
- (id)description;
- (void)setSongPartText:(id)text;
@end

@implementation MSVLyricsSection

- (void)setSongPartText:(id)text
{
  objc_storeStrong(&self->_songPartText, text);
  textCopy = text;
  v6 = [MSVLyricsSection _songPartForText:textCopy];

  [(MSVLyricsSection *)self setSongPart:v6];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  songPart = [(MSVLyricsSection *)self songPart];
  songPartText = [(MSVLyricsSection *)self songPartText];
  lines = [(MSVLyricsSection *)self lines];
  v7 = [lines count];
  v11.receiver = self;
  v11.super_class = MSVLyricsSection;
  v8 = [(MSVLyricsElement *)&v11 description];
  v9 = [v3 stringWithFormat:@"Song part: %ld (%@), %ld lines, element: %@", songPart, songPartText, v7, v8];

  return v9;
}

- (MSVLyricsSection)init
{
  v6.receiver = self;
  v6.super_class = MSVLyricsSection;
  v2 = [(MSVLyricsSection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MSVLyricsElement *)v2 setType:0];
    lines = v3->_lines;
    v3->_lines = MEMORY[0x1E695E0F0];
  }

  return v3;
}

+ (int64_t)_songPartForText:(id)text
{
  textCopy = text;
  v4 = textCopy;
  if (textCopy)
  {
    if ([textCopy caseInsensitiveCompare:@"verse"])
    {
      if ([v4 caseInsensitiveCompare:@"chorus"])
      {
        if ([v4 caseInsensitiveCompare:@"pre-chorus"])
        {
          if ([v4 caseInsensitiveCompare:@"bridge"])
          {
            if ([v4 caseInsensitiveCompare:@"intro"])
            {
              if ([v4 caseInsensitiveCompare:@"outro"])
              {
                if ([v4 caseInsensitiveCompare:@"refrain"])
                {
                  v5 = 8 * ([v4 caseInsensitiveCompare:@"instrumental"] == 0);
                }

                else
                {
                  v5 = 7;
                }
              }

              else
              {
                v5 = 6;
              }
            }

            else
            {
              v5 = 5;
            }
          }

          else
          {
            v5 = 4;
          }
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end