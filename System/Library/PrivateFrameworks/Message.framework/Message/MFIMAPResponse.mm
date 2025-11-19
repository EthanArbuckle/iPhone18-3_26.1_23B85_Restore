@interface MFIMAPResponse
- (MFIMAPResponse)initWithConnection:(id)a3 responseConsumer:(id)a4;
- (MFIMAPResponse)initWithResponseType:(int64_t)a3;
- (MFIMAPResponse)initWithString:(id)a3;
- (NSArray)privateNamespaces;
- (NSArray)publicNamespaces;
- (NSArray)sharedNamespaces;
- (id)_descriptionWithFullData:(BOOL)a3;
- (id)capabilities;
- (id)fetchResultWithType:(int64_t)a3;
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
- (int64_t)responseCode;
- (int64_t)uidFlagsChange;
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
- (void)setUidFlagsChange:(int64_t)a3;
- (void)setUids:(id)a3;
- (void)setUserData:(id)a3 responseCode:(int64_t)a4 responseInfo:(id)a5;
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

- (int64_t)responseCode
{
  if (*(self + 8) - 1 <= 5)
  {
    return self->_data.basic.responseCode;
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  return 0;
}

- (id)responseInfo
{
  if (*(self + 8) - 1 > 5)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
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
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
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

- (void)setUserData:(id)a3 responseCode:(int64_t)a4 responseInfo:(id)a5
{
  if (*(self + 8) - 1 > 5)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] currentHandler];
    return;
  }

  v7 = a3;
  self->_data.basic.responseCode = a4;
  if ([MEMORY[0x1E69AD678] isValidBase64:?])
  {
    v7 = [v7 mf_decodeBase64];
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (a5)
  {

    v9 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
    if (!v7)
    {
      v7 = [MEMORY[0x1E695DEF0] data];
    }

    v10 = [v9 initWithObjects:{a5, v7, 0}];
  }

  else
  {
    if (responseInfoAndOrUserData == v7)
    {
      return;
    }

    v10 = v7;
  }

  self->_data.basic.responseInfoAndOrUserData = v10;
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

    self->_data.basic.responseCode = a3;
  }
}

- (id)serverInfo
{
  v3 = *(self + 8);
  if (v3 != 8 && v3 != 21)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  return self->_data.capabilities;
}

- (void)setServerInfo:(id)a3
{
  v5 = *(self + 8);
  if (v5 != 8 && v5 != 21)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  capabilities = self->_data.capabilities;
  if (capabilities != a3)
  {

    self->_data.basic.responseCode = a3;
  }
}

- (unint64_t)number
{
  v2 = *(self + 8);
  if ((v2 - 9) < 3 || v2 == 17)
  {
    return self->_data.number;
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  return 0;
}

- (void)setNumber:(unint64_t)a3
{
  v3 = *(self + 8);
  if ((v3 - 9) < 3 || v3 == 17)
  {
    self->_data.basic.responseCode = a3;
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] currentHandler];
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

    self->_data.basic.responseCode = createFixedMutableArray(a3);
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

    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
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

    self->_data.basic.responseCode = a3;
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
      MutableCopy = [MEMORY[0x1E695DF20] dictionary];
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

    self->_data.basic.responseCode = createFixedMutableArray(a3);
  }
}

- (unint64_t)mailboxAttributes
{
  if ((*(self + 8) - 15) >= 2)
  {
    [MFIMAPResponse mailboxAttributes];
  }

  return self->_data.number;
}

- (id)separator
{
  if ((*(self + 8) - 15) >= 2)
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
  values[2] = *MEMORY[0x1E69E9840];
  if ((*(self + 8) - 15) >= 2)
  {
    [MFIMAPResponse setMailboxAttributes:separator:mailboxName:extraAttributes:];
  }

  self->_data.basic.responseCode = a3;
  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != a5)
  {

    if (a4)
    {
      values[0] = a4;
      values[1] = a5;
      v12 = CFArrayCreate(0, values, 2, MEMORY[0x1E695E9C0]);
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

  v14 = *MEMORY[0x1E69E9840];
}

- (id)fetchResultWithType:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
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

  v10 = *MEMORY[0x1E69E9840];
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

    self->_data.basic.responseCode = a3;
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

    self->_data.basic.responseCode = a3;
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != a4)
  {

    self->_data.basic.responseInfoAndOrUserData = createFixedMutableArray(a4);
  }
}

- (int64_t)uidFlagsChange
{
  if (*(self + 8) != 24)
  {
    [MFIMAPResponse uidFlagsChange];
  }

  return -(*(&self->_data.other + 1) & 1);
}

- (void)setUidFlagsChange:(int64_t)a3
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

    self->_data.basic.responseCode = a3;
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

    self->_data.basic.responseCode = a3;
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
    keyValuePairs = objc_alloc_init(MEMORY[0x1E695DF90]);
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

    self->_data.basic.responseCode = a3;
  }

  responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
  if (responseInfoAndOrUserData != a4)
  {

    self->_data.basic.responseInfoAndOrUserData = a4;
  }
}

- (id)_descriptionWithFullData:(BOOL)a3
{
  v3 = a3;
  v91 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD60] string];
  if ([(MFIMAPResponse *)self isUntagged])
  {
    [v5 appendString:@"* "];
  }

  if (self->_tag)
  {
    [v5 appendString:?];
    [v5 appendString:@" "];
  }

  [v5 appendFormat:@"%s ", ResponseTypeTable[4 * *(self + 8) + 1]];
  v75 = v5;
  switch(*(self + 8))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      v6 = [(MFIMAPResponse *)self responseCode];
      v7 = ResponseCodeTable[v6];
      v8 = [(MFIMAPResponse *)self responseInfo];
      v9 = [(MFIMAPResponse *)self userString];
      if (v6 || v8)
      {
        [v5 appendString:@"["];
        if (v6)
        {
          [v5 appendFormat:@"%s", v7];
        }

        if (v8)
        {
          [v5 appendString:@" "];
          [v5 appendString:{objc_msgSend(v8, "description")}];
        }

        [v5 appendString:@"]"];
      }

      if (((v6 - 15) < 2 || v3) && [(__CFString *)v9 length])
      {
        [v5 appendString:@" "];
        v10 = v5;
        v11 = v9;
        goto LABEL_98;
      }

      goto LABEL_111;
    case 7:
      v46 = [(MFIMAPResponse *)self capabilities];
      goto LABEL_82;
    case 8:
    case 0x15:
      v19 = [(MFIMAPResponse *)self serverInfo];
      v20 = [v19 allKeys];
      v21 = [v20 count];
      objc_msgSend(v5, "appendString:", @"(");
      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          v23 = [v20 objectAtIndex:i];
          if (i)
          {
            [v5 appendString:@" "];
          }

          [v5 appendFormat:@"%@ %@", v23, objc_msgSend(v19, "objectForKey:", v23)];
        }
      }

      goto LABEL_96;
    case 9:
    case 0xA:
    case 0xB:
      [v5 appendFormat:@"%llu", -[MFIMAPResponse number](self, "number"), v70, v71, v72];
      goto LABEL_111;
    case 0xC:
      [v5 appendFormat:@"(%@)", objc_msgSend(-[MFIMAPResponse flags](self, "flags"), "componentsJoinedByString:", @" ", v70, v71, v72];
      goto LABEL_111;
    case 0xD:
      v28 = [(MFIMAPResponse *)self statusEntries];
      v29 = [v28 allKeys];
      v30 = [v29 count];
      if (v3)
      {
        v31 = [(MFIMAPResponse *)self mailboxName];
      }

      else
      {
        v31 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:{-[MFIMAPResponse mailboxName](self, "mailboxName")}];
      }

      [v5 appendFormat:@"%@", v31];
      objc_msgSend(v5, "appendString:", @" (");
      if (v30)
      {
        for (j = 0; j != v30; ++j)
        {
          v66 = [v29 objectAtIndex:j];
          if (j)
          {
            [v5 appendString:@" "];
          }

          [v5 appendFormat:@"%@ %@", v66, objc_msgSend(v28, "objectForKey:", v66)];
        }
      }

      goto LABEL_96;
    case 0xE:
      [v5 appendFormat:@"%@", -[MFIMAPResponse searchResults](self, "searchResults"), v70, v71, v72];
      goto LABEL_111;
    case 0xF:
    case 0x10:
      if (v3)
      {
        v12 = [(MFIMAPResponse *)self separator];
        obj = [(MFIMAPResponse *)self mailboxName];
        v13 = [(MFIMAPResponse *)self mailboxAttributes];
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = (&IMAPMailboxAttributeEntries + v14);
          v17 = *(&IMAPMailboxAttributeEntries + v14 + 8);
          if ((v17 & v13) != 0 && (v17 != 2 || ([*v16 isEqualToString:@"\\NonExistent"] & 1) == 0))
          {
            if (v15)
            {
              [(__CFString *)v15 appendString:@" "];
            }

            else
            {
              v15 = objc_msgSend(@"("), "mutableCopy";
            }

            [(__CFString *)v15 appendString:*v16];
          }

          v18 = v14 >= 0x60;
          v14 += 16;
        }

        while (!v18);
        if (v15)
        {
          [(__CFString *)v15 appendString:@""]);
        }

        else
        {
          v15 = @"()";
        }

        [v5 appendString:v15];

        [v5 appendString:@" "];
        if (v12)
        {
          [v5 appendFormat:@"%@", v12];
        }

        else
        {
          [v5 appendString:@"NIL"];
        }

        [v5 appendString:@" "];
        [v5 appendFormat:@"%@", obj];
        v67 = [(MFIMAPResponse *)self extraAttributes];
        if ([v67 count])
        {
          [v5 appendFormat:@" ==> (%@)", objc_msgSend(v67, "componentsJoinedByString:", @", "), v70, v71, v72];
        }
      }

      goto LABEL_111;
    case 0x11:
      v24 = [(MFIMAPResponse *)self fetchResults];
      v25 = [v24 count];
      objc_msgSend(v5, "appendString:", @"(");
      if (v25)
      {
        for (k = 0; k != v25; ++k)
        {
          v27 = [v24 objectAtIndex:k];
          if (k)
          {
            [v5 appendString:@" "];
          }

          [v5 appendString:{objc_msgSend(v27, "description")}];
        }
      }

LABEL_96:
      v11 = @"");
      goto LABEL_97;
    case 0x12:
      v37 = [(MFIMAPResponse *)self mailboxName];
      v38 = [(MFIMAPResponse *)self quotaRootNames];
      v39 = @"NIL";
      if (v37)
      {
        v39 = v37;
      }

      [v5 appendFormat:@"%@", v39];
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v40 = [v38 countByEnumeratingWithState:&v85 objects:v90 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v86;
        do
        {
          for (m = 0; m != v41; ++m)
          {
            if (*v86 != v42)
            {
              objc_enumerationMutation(v38);
            }

            [v5 appendFormat:@" %@", *(*(&v85 + 1) + 8 * m)];
          }

          v41 = [v38 countByEnumeratingWithState:&v85 objects:v90 count:16];
        }

        while (v41);
      }

      goto LABEL_111;
    case 0x13:
      v47 = [(MFIMAPResponse *)self quotas];
      [v5 appendFormat:@"%@", -[MFIMAPResponse quotaRootName](self, "quotaRootName")];
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      obja = v47;
      v48 = [v47 countByEnumeratingWithState:&v81 objects:v89 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v82;
        do
        {
          for (n = 0; n != v49; ++n)
          {
            if (*v82 != v50)
            {
              objc_enumerationMutation(obja);
            }

            v52 = *(*(&v81 + 1) + 8 * n);
            v53 = [v52 objectForKey:@"_IMAPNameQuotaKey"];
            v54 = [v52 objectForKey:@"_IMAPCurrentUsageQuotaKey"];
            v55 = [v52 objectForKey:@"_IMAPMaxUsageQuotaKey"];
            if (v53)
            {
              v56 = v53;
            }

            else
            {
              v56 = @"NIL";
            }

            if (v54)
            {
              v57 = v54;
            }

            else
            {
              v57 = @"0";
            }

            if (v55)
            {
              v58 = v55;
            }

            else
            {
              v58 = @"0";
            }

            v5 = v75;
            [v75 appendFormat:@" (%@ %@/%@)", v56, v57, v58];
          }

          v49 = [obja countByEnumeratingWithState:&v81 objects:v89 count:16];
        }

        while (v49);
      }

      goto LABEL_111;
    case 0x14:
      v32 = [(MFIMAPResponse *)self keyValuePairs];
      v33 = [v32 objectForKeyedSubscript:@"IMAPESearchTagKey"];
      if ([v32 objectForKeyedSubscript:@"IMAPESearchAllKey"])
      {
        v34 = [v32 objectForKeyedSubscript:@"IMAPESearchAllKey"];
        [v5 appendFormat:@" TAG (%@, lowest = %lu, highest = %lu)"), v33, objc_msgSend(v34, "count"), objc_msgSend(v34, "firstIndex"), objc_msgSend(v34, "lastIndex")];
      }

      else if ([v32 objectForKeyedSubscript:@"IMAPESearchMaxKey"])
      {
        [v5 appendFormat:@" TAG (\"%@\", v33, objc_msgSend(v32, "objectForKeyedSubscript:", @"IMAPESearchMaxKey"", v71, v72];
      }

      else if ([v32 objectForKeyedSubscript:@"IMAPESearchMinKey"])
      {
        [v5 appendFormat:@" TAG (\"%@\", v33, objc_msgSend(v32, "objectForKeyedSubscript:", @"IMAPESearchMinKey"", v71, v72];
      }

      else if ([v32 objectForKeyedSubscript:@"IMAPESearchCountKey"])
      {
        [v5 appendFormat:@" TAG (\"%@\", v33, objc_msgSend(v32, "objectForKeyedSubscript:", @"IMAPESearchCountKey"", v71, v72];
      }

      goto LABEL_111;
    case 0x16:
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v77 = __43__MFIMAPResponse__descriptionWithFullData___block_invoke;
      v78 = &unk_1E7AA5A98;
      v79 = v5;
      __43__MFIMAPResponse__descriptionWithFullData___block_invoke(v76, [(MFIMAPResponse *)self privateNamespaces]);
      [v5 appendString:@" "];
      v35 = [(MFIMAPResponse *)self publicNamespaces];
      v77(v76, v35);
      [v5 appendString:@" "];
      v36 = [(MFIMAPResponse *)self sharedNamespaces];
      v77(v76, v36);
      goto LABEL_111;
    case 0x17:
      v44 = [(MFIMAPResponse *)self responseName];
      v45 = [(MFIMAPResponse *)self parameters];
      if (v44)
      {
        [v5 appendString:@" "];
        [v5 appendString:v44];
      }

      if (!v3 || !v45)
      {
        goto LABEL_111;
      }

      [v5 appendString:@" "];
      v46 = v45;
LABEL_82:
      v11 = [v46 componentsJoinedByString:@" "];
LABEL_97:
      v10 = v5;
LABEL_98:
      [v10 appendString:v11];
LABEL_111:
      v68 = *MEMORY[0x1E69E9840];
      return v5;
    case 0x18:
      v80 = 11053;
      v59 = [(MFIMAPResponse *)self uidFlagsChange];
      v60 = [(MFIMAPResponse *)self uids];
      v61 = [(MFIMAPResponse *)self flagsFetchResult];
      v62 = @"*nil*";
      if (v60)
      {
        v63 = v60;
      }

      else
      {
        v63 = @"*nil*";
      }

      v64 = *(&v80 + v59);
      if (v61)
      {
        v62 = [v61 description];
      }

      [v5 appendFormat:@" %@ %c%@", v63, v64, v62, v72];
      goto LABEL_111;
    default:
      goto LABEL_111;
  }
}

uint64_t __43__MFIMAPResponse__descriptionWithFullData___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
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

          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __43__MFIMAPResponse__descriptionWithFullData___block_invoke_2;
          v17[3] = &unk_1E7AA5A70;
          v17[4] = *(a1 + 32);
          [v12 enumerateKeysAndObjectsUsingBlock:v17];
          [*(a1 + 32) appendString:@""]);
        }

        v6 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    result = [*(a1 + 32) appendString:@""]);
    v15 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v16 = *MEMORY[0x1E69E9840];

    return [v3 appendString:@"NIL"];
  }

  return result;
}

- (MFIMAPResponse)initWithConnection:(id)a3 responseConsumer:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MFIMAPResponse;
  v6 = [(MFIMAPResponse *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AAC8]);
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

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (MFIMAPResponse)initWithString:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MFIMAPResponse;
  v4 = [(MFIMAPResponse *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
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

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (MFIMAPResponse)initWithResponseType:(int64_t)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MFIMAPResponse;
  result = [(MFIMAPResponse *)&v5 init];
  if (result)
  {
    *(result + 8) = v3;
  }

  return result;
}

- (uint64_t)capabilities
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setCapabilities:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)flags
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setFlags:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)statusEntries
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setMailboxName:statusEntries:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)searchResults
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setSearchResults:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)mailboxAttributes
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)separator
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setMailboxAttributes:separator:mailboxName:extraAttributes:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)fetchResults
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Invalid for response type %d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

- (uint64_t)setFetchResults:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)quotaRootNames
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setMailboxName:quotaRootNames:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)quotaRootName
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)quotas
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setQuotaRootName:quotas:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)uidFlagsChange
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setUidFlagsChange:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)uids
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setUids:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)flagsFetchResult
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setFlagsFetchResult:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)privateNamespaces
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setPrivateNamespaces:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)publicNamespaces
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setPublicNamespaces:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)sharedNamespaces
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setSharedNamespaces:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)responseName
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)parameters
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setResponseName:parameters:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  return [OUTLINED_FUNCTION_1_5() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end