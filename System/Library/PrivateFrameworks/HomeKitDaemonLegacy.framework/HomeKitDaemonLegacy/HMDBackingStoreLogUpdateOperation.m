@interface HMDBackingStoreLogUpdateOperation
- (HMDBackingStoreLogUpdateOperation)initWithRowIDs:(id)a3 mask:(int64_t)a4 set:(int64_t)a5;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreLogUpdateOperation

- (id)mainReturningError
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDBackingStoreOperation *)self store];
  v4 = [v3 local];
  v5 = [v4 _begin];

  if (!v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(HMDBackingStoreLogUpdateOperation *)self values];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v5 = 0;
      v9 = *v20;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (v5)
        {
          break;
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [(HMDBackingStoreOperation *)self store];
        v13 = [v12 local];
        v5 = [v13 _updateLog:objc_msgSend(v11 mask:"unsignedIntegerValue") set:{-[HMDBackingStoreLogUpdateOperation maskValue](self, "maskValue"), -[HMDBackingStoreLogUpdateOperation setValue](self, "setValue")}];

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          if (!v5)
          {
            goto LABEL_15;
          }

LABEL_13:
          v14 = [(HMDBackingStoreOperation *)self store];
          v15 = [v14 local];
          [v15 _rollback];
          goto LABEL_16;
        }
      }

      goto LABEL_13;
    }

LABEL_15:
    v14 = [(HMDBackingStoreOperation *)self store];
    v15 = [v14 local];
    v5 = [v15 _commit];
LABEL_16:
  }

  v16 = v5;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HMDBackingStoreLogUpdateOperation)initWithRowIDs:(id)a3 mask:(int64_t)a4 set:(int64_t)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreLogUpdateOperation;
  v10 = [(HMDBackingStoreOperation *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_values, a3);
    v11->_maskValue = a4;
    v11->_setValue = a5;
    v12 = v11;
  }

  return v11;
}

@end