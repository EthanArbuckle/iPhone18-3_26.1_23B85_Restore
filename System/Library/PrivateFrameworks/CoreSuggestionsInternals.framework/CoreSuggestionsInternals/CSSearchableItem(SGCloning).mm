@interface CSSearchableItem(SGCloning)
+ (id)sg_clonableItemAtIndex:()SGCloning inCodedArray:;
- (id)sg_clone;
@end

@implementation CSSearchableItem(SGCloning)

- (id)sg_clone
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_getAssociatedObject(self, sel_sg_clonableItemAtIndex_inCodedArray_);
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CC34B0];
    second = [v2 second];
    unsignedIntegerValue = [second unsignedIntegerValue];
    first = [v3 first];
    v8 = [v4 sg_clonableItemAtIndex:unsignedIntegerValue inCodedArray:first];

    if (v8 != self)
    {
      goto LABEL_11;
    }

    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      first2 = [v3 first];
      v20 = 138412546;
      v21 = first2;
      v22 = 2112;
      selfCopy = self;
      _os_log_fault_impl(&dword_231E60000, v9, OS_LOG_TYPE_FAULT, "expected coded array %@ to give a new instance of %@ but it didn't", &v20, 0x16u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  v8 = [self copy];
  attributeSet = [self attributeSet];
  textContentNoCopy = [attributeSet textContentNoCopy];
  if (textContentNoCopy)
  {
    v12 = textContentNoCopy;
    attributeSet2 = [v8 attributeSet];
    textContentNoCopy2 = [attributeSet2 textContentNoCopy];

    if (textContentNoCopy2)
    {
      goto LABEL_11;
    }

    attributeSet = [self attributeSet];
    textContent = [attributeSet textContent];
    attributeSet3 = [v8 attributeSet];
    [attributeSet3 setTextContent:textContent];
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