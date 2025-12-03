@interface DOCTag
+ (BOOL)areTags:(id)tags equalByNameAndColorTo:(id)to;
+ (id)tagsLoadedFromUserDefaults;
+ (id)untitledTagForRendering:(int64_t)rendering;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTag:(id)tag;
- (DOCTag)initWithCoder:(id)coder;
- (DOCTag)initWithDisplayName:(id)name labelIndex:(int64_t)index type:(int64_t)type itemCount:(int64_t)count sidebarVisible:(id)visible sidebarPinned:(id)pinned;
- (DOCTag)initWithICloudTagAttributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)iCloudTagAttributes;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)mergeWithTag:(id)tag options:(int64_t)options;
@end

@implementation DOCTag

- (unint64_t)hash
{
  displayName = [(DOCTag *)self displayName];
  precomposedStringWithCanonicalMapping = [displayName precomposedStringWithCanonicalMapping];
  v4 = [precomposedStringWithCanonicalMapping hash];

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
          integerValue = [v15 integerValue];
        }

        else
        {
          integerValue = 0;
        }

        v18 = [[DOCTag alloc] initWithDisplayName:v14 labelIndex:integerValue type:1];
        [v8 addObject:v18];
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)areTags:(id)tags equalByNameAndColorTo:(id)to
{
  tagsCopy = tags;
  toCopy = to;
  if (!(tagsCopy | toCopy))
  {
    goto LABEL_2;
  }

  if (![tagsCopy isEqualToOrderedSet:toCopy])
  {
LABEL_12:
    LOBYTE(v7) = 0;
    goto LABEL_13;
  }

  v8 = [tagsCopy count];
  if (v8)
  {
    v9 = 0;
    v10 = v8 - 1;
    while (1)
    {
      v11 = [tagsCopy objectAtIndexedSubscript:v9];
      v12 = [toCopy objectAtIndexedSubscript:v9];
      labelIndex = [v11 labelIndex];
      if (labelIndex != [v12 labelIndex])
      {
        break;
      }

      displayName = [v11 displayName];
      displayName2 = [v12 displayName];
      v7 = [displayName isEqualToString:displayName2];

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

+ (id)untitledTagForRendering:(int64_t)rendering
{
  v3 = [[DOCTag alloc] initWithDisplayName:&stru_285C6EEF8 labelIndex:rendering type:1];

  return v3;
}

- (DOCTag)initWithICloudTagAttributes:(id)attributes
{
  attributesCopy = attributes;
  v6 = [attributesCopy objectForKeyedSubscript:@"n"];

  if (!v6)
  {
    [(DOCTag *)a2 initWithICloudTagAttributes:?];
  }

  v7 = [attributesCopy objectForKeyedSubscript:@"n"];
  v8 = [attributesCopy objectForKeyedSubscript:@"l"];
  integerValue = [v8 integerValue];
  v10 = [attributesCopy objectForKeyedSubscript:@"v"];
  v11 = [attributesCopy objectForKeyedSubscript:@"p"];

  v12 = [(DOCTag *)self initWithDisplayName:v7 labelIndex:integerValue type:1 itemCount:-1 sidebarVisible:v10 sidebarPinned:v11];
  return v12;
}

- (DOCTag)initWithDisplayName:(id)name labelIndex:(int64_t)index type:(int64_t)type itemCount:(int64_t)count sidebarVisible:(id)visible sidebarPinned:(id)pinned
{
  nameCopy = name;
  visibleCopy = visible;
  pinnedCopy = pinned;
  v20.receiver = self;
  v20.super_class = DOCTag;
  v17 = [(DOCTag *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_displayName, name);
    v18->_labelIndex = index;
    v18->_type = type;
    objc_storeStrong(&v18->_sidebarVisible, visible);
    objc_storeStrong(&v18->_sidebarPinned, pinned);
  }

  return v18;
}

- (id)description
{
  type = [(DOCTag *)self type];
  v4 = @"unexpected tag type";
  if (!type)
  {
    v4 = @"discovered";
  }

  if (type == 1)
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
  displayName = [(DOCTag *)self displayName];
  v9 = [v6 stringWithFormat:@"%@: %@, labelIndex: %ld, type: %@", v7, displayName, -[DOCTag labelIndex](self, "labelIndex"), v5];

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

- (void)mergeWithTag:(id)tag options:(int64_t)options
{
  optionsCopy = options;
  tagCopy = tag;
  displayName = self->_displayName;
  displayName = [tagCopy displayName];
  LODWORD(displayName) = [(NSString *)displayName isEqualToString:displayName];

  v8 = tagCopy;
  if (displayName)
  {
    if ([tagCopy type] > self->_type)
    {
      self->_type = [tagCopy type];
    }

    if ((optionsCopy & 2) != 0 || !self->_labelIndex)
    {
      self->_labelIndex = [tagCopy labelIndex];
    }

    v8 = tagCopy;
    if ((optionsCopy & 4) != 0 || self->_itemCount == -1)
    {
      self->_itemCount = [tagCopy itemCount];
      v8 = tagCopy;
    }

    if (!self->_sidebarVisible)
    {
      sidebarVisible = [tagCopy sidebarVisible];
      sidebarVisible = self->_sidebarVisible;
      self->_sidebarVisible = sidebarVisible;

      v8 = tagCopy;
    }

    if (!self->_sidebarPinned)
    {
      sidebarPinned = [tagCopy sidebarPinned];
      sidebarPinned = self->_sidebarPinned;
      self->_sidebarPinned = sidebarPinned;

      v8 = tagCopy;
    }
  }
}

- (DOCTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v6 = [coderCopy decodeIntegerForKey:@"labelIndex"];
  v7 = [coderCopy decodeIntegerForKey:@"type"];
  v8 = [coderCopy decodeIntegerForKey:@"itemCount"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sidebarVisible"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sidebarPinned"];

  v11 = [(DOCTag *)self initWithDisplayName:v5 labelIndex:v6 type:v7 itemCount:v8 sidebarVisible:v9 sidebarPinned:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  displayName = self->_displayName;
  coderCopy = coder;
  [coderCopy encodeObject:displayName forKey:@"displayName"];
  [coderCopy encodeInteger:self->_labelIndex forKey:@"labelIndex"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_itemCount forKey:@"itemCount"];
  [coderCopy encodeObject:self->_sidebarVisible forKey:@"sidebarVisible"];
  [coderCopy encodeObject:self->_sidebarPinned forKey:@"sidebarPinned"];
}

- (BOOL)isEqualToTag:(id)tag
{
  tagCopy = tag;
  if (tagCopy)
  {
    displayName = [(DOCTag *)self displayName];
    if (displayName)
    {
    }

    else
    {
      displayName2 = [tagCopy displayName];

      if (!displayName2)
      {
        v6 = 1;
        goto LABEL_7;
      }
    }

    displayName3 = [(DOCTag *)self displayName];
    displayName4 = [tagCopy displayName];
    v6 = [displayName3 compare:displayName4 options:129] == 0;
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DOCTag *)self isEqualToTag:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [DOCTag alloc];
  v6 = [(NSString *)self->_displayName copyWithZone:zone];
  labelIndex = self->_labelIndex;
  type = self->_type;
  itemCount = self->_itemCount;
  v10 = [(NSNumber *)self->_sidebarPinned copyWithZone:zone];
  v11 = [(NSNumber *)self->_sidebarVisible copyWithZone:zone];
  v12 = [(DOCTag *)v5 initWithDisplayName:v6 labelIndex:labelIndex type:type itemCount:itemCount sidebarVisible:v10 sidebarPinned:v11];

  return v12;
}

- (void)initWithICloudTagAttributes:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCTag.m" lineNumber:29 description:@"iCloudTag dictionary missing required keys"];
}

@end