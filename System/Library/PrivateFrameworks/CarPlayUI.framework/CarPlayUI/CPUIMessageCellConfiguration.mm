@interface CPUIMessageCellConfiguration
+ (id)configurationWithText:(id)text detailText:(id)detailText image:(id)image unread:(BOOL)unread showsPin:(BOOL)pin showsStar:(BOOL)star showsMute:(BOOL)mute trailingText:(id)self0 trailingImage:(id)self1;
+ (id)configurationWithText:(id)text detailText:(id)detailText image:(id)image unread:(BOOL)unread showsPin:(BOOL)pin showsStar:(BOOL)star showsMute:(BOOL)mute trailingText:(id)self0 trailingImage:(id)self1 enabled:(BOOL)self2 leadingDetailTextImage:(id)self3;
@end

@implementation CPUIMessageCellConfiguration

+ (id)configurationWithText:(id)text detailText:(id)detailText image:(id)image unread:(BOOL)unread showsPin:(BOOL)pin showsStar:(BOOL)star showsMute:(BOOL)mute trailingText:(id)self0 trailingImage:(id)self1
{
  LOBYTE(v13) = 1;
  LOBYTE(v12) = mute;
  return [self configurationWithText:text detailText:detailText image:image unread:unread showsPin:pin showsStar:star showsMute:v12 trailingText:trailingText trailingImage:trailingImage enabled:v13 leadingDetailTextImage:0];
}

+ (id)configurationWithText:(id)text detailText:(id)detailText image:(id)image unread:(BOOL)unread showsPin:(BOOL)pin showsStar:(BOOL)star showsMute:(BOOL)mute trailingText:(id)self0 trailingImage:(id)self1 enabled:(BOOL)self2 leadingDetailTextImage:(id)self3
{
  starCopy = star;
  pinCopy = pin;
  unreadCopy = unread;
  textImageCopy = textImage;
  trailingImageCopy = trailingImage;
  trailingTextCopy = trailingText;
  imageCopy = image;
  detailTextCopy = detailText;
  textCopy = text;
  v24 = objc_opt_new();
  [v24 setText:textCopy];

  [v24 setDetailText:detailTextCopy];
  [v24 setImage:imageCopy];

  [v24 setUnread:unreadCopy];
  [v24 setTrailingText:trailingTextCopy];

  [v24 setTrailingImage:trailingImageCopy];
  [v24 setShowsPin:pinCopy];
  [v24 setShowsStar:starCopy];
  [v24 setShowsMute:mute];
  [v24 setEnabled:enabled];
  [v24 setLeadingDetailTextImage:textImageCopy];

  return v24;
}

@end