@interface CKMentionRippler
- (BOOL)finishedForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5;
- (CGSize)currentOffsetForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5;
- (CKMentionRippler)init;
- (double)currentScaleForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5;
- (id)currentColorForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5;
- (id)currentShadowColorForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5;
- (unint64_t)currentIndexForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5 isFinished:(BOOL *)a6;
- (void)generateValues;
@end

@implementation CKMentionRippler

- (void)generateValues
{
  v54[1] = *MEMORY[0x1E69E9840];
  v47 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  v50 = [MEMORY[0x1E695DF70] array];
  v51 = [MEMORY[0x1E695DF70] array];
  v3 = self->_animateFrames + self->_preFrames + self->_postFrames;
  v4 = (&v45 - ((8 * v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v4, 8 * v3);
  v5 = v4;
  bzero(v4, 8 * v3);
  v6 = v4;
  bzero(v4, 8 * v3);
  v7 = v4;
  bzero(v4, 8 * v3);
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [v9 entryFieldConfirmedMentionColor];

  v53 = 0.0;
  v54[0] = 0.0;
  v52 = 0.0;
  v46 = v10;
  [v10 getRed:v54 green:&v53 blue:&v52 alpha:0];
  if (v3)
  {
    bzero(v4, 8 * v3);
    bzero(v4, 8 * v3);
    bzero(v4, 8 * v3);
    memset_pattern16(v4, &unk_190DD07A0, 8 * v3);
  }

  preFrames = self->_preFrames;
  animateFrames = self->_animateFrames;
  v49 = self;
  v45 = animateFrames + preFrames;
  if (preFrames < animateFrames + preFrames)
  {
    bzero(&v4[preFrames], 8 * animateFrames);
    v13 = 0;
    v14 = &v4[preFrames];
    do
    {
      v15 = v13 / animateFrames;
      v16 = exp(v15 * -4.0);
      v17 = __sincos_stret(v15 * 13.6);
      v18 = 1.0 - v16 * (v17.__cosval + v17.__sinval * 0.3);
      v14[v13] = v18;
      v14[v13] = v18;
      v14[v13++] = v16 * 0.3 * v17.__sinval + 1.0;
    }

    while (animateFrames != v13);
  }

  postFrames = v49->_postFrames;
  v20 = v45;
  if (v20 < postFrames + v20)
  {
    v21 = 8 * postFrames;
    bzero(&v4[v45], 8 * postFrames);
    memset_pattern16(&v4[v20], &unk_190DD07A0, v21);
    memset_pattern16(&v4[v20], &unk_190DD07A0, v21);
    memset_pattern16(&v4[v20], &unk_190DD07A0, v21);
  }

  v22 = v47;
  for (i = v48; v3; --v3)
  {
    v24 = *v4++;
    v25 = v24 * v54[0];
    v26 = v24 * v53;
    v27 = v24 * v52;
    v28 = [MEMORY[0x1E69DC888] colorWithRed:v24 * v54[0] green:v24 * v53 blue:v24 * v52 alpha:{1.0, v45}];
    [(NSArray *)v22 addObject:v28];

    v29 = *v7++;
    v30 = [MEMORY[0x1E69DC888] colorWithRed:v25 green:v26 blue:v27 alpha:v29];
    [(NSArray *)i addObject:v30];

    v31 = *v5++;
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
    [(NSArray *)v50 addObject:v32];

    v33 = *v6++;
    v34 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
    [(NSArray *)v51 addObject:v34];
  }

  v35 = v49;
  colors = v49->_colors;
  v49->_colors = v22;
  v37 = v22;

  shadowColors = v35->_shadowColors;
  v35->_shadowColors = i;
  v39 = i;

  v40 = v35;
  scales = v35->_scales;
  v42 = v50;
  v40->_scales = v50;
  v43 = v42;

  offsets = v40->_offsets;
  v40->_offsets = v51;
}

- (CKMentionRippler)init
{
  v5.receiver = self;
  v5.super_class = CKMentionRippler;
  v2 = [(CKMentionRippler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_preFrames = xmmword_190DD0780;
    *&v2->_postFrames = xmmword_190DD0790;
    [(CKMentionRippler *)v2 generateValues];
    [(CKMentionRippler *)v3 start];
  }

  return v3;
}

- (unint64_t)currentIndexForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5 isFinished:(BOOL *)a6
{
  delayFrames = self->_delayFrames;
  v7 = self->_animateFrames + self->_preFrames + self->_postFrames;
  v8 = a5 % (2 * (v7 + delayFrames * a4));
  v9 = delayFrames + delayFrames * a3;
  v10 = v9 + v7;
  if (a6)
  {
    v12 = v8 >= v10 && v8 >= v9;
    *a6 = v12;
  }

  v13 = v7 - 1;
  if (v8 < v9)
  {
    v13 = 0;
  }

  if (v8 < v10 && v8 >= v9)
  {
    return v8 - v9;
  }

  else
  {
    return v13;
  }
}

- (id)currentColorForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5
{
  colors = self->_colors;
  v6 = [(CKMentionRippler *)self currentIndexForGlyphIndex:a3 numberOfGlyphs:a4 timeIndex:a5 isFinished:0];

  return [(NSArray *)colors objectAtIndex:v6];
}

- (id)currentShadowColorForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5
{
  shadowColors = self->_shadowColors;
  v6 = [(CKMentionRippler *)self currentIndexForGlyphIndex:a3 numberOfGlyphs:a4 timeIndex:a5 isFinished:0];

  return [(NSArray *)shadowColors objectAtIndex:v6];
}

- (double)currentScaleForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5
{
  if (self->_reduceMotion)
  {
    return 1.0;
  }

  v6 = [(NSArray *)self->_scales objectAtIndex:[(CKMentionRippler *)self currentIndexForGlyphIndex:a3 numberOfGlyphs:a4 timeIndex:a5 isFinished:0]];
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (CGSize)currentOffsetForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5
{
  if (self->_reduceMotion)
  {
    v5 = 0.0;
  }

  else
  {
    v6 = [(NSArray *)self->_offsets objectAtIndex:[(CKMentionRippler *)self currentIndexForGlyphIndex:a3 numberOfGlyphs:a4 timeIndex:a5 isFinished:0]];
    [v6 doubleValue];
    v5 = v7;
  }

  v8 = 0.0;
  v9 = v5;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)finishedForGlyphIndex:(unint64_t)a3 numberOfGlyphs:(unint64_t)a4 timeIndex:(unint64_t)a5
{
  v6 = 0;
  [(CKMentionRippler *)self currentIndexForGlyphIndex:a3 numberOfGlyphs:a4 timeIndex:a5 isFinished:&v6];
  return v6;
}

@end