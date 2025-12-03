@interface ICCRDictionaryElement
+ (id)temporaryElementWithValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (ICCRDictionaryElement)initWithValue:(id)value;
- (ICCRDictionaryElement)initWithValue:(id)value timestamp:(id)timestamp;
- (id)description;
- (unint64_t)hash;
- (void)mergeWith:(id)with;
@end

@implementation ICCRDictionaryElement

+ (id)temporaryElementWithValue:(id)value
{
  valueCopy = value;
  v4 = [[ICCRDictionaryElement alloc] initWithValue:valueCopy timestamp:0];

  return v4;
}

- (ICCRDictionaryElement)initWithValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = ICCRDictionaryElement;
  v6 = [(ICCRDictionaryElement *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
    v8 = objc_alloc_init(ICCRVectorTimestamp);
    timestamp = v7->_timestamp;
    v7->_timestamp = v8;
  }

  return v7;
}

- (ICCRDictionaryElement)initWithValue:(id)value timestamp:(id)timestamp
{
  valueCopy = value;
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = ICCRDictionaryElement;
  v9 = [(ICCRDictionaryElement *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, value);
    objc_storeStrong(&v10->_timestamp, timestamp);
  }

  return v10;
}

- (unint64_t)hash
{
  value = [(ICCRDictionaryElement *)self value];
  v3 = [value hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [(ICCRDictionaryElement *)self value];
    value2 = [equalCopy value];
    v7 = [value isEqual:value2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  timestamp = [(ICCRDictionaryElement *)self timestamp];
  timestamp2 = [withCopy timestamp];
  [timestamp mergeWith:timestamp2];

  value = [(ICCRDictionaryElement *)self value];
  value2 = [withCopy value];
  [value mergeWith:value2];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  timestamp = [(ICCRDictionaryElement *)self timestamp];
  shortDescription = [timestamp shortDescription];
  value = [(ICCRDictionaryElement *)self value];
  v9 = [v3 stringWithFormat:@"<%@ %p %@ %@>", v5, self, shortDescription, value];

  return v9;
}

@end