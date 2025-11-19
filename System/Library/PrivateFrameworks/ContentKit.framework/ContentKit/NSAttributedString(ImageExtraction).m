@interface NSAttributedString(ImageExtraction)
- (void)containedImageFiles;
@end

@implementation NSAttributedString(ImageExtraction)

- (void)containedImageFiles
{
  v2 = objc_opt_new();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v3 = getNSAttachmentAttributeNameSymbolLoc_ptr_20222;
  v17 = getNSAttachmentAttributeNameSymbolLoc_ptr_20222;
  if (!getNSAttachmentAttributeNameSymbolLoc_ptr_20222)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getNSAttachmentAttributeNameSymbolLoc_block_invoke_20223;
    v13[3] = &unk_27834A178;
    v13[4] = &v14;
    __getNSAttachmentAttributeNameSymbolLoc_block_invoke_20223(v13);
    v3 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v3)
  {
    v4 = *v3;
    v5 = [a1 length];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__NSAttributedString_ImageExtraction__containedImageFiles__block_invoke;
    v11[3] = &unk_2783486D8;
    v11[4] = a1;
    v6 = v2;
    v12 = v6;
    [a1 enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{0, v11}];

    v7 = v12;
    v8 = v6;
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringKey getNSAttachmentAttributeName(void)"];
    [v9 handleFailureInFunction:v10 file:@"WFWebArchive+ImageExtraction.m" lineNumber:16 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

@end