@interface _DKEventStream
+ (id)eventStreamWithName:(id)name;
+ (id)eventStreamWithName:(id)name valueType:(id)type;
+ (id)fromPBCodable:(id)codable;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_CDEventStreamProperties)eventProperties;
- (_DKEventStream)initWithCoder:(id)coder;
- (_DKEventStream)initWithName:(id)name valueType:(id)type cache:(id)cache;
- (id)toPBCodable;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DKEventStream

- (id)toPBCodable
{
  name = [(_DKEventStream *)self name];
  eventValueType = [(_DKEventStream *)self eventValueType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = 0;
  }

  else
  {
    eventValueType2 = [(_DKEventStream *)self eventValueType];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      eventValueType3 = [(_DKEventStream *)self eventValueType];
      objc_opt_class();
      v10 = objc_opt_isKindOfClass();

      if (v10)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }
  }

  v11 = objc_alloc_init(_DKPRValueType);
  [(_DKPRValueType *)v11 setType:v6];
  eventValueType4 = [(_DKEventStream *)self eventValueType];
  -[_DKPRValueType setTypeCode:](v11, [eventValueType4 typeCode]);

  v13 = objc_alloc_init(_DKPRStream);
  [(_DKPRStream *)v13 setName:name];
  [(_DKPRStream *)v13 setType:v11];

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { name=%@, valueType=%@ }", v5, self->_name, self->_eventValueType];

  return v6;
}

+ (id)eventStreamWithName:(id)name
{
  nameCopy = name;
  v4 = [objc_opt_class() eventStreamWithName:nameCopy valueType:0];

  return v4;
}

+ (id)eventStreamWithName:(id)name valueType:(id)type
{
  v24 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  typeCopy = type;
  v7 = [_CDEventStreams eventStreamPropertiesForKBName:nameCopy];
  valueType = [v7 valueType];

  if (valueType)
  {
    if (typeCopy)
    {
      valueType2 = [v7 valueType];
      v10 = [valueType2 isEqual:typeCopy];

      if ((v10 & 1) == 0)
      {
        v11 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          valueType3 = [v7 valueType];
          v18 = 138412802;
          v19 = nameCopy;
          v20 = 2112;
          v21 = typeCopy;
          v22 = 2112;
          v23 = valueType3;
          _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_INFO, "Event with stream %@ had valueType %@ but should be %@. Overriding.", &v18, 0x20u);
        }
      }
    }

    valueType4 = [v7 valueType];

    typeCopy = valueType4;
  }

  v14 = +[_DKEventStreamCache sharedCached];
  v15 = [v14 eventStreamWithName:nameCopy valueType:typeCopy];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (_CDEventStreamProperties)eventProperties
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  eventProperties = selfCopy->_eventProperties;
  if (!eventProperties)
  {
    v4 = [_CDEventStreams eventStreamPropertiesForKBName:selfCopy->_name];
    v5 = selfCopy->_eventProperties;
    selfCopy->_eventProperties = v4;

    eventProperties = selfCopy->_eventProperties;
  }

  v6 = eventProperties;
  objc_sync_exit(selfCopy);

  return v6;
}

- (_DKEventStream)initWithName:(id)name valueType:(id)type cache:(id)cache
{
  nameCopy = name;
  typeCopy = type;
  cacheCopy = cache;
  v12 = cacheCopy;
  if (nameCopy)
  {
    if (!cacheCopy || ([cacheCopy eventStreamWithName:nameCopy valueType:typeCopy], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v19.receiver = self;
      v19.super_class = _DKEventStream;
      v14 = [(_DKEventStream *)&v19 init];
      p_isa = &v14->super.isa;
      if (v14)
      {
        objc_storeStrong(&v14->_name, name);
        objc_storeStrong(p_isa + 3, type);
      }

      v13 = p_isa;
      self = v13;
    }

    v16 = v13;
  }

  else
  {
    v17 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_DKEventStream initWithName:v17 valueType:? cache:?];
    }

    v16 = 0;
  }

  return v16;
}

- (_DKEventStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventValueType"];

  v7 = +[_DKEventStreamCache sharedCached];
  v8 = [(_DKEventStream *)self initWithName:v5 valueType:v6 cache:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_eventValueType forKey:@"eventValueType"];
}

- (unint64_t)hash
{
  name = [(_DKEventStream *)self name];
  v4 = [name hash];
  eventValueType = [(_DKEventStream *)self eventValueType];
  v6 = [eventValueType hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    name = [(_DKEventStream *)self name];
    name2 = [(_DKEventStream *)v6 name];
    if ([name isEqualToString:name2])
    {
      eventValueType = [(_DKEventStream *)self eventValueType];
      typeCode = [eventValueType typeCode];
      eventValueType2 = [(_DKEventStream *)v6 eventValueType];
      v12 = typeCode == [eventValueType2 typeCode];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)fromPBCodable:(id)codable
{
  codableCopy = codable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = codableCopy;
    name = [(_DKPRStream *)v4 name];
    type = [(_DKPRStream *)v4 type];
    v6Type = [(_DKPRValueType *)type type];

    if (v6Type > 2)
    {
      v10 = 0;
    }

    else
    {
      v8 = *off_1E7368F98[v6Type];
      type2 = [(_DKPRStream *)v4 type];
      v10 = [v8 objectTypeWithTypeCode:-[_DKPRValueType typeCode](type2)];
    }

    v11 = [_DKEventStream eventStreamWithName:name valueType:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end