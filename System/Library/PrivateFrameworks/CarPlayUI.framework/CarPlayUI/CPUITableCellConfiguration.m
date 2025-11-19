@interface CPUITableCellConfiguration
+ (id)configurationWithText:(id)a3 detailText:(id)a4 image:(id)a5 showExplicit:(BOOL)a6 accessory:(id)a7 showActivityIndicator:(BOOL)a8 showPlaybackProgress:(BOOL)a9 playbackProgress:(double)a10 activePlayback:(BOOL)a11 isPlaying:(BOOL)a12 playingIndicatorLeadingSide:(BOOL)a13 isEnabled:(BOOL)a14;
@end

@implementation CPUITableCellConfiguration

+ (id)configurationWithText:(id)a3 detailText:(id)a4 image:(id)a5 showExplicit:(BOOL)a6 accessory:(id)a7 showActivityIndicator:(BOOL)a8 showPlaybackProgress:(BOOL)a9 playbackProgress:(double)a10 activePlayback:(BOOL)a11 isPlaying:(BOOL)a12 playingIndicatorLeadingSide:(BOOL)a13 isEnabled:(BOOL)a14
{
  v25 = a8;
  v15 = a6;
  v19 = a7;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = objc_opt_new();
  [v23 setText:v22];

  [v23 setDetailText:v21];
  [v23 setImage:v20];

  [v23 setShowExplicit:v15];
  [v23 setAccessory:v19];

  [v23 setShouldShowPlaybackProgress:a9];
  [v23 setPlaybackProgress:a10];
  [v23 setActivePlayback:a11];
  [v23 setIsPlaying:a12];
  [v23 setShowActivityIndicator:v25];
  [v23 setPlayingIndicatorLeadingSide:a13];
  [v23 setEnabled:a14];

  return v23;
}

@end