@interface NSSProfilesInfoRespMsg
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addConfigProfile:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSSProfilesInfoRespMsg

- (void)addConfigProfile:(id)a3
{
  v4 = a3;
  configProfiles = self->_configProfiles;
  v8 = v4;
  if (!configProfiles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_configProfiles;
    self->_configProfiles = v6;

    v4 = v8;
    configProfiles = self->_configProfiles;
  }

  [(NSMutableArray *)configProfiles addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSProfilesInfoRespMsg;
  v4 = [(NSSProfilesInfoRespMsg *)&v8 description];
  v5 = [(NSSProfilesInfoRespMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  mdmProfile = self->_mdmProfile;
  if (mdmProfile)
  {
    v5 = [(NSSProfilesInfoRespMsgProfileInfo *)mdmProfile dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"mdmProfile"];
  }

  if ([(NSMutableArray *)self->_configProfiles count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_configProfiles, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_configProfiles;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"configProfile"];
  }

  managedAppsData = self->_managedAppsData;
  if (managedAppsData)
  {
    [v3 setObject:managedAppsData forKey:@"managedAppsData"];
  }

  rmAccountData = self->_rmAccountData;
  if (rmAccountData)
  {
    [v3 setObject:rmAccountData forKey:@"rmAccountData"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_mdmProfile)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_configProfiles;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_managedAppsData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_rmAccountData)
  {
    PBDataWriterWriteDataField();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_mdmProfile)
  {
    [v9 setMdmProfile:?];
  }

  if ([(NSSProfilesInfoRespMsg *)self configProfilesCount])
  {
    [v9 clearConfigProfiles];
    v4 = [(NSSProfilesInfoRespMsg *)self configProfilesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSSProfilesInfoRespMsg *)self configProfileAtIndex:i];
        [v9 addConfigProfile:v7];
      }
    }
  }

  if (self->_managedAppsData)
  {
    [v9 setManagedAppsData:?];
  }

  v8 = v9;
  if (self->_rmAccountData)
  {
    [v9 setRmAccountData:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSSProfilesInfoRespMsgProfileInfo *)self->_mdmProfile copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_configProfiles;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v20 + 1) + 8 * v12) copyWithZone:{a3, v20}];
        [v5 addConfigProfile:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = [(NSData *)self->_managedAppsData copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(NSData *)self->_rmAccountData copyWithZone:a3];
  v17 = v5[4];
  v5[4] = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((mdmProfile = self->_mdmProfile, !(mdmProfile | v4[3])) || -[NSSProfilesInfoRespMsgProfileInfo isEqual:](mdmProfile, "isEqual:")) && ((configProfiles = self->_configProfiles, !(configProfiles | v4[1])) || -[NSMutableArray isEqual:](configProfiles, "isEqual:")) && ((managedAppsData = self->_managedAppsData, !(managedAppsData | v4[2])) || -[NSData isEqual:](managedAppsData, "isEqual:")))
  {
    rmAccountData = self->_rmAccountData;
    if (rmAccountData | v4[4])
    {
      v9 = [(NSData *)rmAccountData isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSSProfilesInfoRespMsgProfileInfo *)self->_mdmProfile hash];
  v4 = [(NSMutableArray *)self->_configProfiles hash]^ v3;
  v5 = [(NSData *)self->_managedAppsData hash];
  return v4 ^ v5 ^ [(NSData *)self->_rmAccountData hash];
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  mdmProfile = self->_mdmProfile;
  v6 = *(v4 + 3);
  if (mdmProfile)
  {
    if (v6)
    {
      [(NSSProfilesInfoRespMsgProfileInfo *)mdmProfile mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NSSProfilesInfoRespMsg *)self setMdmProfile:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 1);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NSSProfilesInfoRespMsg *)self addConfigProfile:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (*(v4 + 2))
  {
    [(NSSProfilesInfoRespMsg *)self setManagedAppsData:?];
  }

  if (*(v4 + 4))
  {
    [(NSSProfilesInfoRespMsg *)self setRmAccountData:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end