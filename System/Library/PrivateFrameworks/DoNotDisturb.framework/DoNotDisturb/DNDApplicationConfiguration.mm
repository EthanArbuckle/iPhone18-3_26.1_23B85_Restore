@interface DNDApplicationConfiguration
+ (id)defaultConfiguration;
- (BOOL)isEqual:(id)equal;
- (DNDApplicationConfiguration)initWithCoder:(id)coder;
- (id)_initWithMinimumBreakthroughUrgency:(unint64_t)urgency allowedThreads:(id)threads deniedThreads:(id)deniedThreads;
- (id)description;
- (id)diffDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDApplicationConfiguration

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(DNDApplicationConfiguration);

  return v2;
}

- (id)_initWithMinimumBreakthroughUrgency:(unint64_t)urgency allowedThreads:(id)threads deniedThreads:(id)deniedThreads
{
  threadsCopy = threads;
  deniedThreadsCopy = deniedThreads;
  v17.receiver = self;
  v17.super_class = DNDApplicationConfiguration;
  v10 = [(DNDApplicationConfiguration *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_minimumBreakthroughUrgency = urgency;
    if (threadsCopy)
    {
      v12 = [threadsCopy mutableCopy];
    }

    else
    {
      v12 = objc_opt_new();
    }

    allowedThreads = v11->_allowedThreads;
    v11->_allowedThreads = v12;

    if (deniedThreadsCopy)
    {
      v14 = [deniedThreadsCopy mutableCopy];
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
  minimumBreakthroughUrgency = [(DNDApplicationConfiguration *)self minimumBreakthroughUrgency];
  allowedThreads = [(DNDApplicationConfiguration *)self allowedThreads];
  v5 = [allowedThreads hash] ^ minimumBreakthroughUrgency;
  deniedThreads = [(DNDApplicationConfiguration *)self deniedThreads];
  v7 = [deniedThreads hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      minimumBreakthroughUrgency = [(DNDApplicationConfiguration *)self minimumBreakthroughUrgency];
      if (minimumBreakthroughUrgency != [(DNDApplicationConfiguration *)v6 minimumBreakthroughUrgency])
      {
        v14 = 0;
LABEL_27:

        goto LABEL_28;
      }

      allowedThreads = [(DNDApplicationConfiguration *)self allowedThreads];
      allowedThreads2 = [(DNDApplicationConfiguration *)v6 allowedThreads];
      if (allowedThreads != allowedThreads2)
      {
        allowedThreads3 = [(DNDApplicationConfiguration *)self allowedThreads];
        if (!allowedThreads3)
        {
          v14 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v3 = allowedThreads3;
        allowedThreads4 = [(DNDApplicationConfiguration *)v6 allowedThreads];
        if (!allowedThreads4)
        {
          v14 = 0;
LABEL_25:

          goto LABEL_26;
        }

        allowedThreads5 = [(DNDApplicationConfiguration *)self allowedThreads];
        allowedThreads6 = [(DNDApplicationConfiguration *)v6 allowedThreads];
        if (![allowedThreads5 isEqual:allowedThreads6])
        {
          v14 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v25 = allowedThreads6;
        v26 = allowedThreads5;
        v27 = allowedThreads4;
      }

      deniedThreads = [(DNDApplicationConfiguration *)self deniedThreads];
      deniedThreads2 = [(DNDApplicationConfiguration *)v6 deniedThreads];
      v17 = deniedThreads2;
      if (deniedThreads == deniedThreads2)
      {

        v14 = 1;
      }

      else
      {
        deniedThreads3 = [(DNDApplicationConfiguration *)self deniedThreads];
        if (deniedThreads3)
        {
          v19 = deniedThreads3;
          deniedThreads4 = [(DNDApplicationConfiguration *)v6 deniedThreads];
          if (deniedThreads4)
          {
            deniedThreads5 = [(DNDApplicationConfiguration *)self deniedThreads];
            [(DNDApplicationConfiguration *)v6 deniedThreads];
            v21 = v24 = v3;
            v14 = [deniedThreads5 isEqual:v21];

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

      allowedThreads5 = v26;
      allowedThreads4 = v27;
      allowedThreads6 = v25;
      if (allowedThreads == allowedThreads2)
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
  string = [MEMORY[0x277CCAB68] string];
  v4 = DNDStringFromBreakthroughUrgency(self->_minimumBreakthroughUrgency);
  [string appendFormat:@"minimumBreakthroughUrgency:%@;", v4];

  if ([(NSMutableSet *)self->_allowedThreads count])
  {
    [string appendFormat:@"allowedThreads:%@;", self->_allowedThreads];
  }

  if ([(NSMutableSet *)self->_deniedThreads count])
  {
    [string appendFormat:@"deniedThreads:%@;", self->_deniedThreads];
  }

  return string;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableApplicationConfiguration alloc];
  minimumBreakthroughUrgency = self->_minimumBreakthroughUrgency;
  allowedThreads = self->_allowedThreads;
  deniedThreads = self->_deniedThreads;

  return [(DNDApplicationConfiguration *)v4 _initWithMinimumBreakthroughUrgency:minimumBreakthroughUrgency allowedThreads:allowedThreads deniedThreads:deniedThreads];
}

- (DNDApplicationConfiguration)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"minimumBreakthroughUrgency"];
  v6 = MEMORY[0x277CBEB98];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"allowedThreads"];

  v10 = MEMORY[0x277CBEB98];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"deniedThreads"];

  v14 = [(DNDApplicationConfiguration *)self _initWithMinimumBreakthroughUrgency:v5 allowedThreads:v9 deniedThreads:v13];
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  minimumBreakthroughUrgency = self->_minimumBreakthroughUrgency;
  coderCopy = coder;
  [coderCopy encodeInteger:minimumBreakthroughUrgency forKey:@"minimumBreakthroughUrgency"];
  [coderCopy encodeObject:self->_allowedThreads forKey:@"allowedThreads"];
  [coderCopy encodeObject:self->_deniedThreads forKey:@"deniedThreads"];
}

@end