@interface PKPaymentTransactionArchive
- (BOOL)allArchiveLocationsWithType:(unint64_t)a3 areArchived:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToArchive:(id)a3;
- (id)archiveLocationMatchingLocation:(id)a3;
- (id)archiveLocationsWithCloudStoreZone:(id)a3 isArchived:(BOOL)a4;
- (id)archiveLocationsWithType:(unint64_t)a3 isArchived:(BOOL)a4;
- (id)description;
- (unint64_t)hash;
- (void)insertOrUpdateArchiveLocationWithCloudStoreZone:(id)a3 isArchived:(BOOL)a4 insertionMode:(unint64_t)a5;
- (void)updateArchiveLocationsWithType:(unint64_t)a3 isArchived:(BOOL)a4;
- (void)updateTransactionArchiveLocationsWithArchive:(id)a3 type:(unint64_t)a4 archived:(BOOL)a5;
@end

@implementation PKPaymentTransactionArchive

- (void)updateArchiveLocationsWithType:(unint64_t)a3 isArchived:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_locations;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 type] == a3)
        {
          [v11 setArchived:v4];
        }
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)allArchiveLocationsWithType:(unint64_t)a3 areArchived:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_locations;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isArchived] != v4 || objc_msgSend(v11, "type") != a3)
        {
          v12 = 0;
          goto LABEL_13;
        }
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 1;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_13:

  return v12;
}

- (id)archiveLocationMatchingLocation:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_locations;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 type];
        if (v10 == [v4 type])
        {
          v11 = [v9 cloudStoreZone];
          v12 = [v4 cloudStoreZone];
          v13 = v12;
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {

            if (v11 == v13)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v15 = [v11 isEqual:v12];

            if (v15)
            {
LABEL_18:
              v6 = v9;
              goto LABEL_19;
            }
          }
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  return v6;
}

- (id)archiveLocationsWithType:(unint64_t)a3 isArchived:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_locations;
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 type] == a3 && objc_msgSend(v13, "isArchived") == v4)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [(NSSet *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

- (id)archiveLocationsWithCloudStoreZone:(id)a3 isArchived:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_locations;
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 cloudStoreZone];
        v15 = v14;
        if (v6 && v14)
        {
          if (([v6 isEqual:v14] & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else if (v14 != v6)
        {
LABEL_12:

          continue;
        }

        v16 = [v13 isArchived];

        if (v16 == v4)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [(NSSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = [v7 copy];

  return v17;
}

- (void)insertOrUpdateArchiveLocationWithCloudStoreZone:(id)a3 isArchived:(BOOL)a4 insertionMode:(unint64_t)a5
{
  v6 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v8)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = self->_locations;
    v10 = [(NSSet *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v21 = v6;
      v11 = *v23;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 cloudStoreZone];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 isEqual:v8];

            if (v16)
            {
              v10 = v13;
              goto LABEL_13;
            }
          }
        }

        v10 = [(NSSet *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

LABEL_13:
      v6 = v21;
    }

    v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_locations];
    if (a5 == 1)
    {
      if (v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (a5)
      {
LABEL_20:
        v19 = [v17 copy];
        locations = self->_locations;
        self->_locations = v19;

        goto LABEL_21;
      }

      if (v10)
      {
        [v10 setArchived:v6];
        goto LABEL_20;
      }
    }

    v18 = [[PKPaymentTransactionArchiveLocation alloc] initWithType:0 archived:v6 cloudStoreZone:v8];
    [v17 addObject:v18];

    goto LABEL_20;
  }

LABEL_21:
}

- (void)updateTransactionArchiveLocationsWithArchive:(id)a3 type:(unint64_t)a4 archived:(BOOL)a5
{
  v5 = a5;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a3 locations];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 type] == a4)
        {
          v14 = [(PKPaymentTransactionArchive *)self archiveLocationMatchingLocation:v13];
          v15 = v14;
          if (v14)
          {
            [v14 setArchived:v5];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionArchive *)self isEqualToArchive:v5];
  }

  return v6;
}

- (BOOL)isEqualToArchive:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = v4[2];
  v7 = self->_identifier;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

      goto LABEL_13;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (self->_type != v5[1])
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  locations = self->_locations;
  v12 = v5[3];
  if (locations && v12)
  {
    v13 = [(NSSet *)locations isEqual:?];
  }

  else
  {
    v13 = locations == v12;
  }

LABEL_14:

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_locations];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"type: '%lu'; ", self->_type];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"locations: '%@'; ", self->_locations];
  [v3 appendFormat:@">"];

  return v3;
}

@end