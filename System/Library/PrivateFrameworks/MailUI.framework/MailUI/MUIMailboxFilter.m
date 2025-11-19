@interface MUIMailboxFilter
+ (id)iconNameForMailboxType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFilter:(id)a3;
- (BOOL)isEquivalentToPredicate:(id)a3;
- (MUIMailboxFilter)initWithAccount:(id)a3 iconFromSmartMailbox:(id)a4;
- (MUIMailboxFilter)initWithType:(int64_t)a3 name:(id)a4 description:(id)a5 iconImageName:(id)a6 iconTintColor:(id)a7 predicate:(id)a8 hasMailboxPredicate:(BOOL)a9;
- (NSString)debugDescription;
- (id)initForCCMeMessages;
- (id)initForFlaggedMessages;
- (id)initForMessagesWithAttachments;
- (id)initForSender:(id)a3;
- (id)initForSmartMailboxType:(int64_t)a3;
- (id)initForToMeMessages;
- (id)initForTodayMessages;
- (id)initForTouchedByCleanupMessages;
- (id)initForUnreadMessages;
- (id)initForVIPMessages;
- (unint64_t)hash;
@end

@implementation MUIMailboxFilter

- (MUIMailboxFilter)initWithType:(int64_t)a3 name:(id)a4 description:(id)a5 iconImageName:(id)a6 iconTintColor:(id)a7 predicate:(id)a8 hasMailboxPredicate:(BOOL)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (!v16)
  {
    [MUIMailboxFilter initWithType:a2 name:self description:? iconImageName:? iconTintColor:? predicate:? hasMailboxPredicate:?];
  }

  v31.receiver = self;
  v31.super_class = MUIMailboxFilter;
  v21 = [(MUIMailboxFilter *)&v31 init];
  v22 = v21;
  if (v21)
  {
    v21->_type = a3;
    v23 = [v16 copy];
    name = v22->_name;
    v22->_name = v23;

    if (v17)
    {
      v25 = v17;
    }

    else
    {
      v25 = v16;
    }

    v26 = [v25 copy];
    filterDescription = v22->_filterDescription;
    v22->_filterDescription = v26;

    v28 = [v18 copy];
    iconImageName = v22->_iconImageName;
    v22->_iconImageName = v28;

    objc_storeStrong(&v22->_iconTintColor, a7);
    objc_storeStrong(&v22->_predicate, a8);
    v22->_hasMailboxPredicate = a9;
  }

  return v22;
}

- (BOOL)isEquivalentToPredicate:(id)a3
{
  v4 = a3;
  v5 = [(MUIMailboxFilter *)self predicate];
  v6 = [v5 isEqual:v4];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(MUIMailboxFilter *)self predicate];
  v4 = [v3 hash];

  v5 = [(MUIMailboxFilter *)self name];
  v6 = 33 * (33 * v4 + [v5 hash]);

  v7 = [(MUIMailboxFilter *)self filterDescription];
  v8 = [v7 hash] + 193376997;

  return v6 + v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MUIMailboxFilter *)self isEqualToFilter:v4];
  }

  return v5;
}

- (BOOL)isEqualToFilter:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MUIMailboxFilter *)self predicate];

    if (v5)
    {
      v6 = [(MUIMailboxFilter *)self predicate];
      v7 = [v4 isEquivalentToPredicate:v6];
    }

    else
    {
      v7 = 0;
    }

    v9 = [(MUIMailboxFilter *)self name];
    v10 = [v4 name];
    if ([v9 isEqualToString:v10])
    {
      v11 = [(MUIMailboxFilter *)self filterDescription];
      v12 = [v4 filterDescription];
      v8 = [v11 isEqualToString:v12] & v7;
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
  v6 = [(MUIMailboxFilter *)self name];
  v7 = [(MUIMailboxFilter *)self filterDescription];
  v8 = [(MUIMailboxFilter *)self predicate];
  v9 = [v3 stringWithFormat:@"<%@: %p\nName: %@\nDescription:  %@\nPredicate: \n%@", v5, self, v6, v7, v8];

  return v9;
}

- (id)initForFlaggedMessages
{
  v3 = [MEMORY[0x277D06E08] predicateForFlaggedMessages];
  v4 = _EFLocalizedString();
  v5 = [MEMORY[0x277D75348] systemOrangeColor];
  LOBYTE(v8) = 0;
  v6 = [(MUIMailboxFilter *)self initWithType:0 name:v4 description:v4 iconImageName:@"flag.fill" iconTintColor:v5 predicate:v3 hasMailboxPredicate:v8];

  return v6;
}

- (id)initForUnreadMessages
{
  v3 = [MEMORY[0x277D06E08] predicateForUnreadMessages];
  v4 = _EFLocalizedString();
  v5 = [MEMORY[0x277D75348] systemBlueColor];
  LOBYTE(v8) = 0;
  v6 = [(MUIMailboxFilter *)self initWithType:1 name:v4 description:v4 iconImageName:@"envelope.badge" iconTintColor:v5 predicate:v3 hasMailboxPredicate:v8];

  return v6;
}

- (id)initForToMeMessages
{
  v3 = [MEMORY[0x277D06E08] predicateForToMeMessages];
  v4 = _EFLocalizedString();
  v5 = [MEMORY[0x277D75348] mailTransparentLightGrayColor];
  LOBYTE(v8) = 0;
  v6 = [(MUIMailboxFilter *)self initWithType:2 name:v4 description:0 iconImageName:0 iconTintColor:v5 predicate:v3 hasMailboxPredicate:v8];

  return v6;
}

- (id)initForCCMeMessages
{
  v3 = [MEMORY[0x277D06E08] predicateForCCMeMessages];
  v4 = _EFLocalizedString();
  v5 = [MEMORY[0x277D75348] mailTransparentLightGrayColor];
  LOBYTE(v8) = 0;
  v6 = [(MUIMailboxFilter *)self initWithType:3 name:v4 description:0 iconImageName:0 iconTintColor:v5 predicate:v3 hasMailboxPredicate:v8];

  return v6;
}

- (id)initForTodayMessages
{
  v3 = [MEMORY[0x277D06E08] predicateForTodayMessages];
  v4 = _EFLocalizedString();
  v5 = _EFLocalizedString();
  v6 = [MEMORY[0x277D75348] mailTodayFilterColor];
  LOBYTE(v9) = 0;
  v7 = [(MUIMailboxFilter *)self initWithType:5 name:v4 description:v5 iconImageName:@"calendar" iconTintColor:v6 predicate:v3 hasMailboxPredicate:v9];

  return v7;
}

- (id)initForMessagesWithAttachments
{
  v3 = [MEMORY[0x277D06E08] predicateForMessagesWithAttachments];
  v4 = _EFLocalizedString();
  v5 = _EFLocalizedString();
  v6 = [MEMORY[0x277D75348] mailAttachmentsFilterColor];
  LOBYTE(v9) = 0;
  v7 = [(MUIMailboxFilter *)self initWithType:6 name:v4 description:v5 iconImageName:@"paperclip" iconTintColor:v6 predicate:v3 hasMailboxPredicate:v9];

  return v7;
}

- (id)initForVIPMessages
{
  v3 = _EFLocalizedString();
  v4 = _EFLocalizedString();
  v5 = [MEMORY[0x277D06E08] predicateForIsVIP:1];
  v6 = [MEMORY[0x277D75348] mailVIPFilterColor];
  LOBYTE(v9) = 0;
  v7 = [(MUIMailboxFilter *)self initWithType:8 name:v3 description:v4 iconImageName:@"star.fill" iconTintColor:v6 predicate:v5 hasMailboxPredicate:v9];

  return v7;
}

- (id)initForTouchedByCleanupMessages
{
  v3 = +[MUILocalizedBocceBallStrings iCloudMailCleanupFilterName];
  v4 = +[MUILocalizedBocceBallStrings iCloudMailCleanupFilterName];
  v5 = [MEMORY[0x277D06E08] predicateForTouchedByCleanupMessages];
  v6 = [MEMORY[0x277D75348] mailiCloudCleanupFilterColor];
  LOBYTE(v9) = 0;
  v7 = [(MUIMailboxFilter *)self initWithType:18 name:v3 description:v4 iconImageName:0 iconTintColor:v6 predicate:v5 hasMailboxPredicate:v9];

  return v7;
}

- (MUIMailboxFilter)initWithAccount:(id)a3 iconFromSmartMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D06E08] predicateForAccount:v6];
  v9 = 0;
  v10 = -1;
  v11 = 8;
  switch([v7 smartMailboxType])
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
      v9 = +[MUIMailboxFilter iconNameForMailboxType:](MUIMailboxFilter, "iconNameForMailboxType:", [v7 type]);
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

  v12 = [v6 name];
  LOBYTE(v15) = 1;
  v13 = [(MUIMailboxFilter *)self initWithType:v10 name:v12 description:0 iconImageName:v9 iconTintColor:0 predicate:v8 hasMailboxPredicate:v15];

  return v13;
}

- (id)initForSmartMailboxType:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {

        return [(MUIMailboxFilter *)self initForFlaggedMessages];
      }

      else
      {
        if (a3 != 2)
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

  else if (a3 > 5)
  {
    if (a3 == 6)
    {

      return [(MUIMailboxFilter *)self initForTodayMessages];
    }

    else
    {
      if (a3 != 14)
      {
        goto LABEL_22;
      }

      return [(MUIMailboxFilter *)self initForTouchedByCleanupMessages];
    }
  }

  else
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {

        return [(MUIMailboxFilter *)self initForMessagesWithAttachments];
      }

LABEL_22:

      return 0;
    }

    return [(MUIMailboxFilter *)self initForToMeMessages];
  }
}

- (id)initForSender:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(MUIMailboxFilter *)a2 initForSender:?];
  }

  v6 = MEMORY[0x277D06E08];
  v7 = [v5 senderList];
  v8 = [v6 predicateForMessagesWithSenders:v7];

  v9 = _EFLocalizedString();
  v10 = _EFLocalizedString();
  v11 = [MEMORY[0x277D75348] mailSenderFilterColor];
  LOBYTE(v14) = 0;
  v12 = [(MUIMailboxFilter *)self initWithType:17 name:v9 description:v10 iconImageName:@"person.crop.circle" iconTintColor:v11 predicate:v8 hasMailboxPredicate:v14];

  return v12;
}

+ (id)iconNameForMailboxType:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    v3 = MFImageGlyphFilterGenericMailbox;
  }

  else
  {
    v3 = off_27818A7E8[a3 - 1];
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