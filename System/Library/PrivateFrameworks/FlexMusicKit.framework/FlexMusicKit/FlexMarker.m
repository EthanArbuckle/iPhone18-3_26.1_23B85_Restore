@interface FlexMarker
- (FlexMarker)init;
- (FlexMarker)initWithDictionary:(id)a3;
- (FlexMarker)initWithName:(id)a3 markerID:(int64_t)a4 position:(int64_t)a5;
- (id)description;
- (id)encodeAsDictionary;
- (unint64_t)_decodeTypeAndBarsFromName;
@end

@implementation FlexMarker

- (FlexMarker)initWithName:(id)a3 markerID:(int64_t)a4 position:(int64_t)a5
{
  v9 = a3;
  v18.receiver = self;
  v18.super_class = FlexMarker;
  v10 = [(FlexMarker *)&v18 init];
  v11 = v10;
  if (v10 && (objc_storeStrong(&v10->_name, a3), v11->_markerID = a4, v11->_position = a5, !objc_msgSend__decodeTypeAndBarsFromName(v11, v12, v13, v14, v15)))
  {
    v16 = 0;
  }

  else
  {
    v16 = v11;
  }

  return v16;
}

- (FlexMarker)initWithDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = FlexMarker;
  v8 = [(FlexMarker *)&v32 init];
  if (v8)
  {
    v9 = objc_msgSend_objectForKey_(v4, v5, @"name", v6, v7);
    name = v8->_name;
    v8->_name = v9;

    v14 = objc_msgSend_objectForKey_(v4, v11, @"id", v12, v13);
    v8->_markerID = objc_msgSend_integerValue(v14, v15, v16, v17, v18);

    v22 = objc_msgSend_objectForKey_(v4, v19, @"position", v20, v21);
    v8->_position = objc_msgSend_longLongValue(v22, v23, v24, v25, v26);

    objc_msgSend__decodeTypeAndBarsFromName(v8, v27, v28, v29, v30);
  }

  return v8;
}

- (id)encodeAsDictionary
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v11 = objc_msgSend_name(self, v7, v8, v9, v10);
  objc_msgSend_setValue_forKey_(v6, v12, v11, @"name", v13);

  v14 = MEMORY[0x277CCABB0];
  v19 = objc_msgSend_markerID(self, v15, v16, v17, v18);
  v23 = objc_msgSend_numberWithInteger_(v14, v20, v19, v21, v22);
  objc_msgSend_setValue_forKey_(v6, v24, v23, @"id", v25);

  v26 = MEMORY[0x277CCABB0];
  v31 = objc_msgSend_position(self, v27, v28, v29, v30);
  v35 = objc_msgSend_numberWithLongLong_(v26, v32, v31, v33, v34);
  objc_msgSend_setValue_forKey_(v6, v36, v35, @"position", v37);

  return v6;
}

- (FlexMarker)init
{
  v3.receiver = self;
  v3.super_class = FlexMarker;
  result = [(FlexMarker *)&v3 init];
  if (result)
  {
    result->_type = 0;
    result->_number = 0;
  }

  return result;
}

- (unint64_t)_decodeTypeAndBarsFromName
{
  v6 = objc_msgSend_lowercaseString(self->_name, a2, v2, v3, v4);
  hasPrefix = objc_msgSend_hasPrefix_(v6, v7, @"bars", v8, v9);

  if (hasPrefix)
  {
    v15 = 2;
LABEL_5:
    v21 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v11, self->_name, v13, v14);
    v26 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v22, v23, v24, v25);
    objc_msgSend_scanUpToCharactersFromSet_intoString_(v21, v27, v26, 0, v28);

    v34 = 0;
    objc_msgSend_scanInteger_(v21, v29, &v34, v30, v31);
    v32 = v34;
    self->_type = v15;
    self->_number = v32;

    return self->_type;
  }

  v16 = objc_msgSend_lowercaseString(self->_name, v11, v12, v13, v14);
  v20 = objc_msgSend_hasPrefix_(v16, v17, @"bar", v18, v19);

  if (v20)
  {
    v15 = 1;
    goto LABEL_5;
  }

  result = 0;
  self->_type = 0;
  return result;
}

- (id)description
{
  if (objc_msgSend_type(self, a2, v2, v3, v4) == 2)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_msgSend_name(self, v6, v7, v8, v9);
    v16 = objc_msgSend_markerID(self, v12, v13, v14, v15);
    v21 = objc_msgSend_position(self, v17, v18, v19, v20);
    v55 = objc_msgSend_number(self, v22, v23, v24, v25);
    objc_msgSend_stringWithFormat_(v10, v26, @"NumberOfBars - name: %@ id %ld position %ld # bars %ld", v27, v28, v11, v16, v21, v55);
  }

  else
  {
    v29 = objc_msgSend_type(self, v6, v7, v8, v9);
    v30 = MEMORY[0x277CCACA8];
    v11 = objc_msgSend_name(self, v31, v32, v33, v34);
    v39 = objc_msgSend_markerID(self, v35, v36, v37, v38);
    v44 = objc_msgSend_position(self, v40, v41, v42, v43);
    v49 = objc_msgSend_number(self, v45, v46, v47, v48);
    if (v29 == 1)
    {
      objc_msgSend_stringWithFormat_(v30, v50, @"BarStartPosition - name: %@ id %ld position %ld bar #%ld", v51, v52, v11, v39, v44, v49);
    }

    else
    {
      objc_msgSend_stringWithFormat_(v30, v50, @"Unknown - name: %@ id %ld position %ld number %ld", v51, v52, v11, v39, v44, v49);
    }
  }
  v53 = ;

  return v53;
}

@end