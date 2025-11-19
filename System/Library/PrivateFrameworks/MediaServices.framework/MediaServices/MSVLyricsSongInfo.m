@interface MSVLyricsSongInfo
+ (id)_descriptionForLyricsInfoType:(int64_t)a3;
+ (id)_elementsInArray:(id)a3 atTimeOffset:(double)a4 errorMargin:(double)a5;
- (MSVLyricsSongInfo)init;
- (id)description;
- (id)lyricsLineStartingBeforeTimeOffset:(double)a3;
- (id)lyricsLinesAtTimeOffset:(double)a3 errorMargin:(double)a4;
- (id)lyricsWordsAtTimeOffset:(double)a3 errorMargin:(double)a4;
- (id)translatedTextForLyricsLine:(id)a3 language:(id)a4;
- (void)setLyricsLines:(id)a3;
- (void)setTranslations:(id)a3;
@end

@implementation MSVLyricsSongInfo

uint64_t __49__MSVLyricsSongInfo__sortLyricsLinesByStartTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 startTime];
  v7 = v6;
  [v5 startTime];
  if (v7 >= v8)
  {
    [v4 startTime];
    v11 = v10;
    [v5 startTime];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)setLyricsLines:(id)a3
{
  v4 = [(MSVLyricsSongInfo *)self _sortLyricsLinesByStartTime:a3];
  lyricsLines = self->_lyricsLines;
  self->_lyricsLines = v4;

  if ([(NSArray *)self->_lyricsLines count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_lyricsLines objectAtIndexedSubscript:v6];
      [v7 setLineIndex:v6];
      v8 = v6 + 1;
      if ([(NSArray *)self->_lyricsLines count]- 1 <= v6)
      {
        [v7 setNextLine:0];
      }

      else
      {
        v9 = [(NSArray *)self->_lyricsLines objectAtIndexedSubscript:v6 + 1];
        [v7 setNextLine:v9];
      }

      v6 = v8;
    }

    while ([(NSArray *)self->_lyricsLines count]> v8);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MSVLyricsSongInfo _descriptionForLyricsInfoType:[(MSVLyricsSongInfo *)self type]];
  [(MSVLyricsSongInfo *)self songDuration];
  v6 = v5;
  v7 = [(MSVLyricsSongInfo *)self lyricsSections];
  v8 = [v7 count];
  v9 = [(MSVLyricsSongInfo *)self lyricsLines];
  v10 = [v9 count];
  v11 = [(MSVLyricsSongInfo *)self songwriters];
  v12 = [(MSVLyricsSongInfo *)self translations];
  v13 = [(MSVLyricsSongInfo *)self transliterations];
  v14 = [v3 stringWithFormat:@"Type: %@, duration: %g, %ld sections, %ld lines, songwriters: %@, translations: %@, transliterations: %@", v4, v6, v8, v10, v11, v12, v13];

  return v14;
}

- (id)translatedTextForLyricsLine:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSVLyricsSongInfo *)self translationsMap];
  if (![v8 count] || !objc_msgSend(v7, "length"))
  {
    v14 = 0;
    goto LABEL_6;
  }

  v9 = [v6 translationKey];
  v10 = [v9 length];

  if (v10)
  {
    v8 = [(MSVLyricsSongInfo *)self translationsMap];
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v6 translationKey];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = [v13 lyricsText];

LABEL_6:
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (id)lyricsLineStartingBeforeTimeOffset:(double)a3
{
  v5 = [(MSVLyricsSongInfo *)self lyricsLines];
  if ([(MSVLyricsSongInfo *)self type])
  {
    v6 = [(MSVLyricsSongInfo *)self lyricsLines];
    v7 = [v6 firstObject];
    [v7 startTime];
    v9 = v8;

    if (v9 <= a3)
    {
      v10 = [v5 count] - 1;
      if (v10 >= 0)
      {
        v11 = 0;
        do
        {
          v12 = v11 + (v10 - v11) / 2;
          v13 = [v5 objectAtIndexedSubscript:v12];
          [v13 startTime];
          v15 = v14;
          if (v12 >= [v5 count] - 1)
          {
            v18 = 1.79769313e308;
          }

          else
          {
            v16 = [v5 objectAtIndexedSubscript:v12 + 1];
            [v16 startTime];
            v18 = v17;
          }

          if (v15 <= a3)
          {
            if (v18 >= a3)
            {
              goto LABEL_14;
            }

            v11 = v12 + 1;
          }

          else
          {
            v10 = v12 - 1;
          }
        }

        while (v11 <= v10);
      }
    }
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (id)lyricsWordsAtTimeOffset:(double)a3 errorMargin:(double)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = [(MSVLyricsSongInfo *)self lyricsLines];
  v7 = [MSVLyricsSongInfo _elementsInArray:v6 atTimeOffset:a3 errorMargin:a4];

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) words];
        v15 = [MSVLyricsSongInfo _elementsInArray:v14 atTimeOffset:a3 errorMargin:a4];
        [v8 addObjectsFromArray:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)lyricsLinesAtTimeOffset:(double)a3 errorMargin:(double)a4
{
  v6 = [(MSVLyricsSongInfo *)self lyricsLines];
  v7 = [MSVLyricsSongInfo _elementsInArray:v6 atTimeOffset:a3 errorMargin:a4];

  return v7;
}

- (void)setTranslations:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_translations, a3);
  v6 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (![v12 type])
        {
          v13 = [v12 linesMap];
          v14 = [v12 language];
          [v6 setObject:v13 forKeyedSubscript:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(MSVLyricsSongInfo *)self setTranslationsMap:v6];
  v15 = *MEMORY[0x1E69E9840];
}

- (MSVLyricsSongInfo)init
{
  v12.receiver = self;
  v12.super_class = MSVLyricsSongInfo;
  v2 = [(MSVLyricsSongInfo *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_type = 0;
    songwriters = v2->_songwriters;
    v5 = MEMORY[0x1E695E0F0];
    v2->_songwriters = MEMORY[0x1E695E0F0];

    lyricsLines = v3->_lyricsLines;
    v3->_lyricsLines = v5;

    lyricsSections = v3->_lyricsSections;
    v3->_lyricsSections = v5;

    translationsMap = v3->_translationsMap;
    v3->_translationsMap = MEMORY[0x1E695E0F8];

    translations = v3->_translations;
    v3->_translations = v5;

    transliterations = v3->_transliterations;
    v3->_transliterations = v5;
  }

  return v3;
}

+ (id)_descriptionForLyricsInfoType:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7981BF0[a3];
  }
}

+ (id)_elementsInArray:(id)a3 atTimeOffset:(double)a4 errorMargin:(double)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = a4 - a5;
    v13 = a4 + a5;
    v14 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        [v16 startTime];
        if (v13 >= v17 && ([v16 endTime], v12 <= v18))
        {
          [v8 addObject:v16];
        }

        else
        {
          [v16 startTime];
          if (v13 < v19)
          {
            goto LABEL_13;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

LABEL_13:

  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

@end