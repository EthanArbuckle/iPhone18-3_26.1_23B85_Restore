@interface HMDNetworkActivityWrapper
- (BOOL)isActivated;
- (HMDNetworkActivityWrapper)initWithLabel:(unint64_t)a3;
- (HMDNetworkActivityWrapper)parent;
- (NSSet)children;
- (id)childActivityWithLabel:(unint64_t)a3 createIfNeeded:(BOOL)a4;
- (unint64_t)label;
- (void)activate;
- (void)completeWithSuccess:(BOOL)a3;
- (void)setParent:(id)a3;
- (void)submitMetrics:(id)a3 withName:(id)a4;
@end

@implementation HMDNetworkActivityWrapper

- (HMDNetworkActivityWrapper)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (id)childActivityWithLabel:(unint64_t)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(HMDNetworkActivityWrapper *)self mutableChildren];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 label] == a3)
        {
          v13 = v12;

          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (v4)
  {
    v13 = [[HMDNetworkActivityWrapper alloc] initWithLabel:a3];
    [(HMDNetworkActivityWrapper *)v13 setParent:self];
  }

  else
  {
    v13 = 0;
  }

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)submitMetrics:(id)a3 withName:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_completed)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Attempted to submit metrics after completion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__HMDNetworkActivityWrapper_submitMetrics_withName___block_invoke;
    v16[3] = &unk_279735048;
    v17 = v12;
    v13 = v12;
    [v6 enumerateKeysAndObjectsUsingBlock:v16];
    v14 = [(HMDNetworkActivityWrapper *)self activity];
    [v7 UTF8String];
    nw_activity_submit_metrics();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __52__HMDNetworkActivityWrapper_submitMetrics_withName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v7)
  {
    v11 = *(a1 + 32);
    v12 = [v14 UTF8String];
    [v7 doubleValue];
    xpc_dictionary_set_double(v11, v12, v13);
  }

  else if (v10)
  {
    xpc_dictionary_set_string(*(a1 + 32), [v14 UTF8String], objc_msgSend(v10, "UTF8String"));
  }
}

- (void)completeWithSuccess:(BOOL)a3
{
  if (!self->_completed)
  {
    self->_completed = 1;
    v4 = [(HMDNetworkActivityWrapper *)self activity];
    nw_activity_complete_with_reason();
  }
}

- (void)setParent:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_parent, v4);
  v5 = [(HMDNetworkActivityWrapper *)self activity];
  v6 = [v4 activity];
  nw_activity_set_parent_activity();

  v7 = [v4 mutableChildren];

  [v7 addObject:self];
}

- (void)activate
{
  v2 = [(HMDNetworkActivityWrapper *)self activity];
  nw_activity_activate();
}

- (NSSet)children
{
  v2 = [(HMDNetworkActivityWrapper *)self mutableChildren];
  v3 = [v2 copy];

  return v3;
}

- (unint64_t)label
{
  v2 = [(HMDNetworkActivityWrapper *)self activity];
  label = nw_activity_get_label();

  return label;
}

- (BOOL)isActivated
{
  v2 = [(HMDNetworkActivityWrapper *)self activity];
  is_activated = nw_activity_is_activated();

  return is_activated;
}

- (HMDNetworkActivityWrapper)initWithLabel:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = HMDNetworkActivityWrapper;
  v3 = [(HMDNetworkActivityWrapper *)&v9 init];
  if (v3)
  {
    v4 = nw_activity_create();
    activity = v3->_activity;
    v3->_activity = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mutableChildren = v3->_mutableChildren;
    v3->_mutableChildren = v6;

    v3->_completed = 0;
  }

  return v3;
}

@end