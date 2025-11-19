@interface XREngineeringNumberFormatter
+ (void)initialize;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
@end

@implementation XREngineeringNumberFormatter

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_opt_new();
    v3 = qword_27EE86960;
    qword_27EE86960 = v2;

    v8 = objc_msgSend_systemLocale(MEMORY[0x277CBEAF8], v4, v5, v6, v7);
    objc_msgSend_setLocale_(qword_27EE86960, v9, v8, v10, v11);

    v15 = qword_27EE86960;

    objc_msgSend_setUsesGroupingSeparator_(v15, v12, 0, v13, v14);
  }
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v8 = a4;
  v18 = 0;
  if (objc_msgSend_xr_getLongLong_(v8, v9, &v18, v10, v11))
  {
    if (a3)
    {
      *a3 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v12, v18, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = XREngineeringNumberFormatter;
    v15 = [(XREngineeringNumberFormatter *)&v17 getObjectValue:a3 forString:v8 errorDescription:a5];
  }

  return v15;
}

@end