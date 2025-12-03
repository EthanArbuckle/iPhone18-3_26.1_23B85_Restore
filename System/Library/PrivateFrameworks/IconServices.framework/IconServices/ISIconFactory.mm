@interface ISIconFactory
+ (id)_iconForURL:(id)l options:(unint64_t)options;
- (ISIconFactory)initWithApplicationBundleIdentifier:(id)identifier;
- (ISIconFactory)initWithApplicationExtensionBundleIdentifier:(id)identifier;
- (ISIconFactory)initWithApplicationIdentity:(id)identity;
- (ISIconFactory)initWithBundleIdentifier:(id)identifier;
- (ISIconFactory)initWithBundleURL:(id)l fileExtension:(id)extension;
- (ISIconFactory)initWithBundleURL:(id)l type:(id)type;
- (ISIconFactory)initWithFileExtension:(id)extension;
- (ISIconFactory)initWithImages:(id)images;
- (ISIconFactory)initWithMIMEType:(id)type;
- (ISIconFactory)initWithModelCode:(id)code;
- (ISIconFactory)initWithResourceProxy:(id)proxy;
- (ISIconFactory)initWithSymbolName:(id)name;
- (ISIconFactory)initWithSymbolName:(id)name configuration:(id)configuration;
- (ISIconFactory)initWithType:(id)type iconConfiguration:(id)configuration;
- (ISIconFactory)initWithTypeIdentifier:(id)identifier layerGroups:(id)groups;
- (ISIconFactory)initWithURL:(id)l;
- (ISIconFactory)initWithURL:(id)l options:(unint64_t)options;
- (id)_init;
@end

@implementation ISIconFactory

+ (id)_iconForURL:(id)l options:(unint64_t)options
{
  optionsCopy = options;
  v110[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = +[ISURLResourcePropertySpecification sharedInstance];
  iconInitWithURLProperties = [v5 iconInitWithURLProperties];
  v101 = 0;
  v7 = [lCopy __is_resourceValuesForKeys:iconInitWithURLProperties error:&v101];
  v8 = v101;

  v9 = MEMORY[0x1E695DC40];
  if (v7)
  {
    v10 = *MEMORY[0x1E695DC40];
  }

  else
  {
    v11 = _ISDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v103 = lCopy;
      v104 = 2112;
      v105 = v8;
      _os_log_impl(&dword_1A77B8000, v11, OS_LOG_TYPE_DEFAULT, "Could not get resource properties for URL: %@ with error: %@", buf, 0x16u);
    }

    v12 = _ISURLCacheLog();
    v13 = os_signpost_id_make_with_pointer(v12, lCopy);

    if (v13)
    {
      v14 = _ISURLCacheLog();
      v15 = os_signpost_enabled(v14);

      if (v15)
      {
        v16 = _ISURLCacheLog();
        v17 = v16;
        if (v13 != -1 && os_signpost_enabled(v16))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A77B8000, v17, OS_SIGNPOST_EVENT, v13, "path", "resource property values are nil", buf, 2u);
        }
      }
    }

    v10 = *v9;
    v109[0] = *v9;
    path = [lCopy path];
    v19 = path;
    v20 = &stru_1F1A4DB80;
    if (path)
    {
      v20 = path;
    }

    v109[1] = *MEMORY[0x1E695DBB8];
    v110[0] = v20;
    v110[1] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:2];
  }

  path2 = [v7 _IF_objectOfClass:objc_opt_class() forKey:v10];
  if (!path2)
  {
    v22 = _ISURLCacheLog();
    v23 = os_signpost_id_make_with_pointer(v22, lCopy);

    if (v23)
    {
      v24 = _ISURLCacheLog();
      v25 = os_signpost_enabled(v24);

      if (v25)
      {
        v26 = _ISURLCacheLog();
        v27 = v26;
        if (v23 != -1 && os_signpost_enabled(v26))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A77B8000, v27, OS_SIGNPOST_EVENT, v23, "path", "NSURLPathKey is nil", buf, 2u);
        }
      }
    }

    path2 = [lCopy path];
  }

  v100 = v8;
  v28 = [v7 _IF_BOOLForKey:*MEMORY[0x1E695DB78]];
  v29 = [v7 _IF_BOOLForKey:*MEMORY[0x1E695DBA0]];
  pathExtension = [path2 pathExtension];
  if (([v7 _IF_BOOLForKey:*MEMORY[0x1E695DB68]] & 1) != 0 || objc_msgSend(v7, "_IF_BOOLForKey:", *MEMORY[0x1E695DBC8]))
  {
    v31 = _ISDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v32 = [[ISAliasIcon alloc] initWithAliasURL:lCopy];
    goto LABEL_27;
  }

  if ([v7 _IF_BOOLForKey:*MEMORY[0x1E695DB70]])
  {
LABEL_33:
    v37 = _ISGenerateInProcess(lCopy);
    v38 = _ISDefaultLog();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
    if (v37)
    {
      if (v39)
      {
        +[ISIconFactory _iconForURL:options:];
      }

      v40 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
      iconDictionary = [v40 iconDictionary];
      v42 = [iconDictionary _IF_arrayForKey:@"CFBundleIconFiles"];

      if (![v42 count])
      {
        iconDictionary2 = [v40 iconDictionary];
        v44 = [iconDictionary2 _IF_stringForKey:@"CFBundleIconFile"];

        if (v44)
        {
          v108 = v44;
          v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];

          v42 = v45;
        }
      }

      defaultAppIconAssetsBag = [MEMORY[0x1E69A8990] imageBagWithResourcesNames:v42 fromBundle:v40];
      if (!defaultAppIconAssetsBag)
      {
        defaultAppIconAssetsBag = [MEMORY[0x1E69A8990] defaultAppIconAssetsBag];
      }

      v33 = [[ISImageBagIcon alloc] initWithImageBag:defaultAppIconAssetsBag];
    }

    else
    {
      if (v39)
      {
        +[ISIconFactory _iconForURL:options:];
      }

      v33 = [[ISBundleIcon alloc] initWithBundleURL:lCopy];
      v58 = [objc_alloc(MEMORY[0x1E69635F8]) initWithURL:lCopy allowPlaceholder:0 error:0];
      v40 = v58;
      if (!v58 || [v58 developerType] != 1)
      {
        goto LABEL_75;
      }

      bundleIdentifier = [v40 bundleIdentifier];
      v42 = _aliasedIcon(bundleIdentifier, v33);

      if (v42)
      {
        v60 = _ISDefaultLog();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          [v40 bundleIdentifier];
          v96 = log = v60;
          *buf = 138412802;
          v103 = v96;
          v104 = 2112;
          v105 = lCopy;
          v106 = 2112;
          v107 = v33;

          v60 = log;
        }

        v61 = v42;
        v33 = v61;
      }
    }

LABEL_75:
    goto LABEL_28;
  }

  if (v29)
  {
    if ([v7 _IF_BOOLForKey:*MEMORY[0x1E695DB88]] && objc_msgSend(lCopy, "__is_hasFileExtension:", @"appex"))
    {
      goto LABEL_33;
    }

    v55 = _ISDefaultLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v56 = [ISTagIcon alloc];
    v57 = MEMORY[0x1E6963868];
LABEL_86:
    v32 = [(ISTagIcon *)v56 initWithFileExtension:pathExtension baseType:*v57];
LABEL_27:
    v33 = v32;
    goto LABEL_28;
  }

  v62 = [pathExtension length];
  v63 = *MEMORY[0x1E695DBB8];
  if (!v62 && [v7 _IF_BOOLForKey:*MEMORY[0x1E695DBB8]] && objc_msgSend(v7, "_IF_BOOLForKey:", *MEMORY[0x1E695DB88]))
  {
    v64 = _ISDefaultLog();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v65 = [ISTypeIcon alloc];
    v32 = [(ISTypeIcon *)v65 initWithType:*MEMORY[0x1E69638D0]];
    goto LABEL_27;
  }

  if ([v7 _IF_BOOLForKey:v63])
  {
    v66 = _ISDefaultLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v56 = [ISTagIcon alloc];
    v57 = MEMORY[0x1E6963800];
    goto LABEL_86;
  }

  if (!v28)
  {
    v33 = 0;
    goto LABEL_28;
  }

  v67 = _ISURLCacheLog();
  v68 = os_signpost_id_make_with_pointer(v67, lCopy);

  if (v68)
  {
    v69 = _ISURLCacheLog();
    v70 = os_signpost_enabled(v69);

    if (v70)
    {
      v71 = _ISURLCacheLog();
      v72 = v71;
      if (v68 != -1 && os_signpost_enabled(v71))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A77B8000, v72, OS_SIGNPOST_EVENT, v68, "isFileReferenceURL", "checking for file ref url", buf, 2u);
      }
    }
  }

  if ([lCopy isFileReferenceURL])
  {
    v73 = _ISURLCacheLog();
    v74 = os_signpost_id_make_with_pointer(v73, lCopy);

    if (v74)
    {
      v75 = _ISURLCacheLog();
      v76 = os_signpost_enabled(v75);

      if (v76)
      {
        v77 = _ISURLCacheLog();
        v78 = v77;
        if (v74 != -1 && os_signpost_enabled(v77))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A77B8000, v78, OS_SIGNPOST_EVENT, v74, "filePathURL", "getting file path URL for debug level logging", buf, 2u);
        }
      }
    }

    v79 = _ISDefaultLog();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      [ISIconFactory _iconForURL:lCopy options:v79];
    }
  }

  else
  {
    v79 = _ISDefaultLog();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }
  }

  v80 = +[ISCustomIconManager sharedInstance];
  v81 = [v80 specialFolderTypeForURL:lCopy];

  if (v81)
  {
    v82 = _ISDefaultLog();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v33 = [[ISTypeIcon alloc] initWithType:v81];
    goto LABEL_117;
  }

  v83 = +[ISDefaults sharedInstance];
  forceSymbolEmbossment = [v83 forceSymbolEmbossment];
  if (forceSymbolEmbossment)
  {

LABEL_113:
    v87 = [ISFolderIconConfiguration alloc];
    v97 = +[ISDefaults sharedInstance];
    forceSymbolEmbossment2 = [v97 forceSymbolEmbossment];
    v89 = +[ISDefaults sharedInstance];
    tintColor = [v89 tintColor];
    v91 = [(ISFolderIconConfiguration *)v87 initWithSymbolName:forceSymbolEmbossment2 tintColor:tintColor];

    v92 = v91;
    v93 = _ISDefaultLog();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v94 = [ISTypeIcon alloc];
    identifier = [*MEMORY[0x1E6982DC8] identifier];
    v33 = [(ISTypeIcon *)v94 initWithType:identifier iconConfiguration:v91];

    goto LABEL_116;
  }

  v85 = +[ISDefaults sharedInstance];
  tintColor2 = [v85 tintColor];

  if (tintColor2)
  {
    goto LABEL_113;
  }

  v33 = +[ISGenericFolderIcon sharedInstance];
LABEL_116:
  v81 = 0;
LABEL_117:

LABEL_28:
  v34 = objc_opt_new();
  if (v29 & 1 | ((v28 & 1) == 0))
  {
    goto LABEL_46;
  }

  __is_accessFlags = [lCopy __is_accessFlags];
  if (__is_accessFlags)
  {
    if (__is_accessFlags != 2)
    {
      goto LABEL_46;
    }

    v36 = kISIconDecorationDropFolderBadgeType;
  }

  else
  {
    v36 = kISIconDecorationPrivateFolderBadgeType;
  }

  v47 = [[ISIconDecoration alloc] initWithType:*v36];
  [v34 addObject:v47];

LABEL_46:
  if ([lCopy __is_locked])
  {
    v48 = [[ISIconDecoration alloc] initWithType:@"com.apple.icon-decoration.badge.locked"];
    [v34 addObject:v48];
  }

  if ([v34 count])
  {
    if ((optionsCopy & 2) != 0)
    {
      v50 = _ISDefaultLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        +[ISIconFactory _iconForURL:options:];
      }
    }

    else
    {
      decorations = [(ISImageBagIcon *)v33 decorations];
      v50 = [decorations arrayByAddingObjectsFromArray:v34];

      v51 = [[ISDecoratedIcon alloc] initWithIcon:v33 decorations:v50];
      v33 = v51;
    }
  }

  if (!v33)
  {
    v52 = _ISDefaultLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v33 = +[ISUnknownIcon sharedInstance];
  }

  v53 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)_init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ISIcon.m" lineNumber:588 description:@"Unexpected call of -[ISIconFactory _init]"];

  return 0;
}

- (ISIconFactory)initWithURL:(id)l options:(unint64_t)options
{
  lCopy = l;
  v7 = _ISURLCacheLog();
  v8 = os_signpost_id_make_with_pointer(v7, lCopy);

  if (v8)
  {
    v9 = _ISURLCacheLog();
    v10 = v9;
    if (v8 != -1 && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A77B8000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "accessing URL", "[ISIcon initWithURL:options:]", buf, 2u);
    }
  }

  v11 = [ISIconFactory _iconForURL:lCopy options:options];
  v12 = _ISURLCacheLog();
  v13 = os_signpost_id_make_with_pointer(v12, lCopy);

  if (v13)
  {
    v14 = _ISURLCacheLog();
    v15 = os_signpost_enabled(v14);

    if (v15)
    {
      v16 = _ISURLCacheLog();
      v17 = v16;
      if (v13 != -1 && os_signpost_enabled(v16))
      {
        *v21 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A77B8000, v17, OS_SIGNPOST_INTERVAL_END, v13, "accessing URL", "[ISIcon initWithURL:options:]", v21, 2u);
      }
    }
  }

  v18 = +[ISIconManager sharedInstance];
  v19 = [v18 findOrRegisterIcon:v11];

  return v19;
}

- (ISIconFactory)initWithURL:(id)l
{
  lCopy = l;
  v5 = _ISURLCacheLog();
  v6 = os_signpost_id_make_with_pointer(v5, lCopy);

  if (v6)
  {
    v7 = _ISURLCacheLog();
    v8 = v7;
    if (v6 != -1 && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A77B8000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "accessing URL", "[ISIcon initWithURL:]", buf, 2u);
    }
  }

  v9 = [ISIconFactory _iconForURL:lCopy options:0];
  v10 = _ISURLCacheLog();
  v11 = os_signpost_id_make_with_pointer(v10, lCopy);

  if (v11)
  {
    v12 = _ISURLCacheLog();
    v13 = os_signpost_enabled(v12);

    if (v13)
    {
      v14 = _ISURLCacheLog();
      v15 = v14;
      if (v11 != -1 && os_signpost_enabled(v14))
      {
        *v19 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A77B8000, v15, OS_SIGNPOST_INTERVAL_END, v11, "accessing URL", "[ISIcon initWithURL:]", v19, 2u);
      }
    }
  }

  v16 = +[ISIconManager sharedInstance];
  v17 = [v16 findOrRegisterIcon:v9];

  return v17;
}

- (ISIconFactory)initWithApplicationIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [[ISApplicationIdentityIcon alloc] initWithApplicationIdentity:identityCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (ISIconFactory)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[ISBundleIdentifierIcon alloc] initWithBundleIdentifier:identifierCopy];
  v6 = _aliasedIcon(identifierCopy, v5);
  if (v6)
  {
    v7 = _ISDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ISIconFactory initWithBundleIdentifier:];
    }

    v8 = v6;
    v5 = v8;
  }

  v9 = +[ISIconManager sharedInstance];
  v10 = [v9 findOrRegisterIcon:v5];

  return v10;
}

- (ISIconFactory)initWithApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[ISBundleIdentifierIcon alloc] initWithBundleIdentifier:identifierCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (ISIconFactory)initWithApplicationExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[ISBundleIdentifierIcon alloc] initWithBundleIdentifier:identifierCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (ISIconFactory)initWithBundleURL:(id)l type:(id)type
{
  typeCopy = type;
  lCopy = l;
  v8 = [[ISBundleIcon alloc] initWithBundleURL:lCopy type:typeCopy];

  v9 = +[ISIconManager sharedInstance];
  v10 = [v9 findOrRegisterIcon:v8];

  return v10;
}

- (ISIconFactory)initWithBundleURL:(id)l fileExtension:(id)extension
{
  extensionCopy = extension;
  lCopy = l;
  v8 = [[ISBundleIcon alloc] initWithBundleURL:lCopy fileExtension:extensionCopy];

  v9 = +[ISIconManager sharedInstance];
  v10 = [v9 findOrRegisterIcon:v8];

  return v10;
}

- (ISIconFactory)initWithType:(id)type iconConfiguration:(id)configuration
{
  typeCopy = type;
  configurationCopy = configuration;
  v8 = +[ISDefaults sharedInstance];
  isSolariumEnabled = [v8 isSolariumEnabled];

  if ((isSolariumEnabled & 1) == 0 && ![typeCopy caseInsensitiveCompare:*MEMORY[0x1E69637D0]])
  {
    v13 = ISGenericFolderIcon;
    goto LABEL_7;
  }

  if (![typeCopy caseInsensitiveCompare:*MEMORY[0x1E6963738]])
  {
    v13 = ISGenericApplicationIcon;
LABEL_7:
    sharedInstance = [(__objc2_class *)v13 sharedInstance];
    goto LABEL_8;
  }

  v10 = [[ISTypeIcon alloc] initWithType:typeCopy iconConfiguration:configurationCopy];
  v11 = +[ISIconManager sharedInstance];
  sharedInstance = [v11 findOrRegisterIcon:v10];

LABEL_8:
  return sharedInstance;
}

- (ISIconFactory)initWithResourceProxy:(id)proxy
{
  proxyCopy = proxy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [proxyCopy bundleIdentifier];
    v6 = [[ISBundleIdentifierIcon alloc] initWithBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    bundleIdentifier2 = proxyCopy;
    v11 = [bundleIdentifier2 URL];

    if (v11)
    {
      name3 = [bundleIdentifier2 URL];
      v13 = [ISIconFactory _iconForURL:name3 options:0];
    }

    else
    {
      typeIdentifier = [bundleIdentifier2 typeIdentifier];

      if (!typeIdentifier)
      {
        name = [bundleIdentifier2 name];
        if (name)
        {
          v20 = name;
          name2 = [bundleIdentifier2 name];
          pathExtension = [name2 pathExtension];
          v23 = [pathExtension length];

          if (v23)
          {
            v24 = [ISTagIcon alloc];
            name3 = [bundleIdentifier2 name];
            pathExtension2 = [(ISBundleIdentifierIcon *)name3 pathExtension];
            v10 = [(ISTagIcon *)v24 initWithFileExtension:pathExtension2];

            goto LABEL_13;
          }
        }

        mIMEType = [bundleIdentifier2 MIMEType];

        if (mIMEType)
        {
          v27 = [ISTagIcon alloc];
          name3 = [bundleIdentifier2 MIMEType];
          v13 = [(ISTagIcon *)v27 initWithMIMEType:name3];
          goto LABEL_12;
        }

        typeIdentifier2 = [bundleIdentifier2 typeIdentifier];

        if (!typeIdentifier2)
        {
          v9 = +[(ISIcon *)ISGenericDocumentIcon];
          goto LABEL_6;
        }
      }

      v15 = [ISTypeIcon alloc];
      name3 = [bundleIdentifier2 typeIdentifier];
      v13 = [(ISTypeIcon *)v15 initWithType:name3];
    }

LABEL_12:
    v10 = v13;

LABEL_13:
    v6 = name3;
    goto LABEL_14;
  }

  v7 = [ISBundleIdentifierIcon alloc];
  bundleIdentifier2 = [proxyCopy bundleIdentifier];
  v9 = [(ISBundleIdentifierIcon *)v7 initWithBundleIdentifier:bundleIdentifier2];
LABEL_6:
  v10 = v9;
LABEL_14:

  v6 = v10;
LABEL_15:
  if (v6)
  {
    v16 = +[ISIconManager sharedInstance];
    v17 = [v16 findOrRegisterIcon:v6];
  }

  else
  {
    v17 = +[ISUnknownIcon sharedInstance];
  }

  return v17;
}

- (ISIconFactory)initWithImages:(id)images
{
  imagesCopy = images;
  v5 = [[ISImageBagIcon alloc] initWithImages:imagesCopy];

  return v5;
}

- (ISIconFactory)initWithFileExtension:(id)extension
{
  extensionCopy = extension;
  v5 = [[ISTagIcon alloc] initWithFileExtension:extensionCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (ISIconFactory)initWithModelCode:(id)code
{
  codeCopy = code;
  v5 = codeCopy;
  if (*MEMORY[0x1E69636E8] == codeCopy || [codeCopy isEqualToString:?])
  {
    v6 = +[ISCurrentDeviceIcon sharedInstance];
  }

  else
  {
    v7 = [[ISTagIcon alloc] initWithModelCode:v5];
    v8 = +[ISIconManager sharedInstance];
    v6 = [v8 findOrRegisterIcon:v7];
  }

  return v6;
}

- (ISIconFactory)initWithMIMEType:(id)type
{
  typeCopy = type;
  v5 = [[ISTagIcon alloc] initWithMIMEType:typeCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (ISIconFactory)initWithSymbolName:(id)name
{
  nameCopy = name;
  v5 = [[ISSymbolIcon alloc] initWithSymbolName:nameCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (ISIconFactory)initWithSymbolName:(id)name configuration:(id)configuration
{
  configurationCopy = configuration;
  nameCopy = name;
  v8 = [[ISSymbolIcon alloc] initWithSymbolName:nameCopy configuration:configurationCopy];

  v9 = +[ISIconManager sharedInstance];
  v10 = [v9 findOrRegisterIcon:v8];

  return v10;
}

- (ISIconFactory)initWithTypeIdentifier:(id)identifier layerGroups:(id)groups
{
  groupsCopy = groups;
  identifierCopy = identifier;
  v8 = [[ISLayeredIcon alloc] initWithTypeIdentifier:identifierCopy layerGroups:groupsCopy];

  v9 = +[ISIconManager sharedInstance];
  v10 = [v9 findOrRegisterIcon:v8];

  return v10;
}

+ (void)_iconForURL:options:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, v0, v1, "Creating Folder icon for URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_iconForURL:(void *)a1 options:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 filePathURL];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Creating Folder icon for URL: %@ (%@)", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_iconForURL:options:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(&dword_1A77B8000, v0, v1, "Identified custom folder type %@ for URL: %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_iconForURL:options:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, v0, v1, "Overriding tint/embossing with config content: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_iconForURL:options:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, v0, v1, "Creating File Extension icon for file URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_iconForURL:options:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, v0, v1, "Creating executable icon for file URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_iconForURL:options:.cold.7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, v0, v1, "Creating File Extension icon for package URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_iconForURL:options:.cold.8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, v0, v1, "Creating Bundle icon for URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_iconForURL:options:.cold.9()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, v0, v1, "Creating icon for placeholder bundle at URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_iconForURL:options:.cold.10()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, v0, v1, "Creating Bundle Alias icon for Bookmark icon for URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_iconForURL:options:.cold.11()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(&dword_1A77B8000, v0, v1, "Ignoring decorations %@ for URL: %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_iconForURL:options:.cold.12()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, v0, v1, "Creating kUnknownFSObjectIcon icon for URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithBundleIdentifier:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  v2 = *MEMORY[0x1E69E9840];
}

@end