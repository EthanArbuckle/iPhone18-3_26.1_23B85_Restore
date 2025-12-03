@interface MTIDScheme
- (BOOL)isEqual:(id)equal;
- (MTIDScheme)initWithCoder:(id)coder;
- (MTIDScheme)initWithNamespace:(id)namespace options:(id)options;
- (MTIDScheme)initWithNamespace:(id)namespace type:(int64_t)type;
- (NSString)containerIdentifier;
- (double)maxFutureTimeInterval;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)calculateHash;
- (unint64_t)storagePoolSize;
- (void)encodeWithCoder:(id)coder;
- (void)overrideLifespanMaybe;
@end

@implementation MTIDScheme

- (NSString)containerIdentifier
{
  containerIdentifier = self->_containerIdentifier;
  if (containerIdentifier)
  {
    hostProcessBundleIdentifier = containerIdentifier;
  }

  else if ([(MTIDScheme *)self idType]== 2)
  {
    hostProcessBundleIdentifier = @"com.apple.amp-ae.metricskit.identifiers";
  }

  else
  {
    v4 = +[MTFrameworkEnvironment sharedEnvironment];
    hostProcessBundleIdentifier = [v4 hostProcessBundleIdentifier];
  }

  return hostProcessBundleIdentifier;
}

- (unint64_t)storagePoolSize
{
  if (![(MTIDScheme *)self lifespan])
  {
    return 1;
  }

  v3 = 0x2A3000uLL / [(MTIDScheme *)self lifespan];
  if (v3 <= 3)
  {
    v3 = 3;
  }

  if (v3 >= 0x20)
  {
    return 32;
  }

  else
  {
    return v3;
  }
}

- (double)maxFutureTimeInterval
{
  if (![(MTIDScheme *)self lifespan])
  {
    return 1.79769313e308;
  }

  storagePoolSize = [(MTIDScheme *)self storagePoolSize];
  v4 = ([(MTIDScheme *)self lifespan]* storagePoolSize);
  [(MTIDScheme *)self maxPastTimeInterval];
  return v4 - v5;
}

- (MTIDScheme)initWithNamespace:(id)namespace options:(id)options
{
  namespaceCopy = namespace;
  optionsCopy = options;
  v20.receiver = self;
  v20.super_class = MTIDScheme;
  v8 = [(MTIDScheme *)&v20 init];
  v9 = v8;
  if (v8)
  {
    [(MTIDScheme *)v8 setIdNamespace:namespaceCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [optionsCopy objectForKeyedSubscript:@"rotation"];
      v11 = [@"daily" compare:v10 options:1];

      if (v11)
      {
        [(MTIDScheme *)v9 setRotationSchedule:0];
        v12 = [optionsCopy objectForKeyedSubscript:@"lifespan"];
        -[MTIDScheme setLifespan:](v9, "setLifespan:", [v12 longLongValue]);
      }

      else
      {
        [(MTIDScheme *)v9 setRotationSchedule:1];
        [(MTIDScheme *)v9 setLifespan:86400];
      }

      v13 = [optionsCopy objectForKeyedSubscript:@"correlations"];
      v14 = [v13 copy];
      [(MTIDScheme *)v9 setCorrelations:v14];

      v15 = [optionsCopy objectForKeyedSubscript:@"version"];
      [(MTIDScheme *)v9 setVersion:v15];

      v16 = [optionsCopy objectForKeyedSubscript:@"type"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([@"userid" caseInsensitiveCompare:v16])
        {
          if ([@"user" caseInsensitiveCompare:v16])
          {
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }
        }

        else
        {
          v17 = 2;
        }
      }

      else
      {
        v17 = 1;
      }

      [(MTIDScheme *)v9 setIdType:v17];
      v18 = [optionsCopy objectForKeyedSubscript:@"container"];
      [(MTIDScheme *)v9 setContainerIdentifier:v18];
    }

    else
    {
      [(MTIDScheme *)v9 setIdType:1];
    }

    [(MTIDScheme *)v9 overrideLifespanMaybe];
    [(MTIDScheme *)v9 setLocalHash:[(MTIDScheme *)v9 calculateHash]];
  }

  return v9;
}

- (MTIDScheme)initWithNamespace:(id)namespace type:(int64_t)type
{
  namespaceCopy = namespace;
  v10.receiver = self;
  v10.super_class = MTIDScheme;
  v7 = [(MTIDScheme *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MTIDScheme *)v7 setIdNamespace:namespaceCopy];
    [(MTIDScheme *)v8 setIdType:type];
    [(MTIDScheme *)v8 overrideLifespanMaybe];
    [(MTIDScheme *)v8 setLocalHash:[(MTIDScheme *)v8 calculateHash]];
  }

  return v8;
}

- (void)overrideLifespanMaybe
{
  v3 = +[MTFrameworkEnvironment sharedEnvironment];
  isInternalBuild = [v3 isInternalBuild];

  if (isInternalBuild)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = MEMORY[0x277CCACA8];
    idNamespace = [(MTIDScheme *)self idNamespace];
    v7 = [v5 stringWithFormat:@"MTIDServiceLifespanOverride~%@", idNamespace];

    v8 = [standardUserDefaults integerForKey:v7];
    if (!v8)
    {
      v8 = [standardUserDefaults integerForKey:@"MTIDServiceLifespanOverride"];
    }

    if (v8 >= 1)
    {
      [(MTIDScheme *)self setRotationSchedule:0];
      [(MTIDScheme *)self setLifespan:v8];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  idNamespace = [(MTIDScheme *)self idNamespace];
  lifespan = [(MTIDScheme *)self lifespan];
  correlations = [(MTIDScheme *)self correlations];
  v9 = [v3 stringWithFormat:@"<%@: %p, namespace: %@, lifespan: %lld correlations: %@ >", v5, self, idNamespace, lifespan, correlations];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(MTIDScheme *)self hash];
    if (v6 == [v5 hash])
    {
      idNamespace = [(MTIDScheme *)self idNamespace];
      idNamespace2 = [v5 idNamespace];
      if ([idNamespace isEqual:idNamespace2] && (v9 = -[MTIDScheme lifespan](self, "lifespan"), v9 == objc_msgSend(v5, "lifespan")) && (v10 = -[MTIDScheme idType](self, "idType"), v10 == objc_msgSend(v5, "idType")))
      {
        correlations = [(MTIDScheme *)self correlations];
        v12 = correlations;
        v13 = MEMORY[0x277CBEBF8];
        if (correlations)
        {
          v14 = correlations;
        }

        else
        {
          v14 = MEMORY[0x277CBEBF8];
        }

        correlations2 = [v5 correlations];
        v16 = correlations2;
        if (correlations2)
        {
          v17 = correlations2;
        }

        else
        {
          v17 = v13;
        }

        if ([v14 isEqual:v17])
        {
          version = [(MTIDScheme *)self version];
          v31 = version;
          if (version)
          {
            v19 = version;
          }

          else
          {
            v19 = &stru_286A3A510;
          }

          version2 = [v5 version];
          v21 = version2;
          if (version2)
          {
            v22 = version2;
          }

          else
          {
            v22 = &stru_286A3A510;
          }

          if ([(__CFString *)v19 isEqual:v22])
          {
            containerIdentifier = [(MTIDScheme *)self containerIdentifier];
            if (containerIdentifier)
            {
              v24 = containerIdentifier;
            }

            else
            {
              v24 = &stru_286A3A510;
            }

            containerIdentifier2 = [v5 containerIdentifier];
            v26 = containerIdentifier2;
            if (containerIdentifier2)
            {
              v27 = containerIdentifier2;
            }

            else
            {
              v27 = &stru_286A3A510;
            }

            v28 = [(__CFString *)v24 isEqual:v27];
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (unint64_t)calculateHash
{
  v24 = *MEMORY[0x277D85DE8];
  idNamespace = [(MTIDScheme *)self idNamespace];
  v4 = [idNamespace hash];

  lifespan = [(MTIDScheme *)self lifespan];
  v6 = lifespan ^ [(MTIDScheme *)self rotationSchedule]^ v4;
  version = [(MTIDScheme *)self version];
  v8 = [version hash];

  v9 = v6 ^ v8 ^ [(MTIDScheme *)self idType];
  containerIdentifier = [(MTIDScheme *)self containerIdentifier];
  v11 = v9 ^ [containerIdentifier hash];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  correlations = [(MTIDScheme *)self correlations];
  v13 = [correlations countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(correlations);
        }

        v11 ^= [*(*(&v19 + 1) + 8 * v16++) hash];
      }

      while (v14 != v16);
      v14 = [correlations countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  idNamespace = [(MTIDScheme *)self idNamespace];
  [dictionary setObject:idNamespace forKeyedSubscript:@"namespace"];

  if ([(MTIDScheme *)self idType]== 2)
  {
    v5 = @"user";
  }

  else
  {
    v5 = @"client";
  }

  [dictionary setObject:v5 forKeyedSubscript:@"type"];
  if ([(MTIDScheme *)self rotationSchedule]== 1)
  {
    [dictionary setObject:@"daily" forKeyedSubscript:@"rotation"];
  }

  else if ([(MTIDScheme *)self lifespan]>= 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[MTIDScheme lifespan](self, "lifespan")}];
    [dictionary setObject:v6 forKeyedSubscript:@"lifespan"];
  }

  correlations = [(MTIDScheme *)self correlations];
  v8 = [correlations count];

  if (v8)
  {
    correlations2 = [(MTIDScheme *)self correlations];
    [dictionary setObject:correlations2 forKeyedSubscript:@"correlations"];
  }

  version = [(MTIDScheme *)self version];
  [dictionary setObject:version forKeyedSubscript:@"version"];

  containerIdentifier = [(MTIDScheme *)self containerIdentifier];
  [dictionary setObject:containerIdentifier forKeyedSubscript:@"container"];

  topics = [(MTIDScheme *)self topics];
  v13 = [topics count];

  if (v13)
  {
    topics2 = [(MTIDScheme *)self topics];
    [dictionary setObject:topics2 forKeyedSubscript:@"topics"];
  }

  if ([(MTIDScheme *)self isDefault])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTIDScheme isDefault](self, "isDefault")}];
    [dictionary setObject:v15 forKeyedSubscript:@"default"];
  }

  v16 = [dictionary copy];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  idNamespace = [(MTIDScheme *)self idNamespace];
  [coderCopy encodeObject:idNamespace forKey:@"namespace"];

  [coderCopy encodeInt:-[MTIDScheme idType](self forKey:{"idType"), @"type"}];
  [coderCopy encodeInt:-[MTIDScheme rotationSchedule](self forKey:{"rotationSchedule"), @"rotation"}];
  [coderCopy encodeInt64:-[MTIDScheme lifespan](self forKey:{"lifespan"), @"lifespan"}];
  correlations = [(MTIDScheme *)self correlations];
  [coderCopy encodeObject:correlations forKey:@"correlations"];

  version = [(MTIDScheme *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  containerIdentifier = [(MTIDScheme *)self containerIdentifier];
  [coderCopy encodeObject:containerIdentifier forKey:@"container"];

  topics = [(MTIDScheme *)self topics];
  [coderCopy encodeObject:topics forKey:@"topics"];

  [coderCopy encodeBool:-[MTIDScheme isDefault](self forKey:{"isDefault"), @"default"}];
  [coderCopy encodeInt:-[MTIDScheme localHash](self forKey:{"localHash"), @"localHash"}];
  [coderCopy encodeInt:-[MTIDScheme correlationHash](self forKey:{"correlationHash"), @"correlationHash"}];
}

- (MTIDScheme)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MTIDScheme;
  v5 = [(MTIDScheme *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"namespace"];
    [(MTIDScheme *)v5 setIdNamespace:v6];

    -[MTIDScheme setIdType:](v5, "setIdType:", [coderCopy decodeIntForKey:@"type"]);
    -[MTIDScheme setRotationSchedule:](v5, "setRotationSchedule:", [coderCopy decodeIntForKey:@"rotation"]);
    -[MTIDScheme setLifespan:](v5, "setLifespan:", [coderCopy decodeInt64ForKey:@"lifespan"]);
    v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"correlations"];
    [(MTIDScheme *)v5 setCorrelations:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    [(MTIDScheme *)v5 setVersion:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    [(MTIDScheme *)v5 setContainerIdentifier:v9];

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"topics"];
    [(MTIDScheme *)v5 setTopics:v10];

    -[MTIDScheme setIsDefault:](v5, "setIsDefault:", [coderCopy decodeBoolForKey:@"default"]);
    -[MTIDScheme setLocalHash:](v5, "setLocalHash:", [coderCopy decodeIntForKey:@"localHash"]);
    -[MTIDScheme setCorrelationHash:](v5, "setCorrelationHash:", [coderCopy decodeIntForKey:@"correlationHash"]);
  }

  return v5;
}

@end