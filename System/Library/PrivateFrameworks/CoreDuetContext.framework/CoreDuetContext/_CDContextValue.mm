@interface _CDContextValue
+ (NSSet)supportedContextValueClasses;
- (BOOL)isEqual:(id)equal;
- (_CDContextValue)init;
- (_CDContextValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CDContextValue

- (_CDContextValue)init
{
  v6.receiver = self;
  v6.super_class = _CDContextValue;
  v2 = [(_CDContextValue *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    metadata = v2->_metadata;
    v2->_metadata = dictionary;
  }

  return v2;
}

+ (NSSet)supportedContextValueClasses
{
  if (supportedContextValueClasses_initialized != -1)
  {
    +[_CDContextValue supportedContextValueClasses];
  }

  v3 = supportedContextValueClasses_supportedContextValueClasses;

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  metadata = self->_metadata;
  coderCopy = coder;
  v6 = [(NSMutableDictionary *)metadata objectForKeyedSubscript:@"_CDContextMetadataDataKey"];
  [coderCopy encodeObject:v6 forKey:@"value"];

  v7 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"_CDContextMetadataTransitionDateKey"];
  [coderCopy encodeObject:v7 forKey:@"lastModified"];
}

- (_CDContextValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _CDContextValue;
  v5 = [(_CDContextValue *)&v12 init];
  if (v5)
  {
    v6 = +[_CDContextValue supportedContextValueClasses];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"value"];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModified"];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    metadata = v5->_metadata;
    v5->_metadata = dictionary;

    [(NSMutableDictionary *)v5->_metadata setObject:v7 forKeyedSubscript:@"_CDContextMetadataDataKey"];
    [(NSMutableDictionary *)v5->_metadata setObject:v8 forKeyedSubscript:@"_CDContextMetadataTransitionDateKey"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  metadata = [v4 metadata];
  [metadata addEntriesFromDictionary:self->_metadata];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      value = [(_CDContextValue *)self value];
      value2 = [(_CDContextValue *)v5 value];

      v8 = [value isEqual:value2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  value = [(_CDContextValue *)self value];
  v3 = [value hash];

  return v3;
}

- (id)description
{
  v3 = self->_metadata;
  objc_sync_enter(v3);
  value = [(_CDContextValue *)self value];
  v5 = [value description];

  lastModifiedDate = [(_CDContextValue *)self lastModifiedDate];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v8 = [lastModifiedDate descriptionWithLocale:currentLocale];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Updated at %@", v5, v8];

  objc_sync_exit(v3);

  return v9;
}

@end