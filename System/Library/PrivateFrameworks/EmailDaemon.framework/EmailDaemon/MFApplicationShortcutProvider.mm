@interface MFApplicationShortcutProvider
+ (OS_os_log)log;
- (MFApplicationShortcutProvider)initWithAccountsProvider:(id)a3 favoritesPersistence:(id)a4 messagePersistence:(id)a5 hookRegistry:(id)a6;
- (id)_applicationShortcutForFavoriteItem:(id)a3 badgeCountString:(id)a4;
- (id)_applicationShortcutIconForFavoriteItem:(id)a3;
- (id)_iconImageWithBackgroundColor:(id)a3;
- (id)fixedShortcutItems;
- (id)startCountQueryForMailboxFavoriteItem:(id)a3;
- (void)_favoritesDidChange:(id)a3;
- (void)_unreadCountDidChange:(id)a3;
- (void)_updateApplicationShortcuts;
- (void)dealloc;
- (void)setShortcutItems:(id)a3;
- (void)updateApplicationShortcutsForNoDisplayedAccounts;
@end

@implementation MFApplicationShortcutProvider

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E0F8;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_100185798 != -1)
  {
    dispatch_once(&qword_100185798, block);
  }

  v2 = qword_100185790;

  return v2;
}

- (MFApplicationShortcutProvider)initWithAccountsProvider:(id)a3 favoritesPersistence:(id)a4 messagePersistence:(id)a5 hookRegistry:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = MFApplicationShortcutProvider;
  v15 = [(MFApplicationShortcutProvider *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountsProvider, a3);
    objc_storeStrong(&v16->_favoritesPersistence, a4);
    objc_storeStrong(&v16->_messagePersistence, a5);
    objc_storeStrong(&v16->_hookRegistry, a6);
    [(MFApplicationShortcutProvider *)v16 _updateApplicationShortcuts];
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v16 selector:"_favoritesDidChange:" name:@"MailApplicationFavoritesDidChange" object:0];
  }

  return v16;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(MFApplicationShortcutProvider *)self specialMailboxCountObserver];
  [v4 cancel];

  v5 = [(MFApplicationShortcutProvider *)self mailboxCountObserver];
  [v5 cancel];

  v6.receiver = self;
  v6.super_class = MFApplicationShortcutProvider;
  [(MFApplicationShortcutProvider *)&v6 dealloc];
}

- (void)_favoritesDidChange:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004E458;
  v4[3] = &unk_100156400;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (void)_unreadCountDidChange:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004E504;
  v4[3] = &unk_100156400;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (void)_updateApplicationShortcuts
{
  v3 = [(MFApplicationShortcutProvider *)self accountsProvider];
  v4 = [v3 displayedAccounts];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(MFApplicationShortcutProvider *)self favoritesPersistence];
    v7 = [v6 mailboxesCollection];
    v8 = [v7 selectedItems];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v12)
    {
      v14 = *v38;
      *&v13 = 138412290;
      v34 = v13;
      while (1)
      {
        v15 = 0;
        do
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v37 + 1) + 8 * v15);
          if (v11)
          {
            goto LABEL_12;
          }

          if ([*(*(&v37 + 1) + 8 * v15) type] == 3 || objc_msgSend(v16, "type") == 2 || objc_msgSend(v16, "type") == 4)
          {
            v11 = v16;
LABEL_12:
            if (v10)
            {
              goto LABEL_21;
            }

            goto LABEL_13;
          }

          v11 = 0;
          if (v10)
          {
            goto LABEL_21;
          }

LABEL_13:
          if ([v16 type] != 5)
          {
            v10 = 0;
            goto LABEL_23;
          }

          v17 = v16;
          [v17 sourceType];
          if (_MSSourceTypeIsValid())
          {
            v10 = v17;
          }

          else
          {
            v18 = +[MFApplicationShortcutProvider log];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = v34;
              v42 = v17;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Special mailbox %@ has an invalid source type", buf, 0xCu);
            }

            v10 = 0;
          }

LABEL_21:
          if (v11 && v10)
          {

            goto LABEL_31;
          }

LABEL_23:
          v15 = v15 + 1;
        }

        while (v12 != v15);
        v19 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
        v12 = v19;
        if (!v19)
        {

          if (!v10)
          {
            goto LABEL_33;
          }

LABEL_31:
          v20 = [(MFApplicationShortcutProvider *)self specialMailboxCountObserver];
          v21 = [v20 favoriteItem];
          v22 = [v21 isEqual:v10];

          if ((v22 & 1) == 0)
          {
            [(MFApplicationShortcutProvider *)self setSpecialMailboxFavoriteItem:v10];
            v23 = [(MFApplicationShortcutProvider *)self specialMailboxCountObserver];
            [v23 cancel];

            v24 = [(MFApplicationShortcutProvider *)self startCountQueryForMailboxFavoriteItem:v10];
            [(MFApplicationShortcutProvider *)self setSpecialMailboxCountObserver:v24];
          }

LABEL_33:
          if (v11)
          {
            v25 = [(MFApplicationShortcutProvider *)self mailboxCountObserver];
            v26 = [v25 favoriteItem];
            v27 = [v26 isEqual:v11];

            if ((v27 & 1) == 0)
            {
              [(MFApplicationShortcutProvider *)self setMailboxFavoriteItem:v11];
              v28 = [(MFApplicationShortcutProvider *)self mailboxCountObserver];
              [v28 cancel];

              v29 = [(MFApplicationShortcutProvider *)self startCountQueryForMailboxFavoriteItem:v11];
              [(MFApplicationShortcutProvider *)self setMailboxCountObserver:v29];
              goto LABEL_40;
            }
          }

          goto LABEL_41;
        }
      }
    }

    v29 = v9;
LABEL_40:

LABEL_41:
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10004EAAC;
    v35[3] = &unk_1001563D8;
    v35[4] = self;
    v32 = objc_alloc_init(NSMutableArray);
    v36 = v32;
    v33 = +[EFScheduler mainThreadScheduler];
    [v33 performBlock:v35];
  }

  else
  {
    v30 = [(MFApplicationShortcutProvider *)self specialMailboxCountObserver];
    [v30 cancel];

    [(MFApplicationShortcutProvider *)self setSpecialMailboxCountObserver:0];
    v31 = [(MFApplicationShortcutProvider *)self mailboxCountObserver];
    [v31 cancel];

    [(MFApplicationShortcutProvider *)self setMailboxCountObserver:0];

    [(MFApplicationShortcutProvider *)self updateApplicationShortcutsForNoDisplayedAccounts];
  }
}

- (id)startCountQueryForMailboxFavoriteItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [_ShortcutCountObserverWrapper alloc];
  v6 = [(MFApplicationShortcutProvider *)self messagePersistence];
  v7 = [(MFApplicationShortcutProvider *)self hookRegistry];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004EF18;
  v10[3] = &unk_100157DA8;
  objc_copyWeak(&v11, &location);
  v8 = [(_ShortcutCountObserverWrapper *)v5 initWithFavoriteItem:v4 messagePersistence:v6 hookRegistry:v7 countDidChange:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v8;
}

- (void)updateApplicationShortcutsForNoDisplayedAccounts
{
  if (pthread_main_np() != 1)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MFApplicationShortcutProvider.m" lineNumber:193 description:@"Current thread must be main"];
  }

  v4 = [(MFApplicationShortcutProvider *)self fixedShortcutItems];
  v9 = [NSMutableArray arrayWithArray:v4];

  v5 = [SBSApplicationShortcutSystemIcon alloc];
  v6 = [v5 initWithSystemImageName:MFImageGlpyhsAppShortcutAddAccount];
  v7 = objc_alloc_init(SBSApplicationShortcutItem);
  [v7 setType:@"com.apple.mobilemail.MFMailAddAccountAppShortcut"];
  v8 = MFLookupLocalizedString();
  [v7 setLocalizedTitle:v8];

  [v7 setIcon:v6];
  [v9 addObject:v7];
  [(MFApplicationShortcutProvider *)self setShortcutItems:v9];
}

- (id)fixedShortcutItems
{
  v2 = qword_1001857A0;
  if (!qword_1001857A0)
  {
    v3 = [SBSApplicationShortcutSystemIcon alloc];
    v4 = [v3 initWithSystemImageName:MFImageGlpyhsAppShortcutCompose];
    v5 = objc_alloc_init(SBSApplicationShortcutItem);
    [v5 setType:@"com.apple.mobilemail.NewMessageApplicationShortcut"];
    v6 = MFLookupLocalizedString();
    [v5 setLocalizedTitle:v6];

    [v5 setIcon:v4];
    v7 = [SBSApplicationShortcutSystemIcon alloc];
    v8 = [v7 initWithSystemImageName:MFImageGlpyhsAppShortcutSearch];
    v9 = objc_alloc_init(SBSApplicationShortcutItem);
    [v9 setType:@"com.apple.mobilemail.SearchApplicationShortcut"];
    v10 = MFLookupLocalizedString();
    [v9 setLocalizedTitle:v10];

    [v9 setIcon:v8];
    v14[0] = v5;
    v14[1] = v9;
    v11 = [NSArray arrayWithObjects:v14 count:2];
    v12 = qword_1001857A0;
    qword_1001857A0 = v11;

    v2 = qword_1001857A0;
  }

  return v2;
}

- (id)_applicationShortcutForFavoriteItem:(id)a3 badgeCountString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 displayName];
  v9 = v7;
  v10 = [(MFApplicationShortcutProvider *)self _applicationShortcutIconForFavoriteItem:v6];
  if (!v10)
  {
    v11 = [SBSApplicationShortcutSystemIcon alloc];
    v10 = [v11 initWithSystemImageName:MFImageGlyphGenericMailbox];
  }

  v12 = [(MFApplicationShortcutProvider *)self favoritesPersistence];
  v13 = [v12 indexPathForItem:v6];
  v14 = [v13 row];

  v19 = @"MFMailFavoriteItemAppShortcutFavoriteItem";
  v15 = [NSNumber numberWithUnsignedInteger:v14];
  v20 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v17 = objc_alloc_init(SBSApplicationShortcutItem);
  [v17 setType:@"com.apple.mobilemail.FavoriteItemApplicationShortcut"];
  [v17 setLocalizedTitle:v8];
  [v17 setLocalizedSubtitle:v9];
  [v17 setIcon:v10];
  [v17 setUserInfo:v16];

  return v17;
}

- (id)_applicationShortcutIconForFavoriteItem:(id)a3
{
  v4 = a3;
  v5 = 0;
  v6 = &MFImageGlyphGenericMailbox;
  switch([v4 sourceType])
  {
    case 0uLL:
      if ([v4 type] == 3)
      {
        v6 = &MFImageGlyphInboxMailbox;
      }

      else if ([v4 type] == 4)
      {
        v6 = &MFImageGlyphFavoriteInboxUnifiedMailbox;
      }

      goto LABEL_3;
    case 1uLL:
      v6 = &MFImageGlyphFavoriteVIPMailbox;
      goto LABEL_3;
    case 2uLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
      v6 = &MFImageGlyphFavoriteFlaggedMailbox;
      goto LABEL_3;
    case 3uLL:
      v6 = &MFImageGlyphFavoriteUnreadMailbox;
      goto LABEL_3;
    case 4uLL:
      v9 = [SBSApplicationShortcutCustomImageIcon alloc];
      v10 = +[UIColor labelColor];
      v11 = [(MFApplicationShortcutProvider *)self _iconImageWithBackgroundColor:v10];
      v12 = UIImagePNGRepresentation(v11);
      v7 = [v9 initWithImageData:v12 dataType:0 isTemplate:0];

      v5 = 0;
      goto LABEL_5;
    case 5uLL:
      v6 = &MFImageGlyphFavoriteAttachmentsMailbox;
      goto LABEL_3;
    case 6uLL:
      v6 = &MFImageGlyphFavoriteNotifydMailbox;
      goto LABEL_3;
    case 7uLL:
      v6 = &MFImageGlyphFavoriteTodayMailbox;
      goto LABEL_3;
    case 8uLL:
      v6 = &MFImageGlyphFavoriteMuteThreadMailbox;
      goto LABEL_3;
    case 0xFuLL:
      v6 = &MFImageGlyphFavoriteReadLaterMailbox;
      goto LABEL_3;
    case 0x17uLL:
      v6 = &MFImageGlyphFavoriteFollowUpMailbox;
      goto LABEL_3;
    case 0x19uLL:
      v6 = &MFImageGlyphFavoriteSendLaterMailbox;
      goto LABEL_3;
    case 0x1AuLL:
LABEL_3:
      v5 = *v6;
      break;
    default:
      break;
  }

  v7 = [[SBSApplicationShortcutSystemIcon alloc] initWithSystemImageName:v5];
LABEL_5:

  return v7;
}

- (id)_iconImageWithBackgroundColor:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 preferredContentSizeCategory];

  v6 = sub_1000475A4(2, v5, 36.0);
  v7 = sub_1000475A4(3, v5, 36.0);
  if (v6 < v7)
  {
    v6 = v7;
  }

  v8 = +[NSBundle mainBundle];
  v9 = sub_100046FF4(2, v5, v8, v3, 0, v6);

  v10 = +[NSBundle mainBundle];
  v11 = sub_100046FF4(3, v5, v10, v3, 0, v6);

  [v9 size];
  v13 = v12;
  [v11 size];
  v24.height = v13 + v14 + 2.0;
  v24.width = v6;
  UIGraphicsBeginImageContextWithOptions(v24, 0, 0.0);
  [v9 size];
  v16 = v15;
  v18 = v17;
  y = CGRectZero.origin.y;
  [v9 drawInRect:{CGRectZero.origin.x, y, v15, v17}];
  [v9 size];
  [v11 drawInRect:{CGRectZero.origin.x, y + v20 + 2.0, v16, v18}];
  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v21;
}

- (void)setShortcutItems:(id)a3
{
  v3 = a3;
  v4 = [v3 ef_map:&stru_100157DE8];
  v5 = +[MFApplicationShortcutProvider log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting shortcuts: %@", &v7, 0xCu);
  }

  v6 = objc_alloc_init(SBSApplicationShortcutService);
  [v6 updateDynamicApplicationShortcutItems:v3 forBundleIdentifier:kMFMobileMailBundleIdentifier];
}

@end