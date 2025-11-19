@interface ICMovieAttachmentView
- (BOOL)allowsPictureInPicture;
- (CGRect)playButtonFrame;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)icaxHintString;
- (void)didChangeAttachment;
- (void)didChangeMedia;
- (void)didTapAttachment:(id)a3;
- (void)setShowLoadingImage:(BOOL)a3;
- (void)sharedInit:(BOOL)a3;
- (void)updateImageSize;
@end

@implementation ICMovieAttachmentView

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"movie attachment" value:&stru_282757698 table:0];

  v7 = [(ICAttachmentView *)self icaxAttachmentViewTypeDescription];
  v5 = __ICAccessibilityStringForVariables();

  return v5;
}

- (id)icaxHintString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Double tap to play movie" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityUserInputLabels
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"Movie" value:&stru_282757698 table:0];
  v8[0] = v4;
  v5 = [(ICMovieAttachmentView *)self accessibilityLabel];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

- (void)sharedInit:(BOOL)a3
{
  v37.receiver = self;
  v37.super_class = ICMovieAttachmentView;
  [(ICImageAttachmentView *)&v37 sharedInit:a3];
  v4 = [MEMORY[0x277D755B8] imageNamed:@"attachment_video_play"];
  [(ICMovieAttachmentView *)self setPlayButtonImage:v4];

  v5 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(ICMovieAttachmentView *)self setPlayButtonLayer:v5];

  [(ICMovieAttachmentView *)self bounds];
  v7 = v6;
  [(ICMovieAttachmentView *)self bounds];
  v9 = v8;
  v10 = [(ICMovieAttachmentView *)self playButtonImage];
  [v10 size];
  v12 = v7 + (v9 - v11) * 0.5;

  v13 = fmax(v12, 0.0);
  [(ICMovieAttachmentView *)self bounds];
  v15 = v14;
  [(ICMovieAttachmentView *)self bounds];
  v17 = v16;
  v18 = [(ICMovieAttachmentView *)self playButtonImage];
  [v18 size];
  v20 = v15 + (v17 - v19) * 0.5;

  v21 = fmax(v20, 0.0);
  v22 = [(ICMovieAttachmentView *)self playButtonImage];
  [v22 size];
  v24 = v23;
  v26 = v25;

  [(ICMovieAttachmentView *)self setPlayButtonFrame:v13, v21, v24, v26];
  v27 = [(ICMovieAttachmentView *)self playButtonLayer];
  [v27 setFrame:{v13, v21, v24, v26}];

  v28 = *MEMORY[0x277CDA700];
  v29 = [(ICMovieAttachmentView *)self playButtonLayer];
  [v29 setContentsGravity:v28];

  [(ICMovieAttachmentView *)self setClipsToBounds:1];
  v30 = [(ICMovieAttachmentView *)self playButtonImage];
  v31 = [v30 ic_CGImage];
  v32 = [(ICMovieAttachmentView *)self playButtonLayer];
  [v32 setContents:v31];

  v33 = [(ICMovieAttachmentView *)self playButtonLayer];
  [v33 setOpacity:0.0];

  v34 = [(ICMovieAttachmentView *)self layer];
  v35 = [(ICMovieAttachmentView *)self playButtonLayer];
  v36 = [(ICImageAttachmentView *)self imageLayer];
  [v34 insertSublayer:v35 above:v36];
}

- (BOOL)allowsPictureInPicture
{
  v2 = self;
  if (v2)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [(ICMovieAttachmentView *)v2 nextResponder];

      v2 = v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v2 = v2;
  }

LABEL_6:
  v4 = [(ICMovieAttachmentView *)v2 isEditingOnSystemPaper];

  return v4 ^ 1;
}

- (void)updateImageSize
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
  v3 = [(ICImageAttachmentView *)self imageLayer];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  [(ICImageAttachmentView *)self imageSize];
  v9 = v8;
  v11 = v10;
  v12 = [(ICImageAttachmentView *)self imageLayer];
  [v12 frame];
  if (TSDNearlyEqualSizes())
  {
    v13 = [(ICImageAttachmentView *)self imageLayer];
    [v13 frame];
    v16 = v15 == *(MEMORY[0x277CBF3A8] + 8) && v14 == *MEMORY[0x277CBF3A8];
  }

  else
  {
    v16 = 1;
  }

  v17 = [(ICImageAttachmentView *)self imageLayer];
  [v17 setFrame:{v5, v7, v9, v11}];

  [(ICMovieAttachmentView *)self bounds];
  v19 = v18;
  [(ICMovieAttachmentView *)self bounds];
  v21 = v20;
  v22 = [(ICMovieAttachmentView *)self playButtonImage];
  [v22 size];
  v24 = v19 + (v21 - v23) * 0.5;

  v25 = fmax(v24, 0.0);
  [(ICMovieAttachmentView *)self bounds];
  v27 = v26;
  [(ICMovieAttachmentView *)self bounds];
  v29 = v28;
  v30 = [(ICMovieAttachmentView *)self playButtonImage];
  [v30 size];
  v32 = v27 + (v29 - v31) * 0.5;

  v33 = fmax(v32, 0.0);
  v34 = [(ICMovieAttachmentView *)self playButtonImage];
  [v34 size];
  v36 = v35;
  v38 = v37;

  [(ICMovieAttachmentView *)self setPlayButtonFrame:v25, v33, v36, v38];
  v39 = [(ICMovieAttachmentView *)self playButtonLayer];
  [v39 setFrame:{v25, v33, v36, v38}];

  v40 = [(ICMovieAttachmentView *)self playButtonLayer];
  LODWORD(v41) = 1.0;
  [v40 setOpacity:v41];

  [MEMORY[0x277CD9FF0] commit];
  if (v16)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__ICMovieAttachmentView_updateImageSize__block_invoke;
    block[3] = &unk_2781ABCF8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)didChangeAttachment
{
  v6.receiver = self;
  v6.super_class = ICMovieAttachmentView;
  [(ICImageAttachmentView *)&v6 didChangeAttachment];
  v3 = +[ICMovieController sharedController];
  v4 = [v3 activeMovieAttachmentView];

  if (v4 == self)
  {
    v5 = +[ICMovieController sharedController];
    [v5 updatePlayer];
  }
}

- (void)didChangeMedia
{
  v6.receiver = self;
  v6.super_class = ICMovieAttachmentView;
  [(ICImageAttachmentView *)&v6 didChangeMedia];
  v3 = +[ICMovieController sharedController];
  v4 = [v3 activeMovieAttachmentView];

  if (v4 == self)
  {
    v5 = +[ICMovieController sharedController];
    [v5 updatePlayer];
  }
}

- (void)didTapAttachment:(id)a3
{
  v4 = a3;
  if ([(ICMovieAttachmentView *)self ic_isInSecureWindow])
  {
    v9.receiver = self;
    v9.super_class = ICMovieAttachmentView;
    [(ICAttachmentView *)&v9 didTapAttachment:v4];
  }

  else
  {
    v5 = [(ICAttachmentView *)self textView];
    [v5 resignFirstResponder];

    v6 = +[ICMovieController sharedController];
    [v6 setActiveMovieAttachmentView:self];

    v7 = +[ICMovieController sharedController];
    [v7 updatePlayer];

    v8 = +[ICMovieController sharedController];
    [v8 moviePlayerTapped];
  }
}

- (void)setShowLoadingImage:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = ICMovieAttachmentView;
  [(ICImageAttachmentView *)&v6 setShowLoadingImage:?];
  v5 = [(ICMovieAttachmentView *)self playButtonLayer];
  [v5 setHidden:v3];
}

- (CGRect)playButtonFrame
{
  x = self->_playButtonFrame.origin.x;
  y = self->_playButtonFrame.origin.y;
  width = self->_playButtonFrame.size.width;
  height = self->_playButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end