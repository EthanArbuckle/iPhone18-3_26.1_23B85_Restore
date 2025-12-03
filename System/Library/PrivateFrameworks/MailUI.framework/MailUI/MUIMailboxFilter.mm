@interface MUIMailboxFilter
+ (id)iconNameForMailboxType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFilter:(id)filter;
- (BOOL)isEquivalentToPredicate:(id)predicate;
- (MUIMailboxFilter)initWithAccount:(id)account iconFromSmartMailbox:(id)mailbox;
- (MUIMailboxFilter)initWithType:(int64_t)type name:(id)name description:(id)description iconImageName:(id)imageName iconTintColor:(id)color predicate:(id)predicate hasMailboxPredicate:(BOOL)mailboxPredicate;
- (NSString)debugDescription;
- (id)initForCCMeMessages;
- (id)initForFlaggedMessages;
- (id)initForMessagesWithAttachments;
- (id)initForSender:(id)sender;
- (id)initForSmartMailboxType:(int64_t)type;
- (id)initForToMeMessages;
- (id)initForTodayMessages;
- (id)initForTouchedByCleanupMessages;
- (id)initForUnreadMessages;
- (id)initForVIPMessages;
- (unint64_t)hash;
@end

@implementation MUIMailboxFilter

- (MUIMailboxFilter)initWithType:(int64_t)type name:(id)name description:(id)description iconImageName:(id)imageName iconTintColor:(id)color predicate:(id)predicate hasMailboxPredicate:(BOOL)mailboxPredicate
{
  nameCopy = name;
  descriptionCopy = description;
  imageNameCopy = imageName;
  colorCopy = color;
  predicateCopy = predicate;
  if (!nameCopy)
  {
    [MUIMailboxFilter initWithType:a2 name:self description:? iconImageName:? iconTintColor:? predicate:? hasMailboxPredicate:?];
  }

  v31.receiver = self;
  v31.super_class = MUIMailboxFilter;
  v21 = [(MUIMailboxFilter *)&v31 init];
  v22 = v21;
  if (v21)
  {
    v21->_type = type;
    v23 = [nameCopy copy];
    name = v22->_name;
    v22->_name = v23;

    if (descriptionCopy)
    {
      v25 = descriptionCopy;
    }

    else
    {
      v25 = nameCopy;
    }

    v26 = [v25 copy];
    filterDescription = v22->_filterDescription;
    v22->_filterDescription = v26;

    v28 = [imageNameCopy copy];
    iconImageName = v22->_iconImageName;
    v22->_iconImageName = v28;

    objc_storeStrong(&v22->_iconTintColor, color);
    objc_storeStrong(&v22->_predicate, predicate);
    v22->_hasMailboxPredicate = mailboxPredicate;
  }

  return v22;
}

- (BOOL)isEquivalentToPredicate:(id)predicate
{
  predicateCopy = predicate;
  predicate = [(MUIMailboxFilter *)self predicate];
  v6 = [predicate isEqual:predicateCopy];

  return v6;
}

- (unint64_t)hash
{
  predicate = [(MUIMailboxFilter *)self predicate];
  v4 = [predicate hash];

  name = [(MUIMailboxFilter *)self name];
  v6 = 33 * (33 * v4 + [name hash]);

  filterDescription = [(MUIMailboxFilter *)self filterDescription];
  v8 = [filterDescription hash] + 193376997;

  return v6 + v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MUIMailboxFilter *)self isEqualToFilter:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToFilter:(id)filter
{
  filterCopy = filter;
  if (filterCopy)
  {
    predicate = [(MUIMailboxFilter *)self predicate];

    if (predicate)
    {
      predicate2 = [(MUIMailboxFilter *)self predicate];
      v7 = [filterCopy isEquivalentToPredicate:predicate2];
    }

    else
    {
      v7 = 0;
    }

    name = [(MUIMailboxFilter *)self name];
    name2 = [filterCopy name];
    if ([name isEqualToString:name2])
    {
      filterDescription = [(MUIMailboxFilter *)self filterDescription];
      filterDescription2 = [filterCopy filterDescription];
      v8 = [filterDescription isEqualToString:filterDescription2] & v7;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(MUIMailboxFilter *)self name];
  filterDescription = [(MUIMailboxFilter *)self filterDescription];
  predicate = [(MUIMailboxFilter *)self predicate];
  v9 = [v3 stringWithFormat:@"<%@: %p\nName: %@\nDescription:  %@\nPredicate: \n%@", v5, self, name, filterDescription, predicate];

  return v9;
}

- (id)initForFlaggedMessages
{
  predicateForFlaggedMessages = [MEMORY[0x277D06E08] predicateForFlaggedMessages];
  v4 = _EFLocalizedString();
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  LOBYTE(v8) = 0;
  v6 = [(MUIMailboxFilter *)self initWithType:0 name:v4 description:v4 iconImageName:@"flag.fill" iconTintColor:systemOrangeColor predicate:predicateForFlaggedMessages hasMailboxPredicate:v8];

  return v6;
}

- (id)initForUnreadMessages
{
  predicateForUnreadMessages = [MEMORY[0x277D06E08] predicateForUnreadMessages];
  v4 = _EFLocalizedString();
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  LOBYTE(v8) = 0;
  v6 = [(MUIMailboxFilter *)self initWithType:1 name:v4 description:v4 iconImageName:@"envelope.badge" iconTintColor:systemBlueColor predicate:predicateForUnreadMessages hasMailboxPredicate:v8];

  return v6;
}

- (id)initForToMeMessages
{
  predicateForToMeMessages = [MEMORY[0x277D06E08] predicateForToMeMessages];
  v4 = _EFLocalizedString();
  mailTransparentLightGrayColor = [MEMORY[0x277D75348] mailTransparentLightGrayColor];
  LOBYTE(v8) = 0;
  v6 = [(MUIMailboxFilter *)self initWithType:2 name:v4 description:0 iconImageName:0 iconTintColor:mailTransparentLightGrayColor predicate:predicateForToMeMessages hasMailboxPredicate:v8];

  return v6;
}

- (id)initForCCMeMessages
{
  predicateForCCMeMessages = [MEMORY[0x277D06E08] predicateForCCMeMessages];
  v4 = _EFLocalizedString();
  mailTransparentLightGrayColor = [MEMORY[0x277D75348] mailTransparentLightGrayColor];
  LOBYTE(v8) = 0;
  v6 = [(MUIMailboxFilter *)self initWithType:3 name:v4 description:0 iconImageName:0 iconTintColor:mailTransparentLightGrayColor predicate:predicateForCCMeMessages hasMailboxPredicate:v8];

  return v6;
}

- (id)initForTodayMessages
{
  predicateForTodayMessages = [MEMORY[0x277D06E08] predicateForTodayMessages];
  v4 = _EFLocalizedString();
  v5 = _EFLocalizedString();
  mailTodayFilterColor = [MEMORY[0x277D75348] mailTodayFilterColor];
  LOBYTE(v9) = 0;
  v7 = [(MUIMailboxFilter *)self initWithType:5 name:v4 description:v5 iconImageName:@"calendar" iconTintColor:mailTodayFilterColor predicate:predicateForTodayMessages hasMailboxPredicate:v9];

  return v7;
}

- (id)initForMessagesWithAttachments
{
  predicateForMessagesWithAttachments = [MEMORY[0x277D06E08] predicateForMessagesWithAttachments];
  v4 = _EFLocalizedString();
  v5 = _EFLocalizedString();
  mailAttachmentsFilterColor = [MEMORY[0x277D75348] mailAttachmentsFilterColor];
  LOBYTE(v9) = 0;
  v7 = [(MUIMailboxFilter *)self initWithType:6 name:v4 description:v5 iconImageName:@"paperclip" iconTintColor:mailAttachmentsFilterColor predicate:predicateForMessagesWithAttachments hasMailboxPredicate:v9];

  return v7;
}

- (id)initForVIPMessages
{
  v3 = _EFLocalizedString();
  v4 = _EFLocalizedString();
  v5 = [MEMORY[0x277D06E08] predicateForIsVIP:1];
  mailVIPFilterColor = [MEMORY[0x277D75348] mailVIPFilterColor];
  LOBYTE(v9) = 0;
  v7 = [(MUIMailboxFilter *)self initWithType:8 name:v3 description:v4 iconImageName:@"star.fill" iconTintColor:mailVIPFilterColor predicate:v5 hasMailboxPredicate:v9];

  return v7;
}

- (id)initForTouchedByCleanupMessages
{
  v3 = +[MUILocalizedBocceBallStrings iCloudMailCleanupFilterName];
  v4 = +[MUILocalizedBocceBallStrings iCloudMailCleanupFilterName];
  predicateForTouchedByCleanupMessages = [MEMORY[0x277D06E08] predicateForTouchedByCleanupMessages];
  mailiCloudCleanupFilterColor = [MEMORY[0x277D75348] mailiCloudCleanupFilterColor];
  LOBYTE(v9) = 0;
  v7 = [(MUIMailboxFilter *)self initWithType:18 name:v3 description:v4 iconImageName:0 iconTintColor:mailiCloudCleanupFilterColor predicate:predicateForTouchedByCleanupMessages hasMailboxPredicate:v9];

  return v7;
}

- (MUIMailboxFilter)initWithAccount:(id)account iconFromSmartMailbox:(id)mailbox
{
  accountCopy = account;
  mailboxCopy = mailbox;
  v8 = [MEMORY[0x277D06E08] predicateForAccount:accountCopy];
  v9 = 0;
  v10 = -1;
  v11 = 8;
  switch([mailboxCopy smartMailboxType])
  {
    case 0:
      goto LABEL_12;
    case 1:
      v9 = @"flag";
      v10 = 0;
      break;
    case 2:
      v11 = 1;
      goto LABEL_12;
    case 3:
      v11 = 4;
      goto LABEL_12;
    case 4:
      v11 = 6;
      goto LABEL_12;
    case 5:
      v9 = @"bell";
      v10 = 10;
      break;
    case 6:
      v11 = 5;
LABEL_12:
      v9 = @"tray";
      v10 = v11;
      break;
    case 7:
      v9 = @"bell.slash";
      v10 = 9;
      break;
    case 8:
      v9 = +[MUIMailboxFilter iconNameForMailboxType:](MUIMailboxFilter, "iconNameForMailboxType:", [mailboxCopy type]);
      v10 = 11;
      break;
    case 9:
      v9 = @"clock";
      v10 = 13;
      break;
    case 10:
      v9 = @"envelope.open.badge.clock";
      v10 = 14;
      break;
    case 11:
      v9 = @"arrow.up.circle.badge.clock";
      v10 = 15;
      break;
    case 12:
      v9 = @"xmark";
      v10 = 16;
      break;
    case 14:
      v9 = 0;
      v10 = 18;
      break;
    default:
      break;
  }

  name = [accountCopy name];
  LOBYTE(v15) = 1;
  v13 = [(MUIMailboxFilter *)self initWithType:v10 name:name description:0 iconImageName:v9 iconTintColor:0 predicate:v8 hasMailboxPredicate:v15];

  return v13;
}

- (id)initForSmartMailboxType:(int64_t)type
{
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {

        return [(MUIMailboxFilter *)self initForFlaggedMessages];
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_22;
        }

        return [(MUIMailboxFilter *)self initForUnreadMessages];
      }
    }

    else
    {

      return [(MUIMailboxFilter *)self initForVIPMessages];
    }
  }

  else if (type > 5)
  {
    if (type == 6)
    {

      return [(MUIMailboxFilter *)self initForTodayMessages];
    }

    else
    {
      if (type != 14)
      {
        goto LABEL_22;
      }

      return [(MUIMailboxFilter *)self initForTouchedByCleanupMessages];
    }
  }

  else
  {
    if (type != 3)
    {
      if (type == 4)
      {

        return [(MUIMailboxFilter *)self initForMessagesWithAttachments];
      }

LABEL_22:

      return 0;
    }

    return [(MUIMailboxFilter *)self initForToMeMessages];
  }
}

- (id)initForSender:(id)sender
{
  senderCopy = sender;
  if (!senderCopy)
  {
    [(MUIMailboxFilter *)a2 initForSender:?];
  }

  v6 = MEMORY[0x277D06E08];
  senderList = [senderCopy senderList];
  v8 = [v6 predicateForMessagesWithSenders:senderList];

  v9 = _EFLocalizedString();
  v10 = _EFLocalizedString();
  mailSenderFilterColor = [MEMORY[0x277D75348] mailSenderFilterColor];
  LOBYTE(v14) = 0;
  v12 = [(MUIMailboxFilter *)self initWithType:17 name:v9 description:v10 iconImageName:@"person.crop.circle" iconTintColor:mailSenderFilterColor predicate:v8 hasMailboxPredicate:v14];

  return v12;
}

+ (id)iconNameForMailboxType:(int64_t)type
{
  if ((type - 1) > 6)
  {
    v3 = MFImageGlyphFilterGenericMailbox;
  }

  else
  {
    v3 = off_27818A7E8[type - 1];
  }

  return *v3;
}

- (void)initWithType:(uint64_t)a1 name:(uint64_t)a2 description:iconImageName:iconTintColor:predicate:hasMailboxPredicate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMailboxFilter.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

- (void)initForSender:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMailboxFilter.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"item"}];
}

@end