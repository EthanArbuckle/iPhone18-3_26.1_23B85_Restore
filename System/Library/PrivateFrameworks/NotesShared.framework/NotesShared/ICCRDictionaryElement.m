@interface ICCRDictionaryElement
+ (id)temporaryElementWithValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICCRDictionaryElement)initWithValue:(id)a3;
- (ICCRDictionaryElement)initWithValue:(id)a3 timestamp:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)mergeWith:(id)a3;
@end

@implementation ICCRDictionaryElement

+ (id)temporaryElementWithValue:(id)a3
{
  v3 = a3;
  v4 = [[ICCRDictionaryElement alloc] initWithValue:v3 timestamp:0];

  return v4;
}

- (ICCRDictionaryElement)initWithValue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ICCRDictionaryElement;
  v6 = [(ICCRDictionaryElement *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
    v8 = objc_alloc_init(ICCRVectorTimestamp);
    timestamp = v7->_timestamp;
    v7->_timestamp = v8;
  }

  return v7;
}

- (ICCRDictionaryElement)initWithValue:(id)a3 timestamp:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICCRDictionaryElement;
  v9 = [(ICCRDictionaryElement *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, a3);
    objc_storeStrong(&v10->_timestamp, a4);
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(ICCRDictionaryElement *)self value];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICCRDictionaryElement *)self value];
    v6 = [v4 value];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeWith:(id)a3
{
  v8 = a3;
  v4 = [(ICCRDictionaryElement *)self timestamp];
  v5 = [v8 timestamp];
  [v4 mergeWith:v5];

  v6 = [(ICCRDictionaryElement *)self value];
  v7 = [v8 value];
  [v6 mergeWith:v7];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICCRDictionaryElement *)self timestamp];
  v7 = [v6 shortDescription];
  v8 = [(ICCRDictionaryElement *)self value];
  v9 = [v3 stringWithFormat:@"<%@ %p %@ %@>", v5, self, v7, v8];

  return v9;
}

@end