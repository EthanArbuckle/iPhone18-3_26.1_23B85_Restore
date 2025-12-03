@interface CALNNotificationCategory
+ (id)categoryWithIdentifier:(id)identifier actions:(id)actions hiddenPreviewsBodyPlaceholder:(id)placeholder options:(unint64_t)options;
+ (id)categoryWithIdentifier:(id)identifier actions:(id)actions hiddenPreviewsBodyPlaceholder:(id)placeholder options:(unint64_t)options categorySummaryFormat:(id)format;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCategory:(id)category;
- (CALNNotificationCategory)initWithIdentifier:(id)identifier actions:(id)actions hiddenPreviewsBodyPlaceholder:(id)placeholder options:(unint64_t)options categorySummaryFormat:(id)format;
- (id)description;
- (unint64_t)hash;
@end

@implementation CALNNotificationCategory

+ (id)categoryWithIdentifier:(id)identifier actions:(id)actions hiddenPreviewsBodyPlaceholder:(id)placeholder options:(unint64_t)options
{
  placeholderCopy = placeholder;
  actionsCopy = actions;
  identifierCopy = identifier;
  v13 = [[self alloc] initWithIdentifier:identifierCopy actions:actionsCopy hiddenPreviewsBodyPlaceholder:placeholderCopy options:options categorySummaryFormat:0];

  return v13;
}

+ (id)categoryWithIdentifier:(id)identifier actions:(id)actions hiddenPreviewsBodyPlaceholder:(id)placeholder options:(unint64_t)options categorySummaryFormat:(id)format
{
  formatCopy = format;
  placeholderCopy = placeholder;
  actionsCopy = actions;
  identifierCopy = identifier;
  v16 = [[self alloc] initWithIdentifier:identifierCopy actions:actionsCopy hiddenPreviewsBodyPlaceholder:placeholderCopy options:options categorySummaryFormat:formatCopy];

  return v16;
}

- (CALNNotificationCategory)initWithIdentifier:(id)identifier actions:(id)actions hiddenPreviewsBodyPlaceholder:(id)placeholder options:(unint64_t)options categorySummaryFormat:(id)format
{
  identifierCopy = identifier;
  actionsCopy = actions;
  placeholderCopy = placeholder;
  formatCopy = format;
  v26.receiver = self;
  v26.super_class = CALNNotificationCategory;
  v16 = [(CALNNotificationCategory *)&v26 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [actionsCopy copy];
    actions = v16->_actions;
    v16->_actions = v19;

    v21 = [placeholderCopy copy];
    hiddenPreviewsBodyPlaceholder = v16->_hiddenPreviewsBodyPlaceholder;
    v16->_hiddenPreviewsBodyPlaceholder = v21;

    v16->_options = options;
    v23 = [formatCopy copy];
    categorySummaryFormat = v16->_categorySummaryFormat;
    v16->_categorySummaryFormat = v23;
  }

  return v16;
}

- (unint64_t)hash
{
  actions = [(CALNNotificationCategory *)self actions];
  v4 = [actions hash];

  identifier = [(CALNNotificationCategory *)self identifier];
  v6 = [identifier hash] ^ v4;

  options = [(CALNNotificationCategory *)self options];
  hiddenPreviewsBodyPlaceholder = [(CALNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  v9 = v6 ^ options ^ [hiddenPreviewsBodyPlaceholder hash];

  categorySummaryFormat = [(CALNNotificationCategory *)self categorySummaryFormat];
  v11 = [categorySummaryFormat hash];

  return v9 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationCategory *)self isEqualToCategory:equalCopy];

  return v5;
}

- (BOOL)isEqualToCategory:(id)category
{
  categoryCopy = category;
  if (self == categoryCopy)
  {
    v17 = 1;
  }

  else
  {
    actions = [(CALNNotificationCategory *)self actions];
    actions2 = [(CALNNotificationCategory *)categoryCopy actions];
    v7 = CalEqualObjects();

    if (!v7)
    {
      goto LABEL_7;
    }

    identifier = [(CALNNotificationCategory *)self identifier];
    identifier2 = [(CALNNotificationCategory *)categoryCopy identifier];
    v10 = CalEqualStrings();

    if (!v10)
    {
      goto LABEL_7;
    }

    options = [(CALNNotificationCategory *)self options];
    if (options != [(CALNNotificationCategory *)categoryCopy options])
    {
      goto LABEL_7;
    }

    hiddenPreviewsBodyPlaceholder = [(CALNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
    hiddenPreviewsBodyPlaceholder2 = [(CALNNotificationCategory *)categoryCopy hiddenPreviewsBodyPlaceholder];
    v14 = CalEqualStrings();

    if (v14)
    {
      categorySummaryFormat = [(CALNNotificationCategory *)self categorySummaryFormat];
      categorySummaryFormat2 = [(CALNNotificationCategory *)categoryCopy categorySummaryFormat];
      v17 = CalEqualStrings();
    }

    else
    {
LABEL_7:
      v17 = 0;
    }
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(CALNNotificationCategory *)self identifier];
  actions = [(CALNNotificationCategory *)self actions];
  v8 = CALNStringFromNotificationCategoryOptions([(CALNNotificationCategory *)self options]);
  hiddenPreviewsBodyPlaceholder = [(CALNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  categorySummaryFormat = [(CALNNotificationCategory *)self categorySummaryFormat];
  v11 = [v3 stringWithFormat:@"<%@: %p>(identifier = %@, actions = %@, options = %@, hiddenPreviewsBodyPlaceholder = %@, categorySummaryFormat = %@)", v5, self, identifier, actions, v8, hiddenPreviewsBodyPlaceholder, categorySummaryFormat];

  return v11;
}

@end