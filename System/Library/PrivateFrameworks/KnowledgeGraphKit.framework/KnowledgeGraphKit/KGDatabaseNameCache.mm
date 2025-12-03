@interface KGDatabaseNameCache
- (KGDatabaseNameCache)init;
- (id)attrIdentifierForPropertyName:(id)name database:(id)database updating:(BOOL)updating error:(id *)error;
- (id)labelIdentifierForName:(id)name database:(id)database updating:(BOOL)updating error:(id *)error;
- (id)labelNameForIdentifier:(id)identifier database:(id)database;
- (id)propertyNameForIdentifier:(id)identifier database:(id)database;
- (void)_addLabelName:(id)name identifier:(id)identifier database:(id)database;
- (void)_addPropertyName:(id)name identifier:(id)identifier database:(id)database;
- (void)_loadCacheIfNeeded:(id)needed;
- (void)internal_unloadCache;
- (void)setInvalid;
- (void)transactionBegin;
- (void)transactionEnd;
- (void)unloadCache;
@end

@implementation KGDatabaseNameCache

- (void)unloadCache
{
  os_unfair_lock_lock(&self->_lock);
  [(KGDatabaseNameCache *)self internal_unloadCache];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)internal_unloadCache
{
  if (self->_loaded)
  {
    [(NSMutableDictionary *)self->_labelIdByName removeAllObjects];
    [(NSMutableDictionary *)self->_labelNameById removeAllObjects];
    [(NSMutableDictionary *)self->_attrIdByPropertyName removeAllObjects];
    [(NSMutableDictionary *)self->_propertyNameByAttrId removeAllObjects];
    self->_loaded = 0;
    self->_loadedInThisTransaction = 0;
    self->_highestLabelId = 0;
    self->_highestAttrId = 0;
  }
}

- (void)_loadCacheIfNeeded:(id)needed
{
  neededCopy = needed;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_loaded)
  {
    degas::LabelCursor::LabelCursor(v21, self->_highestLabelId, ([neededCopy database] + 80), 5);
    while (degas::Statement::next(v21[0]) == 1)
    {
      v5 = sqlite3_column_int64(*v21[0], 0);
      v6 = v5;
      if (v5 > self->_highestLabelId)
      {
        self->_highestLabelId = v5;
      }

      __p = 0;
      v19 = 0;
      v20 = 0;
      degas::Statement::stringColumnValue(v21[0], 1, &__p);
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v20 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v9 = [v7 initWithUTF8String:p_p];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
      [(KGDatabaseNameCache *)self _addLabelName:v9 identifier:v10 database:neededCopy];

      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p);
      }
    }

    degas::AttributeCursor::AttributeCursor(v17, self->_highestAttrId, ([neededCopy database] + 304), 5);
    while (degas::Statement::next(v17[0]) == 1)
    {
      v11 = sqlite3_column_int64(*v17[0], 0);
      v12 = v11;
      if (v11 > self->_highestAttrId)
      {
        self->_highestAttrId = v11;
      }

      __p = 0;
      v19 = 0;
      v20 = 0;
      degas::Statement::stringColumnValue(v17[0], 1, &__p);
      v13 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v20 >= 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      v15 = [v13 initWithUTF8String:v14];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
      [(KGDatabaseNameCache *)self _addPropertyName:v15 identifier:v16 database:neededCopy];

      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p);
      }
    }

    self->_loaded = 1;
    self->_loadedInThisTransaction = self->_isInTransaction;
    degas::Cursor::~Cursor(v17);
    degas::Cursor::~Cursor(v21);
  }
}

- (void)_addPropertyName:(id)name identifier:(id)identifier database:(id)database
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  databaseCopy = database;
  os_unfair_lock_assert_owner(&self->_lock);
  v11 = [(NSMutableDictionary *)self->_propertyNameByAttrId objectForKeyedSubscript:identifierCopy];
  v12 = v11;
  if (!v11)
  {
LABEL_6:
    [(NSMutableDictionary *)self->_propertyNameByAttrId setObject:nameCopy forKeyedSubscript:identifierCopy];
    v14 = [(NSMutableDictionary *)self->_attrIdByPropertyName objectForKeyedSubscript:nameCopy];
    v15 = v14;
    if (v14 && ([v14 isEqualToNumber:identifierCopy]& 1) == 0)
    {
      [databaseCopy setFatalError:@"duplicate property"];
      v16 = KGLoggingConnection();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v18 = [(NSMutableDictionary *)self->_attrIdByPropertyName objectForKeyedSubscript:nameCopy];
        v19 = 138543874;
        v20 = identifierCopy;
        v21 = 2114;
        v22 = v18;
        v23 = 2114;
        v24 = nameCopy;
        _os_log_fault_impl(&dword_255870000, v16, OS_LOG_TYPE_FAULT, "duplicate property by identifiers %{public}@ and %{public}@, name %{public}@", &v19, 0x20u);
      }
    }

    [(NSMutableDictionary *)self->_attrIdByPropertyName setObject:identifierCopy forKeyedSubscript:nameCopy];
    goto LABEL_14;
  }

  if ([v11 isEqualToString:nameCopy])
  {
    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543618;
      v20 = nameCopy;
      v21 = 2114;
      v22 = identifierCopy;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "redundant insert of property in cache name=%{public}@, identifier=%{public}@", &v19, 0x16u);
    }

    goto LABEL_6;
  }

  [databaseCopy setFatalError:@"duplicate property"];
  v15 = KGLoggingConnection();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    v19 = 138543874;
    v20 = nameCopy;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = identifierCopy;
    _os_log_fault_impl(&dword_255870000, v15, OS_LOG_TYPE_FAULT, "duplicate property by name=%{public}@, other name=%{public}@, identifier %{public}@", &v19, 0x20u);
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_addLabelName:(id)name identifier:(id)identifier database:(id)database
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  databaseCopy = database;
  os_unfair_lock_assert_owner(&self->_lock);
  v11 = [(NSMutableDictionary *)self->_labelNameById objectForKeyedSubscript:identifierCopy];
  v12 = v11;
  if (!v11)
  {
LABEL_6:
    [(NSMutableDictionary *)self->_labelNameById setObject:nameCopy forKeyedSubscript:identifierCopy];
    v14 = [(NSMutableDictionary *)self->_labelIdByName objectForKeyedSubscript:nameCopy];
    v15 = v14;
    if (v14 && ([v14 isEqualToNumber:identifierCopy]& 1) == 0)
    {
      [databaseCopy setFatalError:@"duplicate label"];
      v16 = KGLoggingConnection();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v18 = 138543874;
        v19 = identifierCopy;
        v20 = 2114;
        v21 = v15;
        v22 = 2114;
        v23 = nameCopy;
        _os_log_fault_impl(&dword_255870000, v16, OS_LOG_TYPE_FAULT, "duplicate label by identifiers %{public}@ and %{public}@, name %{public}@", &v18, 0x20u);
      }
    }

    [(NSMutableDictionary *)self->_labelIdByName setObject:identifierCopy forKeyedSubscript:nameCopy];
    goto LABEL_14;
  }

  if (([v11 isEqualToString:nameCopy]& 1) != 0)
  {
    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = nameCopy;
      v20 = 2114;
      v21 = identifierCopy;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "redundant insert of label in cache name=%{public}@, identifier=%{public}@", &v18, 0x16u);
    }

    goto LABEL_6;
  }

  [databaseCopy setFatalError:@"duplicate label"];
  v15 = KGLoggingConnection();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    v18 = 138543874;
    v19 = nameCopy;
    v20 = 2114;
    v21 = v12;
    v22 = 2114;
    v23 = identifierCopy;
    _os_log_fault_impl(&dword_255870000, v15, OS_LOG_TYPE_FAULT, "duplicate label by name=%{public}@, other name=%{public}@, identifier %{public}@", &v18, 0x20u);
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)propertyNameForIdentifier:(id)identifier database:(id)database
{
  identifierCopy = identifier;
  databaseCopy = database;
  os_unfair_lock_lock(&self->_lock);
  [(KGDatabaseNameCache *)self _loadCacheIfNeeded:databaseCopy];
  v8 = [(NSMutableDictionary *)self->_propertyNameByAttrId objectForKeyedSubscript:identifierCopy];
  v9 = v8;
  if (self->_readOnly && !v8)
  {
    if (self->_isInTransaction && !self->_loadedInThisTransaction)
    {
      self->_loaded = 0;
      [(KGDatabaseNameCache *)self _loadCacheIfNeeded:databaseCopy];
      v9 = [(NSMutableDictionary *)self->_propertyNameByAttrId objectForKeyedSubscript:identifierCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)attrIdentifierForPropertyName:(id)name database:(id)database updating:(BOOL)updating error:(id *)error
{
  updatingCopy = updating;
  nameCopy = name;
  databaseCopy = database;
  readOnly = self->_readOnly;
  os_unfair_lock_lock(&self->_lock);
  [(KGDatabaseNameCache *)self _loadCacheIfNeeded:databaseCopy];
  v13 = [(NSMutableDictionary *)self->_attrIdByPropertyName objectForKeyedSubscript:nameCopy];
  v14 = v13;
  if (self->_readOnly && !v13)
  {
    if (self->_isInTransaction && !self->_loadedInThisTransaction)
    {
      self->_loaded = 0;
      [(KGDatabaseNameCache *)self _loadCacheIfNeeded:databaseCopy];
      v14 = [(NSMutableDictionary *)self->_attrIdByPropertyName objectForKeyedSubscript:nameCopy];
      if (v14)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    v14 = 0;
  }

  if (v14)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (updatingCopy && !readOnly)
  {
    v15 = [databaseCopy insertNewProperty:nameCopy error:error];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
    [(KGDatabaseNameCache *)self _addPropertyName:nameCopy identifier:v16 database:databaseCopy];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
  }

LABEL_10:
  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

- (id)labelNameForIdentifier:(id)identifier database:(id)database
{
  identifierCopy = identifier;
  databaseCopy = database;
  os_unfair_lock_lock(&self->_lock);
  [(KGDatabaseNameCache *)self _loadCacheIfNeeded:databaseCopy];
  v8 = [(NSMutableDictionary *)self->_labelNameById objectForKeyedSubscript:identifierCopy];
  v9 = v8;
  if (self->_readOnly && !v8)
  {
    if (self->_isInTransaction && !self->_loadedInThisTransaction)
    {
      self->_loaded = 0;
      [(KGDatabaseNameCache *)self _loadCacheIfNeeded:databaseCopy];
      v9 = [(NSMutableDictionary *)self->_labelNameById objectForKeyedSubscript:identifierCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)labelIdentifierForName:(id)name database:(id)database updating:(BOOL)updating error:(id *)error
{
  updatingCopy = updating;
  nameCopy = name;
  databaseCopy = database;
  readOnly = self->_readOnly;
  os_unfair_lock_lock(&self->_lock);
  [(KGDatabaseNameCache *)self _loadCacheIfNeeded:databaseCopy];
  v13 = [(NSMutableDictionary *)self->_labelIdByName objectForKeyedSubscript:nameCopy];
  v14 = v13;
  if (self->_readOnly && !v13)
  {
    if (self->_isInTransaction && !self->_loadedInThisTransaction)
    {
      self->_loaded = 0;
      [(KGDatabaseNameCache *)self _loadCacheIfNeeded:databaseCopy];
      v14 = [(NSMutableDictionary *)self->_labelIdByName objectForKeyedSubscript:nameCopy];
      if (v14)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    v14 = 0;
  }

  if (v14)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (updatingCopy && !readOnly)
  {
    v15 = [databaseCopy insertNewLabel:nameCopy error:error];
    if (v15)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
      [(KGDatabaseNameCache *)self _addLabelName:nameCopy identifier:v16 database:databaseCopy];

      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_12:
  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

- (void)setInvalid
{
  os_unfair_lock_lock(&self->_lock);
  self->_clearNeeded = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)transactionEnd
{
  os_unfair_lock_lock(&self->_lock);
  *&self->_isInTransaction = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)transactionBegin
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_isInTransaction && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "KGDatabase name cache: transactionBegin is not reentrant", v3, 2u);
  }

  *&self->_isInTransaction = 1;
  if (self->_clearNeeded)
  {
    [(KGDatabaseNameCache *)self internal_unloadCache];
    self->_clearNeeded = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (KGDatabaseNameCache)init
{
  v13.receiver = self;
  v13.super_class = KGDatabaseNameCache;
  v2 = [(KGDatabaseNameCache *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_loaded = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    labelIdByName = v3->_labelIdByName;
    v3->_labelIdByName = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    labelNameById = v3->_labelNameById;
    v3->_labelNameById = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    attrIdByPropertyName = v3->_attrIdByPropertyName;
    v3->_attrIdByPropertyName = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    propertyNameByAttrId = v3->_propertyNameByAttrId;
    v3->_propertyNameByAttrId = v10;

    v3->_highestLabelId = 0;
    v3->_highestAttrId = 0;
    *&v3->_readOnly = 1;
  }

  return v3;
}

@end