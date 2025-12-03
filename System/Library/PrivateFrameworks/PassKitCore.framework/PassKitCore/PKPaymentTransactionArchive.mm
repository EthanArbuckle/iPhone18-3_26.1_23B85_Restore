@interface PKPaymentTransactionArchive
- (BOOL)allArchiveLocationsWithType:(unint64_t)type areArchived:(BOOL)archived;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToArchive:(id)archive;
- (id)archiveLocationMatchingLocation:(id)location;
- (id)archiveLocationsWithCloudStoreZone:(id)zone isArchived:(BOOL)archived;
- (id)archiveLocationsWithType:(unint64_t)type isArchived:(BOOL)archived;
- (id)description;
- (unint64_t)hash;
- (void)insertOrUpdateArchiveLocationWithCloudStoreZone:(id)zone isArchived:(BOOL)archived insertionMode:(unint64_t)mode;
- (void)updateArchiveLocationsWithType:(unint64_t)type isArchived:(BOOL)archived;
- (void)updateTransactionArchiveLocationsWithArchive:(id)archive type:(unint64_t)type archived:(BOOL)archived;
@end

@implementation PKPaymentTransactionArchive

- (void)updateArchiveLocationsWithType:(unint64_t)type isArchived:(BOOL)archived
{
  archivedCopy = archived;
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
        if ([v11 type] == type)
        {
          [v11 setArchived:archivedCopy];
        }
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)allArchiveLocationsWithType:(unint64_t)type areArchived:(BOOL)archived
{
  archivedCopy = archived;
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
        if ([v11 isArchived] != archivedCopy || objc_msgSend(v11, "type") != type)
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

- (id)archiveLocationMatchingLocation:(id)location
{
  v22 = *MEMORY[0x1E69E9840];
  locationCopy = location;
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
        type = [v9 type];
        if (type == [locationCopy type])
        {
          cloudStoreZone = [v9 cloudStoreZone];
          cloudStoreZone2 = [locationCopy cloudStoreZone];
          v13 = cloudStoreZone2;
          if (cloudStoreZone)
          {
            v14 = cloudStoreZone2 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {

            if (cloudStoreZone == v13)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v15 = [cloudStoreZone isEqual:cloudStoreZone2];

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

- (id)archiveLocationsWithType:(unint64_t)type isArchived:(BOOL)archived
{
  archivedCopy = archived;
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
        if ([v13 type] == type && objc_msgSend(v13, "isArchived") == archivedCopy)
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

- (id)archiveLocationsWithCloudStoreZone:(id)zone isArchived:(BOOL)archived
{
  archivedCopy = archived;
  v24 = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
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
        cloudStoreZone = [v13 cloudStoreZone];
        v15 = cloudStoreZone;
        if (zoneCopy && cloudStoreZone)
        {
          if (([zoneCopy isEqual:cloudStoreZone] & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else if (cloudStoreZone != zoneCopy)
        {
LABEL_12:

          continue;
        }

        isArchived = [v13 isArchived];

        if (isArchived == archivedCopy)
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

- (void)insertOrUpdateArchiveLocationWithCloudStoreZone:(id)zone isArchived:(BOOL)archived insertionMode:(unint64_t)mode
{
  archivedCopy = archived;
  v27 = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  if (zoneCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = self->_locations;
    v10 = [(NSSet *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v21 = archivedCopy;
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
          cloudStoreZone = [v13 cloudStoreZone];
          if (cloudStoreZone)
          {
            v15 = cloudStoreZone;
            v16 = [cloudStoreZone isEqual:zoneCopy];

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
      archivedCopy = v21;
    }

    v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_locations];
    if (mode == 1)
    {
      if (v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (mode)
      {
LABEL_20:
        v19 = [v17 copy];
        locations = self->_locations;
        self->_locations = v19;

        goto LABEL_21;
      }

      if (v10)
      {
        [v10 setArchived:archivedCopy];
        goto LABEL_20;
      }
    }

    v18 = [[PKPaymentTransactionArchiveLocation alloc] initWithType:0 archived:archivedCopy cloudStoreZone:zoneCopy];
    [v17 addObject:v18];

    goto LABEL_20;
  }

LABEL_21:
}

- (void)updateTransactionArchiveLocationsWithArchive:(id)archive type:(unint64_t)type archived:(BOOL)archived
{
  archivedCopy = archived;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  locations = [archive locations];
  v9 = [locations countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(locations);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 type] == type)
        {
          v14 = [(PKPaymentTransactionArchive *)self archiveLocationMatchingLocation:v13];
          v15 = v14;
          if (v14)
          {
            [v14 setArchived:archivedCopy];
          }
        }
      }

      v10 = [locations countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionArchive *)self isEqualToArchive:v5];
  }

  return v6;
}

- (BOOL)isEqualToArchive:(id)archive
{
  archiveCopy = archive;
  v5 = archiveCopy;
  if (!archiveCopy)
  {
    goto LABEL_13;
  }

  v6 = archiveCopy[2];
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