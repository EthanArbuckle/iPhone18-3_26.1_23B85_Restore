@interface MFMailboxUid
+ (id)iconForType:(int64_t)type;
+ (id)iconNameForType:(int64_t)type;
+ (id)shorcutIconNameForMailboxType:(int64_t)type;
- (id)foundInDescriptionIncludingAccount:(BOOL)account;
- (id)icon;
- (id)iconName;
- (id)tinyDisplayIconWithColor:(id)color;
- (int)level;
@end

@implementation MFMailboxUid

+ (id)shorcutIconNameForMailboxType:(int64_t)type
{
  v4 = qword_1001855F8;
  if (!qword_1001855F8)
  {
    v11[0] = &off_1001632C8;
    v11[1] = &off_1001632E0;
    v12[0] = MFImageGlyphGenericMailbox;
    v12[1] = MFImageGlyphTrashMailbox;
    v11[2] = &off_1001632F8;
    v11[3] = &off_100163310;
    v12[2] = MFImageGlyphSentMailbox;
    v12[3] = MFImageGlyphDraftMailbox;
    v11[4] = &off_100163328;
    v11[5] = &off_100163340;
    v12[4] = MFImageGlyphOutboxMailbox;
    v12[5] = MFImageGlyphInboxMailbox;
    v11[6] = &off_100163358;
    v11[7] = &off_100163370;
    v12[6] = MFImageGlyphArchiveMailbox;
    v12[7] = MFImageGlyphJunkMailbox;
    v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:8];
    v6 = qword_1001855F8;
    qword_1001855F8 = v5;

    v4 = qword_1001855F8;
  }

  if ((type - 8) >= 0xFFFFFFFFFFFFFFF9)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = 0;
  }

  v8 = [NSNumber numberWithInteger:typeCopy];
  v9 = [v4 objectForKeyedSubscript:v8];

  return v9;
}

+ (id)iconNameForType:(int64_t)type
{
  v4 = qword_100185600;
  if (!qword_100185600)
  {
    v11[0] = &off_1001632C8;
    v11[1] = &off_1001632E0;
    v12[0] = MFImageGlyphGenericMailbox;
    v12[1] = MFImageGlyphTrashMailbox;
    v11[2] = &off_1001632F8;
    v11[3] = &off_100163310;
    v12[2] = MFImageGlyphSentMailbox;
    v12[3] = MFImageGlyphDraftMailbox;
    v11[4] = &off_100163328;
    v11[5] = &off_100163340;
    v12[4] = MFImageGlyphOutboxMailbox;
    v12[5] = MFImageGlyphInboxMailbox;
    v11[6] = &off_100163358;
    v11[7] = &off_100163370;
    v12[6] = MFImageGlyphArchiveMailbox;
    v12[7] = MFImageGlyphJunkMailbox;
    v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:8];
    v6 = qword_100185600;
    qword_100185600 = v5;

    v4 = qword_100185600;
  }

  if ((type - 8) >= 0xFFFFFFFFFFFFFFF9)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = 0;
  }

  v8 = [NSNumber numberWithInteger:typeCopy];
  v9 = [v4 objectForKeyedSubscript:v8];

  return v9;
}

+ (id)iconForType:(int64_t)type
{
  v3 = [objc_opt_class() iconNameForType:type];
  v4 = [UIImage mf_systemImageNamed:v3 forView:7];

  return v4;
}

- (id)iconName
{
  v3 = objc_opt_class();
  mailboxType = [(MFMailboxUid *)self mailboxType];

  return [v3 iconNameForType:mailboxType];
}

- (id)icon
{
  v3 = objc_opt_class();
  mailboxType = [(MFMailboxUid *)self mailboxType];

  return [v3 iconForType:mailboxType];
}

- (int)level
{
  parent = [(MFMailboxUid *)self parent];
  if (!parent)
  {
    return 0;
  }

  v3 = parent;
  v4 = 0;
  do
  {
    if ([v3 type] == 8)
    {
      break;
    }

    parent2 = [v3 parent];
    ++v4;

    v3 = parent2;
  }

  while (parent2);

  return v4;
}

- (id)foundInDescriptionIncludingAccount:(BOOL)account
{
  accountCopy = account;
  displayNameUsingSpecialNames = [(MFMailboxUid *)self displayNameUsingSpecialNames];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MAILBOX_SUFFIX" value:&stru_10015BEC8 table:@"Main"];
  if ([displayNameUsingSpecialNames hasSuffix:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"BOX_SUFFIX" value:&stru_10015BEC8 table:@"Main"];
    if ([displayNameUsingSpecialNames hasSuffix:v10])
    {
      v8 = 1;
    }

    else
    {
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"FOLDER_SUFFIX" value:&stru_10015BEC8 table:@"Main"];
      v8 = [displayNameUsingSpecialNames hasSuffix:v12];
    }
  }

  if (!accountCopy)
  {
    goto LABEL_12;
  }

  type = [(MFMailboxUid *)self type];
  if ((type - 2) >= 4 && type != 7)
  {
    goto LABEL_12;
  }

  account = [(MFMailboxUid *)self account];
  displayName = [account displayName];

  if (!displayName || (sub_10002FA14(1, v8), v16 = objc_claimAutoreleasedReturnValue(), [NSString stringWithFormat:v16, displayName, displayNameUsingSpecialNames], v17 = objc_claimAutoreleasedReturnValue(), v16, displayName, !v17))
  {
LABEL_12:
    v18 = sub_10002FA14(0, v8);
    v17 = [NSString stringWithFormat:v18, displayNameUsingSpecialNames];
  }

  return v17;
}

- (id)tinyDisplayIconWithColor:(id)color
{
  colorCopy = color;
  type = [(MFMailboxUid *)self type];
  v6 = &MFImageGlyphSentMailboxFilled;
  if (type != 4)
  {
    v6 = &MFImageGlyphGenericMailbox;
  }

  v7 = *v6;
  v8 = [UIImage mf_systemImageNamed:v7 forView:20];
  v9 = v8;
  if (colorCopy)
  {
    v10 = [v8 _flatImageWithColor:colorCopy];

    v9 = v10;
  }

  return v9;
}

@end