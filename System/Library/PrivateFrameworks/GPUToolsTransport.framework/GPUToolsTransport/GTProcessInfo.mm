@interface GTProcessInfo
- (GTProcessInfo)init;
- (GTProcessInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTProcessInfo

- (GTProcessInfo)init
{
  v14.receiver = self;
  v14.super_class = GTProcessInfo;
  v2 = [(GTProcessInfo *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC38] processInfo];
    v4 = [v3 processName];
    processName = v2->_processName;
    v2->_processName = v4;

    v6 = [v3 environment];
    environment = v2->_environment;
    v2->_environment = v6;

    v8 = [v3 arguments];
    arguments = v2->_arguments;
    v2->_arguments = v8;

    v2->_processIdentifier = [v3 processIdentifier];
    v2->_ppid = getppid();
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];
    bundleIdentifier = v2->_bundleIdentifier;
    v2->_bundleIdentifier = v11;
  }

  return v2;
}

- (GTProcessInfo)initWithCoder:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = GTProcessInfo;
  v5 = [(GTProcessInfo *)&v44 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
    processName = v5->_processName;
    v5->_processName = v6;

    if (v5->_processName)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = v5->_processName;
        v5->_processName = 0;
      }
    }

    v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"arguments"];
    arguments = v5->_arguments;
    v5->_arguments = v9;

    if (v5->_arguments)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v11 = v5->_arguments;
        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v41;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v41 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v40 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v17 = v5->_arguments;
                v5->_arguments = 0;

                goto LABEL_18;
              }
            }

            v13 = [(NSArray *)v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v11 = v5->_arguments;
        v5->_arguments = 0;
      }

LABEL_18:
    }

    v18 = objc_opt_class();
    v19 = [v4 decodeDictionaryWithKeysOfClass:v18 objectsOfClass:objc_opt_class() forKey:@"environment"];
    environment = v5->_environment;
    v5->_environment = v19;

    if (v5->_environment)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v21 = v5->_environment;
        v22 = [(NSDictionary *)v21 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v37;
          while (2)
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v36 + 1) + 8 * j);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v28 = v5->_environment;
              if ((isKindOfClass & 1) == 0)
              {
                goto LABEL_33;
              }

              v29 = [(NSDictionary *)v28 objectForKeyedSubscript:v26, v36];
              objc_opt_class();
              v30 = objc_opt_isKindOfClass();

              if ((v30 & 1) == 0)
              {
                v28 = v5->_environment;
LABEL_33:
                v5->_environment = 0;

                goto LABEL_34;
              }
            }

            v23 = [(NSDictionary *)v21 countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v21 = v5->_environment;
        v5->_environment = 0;
      }

LABEL_34:
    }

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v31;

    if (v5->_bundleIdentifier)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = v5->_bundleIdentifier;
        v5->_bundleIdentifier = 0;
      }
    }

    v5->_processIdentifier = [v4 decodeInt32ForKey:{@"processIdentifier", v36}];
    v5->_ppid = [v4 decodeInt32ForKey:@"ppid"];
  }

  v34 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  processName = self->_processName;
  v5 = a3;
  [v5 encodeObject:processName forKey:@"processName"];
  [v5 encodeObject:self->_arguments forKey:@"arguments"];
  [v5 encodeObject:self->_environment forKey:@"environment"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeInt32:self->_processIdentifier forKey:@"processIdentifier"];
  [v5 encodeInt32:self->_ppid forKey:@"ppid"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(GTProcessInfo);
  [(GTProcessInfo *)v4 setProcessName:self->_processName];
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_arguments copyItems:1];
  [(GTProcessInfo *)v4 setArguments:v5];

  v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_environment copyItems:1];
  [(GTProcessInfo *)v4 setEnvironment:v6];

  [(GTProcessInfo *)v4 setBundleIdentifier:self->_bundleIdentifier];
  [(GTProcessInfo *)v4 setProcessIdentifier:self->_processIdentifier];
  [(GTProcessInfo *)v4 setProcessName:self->_processName];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: processName=%@ arguments=%@ environment=%@ bundleIdentifier=%@ processIdentifier=%d ppid=%d>", v5, self->_processName, self->_arguments, self->_environment, self->_bundleIdentifier, self->_processIdentifier, self->_ppid];

  return v6;
}

@end