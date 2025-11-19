@interface CHNonTerminal
- (CHNonTerminal)initWithName:(id)a3 leftNode:(id)a4 rightNode:(id)a5;
- (id)description;
- (int64_t)getTerminalsCount;
@end

@implementation CHNonTerminal

- (CHNonTerminal)initWithName:(id)a3 leftNode:(id)a4 rightNode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  location = objc_msgSend_inputRange(v9, v11, v12, v13, v14, v15);
  if (v10)
  {
    v22 = objc_msgSend_inputRange(v9, length, v18, v19, v20, v21);
    v24 = v23;
    v36.location = objc_msgSend_inputRange(v10, v23, v25, v26, v27, v28);
    v36.length = v29;
    v35.location = v22;
    v35.length = v24;
    v30 = NSUnionRange(v35, v36);
    length = v30.length;
    location = v30.location;
  }

  v34.receiver = self;
  v34.super_class = CHNonTerminal;
  v31 = [(CHParseTreeNode *)&v34 initWithName:v8 inputRange:location, length];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_leftNode, a4);
    objc_storeStrong(&v32->_rightNode, a5);
  }

  return v32;
}

- (id)description
{
  v7 = objc_msgSend_rightNode(self, a2, v2, v3, v4, v5);

  v8 = MEMORY[0x1E696AEC0];
  v14 = objc_msgSend_name(self, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_leftNode(self, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_name(v20, v21, v22, v23, v24, v25);
  v32 = v26;
  if (v7)
  {
    v33 = objc_msgSend_rightNode(self, v27, v28, v29, v30, v31);
    v39 = objc_msgSend_name(v33, v34, v35, v36, v37, v38);
    v44 = objc_msgSend_stringWithFormat_(v8, v40, @"%@ -> %@ %@", v41, v42, v43, v14, v32, v39);
  }

  else
  {
    v44 = objc_msgSend_stringWithFormat_(v8, v27, @"%@ -> [%@]", v29, v30, v31, v14, v26);
  }

  return v44;
}

- (int64_t)getTerminalsCount
{
  leftNode = self->_leftNode;
  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(leftNode, v5, v4, v6, v7, v8))
  {
    TerminalsCount = 1;
    rightNode = self->_rightNode;
    if (!rightNode)
    {
      return TerminalsCount;
    }
  }

  else
  {
    TerminalsCount = objc_msgSend_getTerminalsCount(self->_leftNode, v9, v10, v11, v12, v13);
    rightNode = self->_rightNode;
    if (!rightNode)
    {
      return TerminalsCount;
    }
  }

  v17 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(rightNode, v18, v17, v19, v20, v21))
  {
    return TerminalsCount + 1;
  }

  else
  {
    return objc_msgSend_getTerminalsCount(self->_rightNode, v22, v23, v24, v25, v26) + TerminalsCount;
  }
}

@end