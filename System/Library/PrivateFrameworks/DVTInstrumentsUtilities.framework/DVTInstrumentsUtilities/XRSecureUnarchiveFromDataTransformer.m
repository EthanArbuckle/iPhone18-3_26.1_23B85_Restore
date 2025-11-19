@interface XRSecureUnarchiveFromDataTransformer
+ (id)whitelistedClassesForTransforming;
+ (void)addWhitelistedClass:(Class)a3;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation XRSecureUnarchiveFromDataTransformer

+ (id)whitelistedClassesForTransforming
{
  os_unfair_lock_lock(&unk_27EE86838);
  v2 = qword_27EE86830;
  if (!qword_27EE86830)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = objc_opt_class();
    v8 = objc_msgSend_setWithObjects_(v3, v5, v4, v6, v7, 0);
    v9 = qword_27EE86830;
    qword_27EE86830 = v8;

    v2 = qword_27EE86830;
  }

  v10 = v2;
  os_unfair_lock_unlock(&unk_27EE86838);

  return v10;
}

+ (void)addWhitelistedClass:(Class)a3
{
  if (a3)
  {
    os_unfair_lock_lock(&unk_27EE86838);
    v7 = qword_27EE86830;
    if (!qword_27EE86830)
    {
      v8 = MEMORY[0x277CBEB98];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v14 = objc_msgSend_setWithObjects_(v8, v11, v9, v12, v13, v10, 0);
      v15 = qword_27EE86830;
      qword_27EE86830 = v14;

      v7 = qword_27EE86830;
    }

    v16 = objc_msgSend_setByAddingObject_(v7, v4, a3, v5, v6);
    v17 = qword_27EE86830;
    qword_27EE86830 = v16;

    os_unfair_lock_unlock(&unk_27EE86838);
  }
}

- (id)transformedValue:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = MEMORY[0x277CCAAC8];
    v9 = objc_msgSend_whitelistedClassesForTransforming(XRSecureUnarchiveFromDataTransformer, v4, v5, v6, v7);
    v14 = 0;
    v11 = objc_msgSend_xr_unarchiveSecureCodingObjectFromData_ofClasses_withError_(v8, v10, v3, v9, &v14);
    v12 = v14;

    if (v12)
    {
      NSLog(&cfstr_Xrsecureunarch_0.isa, v12);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  if (objc_msgSend_conformsToProtocol_(v3, v4, &unk_285A4AF80, v5, v6))
  {
    v13 = 0;
    v9 = objc_msgSend_xr_archiveSecureCodingObject_withError_(MEMORY[0x277CCAAB0], v7, v3, &v13, v8);
    v10 = v13;
    v11 = v10;
    if (v10)
    {
      NSLog(&cfstr_Xrsecureunarch_1.isa, v10);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end