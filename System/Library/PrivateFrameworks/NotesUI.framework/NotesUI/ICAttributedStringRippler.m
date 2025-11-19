@interface ICAttributedStringRippler
+ (BOOL)canAnimateString:(id)a3;
- (BOOL)finishedForTimeIndex:(unint64_t)a3;
- (ICAttributedStringRippler)initWithAttributedString:(id)a3 animatedRange:(_NSRange)a4;
- (_NSRange)animatedRange;
- (double)currentScaleForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5;
- (id)attributedStringForTimeIndex:(unint64_t)a3;
- (id)currentColorForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5;
- (id)currentShadowColorForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5;
- (unint64_t)currentIndexForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5 isFinished:(BOOL *)a6;
- (unint64_t)currentTimeIndex;
- (unint64_t)finishedTimeIndex;
- (void)generateValues;
- (void)start;
@end

@implementation ICAttributedStringRippler

- (ICAttributedStringRippler)initWithAttributedString:(id)a3 animatedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v13.receiver = self;
  v13.super_class = ICAttributedStringRippler;
  v8 = [(ICAttributedStringRippler *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(ICAttributedStringRippler *)v8 setString:v7];
    [(ICAttributedStringRippler *)v9 setAnimatedRange:location, length];
    [(ICAttributedStringRippler *)v9 setPreFrames:0];
    [(ICAttributedStringRippler *)v9 setAnimateFrames:60];
    [(ICAttributedStringRippler *)v9 setPostFrames:10];
    [(ICAttributedStringRippler *)v9 setDelayFrames:3];
    v10 = [v7 attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];
    [(ICAttributedStringRippler *)v9 setInitialFont:v10];

    v11 = [(ICAttributedStringRippler *)v9 initialFont];
    [v11 pointSize];
    [(ICAttributedStringRippler *)v9 setInitialFontSize:?];

    [(ICAttributedStringRippler *)v9 generateValues];
    [(ICAttributedStringRippler *)v9 start];
  }

  return v9;
}

+ (BOOL)canAnimateString:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 ic_animatableTokenCharacterSet];
  v6 = [v5 invertedSet];
  v7 = [v4 rangeOfCharacterFromSet:v6];

  return v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (void)generateValues
{
  v77 = *MEMORY[0x1E69E9840];
  v66 = [MEMORY[0x1E695DF70] array];
  v65 = [MEMORY[0x1E695DF70] array];
  v64 = [MEMORY[0x1E695DF70] array];
  v3 = [(ICAttributedStringRippler *)self preFrames];
  v4 = [(ICAttributedStringRippler *)self animateFrames]+ v3;
  v5 = [(ICAttributedStringRippler *)self postFrames];
  v60 = &v60;
  v67 = v4 + v5;
  v6 = 8 * (v4 + v5);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v60 - v12;
  v14 = MEMORY[0x1E695DF70];
  v15 = [(ICAttributedStringRippler *)self string];
  v16 = [v14 arrayWithCapacity:{objc_msgSend(v15, "length")}];

  v17 = [(ICAttributedStringRippler *)self animatedRange];
  v18 = [(ICAttributedStringRippler *)self animatedRange];
  if (v17 < v18 + v19)
  {
    v20 = *MEMORY[0x1E69DB650];
    do
    {
      v21 = [(ICAttributedStringRippler *)self string];
      v22 = [v21 attribute:v20 atIndex:v17 effectiveRange:0];

      [v16 addObject:v22];
      ++v17;
      v23 = [(ICAttributedStringRippler *)self animatedRange];
    }

    while (v17 < v23 + v24);
  }

  if (v67)
  {
    bzero(v8, v6);
    bzero(v13, v6);
    memset_pattern16(v11, &unk_1D44343B0, v6);
  }

  v63 = v16;
  v25 = [(ICAttributedStringRippler *)self preFrames];
  v26 = [(ICAttributedStringRippler *)self preFrames];
  if (v25 < [(ICAttributedStringRippler *)self animateFrames]+ v26)
  {
    do
    {
      v27 = (v25 - [(ICAttributedStringRippler *)self preFrames]);
      v28 = v27 / [(ICAttributedStringRippler *)self animateFrames];
      v29 = exp(v28 * -4.0);
      v30 = __sincos_stret(v28 * 13.6);
      v31 = 1.0 - v29 * (v30.__cosval + v30.__sinval * 0.3);
      *&v13[8 * v25] = v31;
      *&v8[8 * v25] = v31;
      *&v11[8 * v25++] = v29 * 0.3 * v30.__sinval + 1.0;
      v32 = [(ICAttributedStringRippler *)self preFrames];
    }

    while (v25 < [(ICAttributedStringRippler *)self animateFrames]+ v32);
  }

  v33 = [(ICAttributedStringRippler *)self preFrames];
  v34 = [(ICAttributedStringRippler *)self animateFrames]+ v33;
  v35 = [(ICAttributedStringRippler *)self preFrames];
  v36 = [(ICAttributedStringRippler *)self animateFrames]+ v35;
  if (v34 < v36 + [(ICAttributedStringRippler *)self postFrames])
  {
    do
    {
      *&v8[8 * v34] = 0x3FF0000000000000;
      *&v13[8 * v34] = 0x3FF0000000000000;
      *&v11[8 * v34++] = 0x3FF0000000000000;
      v37 = [(ICAttributedStringRippler *)self preFrames];
      v38 = [(ICAttributedStringRippler *)self animateFrames]+ v37;
    }

    while (v34 < v38 + [(ICAttributedStringRippler *)self postFrames]);
  }

  v62 = v11;
  v61 = self;
  if (v67)
  {
    v39 = v13;
    for (i = 0; i != v67; ++i)
    {
      v41 = [MEMORY[0x1E695DF70] array];
      v42 = [MEMORY[0x1E695DF70] array];
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v68 = v63;
      v43 = [v68 countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v73;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v73 != v45)
            {
              objc_enumerationMutation(v68);
            }

            v47 = *(*(&v72 + 1) + 8 * j);
            v71 = 0.0;
            v70 = 0.0;
            v69 = 0.0;
            [v47 getRed:&v71 green:&v70 blue:&v69 alpha:0];
            v48 = *&v8[8 * i];
            v49 = v48 * v71;
            v50 = v48 * v70;
            v51 = v48 * v69;
            v52 = [MEMORY[0x1E69DC888] colorWithRed:v48 * v71 green:v48 * v70 blue:v48 * v69 alpha:1.0];
            [v41 addObject:v52];

            v53 = [MEMORY[0x1E69DC888] colorWithRed:v49 green:v50 blue:v51 alpha:*&v39[8 * i]];
            [v42 addObject:v53];
          }

          v44 = [v68 countByEnumeratingWithState:&v72 objects:v76 count:16];
        }

        while (v44);
      }

      [v66 addObject:v41];
      [v65 addObject:v42];
      v54 = [MEMORY[0x1E696AD98] numberWithDouble:*&v62[8 * i]];
      [v64 addObject:v54];
    }
  }

  v55 = v61;
  v56 = v66;
  [(ICAttributedStringRippler *)v61 setColors:v66];
  v57 = v65;
  [(ICAttributedStringRippler *)v55 setShadowColors:v65];
  v58 = v55;
  v59 = v64;
  [(ICAttributedStringRippler *)v58 setScales:v64];
}

- (void)start
{
  [(ICAttributedStringRippler *)self setStartTime:CFAbsoluteTimeGetCurrent()];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();

  [(ICAttributedStringRippler *)self setReduceMotion:IsReduceMotionEnabled];
}

- (unint64_t)currentTimeIndex
{
  Current = CFAbsoluteTimeGetCurrent();
  [(ICAttributedStringRippler *)self startTime];
  return ((Current - v4) * 60.0);
}

- (unint64_t)finishedTimeIndex
{
  v3 = [(ICAttributedStringRippler *)self preFrames];
  v4 = [(ICAttributedStringRippler *)self animateFrames]+ v3;
  return v4 + [(ICAttributedStringRippler *)self postFrames];
}

- (unint64_t)currentIndexForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5 isFinished:(BOOL *)a6
{
  v11 = [(ICAttributedStringRippler *)self preFrames];
  v12 = [(ICAttributedStringRippler *)self animateFrames]+ v11;
  v13 = v12 + [(ICAttributedStringRippler *)self postFrames];
  v14 = a5 % (2 * (v13 + [(ICAttributedStringRippler *)self delayFrames]* a4));
  v15 = a3 + 1;
  if (v14 >= [(ICAttributedStringRippler *)self delayFrames]* (a3 + 1) && v14 < v13 + [(ICAttributedStringRippler *)self delayFrames]* v15)
  {
    v16 = [(ICAttributedStringRippler *)self delayFrames];
    v17 = 0;
    result = v14 - v16 * v15;
    if (!a6)
    {
      return result;
    }

LABEL_9:
    *a6 = v17;
    return result;
  }

  v19 = [(ICAttributedStringRippler *)self delayFrames];
  v17 = v14 >= v19 * v15;
  if (v14 < v19 * v15)
  {
    result = 0;
  }

  else
  {
    result = v13 - 1;
  }

  if (a6)
  {
    goto LABEL_9;
  }

  return result;
}

- (id)currentColorForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5
{
  v9 = [(ICAttributedStringRippler *)self colors];
  v10 = [v9 objectAtIndex:{-[ICAttributedStringRippler currentIndexForGlyphIndex:numberOfGlyphs:timeIndex:isFinished:](self, "currentIndexForGlyphIndex:numberOfGlyphs:timeIndex:isFinished:", a3, a4, a5, 0)}];
  v11 = [v10 objectAtIndex:a3];

  return v11;
}

- (id)currentShadowColorForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5
{
  v9 = [(ICAttributedStringRippler *)self shadowColors];
  v10 = [v9 objectAtIndex:{-[ICAttributedStringRippler currentIndexForGlyphIndex:numberOfGlyphs:timeIndex:isFinished:](self, "currentIndexForGlyphIndex:numberOfGlyphs:timeIndex:isFinished:", a3, a4, a5, 0)}];
  v11 = [v10 objectAtIndex:a3];

  return v11;
}

- (double)currentScaleForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5
{
  if ([(ICAttributedStringRippler *)self reduceMotion])
  {
    return 1.0;
  }

  v10 = [(ICAttributedStringRippler *)self scales];
  v11 = [v10 objectAtIndex:{-[ICAttributedStringRippler currentIndexForGlyphIndex:numberOfGlyphs:timeIndex:isFinished:](self, "currentIndexForGlyphIndex:numberOfGlyphs:timeIndex:isFinished:", a3, a4, a5, 0)}];
  [v11 doubleValue];
  v13 = v12;

  return v13;
}

- (id)attributedStringForTimeIndex:(unint64_t)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__42;
  v17 = __Block_byref_object_dispose__42;
  v5 = [(ICAttributedStringRippler *)self string];
  v18 = [v5 mutableCopy];

  v6 = [(ICAttributedStringRippler *)self string];
  v7 = [v6 string];
  v8 = [(ICAttributedStringRippler *)self animatedRange];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__ICAttributedStringRippler_attributedStringForTimeIndex___block_invoke;
  v12[3] = &unk_1E846BBB0;
  v12[4] = self;
  v12[5] = &v13;
  v12[6] = a3;
  [v7 enumerateSubstringsInRange:v8 options:v9 usingBlock:{2, v12}];

  v10 = [v14[5] copy];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __58__ICAttributedStringRippler_attributedStringForTimeIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a3 - [*(a1 + 32) animatedRange];
  v8 = *(a1 + 32);
  [v8 animatedRange];
  v21 = [v8 currentColorForGlyphIndex:v7 numberOfGlyphs:v9 timeIndex:*(a1 + 48)];
  v10 = *(a1 + 32);
  [v10 animatedRange];
  [v10 currentScaleForGlyphIndex:v7 numberOfGlyphs:v11 timeIndex:*(a1 + 48)];
  v13 = v12;
  [*(a1 + 32) initialFontSize];
  v15 = v13 * v14;
  v16 = MEMORY[0x1E69DB878];
  v17 = [*(a1 + 32) initialFont];
  v18 = [v17 fontDescriptor];
  v19 = [v16 fontWithDescriptor:v18 size:v15];

  v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  [v20 ic_setNonNilObject:v21 forKey:*MEMORY[0x1E69DB650]];
  [v20 ic_setNonNilObject:0 forKey:*MEMORY[0x1E69DB6A8]];
  [v20 ic_setNonNilObject:v19 forKey:*MEMORY[0x1E69DB648]];
  [*(*(*(a1 + 40) + 8) + 40) setAttributes:v20 range:{a3, a4}];
}

- (BOOL)finishedForTimeIndex:(unint64_t)a3
{
  v10 = 0;
  v5 = [(ICAttributedStringRippler *)self animatedRange];
  v7 = v6;
  [(ICAttributedStringRippler *)self animatedRange];
  [(ICAttributedStringRippler *)self currentIndexForGlyphIndex:v5 + v7 numberOfGlyphs:v8 timeIndex:a3 isFinished:&v10];
  return v10;
}

- (_NSRange)animatedRange
{
  length = self->_animatedRange.length;
  location = self->_animatedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end