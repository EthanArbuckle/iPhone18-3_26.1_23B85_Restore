@interface ICTableTextFindingResult
- (ICAttachment)attachment;
- (ICTableTextFindingResult)init;
- (_NSRange)rangeInFindableString;
- (id)framesForHighlightInTextView:(id)view;
- (id)tableAttachmentViewControllerForTextView:(id)view;
- (int64_t)compare:(id)compare;
- (void)selectInTextView:(id)view;
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v17.receiver = self;
  v17.super_class = ICTableTextFindingResult;
  inlineTextFindingResult = [(ICTextFindingResult *)&v17 compare:compareCopy];
  if (!inlineTextFindingResult)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = compareCopy;
      v7 = [(ICTableTextFindingResult *)self row];
      if (v7 < [v6 row])
      {
LABEL_4:
        inlineTextFindingResult = -1;
LABEL_8:

        goto LABEL_9;
      }

      v8 = [(ICTableTextFindingResult *)self row];
      if (v8 <= [v6 row])
      {
        column = [(ICTableTextFindingResult *)self column];
        if (column < [v6 column])
        {
          goto LABEL_4;
        }

        column2 = [(ICTableTextFindingResult *)self column];
        if (column2 <= [v6 column])
        {
          rangeInFindableString = [(ICTableTextFindingResult *)self rangeInFindableString];
          if (rangeInFindableString < [v6 rangeInFindableString])
          {
            goto LABEL_4;
          }

          rangeInFindableString2 = [(ICTableTextFindingResult *)self rangeInFindableString];
          if (rangeInFindableString2 == [v6 rangeInFindableString])
          {
            inlineTextFindingResult = [(ICTableTextFindingResult *)self inlineTextFindingResult];
            if (inlineTextFindingResult)
            {
              inlineTextFindingResult2 = [v6 inlineTextFindingResult];

              if (inlineTextFindingResult2)
              {
                inlineTextFindingResult3 = [(ICTableTextFindingResult *)self inlineTextFindingResult];
                inlineTextFindingResult4 = [v6 inlineTextFindingResult];
                inlineTextFindingResult = [inlineTextFindingResult3 compare:inlineTextFindingResult4];
              }

              else
              {
                inlineTextFindingResult = 0;
              }
            }

            goto LABEL_8;
          }
        }
      }

      inlineTextFindingResult = 1;
      goto LABEL_8;
    }

    inlineTextFindingResult = 0;
  }

LABEL_9:

  return inlineTextFindingResult;
}

- (id)tableAttachmentViewControllerForTextView:(id)view
{
  viewCopy = view;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    textLayoutManager = [viewCopy textLayoutManager];

    v6 = ICDynamicCast();

    objc_opt_class();
    v7 = MEMORY[0x277D36950];
    attachment = [(ICTableTextFindingResult *)self attachment];
    v9 = [v7 textAttachmentWithAttachment:attachment];
    v10 = ICDynamicCast();

    v11 = [v6 tableViewControllerForAttachment:v10 createIfNeeded:0];
  }

  else
  {
    objc_opt_class();
    layoutManager = [viewCopy layoutManager];

    v6 = ICDynamicCast();

    objc_opt_class();
    v13 = MEMORY[0x277D36950];
    attachment2 = [(ICTableTextFindingResult *)self attachment];
    v15 = [v13 textAttachmentWithAttachment:attachment2];
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

- (id)framesForHighlightInTextView:(id)view
{
  v62 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v5 = [(ICTableTextFindingResult *)self tableAttachmentViewControllerForTextView:viewCopy];
  if (v5)
  {
    rangeInFindableString = [(ICTableTextFindingResult *)self rangeInFindableString];
    v8 = v7;
    findableString = [(ICTableTextFindingResult *)self findableString];
    v10 = [v5 viewForRange:rangeInFindableString inFindableString:{v8, findableString}];
    inlineTextFindingResult = [(ICTableTextFindingResult *)self inlineTextFindingResult];

    if (inlineTextFindingResult)
    {
      inlineTextFindingResult2 = [(ICTableTextFindingResult *)self inlineTextFindingResult];
      v13 = [inlineTextFindingResult2 framesForHighlightInTextView:v10];
    }

    else if (rangeInFindableString + v8 <= [findableString length])
    {
      v13 = [v5 rectsForRange:rangeInFindableString inFindableString:{v8, findableString}];
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
          attachment = [(ICTableTextFindingResult *)self attachment];
          rangeInNote = [attachment rangeInNote];
          [viewCopy ic_rectForRange:{rangeInNote, v23}];
          v25 = v24;
          v27 = v26;

          [v20 ic_rectValue];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          view = [v5 view];
          [v10 convertRect:view toCoordinateSpace:{v29, v31, v33, v35}];
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
          [viewCopy textContainerInset];
          v50 = v49;
          [viewCopy textContainerInset];
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

- (void)selectInTextView:(id)view
{
  viewCopy = view;
  v5 = [(ICTableTextFindingResult *)self tableAttachmentViewControllerForTextView:viewCopy];
  table = [v5 table];
  v7 = [table identifierForColumnAtIndex:{-[ICTableTextFindingResult column](self, "column")}];
  v8 = [table identifierForRowAtIndex:{-[ICTableTextFindingResult row](self, "row")}];
  if (v7)
  {
    textViewManager = [v5 textViewManager];
    v10 = [textViewManager textViewForColumn:v7];

    columnTextStorage = [v10 columnTextStorage];
    v12 = [columnTextStorage characterRangeForRowID:v8];

    rangeInFindableString = [(ICTableTextFindingResult *)self rangeInFindableString];
    [(ICTableTextFindingResult *)self rangeInFindableString];
    [v10 setSelectedRange:{rangeInFindableString + v12, v14}];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ICTableTextFindingResult;
    [(ICTextFindingResult *)&v15 selectInTextView:viewCopy];
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