@interface HMDAccessoryQueues
- (BOOL)_inQueue:(id)a3 queue:(id)a4;
- (BOOL)createQueue:(id)a3;
- (HMDAccessoryQueues)init;
- (id)getAccessoryForContext:(id)a3 fromQueue:(id)a4;
- (id)getContextForAccessory:(id)a3;
- (id)popAccessoryFromQueue:(id)a3;
- (id)whichQueueForAccessory:(id)a3;
- (int)countForQueue:(id)a3;
- (void)addAccessory:(id)a3 toQueue:(id)a4 context:(id)a5;
- (void)enumerateQueue:(id)a3 enumerateAccessory:(id)a4;
- (void)removeAccessory:(id)a3;
@end

@implementation HMDAccessoryQueues

- (id)getAccessoryForContext:(id)a3 fromQueue:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(HMDAccessoryQueues *)self queues];
    v9 = [v8 objectForKey:v7];

    if (v9)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = [v14 context];
            v16 = [v15 isEqual:v6];

            if (v16)
            {
              v11 = [v14 accessory];
              goto LABEL_14;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
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
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (int)countForQueue:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryQueues *)self queues];
  v6 = [v5 objectForKey:v4];

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

- (id)whichQueueForAccessory:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(HMDAccessoryQueues *)self queues];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [(HMDAccessoryQueues *)self queues];
          v12 = [v11 objectForKey:v10];

          if ([(HMDAccessoryQueues *)self _inQueue:v4 queue:v12])
          {
            v13 = v10;

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)_inQueue:(id)a3 queue:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
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

          v11 = [*(*(&v15 + 1) + 8 * i) accessory];
          v12 = [v11 isEqual:v5];

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

- (id)popAccessoryFromQueue:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HMDAccessoryQueues *)self queues];
    v6 = [v5 objectForKey:v4];

    if (v6 && [v6 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v7 accessory];
      [(HMDAccessoryQueues *)self removeAccessory:v8];

      v9 = [v7 accessory];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)removeAccessory:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryQueues *)self whichQueueForAccessory:v4];
  if (v5)
  {
    v6 = [(HMDAccessoryQueues *)self queues];
    v7 = [v6 objectForKey:v5];

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
          v14 = [v13 accessory];
          v15 = [v14 isEqual:v4];

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

- (id)getContextForAccessory:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryQueues *)self whichQueueForAccessory:v4];
  if (v5)
  {
    v6 = [(HMDAccessoryQueues *)self queues];
    v7 = [v6 objectForKey:v5];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 accessory];
          v14 = [v13 isEqual:v4];

          if (v14)
          {
            v9 = [v12 context];
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
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
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)addAccessory:(id)a3 toQueue:(id)a4 context:(id)a5
{
  v13 = a3;
  v8 = a5;
  if (v13 && a4)
  {
    v9 = a4;
    v10 = [(HMDAccessoryQueues *)self queues];
    v11 = [v10 objectForKey:v9];

    if (v11)
    {
      v12 = [[HMDAccessoryBundle alloc] initWithAccessory:v13 context:v8];
      [v11 addObject:v12];
    }
  }
}

- (BOOL)createQueue:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryQueues *)self queues];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [(HMDAccessoryQueues *)self queues];
    [v8 setObject:v7 forKey:v4];
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

- (void)enumerateQueue:(id)a3 enumerateAccessory:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HMDAccessoryQueues *)self queues];
    v9 = [v8 objectForKey:v6];

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
        v16 = [v15 accessory];
        v17 = [v15 context];
        v18 = v7[2](v7, v16, v17);

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