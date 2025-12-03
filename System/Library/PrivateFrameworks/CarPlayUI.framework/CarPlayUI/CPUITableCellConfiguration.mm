@interface CPUITableCellConfiguration
+ (id)configurationWithText:(id)text detailText:(id)detailText image:(id)image showExplicit:(BOOL)explicit accessory:(id)accessory showActivityIndicator:(BOOL)indicator showPlaybackProgress:(BOOL)progress playbackProgress:(double)self0 activePlayback:(BOOL)self1 isPlaying:(BOOL)self2 playingIndicatorLeadingSide:(BOOL)self3 isEnabled:(BOOL)self4;
@end

@implementation CPUITableCellConfiguration

+ (id)configurationWithText:(id)text detailText:(id)detailText image:(id)image showExplicit:(BOOL)explicit accessory:(id)accessory showActivityIndicator:(BOOL)indicator showPlaybackProgress:(BOOL)progress playbackProgress:(double)self0 activePlayback:(BOOL)self1 isPlaying:(BOOL)self2 playingIndicatorLeadingSide:(BOOL)self3 isEnabled:(BOOL)self4
{
  indicatorCopy = indicator;
  explicitCopy = explicit;
  accessoryCopy = accessory;
  imageCopy = image;
  detailTextCopy = detailText;
  textCopy = text;
  v23 = objc_opt_new();
  [v23 setText:textCopy];

  [v23 setDetailText:detailTextCopy];
  [v23 setImage:imageCopy];

  [v23 setShowExplicit:explicitCopy];
  [v23 setAccessory:accessoryCopy];

  [v23 setShouldShowPlaybackProgress:progress];
  [v23 setPlaybackProgress:playbackProgress];
  [v23 setActivePlayback:playback];
  [v23 setIsPlaying:playing];
  [v23 setShowActivityIndicator:indicatorCopy];
  [v23 setPlayingIndicatorLeadingSide:side];
  [v23 setEnabled:enabled];

  return v23;
}

@end