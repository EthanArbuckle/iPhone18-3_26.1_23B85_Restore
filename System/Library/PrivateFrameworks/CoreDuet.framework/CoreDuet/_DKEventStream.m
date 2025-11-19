@interface _DKEventStream
+ (id)eventStreamWithName:(id)a3;
+ (id)eventStreamWithName:(id)a3 valueType:(id)a4;
+ (id)fromPBCodable:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_CDEventStreamProperties)eventProperties;
- (_DKEventStream)initWithCoder:(id)a3;
- (_DKEventStream)initWithName:(id)a3 valueType:(id)a4 cache:(id)a5;
- (id)toPBCodable;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DKEventStream

- (id)toPBCodable
{
  v3 = [(_DKEventStream *)self name];
  v4 = [(_DKEventStream *)self eventValueType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(_DKEventStream *)self eventValueType];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v9 = [(_DKEventStream *)self eventValueType];
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
  v12 = [(_DKEventStream *)self eventValueType];
  -[_DKPRValueType setTypeCode:](v11, [v12 typeCode]);

  v13 = objc_alloc_init(_DKPRStream);
  [(_DKPRStream *)v13 setName:v3];
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

+ (id)eventStreamWithName:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() eventStreamWithName:v3 valueType:0];

  return v4;
}

+ (id)eventStreamWithName:(id)a3 valueType:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [_CDEventStreams eventStreamPropertiesForKBName:v5];
  v8 = [v7 valueType];

  if (v8)
  {
    if (v6)
    {
      v9 = [v7 valueType];
      v10 = [v9 isEqual:v6];

      if ((v10 & 1) == 0)
      {
        v11 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v7 valueType];
          v18 = 138412802;
          v19 = v5;
          v20 = 2112;
          v21 = v6;
          v22 = 2112;
          v23 = v12;
          _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_INFO, "Event with stream %@ had valueType %@ but should be %@. Overriding.", &v18, 0x20u);
        }
      }
    }

    v13 = [v7 valueType];

    v6 = v13;
  }

  v14 = +[_DKEventStreamCache sharedCached];
  v15 = [v14 eventStreamWithName:v5 valueType:v6];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (_CDEventStreamProperties)eventProperties
{
  v2 = self;
  objc_sync_enter(v2);
  eventProperties = v2->_eventProperties;
  if (!eventProperties)
  {
    v4 = [_CDEventStreams eventStreamPropertiesForKBName:v2->_name];
    v5 = v2->_eventProperties;
    v2->_eventProperties = v4;

    eventProperties = v2->_eventProperties;
  }

  v6 = eventProperties;
  objc_sync_exit(v2);

  return v6;
}

- (_DKEventStream)initWithName:(id)a3 valueType:(id)a4 cache:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (!v11 || ([v11 eventStreamWithName:v9 valueType:v10], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v19.receiver = self;
      v19.super_class = _DKEventStream;
      v14 = [(_DKEventStream *)&v19 init];
      p_isa = &v14->super.isa;
      if (v14)
      {
        objc_storeStrong(&v14->_name, a3);
        objc_storeStrong(p_isa + 3, a4);
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

- (_DKEventStream)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventValueType"];

  v7 = +[_DKEventStreamCache sharedCached];
  v8 = [(_DKEventStream *)self initWithName:v5 valueType:v6 cache:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_eventValueType forKey:@"eventValueType"];
}

- (unint64_t)hash
{
  v3 = [(_DKEventStream *)self name];
  v4 = [v3 hash];
  v5 = [(_DKEventStream *)self eventValueType];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(_DKEventStream *)self name];
    v8 = [(_DKEventStream *)v6 name];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(_DKEventStream *)self eventValueType];
      v10 = [v9 typeCode];
      v11 = [(_DKEventStream *)v6 eventValueType];
      v12 = v10 == [v11 typeCode];
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

+ (id)fromPBCodable:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(_DKPRStream *)v4 name];
    v6 = [(_DKPRStream *)v4 type];
    v7 = [(_DKPRValueType *)v6 type];

    if (v7 > 2)
    {
      v10 = 0;
    }

    else
    {
      v8 = *off_1E7368F98[v7];
      v9 = [(_DKPRStream *)v4 type];
      v10 = [v8 objectTypeWithTypeCode:-[_DKPRValueType typeCode](v9)];
    }

    v11 = [_DKEventStream eventStreamWithName:v5 valueType:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end