@interface PKPassUpcomingPassInformationEntry
+ (id)createFromDictionary:(id)dictionary bundle:(id)bundle;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEntry:(id)entry;
- (BOOL)isEquivalentToEntry:(id)entry;
- (PKPassUpcomingPassInformationEntry)initWithCoder:(id)coder;
- (id)_initWithMetadata:(id)metadata content:(id)content;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassUpcomingPassInformationEntry

+ (id)createFromDictionary:(id)dictionary bundle:(id)bundle
{
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v7 = bundleCopy;
  v8 = 0;
  if (dictionaryCopy && bundleCopy)
  {
    v9 = [PKPassUpcomingPassInformationEntryMetadata createFromDictionary:dictionaryCopy bundle:bundleCopy];
    v10 = v9;
    if (v9)
    {
      v11 = +[PKPassUpcomingPassInformationEntryContent createFromDictionary:bundle:withEntryType:](PKPassUpcomingPassInformationEntryContent, "createFromDictionary:bundle:withEntryType:", dictionaryCopy, v7, [v9 type]);
      if (v11)
      {
        v12 = [[PKPassUpcomingPassInformationEntry alloc] _initWithMetadata:v10 content:v11];
        v13 = v12;
        if (v12 && [v12 populateFromDictionary:dictionaryCopy bundle:v7])
        {
          v8 = v13;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_initWithMetadata:(id)metadata content:(id)content
{
  metadataCopy = metadata;
  contentCopy = content;
  v9 = contentCopy;
  selfCopy = 0;
  if (metadataCopy && contentCopy)
  {
    v14.receiver = self;
    v14.super_class = PKPassUpcomingPassInformationEntry;
    v11 = [(PKPassUpcomingPassInformationEntry *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_metadata, metadata);
      objc_storeStrong(p_isa + 3, content);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPassUpcomingPassInformationEntry *)self isEqualToEntry:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToEntry:(id)entry
{
  entryCopy = entry;
  metadata = self->_metadata;
  v6 = entryCopy[2];
  if (metadata)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (metadata != v6)
    {
      goto LABEL_14;
    }
  }

  else if (![(PKPassUpcomingPassInformationEntryMetadata *)metadata isEqual:?])
  {
    goto LABEL_14;
  }

  content = self->_content;
  v9 = entryCopy[3];
  if (!content || !v9)
  {
    if (content == v9)
    {
      goto LABEL_12;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (![(PKPassUpcomingPassInformationEntryContent *)content isEqual:?])
  {
    goto LABEL_14;
  }

LABEL_12:
  v10 = self->_active == *(entryCopy + 8);
LABEL_15:

  return v10;
}

- (BOOL)isEquivalentToEntry:(id)entry
{
  metadata = self->_metadata;
  v4 = *(entry + 2);
  if (metadata)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return metadata == v4;
  }

  else
  {
    return [(PKPassUpcomingPassInformationEntryMetadata *)metadata isEqual:?];
  }
}

- (PKPassUpcomingPassInformationEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPassUpcomingPassInformationEntry;
  v5 = [(PKPassUpcomingPassInformationEntry *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v8;

    v5->_active = [coderCopy decodeBoolForKey:@"isActive"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  metadata = self->_metadata;
  coderCopy = coder;
  [coderCopy encodeObject:metadata forKey:@"metadata"];
  [coderCopy encodeObject:self->_content forKey:@"content"];
  [coderCopy encodeBool:self->_active forKey:@"isActive"];
}

@end