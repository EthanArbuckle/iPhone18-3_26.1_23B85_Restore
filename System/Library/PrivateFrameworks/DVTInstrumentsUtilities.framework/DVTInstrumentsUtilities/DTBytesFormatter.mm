@interface DTBytesFormatter
+ (id)stringForLongLong:(int64_t)long;
+ (id)stringForObjectValue:(id)value;
+ (id)stringFromNumber:(id)number;
+ (void)initialize;
- (id)stringFromNumber:(id)number;
@end

@implementation DTBytesFormatter

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v3 = qword_27EE869A8;
    qword_27EE869A8 = v2;

    v8 = objc_msgSend_positiveInfinitySymbol(qword_27EE869A8, v4, v5, v6, v7);
    if (objc_msgSend_length(v8, v9, v10, v11, v12) == 2)
    {
      v16 = objc_msgSend_substringFromIndex_(v8, v13, 1, v14, v15);
      objc_msgSend_setPositiveInfinitySymbol_(qword_27EE869A8, v17, v16, v18, v19);
    }

    v20 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v21 = qword_27EE869B0;
    qword_27EE869B0 = v20;

    v74 = objc_msgSend_positiveInfinitySymbol(qword_27EE869B0, v22, v23, v24, v25);

    if (objc_msgSend_length(v74, v26, v27, v28, v29) == 2)
    {
      v34 = objc_msgSend_substringFromIndex_(v74, v30, 1, v32, v33);
      objc_msgSend_setPositiveInfinitySymbol_(qword_27EE869B0, v35, v34, v36, v37);
    }

    v38 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v30, v31, v32, v33);
    v40 = objc_msgSend_localizedStringForKey_value_table_(v38, v39, @"TiB", &stru_285A3F068, 0);
    v41 = qword_27EE86998;
    qword_27EE86998 = v40;

    v46 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v42, v43, v44, v45);
    v48 = objc_msgSend_localizedStringForKey_value_table_(v46, v47, @"GiB", &stru_285A3F068, 0);
    v49 = qword_27EE86980;
    qword_27EE86980 = v48;

    v54 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v50, v51, v52, v53);
    v56 = objc_msgSend_localizedStringForKey_value_table_(v54, v55, @"MiB", &stru_285A3F068, 0);
    v57 = qword_27EE86988;
    qword_27EE86988 = v56;

    v62 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v58, v59, v60, v61);
    v64 = objc_msgSend_localizedStringForKey_value_table_(v62, v63, @"KiB", &stru_285A3F068, 0);
    v65 = qword_27EE86990;
    qword_27EE86990 = v64;

    v70 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v66, v67, v68, v69);
    v72 = objc_msgSend_localizedStringForKey_value_table_(v70, v71, @"Bytes", &stru_285A3F068, 0);
    v73 = qword_27EE869A0;
    qword_27EE869A0 = v72;
  }
}

+ (id)stringForLongLong:(int64_t)long
{
  if (long >= 0)
  {
    longCopy = long;
  }

  else
  {
    longCopy = -long;
  }

  if (longCopy >> 40)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = qword_27EE869A8;
    v8 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, long, v3, v4, vcvtd_n_f64_s64(long, 0x28uLL));
    v12 = objc_msgSend_stringFromNumber_(v7, v9, v8, v10, v11);
    objc_msgSend_stringWithFormat_(v6, v13, @"%@ %@", v14, v15, v12, qword_27EE86998);
    v49 = LABEL_16:;

    goto LABEL_17;
  }

  if (longCopy >> 30)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = qword_27EE869A8;
    v8 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, long, v3, v4, vcvtd_n_f64_s64(long, 0x1EuLL));
    v12 = objc_msgSend_stringFromNumber_(v17, v18, v8, v19, v20);
    objc_msgSend_stringWithFormat_(v16, v21, @"%@ %@", v22, v23, v12, qword_27EE86980);
    goto LABEL_16;
  }

  if (longCopy >= 0x100000)
  {
    v24 = MEMORY[0x277CCACA8];
    v25 = qword_27EE869A8;
    v8 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, long, v3, v4, vcvtd_n_f64_s64(long, 0x14uLL));
    v12 = objc_msgSend_stringFromNumber_(v25, v26, v8, v27, v28);
    objc_msgSend_stringWithFormat_(v24, v29, @"%@ %@", v30, v31, v12, qword_27EE86988);
    goto LABEL_16;
  }

  if (longCopy >= 0x400)
  {
    v32 = MEMORY[0x277CCACA8];
    v33 = qword_27EE869A8;
    v8 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, long, v3, v4, vcvtd_n_f64_s64(long, 0xAuLL));
    v12 = objc_msgSend_stringFromNumber_(v33, v34, v8, v35, v36);
    objc_msgSend_stringWithFormat_(v32, v37, @"%@ %@", v38, v39, v12, qword_27EE86990);
    goto LABEL_16;
  }

  if (longCopy == 1)
  {
    v8 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, long, v3, v4);
    objc_msgSend_localizedStringForKey_value_table_(v8, v40, @"1 Byte", &stru_285A3F068, 0);
  }

  else
  {
    if (long)
    {
      v41 = MEMORY[0x277CCACA8];
      v42 = qword_27EE869B0;
      v8 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], a2, long, v3, v4);
      v12 = objc_msgSend_stringFromNumber_(v42, v43, v8, v44, v45);
      objc_msgSend_stringWithFormat_(v41, v46, @"%@ %@", v47, v48, v12, qword_27EE869A0);
      goto LABEL_16;
    }

    v8 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, 0, v3, v4);
    objc_msgSend_localizedStringForKey_value_table_(v8, v51, @"0 Bytes", &stru_285A3F068, 0);
  }
  v49 = ;
LABEL_17:

  return v49;
}

+ (id)stringFromNumber:(id)number
{
  v7 = objc_msgSend_longLongValue(number, a2, number, v3, v4);

  return objc_msgSend_stringForLongLong_(self, v6, v7, v8, v9);
}

- (id)stringFromNumber:(id)number
{
  v6 = objc_msgSend_longLongValue(number, a2, number, v3, v4);

  return objc_msgSend_stringForLongLong_(DTBytesFormatter, v5, v6, v7, v8);
}

+ (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = objc_msgSend_description(valueCopy, v5, v6, v7, v8);
    goto LABEL_8;
  }

  v9 = valueCopy;
  v14 = objc_msgSend_objCType(v9, v10, v11, v12, v13);
  v19 = *v14;
  if (v19 != 100 && v19 != 102 || v14[1] || (objc_msgSend_doubleValue(valueCopy, v15, v16, v17, v18), fabs(v20) != INFINITY))
  {
    v21 = objc_msgSend_longLongValue(valueCopy, v15, v16, v17, v18);
    v25 = objc_msgSend_stringForLongLong_(self, v22, v21, v23, v24);
LABEL_8:
    v26 = v25;
    goto LABEL_9;
  }

  v28 = MEMORY[0x277CCACA8];
  v29 = objc_msgSend_stringFromNumber_(qword_27EE869A8, v15, valueCopy, v17, v18);
  v26 = objc_msgSend_stringWithFormat_(v28, v30, @"%@ B", v31, v32, v29);

LABEL_9:

  return v26;
}

@end