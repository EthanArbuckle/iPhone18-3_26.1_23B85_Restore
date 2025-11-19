@interface DNDApplicationConfiguration
+ (id)defaultConfiguration;
- (BOOL)isEqual:(id)a3;
- (DNDApplicationConfiguration)initWithCoder:(id)a3;
- (id)_initWithMinimumBreakthroughUrgency:(unint64_t)a3 allowedThreads:(id)a4 deniedThreads:(id)a5;
- (id)description;
- (id)diffDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDApplicationConfiguration

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(DNDApplicationConfiguration);

  return v2;
}

- (id)_initWithMinimumBreakthroughUrgency:(unint64_t)a3 allowedThreads:(id)a4 deniedThreads:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = DNDApplicationConfiguration;
  v10 = [(DNDApplicationConfiguration *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_minimumBreakthroughUrgency = a3;
    if (v8)
    {
      v12 = [v8 mutableCopy];
    }

    else
    {
      v12 = objc_opt_new();
    }

    allowedThreads = v11->_allowedThreads;
    v11->_allowedThreads = v12;

    if (v9)
    {
      v14 = [v9 mutableCopy];
    }

    else
    {
      v14 = objc_opt_new();
    }

    deniedThreads = v11->_deniedThreads;
    v11->_deniedThreads = v14;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(DNDApplicationConfiguration *)self minimumBreakthroughUrgency];
  v4 = [(DNDApplicationConfiguration *)self allowedThreads];
  v5 = [v4 hash] ^ v3;
  v6 = [(DNDApplicationConfiguration *)self deniedThreads];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDApplicationConfiguration *)self minimumBreakthroughUrgency];
      if (v7 != [(DNDApplicationConfiguration *)v6 minimumBreakthroughUrgency])
      {
        v14 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v8 = [(DNDApplicationConfiguration *)self allowedThreads];
      v9 = [(DNDApplicationConfiguration *)v6 allowedThreads];
      if (v8 != v9)
      {
        v10 = [(DNDApplicationConfiguration *)self allowedThreads];
        if (!v10)
        {
          v14 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v3 = v10;
        v11 = [(DNDApplicationConfiguration *)v6 allowedThreads];
        if (!v11)
        {
          v14 = 0;
LABEL_25:

          goto LABEL_26;
        }

        v12 = [(DNDApplicationConfiguration *)self allowedThreads];
        v13 = [(DNDApplicationConfiguration *)v6 allowedThreads];
        if (![v12 isEqual:v13])
        {
          v14 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v25 = v13;
        v26 = v12;
        v27 = v11;
      }

      v15 = [(DNDApplicationConfiguration *)self deniedThreads];
      v16 = [(DNDApplicationConfiguration *)v6 deniedThreads];
      v17 = v16;
      if (v15 == v16)
      {

        v14 = 1;
      }

      else
      {
        v18 = [(DNDApplicationConfiguration *)self deniedThreads];
        if (v18)
        {
          v19 = v18;
          v20 = [(DNDApplicationConfiguration *)v6 deniedThreads];
          if (v20)
          {
            v23 = [(DNDApplicationConfiguration *)self deniedThreads];
            [(DNDApplicationConfiguration *)v6 deniedThreads];
            v21 = v24 = v3;
            v14 = [v23 isEqual:v21];

            v3 = v24;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {

          v14 = 0;
        }
      }

      v12 = v26;
      v11 = v27;
      v13 = v25;
      if (v8 == v9)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    v14 = 0;
  }

LABEL_28:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = DNDStringFromBreakthroughUrgency(self->_minimumBreakthroughUrgency);
  v6 = [v3 stringWithFormat:@"<%@: %p minimumBreakthroughUrgency: %@; allowedThreads: %@; deniedThreads: %@; >", v4, self, v5, self->_allowedThreads, self->_deniedThreads];;

  return v6;
}

- (id)diffDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = DNDStringFromBreakthroughUrgency(self->_minimumBreakthroughUrgency);
  [v3 appendFormat:@"minimumBreakthroughUrgency:%@;", v4];

  if ([(NSMutableSet *)self->_allowedThreads count])
  {
    [v3 appendFormat:@"allowedThreads:%@;", self->_allowedThreads];
  }

  if ([(NSMutableSet *)self->_deniedThreads count])
  {
    [v3 appendFormat:@"deniedThreads:%@;", self->_deniedThreads];
  }

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableApplicationConfiguration alloc];
  minimumBreakthroughUrgency = self->_minimumBreakthroughUrgency;
  allowedThreads = self->_allowedThreads;
  deniedThreads = self->_deniedThreads;

  return [(DNDApplicationConfiguration *)v4 _initWithMinimumBreakthroughUrgency:minimumBreakthroughUrgency allowedThreads:allowedThreads deniedThreads:deniedThreads];
}

- (DNDApplicationConfiguration)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"minimumBreakthroughUrgency"];
  v6 = MEMORY[0x277CBEB98];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"allowedThreads"];

  v10 = MEMORY[0x277CBEB98];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"deniedThreads"];

  v14 = [(DNDApplicationConfiguration *)self _initWithMinimumBreakthroughUrgency:v5 allowedThreads:v9 deniedThreads:v13];
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  minimumBreakthroughUrgency = self->_minimumBreakthroughUrgency;
  v5 = a3;
  [v5 encodeInteger:minimumBreakthroughUrgency forKey:@"minimumBreakthroughUrgency"];
  [v5 encodeObject:self->_allowedThreads forKey:@"allowedThreads"];
  [v5 encodeObject:self->_deniedThreads forKey:@"deniedThreads"];
}

@end