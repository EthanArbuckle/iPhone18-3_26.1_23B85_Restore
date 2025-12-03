@interface LNCodableValueType(WFContentItem)
+ (id)wf_dateIntervalEntityIdentifier;
+ (id)wf_dateIntervalObjectClass;
+ (id)wf_durationEntityIdentifier;
+ (id)wf_durationObjectClass;
+ (id)wf_personNameComponentsEntityIdentifier;
+ (id)wf_personNameComponentsObjectClass;
- (objc_class)wf_objectClass;
@end

@implementation LNCodableValueType(WFContentItem)

- (objc_class)wf_objectClass
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = &off_282F9B388;
  v2 = objc_msgSendSuper2(&v14, sel_wf_objectClass);
  v3 = NSStringFromClass(v2);
  v15[0] = v3;
  identifier = [self identifier];
  v5 = [identifier stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  v15[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v7 = [v6 componentsJoinedByString:@"_"];
  v8 = NSClassFromString(v7);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    os_unfair_lock_lock(&valueClassRegistrationLock);
    ClassPair = objc_allocateClassPair(v2, [(NSString *)v7 cStringUsingEncoding:4], 0);
    if (ClassPair)
    {
      v11 = ClassPair;
      objc_registerClassPair(ClassPair);
      os_unfair_lock_unlock(&valueClassRegistrationLock);
      v9 = v11;
    }

    else
    {
      os_unfair_lock_unlock(&valueClassRegistrationLock);
      v9 = NSClassFromString(v7);
    }
  }

  v12 = v9;

  return v12;
}

+ (id)wf_personNameComponentsObjectClass
{
  v1 = MEMORY[0x277D237B0];
  wf_personNameComponentsIdentifier = [self wf_personNameComponentsIdentifier];
  v3 = [v1 codableValueTypeWithIdentifier:wf_personNameComponentsIdentifier];
  wf_objectClass = [v3 wf_objectClass];

  return wf_objectClass;
}

+ (id)wf_personNameComponentsEntityIdentifier
{
  v1 = MEMORY[0x277CCACA8];
  wf_personNameComponentsIdentifier = [self wf_personNameComponentsIdentifier];
  v3 = [v1 stringWithFormat:@"%@Entity", wf_personNameComponentsIdentifier];

  return v3;
}

+ (id)wf_durationObjectClass
{
  v1 = MEMORY[0x277D237B0];
  wf_durationIdentifier = [self wf_durationIdentifier];
  v3 = [v1 codableValueTypeWithIdentifier:wf_durationIdentifier];
  wf_objectClass = [v3 wf_objectClass];

  return wf_objectClass;
}

+ (id)wf_durationEntityIdentifier
{
  v1 = MEMORY[0x277CCACA8];
  wf_durationIdentifier = [self wf_durationIdentifier];
  v3 = [v1 stringWithFormat:@"%@Entity", wf_durationIdentifier];

  return v3;
}

+ (id)wf_dateIntervalObjectClass
{
  v1 = MEMORY[0x277D237B0];
  wf_dateIntervalIdentifier = [self wf_dateIntervalIdentifier];
  v3 = [v1 codableValueTypeWithIdentifier:wf_dateIntervalIdentifier];
  wf_objectClass = [v3 wf_objectClass];

  return wf_objectClass;
}

+ (id)wf_dateIntervalEntityIdentifier
{
  v1 = MEMORY[0x277CCACA8];
  wf_dateIntervalIdentifier = [self wf_dateIntervalIdentifier];
  v3 = [v1 stringWithFormat:@"%@Entity", wf_dateIntervalIdentifier];

  return v3;
}

@end