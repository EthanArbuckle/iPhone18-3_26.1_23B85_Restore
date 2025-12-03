@interface SYDictionaryObject
- (SYDictionaryObject)initWithCoder:(id)coder;
- (SYDictionaryObject)initWithProperties:(id)properties;
- (id)syncId;
- (void)encodeWithCoder:(id)coder;
- (void)setProperties:(id)properties;
@end

@implementation SYDictionaryObject

- (SYDictionaryObject)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v8.receiver = self;
  v8.super_class = SYDictionaryObject;
  v5 = [(SYDictionaryObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SYDictionaryObject *)v5 setProperties:propertiesCopy];
  }

  return v6;
}

- (void)setProperties:(id)properties
{
  propertiesCopy = properties;
  v6 = [(NSDictionary *)propertiesCopy objectForKeyedSubscript:@"kSYDictionaryObjectSyncIDKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"Invalid dictionary" format:@"SYDictionaryObject properties dictionaries must contain an NSString for the kSYDictionaryObjectSyncIDKey key"];
  }

  properties = self->_properties;
  self->_properties = propertiesCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  properties = [(SYDictionaryObject *)self properties];
  [coderCopy encodeObject:properties forKey:@"SYDictProperties"];
}

- (SYDictionaryObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SYDictionaryObject;
  v5 = [(SYDictionaryObject *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SYDictProperties"];
    [(SYDictionaryObject *)v5 setProperties:v6];
  }

  return v5;
}

- (id)syncId
{
  properties = [(SYDictionaryObject *)self properties];
  v3 = [properties objectForKeyedSubscript:@"kSYDictionaryObjectSyncIDKey"];

  return v3;
}

@end