@interface ICButtonItemIdentifier
- (BOOL)isEqual:(id)a3;
- (ICButtonItemIdentifier)initWithType:(int64_t)a3 parentIdentifier:(id)a4;
- (NSString)description;
- (NSString)displayText;
- (NSString)systemImageName;
- (int64_t)style;
- (unint64_t)hash;
@end

@implementation ICButtonItemIdentifier

- (ICButtonItemIdentifier)initWithType:(int64_t)a3 parentIdentifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ICButtonItemIdentifier;
  v8 = [(ICButtonItemIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_parentIdentifier, a4);
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ICButtonItemIdentifier type](self, "type")}];
  v7 = [(ICButtonItemIdentifier *)self parentIdentifier];
  v8 = [(ICButtonItemIdentifier *)self displayText];
  v9 = [v3 stringWithFormat:@"<%@: %p, type: %@, parentIdentifier: %@, displayText: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5 && (v6 = -[ICButtonItemIdentifier type](self, "type"), v6 == [v5 type]))
  {
    v7 = [(ICButtonItemIdentifier *)self parentIdentifier];
    v8 = [v5 parentIdentifier];
    v9 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;
    if (v9 == v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = v8;
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
    v4 = [(ICButtonItemIdentifier *)self type];
    v5 = [(ICButtonItemIdentifier *)self parentIdentifier];
    v6 = [v5 hash];
    self->_hash = ICHashWithHashKeys(v4, v7, v8, v9, v10, v11, v12, v13, v6);

    return self->_hash;
  }

  return result;
}

- (NSString)displayText
{
  v2 = [(ICButtonItemIdentifier *)self type];
  if (v2 == 1)
  {
    v3 = [MEMORY[0x1E69B7760] localizedTitleForDefaultFolder];
  }

  else if (v2)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICButtonItemIdentifier displayText]" simulateCrash:1 showAlert:0 format:@"Unknown button type"];
    v3 = &stru_1F4F94F00;
  }

  else
  {
    v3 = __ICLocalizedFrameworkString_impl(@"New Folder", @"New Folder", 0, 1);
  }

  return v3;
}

- (NSString)systemImageName
{
  v2 = [(ICButtonItemIdentifier *)self type];
  if (!v2)
  {
    return @"folder.badge.plus";
  }

  if (v2 == 1)
  {
    return @"folder";
  }

  [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICButtonItemIdentifier systemImageName]" simulateCrash:1 showAlert:0 format:@"Unknown button type"];
  return &stru_1F4F94F00;
}

- (int64_t)style
{
  v2 = [(ICButtonItemIdentifier *)self type];
  if (!v2)
  {
    return 1;
  }

  if (v2 != 1)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICButtonItemIdentifier style]" simulateCrash:1 showAlert:0 format:@"Unknown button type"];
  }

  return 0;
}

@end