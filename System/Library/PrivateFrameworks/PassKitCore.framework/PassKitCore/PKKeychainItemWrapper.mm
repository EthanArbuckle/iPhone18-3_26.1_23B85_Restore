@interface PKKeychainItemWrapper
- (PKKeychainItemWrapper)initWithIdentifier:(id)identifier accessGroup:(id)group serviceName:(id)name type:(unint64_t)type invisible:(BOOL)invisible accessibility:(unint64_t)accessibility;
- (id)dictionaryToSecItemFormat:(id)format;
- (id)secItemFormatToDictionary:(id)dictionary;
- (int)_resetKeychainItem:(BOOL)item;
- (void)applyAccessibilityValueToDictionary:(id)dictionary;
- (void)applySynchronizableValueToDictionary:(id)dictionary;
- (void)setObject:(id)object forKey:(id)key;
- (void)writeToKeychain;
@end

@implementation PKKeychainItemWrapper

- (PKKeychainItemWrapper)initWithIdentifier:(id)identifier accessGroup:(id)group serviceName:(id)name type:(unint64_t)type invisible:(BOOL)invisible accessibility:(unint64_t)accessibility
{
  identifierCopy = identifier;
  groupCopy = group;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = PKKeychainItemWrapper;
  v17 = [(PKKeychainItemWrapper *)&v25 init];
  v18 = v17;
  if (v17)
  {
    v17->_invisible = invisible;
    v17->_accessibility = accessibility;
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    genericPasswordQuery = v18->genericPasswordQuery;
    v18->genericPasswordQuery = v19;

    [(NSMutableDictionary *)v18->genericPasswordQuery setObject:*MEMORY[0x1E697B008] forKey:*MEMORY[0x1E697AFF8]];
    [(NSMutableDictionary *)v18->genericPasswordQuery setObject:identifierCopy forKey:*MEMORY[0x1E697AC30]];
    v18->type = type;
    [(PKKeychainItemWrapper *)v18 applySynchronizableValueToDictionary:v18->genericPasswordQuery];
    if (nameCopy)
    {
      [(NSMutableDictionary *)v18->genericPasswordQuery setObject:nameCopy forKey:*MEMORY[0x1E697AE88]];
    }

    if (groupCopy)
    {
      [(NSMutableDictionary *)v18->genericPasswordQuery setObject:groupCopy forKey:*MEMORY[0x1E697ABD0]];
    }

    [(NSMutableDictionary *)v18->genericPasswordQuery setObject:*MEMORY[0x1E697B270] forKey:*MEMORY[0x1E697B260]];
    [(NSMutableDictionary *)v18->genericPasswordQuery setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697B310]];
    v21 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v18->genericPasswordQuery];
    result = 0;
    if (SecItemCopyMatching(v21, &result) || !result)
    {
      [(PKKeychainItemWrapper *)v18 resetKeychainItem];
    }

    else
    {
      v22 = [(PKKeychainItemWrapper *)v18 secItemFormatToDictionary:?];
      [(PKKeychainItemWrapper *)v18 setKeychainItemData:v22];
    }

    if (result)
    {
      CFRelease(result);
    }
  }

  return v18;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy)
  {
    v7 = [(NSMutableDictionary *)self->keychainItemData objectForKey:keyCopy];
    if (([v7 isEqual:objectCopy] & 1) == 0)
    {
      [(NSMutableDictionary *)self->keychainItemData setObject:objectCopy forKey:keyCopy];
      [(PKKeychainItemWrapper *)self writeToKeychain];
    }
  }
}

- (int)_resetKeychainItem:(BOOL)item
{
  v16 = *MEMORY[0x1E69E9840];
  keychainItemData = self->keychainItemData;
  if (!keychainItemData)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PKKeychainItemWrapper *)self setKeychainItemData:v13];

    return 0;
  }

  itemCopy = item;
  if (![(NSMutableDictionary *)keychainItemData count])
  {
    return 0;
  }

  v6 = [(PKKeychainItemWrapper *)self dictionaryToSecItemFormat:self->keychainItemData];
  v7 = v6;
  if (itemCopy)
  {
    v8 = MEMORY[0x1E695E110];
    [v6 setObject:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E697AEF0]];
    [v7 setObject:v8 forKey:*MEMORY[0x1E697B3B8]];
  }

  v9 = SecItemDelete(v7);
  v10 = v9;
  if (v9 != -25300 && v9 != 0)
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 67109120;
      v15[1] = v10;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Problem deleting current dictionary (%d)", v15, 8u);
    }
  }

  [(NSMutableDictionary *)self->keychainItemData removeAllObjects];

  return v10;
}

- (id)dictionaryToSecItemFormat:(id)format
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:format];
  v5 = *MEMORY[0x1E697AC30];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697AC30]];

  if (!v6)
  {
    v7 = [(NSMutableDictionary *)self->genericPasswordQuery objectForKeyedSubscript:v5];
    [v4 setObject:v7 forKeyedSubscript:v5];
  }

  v8 = *MEMORY[0x1E697ABD0];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697ABD0]];
  if (!v9)
  {
    v10 = [(NSMutableDictionary *)self->genericPasswordQuery objectForKeyedSubscript:v8];

    if (!v10)
    {
      goto LABEL_7;
    }

    v9 = [(NSMutableDictionary *)self->genericPasswordQuery objectForKeyedSubscript:v8];
    [v4 setObject:v9 forKeyedSubscript:v8];
  }

LABEL_7:
  v11 = *MEMORY[0x1E697AE88];
  v12 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697AE88]];
  if (!v12)
  {
    v13 = [(NSMutableDictionary *)self->genericPasswordQuery objectForKeyedSubscript:v11];

    if (!v13)
    {
      goto LABEL_11;
    }

    v12 = [(NSMutableDictionary *)self->genericPasswordQuery objectForKeyedSubscript:v11];
    [v4 setObject:v12 forKeyedSubscript:v11];
  }

LABEL_11:
  [v4 setObject:*MEMORY[0x1E697B008] forKey:*MEMORY[0x1E697AFF8]];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"com.apple.wallet.default.contact";
  }

  [v4 setObject:label forKey:*MEMORY[0x1E697ADC8]];

  return v4;
}

- (id)secItemFormatToDictionary:(id)dictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionary];
  v4 = *MEMORY[0x1E697B318];
  [v3 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697B318]];
  [v3 setObject:*MEMORY[0x1E697B008] forKey:*MEMORY[0x1E697AFF8]];
  result = 0;
  if (SecItemCopyMatching(v3, &result))
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Serious error, no matching item found in the keychain.\n", v7, 2u);
    }
  }

  else
  {
    [v3 setObject:result forKey:*MEMORY[0x1E697B3C0]];
  }

  [v3 removeObjectForKey:v4];
  if (result)
  {
    CFRelease(result);
  }

  return v3;
}

- (void)writeToKeychain
{
  v15 = *MEMORY[0x1E69E9840];
  result = 0;
  if (SecItemCopyMatching(self->genericPasswordQuery, &result))
  {
    v3 = [(PKKeychainItemWrapper *)self dictionaryToSecItemFormat:self->keychainItemData];
    [(PKKeychainItemWrapper *)self applySynchronizableValueToDictionary:v3];
    [(PKKeychainItemWrapper *)self applyAccessibilityValueToDictionary:v3];
    v4 = [(PKKeychainItemWrapper *)self dictionaryToSecItemFormat:v3];
    v5 = SecItemAdd(v4, 0);

    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Couldn't add the Keychain Item (%d)", buf, 8u);
    }
  }

  else
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:result];
    v7 = *MEMORY[0x1E697AFF8];
    v8 = [(NSMutableDictionary *)self->genericPasswordQuery objectForKey:*MEMORY[0x1E697AFF8]];
    [v3 setObject:v8 forKey:v7];

    if (!self->type)
    {
      [v3 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697B390]];
    }

    v6 = [(PKKeychainItemWrapper *)self dictionaryToSecItemFormat:self->keychainItemData];
    [v6 removeObjectForKey:v7];
    [(PKKeychainItemWrapper *)self applySynchronizableValueToDictionary:v6];
    [(PKKeychainItemWrapper *)self applyAccessibilityValueToDictionary:v6];
    v9 = SecItemUpdate(v3, v6);
    if (v9)
    {
      v10 = v9;
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v14 = v10;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Couldn't update the Keychain Item (%d)", buf, 8u);
      }
    }
  }

LABEL_12:
  if (result)
  {
    CFRelease(result);
  }
}

- (void)applySynchronizableValueToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  type = self->type;
  if (type == 2)
  {
    v8 = MEMORY[0x1E697AEB8];
    goto LABEL_7;
  }

  if (type == 1)
  {
    v8 = MEMORY[0x1E695E4D0];
LABEL_7:
    v7 = *v8;
    v6 = *MEMORY[0x1E697AEB0];
    v9 = dictionaryCopy;
    goto LABEL_8;
  }

  if (type)
  {
    goto LABEL_9;
  }

  v9 = dictionaryCopy;
  [dictionaryCopy setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697B390]];
  [v9 setObject:*MEMORY[0x1E695E4C0] forKey:*MEMORY[0x1E697AEB0]];
  v6 = *MEMORY[0x1E697AEC0];
  v7 = &unk_1F23B5960;
LABEL_8:
  [v9 setObject:v7 forKey:v6];
  dictionaryCopy = v9;
LABEL_9:
}

- (void)applyAccessibilityValueToDictionary:(id)dictionary
{
  if (self->_accessibility == 1)
  {
    v3 = MEMORY[0x1E697ABE8];
    if (self->type)
    {
      v3 = MEMORY[0x1E697ABE0];
    }

    [dictionary setObject:*v3 forKey:*MEMORY[0x1E697ABD8]];
  }
}

@end