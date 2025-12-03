@interface DTUserTimeFormatter
+ (id)stringForNanoseconds:(unint64_t)nanoseconds;
+ (id)stringForObjectValue:(id)value;
+ (void)initialize;
- (id)stringForObjectValue:(id)value;
@end

@implementation DTUserTimeFormatter

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v3 = qword_27EE86978;
    qword_27EE86978 = v2;

    v19 = objc_msgSend_positiveInfinitySymbol(qword_27EE86978, v4, v5, v6, v7);
    if (objc_msgSend_length(v19, v8, v9, v10, v11) == 2)
    {
      v15 = objc_msgSend_substringFromIndex_(v19, v12, 1, v13, v14);
      objc_msgSend_setPositiveInfinitySymbol_(qword_27EE86978, v16, v15, v17, v18);
    }
  }
}

+ (id)stringForNanoseconds:(unint64_t)nanoseconds
{
  v10 = *MEMORY[0x277D85DE8];
  if (nanoseconds)
  {
    if (nanoseconds > 0x3E7)
    {
      if (nanoseconds > 0xF423F)
      {
        if (nanoseconds > 0x3B9AC9FF)
        {
          if (nanoseconds > 0xDF84757FFLL)
          {
            snprintf(__str, 0x80uLL, "%3.2f min");
          }

          else
          {
            snprintf(__str, 0x80uLL, "%3.2f s");
          }
        }

        else
        {
          snprintf(__str, 0x80uLL, "%3.2f ms");
        }
      }

      else
      {
        snprintf(__str, 0x80uLL, "%3.2f µs");
      }
    }

    else
    {
      snprintf(__str, 0x80uLL, "%llu ns");
    }

    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, __str, v4, v5);
  }

  else
  {
    v6 = @"0 s";
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = objc_msgSend_description(valueCopy, v4, v5, v6, v7);
    goto LABEL_8;
  }

  v8 = valueCopy;
  v13 = objc_msgSend_objCType(v8, v9, v10, v11, v12);
  v18 = *v13;
  if (v18 != 100 && v18 != 102 || v13[1] || (objc_msgSend_doubleValue(valueCopy, v14, v15, v16, v17), fabs(v19) != INFINITY))
  {
    v20 = objc_msgSend_unsignedLongLongValue(valueCopy, v14, v15, v16, v17);
    v24 = objc_msgSend_stringForNanoseconds_(DTUserTimeFormatter, v21, v20, v22, v23);
LABEL_8:
    v25 = v24;
    goto LABEL_9;
  }

  v27 = MEMORY[0x277CCACA8];
  v28 = objc_msgSend_stringFromNumber_(qword_27EE86978, v14, valueCopy, v16, v17);
  v25 = objc_msgSend_stringWithFormat_(v27, v29, @"%@ s", v30, v31, v28);

LABEL_9:

  return v25;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29.receiver = self;
    v29.super_class = DTUserTimeFormatter;
    v21 = [(DTUserTimeFormatter *)&v29 stringForObjectValue:valueCopy];
    goto LABEL_8;
  }

  v5 = valueCopy;
  v10 = objc_msgSend_objCType(v5, v6, v7, v8, v9);
  v15 = *v10;
  if (v15 != 100 && v15 != 102 || v10[1] || (objc_msgSend_doubleValue(valueCopy, v11, v12, v13, v14), fabs(v16) != INFINITY))
  {
    v17 = objc_msgSend_unsignedLongLongValue(valueCopy, v11, v12, v13, v14);
    v21 = objc_msgSend_stringForNanoseconds_(DTUserTimeFormatter, v18, v17, v19, v20);
LABEL_8:
    v22 = v21;
    goto LABEL_9;
  }

  v24 = MEMORY[0x277CCACA8];
  v25 = objc_msgSend_stringFromNumber_(qword_27EE86978, v11, valueCopy, v13, v14);
  v22 = objc_msgSend_stringWithFormat_(v24, v26, @"%@ s", v27, v28, v25);

LABEL_9:

  return v22;
}

@end