@interface NANowPlayingIndicatorView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NANowPlayingIndicatorView)initWithFrame:(CGRect)a3;
- (double)_fixedSeedValueForBarIndex:(unint64_t)a3;
- (double)_seedValueForBarIndex:(unint64_t)a3;
- (void)_bufferTimerFired;
- (void)_reloadLevelViews;
- (void)_updateLevelAnimations;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setLevelCornerRadius:(double)a3;
- (void)setLevelGuttersColor:(id)a3;
- (void)setLevelWidth:(double)a3;
- (void)setMaximumLevelHeight:(double)a3;
- (void)setMinimumLevelHeight:(double)a3;
- (void)setNumberOfLevels:(int64_t)a3;
- (void)setPlaybackState:(int64_t)a3;
- (void)setShowsLevelGutters:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation NANowPlayingIndicatorView

- (void)_reloadLevelViews
{
  if (self->_numberOfLevels < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      if (v3 >= [(NSMutableArray *)self->_levelViews count]|| ([(NSMutableArray *)self->_levelViews objectAtIndex:v3], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v8 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
        v9 = [v8 layer];
        [v9 setCornerRadius:self->_levelCornerRadius];
        [v9 setAnchorPoint:{0.5, 1.0}];
        v10 = [(NANowPlayingIndicatorView *)self tintColor];
        [v8 setBackgroundColor:v10];

        levelViews = self->_levelViews;
        if (!levelViews)
        {
          v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_numberOfLevels];
          v13 = self->_levelViews;
          self->_levelViews = v12;

          levelViews = self->_levelViews;
        }

        [(NSMutableArray *)levelViews addObject:v8];
        [(NANowPlayingIndicatorView *)self addSubview:v8];
      }

      ++v3;
    }

    while (v3 < self->_numberOfLevels);
  }

  while (v3 < [(NSMutableArray *)self->_levelViews count])
  {
    v14 = [(NSMutableArray *)self->_levelViews objectAtIndex:v3];
    [v14 removeFromSuperview];
    [(NSMutableArray *)self->_levelViews removeObjectAtIndex:v3];
  }

  [(NANowPlayingIndicatorView *)self _updateLevelAnimations];

  [(NANowPlayingIndicatorView *)self setNeedsLayout];
}

- (void)_updateLevelAnimations
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6979518] disableActions];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = self->_levelViews;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0x1EC9DF000uLL;
    v66 = *v68;
    v64 = *MEMORY[0x1E6979EB8];
    v65 = *MEMORY[0x1E69797E0];
    v57 = *MEMORY[0x1E69795A0];
    v58 = *MEMORY[0x1E6979590];
    v56 = *MEMORY[0x1E69795B8];
    v60 = self;
    v59 = v3;
    do
    {
      v8 = 0;
      v62 = v5;
      do
      {
        if (*v68 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v67 + 1) + 8 * v8);
        [v9 setAlpha:1.0];
        v10 = [v9 layer];
        v11 = *(&self->super.super.super.super.isa + *(v7 + 2724));
        if (v11 > 1)
        {
          if (v11 != 2)
          {
            if (v11 != 3)
            {
              goto LABEL_25;
            }

            if (!self->bufferingShouldDisplayAsPaused)
            {
              v12 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds.size.height"];
              [v12 setRemovedOnCompletion:0];
              [v12 setFillMode:v65];
              v34 = self->_minimumLevelHeight * 1.7;
              [v12 setDuration:0.5];
              [v12 setBeginTime:v6 * 0.175];
              v35 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumLevelHeight];
              v74[0] = v35;
              v36 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
              v74[1] = v36;
              v37 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
              v74[2] = v37;
              v38 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumLevelHeight];
              v74[3] = v38;
              v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
              [v12 setValues:v39];

              LODWORD(v40) = 1.0;
              LODWORD(v41) = 1055622431;
              v61 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v41 :v40];
              [v12 setTimingFunction:v61];
              [v12 setCalculationMode:v58];
              v42 = [MEMORY[0x1E6979390] animationWithKeyPath:@"hidden"];
              [v42 setFillMode:v65];
              [v42 setValues:&unk_1F52DE110];
              [v42 setKeyTimes:&unk_1F52DE128];
              [v42 setCalculationMode:v57];
              [v12 duration];
              [v42 setDuration:?];
              [v12 beginTime];
              [v42 setBeginTime:?];
              [v42 setRemovedOnCompletion:1];
              v43 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
              v44 = [v12 timingFunction];
              [v43 setTimingFunction:v44];

              [v43 setRemovedOnCompletion:0];
              [v43 setFillMode:v65];
              [v12 duration];
              [v43 setDuration:?];
              [v12 beginTime];
              [v43 setBeginTime:?];
              LODWORD(v45) = 1050253722;
              v46 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
              v73[0] = v46;
              LODWORD(v47) = *"333?";
              v48 = [MEMORY[0x1E696AD98] numberWithFloat:v47];
              v73[1] = v48;
              LODWORD(v49) = 1050253722;
              v50 = [MEMORY[0x1E696AD98] numberWithFloat:v49];
              v73[2] = v50;
              v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:3];
              [v43 setValues:v51];

              v7 = 0x1EC9DF000;
              self = v60;

              [v43 setCalculationMode:v56];
              v52 = [MEMORY[0x1E6979308] animation];
              [v52 setDuration:1.05];
              v72[0] = v12;
              v72[1] = v42;
              v72[2] = v43;
              v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:3];
              [v52 setAnimations:v53];

              v5 = v62;
              LODWORD(v54) = 2139095040;
              [v52 setRepeatCount:v54];
              [v10 addAnimation:v52 forKey:@"nowPlayingIndicatorAnimation"];

              v3 = v59;
              goto LABEL_24;
            }

            [v9 setAlpha:0.300000012];
          }

          v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds.size.height"];
          [v12 setDuration:0.45];
          v22 = [MEMORY[0x1E69793D0] functionWithName:v64];
          [v12 setTimingFunction:v22];

          [v12 setRemovedOnCompletion:0];
          [v12 setFillMode:v65];
          v23 = MEMORY[0x1E696AD98];
          if (v3)
          {
            v24 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumLevelHeight];
            [v12 setFromValue:v24];
          }

          else
          {
            v30 = [v10 presentationLayer];
            v31 = v30;
            if (!v30)
            {
              v30 = v10;
            }

            [v30 bounds];
            v32 = [v23 numberWithDouble:CGRectGetHeight(v78)];
            [v12 setFromValue:v32];
          }

          v33 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumLevelHeight];
          [v12 setToValue:v33];
        }

        else if (v11)
        {
          if (v11 != 1)
          {
            goto LABEL_25;
          }

          v12 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds.size.height"];
          v13 = [MEMORY[0x1E69793D0] functionWithName:v64];
          [v12 setTimingFunction:v13];

          [v12 setRemovedOnCompletion:0];
          [v12 setFillMode:v65];
          [(NANowPlayingIndicatorView *)self _seedValueForBarIndex:v6];
          maximumLevelHeight = self->_maximumLevelHeight;
          v16 = maximumLevelHeight * 0.5 + v15 * (maximumLevelHeight * 0.5);
          [v12 setDuration:maximumLevelHeight / v16 * 0.65];
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumLevelHeight];
          v71[0] = v17;
          v18 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
          v71[1] = v18;
          v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumLevelHeight];
          v71[2] = v19;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:3];
          [v12 setValues:v20];

          v7 = 0x1EC9DF000;
          v5 = v62;

          LODWORD(v21) = 2139095040;
          [v12 setRepeatCount:v21];
        }

        else
        {
          v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds.size.height"];
          [v12 setDuration:0.45];
          v25 = [MEMORY[0x1E69793D0] functionWithName:v64];
          [v12 setTimingFunction:v25];

          [v12 setRemovedOnCompletion:0];
          [v12 setFillMode:v65];
          v26 = MEMORY[0x1E696AD98];
          v27 = [v10 presentationLayer];
          v28 = v27;
          if (!v27)
          {
            v27 = v10;
          }

          [v27 bounds];
          v29 = [v26 numberWithDouble:CGRectGetHeight(v77)];
          [v12 setFromValue:v29];

          v7 = 0x1EC9DF000;
          [v12 setToValue:&unk_1F52DE0A8];
        }

        [v10 addAnimation:v12 forKey:@"nowPlayingIndicatorAnimation"];
LABEL_24:

LABEL_25:
        ++v6;

        ++v8;
      }

      while (v5 != v8);
      v55 = [(NSMutableArray *)obj countByEnumeratingWithState:&v67 objects:v75 count:16];
      v5 = v55;
    }

    while (v55);
  }
}

- (void)tintColorDidChange
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = NANowPlayingIndicatorView;
  [(NANowPlayingIndicatorView *)&v14 tintColorDidChange];
  if (self->_showsLevelGutters)
  {
    [(NANowPlayingIndicatorView *)self setNeedsDisplay];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_levelViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(NANowPlayingIndicatorView *)self tintColor];
        [v8 setBackgroundColor:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)layoutSubviews
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = NANowPlayingIndicatorView;
  [(NANowPlayingIndicatorView *)&v24 layoutSubviews];
  [(NANowPlayingIndicatorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = self->_levelViews;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        [v17 frame];
        v19 = v18;
        v27.origin.x = v4;
        v27.origin.y = v6;
        v27.size.width = v8;
        v27.size.height = v10;
        [v17 setFrame:{(self->_levelWidth + self->_interLevelSpacing) * v14++, CGRectGetMaxY(v27), self->_levelWidth, v19}];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }
}

- (NANowPlayingIndicatorView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = NANowPlayingIndicatorView;
  v3 = [(NANowPlayingIndicatorView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NANowPlayingIndicatorView *)v3 setUserInteractionEnabled:0];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(NANowPlayingIndicatorView *)v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 scale];
    v8 = v7;

    v4->_interLevelSpacing = 1.0 / v8 + 1.0;
    v4->_levelCornerRadius = 1.0 / v8;
    v4->_levelWidth = 3.0;
    v4->_maximumLevelHeight = 13.0;
    v4->_minimumLevelHeight = 3.0;
    v4->_numberOfLevels = 3;
    [(NANowPlayingIndicatorView *)v4 _reloadLevelViews];
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  if (self->_showsLevelGutters)
  {
    levelGuttersColor = self->_levelGuttersColor;
    if (levelGuttersColor)
    {
      v6 = levelGuttersColor;
    }

    else
    {
      v7 = [(NANowPlayingIndicatorView *)self tintColor:a3.origin.x];
      v12 = [v7 colorWithAlphaComponent:0.2];

      v6 = v12;
    }

    v13 = v6;
    [(UIColor *)v6 setFill];
    [(NANowPlayingIndicatorView *)self bounds];
    levelWidth = self->_levelWidth;
    MaxY = CGRectGetMaxY(v14);
    if (self->_numberOfLevels >= 1)
    {
      v10 = MaxY;
      v11 = 0;
      do
      {
        v15.origin.x = (self->_levelWidth + self->_interLevelSpacing) * v11;
        v15.origin.y = 0.0;
        v15.size.width = levelWidth;
        v15.size.height = v10;
        UIRectFillUsingBlendMode(v15, kCGBlendModeNormal);
        ++v11;
      }

      while (v11 < self->_numberOfLevels);
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  numberOfLevels = self->_numberOfLevels;
  if (numberOfLevels)
  {
    v4 = self->_interLevelSpacing * (numberOfLevels - 1) + numberOfLevels * self->_levelWidth;
    p_maximumLevelHeight = &self->_maximumLevelHeight;
  }

  else
  {
    p_maximumLevelHeight = (MEMORY[0x1E695F060] + 8);
    v4 = *MEMORY[0x1E695F060];
  }

  v6 = *p_maximumLevelHeight;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)setLevelCornerRadius:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_levelCornerRadius != a3)
  {
    self->_levelCornerRadius = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_levelViews;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v10 + 1) + 8 * v8) layer];
          [v9 setCornerRadius:self->_levelCornerRadius];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setLevelWidth:(double)a3
{
  if (self->_levelWidth != a3)
  {
    self->_levelWidth = a3;
    [(NANowPlayingIndicatorView *)self setNeedsLayout];
  }
}

- (void)setMaximumLevelHeight:(double)a3
{
  if (self->_maximumLevelHeight != a3)
  {
    self->_maximumLevelHeight = a3;
    [(NANowPlayingIndicatorView *)self _updateLevelAnimations];
  }
}

- (void)setMinimumLevelHeight:(double)a3
{
  if (self->_minimumLevelHeight != a3)
  {
    self->_minimumLevelHeight = a3;
    [(NANowPlayingIndicatorView *)self _updateLevelAnimations];
  }
}

- (void)setNumberOfLevels:(int64_t)a3
{
  if (self->_numberOfLevels != a3)
  {
    self->_numberOfLevels = a3;
    [(NANowPlayingIndicatorView *)self _reloadLevelViews];
  }
}

- (void)setPlaybackState:(int64_t)a3
{
  if (self->_playbackState != a3)
  {
    self->_playbackState = a3;
    if (a3 == 3)
    {
      self->bufferingShouldDisplayAsPaused = 1;
      [(NANowPlayingIndicatorView *)self performSelector:sel__bufferTimerFired withObject:0 afterDelay:1.0];
    }

    [(NANowPlayingIndicatorView *)self _updateLevelAnimations];
  }
}

- (void)_bufferTimerFired
{
  if (self->_playbackState == 3)
  {
    self->bufferingShouldDisplayAsPaused = 0;
    [(NANowPlayingIndicatorView *)self _updateLevelAnimations];
  }
}

- (void)setShowsLevelGutters:(BOOL)a3
{
  if (self->_showsLevelGutters != a3)
  {
    self->_showsLevelGutters = a3;
    [(NANowPlayingIndicatorView *)self setNeedsDisplay];
  }
}

- (void)setLevelGuttersColor:(id)a3
{
  v5 = a3;
  if (self->_levelGuttersColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_levelGuttersColor, a3);
    [(NANowPlayingIndicatorView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (double)_seedValueForBarIndex:(unint64_t)a3
{
  if ([(NANowPlayingIndicatorView *)self bounceStyle]== 1)
  {

    [(NANowPlayingIndicatorView *)self _fixedSeedValueForBarIndex:a3];
  }

  else
  {

    [(NANowPlayingIndicatorView *)self _randomSeedValueForBar];
  }

  return result;
}

- (double)_fixedSeedValueForBarIndex:(unint64_t)a3
{
  if (a3 < 4)
  {
    return dbl_1D7D3B450[a3];
  }

  [(NANowPlayingIndicatorView *)self _randomSeedValueForBar];
  return result;
}

@end