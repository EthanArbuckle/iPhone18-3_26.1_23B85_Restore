@interface EMKGlyphRippler
- (BOOL)finishedForGlyphIndex:(unint64_t)index numberOfGlyphs:(unint64_t)glyphs timeIndex:(unint64_t)timeIndex;
- (CGSize)currentOffsetForGlyphIndex:(unint64_t)index numberOfGlyphs:(unint64_t)glyphs timeIndex:(unint64_t)timeIndex;
- (EMKGlyphRippler)init;
- (double)currentScaleForGlyphIndex:(unint64_t)index numberOfGlyphs:(unint64_t)glyphs timeIndex:(unint64_t)timeIndex;
- (id)currentColorForGlyphIndex:(unint64_t)index numberOfGlyphs:(unint64_t)glyphs timeIndex:(unint64_t)timeIndex;
- (id)currentShadowColorForGlyphIndex:(unint64_t)index numberOfGlyphs:(unint64_t)glyphs timeIndex:(unint64_t)timeIndex;
- (unint64_t)currentIndexForGlyphIndex:(unint64_t)index numberOfGlyphs:(unint64_t)glyphs timeIndex:(unint64_t)timeIndex isFinished:(BOOL *)finished;
- (void)generateValues;
- (void)setDelayFrames:(unint64_t)frames;
- (void)setPostFrames:(unint64_t)frames;
- (void)setPreFrames:(unint64_t)frames;
- (void)startWithDarkMode:(BOOL)mode;
@end

@implementation EMKGlyphRippler

- (EMKGlyphRippler)init
{
  v5.receiver = self;
  v5.super_class = EMKGlyphRippler;
  v2 = [(EMKGlyphRippler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_preFrames = xmmword_2155F5400;
    *&v2->_postFrames = xmmword_2155F5410;
    [(EMKGlyphRippler *)v2 generateValues];
    [(EMKGlyphRippler *)v3 start];
  }

  return v3;
}

- (void)generateValues
{
  v64 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  array6 = [MEMORY[0x277CBEB18] array];
  preFrames = self->_preFrames;
  v4 = self->_animateFrames + preFrames + self->_postFrames;
  v5 = (8 * v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = (&v55 - v5);
  v7 = (&v55 - v5);
  v8 = (&v55 - v5);
  v9 = (&v55 - v5);
  if (preFrames)
  {
    bzero(&v55 - v5, 8 * preFrames);
    bzero(v9, 8 * preFrames);
    bzero(v8, 8 * preFrames);
    memset_pattern16(v7, &unk_2155F5420, 8 * preFrames);
  }

  animateFrames = self->_animateFrames;
  selfCopy = self;
  *&v59 = animateFrames + preFrames;
  if (preFrames < animateFrames + preFrames)
  {
    bzero(&v8[preFrames], 8 * animateFrames);
    v11 = 0;
    v12 = &v7[preFrames];
    v13 = &v6[preFrames];
    v14 = &v9[preFrames];
    do
    {
      v15 = v11 / animateFrames;
      v16 = exp(v15 * -4.0);
      v17 = __sincos_stret(v15 * 13.6);
      v18 = 1.0 - v16 * (v17.__cosval + v17.__sinval * 0.3);
      v14[v11] = v18;
      v13[v11] = v18;
      v12[v11++] = v16 * 0.3 * v17.__sinval + 1.0;
    }

    while (animateFrames != v11);
  }

  v19 = v59;
  postFrames = selfCopy->_postFrames;
  if (*&v19 < postFrames + *&v19)
  {
    v21 = 8 * postFrames;
    bzero(&v8[*&v59], 8 * postFrames);
    memset_pattern16(&v6[*&v19], &unk_2155F5420, v21);
    memset_pattern16(&v9[*&v19], &unk_2155F5420, v21);
    memset_pattern16(&v7[*&v19], &unk_2155F5420, v21);
  }

  v22 = array;
  v23 = array2;
  if (v4)
  {
    v59 = 127.0;
    do
    {
      v24 = *v6++;
      v25 = v24 * 255.0 / 255.0;
      v26 = v24 * v59 / 255.0;
      v27 = v24 * 0.0 / 255.0;
      v28 = 1.0 - v24 + v25;
      v29 = 1.0 - v24 + v26;
      v30 = 1.0 - v24 + v27;
      v31 = [MEMORY[0x277D75348] colorWithRed:v25 green:v26 blue:v27 alpha:1.0];
      [(NSArray *)v22 addObject:v31];

      v32 = [MEMORY[0x277D75348] colorWithRed:v28 green:v29 blue:v30 alpha:1.0];
      [(NSArray *)v23 addObject:v32];

      v33 = *v9++;
      v34 = [MEMORY[0x277D75348] colorWithRed:v25 green:v26 blue:v27 alpha:v33];
      [(NSArray *)array3 addObject:v34];

      v35 = [MEMORY[0x277D75348] colorWithRed:v28 green:v29 blue:v30 alpha:v33];
      [(NSArray *)array4 addObject:v35];

      v36 = *v7++;
      v37 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
      [(NSArray *)array5 addObject:v37];

      v38 = *v8++;
      v39 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
      [(NSArray *)array6 addObject:v39];

      --v4;
    }

    while (v4);
  }

  v40 = selfCopy;
  colors = selfCopy->_colors;
  selfCopy->_colors = v22;
  v59 = COERCE_DOUBLE(v22);

  darkModeColors = v40->_darkModeColors;
  v40->_darkModeColors = v23;
  v43 = v23;

  shadowColors = v40->_shadowColors;
  v45 = array3;
  v40->_shadowColors = array3;
  v46 = v45;

  darkModeShadowColors = v40->_darkModeShadowColors;
  v48 = array4;
  v40->_darkModeShadowColors = array4;
  v49 = v48;

  scales = v40->_scales;
  v51 = array5;
  v40->_scales = array5;
  v52 = v51;

  offsets = v40->_offsets;
  v40->_offsets = array6;

  v54 = v59;
}

- (void)startWithDarkMode:(BOOL)mode
{
  self->_startTime = CFAbsoluteTimeGetCurrent();
  self->_reduceMotion = UIAccessibilityIsReduceMotionEnabled();
  self->_darkMode = mode;
}

- (unint64_t)currentIndexForGlyphIndex:(unint64_t)index numberOfGlyphs:(unint64_t)glyphs timeIndex:(unint64_t)timeIndex isFinished:(BOOL *)finished
{
  v6 = self->_animateFrames + self->_preFrames + self->_postFrames;
  v7 = self->_delayFrames + self->_delayFrames * index;
  v8 = v7 + v6;
  if (finished)
  {
    v10 = timeIndex >= v7 && v8 <= timeIndex;
    *finished = v10;
  }

  v11 = v6 - 1;
  if (timeIndex < v7)
  {
    v11 = 0;
  }

  if (v8 > timeIndex && timeIndex >= v7)
  {
    return timeIndex - v7;
  }

  else
  {
    return v11;
  }
}

- (id)currentColorForGlyphIndex:(unint64_t)index numberOfGlyphs:(unint64_t)glyphs timeIndex:(unint64_t)timeIndex
{
  v9 = 8;
  if (self->_darkMode)
  {
    v9 = 16;
  }

  v10 = *(&self->super.isa + v9);
  v11 = [v10 objectAtIndex:{-[EMKGlyphRippler currentIndexForGlyphIndex:numberOfGlyphs:timeIndex:isFinished:](self, "currentIndexForGlyphIndex:numberOfGlyphs:timeIndex:isFinished:", index, glyphs, timeIndex, 0)}];

  return v11;
}

- (id)currentShadowColorForGlyphIndex:(unint64_t)index numberOfGlyphs:(unint64_t)glyphs timeIndex:(unint64_t)timeIndex
{
  v9 = 24;
  if (self->_darkMode)
  {
    v9 = 32;
  }

  v10 = *(&self->super.isa + v9);
  v11 = [v10 objectAtIndex:{-[EMKGlyphRippler currentIndexForGlyphIndex:numberOfGlyphs:timeIndex:isFinished:](self, "currentIndexForGlyphIndex:numberOfGlyphs:timeIndex:isFinished:", index, glyphs, timeIndex, 0)}];

  return v11;
}

- (double)currentScaleForGlyphIndex:(unint64_t)index numberOfGlyphs:(unint64_t)glyphs timeIndex:(unint64_t)timeIndex
{
  if (self->_reduceMotion)
  {
    return 1.0;
  }

  v6 = [(NSArray *)self->_scales objectAtIndex:[(EMKGlyphRippler *)self currentIndexForGlyphIndex:index numberOfGlyphs:glyphs timeIndex:timeIndex isFinished:0]];
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (CGSize)currentOffsetForGlyphIndex:(unint64_t)index numberOfGlyphs:(unint64_t)glyphs timeIndex:(unint64_t)timeIndex
{
  if (self->_reduceMotion)
  {
    v5 = 0.0;
  }

  else
  {
    v6 = [(NSArray *)self->_offsets objectAtIndex:[(EMKGlyphRippler *)self currentIndexForGlyphIndex:index numberOfGlyphs:glyphs timeIndex:timeIndex isFinished:0]];
    [v6 doubleValue];
    v5 = v7;
  }

  v8 = 0.0;
  v9 = v5;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)finishedForGlyphIndex:(unint64_t)index numberOfGlyphs:(unint64_t)glyphs timeIndex:(unint64_t)timeIndex
{
  v6 = 0;
  [(EMKGlyphRippler *)self currentIndexForGlyphIndex:index numberOfGlyphs:glyphs timeIndex:timeIndex isFinished:&v6];
  return v6;
}

- (void)setPreFrames:(unint64_t)frames
{
  if (frames <= 1)
  {
    framesCopy = 1;
  }

  else
  {
    framesCopy = frames;
  }

  self->_preFrames = framesCopy;
  [(EMKGlyphRippler *)self generateValues];
}

- (void)setPostFrames:(unint64_t)frames
{
  if (frames <= 1)
  {
    framesCopy = 1;
  }

  else
  {
    framesCopy = frames;
  }

  self->_postFrames = framesCopy;
  [(EMKGlyphRippler *)self generateValues];
}

- (void)setDelayFrames:(unint64_t)frames
{
  if (frames <= 1)
  {
    framesCopy = 1;
  }

  else
  {
    framesCopy = frames;
  }

  self->_delayFrames = framesCopy;
  [(EMKGlyphRippler *)self generateValues];
}

@end