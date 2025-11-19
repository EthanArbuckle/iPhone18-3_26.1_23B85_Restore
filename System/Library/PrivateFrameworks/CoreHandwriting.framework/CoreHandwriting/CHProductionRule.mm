@interface CHProductionRule
- (CHProductionRule)initWithLeftNode:(id)a3 rightNode1:(id)a4 rightNode2:(id)a5 probability:(double)a6;
- (CHProductionRule)initWithLeftNode:(id)a3 rightNode:(id)a4 probability:(double)a5;
- (id)description;
- (id)key;
@end

@implementation CHProductionRule

- (CHProductionRule)initWithLeftNode:(id)a3 rightNode:(id)a4 probability:(double)a5
{
  v9 = a3;
  v10 = a4;
  v16 = objc_msgSend_init(self, v11, v12, v13, v14, v15);
  v17 = v16;
  if (v16)
  {
    objc_storeStrong((v16 + 8), a3);
    objc_storeStrong(&v17->_rightNode1, a4);
    v17->_probability = a5;
  }

  return v17;
}

- (CHProductionRule)initWithLeftNode:(id)a3 rightNode1:(id)a4 rightNode2:(id)a5 probability:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19 = objc_msgSend_init(self, v14, v15, v16, v17, v18);
  v20 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 8), a3);
    objc_storeStrong(&v20->_rightNode1, a4);
    objc_storeStrong(&v20->_rightNode2, a5);
    v20->_probability = a6;
  }

  return v20;
}

- (id)description
{
  v7 = objc_msgSend_rightNode2(self, a2, v2, v3, v4, v5);

  v8 = MEMORY[0x1E696AEC0];
  v14 = objc_msgSend_leftNode(self, v9, v10, v11, v12, v13);
  v25 = objc_msgSend_rightNode1(self, v15, v16, v17, v18, v19);
  if (v7)
  {
    v26 = objc_msgSend_rightNode2(self, v20, v21, v22, v23, v24);
    objc_msgSend_probability(self, v27, v28, v29, v30, v31);
    v37 = objc_msgSend_stringWithFormat_(v8, v32, @"%@ -> %@ %@ %0.3f", v33, v34, v35, v14, v25, v26, v36);
  }

  else
  {
    objc_msgSend_probability(self, v20, v21, v22, v23, v24);
    v37 = objc_msgSend_stringWithFormat_(v8, v38, @"%@ -> %@ %0.3f", v39, v40, v41, v14, v25, v42);
  }

  return v37;
}

- (id)key
{
  v7 = objc_msgSend_rightNode2(self, a2, v2, v3, v4, v5);

  v8 = MEMORY[0x1E696AEC0];
  v14 = objc_msgSend_leftNode(self, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_rightNode1(self, v15, v16, v17, v18, v19);
  v26 = v20;
  if (v7)
  {
    v27 = objc_msgSend_rightNode2(self, v21, v22, v23, v24, v25);
    v32 = objc_msgSend_stringWithFormat_(v8, v28, @"%@ -> %@ %@", v29, v30, v31, v14, v26, v27);
  }

  else
  {
    v32 = objc_msgSend_stringWithFormat_(v8, v21, @"%@ -> %@", v23, v24, v25, v14, v20);
  }

  return v32;
}

@end