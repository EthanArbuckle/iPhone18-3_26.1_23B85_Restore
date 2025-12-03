@interface MFIMAPResponse
- (MFIMAPResponse)initWithConnection:(id)connection responseConsumer:(id)consumer;
- (MFIMAPResponse)initWithString:(id)string;
- (NSArray)privateNamespaces;
- (NSArray)publicNamespaces;
- (NSArray)sharedNamespaces;
- (id)capabilities;
- (id)description;
- (id)fetchResultWithType:(int)type;
- (id)fetchResults;
- (id)flags;
- (id)flagsFetchResult;
- (id)keyValuePairs;
- (id)mailboxName;
- (id)parameters;
- (id)quotaRootName;
- (id)quotaRootNames;
- (id)quotas;
- (id)responseInfo;
- (id)responseName;
- (id)searchResults;
- (id)separator;
- (id)serverInfo;
- (id)statusEntries;
- (id)uids;
- (id)userData;
- (id)userString;
- (int)responseCode;
- (int)uidFlagsChange;
- (uint64_t)capabilities;
- (uint64_t)flags;
- (uint64_t)flagsFetchResult;
- (uint64_t)mailboxAttributes;
- (uint64_t)parameters;
- (uint64_t)privateNamespaces;
- (uint64_t)publicNamespaces;
- (uint64_t)quotaRootName;
- (uint64_t)quotaRootNames;
- (uint64_t)quotas;
- (uint64_t)responseName;
- (uint64_t)searchResults;
- (uint64_t)separator;
- (uint64_t)sharedNamespaces;
- (uint64_t)statusEntries;
- (uint64_t)uidFlagsChange;
- (uint64_t)uids;
- (unint64_t)mailboxAttributes;
- (unint64_t)number;
- (void)dealloc;
- (void)fetchResults;
- (void)setCapabilities:(id)capabilities;
- (void)setFetchResults:(id)results;
- (void)setFlags:(id)flags;
- (void)setFlagsFetchResult:(id)result;
- (void)setMailboxAttributes:(unint64_t)attributes separator:(id)separator mailboxName:(id)name extraAttributes:(id)extraAttributes;
- (void)setMailboxName:(id)name quotaRootNames:(id)names;
- (void)setMailboxName:(id)name statusEntries:(id)entries;
- (void)setNumber:(unint64_t)number;
- (void)setPrivateNamespaces:(id)namespaces;
- (void)setPublicNamespaces:(id)namespaces;
- (void)setQuotaRootName:(id)name quotas:(id)quotas;
- (void)setResponseName:(id)name parameters:(id)parameters;
- (void)setSearchResults:(id)results;
- (void)setServerInfo:(id)info;
- (void)setSharedNamespaces:(id)namespaces;
- (void)setUidFlagsChange:(int)change;
- (void)setUids:(id)uids;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation MFIMAPResponse

- (void)dealloc
{
  v3 = 40;
  switch(*(self + 8))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 0x11:
      goto LABEL_6;
    case 7:
    case 8:
    case 0xC:
    case 0xE:
    case 0x15:
      v3 = 32;
      goto LABEL_6;
    case 0xD:
    case 0x12:
    case 0x13:
    case 0x17:
    case 0x18:

      v3 = 40;
      goto LABEL_6;
    case 0xF:
    case 0x10:
      goto LABEL_5;
    case 0x16:

LABEL_5:
      v3 = 48;
LABEL_6:

      break;
    default:
      break;
  }

  v4.receiver = self;
  v4.super_class = MFIMAPResponse;
  [(MFIMAPResponse *)&v4 dealloc];
}

- (int)responseCode
{
  if (*(self + 8) - 1 <= 5)
  {
    return self->_data.basic.responseCode;
  }

  [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  return 0;
}

- (id)responseInfo
{
  if (*(self + 8) - 1 > 5)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    return 0;
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_data.basic.responseInfoAndOrUserData;

  return [v4 objectAtIndex:0];
}

- (id)userData
{
  if (*(self + 8) - 1 > 5)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    return 0;
  }

  else
  {
    responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    result = self->_data.basic.responseInfoAndOrUserData;
    if (isKindOfClass)
    {

      return [result objectAtIndex:1];
    }
  }

  return result;
}

- (id)userString
{
  userData = [(MFIMAPResponse *)self userData];
  if (userData)
  {
    v3 = userData;
    userData = MFCreateStringWithData();
    if (!userData)
    {
      userData = CFStringCreateWithBytes(0, [v3 bytes], objc_msgSend(v3, "length"), 0x600u, 0);
    }
  }

  return userData;
}

- (id)capabilities
{
  if (*(self + 8) != 7)
  {
    [MFIMAPResponse capabilities];
  }

  return self->_data.capabilities;
}

- (void)setCapabilities:(id)capabilities
{
  if (*(self + 8) != 7)
  {
    [MFIMAPResponse setCapabilities:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != capabilities)
  {

    self->_data.number = capabilities;
  }
}

- (id)serverInfo
{
  v3 = *(self + 8);
  if (v3 != 8 && v3 != 21)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  return self->_data.capabilities;
}

- (void)setServerInfo:(id)info
{
  v5 = *(self + 8);
  if (v5 != 8 && v5 != 21)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != info)
  {

    self->_data.number = info;
  }
}

- (unint64_t)number
{
  v2 = *(self + 8);
  if ((v2 - 9) < 3 || v2 == 17)
  {
    return self->_data.number;
  }

  [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  return 0;
}

- (void)setNumber:(unint64_t)number
{
  v3 = *(self + 8);
  if ((v3 - 9) < 3 || v3 == 17)
  {
    self->_data.number = number;
  }

  else
  {
    [objc_msgSend(MEMORY[0x277CCA890] currentHandler];
  }
}

- (id)flags
{
  if (*(self + 8) != 12)
  {
    [MFIMAPResponse flags];
  }

  return self->_data.capabilities;
}

- (void)setFlags:(id)flags
{
  if (*(self + 8) != 12)
  {
    [MFIMAPResponse setFlags:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != flags)
  {

    self->_data.number = createFixedMutableArray(flags);
  }
}

- (id)mailboxName
{
  v3 = *(self + 8);
  if ((v3 - 15) >= 2)
  {
    if (v3 == 13 || v3 == 18)
    {
      return self->_data.capabilities;
    }

    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    return 0;
  }

  if (!self->_data.basic.responseInfoAndOrUserData)
  {
    return 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  result = self->_data.basic.responseInfoAndOrUserData;
  if (isKindOfClass)
  {

    return [result objectAtIndex:1];
  }

  return result;
}

- (id)statusEntries
{
  if (*(self + 8) != 13)
  {
    [MFIMAPResponse statusEntries];
  }

  return self->_data.basic.responseInfoAndOrUserData;
}

- (void)setMailboxName:(id)name statusEntries:(id)entries
{
  if (*(self + 8) != 13)
  {
    [MFIMAPResponse setMailboxName:statusEntries:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != name)
  {

    self->_data.number = name;
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != entries)
  {

    v9 = [entries count];
    if (v9)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, v9, entries);
    }

    else if (entries)
    {
      MutableCopy = [MEMORY[0x277CBEAC0] dictionary];
    }

    else
    {
      MutableCopy = 0;
    }

    self->_data.basic.responseInfoAndOrUserData = MutableCopy;
  }
}

- (id)searchResults
{
  if (*(self + 8) != 14)
  {
    [MFIMAPResponse searchResults];
  }

  return self->_data.capabilities;
}

- (void)setSearchResults:(id)results
{
  if (*(self + 8) != 14)
  {
    [MFIMAPResponse setSearchResults:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != results)
  {

    self->_data.number = createFixedMutableArray(results);
  }
}

- (unint64_t)mailboxAttributes
{
  if (*(self + 8) - 15 >= 2)
  {
    [MFIMAPResponse mailboxAttributes];
  }

  return self->_data.number;
}

- (id)separator
{
  if (*(self + 8) - 15 >= 2)
  {
    [MFIMAPResponse separator];
  }

  if (!self->_data.basic.responseInfoAndOrUserData)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;

  return [responseInfoAndOrUserData objectAtIndex:0];
}

- (void)setMailboxAttributes:(unint64_t)attributes separator:(id)separator mailboxName:(id)name extraAttributes:(id)extraAttributes
{
  values[2] = *MEMORY[0x277D85DE8];
  if (*(self + 8) - 15 >= 2)
  {
    [MFIMAPResponse setMailboxAttributes:separator:mailboxName:extraAttributes:];
  }

  self->_data.number = attributes;
  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != name)
  {

    if (separator)
    {
      values[0] = separator;
      values[1] = name;
      nameCopy = CFArrayCreate(0, values, 2, MEMORY[0x277CBF128]);
    }

    else
    {
      nameCopy = name;
    }

    self->_data.basic.responseInfoAndOrUserData = nameCopy;
  }

  var0 = self->_data.list.var0;
  if (var0 != extraAttributes)
  {

    self->_data.fetch.modSeqNumber = extraAttributes;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)fetchResultWithType:(int)type
{
  v17 = *MEMORY[0x277D85DE8];
  fetchResults = [(MFIMAPResponse *)self fetchResults];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [fetchResults countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(fetchResults);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([v9 type] == type)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [fetchResults countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)fetchResults
{
  v3 = self + 8;
  if (*(self + 8) != 17)
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(MFIMAPResponse *)v3 fetchResults];
    }

    if (*v3 != 17)
    {
      [MFIMAPResponse fetchResults];
    }
  }

  return self->_data.basic.responseInfoAndOrUserData;
}

- (void)setFetchResults:(id)results
{
  if (*(self + 8) != 17)
  {
    [MFIMAPResponse setFetchResults:];
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != results)
  {

    self->_data.basic.responseInfoAndOrUserData = createFixedMutableArray(results);
  }
}

- (id)quotaRootNames
{
  if (*(self + 8) != 18)
  {
    [MFIMAPResponse quotaRootNames];
  }

  return self->_data.basic.responseInfoAndOrUserData;
}

- (void)setMailboxName:(id)name quotaRootNames:(id)names
{
  if (*(self + 8) != 18)
  {
    [MFIMAPResponse setMailboxName:quotaRootNames:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != name)
  {

    self->_data.number = name;
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != names)
  {

    self->_data.basic.responseInfoAndOrUserData = createFixedMutableArray(names);
  }
}

- (id)quotaRootName
{
  if (*(self + 8) != 19)
  {
    [MFIMAPResponse quotaRootName];
  }

  return self->_data.capabilities;
}

- (id)quotas
{
  if (*(self + 8) != 19)
  {
    [MFIMAPResponse quotas];
  }

  return self->_data.basic.responseInfoAndOrUserData;
}

- (void)setQuotaRootName:(id)name quotas:(id)quotas
{
  if (*(self + 8) != 19)
  {
    [MFIMAPResponse setQuotaRootName:quotas:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != name)
  {

    self->_data.number = name;
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != quotas)
  {

    self->_data.basic.responseInfoAndOrUserData = createFixedMutableArray(quotas);
  }
}

- (int)uidFlagsChange
{
  if (*(self + 8) != 24)
  {
    [MFIMAPResponse uidFlagsChange];
  }

  return *(&self->_data.other + 1) & 1;
}

- (void)setUidFlagsChange:(int)change
{
  changeCopy = change;
  if (*(self + 8) != 24)
  {
    [MFIMAPResponse setUidFlagsChange:];
  }

  *(&self->_data.other + 16) = *(&self->_data.other + 1) & 0xFE | changeCopy & 1;
}

- (id)uids
{
  if (*(self + 8) != 24)
  {
    [MFIMAPResponse uids];
  }

  return self->_data.capabilities;
}

- (void)setUids:(id)uids
{
  if (*(self + 8) != 24)
  {
    [MFIMAPResponse setUids:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != uids)
  {

    self->_data.number = uids;
  }
}

- (id)flagsFetchResult
{
  if (*(self + 8) != 24)
  {
    [MFIMAPResponse flagsFetchResult];
  }

  return self->_data.basic.responseInfoAndOrUserData;
}

- (void)setFlagsFetchResult:(id)result
{
  if (*(self + 8) != 24)
  {
    [MFIMAPResponse setFlagsFetchResult:];
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != result)
  {

    self->_data.basic.responseInfoAndOrUserData = result;
  }
}

- (NSArray)privateNamespaces
{
  if (*(self + 8) != 22)
  {
    [MFIMAPResponse privateNamespaces];
  }

  return self->_data.capabilities;
}

- (void)setPrivateNamespaces:(id)namespaces
{
  if (*(self + 8) != 22)
  {
    [MFIMAPResponse setPrivateNamespaces:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != namespaces)
  {

    self->_data.number = namespaces;
  }
}

- (NSArray)publicNamespaces
{
  if (*(self + 8) != 22)
  {
    [MFIMAPResponse publicNamespaces];
  }

  return self->_data.fetch.items;
}

- (void)setPublicNamespaces:(id)namespaces
{
  if (*(self + 8) != 22)
  {
    [MFIMAPResponse setPublicNamespaces:];
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != namespaces)
  {

    self->_data.basic.responseInfoAndOrUserData = namespaces;
  }
}

- (NSArray)sharedNamespaces
{
  if (*(self + 8) != 22)
  {
    [MFIMAPResponse sharedNamespaces];
  }

  return self->_data.list.var0;
}

- (void)setSharedNamespaces:(id)namespaces
{
  if (*(self + 8) != 22)
  {
    [MFIMAPResponse setSharedNamespaces:];
  }

  var0 = self->_data.list.var0;
  if (var0 != namespaces)
  {

    self->_data.fetch.modSeqNumber = namespaces;
  }
}

- (id)responseName
{
  if (*(self + 8) != 23)
  {
    [MFIMAPResponse responseName];
  }

  return self->_data.capabilities;
}

- (id)parameters
{
  if (*(self + 8) != 23)
  {
    [MFIMAPResponse parameters];
  }

  return self->_data.basic.responseInfoAndOrUserData;
}

- (void)setValue:(id)value forKey:(id)key
{
  keyValuePairs = self->_keyValuePairs;
  if (!keyValuePairs)
  {
    keyValuePairs = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_keyValuePairs = keyValuePairs;
  }

  [(NSDictionary *)keyValuePairs setValue:value forKey:key];
}

- (id)keyValuePairs
{
  v2 = self->_keyValuePairs;

  return v2;
}

- (void)setResponseName:(id)name parameters:(id)parameters
{
  if (*(self + 8) != 23)
  {
    [MFIMAPResponse setResponseName:parameters:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != name)
  {

    self->_data.number = name;
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != parameters)
  {

    self->_data.basic.responseInfoAndOrUserData = parameters;
  }
}

- (id)description
{
  v83 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  if ([(MFIMAPResponse *)self isUntagged])
  {
    [string appendString:@"* "];
  }

  if (self->_tag)
  {
    [string appendString:?];
    [string appendString:@" "];
  }

  [string appendFormat:@"%s ", ResponseTypeTable[4 * *(self + 8) + 1]];
  v68 = string;
  switch(*(self + 8))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      responseCode = [(MFIMAPResponse *)self responseCode];
      v5 = ResponseCodeTable[responseCode];
      responseInfo = [(MFIMAPResponse *)self responseInfo];
      userString = [(MFIMAPResponse *)self userString];
      if (responseCode || responseInfo)
      {
        [string appendString:@"["];
        if (responseCode)
        {
          [string appendFormat:@"%s", v5];
        }

        if (responseInfo)
        {
          [string appendString:@" "];
          [string appendString:{objc_msgSend(responseInfo, "description")}];
        }

        [string appendString:@"]"];
      }

      if ([(__CFString *)userString length])
      {
        [string appendString:@" "];
        v8 = string;
        v9 = userString;
        goto LABEL_78;
      }

      goto LABEL_95;
    case 7:
      capabilities = [(MFIMAPResponse *)self capabilities];
      goto LABEL_63;
    case 8:
    case 0x15:
      serverInfo = [(MFIMAPResponse *)self serverInfo];
      allKeys = [serverInfo allKeys];
      v12 = [allKeys count];
      objc_msgSend(string, "appendString:", @"(");
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v14 = [allKeys objectAtIndex:i];
          if (i)
          {
            [string appendString:@" "];
          }

          [string appendFormat:@"%@ %@", v14, objc_msgSend(serverInfo, "objectForKey:", v14)];
        }
      }

      goto LABEL_76;
    case 9:
    case 0xA:
    case 0xB:
      [string appendFormat:@"%llu", -[MFIMAPResponse number](self, "number"), v64, v65];
      goto LABEL_95;
    case 0xC:
      [string appendFormat:@"(%@)", objc_msgSend(-[MFIMAPResponse flags](self, "flags"), "componentsJoinedByString:", @" ", v64, v65];
      goto LABEL_95;
    case 0xD:
      statusEntries = [(MFIMAPResponse *)self statusEntries];
      allKeys2 = [statusEntries allKeys];
      v24 = [allKeys2 count];
      [string appendFormat:@"%@", -[MFIMAPResponse mailboxName](self, "mailboxName")];
      objc_msgSend(string, "appendString:", @" (");
      if (v24)
      {
        for (j = 0; j != v24; ++j)
        {
          v26 = [allKeys2 objectAtIndex:j];
          if (j)
          {
            [string appendString:@" "];
          }

          [string appendFormat:@"%@ %@", v26, objc_msgSend(statusEntries, "objectForKey:", v26)];
        }
      }

      goto LABEL_76;
    case 0xF:
    case 0x10:
      separator = [(MFIMAPResponse *)self separator];
      obj = [(MFIMAPResponse *)self mailboxName];
      mailboxAttributes = [(MFIMAPResponse *)self mailboxAttributes];
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = (&IMAPMailboxAttributeEntries + v17);
        v20 = *(&IMAPMailboxAttributeEntries + v17 + 8);
        if ((v20 & mailboxAttributes) != 0 && (v20 != 2 || ([*v19 isEqualToString:@"\\NonExistent"] & 1) == 0))
        {
          if (v18)
          {
            [(__CFString *)v18 appendString:@" "];
          }

          else
          {
            v18 = objc_msgSend(@"("), "mutableCopy";
          }

          [(__CFString *)v18 appendString:*v19];
        }

        v21 = v17 >= 0x60;
        v17 += 16;
      }

      while (!v21);
      if (v18)
      {
        [(__CFString *)v18 appendString:@""]);
      }

      else
      {
        v18 = @"()";
      }

      [string appendString:v18];

      [string appendString:@" "];
      if (separator)
      {
        [string appendFormat:@"%@", separator];
      }

      else
      {
        [string appendString:@"NIL"];
      }

      [string appendString:@" "];
      [string appendFormat:@"%@", obj];
      extraAttributes = [(MFIMAPResponse *)self extraAttributes];
      if ([extraAttributes count])
      {
        [string appendFormat:@" ==> (%@)", objc_msgSend(extraAttributes, "componentsJoinedByString:", @", "), v64, v65];
      }

      goto LABEL_95;
    case 0x11:
      fetchResults = [(MFIMAPResponse *)self fetchResults];
      v51 = [fetchResults count];
      objc_msgSend(string, "appendString:", @"(");
      if (v51)
      {
        for (k = 0; k != v51; ++k)
        {
          v53 = [fetchResults objectAtIndex:k];
          if (k)
          {
            [string appendString:@" "];
          }

          [string appendString:{objc_msgSend(v53, "description")}];
        }
      }

LABEL_76:
      v9 = @"");
      goto LABEL_77;
    case 0x12:
      mailboxName = [(MFIMAPResponse *)self mailboxName];
      quotaRootNames = [(MFIMAPResponse *)self quotaRootNames];
      v56 = @"NIL";
      if (mailboxName)
      {
        v56 = mailboxName;
      }

      [string appendFormat:@"%@", v56];
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v57 = [quotaRootNames countByEnumeratingWithState:&v77 objects:v82 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v78;
        do
        {
          for (m = 0; m != v58; ++m)
          {
            if (*v78 != v59)
            {
              objc_enumerationMutation(quotaRootNames);
            }

            [string appendFormat:@" %@", *(*(&v77 + 1) + 8 * m)];
          }

          v58 = [quotaRootNames countByEnumeratingWithState:&v77 objects:v82 count:16];
        }

        while (v58);
      }

      goto LABEL_95;
    case 0x13:
      quotas = [(MFIMAPResponse *)self quotas];
      [string appendFormat:@"%@", -[MFIMAPResponse quotaRootName](self, "quotaRootName")];
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      obja = quotas;
      v31 = [quotas countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v74;
        do
        {
          for (n = 0; n != v32; ++n)
          {
            if (*v74 != v33)
            {
              objc_enumerationMutation(obja);
            }

            v35 = *(*(&v73 + 1) + 8 * n);
            v36 = [v35 objectForKey:@"_IMAPNameQuotaKey"];
            v37 = [v35 objectForKey:@"_IMAPCurrentUsageQuotaKey"];
            v38 = [v35 objectForKey:@"_IMAPMaxUsageQuotaKey"];
            if (v36)
            {
              v39 = v36;
            }

            else
            {
              v39 = @"NIL";
            }

            if (v37)
            {
              v40 = v37;
            }

            else
            {
              v40 = @"0";
            }

            if (v38)
            {
              v41 = v38;
            }

            else
            {
              v41 = @"0";
            }

            string = v68;
            [v68 appendFormat:@" (%@ %@/%@)", v39, v40, v41];
          }

          v32 = [obja countByEnumeratingWithState:&v73 objects:v81 count:16];
        }

        while (v32);
      }

      goto LABEL_95;
    case 0x16:
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v70 = __29__MFIMAPResponse_description__block_invoke;
      v71 = &unk_2798B1A28;
      v72 = string;
      __29__MFIMAPResponse_description__block_invoke(v69, [(MFIMAPResponse *)self privateNamespaces]);
      [string appendString:@" "];
      publicNamespaces = [(MFIMAPResponse *)self publicNamespaces];
      v70(v69, publicNamespaces);
      [string appendString:@" "];
      sharedNamespaces = [(MFIMAPResponse *)self sharedNamespaces];
      v70(v69, sharedNamespaces);
      goto LABEL_95;
    case 0x17:
      responseName = [(MFIMAPResponse *)self responseName];
      parameters = [(MFIMAPResponse *)self parameters];
      if (responseName)
      {
        [string appendString:@" "];
        [string appendString:responseName];
      }

      if (!parameters)
      {
        goto LABEL_95;
      }

      [string appendString:@" "];
      capabilities = parameters;
LABEL_63:
      v9 = [capabilities componentsJoinedByString:@" "];
LABEL_77:
      v8 = string;
LABEL_78:
      [v8 appendString:v9];
LABEL_95:
      v62 = *MEMORY[0x277D85DE8];
      return string;
    case 0x18:
      uidFlagsChange = [(MFIMAPResponse *)self uidFlagsChange];
      uids = [(MFIMAPResponse *)self uids];
      flagsFetchResult = [(MFIMAPResponse *)self flagsFetchResult];
      v45 = @"*nil*";
      if (uids)
      {
        v46 = uids;
      }

      else
      {
        v46 = @"*nil*";
      }

      v47 = byte_258BBFDCC[uidFlagsChange];
      if (flagsFetchResult)
      {
        v45 = [flagsFetchResult description];
      }

      [string appendFormat:@" %@ %c%@", v46, v47, v45];
      goto LABEL_95;
    default:
      goto LABEL_95;
  }
}

uint64_t __29__MFIMAPResponse_description__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    objc_msgSend(v3, "appendString:", @"(");
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(a2);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:@"_IMAPNamespacePrefixKey"];
          v11 = [v9 objectForKeyedSubscript:@"_IMAPNamespaceDelimiterKey"];
          v12 = [v9 objectForKeyedSubscript:@"_IMAPNamespaceExtensionsKey"];
          objc_msgSend(*(a1 + 32), "appendFormat:", @"(%@ "), v10;
          v13 = *(a1 + 32);
          if (v11)
          {
            [v13 appendFormat:@"%@", v11];
          }

          else
          {
            [v13 appendString:@"NIL"];
          }

          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __29__MFIMAPResponse_description__block_invoke_2;
          v17[3] = &unk_2798B1A00;
          v17[4] = *(a1 + 32);
          [v12 enumerateKeysAndObjectsUsingBlock:v17];
          [*(a1 + 32) appendString:@""]);
        }

        v6 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    result = [*(a1 + 32) appendString:@""]);
    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v16 = *MEMORY[0x277D85DE8];

    return [v3 appendString:@"NIL"];
  }

  return result;
}

- (MFIMAPResponse)initWithConnection:(id)connection responseConsumer:(id)consumer
{
  v14 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MFIMAPResponse;
  v6 = [(MFIMAPResponse *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    [(MFIMAPResponse *)v6 setResponseConsumer:consumer];
    v8 = [connection _readDataOfLength:-1];
    if (!v8 || ((v9 = -[MFIMAPParseContext initWithConnection:response:start:end:]([MFIMAPParseContext alloc], "initWithConnection:response:start:end:", connection, v6, [v8 bytes], objc_msgSend(v8, "bytes") + objc_msgSend(v8, "length")), response(v9), !-[MFIMAPParseContext isValid](v9, "isValid")) ? (v10 = 0) : (v10 = v6), v9, !v10))
    {

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (MFIMAPResponse)initWithString:(id)string
{
  v12 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = MFIMAPResponse;
  v4 = [(MFIMAPResponse *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    uTF8String = [string UTF8String];
    v7 = -[MFIMAPParseContext initWithConnection:response:start:end:]([MFIMAPParseContext alloc], "initWithConnection:response:start:end:", 0, v4, uTF8String, uTF8String + [string length]);
    response(v7);
    if ([(MFIMAPParseContext *)v7 isValid])
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (uint64_t)capabilities
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setCapabilities:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)flags
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setFlags:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)statusEntries
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setMailboxName:statusEntries:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)searchResults
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setSearchResults:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)mailboxAttributes
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)separator
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setMailboxAttributes:separator:mailboxName:extraAttributes:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)fetchResults
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_258B7A000, a2, OS_LOG_TYPE_ERROR, "Invalid for response type %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (uint64_t)setFetchResults:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)quotaRootNames
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setMailboxName:quotaRootNames:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)quotaRootName
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)quotas
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setQuotaRootName:quotas:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)uidFlagsChange
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setUidFlagsChange:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)uids
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setUids:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)flagsFetchResult
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setFlagsFetchResult:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)privateNamespaces
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setPrivateNamespaces:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)publicNamespaces
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setPublicNamespaces:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)sharedNamespaces
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setSharedNamespaces:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)responseName
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)parameters
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setResponseName:parameters:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  return [OUTLINED_FUNCTION_1_3() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end