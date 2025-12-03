@interface CSBluetoothWirelessSplitterInfo
- (BOOL)_hasDeviceTemporaryPairedNotInContacts;
- (BOOL)shouldDisableSpeakerVerificationInSplitterMode;
- (CSBluetoothWirelessSplitterInfo)init;
- (id)description;
- (id)splitterDeviceList;
- (unint64_t)splitterState;
- (void)addDeviceIntoSplitterDeviceList:(id)list;
@end

@implementation CSBluetoothWirelessSplitterInfo

- (BOOL)_hasDeviceTemporaryPairedNotInContacts
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_splitterEnabled)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = self->_splitterDeviceList;
    v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = *v10;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v9 + 1) + 8 * i);
          if ([v6 supportDoAP] & 1) == 0 && (objc_msgSend(v6, "isTemporaryPairedNotInContacts"))
          {
            LOBYTE(v3) = 1;
            goto LABEL_14;
          }
        }

        v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v3)
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
    LOBYTE(v3) = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)shouldDisableSpeakerVerificationInSplitterMode
{
  if (([(CSBluetoothWirelessSplitterInfo *)self splitterState]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return ![(CSBluetoothWirelessSplitterInfo *)self _hasDeviceTemporaryPairedNotInContacts];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)splitterState
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_splitterEnabled)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = self->_splitterDeviceList;
    v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (!v3)
    {

LABEL_16:
      result = 2;
      goto LABEL_17;
    }

    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) supportDoAP] & 1;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);

    if (v5 == 1)
    {
      result = 3;
    }

    else
    {
      result = 4;
    }

    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = 1;
  }

LABEL_17:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)addDeviceIntoSplitterDeviceList:(id)list
{
  if (list)
  {
    [(NSMutableArray *)self->_splitterDeviceList addObject:?];
  }
}

- (id)splitterDeviceList
{
  v2 = [(NSMutableArray *)self->_splitterDeviceList copy];

  return v2;
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"[SplitterEnabled(%d)]", self->_splitterEnabled];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_splitterDeviceList;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        address = [v10 address];
        [string appendFormat:@"[Device%d(%@) DoAP(%d)]", v8, address, objc_msgSend(v10, "supportDoAP")];

        v8 = (v8 + 1);
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [string appendFormat:@"[SplitterState:%d]", -[CSBluetoothWirelessSplitterInfo splitterState](self, "splitterState")];
  v12 = *MEMORY[0x1E69E9840];

  return string;
}

- (CSBluetoothWirelessSplitterInfo)init
{
  v6.receiver = self;
  v6.super_class = CSBluetoothWirelessSplitterInfo;
  v2 = [(CSBluetoothWirelessSplitterInfo *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    splitterDeviceList = v2->_splitterDeviceList;
    v2->_splitterDeviceList = array;
  }

  return v2;
}

@end