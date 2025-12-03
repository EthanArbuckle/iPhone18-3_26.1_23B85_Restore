@interface MRDiscoveredGroupSession
- (BOOL)isEqual:(id)equal;
- (MRDiscoveredGroupSession)initWithCoder:(id)coder;
- (MRDiscoveredGroupSession)initWithData:(id)data;
- (MRDiscoveredGroupSession)initWithIdentifier:(id)identifier hostInfo:(id)info source:(int64_t)source;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRDiscoveredGroupSession

- (MRDiscoveredGroupSession)initWithIdentifier:(id)identifier hostInfo:(id)info source:(int64_t)source
{
  identifierCopy = identifier;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = MRDiscoveredGroupSession;
  v11 = [(MRDiscoveredGroupSession *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_hostInfo, info);
    v12->_source = source;
  }

  return v12;
}

- (MRDiscoveredGroupSession)initWithData:(id)data
{
  v15[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = MSVPropertyListDataClasses();
  v6 = [v5 mutableCopy];

  v15[0] = objc_opt_class();
  v7 = objc_opt_self();
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v6 addObjectsFromArray:v8];

  v14 = 0;
  v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:dataCopy error:&v14];

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

- (MRDiscoveredGroupSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MRDiscoveredGroupSession;
  v5 = [(MRDiscoveredGroupSession *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hst"];
    hostInfo = v5->_hostInfo;
    v5->_hostInfo = v8;

    v5->_source = [coderCopy decodeIntegerForKey:@"src"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"id"];
  [coderCopy encodeObject:self->_hostInfo forKey:@"hst"];
  [coderCopy encodeInteger:self->_source forKey:@"src"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(MRDiscoveredGroupSession *)self identifier];
      identifier2 = [(MRDiscoveredGroupSession *)v5 identifier];
      if ([identifier isEqual:identifier2])
      {
        hostInfo = [(MRDiscoveredGroupSession *)self hostInfo];
        hostInfo2 = [(MRDiscoveredGroupSession *)v5 hostInfo];
        if ([hostInfo isEqual:hostInfo2])
        {
          source = [(MRDiscoveredGroupSession *)self source];
          v11 = source == [(MRDiscoveredGroupSession *)v5 source];
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

- (id)copyWithZone:(_NSZone *)zone
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