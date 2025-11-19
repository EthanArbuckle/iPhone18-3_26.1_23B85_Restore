@interface CKAppIconLinkView
- (CGRect)linkFrame;
- (CKAppIconLinkView)initWithFrame:(CGRect)a3 withAppName:(int64_t)a4;
- (id)generateCroppedImageFromPreviewImage:(id)a3;
- (void)setPreviewImageForImage:(id)a3;
- (void)setUpViewsForApp:(int64_t)a3;
- (void)updateConstraints;
@end

@implementation CKAppIconLinkView

- (CKAppIconLinkView)initWithFrame:(CGRect)a3 withAppName:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = CKAppIconLinkView;
  v9 = [(CKAppIconLinkView *)&v12 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    [(CKAppIconLinkView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CKAppIconLinkView *)v10 setUpViewsForApp:a4];
    [(CKAppIconLinkView *)v10 setLinkFrame:x, y, width, height];
  }

  return v10;
}

- (void)setUpViewsForApp:(int64_t)a3
{
  [(CKAppIconLinkView *)self setAppName:?];
  if (a3)
  {
    if (a3 == 4)
    {
      v5 = @"WHATS_NEW_SYNDICATION_TV_FULL";
      v6 = @"HighlightTV";
    }

    else
    {
      if (a3 != 1)
      {
        goto LABEL_8;
      }

      v5 = @"WHATS_NEW_SYNDICATION_MUSIC_FULL";
      v6 = @"HighlightMusic";
    }
  }

  else
  {
    v5 = @"WHATS_NEW_SYNDICATION_SAFARI_FULL";
    v6 = @"HighlightSafari";
  }

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:v6];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit"];
  previewString = self->_previewString;
  self->_previewString = v9;

  [(CKAppIconLinkView *)self setPreviewImageForImage:v7];
LABEL_8:
  v11 = objc_alloc(MEMORY[0x1E696AD40]);
  v12 = [(CKAppIconLinkView *)self previewString];
  v37 = [v11 initWithString:v12];

  v13 = *MEMORY[0x1E69DB648];
  v14 = [MEMORY[0x1E69DB878] __ck_shortPreferredFontForTextStyle:*MEMORY[0x1E69DDCF8] size:10.0];
  [v37 addAttribute:v13 value:v14 range:{0, objc_msgSend(v37, "length")}];

  v15 = [(CKAppIconLinkView *)self appName];
  switch(v15)
  {
    case 4:
      v21 = CKFrameworkBundle();
      v17 = [v21 localizedStringForKey:@"WHATS_NEW_SYNDICATION_TV_HEADER" value:&stru_1F04268F8 table:@"ChatKit"];

      v18 = MEMORY[0x1E695DFF8];
      v19 = @"https://tv.apple.com/us/show/mythic-quest/umc.cmc.1nfdfd5zlk05fo1bwwetzldy3?ctx_brand=tvs.sbd.4000";
      goto LABEL_14;
    case 1:
      v20 = CKFrameworkBundle();
      v17 = [v20 localizedStringForKey:@"WHATS_NEW_SYNDICATION_MUSIC_HEADER" value:&stru_1F04268F8 table:@"ChatKit"];

      v18 = MEMORY[0x1E695DFF8];
      v19 = @"https://music.apple.com/us/album/green-eyes/1534718812?i=1534719300";
      goto LABEL_14;
    case 0:
      v16 = CKFrameworkBundle();
      v17 = [v16 localizedStringForKey:@"WHATS_NEW_SYNDICATION_SAFARI_HEADER" value:&stru_1F04268F8 table:@"ChatKit"];

      v18 = MEMORY[0x1E695DFF8];
      v19 = @"https://www.azuremagazine.com/article/atelier-schwimmer-completes-a-lake-cabin-for-two-fun-loving-brothers/";
LABEL_14:
      v22 = [v18 URLWithString:v19];
      v23 = 0;
      goto LABEL_16;
  }

  v23 = [v37 length];
  v22 = 0;
  v17 = 0;
LABEL_16:
  v24 = [v17 length];
  if (v24 <= [v37 length])
  {
    v23 = [v17 length];
  }

  if (v23)
  {
    v25 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:10.0];
    [v37 addAttribute:v13 value:v25 range:{0, v23}];
  }

  v26 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  [v26 setOriginalURL:v22];
  [v26 setURL:v22];
  v27 = [v22 absoluteString];
  if ([v27 hasPrefix:@"https://tv"])
  {
    v28 = +[CKSyndicationOnboardingLinkBalloonView tvSpecialization];
LABEL_24:
    v29 = v28;
    [v26 setSpecialization:v28];
    goto LABEL_26;
  }

  if ([v27 hasPrefix:@"https://music"])
  {
    v28 = +[CKSyndicationOnboardingLinkBalloonView musicSpecialization];
    goto LABEL_24;
  }

  v30 = CKFrameworkBundle();
  v31 = [v30 localizedStringForKey:@"WHATS_NEW_SYNDICATION_SAFARI_HEADER" value:&stru_1F04268F8 table:@"ChatKit"];
  [v26 setTitle:v31];

  v32 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"HighlightSafari"];
  v29 = UIImagePNGRepresentation(v32);

  v33 = [objc_alloc(MEMORY[0x1E696EC68]) initWithData:v29 MIMEType:@"image/jpeg"];
  [v26 setImage:v33];

LABEL_26:
  v34 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithMetadata:v26];
  [v34 _setPreferredSizeClass:7];
  [v34 _setApplyCornerRadius:0];
  [v34 _setDisableTapGesture:1];
  [v34 _setDisableAnimations:1];
  [v34 _setForceFlexibleWidth:1];
  v35 = [CKSyndicationOnboardingTailedBubble alloc];
  v36 = [(CKSyndicationOnboardingTailedBubble *)v35 initWithFrame:a3 withAppName:v34 withLPLinkView:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKSyndicationOnboardingTailedBubble *)v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKAppIconLinkView *)self setTailedBubble:v36];
  [(CKAppIconLinkView *)self addSubview:v36];
}

- (void)updateConstraints
{
  v31[4] = *MEMORY[0x1E69E9840];
  v3 = [(CKAppIconLinkView *)self constraints];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(CKAppIconLinkView *)self constraints];
    [v5 deactivateConstraints:v6];
  }

  v7 = [MEMORY[0x1E695DF70] array];
  [(CKAppIconLinkView *)self setConstraints:v7];

  v22 = [(CKAppIconLinkView *)self constraints];
  v29 = [(CKAppIconLinkView *)self tailedBubble];
  v28 = [v29 widthAnchor];
  v27 = [(CKAppIconLinkView *)self widthAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v31[0] = v26;
  v25 = [(CKAppIconLinkView *)self tailedBubble];
  v24 = [v25 heightAnchor];
  v23 = [(CKAppIconLinkView *)self heightAnchor];
  v21 = [v24 constraintEqualToAnchor:v23];
  v31[1] = v21;
  v20 = [(CKAppIconLinkView *)self tailedBubble];
  v8 = [v20 leadingAnchor];
  v9 = [(CKAppIconLinkView *)self leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v31[2] = v10;
  v11 = [(CKAppIconLinkView *)self tailedBubble];
  v12 = [v11 topAnchor];
  v13 = [(CKAppIconLinkView *)self topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v31[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  [v22 addObjectsFromArray:v15];

  v16 = [(CKAppIconLinkView *)self constraints];
  v17 = [v16 count];

  if (v17)
  {
    v18 = MEMORY[0x1E696ACD8];
    v19 = [(CKAppIconLinkView *)self constraints];
    [v18 activateConstraints:v19];
  }

  v30.receiver = self;
  v30.super_class = CKAppIconLinkView;
  [(CKAppIconLinkView *)&v30 updateConstraints];
}

- (id)generateCroppedImageFromPreviewImage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E69DCA80] preferredFormat];
    v6 = [(CKAppIconLinkView *)self traitCollection];
    [v6 displayScale];
    [v5 setScale:?];

    [v5 setPreferredRange:0];
    [v4 size];
    v8 = v7;
    [v4 size];
    v10 = v8 * (23.0 / v9);
    v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v5 format:{v10, 23.0}];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __58__CKAppIconLinkView_generateCroppedImageFromPreviewImage___block_invoke;
    v22[3] = &unk_1E72F24C8;
    v24 = 0;
    v25 = 0;
    v23 = v4;
    v26 = v10;
    v27 = 0x4037000000000000;
    v12 = [v11 imageWithActions:v22];
    v13 = [v12 imageWithRenderingMode:0];

    v14 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{23.0, 23.0}];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __58__CKAppIconLinkView_generateCroppedImageFromPreviewImage___block_invoke_2;
    v19[3] = &unk_1E72F6A38;
    v20 = v13;
    v21 = v10;
    v15 = v13;
    v16 = [v14 imageWithActions:v19];
    v17 = [v16 imageWithRenderingMode:0];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)setPreviewImageForImage:(id)a3
{
  v9 = [(CKAppIconLinkView *)self generateCroppedImageFromPreviewImage:a3];
  v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
  [(CKAppIconLinkView *)self setPreviewView:v4];

  v5 = [(CKAppIconLinkView *)self previewView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(CKAppIconLinkView *)self previewView];
  v7 = [v6 layer];
  [v7 setCornerRadius:6.0];

  v8 = [(CKAppIconLinkView *)self previewView];
  [v8 setClipsToBounds:1];
}

- (CGRect)linkFrame
{
  x = self->_linkFrame.origin.x;
  y = self->_linkFrame.origin.y;
  width = self->_linkFrame.size.width;
  height = self->_linkFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end