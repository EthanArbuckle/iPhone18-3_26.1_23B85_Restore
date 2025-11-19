@interface CPUIMessageCellConfiguration
+ (id)configurationWithText:(id)a3 detailText:(id)a4 image:(id)a5 unread:(BOOL)a6 showsPin:(BOOL)a7 showsStar:(BOOL)a8 showsMute:(BOOL)a9 trailingText:(id)a10 trailingImage:(id)a11;
+ (id)configurationWithText:(id)a3 detailText:(id)a4 image:(id)a5 unread:(BOOL)a6 showsPin:(BOOL)a7 showsStar:(BOOL)a8 showsMute:(BOOL)a9 trailingText:(id)a10 trailingImage:(id)a11 enabled:(BOOL)a12 leadingDetailTextImage:(id)a13;
@end

@implementation CPUIMessageCellConfiguration

+ (id)configurationWithText:(id)a3 detailText:(id)a4 image:(id)a5 unread:(BOOL)a6 showsPin:(BOOL)a7 showsStar:(BOOL)a8 showsMute:(BOOL)a9 trailingText:(id)a10 trailingImage:(id)a11
{
  LOBYTE(v13) = 1;
  LOBYTE(v12) = a9;
  return [a1 configurationWithText:a3 detailText:a4 image:a5 unread:a6 showsPin:a7 showsStar:a8 showsMute:v12 trailingText:a10 trailingImage:a11 enabled:v13 leadingDetailTextImage:0];
}

+ (id)configurationWithText:(id)a3 detailText:(id)a4 image:(id)a5 unread:(BOOL)a6 showsPin:(BOOL)a7 showsStar:(BOOL)a8 showsMute:(BOOL)a9 trailingText:(id)a10 trailingImage:(id)a11 enabled:(BOOL)a12 leadingDetailTextImage:(id)a13
{
  v26 = a8;
  v13 = a7;
  v14 = a6;
  v18 = a13;
  v19 = a11;
  v20 = a10;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = objc_opt_new();
  [v24 setText:v23];

  [v24 setDetailText:v22];
  [v24 setImage:v21];

  [v24 setUnread:v14];
  [v24 setTrailingText:v20];

  [v24 setTrailingImage:v19];
  [v24 setShowsPin:v13];
  [v24 setShowsStar:v26];
  [v24 setShowsMute:a9];
  [v24 setEnabled:a12];
  [v24 setLeadingDetailTextImage:v18];

  return v24;
}

@end