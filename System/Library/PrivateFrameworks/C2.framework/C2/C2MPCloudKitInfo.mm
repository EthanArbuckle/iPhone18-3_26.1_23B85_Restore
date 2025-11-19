@interface C2MPCloudKitInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addClientOperation:(id)a3;
- (void)addOperationGroup:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAnonymous:(BOOL)a3;
- (void)setHasReportClientOperationFrequencyBase:(BOOL)a3;
- (void)setHasReportOperationGroupFrequency:(BOOL)a3;
- (void)setHasReportOperationGroupFrequencyBase:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation C2MPCloudKitInfo

- (id)dictionaryRepresentation
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  clientProcessVersion = self->_clientProcessVersion;
  if (clientProcessVersion)
  {
    [v3 setObject:clientProcessVersion forKey:@"client_process_version"];
  }

  clientBundleId = self->_clientBundleId;
  if (clientBundleId)
  {
    [v4 setObject:clientBundleId forKey:@"client_bundle_id"];
  }

  container = self->_container;
  if (container)
  {
    [v4 setObject:container forKey:@"container"];
  }

  environment = self->_environment;
  if (environment)
  {
    [v4 setObject:environment forKey:@"environment"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_anonymous];
    [v4 setObject:v9 forKey:@"anonymous"];
  }

  containerScopedUserIdentifier = self->_containerScopedUserIdentifier;
  if (containerScopedUserIdentifier)
  {
    [v4 setObject:containerScopedUserIdentifier forKey:@"containerScopedUserIdentifier"];
  }

  containerScopedDeviceIdentifier = self->_containerScopedDeviceIdentifier;
  if (containerScopedDeviceIdentifier)
  {
    [v4 setObject:containerScopedDeviceIdentifier forKey:@"containerScopedDeviceIdentifier"];
  }

  applicationBundleIdentifierOverrideForContainerAccess = self->_applicationBundleIdentifierOverrideForContainerAccess;
  if (applicationBundleIdentifierOverrideForContainerAccess)
  {
    [v4 setObject:applicationBundleIdentifierOverrideForContainerAccess forKey:@"applicationBundleIdentifierOverrideForContainerAccess"];
  }

  applicationBundleIdentifierOverrideForNetworkAttribution = self->_applicationBundleIdentifierOverrideForNetworkAttribution;
  if (applicationBundleIdentifierOverrideForNetworkAttribution)
  {
    [v4 setObject:applicationBundleIdentifierOverrideForNetworkAttribution forKey:@"applicationBundleIdentifierOverrideForNetworkAttribution"];
  }

  databaseScope = self->_databaseScope;
  if (databaseScope)
  {
    [v4 setObject:databaseScope forKey:@"database_scope"];
  }

  if ([(NSMutableArray *)self->_operationGroups count])
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_operationGroups, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = self->_operationGroups;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v42;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v18);
    }

    [v4 setObject:v15 forKey:@"operation_group"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_reportOperationGroupFrequency];
    [v4 setObject:v23 forKey:@"report_operation_group_frequency"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_reportOperationGroupFrequencyBase];
    [v4 setObject:v24 forKey:@"report_operation_group_frequency_base"];
  }

  if ([(NSMutableArray *)self->_clientOperations count])
  {
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_clientOperations, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v26 = self->_clientOperations;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v38;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v38 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
          [v25 addObject:v31];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v28);
    }

    [v4 setObject:v25 forKey:@"client_operation"];
  }

  v32 = self->_has;
  if (v32)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_reportClientOperationFrequency];
    [v4 setObject:v33 forKey:@"report_client_operation_frequency"];

    v32 = self->_has;
  }

  if ((v32 & 2) != 0)
  {
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_reportClientOperationFrequencyBase];
    [v4 setObject:v34 forKey:@"report_client_operation_frequency_base"];
  }

  v35 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setHasAnonymous:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addOperationGroup:(id)a3
{
  v4 = a3;
  operationGroups = self->_operationGroups;
  v8 = v4;
  if (!operationGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_operationGroups;
    self->_operationGroups = v6;

    v4 = v8;
    operationGroups = self->_operationGroups;
  }

  [(NSMutableArray *)operationGroups addObject:v4];
}

- (void)setHasReportOperationGroupFrequency:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasReportOperationGroupFrequencyBase:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addClientOperation:(id)a3
{
  v4 = a3;
  clientOperations = self->_clientOperations;
  v8 = v4;
  if (!clientOperations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_clientOperations;
    self->_clientOperations = v6;

    v4 = v8;
    clientOperations = self->_clientOperations;
  }

  [(NSMutableArray *)clientOperations addObject:v4];
}

- (void)setHasReportClientOperationFrequencyBase:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = C2MPCloudKitInfo;
  v4 = [(C2MPCloudKitInfo *)&v8 description];
  v5 = [(C2MPCloudKitInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_clientProcessVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clientBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_container)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_environment)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    anonymous = self->_anonymous;
    PBDataWriterWriteBOOLField();
  }

  if (self->_containerScopedUserIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_containerScopedDeviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_applicationBundleIdentifierOverrideForContainerAccess)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_applicationBundleIdentifierOverrideForNetworkAttribution)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_databaseScope)
  {
    PBDataWriterWriteStringField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_operationGroups;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    reportOperationGroupFrequency = self->_reportOperationGroupFrequency;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    reportOperationGroupFrequencyBase = self->_reportOperationGroupFrequencyBase;
    PBDataWriterWriteUint64Field();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = self->_clientOperations;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  v21 = self->_has;
  if (v21)
  {
    reportClientOperationFrequency = self->_reportClientOperationFrequency;
    PBDataWriterWriteUint64Field();
    v21 = self->_has;
  }

  if ((v21 & 2) != 0)
  {
    reportClientOperationFrequencyBase = self->_reportClientOperationFrequencyBase;
    PBDataWriterWriteUint64Field();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (self->_clientProcessVersion)
  {
    [v4 setClientProcessVersion:?];
    v4 = v15;
  }

  if (self->_clientBundleId)
  {
    [v15 setClientBundleId:?];
    v4 = v15;
  }

  if (self->_container)
  {
    [v15 setContainer:?];
    v4 = v15;
  }

  if (self->_environment)
  {
    [v15 setEnvironment:?];
    v4 = v15;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v4[128] = self->_anonymous;
    v4[132] |= 0x10u;
  }

  if (self->_containerScopedUserIdentifier)
  {
    [v15 setContainerScopedUserIdentifier:?];
  }

  if (self->_containerScopedDeviceIdentifier)
  {
    [v15 setContainerScopedDeviceIdentifier:?];
  }

  if (self->_applicationBundleIdentifierOverrideForContainerAccess)
  {
    [v15 setApplicationBundleIdentifierOverrideForContainerAccess:?];
  }

  if (self->_applicationBundleIdentifierOverrideForNetworkAttribution)
  {
    [v15 setApplicationBundleIdentifierOverrideForNetworkAttribution:?];
  }

  if (self->_databaseScope)
  {
    [v15 setDatabaseScope:?];
  }

  if ([(C2MPCloudKitInfo *)self operationGroupsCount])
  {
    [v15 clearOperationGroups];
    v5 = [(C2MPCloudKitInfo *)self operationGroupsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(C2MPCloudKitInfo *)self operationGroupAtIndex:i];
        [v15 addOperationGroup:v8];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v15 + 3) = self->_reportOperationGroupFrequency;
    v15[132] |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v15 + 4) = self->_reportOperationGroupFrequencyBase;
    v15[132] |= 8u;
  }

  if ([(C2MPCloudKitInfo *)self clientOperationsCount])
  {
    [v15 clearClientOperations];
    v10 = [(C2MPCloudKitInfo *)self clientOperationsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(C2MPCloudKitInfo *)self clientOperationAtIndex:j];
        [v15 addClientOperation:v13];
      }
    }
  }

  v14 = self->_has;
  if (v14)
  {
    *(v15 + 1) = self->_reportClientOperationFrequency;
    v15[132] |= 1u;
    v14 = self->_has;
  }

  if ((v14 & 2) != 0)
  {
    *(v15 + 2) = self->_reportClientOperationFrequencyBase;
    v15[132] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientProcessVersion copyWithZone:a3];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  v8 = [(NSString *)self->_clientBundleId copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_container copyWithZone:a3];
  v11 = *(v5 + 80);
  *(v5 + 80) = v10;

  v12 = [(NSString *)self->_environment copyWithZone:a3];
  v13 = *(v5 + 112);
  *(v5 + 112) = v12;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 128) = self->_anonymous;
    *(v5 + 132) |= 0x10u;
  }

  v14 = [(NSString *)self->_containerScopedUserIdentifier copyWithZone:a3];
  v15 = *(v5 + 96);
  *(v5 + 96) = v14;

  v16 = [(NSString *)self->_containerScopedDeviceIdentifier copyWithZone:a3];
  v17 = *(v5 + 88);
  *(v5 + 88) = v16;

  v18 = [(NSString *)self->_applicationBundleIdentifierOverrideForContainerAccess copyWithZone:a3];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  v20 = [(NSString *)self->_applicationBundleIdentifierOverrideForNetworkAttribution copyWithZone:a3];
  v21 = *(v5 + 48);
  *(v5 + 48) = v20;

  v22 = [(NSString *)self->_databaseScope copyWithZone:a3];
  v23 = *(v5 + 104);
  *(v5 + 104) = v22;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = self->_operationGroups;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v45;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v44 + 1) + 8 * i) copyWithZone:a3];
        [v5 addOperationGroup:v29];
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v26);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_reportOperationGroupFrequency;
    *(v5 + 132) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_reportOperationGroupFrequencyBase;
    *(v5 + 132) |= 8u;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = self->_clientOperations;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v41;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v40 + 1) + 8 * j) copyWithZone:{a3, v40}];
        [v5 addClientOperation:v36];
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v33);
  }

  v37 = self->_has;
  if (v37)
  {
    *(v5 + 8) = self->_reportClientOperationFrequency;
    *(v5 + 132) |= 1u;
    v37 = self->_has;
  }

  if ((v37 & 2) != 0)
  {
    *(v5 + 16) = self->_reportClientOperationFrequencyBase;
    *(v5 + 132) |= 2u;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  clientProcessVersion = self->_clientProcessVersion;
  if (clientProcessVersion | *(v4 + 9))
  {
    if (![(NSString *)clientProcessVersion isEqual:?])
    {
      goto LABEL_28;
    }
  }

  clientBundleId = self->_clientBundleId;
  if (clientBundleId | *(v4 + 7))
  {
    if (![(NSString *)clientBundleId isEqual:?])
    {
      goto LABEL_28;
    }
  }

  container = self->_container;
  if (container | *(v4 + 10))
  {
    if (![(NSString *)container isEqual:?])
    {
      goto LABEL_28;
    }
  }

  environment = self->_environment;
  if (environment | *(v4 + 14))
  {
    if (![(NSString *)environment isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v9 = *(v4 + 132);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 132) & 0x10) == 0)
    {
      goto LABEL_28;
    }

    v20 = *(v4 + 128);
    if (self->_anonymous)
    {
      if ((*(v4 + 128) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (*(v4 + 128))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 132) & 0x10) != 0)
  {
    goto LABEL_28;
  }

  containerScopedUserIdentifier = self->_containerScopedUserIdentifier;
  if (containerScopedUserIdentifier | *(v4 + 12) && ![(NSString *)containerScopedUserIdentifier isEqual:?])
  {
    goto LABEL_28;
  }

  containerScopedDeviceIdentifier = self->_containerScopedDeviceIdentifier;
  if (containerScopedDeviceIdentifier | *(v4 + 11))
  {
    if (![(NSString *)containerScopedDeviceIdentifier isEqual:?])
    {
      goto LABEL_28;
    }
  }

  applicationBundleIdentifierOverrideForContainerAccess = self->_applicationBundleIdentifierOverrideForContainerAccess;
  if (applicationBundleIdentifierOverrideForContainerAccess | *(v4 + 5))
  {
    if (![(NSString *)applicationBundleIdentifierOverrideForContainerAccess isEqual:?])
    {
      goto LABEL_28;
    }
  }

  applicationBundleIdentifierOverrideForNetworkAttribution = self->_applicationBundleIdentifierOverrideForNetworkAttribution;
  if (applicationBundleIdentifierOverrideForNetworkAttribution | *(v4 + 6))
  {
    if (![(NSString *)applicationBundleIdentifierOverrideForNetworkAttribution isEqual:?])
    {
      goto LABEL_28;
    }
  }

  databaseScope = self->_databaseScope;
  if (databaseScope | *(v4 + 13))
  {
    if (![(NSString *)databaseScope isEqual:?])
    {
      goto LABEL_28;
    }
  }

  operationGroups = self->_operationGroups;
  if (operationGroups | *(v4 + 15))
  {
    if (![(NSMutableArray *)operationGroups isEqual:?])
    {
      goto LABEL_28;
    }
  }

  has = self->_has;
  v17 = *(v4 + 132);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 132) & 4) == 0 || self->_reportOperationGroupFrequency != *(v4 + 3))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 132) & 4) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 132) & 8) == 0 || self->_reportOperationGroupFrequencyBase != *(v4 + 4))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 132) & 8) != 0)
  {
    goto LABEL_28;
  }

  clientOperations = self->_clientOperations;
  if (clientOperations | *(v4 + 8))
  {
    if (![(NSMutableArray *)clientOperations isEqual:?])
    {
      goto LABEL_28;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(v4 + 132) & 1) == 0 || self->_reportClientOperationFrequency != *(v4 + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 132))
  {
    goto LABEL_28;
  }

  v18 = (*(v4 + 132) & 2) == 0;
  if ((has & 2) == 0)
  {
    goto LABEL_29;
  }

  if ((*(v4 + 132) & 2) != 0 && self->_reportClientOperationFrequencyBase == *(v4 + 2))
  {
    v18 = 1;
    goto LABEL_29;
  }

LABEL_28:
  v18 = 0;
LABEL_29:

  return v18;
}

- (unint64_t)hash
{
  v19 = [(NSString *)self->_clientProcessVersion hash];
  v18 = [(NSString *)self->_clientBundleId hash];
  v17 = [(NSString *)self->_container hash];
  v16 = [(NSString *)self->_environment hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v15 = 2654435761 * self->_anonymous;
  }

  else
  {
    v15 = 0;
  }

  v14 = [(NSString *)self->_containerScopedUserIdentifier hash];
  v3 = [(NSString *)self->_containerScopedDeviceIdentifier hash];
  v4 = [(NSString *)self->_applicationBundleIdentifierOverrideForContainerAccess hash];
  v5 = [(NSString *)self->_applicationBundleIdentifierOverrideForNetworkAttribution hash];
  v6 = [(NSString *)self->_databaseScope hash];
  v7 = [(NSMutableArray *)self->_operationGroups hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761u * self->_reportOperationGroupFrequency;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v9 = 2654435761u * self->_reportOperationGroupFrequencyBase;
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_9:
  v10 = [(NSMutableArray *)self->_clientOperations hash];
  if (*&self->_has)
  {
    v11 = 2654435761u * self->_reportClientOperationFrequency;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v12 = 0;
    return v18 ^ v19 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v12 = 2654435761u * self->_reportClientOperationFrequencyBase;
  return v18 ^ v19 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 9))
  {
    [(C2MPCloudKitInfo *)self setClientProcessVersion:?];
  }

  if (*(v4 + 7))
  {
    [(C2MPCloudKitInfo *)self setClientBundleId:?];
  }

  if (*(v4 + 10))
  {
    [(C2MPCloudKitInfo *)self setContainer:?];
  }

  if (*(v4 + 14))
  {
    [(C2MPCloudKitInfo *)self setEnvironment:?];
  }

  if ((*(v4 + 132) & 0x10) != 0)
  {
    self->_anonymous = *(v4 + 128);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 12))
  {
    [(C2MPCloudKitInfo *)self setContainerScopedUserIdentifier:?];
  }

  if (*(v4 + 11))
  {
    [(C2MPCloudKitInfo *)self setContainerScopedDeviceIdentifier:?];
  }

  if (*(v4 + 5))
  {
    [(C2MPCloudKitInfo *)self setApplicationBundleIdentifierOverrideForContainerAccess:?];
  }

  if (*(v4 + 6))
  {
    [(C2MPCloudKitInfo *)self setApplicationBundleIdentifierOverrideForNetworkAttribution:?];
  }

  if (*(v4 + 13))
  {
    [(C2MPCloudKitInfo *)self setDatabaseScope:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(v4 + 15);
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(C2MPCloudKitInfo *)self addOperationGroup:*(*(&v22 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v10 = *(v4 + 132);
  if ((v10 & 4) != 0)
  {
    self->_reportOperationGroupFrequency = *(v4 + 3);
    *&self->_has |= 4u;
    v10 = *(v4 + 132);
  }

  if ((v10 & 8) != 0)
  {
    self->_reportOperationGroupFrequencyBase = *(v4 + 4);
    *&self->_has |= 8u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = *(v4 + 8);
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(C2MPCloudKitInfo *)self addClientOperation:*(*(&v18 + 1) + 8 * j), v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v16 = *(v4 + 132);
  if (v16)
  {
    self->_reportClientOperationFrequency = *(v4 + 1);
    *&self->_has |= 1u;
    v16 = *(v4 + 132);
  }

  if ((v16 & 2) != 0)
  {
    self->_reportClientOperationFrequencyBase = *(v4 + 2);
    *&self->_has |= 2u;
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end