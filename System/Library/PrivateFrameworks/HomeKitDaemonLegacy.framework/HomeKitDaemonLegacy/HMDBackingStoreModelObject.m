@interface HMDBackingStoreModelObject
+ (BOOL)resolveInstanceMethod:(SEL)a3;
+ (id)bsoSchemaHash;
+ (id)formatValue:(id)a3;
+ (id)logCategory;
+ (id)objectFromCloud:(id)a3 error:(id *)a4;
+ (id)objectFromData:(id)a3 encoding:(unint64_t)a4 error:(id *)a5;
+ (id)objectFromData:(id)a3 encoding:(unint64_t)a4 record:(id)a5 error:(id *)a6;
+ (id)objectFromData:(id)a3 encoding:(unint64_t)a4 rowID:(unint64_t)a5 error:(id *)a6;
+ (id)objectFromDictionaryData:(id)a3 type:(id)a4 error:(id *)a5;
- (BOOL)_validateType:(id)a3 error:(id *)a4;
- (BOOL)bsoIgnoreModel;
- (BOOL)diff:(id)a3 differingFields:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGenericRepresentation;
- (BOOL)isReadOnly;
- (BOOL)merge:(id)a3 error:(id *)a4;
- (BOOL)propertyIsAvailable:(id)a3;
- (BOOL)propertyIsReadOnly:(id)a3;
- (BOOL)propertyWasSet:(id)a3;
- (HMDBackingStoreModelObject)initWithVersion:(id)a3 changeType:(unint64_t)a4 uuid:(id)a5 parentUUID:(id)a6;
- (HMDBackingStoreObjectProtocol)bsoDelegate;
- (NSSet)dependentUUIDs;
- (NSString)description;
- (id)backedObjectWithParent:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugString:(BOOL)a3 prefix:(id)a4;
- (id)defaultValueForPropertyNamed:(id)a3 isSet:(BOOL *)a4;
- (id)encodeAsNSDictionaryFor:(unint64_t)a3 error:(id *)a4;
- (id)encodeFor:(unint64_t)a3 error:(id *)a4;
- (id)encodeForCloud:(id *)a3;
- (id)encodeWithEncoding:(unint64_t)a3 for:(unint64_t)a4 error:(id *)a5;
- (id)merge:(id)a3 from:(unint64_t)a4;
- (id)prepareFor:(unint64_t)a3;
- (id)setProperties;
- (id)typeNameForDebug;
- (id)validateType:(id)a3 path:(id)a4;
- (unint64_t)hash;
- (void)setBsoIgnoredBefore:(id)a3;
- (void)setParentUUIDIfNotNil:(id)a3;
- (void)setPropertyIfNotNil:(id)a3 named:(id)a4;
@end

@implementation HMDBackingStoreModelObject

- (HMDBackingStoreObjectProtocol)bsoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bsoDelegate);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HMDBackingStoreModelObject *)self uuid];
  v6 = [(HMDBackingStoreModelObject *)self parentUUID];
  v7 = [v4 initWithUUID:v5 parentUUID:v6];

  v8 = [v7 merge:self];
  return v7;
}

- (id)debugString:(BOOL)a3 prefix:(id)a4
{
  v4 = a3;
  v54 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CCAB68] string];
  v8 = [(HMDBackingStoreModelObject *)self typeNameForDebug];
  [v7 appendFormat:@"%@%@:", v6, v8];

  v9 = [(HMDBackingStoreModelObject *)self uuid];
  v10 = [v9 UUIDString];
  [v7 appendFormat:@"\n  uuid: %@", v10];

  v11 = [(HMDBackingStoreModelObject *)self parentUUID];
  v12 = [v11 UUIDString];
  [v7 appendFormat:@"\n  parent: %@", v12];

  if (v4)
  {
    v13 = [(HMDBackingStoreModelObject *)self bsoDataVersion];
    v14 = [(HMDBackingStoreModelObject *)self bsoDataVersionOverride];
    v15 = "";
    if (v14)
    {
      v15 = " (override)";
    }

    [v7 appendFormat:@"\n  version: %@%s", v13, v15];

    v16 = [(HMDBackingStoreModelObject *)self bsoIgnoredBefore];
    v17 = v16;
    if (v16)
    {
      [v7 appendFormat:@"\n  ignore before: %@", v16];
    }

    v39 = v17;
    v40 = v6;
    [v7 appendString:@"\n  dependents:"];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v18 = [(HMDBackingStoreModelObject *)self dependentUUIDs];
    v19 = [v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v49;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v49 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v48 + 1) + 8 * i) UUIDString];
          [v7 appendFormat:@" %@", v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v20);
    }

    v24 = [objc_opt_class() properties];
    v41 = shouldLogPrivateInformation();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v24;
    v25 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v25)
    {
      v26 = v25;
      v43 = *v45;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v45 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v44 + 1) + 8 * j);
          v29 = [objc_opt_class() properties];
          v30 = [v29 objectForKey:v28];

          v31 = [(NSMutableDictionary *)self->_reserved valueForKey:v28];
          if (v31)
          {
            v32 = v31;
            v33 = [HMDBackingStoreModelObject formatValue:v31];
            v34 = &stru_286509E58;
          }

          else
          {
            if (![v30 defaultValueSet])
            {
              goto LABEL_31;
            }

            v32 = [v30 defaultValue];
            v33 = [HMDBackingStoreModelObject formatValue:v32];
            v34 = @" (default)";
          }

          if ([(HMDBackingStoreModelObject *)self propertyIsReadOnly:v28])
          {
            v35 = @" (read-only)";
          }

          else
          {
            v35 = &stru_286509E58;
          }

          if ([v30 logging] == 3 || (v41 & 1) == 0 && (!v30 || !objc_msgSend(v30, "logging")))
          {
            v36 = @"...";

            v33 = @"...";
          }

          [v7 appendFormat:@"\n  %@%@%@: %@", v28, v35, v34, v33];

LABEL_31:
        }

        v26 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v26);
    }

    v6 = v40;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDBackingStoreModelObject *)self typeNameForDebug];
  v5 = [(HMDBackingStoreModelObject *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [(HMDBackingStoreModelObject *)self bsoDataVersion];
  v8 = [v3 stringWithFormat:@"<%@ uuid:%@ version:%@>", v4, v6, v7];

  return v8;
}

- (id)defaultValueForPropertyNamed:(id)a3 isSet:(BOOL *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_opt_class() properties];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    if (a4)
    {
      *a4 = [v8 defaultValueSet];
    }

    v9 = [v8 defaultValue];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDBackingStoreModelObject *)v11 typeNameForDebug];
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to get default value of property %@ from type %@ (no such property exists)", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setPropertyIfNotNil:(id)a3 named:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() properties];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDBackingStoreModelObject *)v11 typeNameForDebug];
      v18 = objc_opt_class();
      v16 = NSStringFromClass(v18);
      v26 = 138544130;
      v27 = v13;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v16;
      v17 = "%{public}@Unable to set property %@ of %@ from type %@ (no such property exists)";
      goto LABEL_10;
    }

LABEL_12:

    objc_autoreleasePoolPop(v10);
    goto LABEL_13;
  }

  if (![(HMDBackingStoreModelObject *)self propertyIsAvailable:v7])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDBackingStoreModelObject *)v11 typeNameForDebug];
      v19 = objc_opt_class();
      v16 = NSStringFromClass(v19);
      v26 = 138544130;
      v27 = v13;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v16;
      v17 = "%{public}@Unable to set property %@ of %@ from type %@ (property is unavailable)";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if ([(HMDBackingStoreModelObject *)self propertyIsReadOnly:v7])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDBackingStoreModelObject *)v11 typeNameForDebug];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v26 = 138544130;
      v27 = v13;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v16;
      v17 = "%{public}@Unable to set property %@ of %@ from type %@ (property is read-only)";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, v17, &v26, 0x2Au);
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (!v6)
  {
    [(NSMutableDictionary *)self->_reserved removeObjectForKey:v7];
    goto LABEL_13;
  }

  [v9 classObj];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = HMFGetLogIdentifier();
    v14 = [(HMDBackingStoreModelObject *)v11 typeNameForDebug];
    v24 = objc_opt_class();
    v16 = NSStringFromClass(v24);
    v25 = NSStringFromClass([v9 classObj]);
    v26 = 138544386;
    v27 = v13;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v25;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to set property %@ of %@ from type %@ (does not match the expected type %@)", &v26, 0x34u);

    goto LABEL_11;
  }

  reserved = self->_reserved;
  if (!reserved)
  {
    v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    v23 = self->_reserved;
    self->_reserved = v22;

    reserved = self->_reserved;
  }

  [(NSMutableDictionary *)reserved setObject:v6 forKey:v7];
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)diff:(id)a3 differingFields:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [v6 setProperties];
    v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_reserved objectForKey:v12];
          v14 = [v6[1] objectForKey:v12];
          if ((isEqualDeepCompare(v13, v14) & 1) == 0)
          {
            if (!a4)
            {

              goto LABEL_22;
            }

            if (!v9)
            {
              v9 = [MEMORY[0x277CBEB18] array];
            }

            [v9 addObject:v12];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

    if (a4)
    {
      v15 = v9;
      *a4 = v9;
      LOBYTE(a4) = [v15 count] != 0;
    }
  }

  else
  {
    if (a4)
    {
      [MEMORY[0x277CBEA60] array];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

LABEL_22:
    LOBYTE(a4) = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)merge:(id)a3 error:(id *)a4
{
  v5 = [(HMDBackingStoreModelObject *)self merge:a3 from:0];
  if (a4)
  {
    v5 = v5;
    *a4 = v5;
  }

  v6 = v5 == 0;

  return v6;
}

- (id)merge:(id)a3 from:(unint64_t)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    goto LABEL_12;
  }

  if (![(HMDBackingStoreModelObject *)v5 bsoIgnoreModel])
  {
    v13 = [(HMDBackingStoreModelObject *)self bsoType];
    v14 = NSClassFromString(v13);

    v15 = [(HMDBackingStoreModelObject *)v6 bsoType];
    v16 = NSClassFromString(v15);

    if (([(objc_class *)v14 isSubclassOfClass:v16]& 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v29 = v22;
        v30 = 2112;
        v31 = v16;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot merge from model class, %@, to model class, %@", buf, 0x20u);
      }

      goto LABEL_16;
    }

    v17 = [(NSMutableDictionary *)self->_reserved mutableCopy];
    if (!v17)
    {
      v17 = [MEMORY[0x277CBEB38] dictionary];
    }

    reserved = v6->_reserved;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __41__HMDBackingStoreModelObject_merge_from___block_invoke;
    v25[3] = &unk_27972DEE0;
    v25[4] = self;
    v26 = v6;
    v19 = v17;
    v27 = v19;
    [(NSMutableDictionary *)reserved enumerateKeysAndObjectsUsingBlock:v25];
    if ([v19 count])
    {
      objc_storeStrong(&self->_reserved, v17);
    }

LABEL_12:
    v20 = 0;
    goto LABEL_17;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = +[HMDBackingStoreSingleton dataVersion];
    v12 = [(HMDBackingStoreModelObject *)v6 bsoIgnoredBefore];
    *buf = 138544130;
    v29 = v10;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping merge merge from model %@ (our version less than ignore before version %@ <= %@)", buf, 0x2Au);
  }

LABEL_16:
  objc_autoreleasePoolPop(v7);
  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:19 userInfo:0];
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

void __41__HMDBackingStoreModelObject_merge_from___block_invoke(id *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 characterAtIndex:0];
  v8 = a1[4];
  if (v7 == 95)
  {
    v9 = [v8 bsoDataVersion];
    v10 = [a1[5] bsoDataVersion];
    if (![v9 isLessThan:v10])
    {
LABEL_19:

      goto LABEL_20;
    }

    if ([v5 isEqualToString:@"_U"])
    {

LABEL_12:
      v9 = [a1[6] objectForKey:v5];
      v19 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v10 = v20;

      if (v10)
      {
        if (v9)
        {
          [v9 addEntriesFromDictionary:v10];
        }

        else
        {
          v9 = [v19 mutableCopy];
          [a1[6] setObject:v9 forKey:v5];
        }
      }

      goto LABEL_19;
    }

    v18 = [v5 isEqualToString:@"_R"];

    if (v18)
    {
      goto LABEL_12;
    }
  }

  else if ([v8 propertyIsReadOnly:v5])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1[4];
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[4] bsoType];
      v16 = [a1[4] bsoDataVersion];
      v22 = 138544130;
      v23 = v14;
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to merge %@ property of model class %@ (marked readonly for %@).", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
  }

  else if (v6)
  {
    v17 = a1[6];
    v9 = [v5 hmf_stringWithSmallestEncoding];
    [v17 setObject:v6 forKey:v9];
LABEL_20:
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)propertyIsAvailable:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() genericRepresentation];
  v6 = [(NSMutableDictionary *)self->_reserved hmf_dictionaryForKey:@"_U"];
  if ([objc_opt_class() isEqual:v5])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v6 objectForKey:v4];
    if (v8)
    {
      v9 = +[HMDBackingStoreSingleton dataVersion];
      v7 = [v9 isGreaterThan:v8];
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)propertyIsReadOnly:(id)a3
{
  v4 = a3;
  if ([(HMDBackingStoreModelObject *)self isReadOnly]|| ![(HMDBackingStoreModelObject *)self propertyIsAvailable:v4])
  {
    v8 = 1;
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_reserved hmf_dictionaryForKey:@"_R"];
    v6 = [v5 objectForKey:v4];
    v7 = [(HMDBackingStoreModelObject *)self bsoDataVersionOverride];
    v8 = 0;
    if (!v7 && v6)
    {
      v9 = +[HMDBackingStoreSingleton dataVersion];
      v8 = [v9 isLessThanOrEqualTo:v6];
    }
  }

  return v8;
}

- (BOOL)isGenericRepresentation
{
  v2 = [objc_opt_class() genericRepresentation];
  if ([objc_opt_class() isEqual:v2])
  {
    return 1;
  }

  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return [v4 isEqual:v5];
}

- (BOOL)isReadOnly
{
  if ([(HMDBackingStoreModelObject *)self isGenericRepresentation])
  {
    return 1;
  }

  v3 = [objc_opt_class() readonlyBefore];
  if (v3)
  {
    v4 = +[HMDBackingStoreSingleton dataVersion];
    v2 = [v3 isGreaterThan:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)propertyWasSet:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_reserved valueForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)setProperties
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[NSMutableDictionary count](self->_reserved, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_reserved;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 characterAtIndex:{0, v12}] != 95)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setParentUUIDIfNotNil:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!self->_parentUUID)
  {
    goto LABEL_2;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v10 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Parent identifier is already present for this object", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [[HMDAssertionLogEvent alloc] initWithReason:@"Parent identifier is already present for this object"];
  v12 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v12 submitLogEvent:v11];

  if (self->_parentUUID)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v8;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Parent identifier is already present for this object", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
LABEL_2:
    objc_storeStrong(&self->_parentUUID, a3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 uuid];
    v9 = [(HMDBackingStoreModelObject *)self uuid];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(HMDBackingStoreModelObject *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (id)encodeForCloud:(id *)a3
{
  v5 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ObjectRecord"];
  v6 = [(HMDBackingStoreModelObject *)self encodeWithEncoding:1 for:1 error:a3];
  if (v6)
  {
    [v5 setObject:&unk_286629500 forKey:@"k00"];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"k%02lu", 1];
    [v5 setObject:v6 forKey:v7];

    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)encodeWithEncoding:(unint64_t)a3 for:(unint64_t)a4 error:(id *)a5
{
  [(HMDBackingStoreModelObject *)self clearVersionOverride];
  if (a5)
  {
    *a5 = 0;
    if (a3 != 1)
    {
      v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      v10 = v9;
      v11 = 0;
      *a5 = v9;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (a3 == 1)
  {
LABEL_5:
    v11 = [(HMDBackingStoreModelObject *)self encodeAsNSDictionaryFor:a4 error:a5];
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)encodeFor:(unint64_t)a3 error:(id *)a4
{
  v7 = [MEMORY[0x277CBEB18] array];
  if (a4)
  {
    *a4 = 0;
  }

  v8 = [(HMDBackingStoreModelObject *)self encodeWithEncoding:1 for:a3 error:a4];
  if (!v8 || a4 && *a4)
  {
    v9 = 0;
  }

  else
  {
    [v7 addObject:v8];
    v9 = v7;
  }

  return v9;
}

- (id)encodeAsNSDictionaryFor:(unint64_t)a3 error:(id *)a4
{
  v94 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  v7 = [(HMDBackingStoreModelObject *)self uuid];

  if (!v7)
  {
    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:&unk_28662BD80];
      *a4 = v50 = 0;
    }

    else
    {
      v50 = 0;
    }

    goto LABEL_69;
  }

  v8 = [(HMDBackingStoreModelObject *)self prepareFor:a3];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  }

  v74 = a4;
  v9 = [(HMDBackingStoreModelObject *)self bsoDataVersion];
  v10 = [v9 versionString];
  [v8 setValue:v10 forKey:@"_V"];

  v11 = [(HMDBackingStoreModelObject *)self bsoType];
  [v8 setValue:v11 forKey:@"_t"];

  v12 = [(HMDBackingStoreModelObject *)self uuid];
  v13 = [v12 UUIDString];
  [v8 setValue:v13 forKey:@"_u"];

  v14 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v14)
  {
    v15 = [(HMDBackingStoreModelObject *)self parentUUID];
    v16 = [v15 UUIDString];
    [v8 setValue:v16 forKey:@"_P"];
  }

  v17 = [objc_opt_class() properties];
  v18 = [(NSMutableDictionary *)self->_reserved hmf_dictionaryForKey:@"_R"];
  v19 = [v18 mutableCopy];

  v73 = v19;
  if (!v19)
  {
    v73 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v17, "count")}];
  }

  v75 = self;
  v20 = [(NSMutableDictionary *)self->_reserved hmf_dictionaryForKey:@"_U"];
  v21 = [v20 mutableCopy];

  if (!v21)
  {
    v21 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v17, "count")}];
  }

  v76 = v21;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v22 = v17;
  v23 = [v22 countByEnumeratingWithState:&v82 objects:v93 count:16];
  v24 = v73;
  v25 = v74;
  if (!v23)
  {
    goto LABEL_46;
  }

  v26 = v23;
  v77 = *v83;
  v72 = v8;
  do
  {
    v27 = 0;
    do
    {
      if (*v83 != v77)
      {
        objc_enumerationMutation(v22);
      }

      v28 = *(*(&v82 + 1) + 8 * v27);
      v29 = v22;
      v30 = [v22 valueForKey:v28];
      v31 = [v30 readOnly];

      if (v31)
      {
        v32 = [v30 readOnly];
        [v24 setObject:v32 forKey:v28];
      }

      v33 = [v30 unavailable];

      if (v33)
      {
        v34 = [v30 unavailable];
        [v76 setObject:v34 forKey:v28];
      }

      v35 = [v8 valueForKey:v28];
      if (!v35)
      {
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_23;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v38 = +[HMDBackingStore allowedTypes];
          v39 = [v38 countByEnumeratingWithState:&v78 objects:v92 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v79;
            while (2)
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v79 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v78 + 1) + 8 * i);
                if (objc_opt_isKindOfClass())
                {

                  v8 = v72;
                  v24 = v73;
                  v25 = v74;
                  goto LABEL_23;
                }
              }

              v40 = [v38 countByEnumeratingWithState:&v78 objects:v92 count:16];
              v25 = v74;
              if (v40)
              {
                continue;
              }

              break;
            }
          }

          v8 = v72;
          if ([objc_msgSend(v30 "classObj")])
          {
            v24 = v73;
            if (v25)
            {
              v57 = MEMORY[0x277CCA9B8];
              v58 = *MEMORY[0x277D0F1A0];
              v90 = @"message";
              v59 = MEMORY[0x277CCACA8];
              v60 = objc_opt_class();
              v61 = NSStringFromClass(v60);
              v62 = [v59 stringWithFormat:@"/%@ (Cannot encode non-standard type %@ as NSObject generic)", v28, v61];
              v91 = v62;
              v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
              v64 = v58;
              v8 = v72;
              *v25 = [v57 errorWithDomain:v64 code:3 userInfo:v63];
            }

LABEL_65:
            v37 = 0;
LABEL_66:

LABEL_67:
            v22 = v29;

            v50 = 0;
            v46 = v76;
            goto LABEL_68;
          }

          v24 = v73;
          if (![objc_opt_class() conformsToProtocol:&unk_286633D18] || (objc_msgSend(objc_opt_class(), "supportsSecureCoding") & 1) == 0)
          {
            if (v25)
            {
              v52 = MEMORY[0x277CCA9B8];
              v53 = *MEMORY[0x277D0F1A0];
              v88 = @"message";
              v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@ (property does not support secureCoding)", v28];
              v89 = v54;
              v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
              v56 = v53;
              v8 = v72;
              *v25 = [v52 errorWithDomain:v56 code:3 userInfo:v55];
            }

            goto LABEL_65;
          }

          v44 = encodeRootObjectForRemoteDeviceOnSameAccountMigrateToHH2(v35, 1, 0);

          if (!v44)
          {
            if (v25)
            {
              v65 = MEMORY[0x277CCA9B8];
              v66 = *MEMORY[0x277D0F1A0];
              v86 = @"message";
              v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@ (property could not be encoded as NSData)", v28];
              v87 = v67;
              v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
              v69 = v66;
              v8 = v72;
              *v25 = [v65 errorWithDomain:v69 code:3 userInfo:v68];
            }

            v35 = 0;
            goto LABEL_65;
          }

          [v72 setValue:v44 forKey:v28];
          v35 = v44;
LABEL_23:

          goto LABEL_29;
        }
      }

      v36 = [(HMDBackingStoreModelObject *)v75 validateType:v35 path:v28];
      v37 = v36;
      if (v25 && v36)
      {
        v51 = v36;
        *v25 = v37;
        goto LABEL_66;
      }

      if (v37)
      {
        goto LABEL_67;
      }

LABEL_29:
      ++v27;
      v22 = v29;
    }

    while (v27 != v26);
    v45 = [v29 countByEnumeratingWithState:&v82 objects:v93 count:16];
    v26 = v45;
  }

  while (v45);
LABEL_46:

  if ([v24 count])
  {
    [v8 setObject:v24 forKey:@"_R"];
  }

  v46 = v76;
  if ([v76 count])
  {
    [v8 setObject:v76 forKey:@"_U"];
  }

  v47 = [objc_opt_class() genericRepresentation];
  if (v47)
  {
    v48 = v47;
    if (([(objc_class *)v47 isEqual:objc_opt_class()]& 1) == 0)
    {
      v49 = NSStringFromClass(v48);
      [v8 setObject:v49 forKey:@"_G"];
    }
  }

  v50 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
LABEL_68:

LABEL_69:
  v70 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)prepareFor:(unint64_t)a3
{
  reserved = self->_reserved;
  if (reserved)
  {
    v4 = [(NSMutableDictionary *)reserved mutableCopy];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  }

  return v4;
}

- (id)validateType:(id)a3 path:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v33 = 0;
  LODWORD(self) = [(HMDBackingStoreModelObject *)self _validateType:a3 error:&v33];
  v7 = v33;
  v8 = v7;
  v9 = 0;
  if (self)
  {
    v10 = [v7 userInfo];
    v11 = [v10 objectForKey:@"pathStack"];
    v12 = [v11 mutableCopy];

    v13 = [MEMORY[0x277CCAB68] string];
    [v12 addObject:v6];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [v12 reverseObjectEnumerator];
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v13 appendFormat:@"/%@", *(*(&v29 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v16);
    }

    v19 = [v8 userInfo];
    v20 = [v19 objectForKey:@"errorText"];
    [v13 appendFormat:@" %@", v20];

    v21 = [v8 userInfo];
    v22 = [v21 objectForKey:@"message"];
    [v22 setString:v13];

    v23 = MEMORY[0x277CCA9B8];
    v24 = [v8 domain];
    v25 = [v8 code];
    v34 = @"message";
    v35 = v13;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v9 = [v23 errorWithDomain:v24 code:v25 userInfo:v26];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_validateType:(id)a3 error:(id *)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = +[HMDBackingStore allowedTypes];
  v8 = [v7 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = *v55;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v55 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v54 + 1) + 8 * i);
      if (objc_opt_isKindOfClass())
      {

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v15 = v6;
          v22 = [v15 countByEnumeratingWithState:&v50 objects:v61 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = 0;
            v25 = *v51;
LABEL_16:
            v26 = 0;
            v27 = v24;
            v24 += v23;
            while (1)
            {
              if (*v51 != v25)
              {
                objc_enumerationMutation(v15);
              }

              if ([(HMDBackingStoreModelObject *)self _validateType:*(*(&v50 + 1) + 8 * v26) error:a4])
              {
                break;
              }

              ++v27;
              if (v23 == ++v26)
              {
                v23 = [v15 countByEnumeratingWithState:&v50 objects:v61 count:16];
                if (v23)
                {
                  goto LABEL_16;
                }

                goto LABEL_33;
              }
            }

            if (!a4)
            {
              goto LABEL_39;
            }

            v16 = [*a4 userInfo];
            v19 = [v16 objectForKey:@"pathStack"];
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%lu]", v27];
            v34 = v19;
            v35 = v20;
            goto LABEL_36;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v33 = 0;
            goto LABEL_41;
          }

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v15 = v6;
          v28 = [v15 countByEnumeratingWithState:&v46 objects:v60 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v47;
LABEL_26:
            v31 = 0;
            while (1)
            {
              if (*v47 != v30)
              {
                objc_enumerationMutation(v15);
              }

              v32 = *(*(&v46 + 1) + 8 * v31);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!a4)
                {
                  goto LABEL_39;
                }

                v45 = MEMORY[0x277CCA9B8];
                v38 = *MEMORY[0x277D0F1A0];
                v58[0] = @"message";
                v16 = [MEMORY[0x277CCAB68] string];
                v59[0] = v16;
                v58[1] = @"pathStack";
                v39 = MEMORY[0x277CBEB18];
                v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v32];
                v20 = [v39 arrayWithObject:v19];
                v59[1] = v20;
                v58[2] = @"errorText";
                v40 = MEMORY[0x277CCACA8];
                v41 = objc_opt_class();
                v42 = NSStringFromClass(v41);
                v43 = [v40 stringWithFormat:@"(key must be of string type (is %@))", v42];
                v59[2] = v43;
                v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:3];
                *a4 = [v45 errorWithDomain:v38 code:3 userInfo:v44];

                goto LABEL_37;
              }

              v16 = [v15 objectForKey:v32];
              if ([(HMDBackingStoreModelObject *)self _validateType:v16 error:a4])
              {
                break;
              }

              if (v29 == ++v31)
              {
                v29 = [v15 countByEnumeratingWithState:&v46 objects:v60 count:16];
                if (v29)
                {
                  goto LABEL_26;
                }

                goto LABEL_33;
              }
            }

            if (!a4)
            {
              goto LABEL_38;
            }

            v19 = [*a4 userInfo];
            v34 = [v19 objectForKey:@"pathStack"];
            v20 = v34;
            v35 = v32;
LABEL_36:
            [v34 addObject:v35];
LABEL_37:

LABEL_38:
LABEL_39:
            v33 = 1;
LABEL_40:

            goto LABEL_41;
          }
        }

LABEL_33:
        v33 = 0;
        goto LABEL_40;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_11:

  if (a4)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D0F1A0];
    v62[0] = @"message";
    v15 = [MEMORY[0x277CCAB68] string];
    v63[0] = v15;
    v62[1] = @"pathStack";
    v16 = [MEMORY[0x277CBEB18] array];
    v63[1] = v16;
    v62[2] = @"errorText";
    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 stringWithFormat:@"(%@ not a valid type within an aggregate type)", v19];
    v63[2] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];
    *a4 = [v13 errorWithDomain:v14 code:3 userInfo:v21];

    goto LABEL_37;
  }

  v33 = 1;
LABEL_41:

  v36 = *MEMORY[0x277D85DE8];
  return v33;
}

- (NSSet)dependentUUIDs
{
  v3 = [(HMDBackingStoreModelObject *)self parentUUID];

  v4 = MEMORY[0x277CBEB98];
  if (v3)
  {
    v5 = [(HMDBackingStoreModelObject *)self parentUUID];
    v6 = [v4 setWithObject:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (BOOL)bsoIgnoreModel
{
  v2 = [(HMDBackingStoreModelObject *)self bsoIgnoredBefore];
  if (v2)
  {
    v3 = +[HMDBackingStoreSingleton dataVersion];
    v4 = [v2 isGreaterThan:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBsoIgnoredBefore:(id)a3
{
  v4 = a3;
  reserved = self->_reserved;
  v8 = v4;
  if (!reserved)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = self->_reserved;
    self->_reserved = v6;

    v4 = v8;
    reserved = self->_reserved;
  }

  [(NSMutableDictionary *)reserved setObject:v4 forKey:@"_i"];
}

- (id)backedObjectWithParent:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() backedObjectClass];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 alloc];
    v10 = v9;
    if (v9 && [v9 conformsToProtocol:&unk_286639C38] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = [[v8 alloc] initWithModelObject:self parent:v6 error:a4];
    }

    else if (a4)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMDBackingStoreModelObject)initWithVersion:(id)a3 changeType:(unint64_t)a4 uuid:(id)a5 parentUUID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v27.receiver = self;
  v27.super_class = HMDBackingStoreModelObject;
  v13 = [(HMDBackingStoreModelObject *)&v27 init];
  if (v13)
  {
    v14 = +[HMDBackingStoreSingleton sharedInstance];
    v15 = [v14 classToNameTransform];
    v16 = [v15 objectForKey:objc_opt_class()];
    bsoType = v13->_bsoType;
    v13->_bsoType = v16;

    if (!v13->_bsoType)
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = v13->_bsoType;
      v13->_bsoType = v19;
    }

    v21 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v11];
    uuid = v13->_uuid;
    v13->_uuid = v21;

    v23 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v12];
    parentUUID = v13->_parentUUID;
    v13->_parentUUID = v23;

    v13->_objectChangeType = a4;
    v25 = v10;
    if (!v10)
    {
      v25 = +[HMDBackingStoreSingleton dataVersion];
    }

    objc_storeStrong(&v13->_bsoDataVersion, v25);
    if (!v10)
    {
    }

    v13->_bsoDataVersionOverride = 1;
  }

  return v13;
}

- (id)typeNameForDebug
{
  v2 = [(HMDBackingStoreModelObject *)self bsoType];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([v2 isEqual:v4])
  {
    v5 = v2;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v4, v2];
  }

  v6 = v5;

  return v6;
}

+ (BOOL)resolveInstanceMethod:(SEL)a3
{
  v4 = keyFromSelector(a3);
  if (v4 && ([objc_opt_class() properties], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", v4), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = NSStringFromSelector(a3);
    v8 = [v7 isEqualToString:v4];

    v9 = objc_opt_class();
    if (v8)
    {
      v10 = "@@:";
      v11 = propertyIMP;
    }

    else
    {
      v10 = "v@:@";
      v11 = setPropertyIMP;
    }

    class_addMethod(v9, a3, v11, v10);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_139072 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_139072, &__block_literal_global_139073);
  }

  v3 = logCategory__hmf_once_v20_139074;

  return v3;
}

uint64_t __41__HMDBackingStoreModelObject_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v20_139074;
  logCategory__hmf_once_v20_139074 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)formatValue:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"<NULL>";
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<NSArray: %lu items>", objc_msgSend(v3, "count")];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<NSDictionary: %lu items>", objc_msgSend(v3, "count")];
    v5 = LABEL_7:;
LABEL_8:
    v4 = v5;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x277CCAAC8];
    v9 = +[HMDBackingStore allowedTypes];
    v27 = 0;
    v10 = [v8 _strictlyUnarchivedObjectOfClasses:v9 fromData:v3 error:&v27];

    v11 = MEMORY[0x277CCACA8];
    if (v10)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v4 = [v11 stringWithFormat:@"<%@ / NSData: %lu bytes>", v13, objc_msgSend(v3, "length")];
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<NSData: %lu bytes>", objc_msgSend(v3, "length")];
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = +[HMDBackingStore allowedTypes];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {

            v5 = v3;
            goto LABEL_8;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v20 = MEMORY[0x277CCACA8];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v4 = [v20 stringWithFormat:@"<%@>", v22];
  }

LABEL_9:

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)objectFromCloud:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 objectForKey:@"k00"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"k%02lu", objc_msgSend(v8, "unsignedIntValue")];
    v10 = [v5 objectForKey:v9];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = +[HMDBackingStoreModelObject objectFromData:encoding:error:](HMDBackingStoreModelObject, "objectFromData:encoding:error:", v12, [v8 unsignedIntValue], a4);
    }

    else if (a4)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      *a4 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)objectFromData:(id)a3 encoding:(unint64_t)a4 record:(id)a5 error:(id *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = [HMDBackingStoreModelObject objectFromData:v10 encoding:a4 error:a6];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = objc_autoreleasePoolPush();
  v26 = 0;
  v14 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v11 error:&v26];
  v15 = v26;
  v16 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v14];
  v17 = v12[10];
  v12[10] = v16;

  objc_autoreleasePoolPop(v13);
  if (v15)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v21;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive CKRecord for BSO (%@): %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    if (a6)
    {
      v22 = v15;
      *a6 = v15;
    }

    v23 = 0;
  }

  else
  {
LABEL_8:
    v23 = v12;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)objectFromData:(id)a3 encoding:(unint64_t)a4 rowID:(unint64_t)a5 error:(id *)a6
{
  result = [HMDBackingStoreModelObject objectFromData:a3 encoding:a4 error:a6];
  if (result)
  {
    *(result + 7) = a5;
  }

  return result;
}

+ (id)objectFromData:(id)a3 encoding:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = v7;
  if (a5)
  {
    *a5 = 0;
  }

  if (![v7 length])
  {
    goto LABEL_9;
  }

  if (a4 == 1)
  {
    v9 = [HMDBackingStoreModelObject objectFromDictionaryData:v8 type:0 error:a5];
    if (v9)
    {
      v10 = v9;
      [v9 clearVersionOverride];
      goto LABEL_10;
    }
  }

  if (a5 && !*a5)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    *a5 = v10 = 0;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

LABEL_10:

  return v10;
}

+ (id)objectFromDictionaryData:(id)a3 type:(id)a4 error:(id *)a5
{
  v141[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  if (![v8 length])
  {
    v13 = 0;
    goto LABEL_80;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:0];
  v12 = +[HMDBackingStore internalAllowedTypes];
  v112 = *MEMORY[0x277CCA308];
  v13 = [v11 decodeObjectOfClasses:v12 forKey:?];

  v111 = v13;
  if (!v13)
  {
    v36 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:2 userInfo:0];
    goto LABEL_77;
  }

  v109 = v11;
  v110 = a1;
  if (!v9)
  {
    v9 = [v13 valueForKey:@"_t"];
    if (!v9)
    {
      v36 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      v73 = objc_autoreleasePoolPush();
      v74 = a1;
      v75 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v77 = v76 = v10;
        *buf = 138543618;
        v126 = v77;
        v127 = 2112;
        v128 = v13;
        _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_ERROR, "%{public}@Received an object with a dictionary missing the kType key: %@", buf, 0x16u);

        v10 = v76;
        v11 = v109;
      }

      objc_autoreleasePoolPop(v73);
      v78 = objc_autoreleasePoolPush();
      v79 = v74;
      v80 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
      {
        HMFGetLogIdentifier();
        v82 = v81 = v10;
        *buf = 138543362;
        v126 = v82;
        _os_log_impl(&dword_2531F8000, v80, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Received a model missing a critical field.", buf, 0xCu);

        v10 = v81;
        v11 = v109;
      }

      objc_autoreleasePoolPop(v78);
      v83 = [[HMDAssertionLogEvent alloc] initWithReason:@"Received a model missing a critical field."];
      v84 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v84 submitLogEvent:v83];

      v13 = 0;
      v9 = 0;
      goto LABEL_77;
    }
  }

  v14 = +[HMDBackingStoreSingleton sharedInstance];
  v15 = [v14 nameToClassTransform];
  v16 = [v15 objectForKey:v9];

  if (!v16)
  {
    v17 = NSClassFromString(v9);
    if (!v17)
    {
      v85 = [v13 valueForKey:@"_G"];

      v106 = v85;
      if (!v85 || (v86 = NSClassFromString(v85)) == 0)
      {
        v86 = objc_opt_class();
      }

      v16 = v86;
      goto LABEL_11;
    }

    v16 = v17;
  }

  v106 = v9;
LABEL_11:
  v107 = v10;
  if (([(objc_class *)v16 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v37 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277D0F1A0];
    v140 = @"message";
    v39 = MEMORY[0x277CCACA8];
    v40 = NSStringFromClass(v16);
    v41 = [v39 stringWithFormat:@"remapped (or explicit map) is not a subclass of HMDBackingStoreModelObject (%@ is not a sub-class of HMDBackingStoreModelObject)", v40];
    v141[0] = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:&v140 count:1];
    v36 = [v37 errorWithDomain:v38 code:3 userInfo:v42];

    v13 = 0;
    v9 = v106;
    v10 = v107;
    v11 = v109;
    goto LABEL_77;
  }

  v18 = [v16 alloc];
  v19 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v18 initWithVersion:0 changeType:0 uuid:v19 parentUUID:0];

  v20 = [v111 mutableCopy];
  v21 = *(v13 + 8);
  *(v13 + 8) = v20;

  v22 = MEMORY[0x277D0F890];
  v23 = [v111 valueForKey:@"_u"];
  v24 = [v22 hmf_cachedInstanceForNSString:v23];
  v25 = *(v13 + 24);
  *(v13 + 24) = v24;

  v26 = MEMORY[0x277D0F890];
  v27 = [v111 valueForKey:@"_P"];
  v28 = [v26 hmf_cachedInstanceForNSString:v27];
  v29 = *(v13 + 32);
  *(v13 + 32) = v28;

  v30 = MEMORY[0x277D0F888];
  v31 = [v111 valueForKey:@"_t"];
  v32 = [v30 hmf_cachedInstanceForString:v31];
  v33 = *(v13 + 48);
  *(v13 + 48) = v32;

  v34 = [v111 hmf_stringForKey:@"_V"];
  v104 = v34;
  if (v34)
  {
    v35 = [[HMDHomeKitVersion alloc] initWithString:v34];
  }

  else
  {
    v43 = [v111 valueForKey:@"_v"];

    if (!v43)
    {
      v99 = MEMORY[0x277CCA9B8];
      v100 = *MEMORY[0x277D0F1A0];
      v138 = @"message";
      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"expecting a versioning key named %@ but one does not exist", @"_v"];
      v139 = v46;
      v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
      v36 = [v99 errorWithDomain:v100 code:3 userInfo:?];
      v103 = v13;
      v13 = 0;
      v10 = v107;
      v11 = v109;
      goto LABEL_76;
    }

    v35 = +[HMDHomeKitVersion version4];
  }

  v11 = v109;
  v103 = v35;
  objc_storeStrong((v13 + 64), v35);
  v44 = *(v13 + 8);
  v137[0] = @"_P";
  v137[1] = @"_u";
  v137[2] = @"_v";
  v137[3] = @"_t";
  v137[4] = @"_T";
  v137[5] = @"_d";
  v137[6] = @"_G";
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:7];
  [v44 removeObjectsForKeys:v45];

  v46 = [objc_opt_class() properties];
  v115 = +[HMDBackingStore allowedTypes];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = [*(v13 + 8) allKeys];
  v47 = [obj countByEnumeratingWithState:&v121 objects:v136 count:16];
  if (!v47)
  {
    v36 = 0;
    v10 = v107;
    goto LABEL_75;
  }

  v48 = v47;
  v101 = a5;
  v102 = v8;
  v49 = *v122;
  v50 = obj;
  v114 = *v122;
  while (2)
  {
    v51 = 0;
    v116 = v48;
    do
    {
      if (*v122 != v49)
      {
        objc_enumerationMutation(v50);
      }

      v52 = *(*(&v121 + 1) + 8 * v51);
      v53 = [v46 valueForKey:v52];
      v54 = [*(v13 + 8) valueForKey:v52];
      v55 = v54;
      if (v53)
      {
        v56 = v54 == 0;
      }

      else
      {
        v56 = 1;
      }

      if (!v56)
      {
        if ([objc_msgSend(v53 "classObj")])
        {
          [*(v13 + 8) removeObjectForKey:v52];
LABEL_57:
          v48 = v116;
          goto LABEL_58;
        }

        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v57 = v115;
        v58 = [v57 countByEnumeratingWithState:&v117 objects:v135 count:16];
        if (v58)
        {
          v59 = v13;
          v60 = v46;
          v61 = *v118;
          while (2)
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v118 != v61)
              {
                objc_enumerationMutation(v57);
              }

              v63 = *(*(&v117 + 1) + 8 * i);
              if (objc_opt_isKindOfClass())
              {
                LODWORD(v58) = 1;
                goto LABEL_40;
              }
            }

            v58 = [v57 countByEnumeratingWithState:&v117 objects:v135 count:16];
            if (v58)
            {
              continue;
            }

            break;
          }

LABEL_40:
          v46 = v60;
          v13 = v59;
          v50 = obj;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && (!v58 || ([v57 containsObject:{objc_msgSend(v53, "classObj")}] & 1) == 0 && !objc_msgSend(objc_msgSend(v53, "classObj"), "isEqual:", objc_opt_class())))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (![objc_msgSend(v53 "classObj")])
            {
              v64 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v55 error:0];
              [v64 _allowDecodingCyclesInSecureMode];
              if ([objc_msgSend(v53 "classObj")])
              {
                v65 = [v53 decodeClasses];
                v66 = [v64 decodeObjectOfClasses:v65 forKey:v112];

                v55 = v66;
                v50 = obj;
              }

              else
              {
                [v64 decodeObjectOfClass:objc_msgSend(v53 forKey:{"classObj"), v112}];
                v55 = v65 = v55;
              }

              [v64 finishDecoding];
              [*(v13 + 8) removeObjectForKey:v52];
              if (v55)
              {
                v67 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v52];
                [*(v13 + 8) setObject:v55 forKey:v67];
              }

              else
              {
                context = objc_autoreleasePoolPush();
                v68 = v110;
                v69 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v70 = v105 = v68;
                  v71 = [v64 error];
                  *buf = 138543874;
                  v126 = v70;
                  v127 = 2112;
                  v128 = v52;
                  v129 = 2112;
                  v130 = v71;
                  v72 = v71;
                  _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_ERROR, "%{public}@failed to unarchive implicitly archived property %@: %@", buf, 0x20u);

                  v68 = v105;
                }

                objc_autoreleasePoolPop(context);
                v50 = obj;
              }

              goto LABEL_56;
            }

            v94 = MEMORY[0x277CCA9B8];
            v95 = *MEMORY[0x277D0F1A0];
            v131 = @"message";
            v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"should not have a internally handled type of NSObject (but we hit one for key %@)", v52];
            v132 = v91;
            v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
            v36 = [v94 errorWithDomain:v95 code:3 userInfo:v92];
          }

          else
          {
            v87 = MEMORY[0x277CCA9B8];
            v88 = *MEMORY[0x277D0F1A0];
            v133 = @"message";
            v89 = MEMORY[0x277CCACA8];
            v90 = objc_opt_class();
            v91 = NSStringFromClass(v90);
            v92 = [v89 stringWithFormat:@"expecting internal storage to be a NSData, but it's a %@", v91];
            v134 = v92;
            v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
            v36 = [v87 errorWithDomain:v88 code:3 userInfo:v93];
          }

          v13 = 0;
          goto LABEL_74;
        }

        v64 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v52];
        [*(v13 + 8) removeObjectForKey:v52];
        [*(v13 + 8) setObject:v55 forKey:v64];
LABEL_56:

        v49 = v114;
        goto LABEL_57;
      }

LABEL_58:

      ++v51;
    }

    while (v51 != v48);
    v48 = [v50 countByEnumeratingWithState:&v121 objects:v136 count:16];
    if (v48)
    {
      continue;
    }

    break;
  }

  v36 = 0;
LABEL_74:
  a5 = v101;
  v8 = v102;
  v10 = v107;
  v11 = v109;
LABEL_75:

LABEL_76:
  v9 = v106;

LABEL_77:
  objc_autoreleasePoolPop(v10);
  if (a5)
  {
    v96 = v36;
    *a5 = v36;
  }

LABEL_80:
  v97 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)bsoSchemaHash
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [a1 schemaHashRoot];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [a1 properties];
  v6 = [v5 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];
  [v3 addObjectsFromArray:v7];

  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"551E3F88-0C11-4402-A486-6D1EB759AADD"];
  v9 = MEMORY[0x277CCAD78];
  v10 = [v3 copy];
  v11 = [v9 hm_deriveUUIDFromBaseUUID:v8 withSalts:v10];
  v12 = [v11 UUIDString];

  return v12;
}

@end