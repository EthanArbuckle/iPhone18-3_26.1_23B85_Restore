@interface MPModelObject(NanoMusicSync)
+ (id)nms_modelObjectWithLibraryPersistentID:()NanoMusicSync;
+ (id)nms_modelObjectWithLibraryPersistentID:()NanoMusicSync block:;
- (id)nms_syncInfoContainerIdentifier;
- (uint64_t)nms_prefersCatalogRepresentation;
- (void)nms_syncInfoContainerIdentifier;
@end

@implementation MPModelObject(NanoMusicSync)

- (uint64_t)nms_prefersCatalogRepresentation
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [self isLibraryAdded] ^ 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [self isLibraryAdded] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)nms_syncInfoContainerIdentifier
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifiers = [self identifiers];
    nms_syncInfoPlaylistIdentifier = [identifiers nms_syncInfoPlaylistIdentifier];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = NMLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(MPModelObject(NanoMusicSync) *)self nms_syncInfoContainerIdentifier];
      }

      v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported model type. Not allowed." userInfo:0];
      objc_exception_throw(v7);
    }

    identifiers = [self identifiers];
    nms_syncInfoPlaylistIdentifier = [identifiers nms_syncInfoAlbumIdentifier];
  }

  v4 = nms_syncInfoPlaylistIdentifier;

  return v4;
}

+ (id)nms_modelObjectWithLibraryPersistentID:()NanoMusicSync
{
  v5 = MEMORY[0x277CD5DA0];
  v6 = [MEMORY[0x277CD5EA0] kindWithModelClass:self];
  v7 = [v5 nms_identifierSetWithLibraryPersistentID:a3 modelKind:v6];

  v8 = [[self alloc] initWithIdentifiers:v7];

  return v8;
}

+ (id)nms_modelObjectWithLibraryPersistentID:()NanoMusicSync block:
{
  v6 = MEMORY[0x277CD5DA0];
  v7 = MEMORY[0x277CD5EA0];
  v8 = a4;
  v9 = [v7 kindWithModelClass:self];
  v10 = [v6 nms_identifierSetWithLibraryPersistentID:a3 modelKind:v9];

  v11 = [[self alloc] initWithIdentifiers:v10 block:v8];

  return v11;
}

- (void)nms_syncInfoContainerIdentifier
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_25B27B000, a2, OS_LOG_TYPE_ERROR, "Unsupported model type. Not allowed: %@. Model Object: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end