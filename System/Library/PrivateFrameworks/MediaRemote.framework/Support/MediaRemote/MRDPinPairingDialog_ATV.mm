@interface MRDPinPairingDialog_ATV
- (MRDPinPairingDialog_ATV)init;
- (void)closeAll;
- (void)dealloc;
- (void)showWithPin:(id)a3 forClient:(id)a4;
@end

@implementation MRDPinPairingDialog_ATV

- (MRDPinPairingDialog_ATV)init
{
  v6.receiver = self;
  v6.super_class = MRDPinPairingDialog_ATV;
  v2 = [(MRDPinPairingDialog_ATV *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    clients = v2->_clients;
    v2->_clients = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(MRDPinPairingDialog_ATV *)self closeAll];
  v3.receiver = self;
  v3.super_class = MRDPinPairingDialog_ATV;
  [(MRDPinPairingDialog_ATV *)&v3 dealloc];
}

- (void)showWithPin:(id)a3 forClient:(id)a4
{
  v16 = a3;
  if (!self->_titleKey)
  {
    v5 = MSVWeakLinkStringConstant();
    titleKey = self->_titleKey;
    self->_titleKey = v5;

    v7 = MSVWeakLinkStringConstant();
    pinKey = self->_pinKey;
    self->_pinKey = v7;

    v9 = MSVWeakLinkStringConstant();
    messageKey = self->_messageKey;
    self->_messageKey = v9;

    v11 = MSVWeakLinkStringConstant();
    timeoutKey = self->_timeoutKey;
    self->_timeoutKey = v11;
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = MRLocalizedString();
  [v13 setObject:v14 forKey:self->_titleKey];

  [v13 setObject:v16 forKey:self->_pinKey];
  v15 = MRLocalizedString();
  [v13 setObject:v15 forKey:self->_messageKey];

  [v13 setObject:&off_1004E0500 forKey:self->_timeoutKey];
}

- (void)closeAll
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_clients;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setPinPairingToken:{0, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_clients removeAllObjects];
}

@end