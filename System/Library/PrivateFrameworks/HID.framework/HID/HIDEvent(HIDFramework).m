@interface HIDEvent(HIDFramework)
- (id)serialize:()HIDFramework error:;
- (uint64_t)initWithBytes:()HIDFramework length:;
- (uint64_t)initWithData:()HIDFramework;
- (uint64_t)isEqual:()HIDFramework;
- (void)initWithType:()HIDFramework timestamp:senderID:;
- (void)removeAllEvents;
@end

@implementation HIDEvent(HIDFramework)

- (void)initWithType:()HIDFramework timestamp:senderID:
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = IOHIDEventCreate();

  if (v3)
  {
    IOHIDEventSetSenderID();
    v4 = v3;
  }

  return v3;
}

- (uint64_t)initWithData:()HIDFramework
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = IOHIDEventCreateWithData();

  return v3;
}

- (uint64_t)initWithBytes:()HIDFramework length:
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = IOHIDEventCreateWithBytes();

  return v3;
}

- (uint64_t)isEqual:()HIDFramework
{
  v4 = a3;
  if (a1 == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 isEqualToHIDEvent:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)serialize:()HIDFramework error:
{
  if (a3)
  {
    Data = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *MEMORY[0x277CBECE8];
    Data = IOHIDEventCreateData();
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!Data)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithIOReturn:3758097084];
  }

LABEL_7:

  return Data;
}

- (void)removeAllEvents
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [a1 children];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        IOHIDEventRemoveEvent();
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end