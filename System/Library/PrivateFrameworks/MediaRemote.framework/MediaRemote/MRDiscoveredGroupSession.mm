@interface MRDiscoveredGroupSession
- (BOOL)isEqual:(id)a3;
- (MRDiscoveredGroupSession)initWithCoder:(id)a3;
- (MRDiscoveredGroupSession)initWithData:(id)a3;
- (MRDiscoveredGroupSession)initWithIdentifier:(id)a3 hostInfo:(id)a4 source:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRDiscoveredGroupSession

- (MRDiscoveredGroupSession)initWithIdentifier:(id)a3 hostInfo:(id)a4 source:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MRDiscoveredGroupSession;
  v11 = [(MRDiscoveredGroupSession *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_hostInfo, a4);
    v12->_source = a5;
  }

  return v12;
}

- (MRDiscoveredGroupSession)initWithData:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MSVPropertyListDataClasses();
  v6 = [v5 mutableCopy];

  v15[0] = objc_opt_class();
  v7 = objc_opt_self();
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v6 addObjectsFromArray:v8];

  v14 = 0;
  v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:v4 error:&v14];

  v10 = v14;
  if (v10)
  {
    v11 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MRDiscoveredGroupSession initWithData:];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MRDiscoveredGroupSession)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MRDiscoveredGroupSession;
  v5 = [(MRDiscoveredGroupSession *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hst"];
    hostInfo = v5->_hostInfo;
    v5->_hostInfo = v8;

    v5->_source = [v4 decodeIntegerForKey:@"src"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"id"];
  [v5 encodeObject:self->_hostInfo forKey:@"hst"];
  [v5 encodeInteger:self->_source forKey:@"src"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRDiscoveredGroupSession *)self identifier];
      v7 = [(MRDiscoveredGroupSession *)v5 identifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(MRDiscoveredGroupSession *)self hostInfo];
        v9 = [(MRDiscoveredGroupSession *)v5 hostInfo];
        if ([v8 isEqual:v9])
        {
          v10 = [(MRDiscoveredGroupSession *)self source];
          v11 = v10 == [(MRDiscoveredGroupSession *)v5 source];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MRDiscoveredGroupSession alloc];
  identifier = self->_identifier;
  hostInfo = self->_hostInfo;
  source = self->_source;

  return [(MRDiscoveredGroupSession *)v4 initWithIdentifier:identifier hostInfo:hostInfo source:source];
}

- (void)initWithData:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[MRGroupSession] Failed to decode MRDiscoveredGroupSession: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end