@interface CSSearchableItem(SGCloning)
+ (id)sg_clonableItemAtIndex:()SGCloning inCodedArray:;
- (id)sg_clone;
@end

@implementation CSSearchableItem(SGCloning)

- (id)sg_clone
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_getAssociatedObject(a1, sel_sg_clonableItemAtIndex_inCodedArray_);
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CC34B0];
    v5 = [v2 second];
    v6 = [v5 unsignedIntegerValue];
    v7 = [v3 first];
    v8 = [v4 sg_clonableItemAtIndex:v6 inCodedArray:v7];

    if (v8 != a1)
    {
      goto LABEL_11;
    }

    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v19 = [v3 first];
      v20 = 138412546;
      v21 = v19;
      v22 = 2112;
      v23 = a1;
      _os_log_fault_impl(&dword_231E60000, v9, OS_LOG_TYPE_FAULT, "expected coded array %@ to give a new instance of %@ but it didn't", &v20, 0x16u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  v8 = [a1 copy];
  v10 = [a1 attributeSet];
  v11 = [v10 textContentNoCopy];
  if (v11)
  {
    v12 = v11;
    v13 = [v8 attributeSet];
    v14 = [v13 textContentNoCopy];

    if (v14)
    {
      goto LABEL_11;
    }

    v10 = [a1 attributeSet];
    v15 = [v10 textContent];
    v16 = [v8 attributeSet];
    [v16 setTextContent:v15];
  }

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)sg_clonableItemAtIndex:()SGCloning inCodedArray:
{
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = [v6 objectAtIndexedSubscript:a3];
  if (isKindOfClass)
  {
    v9 = MEMORY[0x277D42648];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v11 = [v9 tupleWithFirst:v6 second:v10];

    objc_setAssociatedObject(v8, a2, v11, 1);
  }

  return v8;
}

@end