@interface ISAliasIcon
+ (id)_iconForBookmarkData:(id)data;
+ (id)_iconForValues:(id)values;
+ (id)aliasUUID;
- (ISAliasIcon)initWithAliasURL:(id)l;
- (ISAliasIcon)initWithBookmarkData:(id)data decorations:(id)decorations;
- (ISAliasIcon)initWithCoder:(id)coder;
- (ISConcreteIcon)icon;
- (id)description;
- (id)makeResourceProvider;
- (void)encodeWithCoder:(id)coder;
- (void)resolve;
@end

@implementation ISAliasIcon

+ (id)aliasUUID
{
  if (aliasUUID_onceToken != -1)
  {
    +[ISAliasIcon aliasUUID];
  }

  v3 = aliasUUID_aliasUUID;

  return v3;
}

uint64_t __24__ISAliasIcon_aliasUUID__block_invoke()
{
  aliasUUID_aliasUUID = [MEMORY[0x1E696AFB0] _IS_UUIDWithString:@"com.apple.icon-decoration.system.alias"];

  return MEMORY[0x1EEE66BB8]();
}

- (ISAliasIcon)initWithAliasURL:(id)l
{
  v25[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([lCopy __is__isSymLink])
  {
    v6 = MEMORY[0x1E696AFB0];
    absoluteString = [lCopy absoluteString];
    v8 = [v6 _IF_UUIDWithString:absoluteString];

    v9 = +[ISURLResourcePropertySpecification sharedInstance];
    iconInitWithURLProperties = [v9 iconInitWithURLProperties];
    v11 = [lCopy __is_resourceValuesForKeys:iconInitWithURLProperties error:0];

    v12 = [ISAliasIcon _iconForValues:v11];
    v21.receiver = self;
    v21.super_class = ISAliasIcon;
    v13 = [(ISConcreteIcon *)&v21 initWithDigest:v8];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_icon, v12);
      objc_storeStrong(&v14->_alias, l);
      v15 = [[ISIconDecoration alloc] initWithType:@"com.apple.icon-decoration.system.alias"];
      v25[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      decorations = v14->_decorations;
      v14->_decorations = v16;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DFF8] bookmarkDataWithContentsOfURL:lCopy error:0];
    if (!v8)
    {
      v18 = _ISDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = 0;
        _os_log_impl(&dword_1A77B8000, v18, OS_LOG_TYPE_DEFAULT, "Could not read bookmark from alias file with error: %@", buf, 0xCu);
      }
    }

    v11 = [[ISIconDecoration alloc] initWithType:@"com.apple.icon-decoration.system.alias"];
    v22 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v14 = [(ISAliasIcon *)self initWithBookmarkData:v8 decorations:v12];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (ISAliasIcon)initWithBookmarkData:(id)data decorations:(id)decorations
{
  v27[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  decorationsCopy = decorations;
  v9 = MEMORY[0x1E695DFF8];
  v10 = +[ISURLResourcePropertySpecification sharedInstance];
  iconInitWithURLProperties = [v10 iconInitWithURLProperties];
  v12 = [v9 resourceValuesForKeys:iconInitWithURLProperties fromBookmarkData:dataCopy];

  v13 = [ISAliasIcon _iconForValues:v12];
  v14 = [MEMORY[0x1E696AFB0] _IF_UUIDWithData:dataCopy];
  v15 = MEMORY[0x1E696AFB0];
  v27[0] = v14;
  digest = [v13 digest];
  v27[1] = digest;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v18 = [v15 _IF_UUIDByXORingUUIDs:v17];

  if (([v12 _IF_BOOLForKey:*MEMORY[0x1E695DB68]] & 1) != 0 || objc_msgSend(v12, "_IF_BOOLForKey:", *MEMORY[0x1E695DBC8]))
  {
    v19 = _ISDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ISAliasIcon initWithBookmarkData:decorations:];
    }

    if (decorationsCopy)
    {
      v20 = decorationsCopy;
    }

    else
    {
      v20 = MEMORY[0x1E695E0F0];
    }

    v21 = [[ISIconDecoration alloc] initWithType:@"com.apple.icon-decoration.system.alias"];
    decorationsCopy = [v20 arrayByAddingObject:v21];
  }

  v26.receiver = self;
  v26.super_class = ISAliasIcon;
  v22 = [(ISConcreteIcon *)&v26 initWithDigest:v18];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_icon, v13);
    objc_storeStrong(&v23->_alias, data);
    objc_storeStrong(&v23->_decorations, decorationsCopy);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (ISAliasIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ISAliasIcon;
  v5 = [(ISConcreteIcon *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    if (initWithCoder__onceToken_0 != -1)
    {
      [ISAliasIcon initWithCoder:];
    }

    v6 = [coderCopy decodeObjectOfClasses:initWithCoder__classes_0 forKey:@"alias"];
    alias = v5->_alias;
    v5->_alias = v6;

    v8 = [coderCopy decodeObjectOfClasses:initWithCoder__classes_0 forKey:@"decorations"];
    decorations = v5->_decorations;
    v5->_decorations = v8;
  }

  return v5;
}

void __29__ISAliasIcon_initWithCoder___block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCoder__classes_0;
  initWithCoder__classes_0 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ISAliasIcon;
  coderCopy = coder;
  [(ISConcreteIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_alias forKey:{@"alias", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_decorations forKey:@"decorations"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  Name = class_getName(Class);
  icon = self->_icon;
  v7 = [v3 initWithFormat:@"<%s %p> Icon: %@, Alias: %@", Name, self, icon, self->_alias];

  return v7;
}

- (void)resolve
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_0();
  v9 = 2112;
  v10 = a2;

  v7 = *MEMORY[0x1E69E9840];
}

- (ISConcreteIcon)icon
{
  resolvedIcon = [(ISAliasIcon *)self resolvedIcon];
  icon = resolvedIcon;
  if (!resolvedIcon)
  {
    icon = self->_icon;
  }

  v5 = icon;

  return v5;
}

- (id)makeResourceProvider
{
  [(ISAliasIcon *)self resolve];
  icon = [(ISAliasIcon *)self icon];
  makeResourceProvider = [icon makeResourceProvider];

  return makeResourceProvider;
}

+ (id)_iconForBookmarkData:(id)data
{
  v3 = MEMORY[0x1E695DFF8];
  dataCopy = data;
  v5 = +[ISURLResourcePropertySpecification sharedInstance];
  iconInitWithURLProperties = [v5 iconInitWithURLProperties];
  v7 = [v3 resourceValuesForKeys:iconInitWithURLProperties fromBookmarkData:dataCopy];

  v8 = [ISAliasIcon _iconForValues:v7];

  return v8;
}

+ (id)_iconForValues:(id)values
{
  valuesCopy = values;
  if ([valuesCopy _IF_BOOLForKey:*MEMORY[0x1E695DB70]])
  {
    v4 = _ISDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      +[ISAliasIcon(Factory) _iconForValues:];
    }

    v5 = [valuesCopy _IF_stringForKey:*MEMORY[0x1E695DA88]];
    if (!v5)
    {
      v5 = [valuesCopy _IF_stringForKey:*MEMORY[0x1E695DC40]];
    }

    pathExtension = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
    v7 = [[ISBundleIcon alloc] initWithBundleURL:pathExtension];
    goto LABEL_16;
  }

  if ([valuesCopy _IF_BOOLForKey:*MEMORY[0x1E695DBA0]])
  {
    v5 = [valuesCopy _IF_stringForKey:*MEMORY[0x1E695DC40]];
    pathExtension = [v5 pathExtension];
    v8 = _ISDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[ISAliasIcon(Factory) _iconForValues:];
    }

    v9 = [ISTagIcon alloc];
    v10 = MEMORY[0x1E6963868];
LABEL_15:
    v7 = [(ISTagIcon *)v9 initWithFileExtension:pathExtension baseType:*v10];
    goto LABEL_16;
  }

  if ([valuesCopy _IF_BOOLForKey:*MEMORY[0x1E695DBB8]])
  {
    v5 = [valuesCopy _IF_stringForKey:*MEMORY[0x1E695DC40]];
    pathExtension = [v5 pathExtension];
    v11 = _ISDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[ISAliasIcon(Factory) _iconForValues:];
    }

    v9 = [ISTagIcon alloc];
    v10 = MEMORY[0x1E6963800];
    goto LABEL_15;
  }

  if ([valuesCopy _IF_BOOLForKey:*MEMORY[0x1E695DB78]])
  {
    v16 = _ISDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[ISAliasIcon(Factory) _iconForValues:];
    }

    pathExtension = [valuesCopy _IF_stringForKey:*MEMORY[0x1E695DC40]];
    if (pathExtension)
    {
      v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathExtension isDirectory:1];
      v17 = +[ISCustomIconManager sharedInstance];
      v18 = [v17 specialFolderTypeForURL:v5];

      if (v18)
      {
        v19 = _ISDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          +[ISAliasIcon(Factory) _iconForValues:];
        }

        v12 = [[ISTypeIcon alloc] initWithType:v18];
LABEL_17:

        if (v12)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v5 = 0;
    }

    v20 = [ISTypeIcon alloc];
    v7 = [(ISTypeIcon *)v20 initWithType:*MEMORY[0x1E69637D0]];
LABEL_16:
    v12 = v7;
    goto LABEL_17;
  }

LABEL_18:
  v13 = _ISDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    +[ISAliasIcon(Factory) _iconForValues:];
  }

  v14 = [ISTypeIcon alloc];
  v12 = [(ISTypeIcon *)v14 initWithType:*MEMORY[0x1E6963800]];
LABEL_21:

  return v12;
}

- (void)initWithBookmarkData:decorations:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end