@interface ICTableAutoScroller
- (CGRect)targetFrame;
- (ICTableAttachmentViewController)tableAttachmentViewController;
- (ICTableAutoScroller)initWithTableAttachmentViewController:(id)a3 scrollDirectionMode:(unint64_t)a4;
- (ICTableAutoScrollerDelegate)delegate;
- (ICTableScrollView)horizontalScrollView;
- (UIScrollView)targetScrollView;
- (UIScrollView)verticalScrollView;
- (double)scrollFactorForScrollDirectionMode:(unint64_t)a3;
- (void)autoScrollWithScrollFactor:(double)a3 scrollDirectionMode:(unint64_t)a4;
- (void)setTargetFrame:(CGRect)a3;
- (void)stopAutoscrollTimer;
- (void)updateAutoscrollTimer:(id)a3;
@end

@implementation ICTableAutoScroller

- (ICTableAutoScroller)initWithTableAttachmentViewController:(id)a3 scrollDirectionMode:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = ICTableAutoScroller;
  v7 = [(ICTableAutoScroller *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_tableAttachmentViewController, v6);
    v8->_scrollDirectionMode = a4;
    v9 = [v6 noteScrollView];
    objc_storeWeak(&v8->_verticalScrollView, v9);

    v10 = [v6 scrollView];
    objc_storeWeak(&v8->_horizontalScrollView, v10);
  }

  return v8;
}

- (void)setTargetFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(ICTableAutoScroller *)self targetFrame];
  v46.origin.x = v8;
  v46.origin.y = v9;
  v46.size.width = v10;
  v46.size.height = v11;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  if (CGRectEqualToRect(v37, v46))
  {
    return;
  }

  self->_targetFrame.origin.x = x;
  self->_targetFrame.origin.y = y;
  self->_targetFrame.size.width = width;
  self->_targetFrame.size.height = height;
  v12 = [(ICTableAutoScroller *)self tableAttachmentViewController];
  [v12 viewport];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v38.origin.x = v14;
  v38.origin.y = v16;
  v38.size.width = v18;
  v38.size.height = v20;
  MinY = CGRectGetMinY(v38);
  [(ICTableAutoScroller *)self topThresholdDistance];
  v33 = v21;
  v39.origin.x = v14;
  v39.origin.y = v16;
  v39.size.width = v18;
  v39.size.height = v20;
  MaxY = CGRectGetMaxY(v39);
  [(ICTableAutoScroller *)self bottomThresholdDistance];
  v30 = v22;
  v40.origin.x = v14;
  v40.origin.y = v16;
  v40.size.width = v18;
  v40.size.height = v20;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = v14;
  v41.origin.y = v16;
  v41.size.width = v18;
  v41.size.height = v20;
  MaxX = CGRectGetMaxX(v41);
  v24 = [(ICTableAutoScroller *)self scrollDirectionMode];
  if (v24 == 1)
  {
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    if (MinX <= CGRectGetMinX(v44))
    {
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      if (MaxX >= CGRectGetMaxX(v45))
      {
LABEL_15:
        v29 = [(ICTableAutoScroller *)self autoscrollTimer];

        if (v29)
        {

          [(ICTableAutoScroller *)self stopAutoscrollTimer];
        }

        return;
      }
    }
  }

  else
  {
    if (v24)
    {
      goto LABEL_15;
    }

    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    if (MinY + v33 <= CGRectGetMinY(v42))
    {
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      if (MaxY - v30 >= CGRectGetMaxY(v43))
      {
        goto LABEL_15;
      }
    }
  }

  v25 = [(ICTableAutoScroller *)self autoscrollTimer];

  if (!v25)
  {
    v26 = [(ICTableAutoScroller *)self delegate];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      v28 = [(ICTableAutoScroller *)self delegate];
      [v28 tableAutoScrollerWillStartScrolling:self];
    }

    [(ICTableAutoScroller *)self setIsScrolling:1];
    v35 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_updateAutoscrollTimer_ selector:0 userInfo:1 repeats:0.02];
    [(ICTableAutoScroller *)self setAutoscrollTimer:v35];
  }
}

- (void)updateAutoscrollTimer:(id)a3
{
  v4 = [(ICTableAutoScroller *)self scrollDirectionMode];
  [(ICTableAutoScroller *)self scrollFactorForScrollDirectionMode:v4];
  v6 = v5;
  if (v6 == 0.0)
  {

    [(ICTableAutoScroller *)self stopAutoscrollTimer];
  }

  else
  {
    v7 = v6;

    [(ICTableAutoScroller *)self autoScrollWithScrollFactor:v4 scrollDirectionMode:v7];
  }
}

- (double)scrollFactorForScrollDirectionMode:(unint64_t)a3
{
  v5 = [(ICTableAutoScroller *)self tableAttachmentViewController];
  [v5 viewport];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(ICTableAutoScroller *)self targetFrame];
  v18 = v15;
  v19 = v17;
  v20 = 0.0;
  if (a3 != 1)
  {
    if (a3)
    {
      return v20;
    }

    rect = v14;
    v57 = v16;
    v58 = v17;
    MaxY = CGRectGetMaxY(*&v14);
    v63.origin.x = v7;
    v63.origin.y = v9;
    v63.size.width = v11;
    v63.size.height = v13;
    v22 = CGRectGetMaxY(v63);
    [(ICTableAutoScroller *)self bottomThresholdDistance];
    if (MaxY > v22 - v23)
    {
      v64.origin.x = v7;
      v64.origin.y = v9;
      v64.size.width = v11;
      v64.size.height = v13;
      v24 = CGRectGetMaxY(v64);
      v25 = [(ICTableAutoScroller *)self verticalScrollView];
      [v25 contentSize];
      v27 = v26;

      if (v24 < v27)
      {
        v65.origin.x = rect;
        v65.origin.y = v18;
        v65.size.width = v57;
        v65.size.height = v58;
        v28 = CGRectGetMaxY(v65);
        v66.origin.x = v7;
        v66.origin.y = v9;
        v66.size.width = v11;
        v66.size.height = v13;
        v29 = v28 - CGRectGetMaxY(v66);
        v20 = 2.0;
        if (v29 > 0.0)
        {
          v67.origin.y = v18;
          v67.origin.x = rect;
          v67.size.width = v57;
          v67.size.height = v58;
          Height = CGRectGetHeight(v67);
LABEL_10:
          v34 = v29 / (Height * 0.5) * 8.0 * (v29 / (Height * 0.5)) + 2.0;
          return floorf(v34);
        }

        return v20;
      }
    }

    v72.origin.x = rect;
    v72.origin.y = v18;
    v72.size.width = v57;
    v72.size.height = v58;
    MinY = CGRectGetMinY(v72);
    v73.origin.x = v7;
    v73.origin.y = v9;
    v73.size.width = v11;
    v73.size.height = v13;
    v37 = CGRectGetMinY(v73);
    [(ICTableAutoScroller *)self topThresholdDistance];
    if (MinY >= v37 + v38)
    {
      return v20;
    }

    v74.origin.x = v7;
    v74.origin.y = v9;
    v74.size.width = v11;
    v74.size.height = v13;
    v39 = CGRectGetMinY(v74);
    [(ICTableAutoScroller *)self topThresholdDistance];
    v41 = v58;
    if (v39 <= -v40)
    {
      return v20;
    }

    v42 = rect;
    v43 = v18;
    v44 = v57;
    v60 = CGRectGetMinY(*(&v41 - 3));
    v75.origin.x = v7;
    v75.origin.y = v9;
    v75.size.width = v11;
    v75.size.height = v13;
    v45 = CGRectGetMinY(v75);
    v46 = v58;
    v47 = v60 - v45;
    v20 = -2.0;
    if (v60 - v45 >= 0.0)
    {
      return v20;
    }

    v48 = rect;
    v49 = v18;
    v50 = v57;
    v51 = v47 / (CGRectGetHeight(*(&v46 - 3)) * 0.5);
LABEL_18:
    v55 = v51 * 8.0 * v51 + 2.0;
    return -floorf(v55);
  }

  v59 = v15;
  recta = v14;
  v31 = v16;
  MaxX = CGRectGetMaxX(*&v14);
  v68.origin.x = v7;
  v68.origin.y = v9;
  v68.size.width = v11;
  v68.size.height = v13;
  if (MaxX <= CGRectGetMaxX(v68))
  {
    v76.origin.y = v59;
    v76.origin.x = recta;
    v76.size.width = v31;
    v76.size.height = v19;
    MinX = CGRectGetMinX(v76);
    v77.origin.x = v7;
    v77.origin.y = v9;
    v77.size.width = v11;
    v77.size.height = v13;
    if (MinX >= CGRectGetMinX(v77))
    {
      return v20;
    }

    v78.origin.y = v59;
    v78.origin.x = recta;
    v78.size.width = v31;
    v78.size.height = v19;
    v53 = CGRectGetMinX(v78);
    v79.origin.x = v7;
    v79.origin.y = v9;
    v79.size.width = v11;
    v79.size.height = v13;
    v54 = v53 - CGRectGetMinX(v79);
    v20 = -2.0;
    if (v54 >= 0.0)
    {
      return v20;
    }

    v80.origin.y = v59;
    v80.origin.x = recta;
    v80.size.width = v31;
    v80.size.height = v19;
    v51 = v54 / (CGRectGetWidth(v80) * 0.5);
    goto LABEL_18;
  }

  v69.origin.y = v59;
  v69.origin.x = recta;
  v69.size.width = v31;
  v69.size.height = v19;
  v33 = CGRectGetMaxX(v69);
  v70.origin.x = v7;
  v70.origin.y = v9;
  v70.size.width = v11;
  v70.size.height = v13;
  v29 = v33 - CGRectGetMaxX(v70);
  v20 = 2.0;
  if (v29 > 0.0)
  {
    v71.origin.y = v59;
    v71.origin.x = recta;
    v71.size.width = v31;
    v71.size.height = v19;
    Height = CGRectGetWidth(v71);
    goto LABEL_10;
  }

  return v20;
}

- (void)autoScrollWithScrollFactor:(double)a3 scrollDirectionMode:(unint64_t)a4
{
  v6 = *(MEMORY[0x277CBF348] + 8);
  if (a4 == 1)
  {
    v27 = [(ICTableAutoScroller *)self horizontalScrollView];
    [v27 contentOffset];
    v29 = v28;
    v13 = v30;

    v31 = v29 + a3;
    v32 = [(ICTableAutoScroller *)self horizontalScrollView];
    [v32 contentSize];
    v34 = v33;
    v35 = [(ICTableAutoScroller *)self horizontalScrollView];
    [v35 bounds];
    v37 = v36;

    v10 = 0.0;
    if (v31 >= 0.0)
    {
      v10 = v31;
      if (v31 > v34 - v37)
      {
        v10 = v34 - v37;
      }
    }

    v38 = [(ICTableAutoScroller *)self horizontalScrollView];
    v7 = a3;
    goto LABEL_16;
  }

  v7 = *MEMORY[0x277CBF348];
  if (a4)
  {
    goto LABEL_17;
  }

  v8 = [(ICTableAutoScroller *)self verticalScrollView];
  [v8 contentOffset];
  v10 = v9;
  v12 = v11;

  v13 = v12 + a3;
  v14 = [(ICTableAutoScroller *)self verticalScrollView];
  [v14 contentInset];
  v16 = -v15;

  v17 = [(ICTableAutoScroller *)self verticalScrollView];
  [v17 contentSize];
  v19 = v18;
  v20 = [(ICTableAutoScroller *)self verticalScrollView];
  [v20 bounds];
  v22 = v19 - v21;
  v23 = [(ICTableAutoScroller *)self verticalScrollView];
  [v23 contentInset];
  v25 = v22 + v24;

  if (v25 <= v16)
  {
    v26 = v16;
  }

  else
  {
    v26 = v25;
  }

  if (v13 < v16)
  {
    v13 = v16;
LABEL_14:
    a3 = v6;
    goto LABEL_15;
  }

  if (v13 > v26)
  {
    v13 = v26;
    goto LABEL_14;
  }

LABEL_15:
  v38 = [(ICTableAutoScroller *)self verticalScrollView];
  v6 = a3;
LABEL_16:
  [v38 setContentOffset:{v10, v13}];

LABEL_17:
  v39 = [(ICTableAutoScroller *)self delegate];
  v40 = objc_opt_respondsToSelector();

  if (v40)
  {
    v41 = [(ICTableAutoScroller *)self delegate];
    [v41 tableAutoScroller:self scrollOffsetDelta:{v7, v6}];
  }
}

- (void)stopAutoscrollTimer
{
  v3 = [(ICTableAutoScroller *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ICTableAutoScroller *)self delegate];
    [v5 tableAutoScrollerWillStopScrolling:self];
  }

  v6 = [(ICTableAutoScroller *)self autoscrollTimer];
  [v6 invalidate];

  [(ICTableAutoScroller *)self setAutoscrollTimer:0];

  [(ICTableAutoScroller *)self setIsScrolling:0];
}

- (UIScrollView)targetScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetScrollView);

  return WeakRetained;
}

- (ICTableAutoScrollerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)targetFrame
{
  x = self->_targetFrame.origin.x;
  y = self->_targetFrame.origin.y;
  width = self->_targetFrame.size.width;
  height = self->_targetFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (ICTableAttachmentViewController)tableAttachmentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_tableAttachmentViewController);

  return WeakRetained;
}

- (UIScrollView)verticalScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_verticalScrollView);

  return WeakRetained;
}

- (ICTableScrollView)horizontalScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_horizontalScrollView);

  return WeakRetained;
}

@end