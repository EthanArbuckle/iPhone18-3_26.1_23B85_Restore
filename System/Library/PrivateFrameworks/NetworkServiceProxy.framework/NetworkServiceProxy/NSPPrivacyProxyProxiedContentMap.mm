@interface NSPPrivacyProxyProxiedContentMap
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)proxiesAtIndex:(unint64_t)index;
- (void)addHostnames:(id)hostnames;
- (void)addProcesses:(id)processes;
- (void)addUrls:(id)urls;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasIsPrivacyProxy:(BOOL)proxy;
- (void)setHasMatchExactHostnames:(BOOL)hostnames;
- (void)setHasResolver:(BOOL)resolver;
- (void)setHasSupportsReverseProxying:(BOOL)proxying;
- (void)setHasSystemProcessOnly:(BOOL)only;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyProxiedContentMap

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = NSPPrivacyProxyProxiedContentMap;
  [(NSPPrivacyProxyProxiedContentMap *)&v3 dealloc];
}

- (unsigned)proxiesAtIndex:(unint64_t)index
{
  p_proxies = &self->_proxies;
  count = self->_proxies.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_proxies->list[index];
}

- (void)addHostnames:(id)hostnames
{
  hostnamesCopy = hostnames;
  hostnames = self->_hostnames;
  v8 = hostnamesCopy;
  if (!hostnames)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_hostnames;
    self->_hostnames = v6;

    hostnamesCopy = v8;
    hostnames = self->_hostnames;
  }

  [(NSMutableArray *)hostnames addObject:hostnamesCopy];
}

- (void)addProcesses:(id)processes
{
  processesCopy = processes;
  processes = self->_processes;
  v8 = processesCopy;
  if (!processes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_processes;
    self->_processes = v6;

    processesCopy = v8;
    processes = self->_processes;
  }

  [(NSMutableArray *)processes addObject:processesCopy];
}

- (void)setHasSystemProcessOnly:(BOOL)only
{
  if (only)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSupportsReverseProxying:(BOOL)proxying
{
  if (proxying)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addUrls:(id)urls
{
  urlsCopy = urls;
  urls = self->_urls;
  v8 = urlsCopy;
  if (!urls)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_urls;
    self->_urls = v6;

    urlsCopy = v8;
    urls = self->_urls;
  }

  [(NSMutableArray *)urls addObject:urlsCopy];
}

- (void)setHasResolver:(BOOL)resolver
{
  if (resolver)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasMatchExactHostnames:(BOOL)hostnames
{
  if (hostnames)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsPrivacyProxy:(BOOL)proxy
{
  if (proxy)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyProxiedContentMap;
  v4 = [(NSPPrivacyProxyProxiedContentMap *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyProxiedContentMap *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
  [dictionary setObject:v4 forKey:@"enabled"];

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  v6 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v6 forKey:@"proxies"];

  hostnames = self->_hostnames;
  if (hostnames)
  {
    [dictionary setObject:hostnames forKey:@"hostnames"];
  }

  processes = self->_processes;
  if (processes)
  {
    [dictionary setObject:processes forKey:@"processes"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_systemProcessOnly];
    [dictionary setObject:v15 forKey:@"systemProcessOnly"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_percentEnabled];
  [dictionary setObject:v16 forKey:@"percentEnabled"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsReverseProxying];
    [dictionary setObject:v10 forKey:@"supportsReverseProxying"];
  }

LABEL_11:
  urls = self->_urls;
  if (urls)
  {
    [dictionary setObject:urls forKey:@"urls"];
  }

  v12 = self->_has;
  if ((v12 & 2) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_resolver];
    [dictionary setObject:v17 forKey:@"resolver"];

    v12 = self->_has;
    if ((v12 & 8) == 0)
    {
LABEL_15:
      if ((v12 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_matchExactHostnames];
  [dictionary setObject:v18 forKey:@"matchExactHostnames"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_16:
    v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPrivacyProxy];
    [dictionary setObject:v13 forKey:@"isPrivacyProxy"];
  }

LABEL_17:

  return dictionary;
}

- (void)writeTo:(id)to
{
  v50 = *MEMORY[0x1E69E9840];
  toCopy = to;
  enabled = self->_enabled;
  PBDataWriterWriteBOOLField();
  if (!self->_identifier)
  {
    __assert_rtn("[NSPPrivacyProxyProxiedContentMap writeTo:]", "NSPPrivacyProxyProxiedContentMap.m", 423, "nil != self->_identifier");
  }

  PBDataWriterWriteStringField();
  if (self->_proxies.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_proxies.list[v6];
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < self->_proxies.count);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = self->_hostnames;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v10);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = self->_processes;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v39 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v16);
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    systemProcessOnly = self->_systemProcessOnly;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_21:
      if ((has & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_21;
  }

  percentEnabled = self->_percentEnabled;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_22:
    supportsReverseProxying = self->_supportsReverseProxying;
    PBDataWriterWriteBOOLField();
  }

LABEL_23:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = self->_urls;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v35 + 1) + 8 * k);
        PBDataWriterWriteStringField();
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v24);
  }

  v28 = self->_has;
  if ((v28 & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_32;
    }

LABEL_39:
    matchExactHostnames = self->_matchExactHostnames;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  resolver = self->_resolver;
  PBDataWriterWriteUint32Field();
  v28 = self->_has;
  if ((v28 & 8) != 0)
  {
    goto LABEL_39;
  }

LABEL_32:
  if ((v28 & 4) != 0)
  {
LABEL_33:
    isPrivacyProxy = self->_isPrivacyProxy;
    PBDataWriterWriteBOOLField();
  }

LABEL_34:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[80] = self->_enabled;
  v22 = toCopy;
  [toCopy setIdentifier:self->_identifier];
  if ([(NSPPrivacyProxyProxiedContentMap *)self proxiesCount])
  {
    [v22 clearProxies];
    proxiesCount = [(NSPPrivacyProxyProxiedContentMap *)self proxiesCount];
    if (proxiesCount)
    {
      v6 = proxiesCount;
      for (i = 0; i != v6; ++i)
      {
        [v22 addProxies:{-[NSPPrivacyProxyProxiedContentMap proxiesAtIndex:](self, "proxiesAtIndex:", i)}];
      }
    }
  }

  if ([(NSPPrivacyProxyProxiedContentMap *)self hostnamesCount])
  {
    [v22 clearHostnames];
    hostnamesCount = [(NSPPrivacyProxyProxiedContentMap *)self hostnamesCount];
    if (hostnamesCount)
    {
      v9 = hostnamesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NSPPrivacyProxyProxiedContentMap *)self hostnamesAtIndex:j];
        [v22 addHostnames:v11];
      }
    }
  }

  if ([(NSPPrivacyProxyProxiedContentMap *)self processesCount])
  {
    [v22 clearProcesses];
    processesCount = [(NSPPrivacyProxyProxiedContentMap *)self processesCount];
    if (processesCount)
    {
      v13 = processesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(NSPPrivacyProxyProxiedContentMap *)self processesAtIndex:k];
        [v22 addProcesses:v15];
      }
    }
  }

  has = self->_has;
  if ((has & 0x20) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    *(v22 + 12) = self->_percentEnabled;
    *(v22 + 88) |= 1u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *(v22 + 84) = self->_systemProcessOnly;
  *(v22 + 88) |= 0x20u;
  has = self->_has;
  if (has)
  {
    goto LABEL_29;
  }

LABEL_15:
  if ((has & 0x10) != 0)
  {
LABEL_16:
    *(v22 + 83) = self->_supportsReverseProxying;
    *(v22 + 88) |= 0x10u;
  }

LABEL_17:
  if ([(NSPPrivacyProxyProxiedContentMap *)self urlsCount])
  {
    [v22 clearUrls];
    urlsCount = [(NSPPrivacyProxyProxiedContentMap *)self urlsCount];
    if (urlsCount)
    {
      v18 = urlsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(NSPPrivacyProxyProxiedContentMap *)self urlsAtIndex:m];
        [v22 addUrls:v20];
      }
    }
  }

  v21 = self->_has;
  if ((v21 & 2) != 0)
  {
    *(v22 + 16) = self->_resolver;
    *(v22 + 88) |= 2u;
    v21 = self->_has;
    if ((v21 & 8) == 0)
    {
LABEL_23:
      if ((v21 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_23;
  }

  *(v22 + 82) = self->_matchExactHostnames;
  *(v22 + 88) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    *(v22 + 81) = self->_isPrivacyProxy;
    *(v22 + 88) |= 4u;
  }

LABEL_25:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 80) = self->_enabled;
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  PBRepeatedUInt32Copy();
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = self->_hostnames;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v38 + 1) + 8 * i) copyWithZone:zone];
        [v5 addHostnames:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v10);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->_processes;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v34 + 1) + 8 * j) copyWithZone:zone];
        [v5 addProcesses:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v16);
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 84) = self->_systemProcessOnly;
    *(v5 + 88) |= 0x20u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_17:
      if ((has & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_17;
  }

  *(v5 + 48) = self->_percentEnabled;
  *(v5 + 88) |= 1u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    *(v5 + 83) = self->_supportsReverseProxying;
    *(v5 + 88) |= 0x10u;
  }

LABEL_19:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = self->_urls;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v30 + 1) + 8 * k) copyWithZone:{zone, v30}];
        [v5 addUrls:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v23);
  }

  v27 = self->_has;
  if ((v27 & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_28;
    }

LABEL_35:
    *(v5 + 82) = self->_matchExactHostnames;
    *(v5 + 88) |= 8u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  *(v5 + 64) = self->_resolver;
  *(v5 + 88) |= 2u;
  v27 = self->_has;
  if ((v27 & 8) != 0)
  {
    goto LABEL_35;
  }

LABEL_28:
  if ((v27 & 4) != 0)
  {
LABEL_29:
    *(v5 + 81) = self->_isPrivacyProxy;
    *(v5 + 88) |= 4u;
  }

LABEL_30:
  v28 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_50;
  }

  v5 = *(equalCopy + 80);
  if (self->_enabled)
  {
    if ((*(equalCopy + 80) & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (*(equalCopy + 80))
  {
    goto LABEL_50;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 5) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_50;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_50;
  }

  hostnames = self->_hostnames;
  if (hostnames | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)hostnames isEqual:?])
    {
      goto LABEL_50;
    }
  }

  processes = self->_processes;
  if (processes | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)processes isEqual:?])
    {
      goto LABEL_50;
    }
  }

  has = self->_has;
  v10 = *(equalCopy + 88);
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 88) & 0x20) == 0)
    {
      goto LABEL_50;
    }

    v11 = *(equalCopy + 84);
    if (self->_systemProcessOnly)
    {
      if ((*(equalCopy + 84) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (*(equalCopy + 84))
    {
      goto LABEL_50;
    }
  }

  else if ((*(equalCopy + 88) & 0x20) != 0)
  {
    goto LABEL_50;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_percentEnabled != *(equalCopy + 12))
    {
      goto LABEL_50;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_50;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 88) & 0x10) == 0)
    {
      goto LABEL_50;
    }

    v13 = *(equalCopy + 83);
    if (self->_supportsReverseProxying)
    {
      if ((*(equalCopy + 83) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (*(equalCopy + 83))
    {
      goto LABEL_50;
    }
  }

  else if ((*(equalCopy + 88) & 0x10) != 0)
  {
    goto LABEL_50;
  }

  urls = self->_urls;
  if (urls | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)urls isEqual:?])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v10 = *(equalCopy + 88);
  }

  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_resolver != *(equalCopy + 16))
    {
      goto LABEL_50;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_50;
  }

  if ((has & 8) != 0)
  {
    if ((v10 & 8) == 0)
    {
      goto LABEL_50;
    }

    v16 = *(equalCopy + 82);
    if (self->_matchExactHostnames)
    {
      if ((*(equalCopy + 82) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (*(equalCopy + 82))
    {
      goto LABEL_50;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_50;
  }

  v14 = (v10 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v10 & 4) != 0)
    {
      if (self->_isPrivacyProxy)
      {
        if (*(equalCopy + 81))
        {
          goto LABEL_58;
        }
      }

      else if (!*(equalCopy + 81))
      {
LABEL_58:
        v14 = 1;
        goto LABEL_51;
      }
    }

LABEL_50:
    v14 = 0;
  }

LABEL_51:

  return v14;
}

- (unint64_t)hash
{
  enabled = self->_enabled;
  v3 = [(NSString *)self->_identifier hash];
  v4 = PBRepeatedUInt32Hash();
  v5 = [(NSMutableArray *)self->_hostnames hash];
  v6 = [(NSMutableArray *)self->_processes hash];
  if ((*&self->_has & 0x20) == 0)
  {
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = 2654435761 * self->_systemProcessOnly;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = 2654435761 * self->_percentEnabled;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v9 = 2654435761 * self->_supportsReverseProxying;
    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
LABEL_8:
  v10 = [(NSMutableArray *)self->_urls hash];
  if ((*&self->_has & 2) == 0)
  {
    v11 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v12 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v13 = 0;
    return v3 ^ v4 ^ v5 ^ v6 ^ (2654435761 * enabled) ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

  v11 = 2654435761 * self->_resolver;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v12 = 2654435761 * self->_matchExactHostnames;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v13 = 2654435761 * self->_isPrivacyProxy;
  return v3 ^ v4 ^ v5 ^ v6 ^ (2654435761 * enabled) ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  v41 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  self->_enabled = *(fromCopy + 80);
  if (*(fromCopy + 5))
  {
    [(NSPPrivacyProxyProxiedContentMap *)self setIdentifier:?];
  }

  proxiesCount = [fromCopy proxiesCount];
  if (proxiesCount)
  {
    v6 = proxiesCount;
    for (i = 0; i != v6; ++i)
    {
      -[NSPPrivacyProxyProxiedContentMap addProxies:](self, "addProxies:", [fromCopy proxiesAtIndex:i]);
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = *(fromCopy + 4);
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NSPPrivacyProxyProxiedContentMap *)self addHostnames:*(*(&v34 + 1) + 8 * j)];
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v10);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = *(fromCopy + 7);
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(NSPPrivacyProxyProxiedContentMap *)self addProcesses:*(*(&v30 + 1) + 8 * k)];
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v15);
  }

  v18 = *(fromCopy + 88);
  if ((v18 & 0x20) != 0)
  {
    self->_systemProcessOnly = *(fromCopy + 84);
    *&self->_has |= 0x20u;
    v18 = *(fromCopy + 88);
    if ((v18 & 1) == 0)
    {
LABEL_22:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((*(fromCopy + 88) & 1) == 0)
  {
    goto LABEL_22;
  }

  self->_percentEnabled = *(fromCopy + 12);
  *&self->_has |= 1u;
  if ((*(fromCopy + 88) & 0x10) != 0)
  {
LABEL_23:
    self->_supportsReverseProxying = *(fromCopy + 83);
    *&self->_has |= 0x10u;
  }

LABEL_24:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = *(fromCopy + 9);
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (m = 0; m != v21; ++m)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(NSPPrivacyProxyProxiedContentMap *)self addUrls:*(*(&v26 + 1) + 8 * m), v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v21);
  }

  v24 = *(fromCopy + 88);
  if ((v24 & 2) == 0)
  {
    if ((*(fromCopy + 88) & 8) == 0)
    {
      goto LABEL_33;
    }

LABEL_40:
    self->_matchExactHostnames = *(fromCopy + 82);
    *&self->_has |= 8u;
    if ((*(fromCopy + 88) & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  self->_resolver = *(fromCopy + 16);
  *&self->_has |= 2u;
  v24 = *(fromCopy + 88);
  if ((v24 & 8) != 0)
  {
    goto LABEL_40;
  }

LABEL_33:
  if ((v24 & 4) != 0)
  {
LABEL_34:
    self->_isPrivacyProxy = *(fromCopy + 81);
    *&self->_has |= 4u;
  }

LABEL_35:

  v25 = *MEMORY[0x1E69E9840];
}

@end