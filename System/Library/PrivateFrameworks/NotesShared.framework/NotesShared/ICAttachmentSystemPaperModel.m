@interface ICAttachmentSystemPaperModel
- (BOOL)hasDeepLink;
- (CGRect)paperContentBoundsHint;
- (id)account;
- (id)additionalIndexableTextContentInNote;
- (id)attributesForSharingHTMLWithTagName:(id *)a3 textContent:(id *)a4;
- (id)searchableTextContentInNote;
- (void)addMergeableDataToCloudKitRecord:(id)a3 approach:(int64_t)a4 mergeableFieldState:(id)a5;
- (void)fixupMetadataAndMinimumSupportedNotesVersion;
- (void)setHasDeepLink:(BOOL)a3;
- (void)setPaperContentBoundsHint:(CGRect)a3;
- (void)updateAfterLoadWithInlineAttachmentIdentifierMap:(id)a3;
@end

@implementation ICAttachmentSystemPaperModel

- (CGRect)paperContentBoundsHint
{
  v6 = [(ICAttachmentModel *)self attachment];
  v7 = [v6 metadata];

  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = [v7 objectForKeyedSubscript:@"paperContentBoundsOriginXKey"];
  v9 = [v7 objectForKeyedSubscript:@"paperContentBoundsOriginYKey"];
  v10 = [v7 objectForKeyedSubscript:@"paperContentBoundsWidthKey"];
  v11 = [v7 objectForKeyedSubscript:@"paperContentBoundsHeightKey"];
  v12 = v11;
  v13 = !v8 || v9 == 0;
  v14 = v13 || v10 == 0;
  v15 = v14 || v11 == 0;
  v16 = v15;
  if (!v15)
  {
    [v8 doubleValue];
    v2 = v17;
    [v9 doubleValue];
    v3 = v18;
    [v10 doubleValue];
    v4 = v19;
    [v12 doubleValue];
    v5 = v20;
  }

  if (v16)
  {
LABEL_17:
    v2 = *MEMORY[0x277CBF398];
    v3 = *(MEMORY[0x277CBF398] + 8);
    v4 = *(MEMORY[0x277CBF398] + 16);
    v5 = *(MEMORY[0x277CBF398] + 24);
  }

  v21 = v2;
  v22 = v3;
  v23 = v4;
  v24 = v5;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)setPaperContentBoundsHint:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(ICAttachmentModel *)self attachment];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ICAttachmentSystemPaperModel_setPaperContentBoundsHint___block_invoke;
  v8[3] = &__block_descriptor_64_e29_v16__0__NSMutableDictionary_8l;
  *&v8[4] = x;
  *&v8[5] = y;
  *&v8[6] = width;
  *&v8[7] = height;
  [v7 updateAttachmentMetadataWithBlock:v8];
}

void __58__ICAttachmentSystemPaperModel_setPaperContentBoundsHint___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  IsNull = CGRectIsNull(*(a1 + 32));
  v5 = *(a1 + 32);
  IsFinite = TSDRectIsFinite();
  if (IsNull)
  {
    if (IsFinite)
    {
LABEL_9:
      [v3 removeObjectForKey:@"paperContentBoundsOriginXKey"];
      [v3 removeObjectForKey:@"paperContentBoundsOriginYKey"];
      [v3 removeObjectForKey:@"paperContentBoundsWidthKey"];
      [v3 removeObjectForKey:@"paperContentBoundsHeightKey"];
      goto LABEL_10;
    }

LABEL_6:
    v11 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = 134218752;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      v22 = 2048;
      v23 = v15;
      _os_log_error_impl(&dword_214D51000, v11, OS_LOG_TYPE_ERROR, "Ignoring invalid paper content bounds hint rect: x: %lf, y: %lf, width: %lf, height: %lf", &v16, 0x2Au);
    }

    goto LABEL_9;
  }

  if (!IsFinite)
  {
    goto LABEL_6;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  [v3 setObject:v7 forKeyedSubscript:@"paperContentBoundsOriginXKey"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v3 setObject:v8 forKeyedSubscript:@"paperContentBoundsOriginYKey"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  [v3 setObject:v9 forKeyedSubscript:@"paperContentBoundsWidthKey"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  [v3 setObject:v10 forKeyedSubscript:@"paperContentBoundsHeightKey"];

LABEL_10:
}

- (void)setHasDeepLink:(BOOL)a3
{
  v4 = [(ICAttachmentModel *)self attachment];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ICAttachmentSystemPaperModel_setHasDeepLink___block_invoke;
  v5[3] = &__block_descriptor_33_e29_v16__0__NSMutableDictionary_8l;
  v6 = a3;
  [v4 updateAttachmentMetadataWithBlock:v5];
}

uint64_t __47__ICAttachmentSystemPaperModel_setHasDeepLink___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    return [a2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasDeepLinkKey"];
  }

  else
  {
    return [a2 removeObjectForKey:@"hasDeepLinkKey"];
  }
}

- (BOOL)hasDeepLink
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 metadata];

  v4 = [v3 objectForKeyedSubscript:@"hasDeepLinkKey"];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (void)addMergeableDataToCloudKitRecord:(id)a3 approach:(int64_t)a4 mergeableFieldState:(id)a5
{
  if (a4 == 1 && a5)
  {
    v7 = a5;
    v10 = [(ICAttachmentModel *)self attachment];
    v8 = [v10 identifier];
    v9 = [v8 dataUsingEncoding:4];
    [v7 setObject:v9 forKey:@"TokenContentIdentifierEncrypted"];
  }
}

- (void)updateAfterLoadWithInlineAttachmentIdentifierMap:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentModel *)self attachment];
  v6 = [v5 shortLoggingDescription];

  v7 = [_TtC11NotesShared21ICSystemPaperDocument alloc];
  v8 = [(ICAttachmentModel *)self attachment];
  v9 = [(ICSystemPaperDocument *)v7 initWithPaperAttachment:v8];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__ICAttachmentSystemPaperModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke;
  v11[3] = &unk_278195FD8;
  v12 = v6;
  v10 = v6;
  [(ICSystemPaperDocument *)v9 updateGraphDestinationsUsingInlineAttachmentIdentifierMap:v4 completion:v11];
}

void __81__ICAttachmentSystemPaperModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "SystemPaper");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __81__ICAttachmentSystemPaperModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __81__ICAttachmentSystemPaperModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke_cold_2(a1, v5);
  }
}

- (void)fixupMetadataAndMinimumSupportedNotesVersion
{
  v1 = [a1 attachment];
  v2 = [v1 ic_loggingDescription];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_3_1(&dword_214D51000, v3, v4, "minimumSupportedNotesVersion is (%lld), but attachment is missing compatibility metadata; setting paperHasNewInks2022 now. Attachment: %@", v5, v6, v7, v8, v9);
}

- (id)additionalIndexableTextContentInNote
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 additionalIndexableText];

  return v3;
}

- (id)searchableTextContentInNote
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 summary];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attributesForSharingHTMLWithTagName:(id *)a3 textContent:(id *)a4
{
  *a3 = @"img";
  v4 = [(ICAttachmentModel *)self attachment];
  v5 = [v4 fallbackImageData];

  if (v5)
  {
    v6 = [v5 base64EncodedStringWithOptions:0];
    v7 = +[ICAttachment fallbackImageUTI];
    v8 = [ICAttachment mimeTypeFromUTI:v7];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"style=max-width: 100%% max-height: 100%%; src=data:%@;base64, %@", v8, v6];;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)account
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__25;
  v12 = __Block_byref_object_dispose__25;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ICAttachmentSystemPaperModel_account__block_invoke;
  v7[3] = &unk_278194DE8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __39__ICAttachmentSystemPaperModel_account__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) attachment];
  v2 = [v6 note];
  v3 = [v2 account];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __81__ICAttachmentSystemPaperModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Error updating graph destinations after load {attachment: %@, error: %@}", &v4, 0x16u);
}

void __81__ICAttachmentSystemPaperModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Updated graph destinations after load {attachment: %@}", &v3, 0xCu);
}

@end