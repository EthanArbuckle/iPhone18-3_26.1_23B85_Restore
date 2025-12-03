@interface HMDBackingStoreLogUpdateOperation
- (HMDBackingStoreLogUpdateOperation)initWithRowIDs:(id)ds mask:(int64_t)mask set:(int64_t)set;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreLogUpdateOperation

- (id)mainReturningError
{
  v24 = *MEMORY[0x277D85DE8];
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  _begin = [local _begin];

  if (!_begin)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    values = [(HMDBackingStoreLogUpdateOperation *)self values];
    v7 = [values countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      _begin = 0;
      v9 = *v20;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(values);
        }

        if (_begin)
        {
          break;
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        store2 = [(HMDBackingStoreOperation *)self store];
        local2 = [store2 local];
        _begin = [local2 _updateLog:objc_msgSend(v11 mask:"unsignedIntegerValue") set:{-[HMDBackingStoreLogUpdateOperation maskValue](self, "maskValue"), -[HMDBackingStoreLogUpdateOperation setValue](self, "setValue")}];

        if (v8 == ++v10)
        {
          v8 = [values countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          if (!_begin)
          {
            goto LABEL_15;
          }

LABEL_13:
          store3 = [(HMDBackingStoreOperation *)self store];
          local3 = [store3 local];
          [local3 _rollback];
          goto LABEL_16;
        }
      }

      goto LABEL_13;
    }

LABEL_15:
    store3 = [(HMDBackingStoreOperation *)self store];
    local3 = [store3 local];
    _begin = [local3 _commit];
LABEL_16:
  }

  v16 = _begin;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HMDBackingStoreLogUpdateOperation)initWithRowIDs:(id)ds mask:(int64_t)mask set:(int64_t)set
{
  dsCopy = ds;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreLogUpdateOperation;
  v10 = [(HMDBackingStoreOperation *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_values, ds);
    v11->_maskValue = mask;
    v11->_setValue = set;
    v12 = v11;
  }

  return v11;
}

@end