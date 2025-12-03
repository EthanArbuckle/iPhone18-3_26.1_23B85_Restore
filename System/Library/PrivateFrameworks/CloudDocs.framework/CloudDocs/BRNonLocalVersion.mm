@interface BRNonLocalVersion
+ (id)listVersionsOfDocumentAtURL:(id)l;
- (BRNonLocalVersion)initWithURL:(id)l physicalURL:(id)rL size:(id)size extension:(id)extension etag:(id)etag hasThumbnail:(BOOL)thumbnail displayName:(id)name lastEditorDeviceName:(id)self0 lastEditorNameComponents:(id)self1 modificationDate:(id)self2 versionsStore:(id)self3;
- (NSCopying)persistentIdentifier;
- (id)description;
- (void)dealloc;
@end

@implementation BRNonLocalVersion

- (BRNonLocalVersion)initWithURL:(id)l physicalURL:(id)rL size:(id)size extension:(id)extension etag:(id)etag hasThumbnail:(BOOL)thumbnail displayName:(id)name lastEditorDeviceName:(id)self0 lastEditorNameComponents:(id)self1 modificationDate:(id)self2 versionsStore:(id)self3
{
  v45 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  sizeCopy = size;
  extensionCopy = extension;
  etagCopy = etag;
  nameCopy = name;
  deviceNameCopy = deviceName;
  componentsCopy = components;
  dateCopy = date;
  storeCopy = store;
  v38.receiver = self;
  v38.super_class = BRNonLocalVersion;
  v21 = [(BRNonLocalVersion *)&v38 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_etag, etag);
    objc_storeStrong(&v22->_url, l);
    objc_storeStrong(&v22->_physicalURL, rL);
    objc_storeStrong(&v22->_lastEditorDeviceName, deviceName);
    objc_storeStrong(&v22->_lastEditorNameComponents, components);
    v22->_hasThumbnail = thumbnail;
    objc_storeStrong(&v22->_versionsStore, store);
    v22->_size = [sizeCopy unsignedLongLongValue];
    objc_storeStrong(&v22->_displayName, name);
    if ([extensionCopy length])
    {
      [extensionCopy bytes];
      v23 = sandbox_extension_consume();
      v22->_sandboxHandle = v23;
      if (v23 < 0)
      {
        v24 = *__error();
        v25 = brc_bread_crumbs("[BRNonLocalVersion initWithURL:physicalURL:size:extension:etag:hasThumbnail:displayName:lastEditorDeviceName:lastEditorNameComponents:modificationDate:versionsStore:]", 72);
        v26 = brc_default_log(0, 0);
        if (os_log_type_enabled(v26, 0x90u))
        {
          *buf = 138412802;
          v40 = extensionCopy;
          v41 = 1024;
          v42 = v24;
          v43 = 2112;
          v44 = v25;
          _os_log_error_impl(&dword_1AE2A9000, v26, 0x90u, "[ERROR] Failed to consume extension %@ %{errno}d%@", buf, 0x1Cu);
        }

        *__error() = v24;
      }
    }

    else
    {
      v22->_sandboxHandle = -1;
    }

    objc_storeStrong(&v22->_modificationDate, date);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)dealloc
{
  if ((self->_sandboxHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
  }

  v3.receiver = self;
  v3.super_class = BRNonLocalVersion;
  [(BRNonLocalVersion *)&v3 dealloc];
}

- (NSCopying)persistentIdentifier
{
  manager = [MEMORY[0x1E69A07C0] manager];
  versionsStore = self->_versionsStore;
  lastPathComponent = [(NSURL *)self->_url lastPathComponent];
  v6 = [manager persistentIdentifierInStorage:versionsStore forAdditionNamed:lastPathComponent inNameSpace:*MEMORY[0x1E69A0798]];

  return v6;
}

+ (id)listVersionsOfDocumentAtURL:(id)l
{
  lCopy = l;
  v4 = [[BRListNonLocalVersionsOperation alloc] initWithDocumentURL:lCopy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  displayName = self->_displayName;
  lastEditorDeviceName = self->_lastEditorDeviceName;
  lastEditorFormattedName = [(BRNonLocalVersion *)self lastEditorFormattedName];
  v8 = lastEditorFormattedName;
  if (lastEditorFormattedName)
  {
    v9 = lastEditorFormattedName;
  }

  else
  {
    v9 = @"You";
  }

  v16 = *&self->_size;
  etag = self->_etag;
  path = [(NSURL *)self->_url path];
  v12 = [v3 stringWithFormat:@"<%@ name:'%@' device:'%@' owner:'%@' size:%llu mtime:%@ etag:%@ url:'%@'", v4, displayName, lastEditorDeviceName, v9, v16, etag, path];

  physicalURL = self->_physicalURL;
  if (physicalURL && self->_url != physicalURL)
  {
    path2 = [(NSURL *)physicalURL path];
    [v12 appendFormat:@" physical:'%@'", path2];
  }

  [v12 appendString:@">"];

  return v12;
}

@end