@interface MFIMAPResponse
- (MFIMAPResponse)initWithConnection:(id)a3 responseConsumer:(id)a4;
- (MFIMAPResponse)initWithString:(id)a3;
- (NSArray)privateNamespaces;
- (NSArray)publicNamespaces;
- (NSArray)sharedNamespaces;
- (id)capabilities;
- (id)description;
- (id)fetchResultWithType:(int)a3;
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
- (void)setCapabilities:(id)a3;
- (void)setFetchResults:(id)a3;
- (void)setFlags:(id)a3;
- (void)setFlagsFetchResult:(id)a3;
- (void)setMailboxAttributes:(unint64_t)a3 separator:(id)a4 mailboxName:(id)a5 extraAttributes:(id)a6;
- (void)setMailboxName:(id)a3 quotaRootNames:(id)a4;
- (void)setMailboxName:(id)a3 statusEntries:(id)a4;
- (void)setNumber:(unint64_t)a3;
- (void)setPrivateNamespaces:(id)a3;
- (void)setPublicNamespaces:(id)a3;
- (void)setQuotaRootName:(id)a3 quotas:(id)a4;
- (void)setResponseName:(id)a3 parameters:(id)a4;
- (void)setSearchResults:(id)a3;
- (void)setServerInfo:(id)a3;
- (void)setSharedNamespaces:(id)a3;
- (void)setUidFlagsChange:(int)a3;
- (void)setUids:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
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
  v2 = [(MFIMAPResponse *)self userData];
  if (v2)
  {
    v3 = v2;
    v2 = MFCreateStringWithData();
    if (!v2)
    {
      v2 = CFStringCreateWithBytes(0, [v3 bytes], objc_msgSend(v3, "length"), 0x600u, 0);
    }
  }

  return v2;
}

- (id)capabilities
{
  if (*(self + 8) != 7)
  {
    [MFIMAPResponse capabilities];
  }

  return self->_data.capabilities;
}

- (void)setCapabilities:(id)a3
{
  if (*(self + 8) != 7)
  {
    [MFIMAPResponse setCapabilities:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != a3)
  {

    self->_data.number = a3;
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

- (void)setServerInfo:(id)a3
{
  v5 = *(self + 8);
  if (v5 != 8 && v5 != 21)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != a3)
  {

    self->_data.number = a3;
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

- (void)setNumber:(unint64_t)a3
{
  v3 = *(self + 8);
  if ((v3 - 9) < 3 || v3 == 17)
  {
    self->_data.number = a3;
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

- (void)setFlags:(id)a3
{
  if (*(self + 8) != 12)
  {
    [MFIMAPResponse setFlags:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != a3)
  {

    self->_data.number = createFixedMutableArray(a3);
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

- (void)setMailboxName:(id)a3 statusEntries:(id)a4
{
  if (*(self + 8) != 13)
  {
    [MFIMAPResponse setMailboxName:statusEntries:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != a3)
  {

    self->_data.number = a3;
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != a4)
  {

    v9 = [a4 count];
    if (v9)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, v9, a4);
    }

    else if (a4)
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

- (void)setSearchResults:(id)a3
{
  if (*(self + 8) != 14)
  {
    [MFIMAPResponse setSearchResults:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != a3)
  {

    self->_data.number = createFixedMutableArray(a3);
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

- (void)setMailboxAttributes:(unint64_t)a3 separator:(id)a4 mailboxName:(id)a5 extraAttributes:(id)a6
{
  values[2] = *MEMORY[0x277D85DE8];
  if (*(self + 8) - 15 >= 2)
  {
    [MFIMAPResponse setMailboxAttributes:separator:mailboxName:extraAttributes:];
  }

  self->_data.number = a3;
  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != a5)
  {

    if (a4)
    {
      values[0] = a4;
      values[1] = a5;
      v12 = CFArrayCreate(0, values, 2, MEMORY[0x277CBF128]);
    }

    else
    {
      v12 = a5;
    }

    self->_data.basic.responseInfoAndOrUserData = v12;
  }

  var0 = self->_data.list.var0;
  if (var0 != a6)
  {

    self->_data.fetch.modSeqNumber = a6;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)fetchResultWithType:(int)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(MFIMAPResponse *)self fetchResults];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([v9 type] == a3)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)setFetchResults:(id)a3
{
  if (*(self + 8) != 17)
  {
    [MFIMAPResponse setFetchResults:];
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != a3)
  {

    self->_data.basic.responseInfoAndOrUserData = createFixedMutableArray(a3);
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

- (void)setMailboxName:(id)a3 quotaRootNames:(id)a4
{
  if (*(self + 8) != 18)
  {
    [MFIMAPResponse setMailboxName:quotaRootNames:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != a3)
  {

    self->_data.number = a3;
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != a4)
  {

    self->_data.basic.responseInfoAndOrUserData = createFixedMutableArray(a4);
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

- (void)setQuotaRootName:(id)a3 quotas:(id)a4
{
  if (*(self + 8) != 19)
  {
    [MFIMAPResponse setQuotaRootName:quotas:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != a3)
  {

    self->_data.number = a3;
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != a4)
  {

    self->_data.basic.responseInfoAndOrUserData = createFixedMutableArray(a4);
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

- (void)setUidFlagsChange:(int)a3
{
  v3 = a3;
  if (*(self + 8) != 24)
  {
    [MFIMAPResponse setUidFlagsChange:];
  }

  *(&self->_data.other + 16) = *(&self->_data.other + 1) & 0xFE | v3 & 1;
}

- (id)uids
{
  if (*(self + 8) != 24)
  {
    [MFIMAPResponse uids];
  }

  return self->_data.capabilities;
}

- (void)setUids:(id)a3
{
  if (*(self + 8) != 24)
  {
    [MFIMAPResponse setUids:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != a3)
  {

    self->_data.number = a3;
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

- (void)setFlagsFetchResult:(id)a3
{
  if (*(self + 8) != 24)
  {
    [MFIMAPResponse setFlagsFetchResult:];
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != a3)
  {

    self->_data.basic.responseInfoAndOrUserData = a3;
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

- (void)setPrivateNamespaces:(id)a3
{
  if (*(self + 8) != 22)
  {
    [MFIMAPResponse setPrivateNamespaces:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != a3)
  {

    self->_data.number = a3;
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

- (void)setPublicNamespaces:(id)a3
{
  if (*(self + 8) != 22)
  {
    [MFIMAPResponse setPublicNamespaces:];
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != a3)
  {

    self->_data.basic.responseInfoAndOrUserData = a3;
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

- (void)setSharedNamespaces:(id)a3
{
  if (*(self + 8) != 22)
  {
    [MFIMAPResponse setSharedNamespaces:];
  }

  var0 = self->_data.list.var0;
  if (var0 != a3)
  {

    self->_data.fetch.modSeqNumber = a3;
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

- (void)setValue:(id)a3 forKey:(id)a4
{
  keyValuePairs = self->_keyValuePairs;
  if (!keyValuePairs)
  {
    keyValuePairs = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_keyValuePairs = keyValuePairs;
  }

  [(NSDictionary *)keyValuePairs setValue:a3 forKey:a4];
}

- (id)keyValuePairs
{
  v2 = self->_keyValuePairs;

  return v2;
}

- (void)setResponseName:(id)a3 parameters:(id)a4
{
  if (*(self + 8) != 23)
  {
    [MFIMAPResponse setResponseName:parameters:];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != a3)
  {

    self->_data.number = a3;
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != a4)
  {

    self->_data.basic.responseInfoAndOrUserData = a4;
  }
}

- (id)description
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  if ([(MFIMAPResponse *)self isUntagged])
  {
    [v3 appendString:@"* "];
  }

  if (self->_tag)
  {
    [v3 appendString:?];
    [v3 appendString:@" "];
  }

  [v3 appendFormat:@"%s ", ResponseTypeTable[4 * *(self + 8) + 1]];
  v68 = v3;
  switch(*(self + 8))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      v4 = [(MFIMAPResponse *)self responseCode];
      v5 = ResponseCodeTable[v4];
      v6 = [(MFIMAPResponse *)self responseInfo];
      v7 = [(MFIMAPResponse *)self userString];
      if (v4 || v6)
      {
        [v3 appendString:@"["];
        if (v4)
        {
          [v3 appendFormat:@"%s", v5];
        }

        if (v6)
        {
          [v3 appendString:@" "];
          [v3 appendString:{objc_msgSend(v6, "description")}];
        }

        [v3 appendString:@"]"];
      }

      if ([(__CFString *)v7 length])
      {
        [v3 appendString:@" "];
        v8 = v3;
        v9 = v7;
        goto LABEL_78;
      }

      goto LABEL_95;
    case 7:
      v29 = [(MFIMAPResponse *)self capabilities];
      goto LABEL_63;
    case 8:
    case 0x15:
      v10 = [(MFIMAPResponse *)self serverInfo];
      v11 = [v10 allKeys];
      v12 = [v11 count];
      objc_msgSend(v3, "appendString:", @"(");
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v14 = [v11 objectAtIndex:i];
          if (i)
          {
            [v3 appendString:@" "];
          }

          [v3 appendFormat:@"%@ %@", v14, objc_msgSend(v10, "objectForKey:", v14)];
        }
      }

      goto LABEL_76;
    case 9:
    case 0xA:
    case 0xB:
      [v3 appendFormat:@"%llu", -[MFIMAPResponse number](self, "number"), v64, v65];
      goto LABEL_95;
    case 0xC:
      [v3 appendFormat:@"(%@)", objc_msgSend(-[MFIMAPResponse flags](self, "flags"), "componentsJoinedByString:", @" ", v64, v65];
      goto LABEL_95;
    case 0xD:
      v22 = [(MFIMAPResponse *)self statusEntries];
      v23 = [v22 allKeys];
      v24 = [v23 count];
      [v3 appendFormat:@"%@", -[MFIMAPResponse mailboxName](self, "mailboxName")];
      objc_msgSend(v3, "appendString:", @" (");
      if (v24)
      {
        for (j = 0; j != v24; ++j)
        {
          v26 = [v23 objectAtIndex:j];
          if (j)
          {
            [v3 appendString:@" "];
          }

          [v3 appendFormat:@"%@ %@", v26, objc_msgSend(v22, "objectForKey:", v26)];
        }
      }

      goto LABEL_76;
    case 0xF:
    case 0x10:
      v15 = [(MFIMAPResponse *)self separator];
      obj = [(MFIMAPResponse *)self mailboxName];
      v16 = [(MFIMAPResponse *)self mailboxAttributes];
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = (&IMAPMailboxAttributeEntries + v17);
        v20 = *(&IMAPMailboxAttributeEntries + v17 + 8);
        if ((v20 & v16) != 0 && (v20 != 2 || ([*v19 isEqualToString:@"\\NonExistent"] & 1) == 0))
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

      [v3 appendString:v18];

      [v3 appendString:@" "];
      if (v15)
      {
        [v3 appendFormat:@"%@", v15];
      }

      else
      {
        [v3 appendString:@"NIL"];
      }

      [v3 appendString:@" "];
      [v3 appendFormat:@"%@", obj];
      v61 = [(MFIMAPResponse *)self extraAttributes];
      if ([v61 count])
      {
        [v3 appendFormat:@" ==> (%@)", objc_msgSend(v61, "componentsJoinedByString:", @", "), v64, v65];
      }

      goto LABEL_95;
    case 0x11:
      v50 = [(MFIMAPResponse *)self fetchResults];
      v51 = [v50 count];
      objc_msgSend(v3, "appendString:", @"(");
      if (v51)
      {
        for (k = 0; k != v51; ++k)
        {
          v53 = [v50 objectAtIndex:k];
          if (k)
          {
            [v3 appendString:@" "];
          }

          [v3 appendString:{objc_msgSend(v53, "description")}];
        }
      }

LABEL_76:
      v9 = @"");
      goto LABEL_77;
    case 0x12:
      v54 = [(MFIMAPResponse *)self mailboxName];
      v55 = [(MFIMAPResponse *)self quotaRootNames];
      v56 = @"NIL";
      if (v54)
      {
        v56 = v54;
      }

      [v3 appendFormat:@"%@", v56];
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v57 = [v55 countByEnumeratingWithState:&v77 objects:v82 count:16];
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
              objc_enumerationMutation(v55);
            }

            [v3 appendFormat:@" %@", *(*(&v77 + 1) + 8 * m)];
          }

          v58 = [v55 countByEnumeratingWithState:&v77 objects:v82 count:16];
        }

        while (v58);
      }

      goto LABEL_95;
    case 0x13:
      v30 = [(MFIMAPResponse *)self quotas];
      [v3 appendFormat:@"%@", -[MFIMAPResponse quotaRootName](self, "quotaRootName")];
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      obja = v30;
      v31 = [v30 countByEnumeratingWithState:&v73 objects:v81 count:16];
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

            v3 = v68;
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
      v72 = v3;
      __29__MFIMAPResponse_description__block_invoke(v69, [(MFIMAPResponse *)self privateNamespaces]);
      [v3 appendString:@" "];
      v48 = [(MFIMAPResponse *)self publicNamespaces];
      v70(v69, v48);
      [v3 appendString:@" "];
      v49 = [(MFIMAPResponse *)self sharedNamespaces];
      v70(v69, v49);
      goto LABEL_95;
    case 0x17:
      v27 = [(MFIMAPResponse *)self responseName];
      v28 = [(MFIMAPResponse *)self parameters];
      if (v27)
      {
        [v3 appendString:@" "];
        [v3 appendString:v27];
      }

      if (!v28)
      {
        goto LABEL_95;
      }

      [v3 appendString:@" "];
      v29 = v28;
LABEL_63:
      v9 = [v29 componentsJoinedByString:@" "];
LABEL_77:
      v8 = v3;
LABEL_78:
      [v8 appendString:v9];
LABEL_95:
      v62 = *MEMORY[0x277D85DE8];
      return v3;
    case 0x18:
      v42 = [(MFIMAPResponse *)self uidFlagsChange];
      v43 = [(MFIMAPResponse *)self uids];
      v44 = [(MFIMAPResponse *)self flagsFetchResult];
      v45 = @"*nil*";
      if (v43)
      {
        v46 = v43;
      }

      else
      {
        v46 = @"*nil*";
      }

      v47 = byte_258BBFDCC[v42];
      if (v44)
      {
        v45 = [v44 description];
      }

      [v3 appendFormat:@" %@ %c%@", v46, v47, v45];
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

- (MFIMAPResponse)initWithConnection:(id)a3 responseConsumer:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MFIMAPResponse;
  v6 = [(MFIMAPResponse *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    [(MFIMAPResponse *)v6 setResponseConsumer:a4];
    v8 = [a3 _readDataOfLength:-1];
    if (!v8 || ((v9 = -[MFIMAPParseContext initWithConnection:response:start:end:]([MFIMAPParseContext alloc], "initWithConnection:response:start:end:", a3, v6, [v8 bytes], objc_msgSend(v8, "bytes") + objc_msgSend(v8, "length")), response(v9), !-[MFIMAPParseContext isValid](v9, "isValid")) ? (v10 = 0) : (v10 = v6), v9, !v10))
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

- (MFIMAPResponse)initWithString:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = MFIMAPResponse;
  v4 = [(MFIMAPResponse *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    v6 = [a3 UTF8String];
    v7 = -[MFIMAPParseContext initWithConnection:response:start:end:]([MFIMAPParseContext alloc], "initWithConnection:response:start:end:", 0, v4, v6, v6 + [a3 length]);
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
  v2 = *a1;
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