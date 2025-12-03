@interface ICButtonItemIdentifier
- (BOOL)isEqual:(id)equal;
- (ICButtonItemIdentifier)initWithType:(int64_t)type parentIdentifier:(id)identifier;
- (NSString)description;
- (NSString)displayText;
- (NSString)systemImageName;
- (int64_t)style;
- (unint64_t)hash;
@end

@implementation ICButtonItemIdentifier

- (ICButtonItemIdentifier)initWithType:(int64_t)type parentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = ICButtonItemIdentifier;
  v8 = [(ICButtonItemIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_parentIdentifier, identifier);
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ICButtonItemIdentifier type](self, "type")}];
  parentIdentifier = [(ICButtonItemIdentifier *)self parentIdentifier];
  displayText = [(ICButtonItemIdentifier *)self displayText];
  v9 = [v3 stringWithFormat:@"<%@: %p, type: %@, parentIdentifier: %@, displayText: %@>", v5, self, v6, parentIdentifier, displayText];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5 && (v6 = -[ICButtonItemIdentifier type](self, "type"), v6 == [v5 type]))
  {
    parentIdentifier = [(ICButtonItemIdentifier *)self parentIdentifier];
    parentIdentifier2 = [v5 parentIdentifier];
    v9 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == parentIdentifier)
    {
      v10 = 0;
    }

    else
    {
      v10 = parentIdentifier;
    }

    v11 = v10;
    if (v9 == parentIdentifier2)
    {
      v12 = 0;
    }

    else
    {
      v12 = parentIdentifier2;
    }

    v13 = v12;
    v14 = v13;
    if (v11 | v13)
    {
      if (v11)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = [v11 isEqual:v13];
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    type = [(ICButtonItemIdentifier *)self type];
    parentIdentifier = [(ICButtonItemIdentifier *)self parentIdentifier];
    v6 = [parentIdentifier hash];
    self->_hash = ICHashWithHashKeys(type, v7, v8, v9, v10, v11, v12, v13, v6);

    return self->_hash;
  }

  return result;
}

- (NSString)displayText
{
  type = [(ICButtonItemIdentifier *)self type];
  if (type == 1)
  {
    localizedTitleForDefaultFolder = [MEMORY[0x1E69B7760] localizedTitleForDefaultFolder];
  }

  else if (type)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICButtonItemIdentifier displayText]" simulateCrash:1 showAlert:0 format:@"Unknown button type"];
    localizedTitleForDefaultFolder = &stru_1F4F94F00;
  }

  else
  {
    localizedTitleForDefaultFolder = __ICLocalizedFrameworkString_impl(@"New Folder", @"New Folder", 0, 1);
  }

  return localizedTitleForDefaultFolder;
}

- (NSString)systemImageName
{
  type = [(ICButtonItemIdentifier *)self type];
  if (!type)
  {
    return @"folder.badge.plus";
  }

  if (type == 1)
  {
    return @"folder";
  }

  [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICButtonItemIdentifier systemImageName]" simulateCrash:1 showAlert:0 format:@"Unknown button type"];
  return &stru_1F4F94F00;
}

- (int64_t)style
{
  type = [(ICButtonItemIdentifier *)self type];
  if (!type)
  {
    return 1;
  }

  if (type != 1)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICButtonItemIdentifier style]" simulateCrash:1 showAlert:0 format:@"Unknown button type"];
  }

  return 0;
}

@end