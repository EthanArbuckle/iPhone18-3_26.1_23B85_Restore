@interface _NAUIAmbigousLayoutView
+ (void)installOnView:(id)a3 forVariable:(id)a4;
- (void)drawRect:(CGRect)a3;
@end

@implementation _NAUIAmbigousLayoutView

+ (void)installOnView:(id)a3 forVariable:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = [v7 valueForKey:@"_boundsWidthVariable"];

  if (v8 == v6)
  {
    v14 = @".Width";
  }

  else
  {
    v9 = [v7 valueForKey:@"_boundsHeightVariable"];

    if (v9 == v6)
    {
      v14 = @".Height";
    }

    else
    {
      v10 = [v7 valueForKey:@"_minXVariable"];

      if (v10 == v6)
      {
        v14 = @".minX";
      }

      else
      {
        v11 = [v7 valueForKey:@"_minYVariable"];

        if (v11 == v6)
        {
          v14 = @".minY";
        }

        else
        {
          v12 = [v7 valueForKey:@"_contentWidthVariable"];

          if (v12 == v6)
          {
            v14 = @".contentWidth";
          }

          else
          {
            v13 = [v7 valueForKey:@"_contentHeightVariable"];

            if (v13 == v6)
            {
              v14 = @".contentHeight";
            }

            else
            {
              v14 = 0;
            }
          }
        }
      }
    }
  }

  v15 = v14;
  if (([(__CFString *)v15 isEqualToString:@".Width"]& 1) != 0 || [(__CFString *)v15 isEqualToString:@".contentWidth"])
  {
    [v7 frame];
    v17 = v16;
    v18 = 0.0;
    v19 = -11.0;
    v20 = 10.0;
  }

  else
  {
    v18 = *MEMORY[0x277CBF3A0];
    v19 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v20 = *(MEMORY[0x277CBF3A0] + 24);
  }

  if (([(__CFString *)v15 isEqualToString:@".Height"]& 1) != 0 || [(__CFString *)v15 isEqualToString:@".contentHeight"])
  {
    [v7 frame];
    if (v21 == 0.0)
    {
      [v7 bounds];
      v18 = v22 + 1.0;
    }

    else
    {
      v18 = -11.0;
    }

    [v7 bounds];
    v20 = v23;
    v19 = 0.0;
    v17 = 10.0;
  }

  if ([(__CFString *)v15 isEqualToString:@".minX"])
  {
    [v7 bounds];
    v20 = v24;
    v19 = 0.0;
    v17 = 1.0;
    v18 = 0.0;
  }

  if ([(__CFString *)v15 isEqualToString:@".minY"])
  {
    [v7 bounds];
    v17 = v25;
    v19 = 0.0;
    v20 = 1.0;
    v18 = 0.0;
  }

  if (_showAutolayoutIssues == 1)
  {
    [v7 exerciseAmbiguityInLayout];
  }

  v26 = objc_getAssociatedObject(v7, v15);
  if (!v26)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_NAUIAmbigousLayoutView installOnView:v7 forVariable:v6];
    }

    v27 = [[_NAUIAmbigousLayoutView alloc] initWithFrame:v18, v19, v17, v20];
    v28 = v27;
    if (_showAutolayoutIssues == 1)
    {
      [(_NAUIAmbigousLayoutView *)v27 setOpaque:0];
      v29 = [MEMORY[0x277D75348] orangeColor];
      [(_NAUIAmbigousLayoutView *)v28 setTintColor:v29];

      [v7 addSubview:v28];
      [v7 setClipsToBounds:0];
    }

    objc_setAssociatedObject(v7, v15, v28, 1);
  }
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = [(_NAUIAmbigousLayoutView *)self tintColor];
  [v5 setFill];

  [(_NAUIAmbigousLayoutView *)self bounds];
  Width = CGRectGetWidth(v23);
  [(_NAUIAmbigousLayoutView *)self bounds];
  Height = CGRectGetHeight(v24);
  [(_NAUIAmbigousLayoutView *)self bounds];
  if (Width <= Height)
  {
    v31.size.width = CGRectGetWidth(*&v8);
    MidY = 0.0;
    v16 = 1.0;
    v31.origin.x = 0.0;
    v31.origin.y = 0.0;
    v31.size.height = 1.0;
    CGContextFillRect(CurrentContext, v31);
    [(_NAUIAmbigousLayoutView *)self bounds];
    v17 = CGRectGetMaxY(v32) + -1.0;
    [(_NAUIAmbigousLayoutView *)self bounds];
    v34.size.width = CGRectGetWidth(v33);
    v34.origin.x = 0.0;
    v34.size.height = 1.0;
    v34.origin.y = v17;
    CGContextFillRect(CurrentContext, v34);
    [(_NAUIAmbigousLayoutView *)self bounds];
    MidX = CGRectGetMidX(v35);
    [(_NAUIAmbigousLayoutView *)self bounds];
    v13 = CGRectGetHeight(v36);
  }

  else
  {
    v25.size.height = CGRectGetHeight(*&v8);
    MidX = 0.0;
    v13 = 1.0;
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = 1.0;
    CGContextFillRect(CurrentContext, v25);
    [(_NAUIAmbigousLayoutView *)self bounds];
    v14 = CGRectGetMaxX(v26) + -1.0;
    [(_NAUIAmbigousLayoutView *)self bounds];
    v28.size.height = CGRectGetHeight(v27);
    v28.origin.y = 0.0;
    v28.size.width = 1.0;
    v28.origin.x = v14;
    CGContextFillRect(CurrentContext, v28);
    [(_NAUIAmbigousLayoutView *)self bounds];
    MidY = CGRectGetMidY(v29);
    [(_NAUIAmbigousLayoutView *)self bounds];
    v16 = CGRectGetWidth(v30);
  }

  v18 = MidX;
  v19 = MidY;
  v20 = v16;
  v21 = v13;

  CGContextFillRect(CurrentContext, *&v18);
}

+ (void)installOnView:(uint64_t)a1 forVariable:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&dword_25B83E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AMBIGUOUS LAYOUT: %@ - %@", &v2, 0x16u);
}

@end