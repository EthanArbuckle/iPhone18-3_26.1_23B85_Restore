@interface CHParseTableCell
+ (_NSRange)rangeFromString:(id)a3;
- (CHParseTableCell)initWithRange:(_NSRange)a3;
- (_NSRange)_terminalsRangeRecursive:(id)a3;
- (_NSRange)inputRange;
- (_NSRange)originalRange;
- (_NSRange)terminalsRange;
- (id)description;
- (id)initNonTerminal:(id)a3 range:(_NSRange)a4;
@end

@implementation CHParseTableCell

- (CHParseTableCell)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  result = objc_msgSend_init(self, a2, a3.location, a3.length, v3, v4);
  if (result)
  {
    result->_inputRange.location = location;
    result->_inputRange.length = length;
  }

  return result;
}

- (id)initNonTerminal:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v14 = objc_msgSend_init(self, v9, v10, v11, v12, v13);
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 8), a3);
    v15[12] = location;
    v15[13] = length;
  }

  return v15;
}

- (id)description
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_description(self->_nonTerminal, a2, v2, v3, v4, v5);
  location = self->_inputRange.location;
  length = self->_inputRange.length;
  probability = self->_probability;
  v17 = objc_msgSend_description(self->_rule, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_stringWithFormat_(v7, v18, @"ParseCell: non-terminal='%@' range=[%lu, %lu]' probability=%.6f rule='%@'", v19, v20, v21, v8, location, length + location, *&probability, v17);

  return v22;
}

+ (_NSRange)rangeFromString:(id)a3
{
  v6 = objc_msgSend_componentsSeparatedByString_(a3, a2, @"-", v3, v4, v5);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, 0, v8, v9, v10);
  v17 = objc_msgSend_integerValue(v11, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_objectAtIndexedSubscript_(v6, v18, 1, v19, v20, v21);
  v28 = objc_msgSend_integerValue(v22, v23, v24, v25, v26, v27);

  v29 = v17;
  v30 = v28;
  result.length = v30;
  result.location = v29;
  return result;
}

- (_NSRange)terminalsRange
{
  v7 = objc_msgSend_nonTerminal(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend__terminalsRangeRecursive_(self, v8, v7, v9, v10, v11);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (_NSRange)_terminalsRangeRecursive:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_rightNode(v4, v5, v6, v7, v8, v9);

  objc_msgSend_leftNode(v4, v11, v12, v13, v14, v15);
  if (v10)
    v16 = {;
    v21 = objc_msgSend__terminalsRangeRecursive_(self, v17, v16, v18, v19, v20);
    v23 = v22;
    v28 = objc_msgSend_rightNode(v4, v22, v24, v25, v26, v27);
    v47.location = objc_msgSend__terminalsRangeRecursive_(self, v29, v28, v30, v31, v32);
    v47.length = v33;
    v45.location = v21;
    v45.length = v23;
    v34 = NSUnionRange(v45, v47);
    location = v34.location;
    length = v34.length;
  }

  else
    v16 = {;
    location = objc_msgSend_inputRange(v16, v37, v38, v39, v40, v41);
    length = v42;
  }

  v43 = location;
  v44 = length;
  result.length = v44;
  result.location = v43;
  return result;
}

- (_NSRange)inputRange
{
  length = self->_inputRange.length;
  location = self->_inputRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)originalRange
{
  length = self->_originalRange.length;
  location = self->_originalRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end