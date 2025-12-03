@interface DOCSBFolderManager(UI_Extensions)
- (id)thumbnailImageForFolder:()UI_Extensions URL:size:scale:options:;
@end

@implementation DOCSBFolderManager(UI_Extensions)

- (id)thumbnailImageForFolder:()UI_Extensions URL:size:scale:options:
{
  v10 = a7;
  v11 = v10;
  v12 = 0;
  if (self != 0.0 && a2 != 0.0)
  {
    startAccessingSecurityScopedResource = [v10 startAccessingSecurityScopedResource];
    v14 = objc_alloc(MEMORY[0x1E69A8A00]);
    v15 = v14;
    if (startAccessingSecurityScopedResource)
    {
      v16 = [v14 initWithURL:v11];
    }

    else
    {
      identifier = [*MEMORY[0x1E6982DD0] identifier];
      v16 = [v15 initWithType:identifier];
    }

    v18 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:self scale:{a2, a3}];
    v19 = [v16 imageForDescriptor:v18];
    if ([v19 placeholder])
    {
      v20 = [v16 prepareImageForDescriptor:v18];

      v19 = v20;
    }

    [v11 stopAccessingSecurityScopedResource];
    v21 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:{objc_msgSend(v19, "CGImage")}];
    v22 = objc_alloc_init(MEMORY[0x1E69DCA80]);
    [v22 setScale:a3];
    v23 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v22 format:{self, a2}];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __84__DOCSBFolderManager_UI_Extensions__thumbnailImageForFolder_URL_size_scale_options___block_invoke;
    v26[3] = &unk_1E87835A8;
    selfCopy = self;
    v29 = a2;
    v27 = v21;
    v30 = a3;
    v24 = v21;
    v12 = [v23 imageWithActions:v26];
  }

  return v12;
}

@end