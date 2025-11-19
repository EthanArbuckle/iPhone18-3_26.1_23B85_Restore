@interface SGRealtimeWalletOrder
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRealtimeWalletOrder:(id)a3;
- (NSString)description;
- (SGRealtimeWalletOrder)initWithCoder:(id)a3;
- (id)initRealtimeWalletOrderForState:(int)a3 identifier:(id)a4 walletOrderDictionary:(id)a5 walletOrderData:(id)a6;
- (id)walletOrderDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGRealtimeWalletOrder

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = self->_identifier;
  state = self->_state;
  v6 = [(SGRealtimeWalletOrder *)self walletOrderDictionary];

  return v7;
}

- (id)walletOrderDictionary
{
  v14 = *MEMORY[0x1E69E9840];
  walletOrderDictData = self->_walletOrderDictData;
  if (walletOrderDictData)
  {
    v11 = 0;
    v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:walletOrderDictData options:0 error:&v11];
    v4 = v11;
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = v4;
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412290;
      v13 = v10;
      _os_log_error_impl(&dword_1BA729000, v6, OS_LOG_TYPE_ERROR, "%@: Error encountered while retrieving string from NSData", buf, 0xCu);
    }
  }

  v3 = 0;
LABEL_7:
  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqualToRealtimeWalletOrder:(id)a3
{
  v4 = a3;
  state = self->_state;
  if (state != [v4 state])
  {
    goto LABEL_8;
  }

  v6 = self->_identifier;
  v7 = v6;
  if (v6 == v4[2])
  {
  }

  else
  {
    v8 = [(NSString *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v9 = self->_walletOrderDictData;
  v10 = v9;
  if (v9 == v4[3])
  {
  }

  else
  {
    v11 = [(NSData *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
LABEL_8:
      v12 = 0;
      goto LABEL_14;
    }
  }

  v13 = self->_walletOrderData;
  v14 = v13;
  if (v13 == v4[4])
  {
    v12 = 1;
  }

  else
  {
    v12 = [(NSData *)v13 isEqual:?];
  }

LABEL_14:
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGRealtimeWalletOrder *)self isEqualToRealtimeWalletOrder:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInt32:state forKey:@"state"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_walletOrderDictData forKey:@"walletOrderDictData"];
  [v5 encodeObject:self->_walletOrderData forKey:@"walletOrderData"];
}

- (SGRealtimeWalletOrder)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SGRealtimeWalletOrder;
  v5 = [(SGRealtimeWalletOrder *)&v16 init];
  if (v5)
  {
    v5->_state = [v4 decodeInt32ForKey:@"state"];
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"walletOrderDictData"];
    walletOrderDictData = v5->_walletOrderDictData;
    v5->_walletOrderDictData = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"walletOrderData"];
    walletOrderData = v5->_walletOrderData;
    v5->_walletOrderData = v13;
  }

  return v5;
}

- (id)initRealtimeWalletOrderForState:(int)a3 identifier:(id)a4 walletOrderDictionary:(id)a5 walletOrderData:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_13:
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"SGRealtimeWalletOrder.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"walletOrderDictionary"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"SGRealtimeWalletOrder.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_14:
  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"SGRealtimeWalletOrder.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"walletOrderData"}];

LABEL_4:
  v29 = 0;
  v15 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:0 error:&v29];
  v16 = v29;
  if (v16)
  {
    v17 = sgLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412546;
      v31 = v24;
      v32 = 2112;
      v33 = v16;
      _os_log_error_impl(&dword_1BA729000, v17, OS_LOG_TYPE_ERROR, "%@: Error encountered while retrieving NSData from dictionary: %@", buf, 0x16u);
    }

    v18 = 0;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = SGRealtimeWalletOrder;
    v19 = [(SGRealtimeWalletOrder *)&v28 init];
    v20 = v19;
    if (v19)
    {
      v19->_state = a3;
      objc_storeStrong(&v19->_identifier, a4);
      objc_storeStrong(&v20->_walletOrderDictData, v15);
      objc_storeStrong(&v20->_walletOrderData, a6);
      v20->_extractionSource = 0;
    }

    self = v20;
    v18 = self;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

@end