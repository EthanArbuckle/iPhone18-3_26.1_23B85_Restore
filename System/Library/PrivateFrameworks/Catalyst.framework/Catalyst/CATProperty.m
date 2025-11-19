@interface CATProperty
+ (id)propertiesForClass:(Class)a3;
+ (id)propertiesForProtocol:(id)a3;
+ (void)initialize;
- (CATProperty)initWithName:(const char *)a3 attributes:(const char *)a4;
- (SEL)customGetterSelector;
- (SEL)customSetterSelector;
@end

@implementation CATProperty

+ (void)initialize
{
  if (initialize_once != -1)
  {
    +[CATProperty initialize];
  }
}

uint64_t __25__CATProperty_initialize__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = CATPropertyPropertiesByClassName;
  CATPropertyPropertiesByClassName = v0;

  v2 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v3 = CATPropertyPropertiesByProtocolName;
  CATPropertyPropertiesByProtocolName = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

+ (id)propertiesForClass:(Class)a3
{
  Superclass = a3;
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromClass(a3);
  v5 = [CATPropertyPropertiesByClassName objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    do
    {
      outCount = 0;
      v9 = class_copyPropertyList(Superclass, &outCount);
      if (outCount)
      {
        for (i = 0; i < outCount; ++i)
        {
          v11 = v9[i];
          Name = property_getName(v11);
          v13 = [[CATProperty alloc] initWithName:Name attributes:property_getAttributes(v11)];
          [v8 addObject:v13];
        }
      }

      free(v9);
      Superclass = class_getSuperclass(Superclass);
    }

    while (Superclass);
    v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1 selector:sel_localizedStandardCompare_];
    v19[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v7 = [v8 sortedArrayUsingDescriptors:v15];

    [CATPropertyPropertiesByClassName setObject:v7 forKey:v4];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)propertiesForProtocol:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = NSStringFromProtocol(v3);
  v5 = [CATPropertyPropertiesByProtocolName objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    outCount = 0;
    v9 = protocol_copyPropertyList(v3, &outCount);
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v11 = v9[i];
        Name = property_getName(v11);
        v13 = [[CATProperty alloc] initWithName:Name attributes:property_getAttributes(v11)];
        [v8 addObject:v13];
      }
    }

    free(v9);
    v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1 selector:sel_localizedStandardCompare_];
    v19[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v7 = [v8 sortedArrayUsingDescriptors:v15];

    [CATPropertyPropertiesByProtocolName setObject:v7 forKey:v4];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (CATProperty)initWithName:(const char *)a3 attributes:(const char *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [CATProperty initWithName:a2 attributes:self];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_91:
    [CATProperty initWithName:a2 attributes:self];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_91;
  }

LABEL_3:
  v33.receiver = self;
  v33.super_class = CATProperty;
  v8 = [(CATProperty *)&v33 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    name = v8->_name;
    v8->_name = v9;

    v8->_association = 0;
    v11 = strlen(a4);
    v12 = strcpy(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
    v13 = strtok(v12, ",");
    if (v13)
    {
      v14 = v13;
      do
      {
        v15 = *v14;
        if (v15 <= 0x51)
        {
          if (*v14 > 0x46u)
          {
            if (v15 == 71)
            {
              v20 = sel_registerName(v14 + 1);
              if (v20)
              {
                v21 = v20;
              }

              else
              {
                v21 = 0;
              }

              v8->_customGetterSelector = v21;
            }

            else if (v15 == 78)
            {
              v8->_nonAtomic = 1;
            }
          }

          else if (v15 == 38)
          {
            v8->_association = 1;
          }

          else if (v15 == 67)
          {
            v8->_association = 2;
          }

          goto LABEL_88;
        }

        if (*v14 <= 0x53u)
        {
          if (v15 == 82)
          {
            v8->_readOnly = 1;
          }

          else if (v15 == 83)
          {
            v18 = sel_registerName(v14 + 1);
            if (v18)
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            v8->_customSetterSelector = v19;
          }

          goto LABEL_88;
        }

        switch(v15)
        {
          case 'W':
            v8->_weakReference = 1;
            break;
          case 'V':
            v23 = v14[1];
            v22 = v14 + 1;
            if (v23)
            {
              v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v22];
              instanceVariableName = v8->_instanceVariableName;
              v8->_instanceVariableName = v24;
            }

            break;
          case 'T':
            v16 = v14[1];
            if (v16 > 0x5A)
            {
              if (v14[1] <= 0x68u)
              {
                if (v14[1] <= 0x62u)
                {
                  if (v16 == 91)
                  {
                    v17 = 19;
                    goto LABEL_87;
                  }

                  if (v16 == 98)
                  {
                    v17 = 22;
                    goto LABEL_87;
                  }
                }

                else
                {
                  switch(v16)
                  {
                    case 'c':
                      v17 = 1;
                      goto LABEL_87;
                    case 'd':
                      v17 = 12;
                      goto LABEL_87;
                    case 'f':
                      v17 = 11;
                      goto LABEL_87;
                  }
                }
              }

              else if (v14[1] > 0x72u)
              {
                switch(v16)
                {
                  case 's':
                    v17 = 3;
                    goto LABEL_87;
                  case 'v':
                    v17 = 14;
                    goto LABEL_87;
                  case '{':
                    v17 = 20;
                    goto LABEL_87;
                }
              }

              else
              {
                switch(v16)
                {
                  case 'i':
                    v17 = 2;
                    goto LABEL_87;
                  case 'l':
                    v17 = 4;
                    goto LABEL_87;
                  case 'q':
                    v17 = 5;
                    goto LABEL_87;
                }
              }
            }

            else if (v14[1] <= 0x41u)
            {
              if (v14[1] <= 0x29u)
              {
                if (v16 == 35)
                {
                  v17 = 17;
                  goto LABEL_87;
                }

                if (v16 == 40)
                {
                  v17 = 21;
                  goto LABEL_87;
                }
              }

              else
              {
                switch(v16)
                {
                  case '*':
                    v17 = 15;
                    goto LABEL_87;
                  case ':':
                    v17 = 18;
                    goto LABEL_87;
                  case '@':
                    v8->_type = 16;
                    v26 = strlen(v14);
                    v27 = v26 - 4;
                    if (v26 > 4)
                    {
                      v32 = &v32;
                      v28 = strncpy(&v32 - ((v26 + 12) & 0xFFFFFFFFFFFFFFF0), v14 + 3, v27);
                      v28[v27] = 0;
                      v8->_objectClass = objc_getClass(v28);
                    }

                    goto LABEL_88;
                }
              }
            }

            else if (v14[1] > 0x4Bu)
            {
              switch(v16)
              {
                case 'L':
                  v17 = 9;
                  goto LABEL_87;
                case 'Q':
                  v17 = 10;
                  goto LABEL_87;
                case 'S':
                  v17 = 8;
                  goto LABEL_87;
              }
            }

            else
            {
              switch(v16)
              {
                case 'B':
                  v17 = 13;
                  goto LABEL_87;
                case 'C':
                  v17 = 6;
                  goto LABEL_87;
                case 'I':
                  v17 = 7;
LABEL_87:
                  v8->_type = v17;
                  goto LABEL_88;
              }
            }

            v29 = v16 == 94;
            v17 = 23;
            if (!v29)
            {
              v17 = 0;
            }

            goto LABEL_87;
        }

LABEL_88:
        v14 = strtok(0, ",");
      }

      while (v14);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v8;
}

- (SEL)customGetterSelector
{
  if (self->_customGetterSelector)
  {
    return self->_customGetterSelector;
  }

  else
  {
    return 0;
  }
}

- (SEL)customSetterSelector
{
  if (self->_customSetterSelector)
  {
    return self->_customSetterSelector;
  }

  else
  {
    return 0;
  }
}

- (void)initWithName:(uint64_t)a1 attributes:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATProperty.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

- (void)initWithName:(uint64_t)a1 attributes:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATProperty.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"attributes"}];
}

@end