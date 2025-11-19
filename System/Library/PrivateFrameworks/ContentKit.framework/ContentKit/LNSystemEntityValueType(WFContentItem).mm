@interface LNSystemEntityValueType(WFContentItem)
+ (id)wf_placeDescriptorEntityIdentifier;
+ (id)wf_placeDescriptorObjectClass;
- (objc_class)wf_objectClass;
@end

@implementation LNSystemEntityValueType(WFContentItem)

- (objc_class)wf_objectClass
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[.-]" options:0 error:0];
  v4 = [a1 identifier];
  v5 = [a1 identifier];
  v6 = [v3 stringByReplacingMatchesInString:v4 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), @"_"}];

  v7 = NSStringFromClass(v2);
  v16[0] = v7;
  v16[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  v9 = [v8 componentsJoinedByString:@"_"];
  v10 = NSClassFromString(v9);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    os_unfair_lock_lock(&systemEntityValueClassRegistrationLock);
    ClassPair = objc_allocateClassPair(v2, [(NSString *)v9 cStringUsingEncoding:4], 0);
    if (ClassPair)
    {
      v13 = ClassPair;
      objc_registerClassPair(ClassPair);
      os_unfair_lock_unlock(&systemEntityValueClassRegistrationLock);
      v11 = v13;
    }

    else
    {
      os_unfair_lock_unlock(&systemEntityValueClassRegistrationLock);
      v11 = NSClassFromString(v9);
    }
  }

  v14 = v11;

  return v14;
}

+ (id)wf_placeDescriptorObjectClass
{
  v1 = MEMORY[0x277D23928];
  v2 = [a1 wf_placeDescriptorIdentifier];
  v3 = [v1 valueTypeWithIdentifier:v2];
  v4 = [v3 wf_objectClass];

  return v4;
}

+ (id)wf_placeDescriptorEntityIdentifier
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 wf_placeDescriptorIdentifier];
  v3 = [v1 stringWithFormat:@"%@Entity", v2];

  return v3;
}

@end