@interface UARPAccessoryHardwareHID
- (BOOL)doesMatchVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4;
- (BOOL)isEqual:(id)a3;
- (UARPAccessoryHardwareHID)init;
- (UARPAccessoryHardwareHID)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4;
- (id)description;
@end

@implementation UARPAccessoryHardwareHID

- (UARPAccessoryHardwareHID)init
{
  [(UARPAccessoryHardwareHID *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAccessoryHardwareHID)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4
{
  v12.receiver = self;
  v12.super_class = UARPAccessoryHardwareHID;
  v6 = [(UARPAccessoryHardwareID *)&v12 initWithTransport:1];
  v7 = v6;
  if (v6)
  {
    v6->_vendorID = a3;
    v6->_productID = a4;
    v8 = objc_opt_new();
    personalities = v7->_personalities;
    v7->_personalities = v8;

    v10 = [[UARPAccessoryHIDPersonality alloc] initWithVendorID:v7->_vendorID productID:v7->_productID];
    [(NSMutableSet *)v7->_personalities addObject:v10];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      personalities = self->_personalities;
      v6 = [(UARPAccessoryHardwareHID *)v4 personalities];
      v7 = [(NSMutableSet *)personalities isEqualToSet:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 appendFormat:@"HID, "];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_personalities;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 vendorID];
        v11 = [v9 productID];
        [v3 appendFormat:@"<VID/PID = 0x%04x/0x%04x> ", v10, v11, v15];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithString:v3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)doesMatchVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v20 = *MEMORY[0x277D85DE8];
  if (self->_vendorID == a3 && self->_productID == a4)
  {
    v6 = 1;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_personalities;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 vendorID] != v5 && objc_msgSend(v12, "productID") == v4)
          {
            v6 = 1;
            goto LABEL_15;
          }
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_15:
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

@end