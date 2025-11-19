@interface DOCTag
+ (BOOL)areTags:(id)a3 equalByNameAndColorTo:(id)a4;
+ (id)tagsLoadedFromUserDefaults;
+ (id)untitledTagForRendering:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTag:(id)a3;
- (DOCTag)initWithCoder:(id)a3;
- (DOCTag)initWithDisplayName:(id)a3 labelIndex:(int64_t)a4 type:(int64_t)a5 itemCount:(int64_t)a6 sidebarVisible:(id)a7 sidebarPinned:(id)a8;
- (DOCTag)initWithICloudTagAttributes:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)iCloudTagAttributes;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)mergeWithTag:(id)a3 options:(int64_t)a4;
@end

@implementation DOCTag

- (unint64_t)hash
{
  v2 = [(DOCTag *)self displayName];
  v3 = [v2 precomposedStringWithCanonicalMapping];
  v4 = [v3 hash];

  return v4;
}

+ (id)tagsLoadedFromUserDefaults
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.DocumentManagerCore"];
  v3 = [v2 pathForResource:@"UIDocumentPickerDefaultTags" ofType:@"plist"];

  v22 = v3;
  v21 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:? options:? format:? error:?];
  v5 = [v4 objectForKey:@"_LOCALIZABLE_"];
  v6 = [v5 objectForKey:@"FinderTagDict"];
  v7 = [v6 objectForKey:@"FinderTags"];

  v8 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 objectForKey:@"n"];
        v15 = [v13 objectForKey:@"l"];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 integerValue];
        }

        else
        {
          v17 = 0;
        }

        v18 = [[DOCTag alloc] initWithDisplayName:v14 labelIndex:v17 type:1];
        [v8 addObject:v18];
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)areTags:(id)a3 equalByNameAndColorTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!(v5 | v6))
  {
    goto LABEL_2;
  }

  if (![v5 isEqualToOrderedSet:v6])
  {
LABEL_12:
    LOBYTE(v7) = 0;
    goto LABEL_13;
  }

  v8 = [v5 count];
  if (v8)
  {
    v9 = 0;
    v10 = v8 - 1;
    while (1)
    {
      v11 = [v5 objectAtIndexedSubscript:v9];
      v12 = [v6 objectAtIndexedSubscript:v9];
      v13 = [v11 labelIndex];
      if (v13 != [v12 labelIndex])
      {
        break;
      }

      v14 = [v11 displayName];
      v15 = [v12 displayName];
      v7 = [v14 isEqualToString:v15];

      if (v7)
      {
        if (v10 != v9++)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_2:
  LOBYTE(v7) = 1;
LABEL_13:

  return v7;
}

+ (id)untitledTagForRendering:(int64_t)a3
{
  v3 = [[DOCTag alloc] initWithDisplayName:&stru_285C6EEF8 labelIndex:a3 type:1];

  return v3;
}

- (DOCTag)initWithICloudTagAttributes:(id)a3
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"n"];

  if (!v6)
  {
    [(DOCTag *)a2 initWithICloudTagAttributes:?];
  }

  v7 = [v5 objectForKeyedSubscript:@"n"];
  v8 = [v5 objectForKeyedSubscript:@"l"];
  v9 = [v8 integerValue];
  v10 = [v5 objectForKeyedSubscript:@"v"];
  v11 = [v5 objectForKeyedSubscript:@"p"];

  v12 = [(DOCTag *)self initWithDisplayName:v7 labelIndex:v9 type:1 itemCount:-1 sidebarVisible:v10 sidebarPinned:v11];
  return v12;
}

- (DOCTag)initWithDisplayName:(id)a3 labelIndex:(int64_t)a4 type:(int64_t)a5 itemCount:(int64_t)a6 sidebarVisible:(id)a7 sidebarPinned:(id)a8
{
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = DOCTag;
  v17 = [(DOCTag *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_displayName, a3);
    v18->_labelIndex = a4;
    v18->_type = a5;
    objc_storeStrong(&v18->_sidebarVisible, a7);
    objc_storeStrong(&v18->_sidebarPinned, a8);
  }

  return v18;
}

- (id)description
{
  v3 = [(DOCTag *)self type];
  v4 = @"unexpected tag type";
  if (!v3)
  {
    v4 = @"discovered";
  }

  if (v3 == 1)
  {
    v5 = @"user";
  }

  else
  {
    v5 = v4;
  }

  v6 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = DOCTag;
  v7 = [(DOCTag *)&v11 description];
  v8 = [(DOCTag *)self displayName];
  v9 = [v6 stringWithFormat:@"%@: %@, labelIndex: %ld, type: %@", v7, v8, -[DOCTag labelIndex](self, "labelIndex"), v5];

  return v9;
}

- (id)iCloudTagAttributes
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  v4 = v3;
  if (self->_displayName)
  {
    displayName = self->_displayName;
  }

  else
  {
    displayName = &stru_285C6EEF8;
  }

  [v3 setObject:displayName forKeyedSubscript:@"n"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_labelIndex];
  [v4 setObject:v6 forKeyedSubscript:@"l"];

  [v4 setObject:self->_sidebarVisible forKeyedSubscript:@"v"];
  [v4 setObject:self->_sidebarPinned forKeyedSubscript:@"p"];

  return v4;
}

- (void)mergeWithTag:(id)a3 options:(int64_t)a4
{
  v4 = a4;
  v13 = a3;
  displayName = self->_displayName;
  v7 = [v13 displayName];
  LODWORD(displayName) = [(NSString *)displayName isEqualToString:v7];

  v8 = v13;
  if (displayName)
  {
    if ([v13 type] > self->_type)
    {
      self->_type = [v13 type];
    }

    if ((v4 & 2) != 0 || !self->_labelIndex)
    {
      self->_labelIndex = [v13 labelIndex];
    }

    v8 = v13;
    if ((v4 & 4) != 0 || self->_itemCount == -1)
    {
      self->_itemCount = [v13 itemCount];
      v8 = v13;
    }

    if (!self->_sidebarVisible)
    {
      v9 = [v13 sidebarVisible];
      sidebarVisible = self->_sidebarVisible;
      self->_sidebarVisible = v9;

      v8 = v13;
    }

    if (!self->_sidebarPinned)
    {
      v11 = [v13 sidebarPinned];
      sidebarPinned = self->_sidebarPinned;
      self->_sidebarPinned = v11;

      v8 = v13;
    }
  }
}

- (DOCTag)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v6 = [v4 decodeIntegerForKey:@"labelIndex"];
  v7 = [v4 decodeIntegerForKey:@"type"];
  v8 = [v4 decodeIntegerForKey:@"itemCount"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sidebarVisible"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sidebarPinned"];

  v11 = [(DOCTag *)self initWithDisplayName:v5 labelIndex:v6 type:v7 itemCount:v8 sidebarVisible:v9 sidebarPinned:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  displayName = self->_displayName;
  v5 = a3;
  [v5 encodeObject:displayName forKey:@"displayName"];
  [v5 encodeInteger:self->_labelIndex forKey:@"labelIndex"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeInteger:self->_itemCount forKey:@"itemCount"];
  [v5 encodeObject:self->_sidebarVisible forKey:@"sidebarVisible"];
  [v5 encodeObject:self->_sidebarPinned forKey:@"sidebarPinned"];
}

- (BOOL)isEqualToTag:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(DOCTag *)self displayName];
    if (v5)
    {
    }

    else
    {
      v7 = [v4 displayName];

      if (!v7)
      {
        v6 = 1;
        goto LABEL_7;
      }
    }

    v8 = [(DOCTag *)self displayName];
    v9 = [v4 displayName];
    v6 = [v8 compare:v9 options:129] == 0;
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DOCTag *)self isEqualToTag:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [DOCTag alloc];
  v6 = [(NSString *)self->_displayName copyWithZone:a3];
  labelIndex = self->_labelIndex;
  type = self->_type;
  itemCount = self->_itemCount;
  v10 = [(NSNumber *)self->_sidebarPinned copyWithZone:a3];
  v11 = [(NSNumber *)self->_sidebarVisible copyWithZone:a3];
  v12 = [(DOCTag *)v5 initWithDisplayName:v6 labelIndex:labelIndex type:type itemCount:itemCount sidebarVisible:v10 sidebarPinned:v11];

  return v12;
}

- (void)initWithICloudTagAttributes:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCTag.m" lineNumber:29 description:@"iCloudTag dictionary missing required keys"];
}

@end