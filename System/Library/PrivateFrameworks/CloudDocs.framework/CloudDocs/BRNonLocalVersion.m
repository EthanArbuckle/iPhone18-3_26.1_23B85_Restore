@interface BRNonLocalVersion
+ (id)listVersionsOfDocumentAtURL:(id)a3;
- (BRNonLocalVersion)initWithURL:(id)a3 physicalURL:(id)a4 size:(id)a5 extension:(id)a6 etag:(id)a7 hasThumbnail:(BOOL)a8 displayName:(id)a9 lastEditorDeviceName:(id)a10 lastEditorNameComponents:(id)a11 modificationDate:(id)a12 versionsStore:(id)a13;
- (NSCopying)persistentIdentifier;
- (id)description;
- (void)dealloc;
@end

@implementation BRNonLocalVersion

- (BRNonLocalVersion)initWithURL:(id)a3 physicalURL:(id)a4 size:(id)a5 extension:(id)a6 etag:(id)a7 hasThumbnail:(BOOL)a8 displayName:(id)a9 lastEditorDeviceName:(id)a10 lastEditorNameComponents:(id)a11 modificationDate:(id)a12 versionsStore:(id)a13
{
  v45 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v36 = a4;
  v18 = a5;
  v19 = a6;
  v35 = a7;
  v34 = a9;
  v33 = a10;
  v32 = a11;
  v20 = a12;
  v31 = a13;
  v38.receiver = self;
  v38.super_class = BRNonLocalVersion;
  v21 = [(BRNonLocalVersion *)&v38 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_etag, a7);
    objc_storeStrong(&v22->_url, a3);
    objc_storeStrong(&v22->_physicalURL, a4);
    objc_storeStrong(&v22->_lastEditorDeviceName, a10);
    objc_storeStrong(&v22->_lastEditorNameComponents, a11);
    v22->_hasThumbnail = a8;
    objc_storeStrong(&v22->_versionsStore, a13);
    v22->_size = [v18 unsignedLongLongValue];
    objc_storeStrong(&v22->_displayName, a9);
    if ([v19 length])
    {
      [v19 bytes];
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
          v40 = v19;
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

    objc_storeStrong(&v22->_modificationDate, a12);
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
  v3 = [MEMORY[0x1E69A07C0] manager];
  versionsStore = self->_versionsStore;
  v5 = [(NSURL *)self->_url lastPathComponent];
  v6 = [v3 persistentIdentifierInStorage:versionsStore forAdditionNamed:v5 inNameSpace:*MEMORY[0x1E69A0798]];

  return v6;
}

+ (id)listVersionsOfDocumentAtURL:(id)a3
{
  v3 = a3;
  v4 = [[BRListNonLocalVersionsOperation alloc] initWithDocumentURL:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  displayName = self->_displayName;
  lastEditorDeviceName = self->_lastEditorDeviceName;
  v7 = [(BRNonLocalVersion *)self lastEditorFormattedName];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"You";
  }

  v16 = *&self->_size;
  etag = self->_etag;
  v11 = [(NSURL *)self->_url path];
  v12 = [v3 stringWithFormat:@"<%@ name:'%@' device:'%@' owner:'%@' size:%llu mtime:%@ etag:%@ url:'%@'", v4, displayName, lastEditorDeviceName, v9, v16, etag, v11];

  physicalURL = self->_physicalURL;
  if (physicalURL && self->_url != physicalURL)
  {
    v14 = [(NSURL *)physicalURL path];
    [v12 appendFormat:@" physical:'%@'", v14];
  }

  [v12 appendString:@">"];

  return v12;
}

@end