@interface ICAttachmentSystemPaperModel
- (BOOL)hasDeepLink;
- (CGRect)paperContentBoundsHint;
- (id)account;
- (id)additionalIndexableTextContentInNote;
- (id)attributesForSharingHTMLWithTagName:(id *)name textContent:(id *)content;
- (id)searchableTextContentInNote;
- (void)addMergeableDataToCloudKitRecord:(id)record approach:(int64_t)approach mergeableFieldState:(id)state;
- (void)fixupMetadataAndMinimumSupportedNotesVersion;
- (void)setHasDeepLink:(BOOL)link;
- (void)setPaperContentBoundsHint:(CGRect)hint;
- (void)updateAfterLoadWithInlineAttachmentIdentifierMap:(id)map;
@end

@implementation ICAttachmentSystemPaperModel

- (CGRect)paperContentBoundsHint
{
  attachment = [(ICAttachmentModel *)self attachment];
  metadata = [attachment metadata];

  if (!metadata)
  {
    goto LABEL_17;
  }

  v8 = [metadata objectForKeyedSubscript:@"paperContentBoundsOriginXKey"];
  v9 = [metadata objectForKeyedSubscript:@"paperContentBoundsOriginYKey"];
  v10 = [metadata objectForKeyedSubscript:@"paperContentBoundsWidthKey"];
  v11 = [metadata objectForKeyedSubscript:@"paperContentBoundsHeightKey"];
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

- (void)setPaperContentBoundsHint:(CGRect)hint
{
  height = hint.size.height;
  width = hint.size.width;
  y = hint.origin.y;
  x = hint.origin.x;
  attachment = [(ICAttachmentModel *)self attachment];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ICAttachmentSystemPaperModel_setPaperContentBoundsHint___block_invoke;
  v8[3] = &__block_descriptor_64_e29_v16__0__NSMutableDictionary_8l;
  *&v8[4] = x;
  *&v8[5] = y;
  *&v8[6] = width;
  *&v8[7] = height;
  [attachment updateAttachmentMetadataWithBlock:v8];
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

- (void)setHasDeepLink:(BOOL)link
{
  attachment = [(ICAttachmentModel *)self attachment];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ICAttachmentSystemPaperModel_setHasDeepLink___block_invoke;
  v5[3] = &__block_descriptor_33_e29_v16__0__NSMutableDictionary_8l;
  linkCopy = link;
  [attachment updateAttachmentMetadataWithBlock:v5];
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
  attachment = [(ICAttachmentModel *)self attachment];
  metadata = [attachment metadata];

  v4 = [metadata objectForKeyedSubscript:@"hasDeepLinkKey"];
  LOBYTE(attachment) = v4 != 0;

  return attachment;
}

- (void)addMergeableDataToCloudKitRecord:(id)record approach:(int64_t)approach mergeableFieldState:(id)state
{
  if (approach == 1 && state)
  {
    stateCopy = state;
    attachment = [(ICAttachmentModel *)self attachment];
    identifier = [attachment identifier];
    v9 = [identifier dataUsingEncoding:4];
    [stateCopy setObject:v9 forKey:@"TokenContentIdentifierEncrypted"];
  }
}

- (void)updateAfterLoadWithInlineAttachmentIdentifierMap:(id)map
{
  mapCopy = map;
  attachment = [(ICAttachmentModel *)self attachment];
  shortLoggingDescription = [attachment shortLoggingDescription];

  v7 = [_TtC11NotesShared21ICSystemPaperDocument alloc];
  attachment2 = [(ICAttachmentModel *)self attachment];
  v9 = [(ICSystemPaperDocument *)v7 initWithPaperAttachment:attachment2];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__ICAttachmentSystemPaperModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke;
  v11[3] = &unk_278195FD8;
  v12 = shortLoggingDescription;
  v10 = shortLoggingDescription;
  [(ICSystemPaperDocument *)v9 updateGraphDestinationsUsingInlineAttachmentIdentifierMap:mapCopy completion:v11];
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
  attachment = [self attachment];
  ic_loggingDescription = [attachment ic_loggingDescription];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_3_1(&dword_214D51000, v3, v4, "minimumSupportedNotesVersion is (%lld), but attachment is missing compatibility metadata; setting paperHasNewInks2022 now. Attachment: %@", v5, v6, v7, v8, v9);
}

- (id)additionalIndexableTextContentInNote
{
  attachment = [(ICAttachmentModel *)self attachment];
  additionalIndexableText = [attachment additionalIndexableText];

  return additionalIndexableText;
}

- (id)searchableTextContentInNote
{
  attachment = [(ICAttachmentModel *)self attachment];
  summary = [attachment summary];

  if (summary)
  {
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:summary];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attributesForSharingHTMLWithTagName:(id *)name textContent:(id *)content
{
  *name = @"img";
  attachment = [(ICAttachmentModel *)self attachment];
  fallbackImageData = [attachment fallbackImageData];

  if (fallbackImageData)
  {
    v6 = [fallbackImageData base64EncodedStringWithOptions:0];
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
  attachment = [(ICAttachmentModel *)self attachment];
  managedObjectContext = [attachment managedObjectContext];

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
  [managedObjectContext performBlockAndWait:v7];
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