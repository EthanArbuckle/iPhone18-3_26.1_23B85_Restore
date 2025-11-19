@interface NSURL
@end

@implementation NSURL

id __54__NSURL_DCURLUtilities__dc_queryItemsFromQueryString___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 componentsSeparatedByString:@"="];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v2 subarrayWithRange:{1, objc_msgSend(v2, "count") - 1}];
    v5 = [v4 componentsJoinedByString:@"="];
    v6 = [v5 stringByRemovingPercentEncoding];

    v7 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:v3 value:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __52__NSURL_WFFilePathDisplay__wf_displayPathComponents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = getWFFilesLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[NSURL(WFFilePathDisplay) wf_displayPathComponents]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_ERROR, "%s Could not fetch parent items due to error: %@", &v11, 0x16u);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __52__NSURL_WFFilePathDisplay__wf_displayPathComponents__block_invoke_50(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 providerDomainID];
  if (([v3 isEqualToString:@"com.apple.FileProvider.LocalStorage"] & 1) == 0)
  {

LABEL_8:
    v9 = [v2 displayName];
    goto LABEL_9;
  }

  v4 = [v2 itemIdentifier];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v5 = getNSFileProviderRootContainerItemIdentifierSymbolLoc_ptr;
  v16 = getNSFileProviderRootContainerItemIdentifierSymbolLoc_ptr;
  if (!getNSFileProviderRootContainerItemIdentifierSymbolLoc_ptr)
  {
    v6 = FileProviderLibrary();
    v14[3] = dlsym(v6, "NSFileProviderRootContainerItemIdentifier");
    getNSFileProviderRootContainerItemIdentifierSymbolLoc_ptr = v14[3];
    v5 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNSFileProviderRootContainerItemIdentifier(void)"];
    [v11 handleFailureInFunction:v12 file:@"NSURL+WFFilePathDisplay.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
    return;
  }

  v7 = [v4 isEqualToString:*v5];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [MEMORY[0x277D79F18] currentDevice];
  v9 = [v8 localStorageDisplayName];

LABEL_9:

  v10 = v9;
}

@end