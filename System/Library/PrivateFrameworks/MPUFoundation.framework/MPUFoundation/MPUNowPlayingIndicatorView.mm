@interface MPUNowPlayingIndicatorView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MPUNowPlayingIndicatorView)initWithFrame:(CGRect)a3;
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

@implementation MPUNowPlayingIndicatorView

- (MPUNowPlayingIndicatorView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = MPUNowPlayingIndicatorView;
  v3 = [(MPUNowPlayingIndicatorView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MPUNowPlayingIndicatorView *)v3 setUserInteractionEnabled:0];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(MPUNowPlayingIndicatorView *)v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 scale];
    v8 = v7;

    v4->_interLevelSpacing = 1.0 / v8 + 1.0;
    v4->_levelCornerRadius = 1.0 / v8;
    v4->_levelWidth = 3.0;
    v4->_maximumLevelHeight = 13.0;
    v4->_minimumLevelHeight = 3.0;
    v4->_numberOfLevels = 3;
    v4->_minimumFrameInterval = 0.0;
    [(MPUNowPlayingIndicatorView *)v4 _reloadLevelViews];
  }

  return v4;
}

- (void)layoutSubviews
{
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = MPUNowPlayingIndicatorView;
  [(MPUNowPlayingIndicatorView *)&v24 layoutSubviews];
  [(MPUNowPlayingIndicatorView *)self bounds];
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
      v6 = [(MPUNowPlayingIndicatorView *)self tintColor:a3.origin.x];
    }

    v11 = v6;
    [(UIColor *)v6 setFill];
    [(MPUNowPlayingIndicatorView *)self bounds];
    levelWidth = self->_levelWidth;
    MaxY = CGRectGetMaxY(v12);
    if (self->_numberOfLevels >= 1)
    {
      v9 = MaxY;
      v10 = 0;
      do
      {
        v13.origin.x = (self->_levelWidth + self->_interLevelSpacing) * v10;
        v13.origin.y = 0.0;
        v13.size.width = levelWidth;
        v13.size.height = v9;
        UIRectFillUsingBlendMode(v13, kCGBlendModeNormal);
        ++v10;
      }

      while (v10 < self->_numberOfLevels);
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
    p_maximumLevelHeight = (MEMORY[0x277CBF3A8] + 8);
    v4 = *MEMORY[0x277CBF3A8];
  }

  v6 = *p_maximumLevelHeight;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)tintColorDidChange
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = MPUNowPlayingIndicatorView;
  [(MPUNowPlayingIndicatorView *)&v15 tintColorDidChange];
  if (self->_showsLevelGutters)
  {
    [(MPUNowPlayingIndicatorView *)self setNeedsDisplay];
  }

  levelGuttersColor = self->_levelGuttersColor;
  if (levelGuttersColor)
  {
    v4 = levelGuttersColor;
  }

  else
  {
    v4 = [(MPUNowPlayingIndicatorView *)self tintColor];
  }

  v5 = v4;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_levelViews;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setBackgroundColor:{v5, v11}];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)setLevelCornerRadius:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
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
    [(MPUNowPlayingIndicatorView *)self setNeedsLayout];
  }
}

- (void)setMaximumLevelHeight:(double)a3
{
  if (self->_maximumLevelHeight != a3)
  {
    self->_maximumLevelHeight = a3;
    [(MPUNowPlayingIndicatorView *)self _updateLevelAnimations];
  }
}

- (void)setMinimumLevelHeight:(double)a3
{
  if (self->_minimumLevelHeight != a3)
  {
    self->_minimumLevelHeight = a3;
    [(MPUNowPlayingIndicatorView *)self _updateLevelAnimations];
  }
}

- (void)setNumberOfLevels:(int64_t)a3
{
  if (self->_numberOfLevels != a3)
  {
    self->_numberOfLevels = a3;
    [(MPUNowPlayingIndicatorView *)self _reloadLevelViews];
  }
}

- (void)setPlaybackState:(int64_t)a3
{
  if (self->_playbackState != a3)
  {
    self->_playbackState = a3;
    [(MPUNowPlayingIndicatorView *)self _updateLevelAnimations];
  }
}

- (void)setShowsLevelGutters:(BOOL)a3
{
  if (self->_showsLevelGutters != a3)
  {
    self->_showsLevelGutters = a3;
    [(MPUNowPlayingIndicatorView *)self setNeedsDisplay];
  }
}

- (void)setLevelGuttersColor:(id)a3
{
  v5 = a3;
  if (self->_levelGuttersColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_levelGuttersColor, a3);
    [(MPUNowPlayingIndicatorView *)self _reloadLevelViews];
    v5 = v6;
  }
}

- (void)_reloadLevelViews
{
  if (self->_numberOfLevels < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = *MEMORY[0x277CBF3A0];
    v5 = *(MEMORY[0x277CBF3A0] + 8);
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      if (v3 >= [(NSMutableArray *)self->_levelViews count]|| ([(NSMutableArray *)self->_levelViews objectAtIndex:v3], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
        v9 = [v8 layer];
        [v9 setCornerRadius:self->_levelCornerRadius];
        [v9 setAnchorPoint:{0.5, 1.0}];
        levelViews = self->_levelViews;
        if (!levelViews)
        {
          v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_numberOfLevels];
          v12 = self->_levelViews;
          self->_levelViews = v11;

          levelViews = self->_levelViews;
        }

        [(NSMutableArray *)levelViews addObject:v8];
        [(MPUNowPlayingIndicatorView *)self addSubview:v8];
      }

      levelGuttersColor = self->_levelGuttersColor;
      if (levelGuttersColor)
      {
        v14 = levelGuttersColor;
      }

      else
      {
        v14 = [(MPUNowPlayingIndicatorView *)self tintColor];
      }

      v15 = v14;
      [v8 setBackgroundColor:v14];

      ++v3;
    }

    while (v3 < self->_numberOfLevels);
  }

  while (v3 < [(NSMutableArray *)self->_levelViews count])
  {
    v16 = [(NSMutableArray *)self->_levelViews objectAtIndex:v3];
    [v16 removeFromSuperview];
    [(NSMutableArray *)self->_levelViews removeObjectAtIndex:v3];
  }

  [(MPUNowPlayingIndicatorView *)self _updateLevelAnimations];

  [(MPUNowPlayingIndicatorView *)self setNeedsLayout];
}

- (void)_updateLevelAnimations
{
  v2 = self;
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(MPUNowPlayingIndicatorView *)self window];
  v4 = [v3 screen];
  v5 = v4;
  if (v4)
  {
    [v4 _refreshRate];
    v7 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 _refreshRate];
    v7 = v9;
  }

  [(MPUNowPlayingIndicatorView *)v2 minimumFrameInterval];
  if (v10 == 0.0)
  {
    v11 = 0.0166666667;
  }

  else
  {
    [(MPUNowPlayingIndicatorView *)v2 minimumFrameInterval];
  }

  if (v7 < v11)
  {
    v7 = v11;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v2->_levelViews;
  v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v46;
    v44 = *MEMORY[0x277CDA7B8];
    v43 = *MEMORY[0x277CDA230];
    v41 = *v46;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [*(*(&v45 + 1) + 8 * i) layer];
        playbackState = v2->_playbackState;
        if (playbackState == 2)
        {
          v18 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"bounds.size.height"];
          [v18 setDuration:0.45];
          v35 = [MEMORY[0x277CD9EF8] functionWithName:v44];
          [v18 setTimingFunction:v35];

          [v18 setRemovedOnCompletion:0];
          [v18 setFillMode:v43];
          v36 = MEMORY[0x277CCABB0];
          v37 = [v16 presentationLayer];
          v38 = v37;
          if (!v37)
          {
            v37 = v16;
          }

          [v37 bounds];
          v39 = [v36 numberWithDouble:CGRectGetHeight(v53)];
          [v18 setFromValue:v39];

          v40 = [MEMORY[0x277CCABB0] numberWithDouble:v2->_minimumLevelHeight];
          [v18 setToValue:v40];
        }

        else if (playbackState == 1)
        {
          v18 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"bounds.size.height"];
          v24 = [MEMORY[0x277CD9EF8] functionWithName:v44];
          [v18 setTimingFunction:v24];

          [v18 setRemovedOnCompletion:0];
          [v18 setFillMode:v43];
          v25 = arc4random();
          maximumLevelHeight = v2->_maximumLevelHeight;
          v27 = maximumLevelHeight * 0.5 + (v25 % 0xB) / 10.0 * (maximumLevelHeight * 0.5);
          [v18 setDuration:maximumLevelHeight / v27 * 0.65];
          v28 = [MEMORY[0x277CCABB0] numberWithDouble:v2->_minimumLevelHeight];
          v49[0] = v28;
          v29 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
          v49[1] = v29;
          [MEMORY[0x277CCABB0] numberWithDouble:v2->_minimumLevelHeight];
          v30 = v13;
          v32 = v31 = v2;
          v49[2] = v32;
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
          [v18 setValues:v33];

          v14 = v41;
          v2 = v31;
          v13 = v30;

          LODWORD(v34) = 2139095040;
          [v18 setRepeatCount:v34];
        }

        else
        {
          if (playbackState)
          {
            goto LABEL_25;
          }

          v18 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"bounds.size.height"];
          [v18 setDuration:0.45];
          v19 = [MEMORY[0x277CD9EF8] functionWithName:v44];
          [v18 setTimingFunction:v19];

          [v18 setRemovedOnCompletion:0];
          [v18 setFillMode:v43];
          v20 = MEMORY[0x277CCABB0];
          v21 = [v16 presentationLayer];
          v22 = v21;
          if (!v21)
          {
            v21 = v16;
          }

          [v21 bounds];
          v23 = [v20 numberWithDouble:CGRectGetHeight(v52)];
          [v18 setFromValue:v23];

          [v18 setToValue:&unk_2868EA2F0];
        }

        [v18 setFrameInterval:v7];
        [v16 addAnimation:v18 forKey:@"nowPlayingIndicatorAnimation"];

LABEL_25:
      }

      v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v13);
  }
}

@end