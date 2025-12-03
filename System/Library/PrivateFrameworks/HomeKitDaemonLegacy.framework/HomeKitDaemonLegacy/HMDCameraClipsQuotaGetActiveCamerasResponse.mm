@interface HMDCameraClipsQuotaGetActiveCamerasResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addZoneNames:(id)names;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMDCameraClipsQuotaGetActiveCamerasResponse

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(HMDCameraClipsQuotaGetActiveCamerasResponse *)self addZoneNames:*(*(&v10 + 1) + 8 * v8++), v10];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    zoneNames = self->_zoneNames;
    if (zoneNames | equalCopy[1])
    {
      v6 = [(NSMutableArray *)zoneNames isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_zoneNames;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{zone, v14}];
        [v5 addZoneNames:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(HMDCameraClipsQuotaGetActiveCamerasResponse *)self zoneNamesCount])
  {
    [toCopy clearZoneNames];
    zoneNamesCount = [(HMDCameraClipsQuotaGetActiveCamerasResponse *)self zoneNamesCount];
    if (zoneNamesCount)
    {
      v5 = zoneNamesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMDCameraClipsQuotaGetActiveCamerasResponse *)self zoneNamesAtIndex:i];
        [toCopy addZoneNames:v7];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_zoneNames;
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
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)readFrom:(id)from
{
  for (i = from; ; i = from)
  {
    position = [i position];
    if (position >= [from length] || (objc_msgSend(from, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v18 = 0;
      v10 = [from position] + 1;
      if (v10 >= [from position] && (v11 = objc_msgSend(from, "position") + 1, v11 <= objc_msgSend(from, "length")))
      {
        data = [from data];
        [data getBytes:&v18 range:{objc_msgSend(from, "position"), 1}];

        [from setPosition:{objc_msgSend(from, "position") + 1}];
      }

      else
      {
        [from _setError];
      }

      v9 |= (v18 & 0x7F) << v7;
      if ((v18 & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      if (v8++ >= 9)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [from hasError] ? 0 : v9;
LABEL_16:
    if (([from hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      break;
    }

    if ((v14 >> 3) == 1)
    {
      v15 = PBReaderReadString();
      if (v15)
      {
        [(HMDCameraClipsQuotaGetActiveCamerasResponse *)self addZoneNames:v15];
      }
    }

    else
    {
      v16 = PBReaderSkipValueWithTag();
      if (!v16)
      {
        return v16;
      }
    }
  }

  LOBYTE(v16) = [from hasError] ^ 1;
  return v16;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  zoneNames = self->_zoneNames;
  if (zoneNames)
  {
    [dictionary setObject:zoneNames forKey:@"zoneNames"];
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDCameraClipsQuotaGetActiveCamerasResponse;
  v4 = [(HMDCameraClipsQuotaGetActiveCamerasResponse *)&v8 description];
  dictionaryRepresentation = [(HMDCameraClipsQuotaGetActiveCamerasResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addZoneNames:(id)names
{
  namesCopy = names;
  zoneNames = self->_zoneNames;
  v8 = namesCopy;
  if (!zoneNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_zoneNames;
    self->_zoneNames = v6;

    namesCopy = v8;
    zoneNames = self->_zoneNames;
  }

  [(NSMutableArray *)zoneNames addObject:namesCopy];
}

@end