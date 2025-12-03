@interface HMDAccessoryQueues
- (BOOL)_inQueue:(id)queue queue:(id)a4;
- (BOOL)createQueue:(id)queue;
- (HMDAccessoryQueues)init;
- (id)getAccessoryForContext:(id)context fromQueue:(id)queue;
- (id)getContextForAccessory:(id)accessory;
- (id)popAccessoryFromQueue:(id)queue;
- (id)whichQueueForAccessory:(id)accessory;
- (int)countForQueue:(id)queue;
- (void)addAccessory:(id)accessory toQueue:(id)queue context:(id)context;
- (void)enumerateQueue:(id)queue enumerateAccessory:(id)accessory;
- (void)removeAccessory:(id)accessory;
@end

@implementation HMDAccessoryQueues

- (id)getAccessoryForContext:(id)context fromQueue:(id)queue
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  if (queueCopy)
  {
    queues = [(HMDAccessoryQueues *)self queues];
    v9 = [queues objectForKey:queueCopy];

    if (v9)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v9;
      accessory = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (accessory)
      {
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != accessory; i = i + 1)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            context = [v14 context];
            v16 = [context isEqual:contextCopy];

            if (v16)
            {
              accessory = [v14 accessory];
              goto LABEL_14;
            }
          }

          accessory = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (accessory)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      accessory = 0;
    }
  }

  else
  {
    accessory = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return accessory;
}

- (int)countForQueue:(id)queue
{
  queueCopy = queue;
  queues = [(HMDAccessoryQueues *)self queues];
  v6 = [queues objectForKey:queueCopy];

  if (v6)
  {
    v7 = [v6 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)whichQueueForAccessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (accessoryCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    queues = [(HMDAccessoryQueues *)self queues];
    v6 = [queues countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(queues);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          queues2 = [(HMDAccessoryQueues *)self queues];
          v12 = [queues2 objectForKey:v10];

          if ([(HMDAccessoryQueues *)self _inQueue:accessoryCopy queue:v12])
          {
            v13 = v10;

            goto LABEL_12;
          }
        }

        v7 = [queues countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)_inQueue:(id)queue queue:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v6 = a4;
  if ([v6 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          accessory = [*(*(&v15 + 1) + 8 * i) accessory];
          v12 = [accessory isEqual:queueCopy];

          if (v12)
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)popAccessoryFromQueue:(id)queue
{
  if (queue)
  {
    queueCopy = queue;
    queues = [(HMDAccessoryQueues *)self queues];
    v6 = [queues objectForKey:queueCopy];

    if (v6 && [v6 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      accessory = [v7 accessory];
      [(HMDAccessoryQueues *)self removeAccessory:accessory];

      accessory2 = [v7 accessory];
    }

    else
    {
      accessory2 = 0;
    }
  }

  else
  {
    accessory2 = 0;
  }

  return accessory2;
}

- (void)removeAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = [(HMDAccessoryQueues *)self whichQueueForAccessory:accessoryCopy];
  if (v5)
  {
    queues = [(HMDAccessoryQueues *)self queues];
    v7 = [queues objectForKey:v5];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          accessory = [v13 accessory];
          v15 = [accessory isEqual:accessoryCopy];

          if (v15)
          {
            [v8 removeObject:v13];
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)getContextForAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = [(HMDAccessoryQueues *)self whichQueueForAccessory:accessoryCopy];
  if (v5)
  {
    queues = [(HMDAccessoryQueues *)self queues];
    v7 = [queues objectForKey:v5];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    context = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (context)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != context; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          accessory = [v12 accessory];
          v14 = [accessory isEqual:accessoryCopy];

          if (v14)
          {
            context = [v12 context];
            goto LABEL_12;
          }
        }

        context = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (context)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    context = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return context;
}

- (void)addAccessory:(id)accessory toQueue:(id)queue context:(id)context
{
  accessoryCopy = accessory;
  contextCopy = context;
  if (accessoryCopy && queue)
  {
    queueCopy = queue;
    queues = [(HMDAccessoryQueues *)self queues];
    v11 = [queues objectForKey:queueCopy];

    if (v11)
    {
      v12 = [[HMDAccessoryBundle alloc] initWithAccessory:accessoryCopy context:contextCopy];
      [v11 addObject:v12];
    }
  }
}

- (BOOL)createQueue:(id)queue
{
  queueCopy = queue;
  queues = [(HMDAccessoryQueues *)self queues];
  v6 = [queues objectForKey:queueCopy];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queues2 = [(HMDAccessoryQueues *)self queues];
    [queues2 setObject:v7 forKey:queueCopy];
  }

  return v6 == 0;
}

- (HMDAccessoryQueues)init
{
  v5.receiver = self;
  v5.super_class = HMDAccessoryQueues;
  v2 = [(HMDAccessoryQueues *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(HMDAccessoryQueues *)v2 setQueues:v3];
  }

  return v2;
}

- (void)enumerateQueue:(id)queue enumerateAccessory:(id)accessory
{
  v25 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  accessoryCopy = accessory;
  if (queueCopy)
  {
    queues = [(HMDAccessoryQueues *)self queues];
    v9 = [queues objectForKey:queueCopy];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        accessory = [v15 accessory];
        context = [v15 context];
        v18 = accessoryCopy[2](accessoryCopy, accessory, context);

        if (v18)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end