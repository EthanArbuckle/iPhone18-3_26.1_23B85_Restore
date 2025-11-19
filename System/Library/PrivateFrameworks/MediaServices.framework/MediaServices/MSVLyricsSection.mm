@interface MSVLyricsSection
+ (int64_t)_songPartForText:(id)a3;
- (MSVLyricsSection)init;
- (id)description;
- (void)setSongPartText:(id)a3;
@end

@implementation MSVLyricsSection

- (void)setSongPartText:(id)a3
{
  objc_storeStrong(&self->_songPartText, a3);
  v5 = a3;
  v6 = [MSVLyricsSection _songPartForText:v5];

  [(MSVLyricsSection *)self setSongPart:v6];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MSVLyricsSection *)self songPart];
  v5 = [(MSVLyricsSection *)self songPartText];
  v6 = [(MSVLyricsSection *)self lines];
  v7 = [v6 count];
  v11.receiver = self;
  v11.super_class = MSVLyricsSection;
  v8 = [(MSVLyricsElement *)&v11 description];
  v9 = [v3 stringWithFormat:@"Song part: %ld (%@), %ld lines, element: %@", v4, v5, v7, v8];

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

+ (int64_t)_songPartForText:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 caseInsensitiveCompare:@"verse"])
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