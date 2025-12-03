@interface ICMovieAttachmentView
- (BOOL)allowsPictureInPicture;
- (CGRect)playButtonFrame;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)icaxHintString;
- (void)didChangeAttachment;
- (void)didChangeMedia;
- (void)didTapAttachment:(id)attachment;
- (void)setShowLoadingImage:(BOOL)image;
- (void)sharedInit:(BOOL)init;
- (void)updateImageSize;
@end

@implementation ICMovieAttachmentView

- (id)accessibilityLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"movie attachment" value:&stru_282757698 table:0];

  icaxAttachmentViewTypeDescription = [(ICAttachmentView *)self icaxAttachmentViewTypeDescription];
  v5 = __ICAccessibilityStringForVariables();

  return v5;
}

- (id)icaxHintString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Double tap to play movie" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityUserInputLabels
{
  v8[2] = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"Movie" value:&stru_282757698 table:0];
  v8[0] = v4;
  accessibilityLabel = [(ICMovieAttachmentView *)self accessibilityLabel];
  v8[1] = accessibilityLabel;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

- (void)sharedInit:(BOOL)init
{
  v37.receiver = self;
  v37.super_class = ICMovieAttachmentView;
  [(ICImageAttachmentView *)&v37 sharedInit:init];
  v4 = [MEMORY[0x277D755B8] imageNamed:@"attachment_video_play"];
  [(ICMovieAttachmentView *)self setPlayButtonImage:v4];

  v5 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(ICMovieAttachmentView *)self setPlayButtonLayer:v5];

  [(ICMovieAttachmentView *)self bounds];
  v7 = v6;
  [(ICMovieAttachmentView *)self bounds];
  v9 = v8;
  playButtonImage = [(ICMovieAttachmentView *)self playButtonImage];
  [playButtonImage size];
  v12 = v7 + (v9 - v11) * 0.5;

  v13 = fmax(v12, 0.0);
  [(ICMovieAttachmentView *)self bounds];
  v15 = v14;
  [(ICMovieAttachmentView *)self bounds];
  v17 = v16;
  playButtonImage2 = [(ICMovieAttachmentView *)self playButtonImage];
  [playButtonImage2 size];
  v20 = v15 + (v17 - v19) * 0.5;

  v21 = fmax(v20, 0.0);
  playButtonImage3 = [(ICMovieAttachmentView *)self playButtonImage];
  [playButtonImage3 size];
  v24 = v23;
  v26 = v25;

  [(ICMovieAttachmentView *)self setPlayButtonFrame:v13, v21, v24, v26];
  playButtonLayer = [(ICMovieAttachmentView *)self playButtonLayer];
  [playButtonLayer setFrame:{v13, v21, v24, v26}];

  v28 = *MEMORY[0x277CDA700];
  playButtonLayer2 = [(ICMovieAttachmentView *)self playButtonLayer];
  [playButtonLayer2 setContentsGravity:v28];

  [(ICMovieAttachmentView *)self setClipsToBounds:1];
  playButtonImage4 = [(ICMovieAttachmentView *)self playButtonImage];
  ic_CGImage = [playButtonImage4 ic_CGImage];
  playButtonLayer3 = [(ICMovieAttachmentView *)self playButtonLayer];
  [playButtonLayer3 setContents:ic_CGImage];

  playButtonLayer4 = [(ICMovieAttachmentView *)self playButtonLayer];
  [playButtonLayer4 setOpacity:0.0];

  layer = [(ICMovieAttachmentView *)self layer];
  playButtonLayer5 = [(ICMovieAttachmentView *)self playButtonLayer];
  imageLayer = [(ICImageAttachmentView *)self imageLayer];
  [layer insertSublayer:playButtonLayer5 above:imageLayer];
}

- (BOOL)allowsPictureInPicture
{
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      nextResponder = [(ICMovieAttachmentView *)selfCopy nextResponder];

      selfCopy = nextResponder;
      if (!nextResponder)
      {
        goto LABEL_6;
      }
    }

    selfCopy = selfCopy;
  }

LABEL_6:
  isEditingOnSystemPaper = [(ICMovieAttachmentView *)selfCopy isEditingOnSystemPaper];

  return isEditingOnSystemPaper ^ 1;
}

- (void)updateImageSize
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
  imageLayer = [(ICImageAttachmentView *)self imageLayer];
  [imageLayer frame];
  v5 = v4;
  v7 = v6;

  [(ICImageAttachmentView *)self imageSize];
  v9 = v8;
  v11 = v10;
  imageLayer2 = [(ICImageAttachmentView *)self imageLayer];
  [imageLayer2 frame];
  if (TSDNearlyEqualSizes())
  {
    imageLayer3 = [(ICImageAttachmentView *)self imageLayer];
    [imageLayer3 frame];
    v16 = v15 == *(MEMORY[0x277CBF3A8] + 8) && v14 == *MEMORY[0x277CBF3A8];
  }

  else
  {
    v16 = 1;
  }

  imageLayer4 = [(ICImageAttachmentView *)self imageLayer];
  [imageLayer4 setFrame:{v5, v7, v9, v11}];

  [(ICMovieAttachmentView *)self bounds];
  v19 = v18;
  [(ICMovieAttachmentView *)self bounds];
  v21 = v20;
  playButtonImage = [(ICMovieAttachmentView *)self playButtonImage];
  [playButtonImage size];
  v24 = v19 + (v21 - v23) * 0.5;

  v25 = fmax(v24, 0.0);
  [(ICMovieAttachmentView *)self bounds];
  v27 = v26;
  [(ICMovieAttachmentView *)self bounds];
  v29 = v28;
  playButtonImage2 = [(ICMovieAttachmentView *)self playButtonImage];
  [playButtonImage2 size];
  v32 = v27 + (v29 - v31) * 0.5;

  v33 = fmax(v32, 0.0);
  playButtonImage3 = [(ICMovieAttachmentView *)self playButtonImage];
  [playButtonImage3 size];
  v36 = v35;
  v38 = v37;

  [(ICMovieAttachmentView *)self setPlayButtonFrame:v25, v33, v36, v38];
  playButtonLayer = [(ICMovieAttachmentView *)self playButtonLayer];
  [playButtonLayer setFrame:{v25, v33, v36, v38}];

  playButtonLayer2 = [(ICMovieAttachmentView *)self playButtonLayer];
  LODWORD(v41) = 1.0;
  [playButtonLayer2 setOpacity:v41];

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
  activeMovieAttachmentView = [v3 activeMovieAttachmentView];

  if (activeMovieAttachmentView == self)
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
  activeMovieAttachmentView = [v3 activeMovieAttachmentView];

  if (activeMovieAttachmentView == self)
  {
    v5 = +[ICMovieController sharedController];
    [v5 updatePlayer];
  }
}

- (void)didTapAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if ([(ICMovieAttachmentView *)self ic_isInSecureWindow])
  {
    v9.receiver = self;
    v9.super_class = ICMovieAttachmentView;
    [(ICAttachmentView *)&v9 didTapAttachment:attachmentCopy];
  }

  else
  {
    textView = [(ICAttachmentView *)self textView];
    [textView resignFirstResponder];

    v6 = +[ICMovieController sharedController];
    [v6 setActiveMovieAttachmentView:self];

    v7 = +[ICMovieController sharedController];
    [v7 updatePlayer];

    v8 = +[ICMovieController sharedController];
    [v8 moviePlayerTapped];
  }
}

- (void)setShowLoadingImage:(BOOL)image
{
  imageCopy = image;
  v6.receiver = self;
  v6.super_class = ICMovieAttachmentView;
  [(ICImageAttachmentView *)&v6 setShowLoadingImage:?];
  playButtonLayer = [(ICMovieAttachmentView *)self playButtonLayer];
  [playButtonLayer setHidden:imageCopy];
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