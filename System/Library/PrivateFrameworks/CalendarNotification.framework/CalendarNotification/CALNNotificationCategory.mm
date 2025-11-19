@interface CALNNotificationCategory
+ (id)categoryWithIdentifier:(id)a3 actions:(id)a4 hiddenPreviewsBodyPlaceholder:(id)a5 options:(unint64_t)a6;
+ (id)categoryWithIdentifier:(id)a3 actions:(id)a4 hiddenPreviewsBodyPlaceholder:(id)a5 options:(unint64_t)a6 categorySummaryFormat:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCategory:(id)a3;
- (CALNNotificationCategory)initWithIdentifier:(id)a3 actions:(id)a4 hiddenPreviewsBodyPlaceholder:(id)a5 options:(unint64_t)a6 categorySummaryFormat:(id)a7;
- (id)description;
- (unint64_t)hash;
@end

@implementation CALNNotificationCategory

+ (id)categoryWithIdentifier:(id)a3 actions:(id)a4 hiddenPreviewsBodyPlaceholder:(id)a5 options:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithIdentifier:v12 actions:v11 hiddenPreviewsBodyPlaceholder:v10 options:a6 categorySummaryFormat:0];

  return v13;
}

+ (id)categoryWithIdentifier:(id)a3 actions:(id)a4 hiddenPreviewsBodyPlaceholder:(id)a5 options:(unint64_t)a6 categorySummaryFormat:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[a1 alloc] initWithIdentifier:v15 actions:v14 hiddenPreviewsBodyPlaceholder:v13 options:a6 categorySummaryFormat:v12];

  return v16;
}

- (CALNNotificationCategory)initWithIdentifier:(id)a3 actions:(id)a4 hiddenPreviewsBodyPlaceholder:(id)a5 options:(unint64_t)a6 categorySummaryFormat:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = CALNNotificationCategory;
  v16 = [(CALNNotificationCategory *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [v13 copy];
    actions = v16->_actions;
    v16->_actions = v19;

    v21 = [v14 copy];
    hiddenPreviewsBodyPlaceholder = v16->_hiddenPreviewsBodyPlaceholder;
    v16->_hiddenPreviewsBodyPlaceholder = v21;

    v16->_options = a6;
    v23 = [v15 copy];
    categorySummaryFormat = v16->_categorySummaryFormat;
    v16->_categorySummaryFormat = v23;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(CALNNotificationCategory *)self actions];
  v4 = [v3 hash];

  v5 = [(CALNNotificationCategory *)self identifier];
  v6 = [v5 hash] ^ v4;

  v7 = [(CALNNotificationCategory *)self options];
  v8 = [(CALNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  v9 = v6 ^ v7 ^ [v8 hash];

  v10 = [(CALNNotificationCategory *)self categorySummaryFormat];
  v11 = [v10 hash];

  return v9 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationCategory *)self isEqualToCategory:v4];

  return v5;
}

- (BOOL)isEqualToCategory:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    v5 = [(CALNNotificationCategory *)self actions];
    v6 = [(CALNNotificationCategory *)v4 actions];
    v7 = CalEqualObjects();

    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = [(CALNNotificationCategory *)self identifier];
    v9 = [(CALNNotificationCategory *)v4 identifier];
    v10 = CalEqualStrings();

    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = [(CALNNotificationCategory *)self options];
    if (v11 != [(CALNNotificationCategory *)v4 options])
    {
      goto LABEL_7;
    }

    v12 = [(CALNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
    v13 = [(CALNNotificationCategory *)v4 hiddenPreviewsBodyPlaceholder];
    v14 = CalEqualStrings();

    if (v14)
    {
      v15 = [(CALNNotificationCategory *)self categorySummaryFormat];
      v16 = [(CALNNotificationCategory *)v4 categorySummaryFormat];
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
  v6 = [(CALNNotificationCategory *)self identifier];
  v7 = [(CALNNotificationCategory *)self actions];
  v8 = CALNStringFromNotificationCategoryOptions([(CALNNotificationCategory *)self options]);
  v9 = [(CALNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  v10 = [(CALNNotificationCategory *)self categorySummaryFormat];
  v11 = [v3 stringWithFormat:@"<%@: %p>(identifier = %@, actions = %@, options = %@, hiddenPreviewsBodyPlaceholder = %@, categorySummaryFormat = %@)", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

@end