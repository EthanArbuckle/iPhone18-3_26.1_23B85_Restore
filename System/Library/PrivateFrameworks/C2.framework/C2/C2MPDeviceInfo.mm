@interface C2MPDeviceInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInternalTestConfig:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation C2MPDeviceInfo

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  productName = self->_productName;
  if (productName)
  {
    [v3 setObject:productName forKey:@"product_name"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v4 setObject:productType forKey:@"product_type"];
  }

  productVersion = self->_productVersion;
  if (productVersion)
  {
    [v4 setObject:productVersion forKey:@"product_version"];
  }

  productBuild = self->_productBuild;
  if (productBuild)
  {
    [v4 setObject:productBuild forKey:@"product_build"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAppleInternal];
    [v4 setObject:v9 forKey:@"is_apple_internal"];
  }

  processName = self->_processName;
  if (processName)
  {
    [v4 setObject:processName forKey:@"process_name"];
  }

  processVersion = self->_processVersion;
  if (processVersion)
  {
    [v4 setObject:processVersion forKey:@"process_version"];
  }

  processUuid = self->_processUuid;
  if (processUuid)
  {
    [v4 setObject:processUuid forKey:@"process_uuid"];
  }

  userDefaultTestName = self->_userDefaultTestName;
  if (userDefaultTestName)
  {
    [v4 setObject:userDefaultTestName forKey:@"user_default_test_name"];
  }

  if ([(NSMutableArray *)self->_internalTestConfigs count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_internalTestConfigs, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = self->_internalTestConfigs;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"internal_test_config"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addInternalTestConfig:(id)a3
{
  v4 = a3;
  internalTestConfigs = self->_internalTestConfigs;
  v8 = v4;
  if (!internalTestConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_internalTestConfigs;
    self->_internalTestConfigs = v6;

    v4 = v8;
    internalTestConfigs = self->_internalTestConfigs;
  }

  [(NSMutableArray *)internalTestConfigs addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = C2MPDeviceInfo;
  v4 = [(C2MPDeviceInfo *)&v8 description];
  v5 = [(C2MPDeviceInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_productName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_productVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_productBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    isAppleInternal = self->_isAppleInternal;
    PBDataWriterWriteBOOLField();
  }

  if (self->_processName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_processVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_processUuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userDefaultTestName)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_internalTestConfigs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_productName)
  {
    [v4 setProductName:?];
    v4 = v9;
  }

  if (self->_productType)
  {
    [v9 setProductType:?];
    v4 = v9;
  }

  if (self->_productVersion)
  {
    [v9 setProductVersion:?];
    v4 = v9;
  }

  if (self->_productBuild)
  {
    [v9 setProductBuild:?];
    v4 = v9;
  }

  if (*&self->_has)
  {
    v4[80] = self->_isAppleInternal;
    v4[84] |= 1u;
  }

  if (self->_processName)
  {
    [v9 setProcessName:?];
  }

  if (self->_processVersion)
  {
    [v9 setProcessVersion:?];
  }

  if (self->_processUuid)
  {
    [v9 setProcessUuid:?];
  }

  if (self->_userDefaultTestName)
  {
    [v9 setUserDefaultTestName:?];
  }

  if ([(C2MPDeviceInfo *)self internalTestConfigsCount])
  {
    [v9 clearInternalTestConfigs];
    v5 = [(C2MPDeviceInfo *)self internalTestConfigsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(C2MPDeviceInfo *)self internalTestConfigAtIndex:i];
        [v9 addInternalTestConfig:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_productName copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_productType copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_productVersion copyWithZone:a3];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  v12 = [(NSString *)self->_productBuild copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if (*&self->_has)
  {
    *(v5 + 80) = self->_isAppleInternal;
    *(v5 + 84) |= 1u;
  }

  v14 = [(NSString *)self->_processName copyWithZone:a3];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  v16 = [(NSString *)self->_processVersion copyWithZone:a3];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  v18 = [(NSString *)self->_processUuid copyWithZone:a3];
  v19 = *(v5 + 24);
  *(v5 + 24) = v18;

  v20 = [(NSString *)self->_userDefaultTestName copyWithZone:a3];
  v21 = *(v5 + 72);
  *(v5 + 72) = v20;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = self->_internalTestConfigs;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      v26 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v30 + 1) + 8 * v26) copyWithZone:{a3, v30}];
        [v5 addInternalTestConfig:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v24);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  productName = self->_productName;
  if (productName | *(v4 + 6))
  {
    if (![(NSString *)productName isEqual:?])
    {
      goto LABEL_23;
    }
  }

  productType = self->_productType;
  if (productType | *(v4 + 7))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_23;
    }
  }

  productVersion = self->_productVersion;
  if (productVersion | *(v4 + 8))
  {
    if (![(NSString *)productVersion isEqual:?])
    {
      goto LABEL_23;
    }
  }

  productBuild = self->_productBuild;
  if (productBuild | *(v4 + 5))
  {
    if (![(NSString *)productBuild isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v9 = *(v4 + 84);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  if ((*(v4 + 84) & 1) == 0)
  {
    goto LABEL_23;
  }

  v9 = *(v4 + 80);
  if (!self->_isAppleInternal)
  {
LABEL_11:
    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v15 = 0;
    goto LABEL_24;
  }

  if ((*(v4 + 80) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  processName = self->_processName;
  if (processName | *(v4 + 2) && ![(NSString *)processName isEqual:?])
  {
    goto LABEL_23;
  }

  processVersion = self->_processVersion;
  if (processVersion | *(v4 + 4))
  {
    if (![(NSString *)processVersion isEqual:?])
    {
      goto LABEL_23;
    }
  }

  processUuid = self->_processUuid;
  if (processUuid | *(v4 + 3))
  {
    if (![(NSString *)processUuid isEqual:?])
    {
      goto LABEL_23;
    }
  }

  userDefaultTestName = self->_userDefaultTestName;
  if (userDefaultTestName | *(v4 + 9))
  {
    if (![(NSString *)userDefaultTestName isEqual:?])
    {
      goto LABEL_23;
    }
  }

  internalTestConfigs = self->_internalTestConfigs;
  if (internalTestConfigs | *(v4 + 1))
  {
    v15 = [(NSMutableArray *)internalTestConfigs isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_24:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_productName hash];
  v4 = [(NSString *)self->_productType hash];
  v5 = [(NSString *)self->_productVersion hash];
  v6 = [(NSString *)self->_productBuild hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_isAppleInternal;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSString *)self->_processName hash];
  v10 = v8 ^ v9 ^ [(NSString *)self->_processVersion hash];
  v11 = [(NSString *)self->_processUuid hash];
  v12 = v11 ^ [(NSString *)self->_userDefaultTestName hash];
  return v10 ^ v12 ^ [(NSMutableArray *)self->_internalTestConfigs hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 6))
  {
    [(C2MPDeviceInfo *)self setProductName:?];
  }

  if (*(v4 + 7))
  {
    [(C2MPDeviceInfo *)self setProductType:?];
  }

  if (*(v4 + 8))
  {
    [(C2MPDeviceInfo *)self setProductVersion:?];
  }

  if (*(v4 + 5))
  {
    [(C2MPDeviceInfo *)self setProductBuild:?];
  }

  if (*(v4 + 84))
  {
    self->_isAppleInternal = *(v4 + 80);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(C2MPDeviceInfo *)self setProcessName:?];
  }

  if (*(v4 + 4))
  {
    [(C2MPDeviceInfo *)self setProcessVersion:?];
  }

  if (*(v4 + 3))
  {
    [(C2MPDeviceInfo *)self setProcessUuid:?];
  }

  if (*(v4 + 9))
  {
    [(C2MPDeviceInfo *)self setUserDefaultTestName:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(C2MPDeviceInfo *)self addInternalTestConfig:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end