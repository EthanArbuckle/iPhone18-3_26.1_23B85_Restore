@interface FIUIPushyLabelView
- (CGSize)sizeThatFits:(CGSize)fits;
- (FIUIPushyLabelView)initWithFrame:(CGRect)frame;
- (id)_snapshotCharactersFromAttributedText:(id)text perCharacter:(BOOL)character;
- (void)_layoutForPushStartWithDirection:(unint64_t)direction;
- (void)_layoutViewsAtIndex:(unint64_t)index forPushEndWithDirection:(unint64_t)direction;
- (void)_processPendingStringIfNeeded;
- (void)_setCurrentSnapshotCharacters:(id)characters;
- (void)_setIncomingSnapshotCharacters:(id)characters;
- (void)_swapCurrentSnapshotCharacters:(id)characters forIncomingCharacters:(id)incomingCharacters;
- (void)pushToAttributedText:(id)text direction:(unint64_t)direction perCharacter:(BOOL)character;
- (void)setAttributedTextUnanimated:(id)unanimated;
- (void)setFrame:(CGRect)frame;
- (void)sizeToFitAttributedText:(id)text;
@end

@implementation FIUIPushyLabelView

- (FIUIPushyLabelView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = FIUIPushyLabelView;
  v3 = [(FIUIPushyLabelView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(FIUIPushyLabelView *)v3 setClipsToBounds:1];
    [(FIUIPushyLabelView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v26 = *MEMORY[0x1E69E9840];
  p_incomingSnapshotCharacters = &self->_incomingSnapshotCharacters;
  if (![(NSArray *)self->_incomingSnapshotCharacters count:fits.width])
  {
    p_incomingSnapshotCharacters = &self->_currentSnapshotCharacters;
  }

  v5 = MEMORY[0x1E695F060];
  v6 = *p_incomingSnapshotCharacters;
  if ([(NSArray *)v6 count])
  {
    firstObject = [(NSArray *)v6 firstObject];
    renderedView = [firstObject renderedView];
    [renderedView frame];
    v10 = v9;
  }

  else
  {
    v10 = v5[1];
  }

  v11 = *v5;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v6;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        renderedView2 = [*(*(&v21 + 1) + 8 * v16) renderedView];
        [renderedView2 frame];
        v11 = v11 + v18;

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v19 = v11;
  v20 = v10;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v27 = *MEMORY[0x1E69E9840];
  [(FIUIPushyLabelView *)self frame];
  v31.origin.x = v8;
  v31.origin.y = v9;
  v31.size.width = v10;
  v31.size.height = v11;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  if (!CGRectEqualToRect(v28, v31))
  {
    [(FIUIPushyLabelView *)self frame];
    v13 = v12;
    v25.receiver = self;
    v25.super_class = FIUIPushyLabelView;
    [(FIUIPushyLabelView *)&v25 setFrame:x, y, width, height];
    if (width != v13)
    {
      if ([(FIUIPushyLabelView *)self _shouldReverseLayoutDirection])
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        subviews = [(FIUIPushyLabelView *)self subviews];
        v15 = [subviews countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v22;
          v18 = width - v13;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v22 != v17)
              {
                objc_enumerationMutation(subviews);
              }

              v20 = *(*(&v21 + 1) + 8 * i);
              [v20 frame];
              v30 = CGRectOffset(v29, v18, 0.0);
              [v20 setFrame:{v30.origin.x, v30.origin.y, v30.size.width, v30.size.height}];
            }

            v16 = [subviews countByEnumeratingWithState:&v21 objects:v26 count:16];
          }

          while (v16);
        }
      }
    }
  }
}

- (void)sizeToFitAttributedText:(id)text
{
  textCopy = text;
  [(FIUIPushyLabelView *)self frame];
  v6 = v5;
  v8 = v7;
  [textCopy size];
  v10 = v9;
  v12 = v11;

  [(FIUIPushyLabelView *)self setFrame:v6, v8, v10, v12];
}

- (void)setAttributedTextUnanimated:(id)unanimated
{
  unanimatedCopy = unanimated;
  if (([unanimatedCopy isEqualToAttributedString:self->_currentAttributedText] & 1) == 0)
  {
    v5 = [(FIUIPushyLabelView *)self _snapshotCharactersFromAttributedText:unanimatedCopy perCharacter:0];
    [(FIUIPushyLabelView *)self _setIncomingSnapshotCharacters:v5];
    [(FIUIPushyLabelView *)self _layoutViewsAtIndex:0 forPushEndWithDirection:0];
    [(FIUIPushyLabelView *)self _swapCurrentSnapshotCharacters:self->_currentSnapshotCharacters forIncomingCharacters:v5];
    objc_storeStrong(&self->_currentAttributedText, unanimated);
  }
}

- (void)pushToAttributedText:(id)text direction:(unint64_t)direction perCharacter:(BOOL)character
{
  characterCopy = character;
  textCopy = text;
  if (([textCopy isEqualToAttributedString:self->_currentAttributedText] & 1) == 0)
  {
    v10 = characterCopy & ~[(FIUIPushyLabelView *)self _shouldReverseLayoutDirection];
    Current = CFAbsoluteTimeGetCurrent();
    if (self->_currentAnimationFinishTime - Current >= 0.0)
    {
      v11 = self->_currentAnimationFinishTime - Current;
    }

    else
    {
      v11 = 0.0;
    }

    if (v11 <= 0.0)
    {
      obj = text;
      v13 = self->_currentSnapshotCharacters;
      v35 = textCopy;
      v14 = [(FIUIPushyLabelView *)self _snapshotCharactersFromAttributedText:textCopy perCharacter:v10];
      [(FIUIPushyLabelView *)self _setIncomingSnapshotCharacters:v14];
      [(FIUIPushyLabelView *)self _layoutForPushStartWithDirection:direction];
      currentAnimationFinishTime = self->_currentAnimationFinishTime;
      if (v10)
      {
        v16 = 0.06;
      }

      else
      {
        v16 = 0.0;
      }

      v17 = [(NSArray *)v13 count];
      v18 = [v14 count];
      if (v17 <= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        v20 = 0;
        v21 = 0;
        v22 = v45;
        directionCopy = direction;
        do
        {
          v23 = 0.75;
          if (v21 < -[NSArray count](v13, "count") && v21 < [v14 count])
          {
            v24 = [(NSArray *)v13 objectAtIndexedSubscript:v21];
            sourceText = [v24 sourceText];

            v26 = [v14 objectAtIndexedSubscript:v21];
            [v26 sourceText];
            v27 = v14;
            v28 = v19;
            v30 = v29 = v22;

            if ([sourceText isEqualToAttributedString:v30])
            {
              v23 = 0.0;
            }

            else
            {
              v23 = 0.75;
            }

            v22 = v29;
            v19 = v28;
            v14 = v27;

            direction = directionCopy;
          }

          v31 = v11 + v16 * v20;
          if (currentAnimationFinishTime < v31 + Current + v23)
          {
            currentAnimationFinishTime = v31 + Current + v23;
          }

          v32 = MEMORY[0x1E69DD250];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v45[0] = __66__FIUIPushyLabelView_pushToAttributedText_direction_perCharacter___block_invoke;
          v45[1] = &unk_1E878C448;
          v45[2] = self;
          v45[3] = v21;
          v45[4] = direction;
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __66__FIUIPushyLabelView_pushToAttributedText_direction_perCharacter___block_invoke_2;
          v38[3] = &unk_1E878C470;
          v39 = v13;
          v42 = v21;
          v40 = v14;
          selfCopy = self;
          v43 = v16;
          [v32 animateWithDuration:0x10000 delay:v44 usingSpringWithDamping:v38 initialSpringVelocity:v23 options:v11 + v16 * v20 animations:0.6 completion:-5.0];
          if (v23 > 2.22044605e-16)
          {
            ++v20;
          }

          ++v21;
        }

        while (v19 != v21);
      }

      *(&self->super.super.super.isa + v33) = v16 + currentAnimationFinishTime;
      objc_storeStrong(&self->_currentAttributedText, obj);

      textCopy = v35;
    }

    else
    {
      null = textCopy;
      if (!textCopy)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      objc_storeStrong(&self->_pendingAttributedString, null);
      if (!textCopy)
      {
      }

      self->_pendingDirection = direction;
      self->_pendingPushPerCharacter = v10;
    }
  }
}

void __66__FIUIPushyLabelView_pushToAttributedText_direction_perCharacter___block_invoke_2(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 56);
    if (v3 == [*(a1 + 40) count] - 1 || !objc_msgSend(*(a1 + 40), "count"))
    {
      [*(a1 + 48) _swapCurrentSnapshotCharacters:*(a1 + 32) forIncomingCharacters:*(a1 + 40)];
      v4 = *(a1 + 48);
      v5 = *(a1 + 64);

      [v4 performSelector:sel__processPendingStringIfNeeded withObject:0 afterDelay:v5];
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v12 + 1) + 8 * i) renderedView];
          [v11 removeFromSuperview];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_processPendingStringIfNeeded
{
  pendingAttributedString = self->_pendingAttributedString;
  if (pendingAttributedString)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v5 = [pendingAttributedString isEqual:null];

    if (v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = self->_pendingAttributedString;
    }

    pendingDirection = self->_pendingDirection;
    pendingPushPerCharacter = self->_pendingPushPerCharacter;
    v8 = self->_pendingAttributedString;
    self->_pendingAttributedString = 0;

    [(FIUIPushyLabelView *)self pushToAttributedText:v9 direction:pendingDirection perCharacter:pendingPushPerCharacter];
  }
}

- (void)_setCurrentSnapshotCharacters:(id)characters
{
  v28 = *MEMORY[0x1E69E9840];
  charactersCopy = characters;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_currentSnapshotCharacters;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        renderedView = [*(*(&v22 + 1) + 8 * v10) renderedView];
        [renderedView removeFromSuperview];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  objc_storeStrong(&self->_currentSnapshotCharacters, characters);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = charactersCopy;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        renderedView2 = [*(*(&v18 + 1) + 8 * v16) renderedView];
        [(FIUIPushyLabelView *)self addSubview:renderedView2];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }
}

- (void)_setIncomingSnapshotCharacters:(id)characters
{
  v28 = *MEMORY[0x1E69E9840];
  charactersCopy = characters;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_incomingSnapshotCharacters;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        renderedView = [*(*(&v22 + 1) + 8 * v10) renderedView];
        [renderedView removeFromSuperview];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  objc_storeStrong(&self->_incomingSnapshotCharacters, characters);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = charactersCopy;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        renderedView2 = [*(*(&v18 + 1) + 8 * v16) renderedView];
        [(FIUIPushyLabelView *)self addSubview:renderedView2];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }
}

- (void)_swapCurrentSnapshotCharacters:(id)characters forIncomingCharacters:(id)incomingCharacters
{
  incomingCharactersCopy = incomingCharacters;
  [(FIUIPushyLabelView *)self _setCurrentSnapshotCharacters:0];
  currentSnapshotCharacters = self->_currentSnapshotCharacters;
  self->_currentSnapshotCharacters = incomingCharactersCopy;
  v8 = incomingCharactersCopy;

  incomingSnapshotCharacters = self->_incomingSnapshotCharacters;
  self->_incomingSnapshotCharacters = 0;
}

- (void)_layoutForPushStartWithDirection:(unint64_t)direction
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_currentSnapshotCharacters;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        renderedView = [*(*(&v28 + 1) + 8 * v9) renderedView];
        [renderedView frame];
        [renderedView setFrame:?];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_incomingSnapshotCharacters;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        renderedView2 = [*(*(&v24 + 1) + 8 * v15) renderedView];
        [renderedView2 frame];
        v19 = v18;
        v21 = v20;
        v22 = v17;
        if (direction)
        {
          Height = -v17;
        }

        else
        {
          [(FIUIPushyLabelView *)self bounds];
          Height = CGRectGetHeight(v35);
        }

        [renderedView2 setFrame:{v19, Height, v21, v22}];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }
}

- (void)_layoutViewsAtIndex:(unint64_t)index forPushEndWithDirection:(unint64_t)direction
{
  if ([(NSArray *)self->_currentSnapshotCharacters count]> index)
  {
    v7 = [(NSArray *)self->_currentSnapshotCharacters objectAtIndexedSubscript:index];
    renderedView = [v7 renderedView];
    [renderedView frame];
    v11 = v10;
    v13 = v12;
    v14 = v9;
    if (direction)
    {
      [(FIUIPushyLabelView *)self bounds];
      Height = CGRectGetHeight(v19);
    }

    else
    {
      Height = -v9;
    }

    [renderedView setFrame:{v11, Height, v13, v14}];
  }

  if ([(NSArray *)self->_incomingSnapshotCharacters count]> index)
  {
    v17 = [(NSArray *)self->_incomingSnapshotCharacters objectAtIndexedSubscript:index];
    renderedView2 = [v17 renderedView];
    [renderedView2 frame];
    [renderedView2 setFrame:?];
  }
}

- (id)_snapshotCharactersFromAttributedText:(id)text perCharacter:(BOOL)character
{
  characterCopy = character;
  textCopy = text;
  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(textCopy, "length")}];
  if ([textCopy length])
  {
    v7 = [objc_alloc(MEMORY[0x1E69DB850]) initWithAttributedString:textCopy];
    v8 = objc_alloc_init(MEMORY[0x1E69DB7C0]);
    [v7 addLayoutManager:v8];
    v9 = objc_alloc(MEMORY[0x1E69DB800]);
    [textCopy size];
    v10 = [v9 initWithSize:?];
    [v10 setLineFragmentPadding:0.0];
    v39 = v10;
    [v8 addTextContainer:v10];
    v43 = 0;
    v44 = 0;
    scale = FIUIDeviceScale();
    v34 = v7;
    if (characterCopy)
    {
      v11 = 1;
    }

    else
    {
      v11 = [textCopy length];
    }

    if ([textCopy length])
    {
      v12 = 0;
      v14 = *MEMORY[0x1E695EFF8];
      v13 = *(MEMORY[0x1E695EFF8] + 8);
      v41 = scale + scale;
      v15 = 0.0;
      v36 = v13;
      v37 = *MEMORY[0x1E695EFF8];
      do
      {
        v16 = [textCopy attributedSubstringFromRange:{v12, v11}];
        [v8 characterRangeForGlyphRange:v12 actualGlyphRange:{v11, &v43}];
        [v8 boundingRectForGlyphRange:v43 inTextContainer:{v44, v39}];
        v18 = v17;
        v20 = v19;
        [v16 size];
        v23 = v21;
        v24 = v22;
        if (!characterCopy)
        {
          v14 = -v18 / v41;
          v13 = -v20 / v41;
        }

        if (v18 < 0.0)
        {
          v23 = v21 - v18 / v41;
          v18 = 0.0;
        }

        v42 = v13;
        if (v20 < 0.0)
        {
          v24 = v22 - v20 / v41;
          v20 = 0.0;
        }

        if ([(FIUIPushyLabelView *)self _shouldReverseLayoutDirection]&& !characterCopy)
        {
          [(FIUIPushyLabelView *)self frame];
          v18 = v25 - v23;
        }

        v46.width = v23;
        v46.height = v24;
        UIGraphicsBeginImageContextWithOptions(v46, 0, scale);
        CurrentContext = UIGraphicsGetCurrentContext();
        v13 = v36;
        v47.origin.x = v37;
        v47.origin.y = v36;
        v47.size.width = v23;
        v47.size.height = v24;
        CGContextClearRect(CurrentContext, v47);
        v27 = v14;
        v14 = v37;
        [v16 drawAtPoint:{v27, v42}];
        v28 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v29 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v28];
        v30 = v29;
        if (characterCopy)
        {
          v31 = v15;
        }

        else
        {
          v31 = v18;
        }

        if (characterCopy)
        {
          v15 = v15 + v23;
        }

        [v29 setFrame:{v31, v20, v23, v24}];
        v32 = objc_alloc_init(FIUIPushyLabelCharacter);
        [(FIUIPushyLabelCharacter *)v32 setSourceText:v16];
        [(FIUIPushyLabelCharacter *)v32 setRenderedView:v30];
        [v40 addObject:v32];

        v12 += v11;
      }

      while (v12 < [textCopy length]);
    }
  }

  return v40;
}

@end