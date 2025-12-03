@interface NSError(BusinessMetadata)
+ (void)ed_isNoBusinessMetadataFoundError:()BusinessMetadata;
@end

@implementation NSError(BusinessMetadata)

+ (void)ed_isNoBusinessMetadataFoundError:()BusinessMetadata
{
  v3 = a3;
  domain = [v3 domain];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v5 = getBCSErrorDomainSymbolLoc_ptr;
  v19 = getBCSErrorDomainSymbolLoc_ptr;
  if (!getBCSErrorDomainSymbolLoc_ptr)
  {
    v6 = BusinessChatServiceLibrary();
    v17[3] = dlsym(v6, "BCSErrorDomain");
    getBCSErrorDomainSymbolLoc_ptr = v17[3];
    v5 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (v5)
  {
    v7 = *v5;
    if (![domain isEqualToString:v7])
    {
LABEL_9:

      return;
    }

    code = [v3 code];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v9 = getBCSErrorReturnedNoDataCodeSymbolLoc_ptr;
    v19 = getBCSErrorReturnedNoDataCodeSymbolLoc_ptr;
    if (!getBCSErrorReturnedNoDataCodeSymbolLoc_ptr)
    {
      v10 = BusinessChatServiceLibrary();
      v17[3] = dlsym(v10, "BCSErrorReturnedNoDataCode");
      getBCSErrorReturnedNoDataCodeSymbolLoc_ptr = v17[3];
      v9 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (v9)
    {
      v11 = code == *v9;
      goto LABEL_9;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBCSErrorDomain(void)"];
    [currentHandler handleFailureInFunction:v13 file:@"NSError+BusinessMetadata.m" lineNumber:16 description:{@"%s", dlerror()}];

    __break(1u);
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSInteger getBCSErrorReturnedNoDataCode(void)"];
  [currentHandler2 handleFailureInFunction:v15 file:@"NSError+BusinessMetadata.m" lineNumber:15 description:{@"%s", dlerror()}];

  __break(1u);
}

@end