@interface ICAttachmentTableModel
+ (id)tableFromAttributedString:(id)a3 managedObjectContext:(id)a4 replicaID:(id)a5;
- (BOOL)mergeWithMergeableData:(id)a3 mergeableFieldState:(id)a4;
- (BOOL)usesChildAttachment:(id)a3;
- (ICTable)table;
- (ICTableVersionedDocument)tableDocument;
- (id)csvData;
- (id)csvString;
- (id)mergeableDataForCopying:(id *)a3;
- (id)searchableTextContent;
- (id)searchableTextContentInNote;
- (id)stringsAtRow:(unint64_t)a3;
- (id)textContentInNote;
- (void)addMergeableDataToCloudKitRecord:(id)a3 approach:(int64_t)a4 mergeableFieldState:(id)a5;
- (void)attachmentAwakeFromFetch;
- (void)attachmentDidRefresh:(BOOL)a3;
- (void)attachmentWillRefresh:(BOOL)a3;
- (void)attachmentWillTurnIntoFault;
- (void)mergeTablePrimitiveData;
- (void)persistPendingChanges;
- (void)regenerateTextContentInNote;
- (void)removeTimestampsForReplicaID:(id)a3;
- (void)replaceChildInlineAttachment:(id)a3 withText:(id)a4;
- (void)updateAfterLoadWithInlineAttachmentIdentifierMap:(id)a3;
- (void)updateAttachmentByMergingWithTableData:(id)a3;
- (void)willMarkAttachmentForDeletion;
- (void)writeCurrentTimestampToMergeableFieldStateIfNecessary:(id)a3;
- (void)writeMergeableData;
@end

@implementation ICAttachmentTableModel

- (void)attachmentAwakeFromFetch
{
  v8.receiver = self;
  v8.super_class = ICAttachmentTableModel;
  [(ICAttachmentModel *)&v8 attachmentAwakeFromFetch];
  if (self->_tableDocument)
  {
    v3 = [(ICAttachmentModel *)self attachment];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(ICAttachmentModel *)self attachment];
      v6 = [v5 documentMergeController];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __50__ICAttachmentTableModel_attachmentAwakeFromFetch__block_invoke;
      v7[3] = &unk_278194B00;
      v7[4] = self;
      [v6 requestMergeWithBlock:v7];
    }

    else
    {
      [(ICAttachmentTableModel *)self mergeTablePrimitiveData];
    }
  }
}

- (void)attachmentWillTurnIntoFault
{
  if (![(ICAttachmentModel *)self isMergeableDataDirty])
  {
    tableDocument = self->_tableDocument;
    self->_tableDocument = 0;
  }
}

- (void)attachmentWillRefresh:(BOOL)a3
{
  if (![(ICAttachmentModel *)self isMergeableDataDirty])
  {
    tableDocument = self->_tableDocument;
    self->_tableDocument = 0;
  }
}

- (void)attachmentDidRefresh:(BOOL)a3
{
  v4 = [(ICAttachmentModel *)self attachment];
  [ICTableAttachmentProvider notifyProviderForRefreshToAttachment:v4];

  if (self->_tableDocument && [(ICAttachmentModel *)self isMergeableDataDirty])
  {
    v5 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(ICAttachmentTableModel *)self attachmentDidRefresh:v5];
    }

    v6 = [(ICAttachmentModel *)self attachment];
    v7 = [v6 identifier];

    v8 = os_log_create("com.apple.notes", "CoreData");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      if (v9)
      {
        [ICAttachmentTableModel attachmentDidRefresh:];
      }
    }

    else if (v9)
    {
      [ICAttachmentTableModel attachmentDidRefresh:];
    }
  }
}

- (id)stringsAtRow:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(ICAttachmentTableModel *)self table];
  v7 = [v6 rowCount];

  if (v7 > a3)
  {
    v8 = [(ICAttachmentTableModel *)self table];
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:a3];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__ICAttachmentTableModel_stringsAtRow___block_invoke;
    v12[3] = &unk_278197710;
    v13 = v5;
    [v8 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:v9 copyItems:0 usingBlock:v12];
  }

  v10 = [v5 copy];

  return v10;
}

uint64_t __39__ICAttachmentTableModel_stringsAtRow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attributedString];
  v4 = [v3 string];

  [*(a1 + 32) ic_addNonNilObject:v4];
  return 0;
}

- (id)searchableTextContent
{
  v2 = [(ICAttachmentTableModel *)self searchableTextContentInNote];
  v3 = [v2 string];

  return v3;
}

- (id)searchableTextContentInNote
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v4 = [(ICAttachmentModel *)self attachment];
  v5 = [v4 identifier];

  v6 = [(ICAttachmentModel *)self attachment];
  v7 = [v6 managedObjectContext];

  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v8 = [(ICAttachmentTableModel *)self table];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__ICAttachmentTableModel_searchableTextContentInNote__block_invoke;
  v15[3] = &unk_278197738;
  v9 = v7;
  v16 = v9;
  v10 = v5;
  v17 = v10;
  v11 = v3;
  v18 = v11;
  v19 = v20;
  [v8 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:0 copyItems:0 usingBlock:v15];

  v12 = v18;
  v13 = v11;

  _Block_object_dispose(v20, 8);

  return v13;
}

uint64_t __53__ICAttachmentTableModel_searchableTextContentInNote__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v7 = [a2 attributedString];
  v8 = [v7 ic_attributedStringByFlatteningInlineAttachmentsWithContext:*(a1 + 32)];

  v9 = [v8 string];
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v9];

    v18[0] = *(a1 + 40);
    v17[0] = @"SearchTableIdentifier";
    v17[1] = @"SearchTableColumn";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v18[1] = v12;
    v17[2] = @"SearchTableRow";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v18[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v11 attributes:v14];
    [*(a1 + 48) appendAttributedString:v15];
    *(*(*(a1 + 56) + 8) + 24) += [v11 length];
  }

  return 0;
}

- (id)textContentInNote
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 summary];

  return v3;
}

- (void)regenerateTextContentInNote
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];

  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6 = [(ICAttachmentTableModel *)self table];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __53__ICAttachmentTableModel_regenerateTextContentInNote__block_invoke;
  v14 = &unk_278197760;
  v15 = v4;
  v16 = v5;
  v7 = v5;
  v8 = v4;
  [v6 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:0 copyItems:0 usingBlock:&v11];

  v9 = [MEMORY[0x277CCACA8] stringWithString:{v7, v11, v12, v13, v14}];
  v10 = [(ICAttachmentModel *)self attachment];
  [v10 setSummary:v9];
}

uint64_t __53__ICAttachmentTableModel_regenerateTextContentInNote__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attributedString];
  v4 = [v3 ic_attributedStringByFlatteningInlineAttachmentsWithContext:*(a1 + 32)];
  v5 = [v4 string];

  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v5];

    [*(a1 + 40) appendString:v6];
  }

  return 0;
}

- (id)csvString
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [(ICAttachmentTableModel *)self table];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__ICAttachmentTableModel_csvString__block_invoke;
  v9[3] = &unk_2781977B0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateRowsWithBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __35__ICAttachmentTableModel_csvString__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 1;
  v6 = [*(a1 + 32) table];
  v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:a3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__ICAttachmentTableModel_csvString__block_invoke_2;
  v9[3] = &unk_278197788;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v11 = v12;
  v10 = v8;
  [v6 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:v7 copyItems:0 usingBlock:v9];

  [*(a1 + 40) appendString:@"\n"];
  _Block_object_dispose(v12, 8);
}

id __35__ICAttachmentTableModel_csvString__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attributedString];
  v5 = [*(a1 + 32) attachment];
  v6 = [v5 managedObjectContext];
  v7 = [v4 ic_attributedStringByFlatteningInlineAttachmentsWithContext:v6];

  v8 = [v7 string];
  v9 = [v8 mutableCopy];

  v10 = [(__CFString *)v9 ic_range];
  [(__CFString *)v9 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:v10, v11];
  v12 = [(__CFString *)v9 ic_range];
  [(__CFString *)v9 replaceOccurrencesOfString:@" withString:@"\ options:0 range:v12, v13];
  v14 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", \\\n"}];
  if ([(__CFString *)v9 rangeOfCharacterFromSet:v14]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(__CFString *)v9 insertString:@"" atIndex:0];
    [(__CFString *)v9 appendString:@""];
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 40) appendString:{@", "}];
  }

  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = &stru_2827172C0;
  }

  [*(a1 + 40) appendString:v15];
  *(*(*(a1 + 48) + 8) + 24) = 0;

  return v3;
}

- (id)csvData
{
  v2 = [(ICAttachmentTableModel *)self csvString];
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

- (void)willMarkAttachmentForDeletion
{
  v2.receiver = self;
  v2.super_class = ICAttachmentTableModel;
  [(ICAttachmentModel *)&v2 willMarkAttachmentForDeletion];
}

- (void)persistPendingChanges
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];
  v5 = [v4 concurrencyType];

  if (v5 == 2)
  {
    v6 = [(ICAttachmentModel *)self attachment];
    [ICTableAttachmentProvider saveAttachmentOnMainThread:v6];
  }
}

- (BOOL)usesChildAttachment:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = [(ICAttachmentModel *)self attachment];
  v6 = [v5 managedObjectContext];

  v7 = [(ICAttachmentTableModel *)self table];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__ICAttachmentTableModel_usesChildAttachment___block_invoke;
  v11[3] = &unk_2781977D8;
  v8 = v6;
  v12 = v8;
  v9 = v4;
  v13 = v9;
  v14 = &v15;
  [v7 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:0 copyItems:0 usingBlock:v11];

  LOBYTE(v7) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v7;
}

uint64_t __46__ICAttachmentTableModel_usesChildAttachment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attributedString];
  v5 = *(a1 + 32);
  v6 = [v3 attributedString];

  v7 = [v6 ic_range];
  v9 = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__ICAttachmentTableModel_usesChildAttachment___block_invoke_2;
  v13[3] = &unk_2781954C0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v14 = v10;
  v15 = v11;
  [v4 ic_enumerateAbstractAttachmentsInContext:v5 range:v7 options:v9 usingBlock:{0, v13}];

  return 0;
}

uint64_t __46__ICAttachmentTableModel_usesChildAttachment___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)replaceChildInlineAttachment:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICAttachmentTableModel *)self table];
  v9 = [(ICAttachmentModel *)self attachment];
  v10 = [v9 managedObjectContext];

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __64__ICAttachmentTableModel_replaceChildInlineAttachment_withText___block_invoke;
  v19 = &unk_278197738;
  v11 = v10;
  v20 = v11;
  v12 = v6;
  v21 = v12;
  v13 = v7;
  v22 = v13;
  v23 = &v24;
  [v8 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:0 copyItems:0 usingBlock:&v16];
  if (*(v25 + 24) == 1)
  {
    [(ICAttachmentModel *)self setMergeableDataDirty:1, v16, v17, v18, v19, v20, v21];
    v14 = [(ICAttachmentModel *)self attachment];
    [v14 saveMergeableDataIfNeeded];

    v15 = [(ICAttachmentModel *)self attachment];
    [v15 updateChangeCountWithReason:@"Replaced inline attachment"];
  }

  _Block_object_dispose(&v24, 8);
}

id __64__ICAttachmentTableModel_replaceChildInlineAttachment_withText___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = [v7 attributedString];
  v9 = *(a1 + 32);
  v10 = [v8 ic_range];
  v12 = v11;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__ICAttachmentTableModel_replaceChildInlineAttachment_withText___block_invoke_2;
  v18[3] = &unk_278197800;
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v13 = v7;
  v14 = *(a1 + 56);
  v21 = v13;
  v22 = v14;
  v23 = a5;
  [v8 ic_enumerateInlineAttachmentsInContext:v9 range:v10 options:v12 usingBlock:{0, v18}];
  v15 = v21;
  v16 = v13;

  return v13;
}

void __64__ICAttachmentTableModel_replaceChildInlineAttachment_withText___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v14 = a2;
  if ([v14 attachmentType] == 1)
  {
    v9 = [v14 objectID];
    v10 = [*(a1 + 32) objectID];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:*(a1 + 40)];
      [*(a1 + 48) replaceCharactersInRange:a3 withAttributedString:{a4, v12}];
      v13 = *(a1 + 64);
      *(*(*(a1 + 56) + 8) + 24) = 1;
      *a5 = 1;
      *v13 = 1;
    }
  }
}

- (ICTable)table
{
  v2 = [(ICAttachmentTableModel *)self tableDocument];
  v3 = [v2 table];

  return v3;
}

- (ICTableVersionedDocument)tableDocument
{
  tableDocument = self->_tableDocument;
  if (!tableDocument)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__32;
    v21 = __Block_byref_object_dispose__32;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__32;
    v15 = __Block_byref_object_dispose__32;
    v16 = 0;
    v4 = [(ICAttachmentModel *)self attachment];
    v5 = [v4 managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__ICAttachmentTableModel_tableDocument__block_invoke;
    v10[3] = &unk_2781950A8;
    v10[4] = self;
    v10[5] = &v17;
    v10[6] = &v11;
    [v5 performBlockAndWait:v10];

    v6 = [ICTableVersionedDocument alloc];
    v7 = [(ICTTVersionedDocument *)v6 initWithData:v18[5] replicaID:v12[5]];
    v8 = self->_tableDocument;
    self->_tableDocument = v7;

    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v17, 8);

    tableDocument = self->_tableDocument;
  }

  return tableDocument;
}

void __39__ICAttachmentTableModel_tableDocument__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 mergeableData];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) currentReplicaID];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)mergeableDataForCopying:(id *)a3
{
  v28.receiver = self;
  v28.super_class = ICAttachmentTableModel;
  v5 = [(ICAttachmentModel *)&v28 mergeableDataForCopying:?];
  if (v5)
  {
    v6 = [ICTableVersionedDocument alloc];
    v7 = [(ICAttachmentTableModel *)self table];
    v8 = [v7 columnCount];
    v9 = [(ICAttachmentTableModel *)self table];
    v10 = [v9 rowCount];
    v11 = [(ICAttachmentModel *)self currentReplicaID];
    v12 = [(ICTableVersionedDocument *)v6 initWithColumnCount:v8 rowCount:v10 replicaID:v11];

    v13 = [(ICAttachmentTableModel *)self table];
    LODWORD(v8) = [v13 isRightToLeft];

    if (v8)
    {
      v14 = [(ICTableVersionedDocument *)v12 table];
      [v14 reverseColumnDirection];
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__32;
    v26 = __Block_byref_object_dispose__32;
    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15 = [(ICAttachmentTableModel *)self table];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__ICAttachmentTableModel_mergeableDataForCopying___block_invoke;
    v19[3] = &unk_2781977D8;
    v19[4] = self;
    v16 = v12;
    v20 = v16;
    v21 = &v22;
    [v15 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:0 copyItems:0 usingBlock:v19];

    if (a3)
    {
      *a3 = [v23[5] copy];
    }

    v17 = [(ICTTVersionedDocument *)v16 serialize];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __50__ICAttachmentTableModel_mergeableDataForCopying___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 attributedString];
  v8 = [*(a1 + 32) attachment];
  v9 = [v8 managedObjectContext];
  v10 = [v7 ic_attributedStringByFlatteningUnsupportedInlineAttachmentsWithContext:v9];

  v11 = [*(a1 + 40) table];
  [v11 setAttributedString:v10 columnIndex:a3 rowIndex:a4];

  v12 = [*(a1 + 32) attachment];
  v13 = [v12 managedObjectContext];
  v14 = [v10 ic_range];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__ICAttachmentTableModel_mergeableDataForCopying___block_invoke_2;
  v17[3] = &unk_2781953A8;
  v17[4] = *(a1 + 48);
  [v10 ic_enumerateInlineAttachmentsInContext:v13 range:v14 options:v15 usingBlock:{0, v17}];

  return 0;
}

void __50__ICAttachmentTableModel_mergeableDataForCopying___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 markedForDeletion] & 1) == 0)
  {
    [*(*(*(a1 + 32) + 8) + 40) ic_addNonNilObject:v3];
  }
}

- (BOOL)mergeWithMergeableData:(id)a3 mergeableFieldState:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = a3;
    v8 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ICAttachmentTableModel mergeWithMergeableData:mergeableFieldState:];
    }

    v9 = [ICTableVersionedDocument alloc];
    v10 = [(ICAttachmentModel *)self currentReplicaID];
    v11 = [(ICTTVersionedDocument *)v9 initWithData:v7 replicaID:v10];

    v12 = [(ICAttachmentTableModel *)self tableDocument];
    v13 = [v12 mergeWithTableVersionedDocument:v11];

    v14 = v13 == 2;
    if (v13 == 2)
    {
      v15 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ICAttachmentTableModel mergeWithMergeableData:mergeableFieldState:];
      }

      [(ICAttachmentModel *)self setMergeableDataDirty:1];
      [(ICAttachmentTableModel *)self writeCurrentTimestampToMergeableFieldStateIfNecessary:v6];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)writeCurrentTimestampToMergeableFieldStateIfNecessary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBC5A0] ic_encryptedKeyForKeyPrefix:@"MergeableData"];
    v6 = [(ICAttachmentTableModel *)self table];
    v7 = [v6 ttDocument];
    v8 = [v7 sharedTopotextTimestamp];

    v9 = [v8 serialize];
    if ([v9 length])
    {
      [v4 setObject:v9 forKey:v5];
    }

    else
    {
      v10 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(ICAttachmentTableModel *)self writeCurrentTimestampToMergeableFieldStateIfNecessary:v10];
      }
    }
  }
}

- (void)writeMergeableData
{
  if ([(ICAttachmentModel *)self isMergeableDataDirty])
  {
    [(ICAttachmentModel *)self setMergeableDataDirty:0];
  }

  v5 = [(ICAttachmentTableModel *)self tableDocument];
  v3 = [v5 serialize];
  v4 = [(ICAttachmentModel *)self attachment];
  [v4 setMergeableData:v3];
}

- (void)updateAttachmentByMergingWithTableData:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentTableModel *)self table];
  v6 = [v5 document];
  v7 = [v6 mergeWithData:v4];

  if (v7 == 2)
  {
    [(ICAttachmentModel *)self setMergeableDataDirty:1];
    v8 = [(ICAttachmentModel *)self attachment];
    [v8 attachmentDidChange];
  }
}

- (void)mergeTablePrimitiveData
{
  v3 = [(ICAttachmentModel *)self attachment];
  v5 = [v3 primitiveValueForEncryptableKey:@"mergeableData"];

  v4 = v5;
  if (v5)
  {
    [(ICAttachmentModel *)self mergeWithMergeableData:v5];
    v4 = v5;
  }
}

- (void)addMergeableDataToCloudKitRecord:(id)a3 approach:(int64_t)a4 mergeableFieldState:(id)a5
{
  v22 = a3;
  v8 = a5;
  v9 = [(ICAttachmentModel *)self attachment];
  v10 = [v9 isPasswordProtected];

  if (v10)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"!self.attachment.isPasswordProtected" functionName:"-[ICAttachmentTableModel addMergeableDataToCloudKitRecord:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:@"Locked notes should use encrypted values JSON instead"];
  }

  if (v8)
  {
    v11 = [MEMORY[0x277CBC5A0] ic_encryptedKeyForKeyPrefix:@"MergeableData"];
    objc_opt_class();
    v12 = [v8 objectForKey:v11];
    v13 = ICDynamicCast();

    if ([v13 length])
    {
      v14 = [ICCRTTCompatibleDocument makeSharedTopotextTimestampFromData:v13];
      v15 = [(ICAttachmentTableModel *)self table];
      v16 = [v15 ttDocument];
      v17 = [v16 sharedTopotextTimestamp];

      if (v14)
      {
        v18 = [v14 compareTo:v17];

        if (!v18)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_10:
  v19 = [(ICAttachmentModel *)self attachment];
  v20 = [v19 mergeableData];

  if (v20)
  {
    v21 = [(ICAttachmentModel *)self attachment];
    [v22 ic_setEncryptedInlineableDataAsset:v20 forKeyPrefix:@"MergeableData" approach:a4 withObject:v21];
  }

LABEL_13:
  [(ICAttachmentTableModel *)self writeCurrentTimestampToMergeableFieldStateIfNecessary:v8];
}

+ (id)tableFromAttributedString:(id)a3 managedObjectContext:(id)a4 replicaID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 length])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = [v11 ic_truncated];
    [v12 timeIntervalSince1970];
    v13 = [v10 numberWithDouble:?];

    v14 = [(ICTTVersionedDocument *)[ICTableVersionedDocument alloc] initWithData:0 replicaID:v9];
    v15 = [(ICTableVersionedDocument *)v14 table];
    v16 = [v15 insertColumnAtIndex:0];
    v17 = [v7 length];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __83__ICAttachmentTableModel_tableFromAttributedString_managedObjectContext_replicaID___block_invoke;
    v25 = &unk_278197850;
    v26 = v7;
    v18 = v15;
    v27 = v18;
    v19 = v13;
    v28 = v19;
    v29 = v8;
    [v26 enumerateAttribute:@"NSAttachment" inRange:0 options:v17 usingBlock:{0, &v22}];
    if (![v18 rowCount])
    {
      v20 = [v18 insertRowAtIndex:0];
    }

    if (![v18 rowCount] || !objc_msgSend(v18, "columnCount"))
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"icTable.rowCount > 0 && icTable.columnCount > 0" functionName:"+[ICAttachmentTableModel tableFromAttributedString:managedObjectContext:replicaID:]" simulateCrash:1 showAlert:0 format:@"Table from attributed string must have at least one row and one column"];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __83__ICAttachmentTableModel_tableFromAttributedString_managedObjectContext_replicaID___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (!v7)
  {
    v8 = 0;
LABEL_17:
    v26 = [*(a1 + 32) attributedSubstringFromRange:{a3, a4}];
    v27 = [v26 string];
    v28 = [v26 length];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __83__ICAttachmentTableModel_tableFromAttributedString_managedObjectContext_replicaID___block_invoke_2;
    v31[3] = &unk_278197828;
    v35 = a3;
    v36 = a4;
    v32 = v26;
    v33 = *(a1 + 40);
    v34 = *(a1 + 48);
    v29 = v26;
    [v27 enumerateSubstringsInRange:0 options:v28 usingBlock:{1, v31}];

    goto LABEL_18;
  }

  objc_opt_class();
  v8 = ICDynamicCast();
  if (!v8 || [ICTTAttachment isInlineAttachment:v8])
  {
    goto LABEL_17;
  }

  if (*(a1 + 56))
  {
    v9 = [v8 attachmentInContext:?];
    if ([v9 isTable])
    {
      v30 = v8;
      v10 = [v9 tableModel];
      v11 = [v10 table];

      v12 = [*(a1 + 40) rowCount];
      v13 = [*(a1 + 40) insertRows:objc_msgSend(v11 atIndex:{"rowCount"), v12}];
      v14 = [v11 columnCount];
      if (v14 > [*(a1 + 40) columnCount])
      {
        v15 = [*(a1 + 40) insertColumns:objc_msgSend(v11 atIndex:{"columnCount") - objc_msgSend(*(a1 + 40), "columnCount"), objc_msgSend(*(a1 + 40), "columnCount")}];
      }

      if ([v11 rowCount])
      {
        v16 = 0;
        do
        {
          if ([v11 columnCount])
          {
            v17 = 0;
            do
            {
              v18 = [v11 stringForColumnIndex:v17 rowIndex:v16];
              v19 = [v18 mutableCopy];

              v20 = ICTTAttributeNameTimestamp;
              v21 = *(a1 + 48);
              v22 = [v19 ic_range];
              [v19 addAttribute:v20 value:v21 range:{v22, v23}];
              v24 = *(a1 + 40);
              v25 = [v19 copy];
              [v24 setAttributedString:v25 columnIndex:v17 rowIndex:v16 + v12];

              ++v17;
            }

            while (v17 < [v11 columnCount]);
          }

          ++v16;
        }

        while (v16 < [v11 rowCount]);
      }

      v8 = v30;
    }
  }

LABEL_18:
}

void __83__ICAttachmentTableModel_tableFromAttributedString_managedObjectContext_replicaID___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (*(a1 + 56))
  {
    v8 = a4 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v36 = [*(a1 + 32) attributedSubstringFromRange:{a3, a4}];
    v33 = v7;
    v9 = [v7 componentsSeparatedByString:@"\t"];
    v10 = [*(a1 + 40) columnCount];
    v11 = [v9 count];
    v12 = v11 - v10;
    if (v11 > v10)
    {
      v13 = [*(a1 + 40) insertColumns:v12 atIndex:v10];
    }

    v35 = [*(a1 + 40) rowCount];
    v14 = [*(a1 + 40) insertRowAtIndex:?];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v9;
    v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      v19 = *v38;
      do
      {
        v20 = 0;
        v21 = v17;
        do
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [v36 attributedSubstringFromRange:{v18, objc_msgSend(*(*(&v37 + 1) + 8 * v20), "length")}];
          v23 = [v22 mutableCopy];

          v24 = [v23 ic_range];
          [v23 ic_convertParagraphStyleToBodyInRange:{v24, v25}];
          v26 = ICTTAttributeNameTimestamp;
          v27 = *(a1 + 48);
          v28 = [v23 ic_range];
          [v23 addAttribute:v26 value:v27 range:{v28, v29}];
          v30 = *(a1 + 40);
          v31 = [v23 copy];
          v17 = v21 + 1;
          [v30 setAttributedString:v31 columnIndex:v21 rowIndex:v35];

          v32 = [v23 length];
          v18 += v32 + [@"\t" length];

          ++v20;
          ++v21;
        }

        while (v16 != v20);
        v16 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v16);
    }

    v7 = v33;
  }
}

- (void)updateAfterLoadWithInlineAttachmentIdentifierMap:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentTableModel *)self table];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__ICAttachmentTableModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke;
  v9[3] = &unk_278197788;
  v6 = v4;
  v10 = v6;
  v12 = &v13;
  v7 = v5;
  v11 = v7;
  [v7 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:0 copyItems:0 usingBlock:v9];
  if (*(v14 + 24) == 1)
  {
    [(ICAttachmentModel *)self setMergeableDataDirty:1];
    v8 = [(ICAttachmentModel *)self attachment];
    [v8 saveMergeableDataIfNeeded];
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __75__ICAttachmentTableModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 attributedString];
  v9 = [v8 mutableCopy];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = [v9 length];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ICAttachmentTableModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke_2;
  v15[3] = &unk_278197878;
  v18 = &v19;
  v16 = *(a1 + 32);
  v11 = v9;
  v17 = v11;
  [v11 enumerateAttribute:@"NSAttachment" inRange:0 options:v10 usingBlock:{0, v15}];
  if (*(v20 + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v12 = *(a1 + 40);
    v13 = [v11 copy];
    [v12 setAttributedString:v13 columnIndex:a3 rowIndex:a4];
  }

  _Block_object_dispose(&v19, 8);
  return 0;
}

void __75__ICAttachmentTableModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if ([v7 conformsToProtocol:&unk_282766DE0])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v8 = v7;
    v9 = objc_alloc_init(ICTTAttachment);
    v10 = [v8 attachmentIdentifier];
    v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
    v12 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __75__ICAttachmentTableModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke_2_cold_1();
    }

    if (v11)
    {
      [(ICTTAttachment *)v9 setAttachmentIdentifier:v11];
    }

    else
    {
      v13 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __75__ICAttachmentTableModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke_2_cold_2();
      }
    }

    v14 = [v8 attachmentUTI];
    [(ICTTAttachment *)v9 setAttachmentUTI:v14];

    [*(a1 + 40) addAttribute:@"NSAttachment" value:v9 range:{a3, a4}];
  }
}

- (void)removeTimestampsForReplicaID:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentTableModel *)self table];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ICAttachmentTableModel_removeTimestampsForReplicaID___block_invoke;
  v7[3] = &unk_278197710;
  v8 = v4;
  v6 = v4;
  [v5 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:0 copyItems:0 usingBlock:v7];

  [(ICAttachmentModel *)self setMergeableDataDirty:1];
  [(ICAttachmentTableModel *)self writeMergeableData];
}

id __55__ICAttachmentTableModel_removeTimestampsForReplicaID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 edits];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__ICAttachmentTableModel_removeTimestampsForReplicaID___block_invoke_2;
  v8[3] = &unk_2781978A0;
  v9 = *(a1 + 32);
  v5 = [v4 ic_containsObjectPassingTest:v8];

  if (v5)
  {
    [v3 removeTimestampsForReplicaID:*(a1 + 32)];
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __55__ICAttachmentTableModel_removeTimestampsForReplicaID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 replicaID];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = [v3 timestamp];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)attachmentDidRefresh:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 attachment];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Had a dirty table document after refresh: %@", v5, 0xCu);
}

- (void)attachmentDidRefresh:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)attachmentDidRefresh:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeCurrentTimestampToMergeableFieldStateIfNecessary:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 attachment];
  v4 = [v3 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Failed to snapshot CRDT timestamp for table: %@", v5, 0xCu);
}

void __75__ICAttachmentTableModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke_2_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_214D51000, v1, OS_LOG_TYPE_DEBUG, "Update inline attachment after load: %@ => %@", v2, 0x16u);
}

void __75__ICAttachmentTableModel_updateAfterLoadWithInlineAttachmentIdentifierMap___block_invoke_2_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Unable to map from %@ to new identifier", v1, 0xCu);
}

@end