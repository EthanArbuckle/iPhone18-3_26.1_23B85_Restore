@interface WFPasteboardItem
- (NSArray)fileURLItems;
- (WFPasteboardItem)initWithItemsByType:(id)type fileURLs:(id)ls;
@end

@implementation WFPasteboardItem

- (NSArray)fileURLItems
{
  fileURLs = [(WFPasteboardItem *)self fileURLs];
  v3 = [fileURLs if_compactMap:&__block_literal_global_7991];

  return v3;
}

id __32__WFPasteboardItem_fileURLItems__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 wfFileType];
  v4 = [WFFileRepresentation fileWithURL:v2 options:8 ofType:v3];

  if (v4 && ([v4 fileURL], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "wf_fileIsReadable"), v5, (v6 & 1) != 0))
  {
    v7 = [WFContentLocation contentLocationForFile:v4];
    v8 = [WFContentItem itemWithFile:v4 origin:v7 disclosureLevel:1];
  }

  else
  {
    v9 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[WFPasteboardItem fileURLItems]_block_invoke";
      v13 = 2112;
      v14 = v2;
      _os_log_impl(&dword_21E1BD000, v9, OS_LOG_TYPE_ERROR, "%s Couldn't read file URL %@ during a pasteboard read", &v11, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

- (WFPasteboardItem)initWithItemsByType:(id)type fileURLs:(id)ls
{
  typeCopy = type;
  lsCopy = ls;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentCollection+WFPasteboard.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"itemsByType"}];
  }

  v15.receiver = self;
  v15.super_class = WFPasteboardItem;
  v10 = [(WFPasteboardItem *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_itemsByType, type);
    objc_storeStrong(&v11->_fileURLs, ls);
    v12 = v11;
  }

  return v11;
}

@end