@interface NSSLocalesInfoRespMsg
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDefaultCalendars:(id)a3;
- (void)addLocaleIdentifiers:(id)a3;
- (void)addNumberingSystems:(id)a3;
- (void)addSupportedCalendars:(id)a3;
- (void)addSystemLanguages:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSSLocalesInfoRespMsg

- (void)addSystemLanguages:(id)a3
{
  v4 = a3;
  systemLanguages = self->_systemLanguages;
  v8 = v4;
  if (!systemLanguages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_systemLanguages;
    self->_systemLanguages = v6;

    v4 = v8;
    systemLanguages = self->_systemLanguages;
  }

  [(NSMutableArray *)systemLanguages addObject:v4];
}

- (void)addLocaleIdentifiers:(id)a3
{
  v4 = a3;
  localeIdentifiers = self->_localeIdentifiers;
  v8 = v4;
  if (!localeIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_localeIdentifiers;
    self->_localeIdentifiers = v6;

    v4 = v8;
    localeIdentifiers = self->_localeIdentifiers;
  }

  [(NSMutableArray *)localeIdentifiers addObject:v4];
}

- (void)addSupportedCalendars:(id)a3
{
  v4 = a3;
  supportedCalendars = self->_supportedCalendars;
  v8 = v4;
  if (!supportedCalendars)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_supportedCalendars;
    self->_supportedCalendars = v6;

    v4 = v8;
    supportedCalendars = self->_supportedCalendars;
  }

  [(NSMutableArray *)supportedCalendars addObject:v4];
}

- (void)addDefaultCalendars:(id)a3
{
  v4 = a3;
  defaultCalendars = self->_defaultCalendars;
  v8 = v4;
  if (!defaultCalendars)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_defaultCalendars;
    self->_defaultCalendars = v6;

    v4 = v8;
    defaultCalendars = self->_defaultCalendars;
  }

  [(NSMutableArray *)defaultCalendars addObject:v4];
}

- (void)addNumberingSystems:(id)a3
{
  v4 = a3;
  numberingSystems = self->_numberingSystems;
  v8 = v4;
  if (!numberingSystems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_numberingSystems;
    self->_numberingSystems = v6;

    v4 = v8;
    numberingSystems = self->_numberingSystems;
  }

  [(NSMutableArray *)numberingSystems addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSLocalesInfoRespMsg;
  v4 = [(NSSLocalesInfoRespMsg *)&v8 description];
  v5 = [(NSSLocalesInfoRespMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  systemLanguages = self->_systemLanguages;
  if (systemLanguages)
  {
    [v3 setObject:systemLanguages forKey:@"systemLanguages"];
  }

  localeIdentifiers = self->_localeIdentifiers;
  if (localeIdentifiers)
  {
    [v4 setObject:localeIdentifiers forKey:@"localeIdentifiers"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v4 setObject:buildVersion forKey:@"buildVersion"];
  }

  supportedCalendars = self->_supportedCalendars;
  if (supportedCalendars)
  {
    [v4 setObject:supportedCalendars forKey:@"supportedCalendars"];
  }

  if ([(NSMutableArray *)self->_defaultCalendars count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_defaultCalendars, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = self->_defaultCalendars;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"defaultCalendars"];
  }

  if ([(NSMutableArray *)self->_numberingSystems count])
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_numberingSystems, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = self->_numberingSystems;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          [v16 addObject:v22];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [v4 setObject:v16 forKey:@"numberingSystems"];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = self->_systemLanguages;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      v9 = 0;
      do
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v52 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v7);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = self->_localeIdentifiers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v49;
    do
    {
      v15 = 0;
      do
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v48 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v13);
  }

  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = self->_supportedCalendars;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    do
    {
      v21 = 0;
      do
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v44 + 1) + 8 * v21);
        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v19);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = self->_defaultCalendars;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      v27 = 0;
      do
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v40 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v40 objects:v57 count:16];
    }

    while (v25);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = self->_numberingSystems;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v56 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v37;
    do
    {
      v33 = 0;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v36 + 1) + 8 * v33);
        PBDataWriterWriteSubmessage();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v56 count:16];
    }

    while (v31);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v24 = a3;
  if ([(NSSLocalesInfoRespMsg *)self systemLanguagesCount])
  {
    [v24 clearSystemLanguages];
    v4 = [(NSSLocalesInfoRespMsg *)self systemLanguagesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSSLocalesInfoRespMsg *)self systemLanguagesAtIndex:i];
        [v24 addSystemLanguages:v7];
      }
    }
  }

  if ([(NSSLocalesInfoRespMsg *)self localeIdentifiersCount])
  {
    [v24 clearLocaleIdentifiers];
    v8 = [(NSSLocalesInfoRespMsg *)self localeIdentifiersCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NSSLocalesInfoRespMsg *)self localeIdentifiersAtIndex:j];
        [v24 addLocaleIdentifiers:v11];
      }
    }
  }

  if (self->_buildVersion)
  {
    [v24 setBuildVersion:?];
  }

  if ([(NSSLocalesInfoRespMsg *)self supportedCalendarsCount])
  {
    [v24 clearSupportedCalendars];
    v12 = [(NSSLocalesInfoRespMsg *)self supportedCalendarsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(NSSLocalesInfoRespMsg *)self supportedCalendarsAtIndex:k];
        [v24 addSupportedCalendars:v15];
      }
    }
  }

  if ([(NSSLocalesInfoRespMsg *)self defaultCalendarsCount])
  {
    [v24 clearDefaultCalendars];
    v16 = [(NSSLocalesInfoRespMsg *)self defaultCalendarsCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(NSSLocalesInfoRespMsg *)self defaultCalendarsAtIndex:m];
        [v24 addDefaultCalendars:v19];
      }
    }
  }

  if ([(NSSLocalesInfoRespMsg *)self numberingSystemsCount])
  {
    [v24 clearNumberingSystems];
    v20 = [(NSSLocalesInfoRespMsg *)self numberingSystemsCount];
    if (v20)
    {
      v21 = v20;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(NSSLocalesInfoRespMsg *)self numberingSystemsAtIndex:n];
        [v24 addNumberingSystems:v23];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = self->_systemLanguages;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v57;
    do
    {
      v10 = 0;
      do
      {
        if (*v57 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v56 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addSystemLanguages:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v8);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v12 = self->_localeIdentifiers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v53;
    do
    {
      v16 = 0;
      do
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v52 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addLocaleIdentifiers:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_buildVersion copyWithZone:a3];
  v19 = v5[1];
  v5[1] = v18;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v20 = self->_supportedCalendars;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v49;
    do
    {
      v24 = 0;
      do
      {
        if (*v49 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v48 + 1) + 8 * v24) copyWithZone:a3];
        [v5 addSupportedCalendars:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v22);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v26 = self->_defaultCalendars;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v44 objects:v61 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v45;
    do
    {
      v30 = 0;
      do
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v44 + 1) + 8 * v30) copyWithZone:a3];
        [v5 addDefaultCalendars:v31];

        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v44 objects:v61 count:16];
    }

    while (v28);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = self->_numberingSystems;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v40 objects:v60 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v41;
    do
    {
      v36 = 0;
      do
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v40 + 1) + 8 * v36) copyWithZone:{a3, v40}];
        [v5 addNumberingSystems:v37];

        ++v36;
      }

      while (v34 != v36);
      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v40 objects:v60 count:16];
    }

    while (v34);
  }

  v38 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((systemLanguages = self->_systemLanguages, !(systemLanguages | v4[6])) || -[NSMutableArray isEqual:](systemLanguages, "isEqual:")) && ((localeIdentifiers = self->_localeIdentifiers, !(localeIdentifiers | v4[3])) || -[NSMutableArray isEqual:](localeIdentifiers, "isEqual:")) && ((buildVersion = self->_buildVersion, !(buildVersion | v4[1])) || -[NSString isEqual:](buildVersion, "isEqual:")) && ((supportedCalendars = self->_supportedCalendars, !(supportedCalendars | v4[5])) || -[NSMutableArray isEqual:](supportedCalendars, "isEqual:")) && ((defaultCalendars = self->_defaultCalendars, !(defaultCalendars | v4[2])) || -[NSMutableArray isEqual:](defaultCalendars, "isEqual:")))
  {
    numberingSystems = self->_numberingSystems;
    if (numberingSystems | v4[4])
    {
      v11 = [(NSMutableArray *)numberingSystems isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_systemLanguages hash];
  v4 = [(NSMutableArray *)self->_localeIdentifiers hash]^ v3;
  v5 = [(NSString *)self->_buildVersion hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_supportedCalendars hash];
  v7 = [(NSMutableArray *)self->_defaultCalendars hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_numberingSystems hash];
}

- (void)mergeFrom:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v5 = v4[6];
  v6 = [v5 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSSLocalesInfoRespMsg *)self addSystemLanguages:*(*(&v47 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v7);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v4[3];
  v11 = [v10 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NSSLocalesInfoRespMsg *)self addLocaleIdentifiers:*(*(&v43 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v12);
  }

  if (v4[1])
  {
    [(NSSLocalesInfoRespMsg *)self setBuildVersion:?];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = v4[5];
  v16 = [v15 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NSSLocalesInfoRespMsg *)self addSupportedCalendars:*(*(&v39 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v17);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = v4[2];
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(NSSLocalesInfoRespMsg *)self addDefaultCalendars:*(*(&v35 + 1) + 8 * m)];
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v52 count:16];
    }

    while (v22);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = v4[4];
  v26 = [v25 countByEnumeratingWithState:&v31 objects:v51 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v32;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(NSSLocalesInfoRespMsg *)self addNumberingSystems:*(*(&v31 + 1) + 8 * n), v31];
      }

      v27 = [v25 countByEnumeratingWithState:&v31 objects:v51 count:16];
    }

    while (v27);
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end