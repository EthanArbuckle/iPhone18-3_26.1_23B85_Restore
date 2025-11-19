@interface HMDCoreDataCloudTransformableLocalModelOnly
+ (BOOL)exportUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6;
+ (BOOL)importDeleteWithObjectID:(id)a3 modelID:(id)a4 additionalUpdates:(id)a5 context:(id)a6;
+ (BOOL)importInsertWithObjectID:(id)a3 additionalUpdates:(id)a4 context:(id)a5;
+ (BOOL)importUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6;
+ (id)createWithLocalModel:(id)a3 context:(id)a4;
+ (id)fetchWithLocalModel:(id)a3 context:(id)a4;
+ (id)new;
+ (void)addToUpdates:(id)a3 objectID:(id)a4 properties:(id)a5;
- (HMDCoreDataCloudTransformableLocalModelOnly)init;
- (id)createLocalModelWithContext:(id)a3;
- (id)fetchLocalModelWithContext:(id)a3;
@end

@implementation HMDCoreDataCloudTransformableLocalModelOnly

+ (void)addToUpdates:(id)a3 objectID:(id)a4 properties:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectForKeyedSubscript:v8];
  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v9, "count")}];
    [v7 setObject:v10 forKeyedSubscript:v8];
  }

  v11 = [v8 entity];
  v12 = [v11 propertiesByName];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [v12 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * v17), v20}];
        if (v18)
        {
          [v10 addObject:v18];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (BOOL)exportUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = NSStringFromSelector(a2);
  v18 = [v16 stringWithFormat:@"You must override %@ in a subclass", v17];
  v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

+ (id)createWithLocalModel:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

+ (id)fetchWithLocalModel:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

+ (BOOL)importDeleteWithObjectID:(id)a3 modelID:(id)a4 additionalUpdates:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = NSStringFromSelector(a2);
  v18 = [v16 stringWithFormat:@"%@ is unavailable", v17];
  v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

+ (BOOL)importUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = NSStringFromSelector(a2);
  v18 = [v16 stringWithFormat:@"%@ is unavailable", v17];
  v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

+ (BOOL)importInsertWithObjectID:(id)a3 additionalUpdates:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"%@ is unavailable", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)createLocalModelWithContext:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)fetchLocalModelWithContext:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMDCoreDataCloudTransformableLocalModelOnly)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end