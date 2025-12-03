@interface IMDSortDescriptorToSQLConverter
- (IMDSortDescriptorToSQLConverter)initWithSortDescriptor:(id)descriptor keyPathsToColumns:(id)columns;
- (id)_columnWithSortDescriptor:(id)descriptor;
- (id)_orderByClauseWithSortDescriptor:(id)descriptor;
@end

@implementation IMDSortDescriptorToSQLConverter

- (id)_columnWithSortDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v7 = objc_msgSend_key(descriptorCopy, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_keyPathsToColumns(self, v8, v9);
    v13 = objc_msgSend_key(descriptorCopy, v11, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(v10, v14, v13);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_orderByClauseWithSortDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v7 = objc_msgSend_ascending(descriptorCopy, v5, v6);
  v8 = @"DESC";
  if (v7)
  {
    v8 = @"ASC";
  }

  v9 = v8;
  v11 = objc_msgSend__columnWithSortDescriptor_(self, v10, descriptorCopy);

  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"%@ %@", v11, v9);

  return v13;
}

- (IMDSortDescriptorToSQLConverter)initWithSortDescriptor:(id)descriptor keyPathsToColumns:(id)columns
{
  descriptorCopy = descriptor;
  columnsCopy = columns;
  v15.receiver = self;
  v15.super_class = IMDSortDescriptorToSQLConverter;
  v8 = [(IMDSortDescriptorToSQLConverter *)&v15 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_keyPathsToColumns, columns), objc_msgSend__orderByClauseWithSortDescriptor_(v9, v10, descriptorCopy), v11 = objc_claimAutoreleasedReturnValue(), expression = v9->_expression, v9->_expression = v11, expression, !v9->_expression))
  {
    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  return v13;
}

@end