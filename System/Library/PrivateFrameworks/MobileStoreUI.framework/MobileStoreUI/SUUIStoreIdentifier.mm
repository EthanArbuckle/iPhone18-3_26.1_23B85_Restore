@interface SUUIStoreIdentifier
- (BOOL)isEqual:(id)equal;
- (SUUIStoreIdentifier)initWithLongLong:(int64_t)long;
- (SUUIStoreIdentifier)initWithNumber:(id)number;
- (SUUIStoreIdentifier)initWithPodcastFeedURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)stringValue;
- (int64_t)longLongValue;
- (unint64_t)hash;
@end

@implementation SUUIStoreIdentifier

- (SUUIStoreIdentifier)initWithLongLong:(int64_t)long
{
  v9.receiver = self;
  v9.super_class = SUUIStoreIdentifier;
  v4 = [(SUUIStoreIdentifier *)&v9 init];
  v5 = v4;
  if (long && v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:long];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;
  }

  return v5;
}

- (SUUIStoreIdentifier)initWithNumber:(id)number
{
  numberCopy = number;
  v9.receiver = self;
  v9.super_class = SUUIStoreIdentifier;
  v5 = [(SUUIStoreIdentifier *)&v9 init];
  if (v5 && [numberCopy longLongValue])
  {
    v6 = [numberCopy copy];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;
  }

  return v5;
}

- (SUUIStoreIdentifier)initWithPodcastFeedURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = SUUIStoreIdentifier;
  v6 = [(SUUIStoreIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_podcastFeedURLIdentifier, l);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SUUIStoreIdentifier allocWithZone:?]];
  p_isa = &v4->super.isa;
  if (v4)
  {
    objc_storeStrong(&v4->_itemIdentifier, self->_itemIdentifier);
    objc_storeStrong(p_isa + 2, self->_podcastFeedURLIdentifier);
    objc_storeStrong(p_isa + 3, self->_bundleIdentifier);
  }

  return p_isa;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SUUIStoreIdentifier;
  v4 = [(SUUIStoreIdentifier *)&v8 description];
  numberValue = [(SUUIStoreIdentifier *)self numberValue];
  v6 = [v3 stringWithFormat:@"%@: [%@, %@]", v4, numberValue, self->_podcastFeedURLIdentifier];

  return v6;
}

- (unint64_t)hash
{
  numberValue = [(SUUIStoreIdentifier *)self numberValue];
  v4 = [numberValue hash];
  v5 = [(NSString *)self->_podcastFeedURLIdentifier hash];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    LOBYTE(bundleIdentifier) = 0;
    goto LABEL_13;
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier)
  {
    v6 = equalCopy->_itemIdentifier;
    if (itemIdentifier != v6)
    {
      if (v6)
      {
        v7 = [(NSNumber *)itemIdentifier isEqualToNumber:?];
LABEL_11:
        LOBYTE(bundleIdentifier) = v7;
        goto LABEL_13;
      }

      goto LABEL_7;
    }

LABEL_12:
    LOBYTE(bundleIdentifier) = 1;
    goto LABEL_13;
  }

  podcastFeedURLIdentifier = self->_podcastFeedURLIdentifier;
  if (podcastFeedURLIdentifier)
  {
    if (podcastFeedURLIdentifier != equalCopy->_podcastFeedURLIdentifier)
    {
      v7 = [(NSString *)podcastFeedURLIdentifier isEqualToString:?];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    bundleIdentifier = [(SUUIStoreIdentifier *)equalCopy bundleIdentifier];
    LOBYTE(bundleIdentifier) = [(NSString *)bundleIdentifier isEqualToString:bundleIdentifier];
  }

LABEL_13:

  return bundleIdentifier;
}

- (int64_t)longLongValue
{
  result = self->_itemIdentifier;
  if (result)
  {
    return [result longLongValue];
  }

  return result;
}

- (id)stringValue
{
  if (self->_itemIdentifier && (objc_opt_respondsToSelector() & 1) != 0)
  {
    stringValue = [(NSNumber *)self->_itemIdentifier stringValue];
  }

  else
  {
    podcastFeedURLIdentifier = self->_podcastFeedURLIdentifier;
    if (podcastFeedURLIdentifier)
    {
      stringValue = podcastFeedURLIdentifier;
    }

    else
    {
      stringValue = 0;
    }
  }

  return stringValue;
}

@end