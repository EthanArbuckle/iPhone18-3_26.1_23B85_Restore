@interface XRStringPair
- (BOOL)isEqual:(id)a3;
- (XRStringPair)initWithCoder:(id)a3;
- (XRStringPair)initWithFirst:(id)a3 second:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hashValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XRStringPair

- (XRStringPair)initWithFirst:(id)a3 second:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = XRStringPair;
  v9 = [(XRStringPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, a3);
    objc_storeStrong(&v10->_second, a4);
  }

  return v10;
}

- (XRStringPair)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = XRStringPair;
  v5 = [(XRStringPair *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"_first", v8);
    first = v5->_first;
    v5->_first = v9;

    v11 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"_second", v13);
    second = v5->_second;
    v5->_second = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  first = self->_first;
  v9 = a3;
  objc_msgSend_encodeObject_forKey_(v9, v5, first, @"_first", v6);
  objc_msgSend_encodeObject_forKey_(v9, v7, self->_second, @"_second", v8);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v10 = objc_msgSend_first(self, v6, v7, v8, v9);
    v15 = objc_msgSend_first(v5, v11, v12, v13, v14);
    if (objc_msgSend_isEqualToString_(v10, v16, v15, v17, v18))
    {
      v23 = objc_msgSend_second(self, v19, v20, v21, v22);
      v28 = objc_msgSend_second(v5, v24, v25, v26, v27);
      isEqualToString = objc_msgSend_isEqualToString_(v23, v29, v28, v30, v31);
    }

    else
    {
      isEqualToString = 0;
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [XRStringPair alloc];
  v9 = objc_msgSend_first(self, v5, v6, v7, v8);
  v14 = objc_msgSend_second(self, v10, v11, v12, v13);
  second = objc_msgSend_initWithFirst_second_(v4, v15, v9, v14, v16);

  return second;
}

- (unint64_t)hashValue
{
  v6 = objc_msgSend_first(self, a2, v2, v3, v4);
  v11 = objc_msgSend_hash(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_second(self, v12, v13, v14, v15);
  v21 = objc_msgSend_hash(v16, v17, v18, v19, v20);

  return v21 ^ v11;
}

@end