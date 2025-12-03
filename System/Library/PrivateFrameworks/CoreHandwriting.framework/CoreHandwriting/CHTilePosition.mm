@interface CHTilePosition
+ (id)tilePositionWithRow:(int64_t)row column:(int64_t)column;
- (BOOL)isEqual:(id)equal;
- (CHTilePosition)initWithCoder:(id)coder;
- (CHTilePosition)initWithRow:(int64_t)row column:(int64_t)column subtileIndex:(id)index;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHTilePosition

- (CHTilePosition)initWithRow:(int64_t)row column:(int64_t)column subtileIndex:(id)index
{
  indexCopy = index;
  v19.receiver = self;
  v19.super_class = CHTilePosition;
  v9 = [(CHTilePosition *)&v19 init];
  v15 = v9;
  if (v9)
  {
    v9->_row = row;
    v9->_column = column;
    v16 = objc_msgSend_copy(indexCopy, v10, v11, v12, v13, v14);
    subtileIndex = v15->_subtileIndex;
    v15->_subtileIndex = v16;
  }

  return v15;
}

+ (id)tilePositionWithRow:(int64_t)row column:(int64_t)column
{
  v6 = [CHTilePosition alloc];
  v9 = objc_msgSend_initWithRow_column_subtileIndex_(v6, v7, row, column, 0, v8);

  return v9;
}

- (CHTilePosition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9 = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"row", v6, v7, v8);
  v14 = objc_msgSend_decodeIntegerForKey_(coderCopy, v10, @"column", v11, v12, v13);
  if (objc_msgSend_containsValueForKey_(coderCopy, v15, @"subtileIndex", v16, v17, v18))
  {
    v21 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v22, v21, @"subtileIndex", v23, v24);
    v28 = objc_msgSend_initWithRow_column_subtileIndex_(self, v26, v9, v14, v25, v27);
  }

  else
  {
    v25 = 0;
    v28 = objc_msgSend_initWithRow_column_subtileIndex_(self, v19, v9, v14, 0, v20);
  }

  v29 = v28;

  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v4, self->_row, @"row", v5, v6);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v7, self->_column, @"column", v8, v9);
  subtileIndex = self->_subtileIndex;
  if (subtileIndex)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v10, subtileIndex, @"subtileIndex", v11, v12);
  }
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = CHTilePosition;
  v3 = [(CHTilePosition *)&v10 description];
  v8 = objc_msgSend_stringByAppendingFormat_(v3, v4, @" Row = %ld, Column = %ld, SubtileIndex = %@", v5, v6, v7, self->_row, self->_column, self->_subtileIndex);

  return v8;
}

- (unint64_t)hash
{
  row = self->_row;
  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, row, v2, v3, v4);
  v13 = v7;
  if (row < 0)
  {
    v14 = -objc_msgSend_hash(v7, v8, v9, v10, v11, v12);
  }

  else
  {
    v14 = objc_msgSend_hash(v7, v8, v9, v10, v11, v12);
  }

  column = self->_column;
  v20 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v16, column, v17, v18, v19);
  v26 = v20;
  if (column < 0)
  {
    v27 = -objc_msgSend_hash(v20, v21, v22, v23, v24, v25);

    subtileIndex = self->_subtileIndex;
    if (!subtileIndex)
    {
      return (113 * v27) ^ (29 * v14) ^ subtileIndex;
    }

    goto LABEL_6;
  }

  v27 = objc_msgSend_hash(v20, v21, v22, v23, v24, v25);

  subtileIndex = self->_subtileIndex;
  if (subtileIndex)
  {
LABEL_6:
    subtileIndex = objc_msgSend_hash(subtileIndex, v28, v29, v30, v31, v32);
  }

  return (113 * v27) ^ (29 * v14) ^ subtileIndex;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sub_1838D3488(self, equalCopy);

    return v5;
  }

  else
  {

    return 0;
  }
}

@end