@interface SGRealtimeWalletOrder
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRealtimeWalletOrder:(id)order;
- (NSString)description;
- (SGRealtimeWalletOrder)initWithCoder:(id)coder;
- (id)initRealtimeWalletOrderForState:(int)state identifier:(id)identifier walletOrderDictionary:(id)dictionary walletOrderData:(id)data;
- (id)walletOrderDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGRealtimeWalletOrder

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = self->_identifier;
  state = self->_state;
  walletOrderDictionary = [(SGRealtimeWalletOrder *)self walletOrderDictionary];

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

- (BOOL)isEqualToRealtimeWalletOrder:(id)order
{
  orderCopy = order;
  state = self->_state;
  if (state != [orderCopy state])
  {
    goto LABEL_8;
  }

  v6 = self->_identifier;
  v7 = v6;
  if (v6 == orderCopy[2])
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
  if (v9 == orderCopy[3])
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
  if (v13 == orderCopy[4])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGRealtimeWalletOrder *)self isEqualToRealtimeWalletOrder:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInt32:state forKey:@"state"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_walletOrderDictData forKey:@"walletOrderDictData"];
  [coderCopy encodeObject:self->_walletOrderData forKey:@"walletOrderData"];
}

- (SGRealtimeWalletOrder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SGRealtimeWalletOrder;
  v5 = [(SGRealtimeWalletOrder *)&v16 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeInt32ForKey:@"state"];
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"walletOrderDictData"];
    walletOrderDictData = v5->_walletOrderDictData;
    v5->_walletOrderDictData = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"walletOrderData"];
    walletOrderData = v5->_walletOrderData;
    v5->_walletOrderData = v13;
  }

  return v5;
}

- (id)initRealtimeWalletOrderForState:(int)state identifier:(id)identifier walletOrderDictionary:(id)dictionary walletOrderData:(id)data
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  dataCopy = data;
  if (identifierCopy)
  {
    if (dictionaryCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGRealtimeWalletOrder.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"walletOrderDictionary"}];

    if (dataCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGRealtimeWalletOrder.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!dictionaryCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (dataCopy)
  {
    goto LABEL_4;
  }

LABEL_14:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGRealtimeWalletOrder.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"walletOrderData"}];

LABEL_4:
  v29 = 0;
  v15 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryCopy options:0 error:&v29];
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

    selfCopy = 0;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = SGRealtimeWalletOrder;
    v19 = [(SGRealtimeWalletOrder *)&v28 init];
    v20 = v19;
    if (v19)
    {
      v19->_state = state;
      objc_storeStrong(&v19->_identifier, identifier);
      objc_storeStrong(&v20->_walletOrderDictData, v15);
      objc_storeStrong(&v20->_walletOrderData, data);
      v20->_extractionSource = 0;
    }

    self = v20;
    selfCopy = self;
  }

  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end