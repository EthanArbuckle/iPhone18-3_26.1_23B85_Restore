@interface CKUnreadCountLabelCell
- (CKUnreadCountLabelCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviewsForContents;
@end

@implementation CKUnreadCountLabelCell

- (CKUnreadCountLabelCell)initWithFrame:(CGRect)frame
{
  v25 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CKUnreadCountLabelCell;
  v3 = [(CKTranscriptLabelCell *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    leftSeparator = v3->_leftSeparator;
    v3->_leftSeparator = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    rightSeparator = v3->_rightSeparator;
    v3->_rightSeparator = v6;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v23[0] = v3->_leftSeparator;
    v23[1] = v3->_rightSeparator;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:{2, 0}];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          [(CKUnreadCountLabelCell *)v3 addSubview:v13];
          v14 = +[CKUIBehavior sharedBehaviors];
          theme = [v14 theme];
          transcriptTextColor = [theme transcriptTextColor];
          [v13 setBackgroundColor:transcriptTextColor];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v10);
    }
  }

  return v3;
}

- (void)layoutSubviewsForContents
{
  v16.receiver = self;
  v16.super_class = CKUnreadCountLabelCell;
  [(CKTranscriptStampCell *)&v16 layoutSubviewsForContents];
  label = [(CKTranscriptLabelCell *)self label];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  [label sizeThatFits:{v4, v5}];
  v7 = v6;

  [(CKUnreadCountLabelCell *)self frame];
  v9 = v8;
  [(CKUnreadCountLabelCell *)self frame];
  v11 = v10;
  if (CKPixelWidth_once_13 != -1)
  {
    [CKUnreadCountLabelCell layoutSubviewsForContents];
  }

  v12 = v11 * 0.5;
  v13 = (v9 - v7 + -24.0) * 0.5;
  v14 = *&CKPixelWidth_sPixel_13;
  [(UIView *)self->_leftSeparator setFrame:0.0, v12, v13, *&CKPixelWidth_sPixel_13];
  [(CKUnreadCountLabelCell *)self frame];
  [(UIView *)self->_rightSeparator setFrame:v15 - v13, v12, v13, v14];
}

@end