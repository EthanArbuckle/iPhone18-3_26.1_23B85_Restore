@interface DTBitRateFormatter
+ (id)stringForLongLong:(int64_t)a3;
- (id)stringForObjectValue:(id)a3;
@end

@implementation DTBitRateFormatter

+ (id)stringForLongLong:(int64_t)a3
{
  v10 = objc_msgSend_magnitudeFormatter(DTBytesFormatter, a2, a3, v3, v4);
  if (a3 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = -a3;
  }

  if (v11 < 0xE8D4A51000)
  {
    if (v11 < 0x3B9ACA00)
    {
      if (v11 < 0xF4240)
      {
        v35 = MEMORY[0x277CCACA8];
        if (v11 < 0x3E8)
        {
          v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v6, a3, v8, v9);
          v17 = objc_msgSend_stringFromNumber_(v10, v42, v13, v43, v44);
          objc_msgSend_stringWithFormat_(v35, v45, @"%@ %@", v46, v47, v17, @"bit/s");
        }

        else
        {
          v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, v8, v9, a3 / 1000.0);
          v17 = objc_msgSend_stringFromNumber_(v10, v36, v13, v37, v38);
          objc_msgSend_stringWithFormat_(v35, v39, @"%@ %@", v40, v41, v17, @"kbit/s");
        }
      }

      else
      {
        v28 = MEMORY[0x277CCACA8];
        v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, v8, v9, a3 / 1000000.0);
        v17 = objc_msgSend_stringFromNumber_(v10, v29, v13, v30, v31);
        objc_msgSend_stringWithFormat_(v28, v32, @"%@ %@", v33, v34, v17, @"Mbit/s");
      }
    }

    else
    {
      v21 = MEMORY[0x277CCACA8];
      v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, v8, v9, a3 / 1000000000.0);
      v17 = objc_msgSend_stringFromNumber_(v10, v22, v13, v23, v24);
      objc_msgSend_stringWithFormat_(v21, v25, @"%@ %@", v26, v27, v17, @"Gbit/s");
    }
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, v8, v9, a3 / 1.0e12);
    v17 = objc_msgSend_stringFromNumber_(v10, v14, v13, v15, v16);
    objc_msgSend_stringWithFormat_(v12, v18, @"%@ %@", v19, v20, v17, @"Tbit/s");
  }
  v48 = ;

  return v48;
}

- (id)stringForObjectValue:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_longLongValue(v3, v4, v5, v6, v7);
    v12 = objc_msgSend_stringForLongLong_(DTBitRateFormatter, v9, v8, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end