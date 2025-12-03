@interface CKSyndicationOnboardingLinkBalloonView
+ (id)musicSpecialization;
+ (id)podcastSpecialization;
+ (id)tvSpecialization;
- (CKSyndicationOnboardingLinkBalloonView)initWithFrame:(CGRect)frame withURL:(id)l;
- (void)setPluginViewToURL:(id)l;
@end

@implementation CKSyndicationOnboardingLinkBalloonView

- (CKSyndicationOnboardingLinkBalloonView)initWithFrame:(CGRect)frame withURL:(id)l
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = CKSyndicationOnboardingLinkBalloonView;
  height = [(CKTranscriptPluginBalloonView *)&v14 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(CKSyndicationOnboardingLinkBalloonView *)height setPluginViewToURL:lCopy];
    [(CKTranscriptPluginBalloonView *)v11 setIsSyndicationOnboarding:1];
    [(CKTranscriptPluginBalloonView *)v11 setHasTail:1];
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 balloonCornerRadius];
    [(CKBalloonView *)v11 setCornerRadius:?];
  }

  return v11;
}

- (void)setPluginViewToURL:(id)l
{
  v4 = MEMORY[0x1E696ECA0];
  lCopy = l;
  v11 = objc_alloc_init(v4);
  [v11 setOriginalURL:lCopy];
  [v11 setURL:lCopy];
  absoluteString = [lCopy absoluteString];

  if ([absoluteString hasPrefix:@"https://tv"])
  {
    v7 = +[CKSyndicationOnboardingLinkBalloonView tvSpecialization];
  }

  else
  {
    if ([absoluteString hasPrefix:@"https://podcasts"])
    {
      +[CKSyndicationOnboardingLinkBalloonView podcastSpecialization];
    }

    else
    {
      +[CKSyndicationOnboardingLinkBalloonView musicSpecialization];
    }
    v7 = ;
  }

  v8 = v7;
  [v11 setSpecialization:v7];

  v9 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithMetadata:v11];
  [(CKTranscriptPluginBalloonView *)self setPluginView:v9 pluginController:0];
  _resolvedBackgroundColor = [v9 _resolvedBackgroundColor];
  [_resolvedBackgroundColor ck_imColorComponents];
  [(CKBalloonView *)self setDynamicFillColor:?];
}

+ (id)tvSpecialization
{
  v2 = objc_alloc_init(MEMORY[0x1E696EC30]);
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"WHATS_NEW_SYNDICATION_TV_HEADER" value:&stru_1F04268F8 table:@"ChatKit"];
  [v2 setTitle:v4];

  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"WHATS_NEW_SYNDICATION_TV_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v2 setSubtitle:v6];

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"HighlightTV"];
  v8 = UIImagePNGRepresentation(v7);
  v9 = [objc_alloc(MEMORY[0x1E696EC68]) initWithData:v8 MIMEType:@"image/png"];
  [v2 setArtwork:v9];

  return v2;
}

+ (id)podcastSpecialization
{
  v2 = objc_alloc_init(MEMORY[0x1E696ED48]);
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PODCAST_HEADER" value:&stru_1F04268F8 table:@"ChatKit"];
  [v2 setEpisodeName:v4];

  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PODCAST_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v2 setPodcastName:v6];

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"HighlightPodcast"];
  v8 = UIImagePNGRepresentation(v7);
  v9 = [objc_alloc(MEMORY[0x1E696EC68]) initWithData:v8 MIMEType:@"image/png"];
  [v2 setArtwork:v9];

  return v2;
}

+ (id)musicSpecialization
{
  v2 = objc_alloc_init(MEMORY[0x1E696ED58]);
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"WHATS_NEW_SYNDICATION_MUSIC_HEADER" value:&stru_1F04268F8 table:@"ChatKit"];
  [v2 setName:v4];

  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"WHATS_NEW_SYNDICATION_MUSIC_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v2 setArtist:v6];

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"HighlightMusic"];
  v8 = UIImagePNGRepresentation(v7);
  v9 = [objc_alloc(MEMORY[0x1E696EC68]) initWithData:v8 MIMEType:@"image/png"];
  [v2 setArtwork:v9];

  return v2;
}

@end