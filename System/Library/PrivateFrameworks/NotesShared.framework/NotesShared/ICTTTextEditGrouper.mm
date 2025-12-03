@interface ICTTTextEditGrouper
- (BOOL)trustsTimestampsFromReplicaID:(id)d;
- (ICTTTextEditGrouper)initWithNote:(id)note;
- (_NSRange)rangeForEdits:(id)edits;
- (id)editGroupForEdits:(id)edits userID:(id)d inAttributedString:(id)string;
- (id)editsByAddingAllowedAttachmentEditsToEdit:(id)edit inAttributedString:(id)string;
- (id)editsByAddingCheckmarkEditsToEdit:(id)edit inAttributedString:(id)string;
- (id)editsByAddingTableEditsToEdit:(id)edit inAttributedString:(id)string;
- (id)filteredEditForEdit:(id)edit inAttributedString:(id)string;
- (id)groupedEdits;
- (id)groupedEditsForEdits:(id)edits inAttributedString:(id)string;
- (id)latestTimestampForEdits:(id)edits;
- (id)userIDForReplicaID:(id)d;
@end

@implementation ICTTTextEditGrouper

- (ICTTTextEditGrouper)initWithNote:(id)note
{
  noteCopy = note;
  v15.receiver = self;
  v15.super_class = ICTTTextEditGrouper;
  v6 = [(ICTTTextEditGrouper *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_note, note);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    userIDForReplicaID = v7->_userIDForReplicaID;
    v7->_userIDForReplicaID = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    trustsTimestampsFromReplicaID = v7->_trustsTimestampsFromReplicaID;
    v7->_trustsTimestampsFromReplicaID = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    checkmarkReplicaIDForUserID = v7->_checkmarkReplicaIDForUserID;
    v7->_checkmarkReplicaIDForUserID = dictionary3;
  }

  return v7;
}

- (id)groupedEditsForEdits:(id)edits inAttributedString:(id)string
{
  editsCopy = edits;
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  if ([(ICTTTextEditGrouper *)self includesTableEdits])
  {
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __63__ICTTTextEditGrouper_groupedEditsForEdits_inAttributedString___block_invoke;
    v54[3] = &unk_2781982A8;
    v54[4] = self;
    v55 = stringCopy;
    v8 = [editsCopy ic_flatMap:v54];

    editsCopy = v8;
  }

  v49 = stringCopy;
  if ([(ICTTTextEditGrouper *)self includesCheckmarkEdits])
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __63__ICTTTextEditGrouper_groupedEditsForEdits_inAttributedString___block_invoke_2;
    v52[3] = &unk_2781982A8;
    v52[4] = self;
    v53 = stringCopy;
    v9 = [editsCopy ic_flatMap:v52];

    editsCopy = v9;
  }

  filter = [(ICTTTextEditGrouper *)self filter];
  allowedAttachmentIDs = [filter allowedAttachmentIDs];

  if (allowedAttachmentIDs)
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __63__ICTTTextEditGrouper_groupedEditsForEdits_inAttributedString___block_invoke_3;
    v50[3] = &unk_2781982A8;
    v50[4] = self;
    v12 = v49;
    v51 = v49;
    v13 = [editsCopy ic_flatMap:v50];

    editsCopy = v13;
  }

  else
  {
    v12 = v49;
  }

  array2 = [MEMORY[0x277CBEB18] array];
  cR_unknown = [MEMORY[0x277CCAD78] CR_unknown];
  uUIDString = [cR_unknown UUIDString];

  if ([editsCopy count])
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = [editsCopy objectAtIndexedSubscript:v16];
      if (++v16 >= [editsCopy count])
      {
        v18 = 0;
      }

      else
      {
        v18 = [editsCopy objectAtIndexedSubscript:v16];
      }

      string = [v12 string];
      range = [v17 range];
      v22 = v21;
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v24 = [string ic_range:range onlyContainsCharacterSet:{v22, whitespaceAndNewlineCharacterSet}];

      if ([(ICTTTextEditGrouper *)self joinsWhitespaceAndNewlineGaps]&& v24)
      {
        range2 = [v17 range];
        v15 = range2 + v26;
        v12 = v49;
      }

      else
      {
        replicaID = [v17 replicaID];
        v28 = [(ICTTTextEditGrouper *)self userIDForReplicaID:replicaID];

        v29 = [v28 isEqual:uUIDString];
        v30 = !-[ICTTTextEditGrouper joinsTextGaps](self, "joinsTextGaps") && v15 < [v17 range];
        range3 = [v17 range];
        v33 = v32;
        v36 = range3 == [v18 range] && v33 == v34;
        if (!v29 || v30 || v36)
        {
          v37 = array2;
          v12 = v49;
          if ([array2 count])
          {
            v38 = [(ICTTTextEditGrouper *)self editGroupForEdits:array2 userID:uUIDString inAttributedString:v49];
            [array addObject:v38];
          }

          [array2 removeAllObjects];
          v39 = v28;

          uUIDString = v39;
        }

        else
        {
          v12 = v49;
          v37 = array2;
        }

        v40 = [(ICTTTextEditGrouper *)self filteredEditForEdit:v17 inAttributedString:v12];
        [v37 ic_addNonNilObject:v40];
        range4 = [v40 range];
        v15 = range4 + v42;
      }
    }

    while (v16 < [editsCopy count]);
  }

  if ([array2 count])
  {
    v43 = [(ICTTTextEditGrouper *)self editGroupForEdits:array2 userID:uUIDString inAttributedString:v12];
    [array addObject:v43];
  }

  v44 = [array copy];

  return v44;
}

- (id)groupedEdits
{
  note = [(ICTTTextEditGrouper *)self note];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = MEMORY[0x277CBEBF8];
    goto LABEL_5;
  }

  note2 = [(ICTTTextEditGrouper *)self note];
  uiAttributedString = [note2 uiAttributedString];

  if (uiAttributedString)
  {
    note = [(ICTTTextEditGrouper *)self note];
    uiAttributedString2 = [note uiAttributedString];
    edits = [uiAttributedString2 edits];
    note3 = [(ICTTTextEditGrouper *)self note];
    uiAttributedString3 = [note3 uiAttributedString];
    v10 = [(ICTTTextEditGrouper *)self groupedEditsForEdits:edits inAttributedString:uiAttributedString3];

LABEL_5:
    goto LABEL_6;
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_6:

  return v10;
}

- (id)userIDForReplicaID:(id)d
{
  dCopy = d;
  userIDForReplicaID = [(ICTTTextEditGrouper *)self userIDForReplicaID];
  v6 = [userIDForReplicaID objectForKeyedSubscript:dCopy];

  if (!v6)
  {
    note = [(ICTTTextEditGrouper *)self note];
    v6 = [note userIDForReplicaID:dCopy];

    userIDForReplicaID2 = [(ICTTTextEditGrouper *)self userIDForReplicaID];
    [userIDForReplicaID2 setObject:v6 forKeyedSubscript:dCopy];
  }

  return v6;
}

- (BOOL)trustsTimestampsFromReplicaID:(id)d
{
  dCopy = d;
  trustsTimestampsFromReplicaID = [(ICTTTextEditGrouper *)self trustsTimestampsFromReplicaID];
  v6 = [trustsTimestampsFromReplicaID objectForKeyedSubscript:dCopy];

  if (!v6)
  {
    v7 = MEMORY[0x277CCABB0];
    note = [(ICTTTextEditGrouper *)self note];
    v6 = [v7 numberWithBool:{objc_msgSend(note, "trustsTimestampsFromReplicaID:", dCopy)}];

    trustsTimestampsFromReplicaID2 = [(ICTTTextEditGrouper *)self trustsTimestampsFromReplicaID];
    [trustsTimestampsFromReplicaID2 setObject:v6 forKeyedSubscript:dCopy];
  }

  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (id)filteredEditForEdit:(id)edit inAttributedString:(id)string
{
  editCopy = edit;
  replicaID = [editCopy replicaID];
  v7 = [(ICTTTextEditGrouper *)self userIDForReplicaID:replicaID];

  filter = [(ICTTTextEditGrouper *)self filter];
  if (filter)
  {
    v9 = filter;
    filter2 = [(ICTTTextEditGrouper *)self filter];
    if ([filter2 allowsMissingUsers])
    {
    }

    else
    {
      cR_unknown = [MEMORY[0x277CCAD78] CR_unknown];
      uUIDString = [cR_unknown UUIDString];
      v13 = [v7 isEqual:uUIDString];

      if (v13)
      {
LABEL_7:
        v20 = 0;
        goto LABEL_25;
      }
    }
  }

  filter3 = [(ICTTTextEditGrouper *)self filter];
  allowedUserIDs = [filter3 allowedUserIDs];
  if (allowedUserIDs)
  {
    v16 = allowedUserIDs;
    filter4 = [(ICTTTextEditGrouper *)self filter];
    allowedUserIDs2 = [filter4 allowedUserIDs];
    v19 = [allowedUserIDs2 containsObject:v7];

    if (!v19)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  replicaID2 = [editCopy replicaID];
  if (![(ICTTTextEditGrouper *)self trustsTimestampsFromReplicaID:replicaID2])
  {

    goto LABEL_15;
  }

  timestamp = [editCopy timestamp];

  if (!timestamp)
  {
LABEL_15:
    timestamp = [(ICTTTextEditGrouper *)self filter];
    if (timestamp)
    {
      filter5 = [(ICTTTextEditGrouper *)self filter];
      allowsMissingTimestamps = [filter5 allowsMissingTimestamps];

      timestamp = 0;
      v20 = 0;
      if (!allowsMissingTimestamps)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  filter6 = [(ICTTTextEditGrouper *)self filter];
  fromDate = [filter6 fromDate];
  if (fromDate)
  {
    v25 = fromDate;
    filter7 = [(ICTTTextEditGrouper *)self filter];
    fromDate2 = [filter7 fromDate];
    v28 = [timestamp ic_isEarlierThanDate:fromDate2];

    if (v28)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  filter8 = [(ICTTTextEditGrouper *)self filter];
  toDate = [filter8 toDate];
  if (!toDate)
  {

    goto LABEL_23;
  }

  v33 = toDate;
  filter9 = [(ICTTTextEditGrouper *)self filter];
  toDate2 = [filter9 toDate];
  v36 = [timestamp ic_isLaterThanDate:toDate2];

  if ((v36 & 1) == 0)
  {
LABEL_23:
    v37 = [ICTTTextEdit alloc];
    replicaID3 = [editCopy replicaID];
    range = [editCopy range];
    v20 = [(ICTTTextEdit *)v37 initWithTimestamp:timestamp replicaID:replicaID3 range:range, v40];

    goto LABEL_24;
  }

LABEL_21:
  v20 = 0;
LABEL_24:

LABEL_25:

  return v20;
}

- (id)editGroupForEdits:(id)edits userID:(id)d inAttributedString:(id)string
{
  dCopy = d;
  editsCopy = edits;
  v9 = [(ICTTTextEditGrouper *)self latestTimestampForEdits:editsCopy];
  v10 = [(ICTTTextEditGrouper *)self rangeForEdits:editsCopy];
  v12 = v11;
  v13 = [ICTTTextEditGroup alloc];
  v14 = [editsCopy copy];

  v15 = [(ICTTTextEditGroup *)v13 initWithEdits:v14 latestTimestamp:v9 userID:dCopy range:v10, v12];

  return v15;
}

- (id)latestTimestampForEdits:(id)edits
{
  v22 = *MEMORY[0x277D85DE8];
  editsCopy = edits;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [editsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_16;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v18;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(editsCopy);
      }

      v9 = *(*(&v17 + 1) + 8 * i);
      timestamp = [v9 timestamp];
      if (timestamp)
      {
        v11 = timestamp;
        if (!v6)
        {

LABEL_11:
          timestamp2 = [v9 timestamp];

          v6 = timestamp2;
          continue;
        }

        timestamp3 = [v9 timestamp];
        [timestamp3 timeIntervalSinceDate:v6];
        v14 = v13;

        if (v14 > 0.0)
        {
          goto LABEL_11;
        }
      }
    }

    v5 = [editsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v5);
LABEL_16:

  return v6;
}

- (_NSRange)rangeForEdits:(id)edits
{
  v21 = *MEMORY[0x277D85DE8];
  editsCopy = edits;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [editsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(editsCopy);
        }

        location = [*(*(&v16 + 1) + 8 * i) range];
        v12.location = location;
        v12.length = length;
        if (v6)
        {
          v22.location = v8;
          v22.length = v6;
          v13 = NSUnionRange(v22, v12);
          length = v13.length;
          location = v13.location;
        }

        v8 = location;
        v6 = length;
      }

      v5 = [editsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = v8;
  v15 = v6;
  result.length = v15;
  result.location = v14;
  return result;
}

- (id)editsByAddingCheckmarkEditsToEdit:(id)edit inAttributedString:(id)string
{
  editCopy = edit;
  v7 = MEMORY[0x277CBEB18];
  stringCopy = string;
  array = [v7 array];
  v10 = ICTTAttributeNameParagraphStyle;
  range = [editCopy range];
  v13 = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__ICTTTextEditGrouper_editsByAddingCheckmarkEditsToEdit_inAttributedString___block_invoke;
  v18[3] = &unk_2781982D0;
  v19 = editCopy;
  v20 = array;
  selfCopy = self;
  v14 = array;
  v15 = editCopy;
  [stringCopy enumerateAttribute:v10 inRange:range options:v13 usingBlock:{0, v18}];

  v16 = [v14 copy];

  return v16;
}

void __76__ICTTTextEditGrouper_editsByAddingCheckmarkEditsToEdit_inAttributedString___block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v7 = [ICTTTextEdit alloc];
  v8 = [a1[4] timestamp];
  v9 = [a1[4] replicaID];
  v10 = [(ICTTTextEdit *)v7 initWithTimestamp:v8 replicaID:v9 range:a3, a4];

  [a1[5] addObject:v10];
  v11 = [v32 todo];

  if (v11)
  {
    v12 = [a1[6] note];
    v13 = [v32 todo];
    v14 = [v13 uuid];
    v15 = [v14 UUIDString];
    v16 = [v12 userIDForChecklistItemWithIdentifier:v15];

    if (v16)
    {
      v17 = [a1[6] checkmarkReplicaIDForUserID];
      v18 = [v17 objectForKeyedSubscript:v16];
      v19 = v18;
      v31 = a4;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = [MEMORY[0x277CCAD78] UUID];
      }

      v21 = v20;

      v22 = [a1[6] userIDForReplicaID];
      [v22 setObject:v16 forKeyedSubscript:v21];

      v23 = [a1[6] trustsTimestampsFromReplicaID];
      [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v21];

      v24 = [a1[6] checkmarkReplicaIDForUserID];
      [v24 setObject:v21 forKeyedSubscript:v16];

      v25 = [a1[6] note];
      v26 = [v32 todo];
      v27 = [v26 uuid];
      v28 = [v27 UUIDString];
      v29 = [v25 timestampForChecklistItemWithIdentifier:v28];

      v30 = [[ICTTTextEdit alloc] initWithTimestamp:v29 replicaID:v21 range:a3, v31];
      [a1[5] addObject:v30];
    }
  }
}

- (id)editsByAddingTableEditsToEdit:(id)edit inAttributedString:(id)string
{
  editCopy = edit;
  v7 = MEMORY[0x277CBEB18];
  stringCopy = string;
  array = [v7 array];
  range = [editCopy range];
  v12 = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__ICTTTextEditGrouper_editsByAddingTableEditsToEdit_inAttributedString___block_invoke;
  v17[3] = &unk_2781983B0;
  v18 = editCopy;
  selfCopy = self;
  v20 = array;
  v13 = array;
  v14 = editCopy;
  [stringCopy enumerateAttribute:@"NSAttachment" inRange:range options:v12 usingBlock:{0, v17}];

  v15 = [v13 copy];

  return v15;
}

void __72__ICTTTextEditGrouper_editsByAddingTableEditsToEdit_inAttributedString___block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__40;
  v41 = __Block_byref_object_dispose__40;
  v8 = [ICTTTextEdit alloc];
  v9 = [a1[4] timestamp];
  v10 = [a1[4] replicaID];
  v42 = [(ICTTTextEdit *)v8 initWithTimestamp:v9 replicaID:v10 range:a3, a4];

  v11 = a1[5];
  v12 = [v38[5] replicaID];
  v13 = [v11 userIDForReplicaID:v12];

  if (objc_opt_respondsToSelector())
  {
    v14 = [a1[5] note];
    v15 = [v14 managedObjectContext];
    v16 = [v7 attachmentInContext:v15];
  }

  else
  {
    v16 = 0;
  }

  objc_opt_class();
  v17 = [v16 attachmentModel];
  v18 = ICDynamicCast();
  v19 = [v18 table];

  v20 = [MEMORY[0x277CBEB38] dictionary];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __72__ICTTTextEditGrouper_editsByAddingTableEditsToEdit_inAttributedString___block_invoke_23;
  v29[3] = &unk_278198348;
  v21 = v19;
  v22 = a1[5];
  v30 = v21;
  v31 = v22;
  v23 = v13;
  v32 = v23;
  v34 = &v37;
  v35 = a3;
  v36 = a4;
  v24 = v20;
  v33 = v24;
  [v21 enumerateColumnsWithBlock:v29];
  v25 = [v24 allValues];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __72__ICTTTextEditGrouper_editsByAddingTableEditsToEdit_inAttributedString___block_invoke_4;
  v28[3] = &__block_descriptor_48_e36___ICTTTextEdit_16__0__ICTTTextEdit_8l;
  v28[4] = a3;
  v28[5] = a4;
  v26 = [v25 ic_map:v28];

  v27 = [v26 sortedArrayUsingComparator:&__block_literal_global_50];

  [a1[6] addObject:v38[5]];
  [a1[6] addObjectsFromArray:v27];

  _Block_object_dispose(&v37, 8);
}

void __72__ICTTTextEditGrouper_editsByAddingTableEditsToEdit_inAttributedString___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__ICTTTextEditGrouper_editsByAddingTableEditsToEdit_inAttributedString___block_invoke_2;
  v9[3] = &unk_278198320;
  v10 = v4;
  v11 = v3;
  v5 = *(a1 + 48);
  v12 = *(a1 + 40);
  v13 = v5;
  v15 = *(a1 + 72);
  v8 = *(a1 + 56);
  v6 = v8;
  v14 = v8;
  v7 = v3;
  [v10 enumerateRowsWithBlock:v9];
}

void __72__ICTTTextEditGrouper_editsByAddingTableEditsToEdit_inAttributedString___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) mergeableStringForColumnID:*(a1 + 40) rowID:a2];
  v4 = [v3 attributedString];
  v5 = [v4 ic_range];
  v7 = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__ICTTTextEditGrouper_editsByAddingTableEditsToEdit_inAttributedString___block_invoke_3;
  v12[3] = &unk_2781982F8;
  v8 = *(a1 + 56);
  v12[4] = *(a1 + 48);
  v13 = v3;
  v14 = v8;
  v11 = *(a1 + 64);
  v16 = *(a1 + 80);
  v9 = v11;
  v15 = v11;
  v10 = v3;
  [v10 enumerateEditsInRange:v5 usingBlock:{v7, v12}];
}

void __72__ICTTTextEditGrouper_editsByAddingTableEditsToEdit_inAttributedString___block_invoke_3(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) attributedString];
  v5 = [v3 filteredEditForEdit:v27 inAttributedString:v4];

  if (v5)
  {
    if (([*(a1 + 32) joinsWhitespaceAndNewlineGaps] & 1) != 0 || (objc_msgSend(*(a1 + 40), "attributedString"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "string"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "range"), objc_msgSend(v7, "substringWithRange:", v8, v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "ic_trimmedString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v10, v7, v6, v12))
    {
      v13 = *(a1 + 32);
      v14 = [v5 replicaID];
      v15 = [v13 userIDForReplicaID:v14];

      if ([v15 isEqual:*(a1 + 48)])
      {
        v16 = [ICTTTextEdit alloc];
        v17 = [v27 timestamp];
        v18 = [v27 replicaID];
        v19 = [(ICTTTextEdit *)v16 initWithTimestamp:v17 replicaID:v18 range:*(a1 + 72), *(a1 + 80)];
        v20 = *(*(a1 + 64) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;
      }

      else
      {
        v17 = [*(a1 + 56) objectForKeyedSubscript:v15];
        v22 = [v17 timestamp];
        if (!v22 || (v23 = v22, [v5 timestamp], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "timestamp"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "ic_isLaterThanDate:", v25), v25, v24, v23, v26))
        {
          [*(a1 + 56) setObject:v5 forKeyedSubscript:v15];
        }
      }
    }
  }
}

ICTTTextEdit *__72__ICTTTextEditGrouper_editsByAddingTableEditsToEdit_inAttributedString___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ICTTTextEdit alloc];
  v5 = [v3 timestamp];
  v6 = [v3 replicaID];

  v7 = [(ICTTTextEdit *)v4 initWithTimestamp:v5 replicaID:v6 range:*(a1 + 32), *(a1 + 40)];

  return v7;
}

uint64_t __72__ICTTTextEditGrouper_editsByAddingTableEditsToEdit_inAttributedString___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 timestamp];
  if (v6 && (v7 = v6, [v5 timestamp], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [v4 timestamp];
    v10 = [v5 timestamp];
    v11 = [v9 compare:v10];
  }

  else
  {
    v12 = [v4 timestamp];

    if (v12)
    {
      v11 = 1;
    }

    else
    {
      v13 = [v5 timestamp];

      if (v13)
      {
        v11 = -1;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

- (id)editsByAddingAllowedAttachmentEditsToEdit:(id)edit inAttributedString:(id)string
{
  editCopy = edit;
  v7 = MEMORY[0x277CBEB18];
  stringCopy = string;
  array = [v7 array];
  v10 = *MEMORY[0x277D74060];
  range = [editCopy range];
  v13 = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__ICTTTextEditGrouper_editsByAddingAllowedAttachmentEditsToEdit_inAttributedString___block_invoke;
  v18[3] = &unk_2781983D8;
  v18[4] = self;
  v19 = editCopy;
  v20 = array;
  v14 = array;
  v15 = editCopy;
  [stringCopy enumerateAttribute:v10 inRange:range options:v13 usingBlock:{0, v18}];

  v16 = [v14 copy];

  return v16;
}

void __84__ICTTTextEditGrouper_editsByAddingAllowedAttachmentEditsToEdit_inAttributedString___block_invoke(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = ICProtocolCast();
  v7 = [v17 attachmentIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [a1[4] filter];
    v10 = [v9 allowedAttachmentIDs];
    v11 = [v17 attachmentIdentifier];
    v12 = [v10 containsObject:v11];

    if (v12)
    {
      v13 = [ICTTTextEdit alloc];
      v14 = [a1[5] timestamp];
      v15 = [a1[5] replicaID];
      v16 = [(ICTTTextEdit *)v13 initWithTimestamp:v14 replicaID:v15 range:a3, a4];

      [a1[6] addObject:v16];
    }
  }
}

@end