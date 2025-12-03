@interface ICCRCoder
+ (void)_registerClass:(Class)class forType:(id)type cluster:(BOOL)cluster;
+ (void)registerCRClasses;
+ (void)registerClass:(Class)class forType:(id)type;
- (unint64_t)typeIndexForClass:(Class)class;
@end

@implementation ICCRCoder

+ (void)registerCRClasses
{
  if (!sTypeSet)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v4 = sTypeSet;
    sTypeSet = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = sClusterTypes;
    sClusterTypes = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = sTypeToClassDict;
    sTypeToClassDict = v7;

    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.NSNumber" cluster:1];
    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.NSString" cluster:1];
    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.NSUUID" cluster:1];
    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.CRTuple" cluster:0];
    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.CRRegisterMultiValueLeast" cluster:0];
    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.CRRegisterMultiValue" cluster:0];
    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.CRTree" cluster:0];
    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.CRTreeNode" cluster:0];
    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.NSData" cluster:1];
    v9 = objc_opt_class();

    [self _registerClass:v9 forType:@"com.apple.CRDT.NSDate" cluster:1];
  }
}

+ (void)registerClass:(Class)class forType:(id)type
{
  typeCopy = type;
  [self registerCRClasses];
  [self _registerClass:class forType:typeCopy cluster:0];
}

+ (void)_registerClass:(Class)class forType:(id)type cluster:(BOOL)cluster
{
  clusterCopy = cluster;
  typeCopy = type;
  [sTypeToClassDict setObject:class forKeyedSubscript:?];
  if (clusterCopy)
  {
    [sClusterTypes addObject:typeCopy];
  }

  else
  {
    [sClusterTypes removeObject:typeCopy];
  }

  [sTypeSet addObject:typeCopy];
}

- (unint64_t)typeIndexForClass:(Class)class
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(ICCRCoder *)self typeSet];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    v14 = v6 + v5;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      typeToClassDict = [(ICCRCoder *)self typeToClassDict];
      v11 = [typeToClassDict objectForKeyedSubscript:v9];

      v12 = [sClusterTypes containsObject:v9] ? -[objc_class isSubclassOfClass:](class, "isSubclassOfClass:", v11) : -[objc_class isEqual:](class, "isEqual:", v11);
      if (v12)
      {
        break;
      }

      ++v6;
      if (v5 == ++v8)
      {
        v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
        v6 = v14;
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

@end