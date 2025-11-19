@interface ICTableTextFindingResult
- (ICAttachment)attachment;
- (ICTableTextFindingResult)init;
- (_NSRange)rangeInFindableString;
- (id)framesForHighlightInTextView:(id)a3;
- (id)tableAttachmentViewControllerForTextView:(id)a3;
- (int64_t)compare:(id)a3;
- (void)selectInTextView:(id)a3;
@end

@implementation ICTableTextFindingResult

- (ICTableTextFindingResult)init
{
  v3.receiver = self;
  v3.super_class = ICTableTextFindingResult;
  result = [(ICTableTextFindingResult *)&v3 init];
  if (result)
  {
    result->_row = 0x7FFFFFFFFFFFFFFFLL;
    result->_column = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ICTableTextFindingResult;
  v5 = [(ICTextFindingResult *)&v17 compare:v4];
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [(ICTableTextFindingResult *)self row];
      if (v7 < [v6 row])
      {
LABEL_4:
        v5 = -1;
LABEL_8:

        goto LABEL_9;
      }

      v8 = [(ICTableTextFindingResult *)self row];
      if (v8 <= [v6 row])
      {
        v10 = [(ICTableTextFindingResult *)self column];
        if (v10 < [v6 column])
        {
          goto LABEL_4;
        }

        v11 = [(ICTableTextFindingResult *)self column];
        if (v11 <= [v6 column])
        {
          v12 = [(ICTableTextFindingResult *)self rangeInFindableString];
          if (v12 < [v6 rangeInFindableString])
          {
            goto LABEL_4;
          }

          v13 = [(ICTableTextFindingResult *)self rangeInFindableString];
          if (v13 == [v6 rangeInFindableString])
          {
            v5 = [(ICTableTextFindingResult *)self inlineTextFindingResult];
            if (v5)
            {
              v14 = [v6 inlineTextFindingResult];

              if (v14)
              {
                v15 = [(ICTableTextFindingResult *)self inlineTextFindingResult];
                v16 = [v6 inlineTextFindingResult];
                v5 = [v15 compare:v16];
              }

              else
              {
                v5 = 0;
              }
            }

            goto LABEL_8;
          }
        }
      }

      v5 = 1;
      goto LABEL_8;
    }

    v5 = 0;
  }

LABEL_9:

  return v5;
}

- (id)tableAttachmentViewControllerForTextView:(id)a3
{
  v4 = a3;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    v5 = [v4 textLayoutManager];

    v6 = ICDynamicCast();

    objc_opt_class();
    v7 = MEMORY[0x277D36950];
    v8 = [(ICTableTextFindingResult *)self attachment];
    v9 = [v7 textAttachmentWithAttachment:v8];
    v10 = ICDynamicCast();

    v11 = [v6 tableViewControllerForAttachment:v10 createIfNeeded:0];
  }

  else
  {
    objc_opt_class();
    v12 = [v4 layoutManager];

    v6 = ICDynamicCast();

    objc_opt_class();
    v13 = MEMORY[0x277D36950];
    v14 = [(ICTableTextFindingResult *)self attachment];
    v15 = [v13 textAttachmentWithAttachment:v14];
    v10 = ICDynamicCast();

    v11 = 0;
    if (v6 && v10)
    {
      v16 = [v6 viewControllerForTextAttachment:v10];
      objc_opt_class();
      v11 = ICDynamicCast();
    }
  }

  if (!v11)
  {
    v17 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ICTableTextFindingResult tableAttachmentViewControllerForTextView:v17];
    }
  }

  return v11;
}

- (id)framesForHighlightInTextView:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICTableTextFindingResult *)self tableAttachmentViewControllerForTextView:v4];
  if (v5)
  {
    v6 = [(ICTableTextFindingResult *)self rangeInFindableString];
    v8 = v7;
    v9 = [(ICTableTextFindingResult *)self findableString];
    v10 = [v5 viewForRange:v6 inFindableString:{v8, v9}];
    v11 = [(ICTableTextFindingResult *)self inlineTextFindingResult];

    if (v11)
    {
      v12 = [(ICTableTextFindingResult *)self inlineTextFindingResult];
      v13 = [v12 framesForHighlightInTextView:v10];
    }

    else if (v6 + v8 <= [v9 length])
    {
      v13 = [v5 rectsForRange:v6 inFindableString:{v8, v9}];
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v13;
    v16 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v58;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v58 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v57 + 1) + 8 * i);
          v21 = [(ICTableTextFindingResult *)self attachment];
          v22 = [v21 rangeInNote];
          [v4 ic_rectForRange:{v22, v23}];
          v25 = v24;
          v27 = v26;

          [v20 ic_rectValue];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v36 = [v5 view];
          [v10 convertRect:v36 toCoordinateSpace:{v29, v31, v33, v35}];
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;

          v64.origin.x = v38;
          v64.origin.y = v40;
          v64.size.width = v42;
          v64.size.height = v44;
          v65 = CGRectOffset(v64, v25, v27);
          x = v65.origin.x;
          y = v65.origin.y;
          width = v65.size.width;
          height = v65.size.height;
          [v4 textContainerInset];
          v50 = v49;
          [v4 textContainerInset];
          v52 = v51;
          v66.origin.x = x;
          v66.origin.y = y;
          v66.size.width = width;
          v66.size.height = height;
          v67 = CGRectOffset(v66, v50, v52);
          v53 = [MEMORY[0x277CCAE60] ic_valueWithRect:{v67.origin.x, v67.origin.y, v67.size.width, v67.size.height}];
          [v15 addObject:v53];
        }

        v17 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v17);
    }

    v14 = [v15 copy];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

- (void)selectInTextView:(id)a3
{
  v4 = a3;
  v5 = [(ICTableTextFindingResult *)self tableAttachmentViewControllerForTextView:v4];
  v6 = [v5 table];
  v7 = [v6 identifierForColumnAtIndex:{-[ICTableTextFindingResult column](self, "column")}];
  v8 = [v6 identifierForRowAtIndex:{-[ICTableTextFindingResult row](self, "row")}];
  if (v7)
  {
    v9 = [v5 textViewManager];
    v10 = [v9 textViewForColumn:v7];

    v11 = [v10 columnTextStorage];
    v12 = [v11 characterRangeForRowID:v8];

    v13 = [(ICTableTextFindingResult *)self rangeInFindableString];
    [(ICTableTextFindingResult *)self rangeInFindableString];
    [v10 setSelectedRange:{v13 + v12, v14}];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ICTableTextFindingResult;
    [(ICTextFindingResult *)&v15 selectInTextView:v4];
  }
}

- (ICAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

- (_NSRange)rangeInFindableString
{
  p_rangeInFindableString = &self->_rangeInFindableString;
  location = self->_rangeInFindableString.location;
  length = p_rangeInFindableString->length;
  result.length = length;
  result.location = location;
  return result;
}

@end