@interface _CDContextValue
+ (NSSet)supportedContextValueClasses;
- (BOOL)isEqual:(id)a3;
- (_CDContextValue)init;
- (_CDContextValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CDContextValue

- (_CDContextValue)init
{
  v6.receiver = self;
  v6.super_class = _CDContextValue;
  v2 = [(_CDContextValue *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    metadata = v2->_metadata;
    v2->_metadata = v3;
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

- (void)encodeWithCoder:(id)a3
{
  metadata = self->_metadata;
  v5 = a3;
  v6 = [(NSMutableDictionary *)metadata objectForKeyedSubscript:@"_CDContextMetadataDataKey"];
  [v5 encodeObject:v6 forKey:@"value"];

  v7 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"_CDContextMetadataTransitionDateKey"];
  [v5 encodeObject:v7 forKey:@"lastModified"];
}

- (_CDContextValue)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _CDContextValue;
  v5 = [(_CDContextValue *)&v12 init];
  if (v5)
  {
    v6 = +[_CDContextValue supportedContextValueClasses];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"value"];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModified"];
    v9 = [MEMORY[0x1E695DF90] dictionary];
    metadata = v5->_metadata;
    v5->_metadata = v9;

    [(NSMutableDictionary *)v5->_metadata setObject:v7 forKeyedSubscript:@"_CDContextMetadataDataKey"];
    [(NSMutableDictionary *)v5->_metadata setObject:v8 forKeyedSubscript:@"_CDContextMetadataTransitionDateKey"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [v4 metadata];
  [v5 addEntriesFromDictionary:self->_metadata];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_CDContextValue *)self value];
      v7 = [(_CDContextValue *)v5 value];

      v8 = [v6 isEqual:v7];
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
  v2 = [(_CDContextValue *)self value];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = self->_metadata;
  objc_sync_enter(v3);
  v4 = [(_CDContextValue *)self value];
  v5 = [v4 description];

  v6 = [(_CDContextValue *)self lastModifiedDate];
  v7 = [MEMORY[0x1E695DF58] currentLocale];
  v8 = [v6 descriptionWithLocale:v7];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Updated at %@", v5, v8];

  objc_sync_exit(v3);

  return v9;
}

@end