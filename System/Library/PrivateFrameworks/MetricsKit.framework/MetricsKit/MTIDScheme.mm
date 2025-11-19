@interface MTIDScheme
- (BOOL)isEqual:(id)a3;
- (MTIDScheme)initWithCoder:(id)a3;
- (MTIDScheme)initWithNamespace:(id)a3 options:(id)a4;
- (MTIDScheme)initWithNamespace:(id)a3 type:(int64_t)a4;
- (NSString)containerIdentifier;
- (double)maxFutureTimeInterval;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)calculateHash;
- (unint64_t)storagePoolSize;
- (void)encodeWithCoder:(id)a3;
- (void)overrideLifespanMaybe;
@end

@implementation MTIDScheme

- (NSString)containerIdentifier
{
  containerIdentifier = self->_containerIdentifier;
  if (containerIdentifier)
  {
    v3 = containerIdentifier;
  }

  else if ([(MTIDScheme *)self idType]== 2)
  {
    v3 = @"com.apple.amp-ae.metricskit.identifiers";
  }

  else
  {
    v4 = +[MTFrameworkEnvironment sharedEnvironment];
    v3 = [v4 hostProcessBundleIdentifier];
  }

  return v3;
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

  v3 = [(MTIDScheme *)self storagePoolSize];
  v4 = ([(MTIDScheme *)self lifespan]* v3);
  [(MTIDScheme *)self maxPastTimeInterval];
  return v4 - v5;
}

- (MTIDScheme)initWithNamespace:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = MTIDScheme;
  v8 = [(MTIDScheme *)&v20 init];
  v9 = v8;
  if (v8)
  {
    [(MTIDScheme *)v8 setIdNamespace:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 objectForKeyedSubscript:@"rotation"];
      v11 = [@"daily" compare:v10 options:1];

      if (v11)
      {
        [(MTIDScheme *)v9 setRotationSchedule:0];
        v12 = [v7 objectForKeyedSubscript:@"lifespan"];
        -[MTIDScheme setLifespan:](v9, "setLifespan:", [v12 longLongValue]);
      }

      else
      {
        [(MTIDScheme *)v9 setRotationSchedule:1];
        [(MTIDScheme *)v9 setLifespan:86400];
      }

      v13 = [v7 objectForKeyedSubscript:@"correlations"];
      v14 = [v13 copy];
      [(MTIDScheme *)v9 setCorrelations:v14];

      v15 = [v7 objectForKeyedSubscript:@"version"];
      [(MTIDScheme *)v9 setVersion:v15];

      v16 = [v7 objectForKeyedSubscript:@"type"];
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
      v18 = [v7 objectForKeyedSubscript:@"container"];
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

- (MTIDScheme)initWithNamespace:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MTIDScheme;
  v7 = [(MTIDScheme *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MTIDScheme *)v7 setIdNamespace:v6];
    [(MTIDScheme *)v8 setIdType:a4];
    [(MTIDScheme *)v8 overrideLifespanMaybe];
    [(MTIDScheme *)v8 setLocalHash:[(MTIDScheme *)v8 calculateHash]];
  }

  return v8;
}

- (void)overrideLifespanMaybe
{
  v3 = +[MTFrameworkEnvironment sharedEnvironment];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = MEMORY[0x277CCACA8];
    v6 = [(MTIDScheme *)self idNamespace];
    v7 = [v5 stringWithFormat:@"MTIDServiceLifespanOverride~%@", v6];

    v8 = [v9 integerForKey:v7];
    if (!v8)
    {
      v8 = [v9 integerForKey:@"MTIDServiceLifespanOverride"];
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
  v6 = [(MTIDScheme *)self idNamespace];
  v7 = [(MTIDScheme *)self lifespan];
  v8 = [(MTIDScheme *)self correlations];
  v9 = [v3 stringWithFormat:@"<%@: %p, namespace: %@, lifespan: %lld correlations: %@ >", v5, self, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MTIDScheme *)self hash];
    if (v6 == [v5 hash])
    {
      v7 = [(MTIDScheme *)self idNamespace];
      v8 = [v5 idNamespace];
      if ([v7 isEqual:v8] && (v9 = -[MTIDScheme lifespan](self, "lifespan"), v9 == objc_msgSend(v5, "lifespan")) && (v10 = -[MTIDScheme idType](self, "idType"), v10 == objc_msgSend(v5, "idType")))
      {
        v11 = [(MTIDScheme *)self correlations];
        v12 = v11;
        v13 = MEMORY[0x277CBEBF8];
        if (v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = MEMORY[0x277CBEBF8];
        }

        v15 = [v5 correlations];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }

        if ([v14 isEqual:v17])
        {
          v18 = [(MTIDScheme *)self version];
          v31 = v18;
          if (v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = &stru_286A3A510;
          }

          v20 = [v5 version];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = &stru_286A3A510;
          }

          if ([(__CFString *)v19 isEqual:v22])
          {
            v23 = [(MTIDScheme *)self containerIdentifier];
            if (v23)
            {
              v24 = v23;
            }

            else
            {
              v24 = &stru_286A3A510;
            }

            v25 = [v5 containerIdentifier];
            v26 = v25;
            if (v25)
            {
              v27 = v25;
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
  v3 = [(MTIDScheme *)self idNamespace];
  v4 = [v3 hash];

  v5 = [(MTIDScheme *)self lifespan];
  v6 = v5 ^ [(MTIDScheme *)self rotationSchedule]^ v4;
  v7 = [(MTIDScheme *)self version];
  v8 = [v7 hash];

  v9 = v6 ^ v8 ^ [(MTIDScheme *)self idType];
  v10 = [(MTIDScheme *)self containerIdentifier];
  v11 = v9 ^ [v10 hash];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(MTIDScheme *)self correlations];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v12);
        }

        v11 ^= [*(*(&v19 + 1) + 8 * v16++) hash];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(MTIDScheme *)self idNamespace];
  [v3 setObject:v4 forKeyedSubscript:@"namespace"];

  if ([(MTIDScheme *)self idType]== 2)
  {
    v5 = @"user";
  }

  else
  {
    v5 = @"client";
  }

  [v3 setObject:v5 forKeyedSubscript:@"type"];
  if ([(MTIDScheme *)self rotationSchedule]== 1)
  {
    [v3 setObject:@"daily" forKeyedSubscript:@"rotation"];
  }

  else if ([(MTIDScheme *)self lifespan]>= 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[MTIDScheme lifespan](self, "lifespan")}];
    [v3 setObject:v6 forKeyedSubscript:@"lifespan"];
  }

  v7 = [(MTIDScheme *)self correlations];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(MTIDScheme *)self correlations];
    [v3 setObject:v9 forKeyedSubscript:@"correlations"];
  }

  v10 = [(MTIDScheme *)self version];
  [v3 setObject:v10 forKeyedSubscript:@"version"];

  v11 = [(MTIDScheme *)self containerIdentifier];
  [v3 setObject:v11 forKeyedSubscript:@"container"];

  v12 = [(MTIDScheme *)self topics];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [(MTIDScheme *)self topics];
    [v3 setObject:v14 forKeyedSubscript:@"topics"];
  }

  if ([(MTIDScheme *)self isDefault])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTIDScheme isDefault](self, "isDefault")}];
    [v3 setObject:v15 forKeyedSubscript:@"default"];
  }

  v16 = [v3 copy];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(MTIDScheme *)self idNamespace];
  [v9 encodeObject:v4 forKey:@"namespace"];

  [v9 encodeInt:-[MTIDScheme idType](self forKey:{"idType"), @"type"}];
  [v9 encodeInt:-[MTIDScheme rotationSchedule](self forKey:{"rotationSchedule"), @"rotation"}];
  [v9 encodeInt64:-[MTIDScheme lifespan](self forKey:{"lifespan"), @"lifespan"}];
  v5 = [(MTIDScheme *)self correlations];
  [v9 encodeObject:v5 forKey:@"correlations"];

  v6 = [(MTIDScheme *)self version];
  [v9 encodeObject:v6 forKey:@"version"];

  v7 = [(MTIDScheme *)self containerIdentifier];
  [v9 encodeObject:v7 forKey:@"container"];

  v8 = [(MTIDScheme *)self topics];
  [v9 encodeObject:v8 forKey:@"topics"];

  [v9 encodeBool:-[MTIDScheme isDefault](self forKey:{"isDefault"), @"default"}];
  [v9 encodeInt:-[MTIDScheme localHash](self forKey:{"localHash"), @"localHash"}];
  [v9 encodeInt:-[MTIDScheme correlationHash](self forKey:{"correlationHash"), @"correlationHash"}];
}

- (MTIDScheme)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MTIDScheme;
  v5 = [(MTIDScheme *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"namespace"];
    [(MTIDScheme *)v5 setIdNamespace:v6];

    -[MTIDScheme setIdType:](v5, "setIdType:", [v4 decodeIntForKey:@"type"]);
    -[MTIDScheme setRotationSchedule:](v5, "setRotationSchedule:", [v4 decodeIntForKey:@"rotation"]);
    -[MTIDScheme setLifespan:](v5, "setLifespan:", [v4 decodeInt64ForKey:@"lifespan"]);
    v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"correlations"];
    [(MTIDScheme *)v5 setCorrelations:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    [(MTIDScheme *)v5 setVersion:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    [(MTIDScheme *)v5 setContainerIdentifier:v9];

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"topics"];
    [(MTIDScheme *)v5 setTopics:v10];

    -[MTIDScheme setIsDefault:](v5, "setIsDefault:", [v4 decodeBoolForKey:@"default"]);
    -[MTIDScheme setLocalHash:](v5, "setLocalHash:", [v4 decodeIntForKey:@"localHash"]);
    -[MTIDScheme setCorrelationHash:](v5, "setCorrelationHash:", [v4 decodeIntForKey:@"correlationHash"]);
  }

  return v5;
}

@end