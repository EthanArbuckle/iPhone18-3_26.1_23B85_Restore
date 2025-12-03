@interface FMFHandle
+ (id)familyHandleWithId:(id)id dsid:(id)dsid;
+ (id)handleWithId:(id)id;
+ (id)handleWithId:(id)id serverId:(id)serverId;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPhoneNumber;
- (BOOL)isSharingThroughGroupId:(id)id;
- (FMFHandle)initWithCoder:(id)coder;
- (id)IDSRecipientFromHandle:(id)handle;
- (id)cachedPrettyName;
- (id)comparisonIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)prettyName;
- (id)recordId;
- (id)sanitizePhoneNumber:(id)number;
- (int64_t)prettyNameCompare:(id)compare;
- (unint64_t)hash;
- (void)abPreferencesDidChange;
- (void)addressBookDidChange;
- (void)cachedPrettyName;
- (void)correlationIdentifierForHandle:(id)handle withCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)idsCorrelationIdentifierWithCompletion:(id)completion;
- (void)prettyNameWithCompletion:(id)completion;
- (void)setICloudId:(id)id;
@end

@implementation FMFHandle

- (void)addressBookDidChange
{
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "resetting _prettyNameInternal due to addressBookDidChange", v4, 2u);
  }

  [(FMFHandle *)self set_prettyNameInternal:0];
}

- (void)abPreferencesDidChange
{
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "resetting _prettyNameInternal due to abPreferencesDidChange", v4, 2u);
  }

  [(FMFHandle *)self set_prettyNameInternal:0];
}

+ (id)handleWithId:(id)id
{
  idCopy = id;
  v4 = [objc_opt_class() handleWithId:idCopy serverId:0];

  return v4;
}

+ (id)handleWithId:(id)id serverId:(id)serverId
{
  serverIdCopy = serverId;
  idCopy = id;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setIdentifier:idCopy];
  [v7 setQualifiedIdentifier:idCopy];

  [v7 setServerId:serverIdCopy];
  [v7 setIdsStatus:-1];
  [v7 setReachable:0];
  v8 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = [v8 numberWithDouble:floor(v10 * 1000.0)];

  [v7 setTrackingTimestamp:v11];
  if ([v7 isPhoneNumber])
  {
    identifier = [v7 identifier];
    v13 = [v7 sanitizePhoneNumber:identifier];
    [v7 setIdentifier:v13];
  }

  return v7;
}

+ (id)familyHandleWithId:(id)id dsid:(id)dsid
{
  dsidCopy = dsid;
  idCopy = id;
  v7 = [objc_opt_class() handleWithId:idCopy];

  [v7 setDsid:dsidCopy];
  [v7 setIsFamilyMember:1];

  return v7;
}

- (void)setICloudId:(id)id
{
  v4 = MEMORY[0x277CCA900];
  idCopy = id;
  whitespaceAndNewlineCharacterSet = [v4 whitespaceAndNewlineCharacterSet];
  v9 = [idCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  lowercaseString = [v9 lowercaseString];
  identifier = self->_identifier;
  self->_identifier = lowercaseString;
}

- (BOOL)isSharingThroughGroupId:(id)id
{
  v4 = MEMORY[0x277CBEB98];
  idCopy = id;
  expiresByGroupId = [(FMFHandle *)self expiresByGroupId];
  allKeys = [expiresByGroupId allKeys];
  v8 = [v4 setWithArray:allKeys];

  LOBYTE(expiresByGroupId) = [v8 containsObject:idCopy];
  return expiresByGroupId;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  identifier = [(FMFHandle *)self identifier];
  [v4 setIdentifier:identifier];

  serverId = [(FMFHandle *)self serverId];
  [v4 setServerId:serverId];

  expiresByGroupId = [(FMFHandle *)self expiresByGroupId];
  [v4 setExpiresByGroupId:expiresByGroupId];

  trackingTimestamp = [(FMFHandle *)self trackingTimestamp];
  [v4 setTrackingTimestamp:trackingTimestamp];

  hashedDSID = [(FMFHandle *)self hashedDSID];
  [v4 setHashedDSID:hashedDSID];

  favoriteOrder = [(FMFHandle *)self favoriteOrder];
  [v4 setFavoriteOrder:favoriteOrder];

  [v4 setIdsStatus:{-[FMFHandle idsStatus](self, "idsStatus")}];
  [v4 setReachable:{-[FMFHandle reachable](self, "reachable")}];
  qualifiedIdentifier = [(FMFHandle *)self qualifiedIdentifier];
  [v4 setQualifiedIdentifier:qualifiedIdentifier];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(FMFHandle *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  serverId = [(FMFHandle *)self serverId];
  [coderCopy encodeObject:serverId forKey:@"serverId"];

  dsid = [(FMFHandle *)self dsid];
  [coderCopy encodeObject:dsid forKey:@"dsid"];

  expiresByGroupId = [(FMFHandle *)self expiresByGroupId];
  [coderCopy encodeObject:expiresByGroupId forKey:@"expiresByGroupId"];

  trackingTimestamp = [(FMFHandle *)self trackingTimestamp];
  [coderCopy encodeObject:trackingTimestamp forKey:@"trackingTimestamp"];

  hashedDSID = [(FMFHandle *)self hashedDSID];
  [coderCopy encodeObject:hashedDSID forKey:@"hashedDSID"];

  favoriteOrder = [(FMFHandle *)self favoriteOrder];
  [coderCopy encodeObject:favoriteOrder forKey:@"favoriteOrder"];

  [coderCopy encodeInteger:-[FMFHandle idsStatus](self forKey:{"idsStatus"), @"idsStatus"}];
  [coderCopy encodeBool:-[FMFHandle reachable](self forKey:{"reachable"), @"reachable"}];
  qualifiedIdentifier = [(FMFHandle *)self qualifiedIdentifier];
  [coderCopy encodeObject:qualifiedIdentifier forKey:@"qualifiedIdentifier"];
}

- (FMFHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(FMFHandle *)v5 setIdentifier:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverId"];
  [(FMFHandle *)v5 setServerId:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
  [(FMFHandle *)v5 setDsid:v8];

  v9 = [coderCopy decodePropertyListForKey:@"expiresByGroupId"];
  [(FMFHandle *)v5 setExpiresByGroupId:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingTimestamp"];
  [(FMFHandle *)v5 setTrackingTimestamp:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hashedDSID"];
  [(FMFHandle *)v5 setHashedDSID:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"favoriteOrder"];
  [(FMFHandle *)v5 setFavoriteOrder:v12];

  -[FMFHandle setIdsStatus:](v5, "setIdsStatus:", [coderCopy decodeIntegerForKey:@"idsStatus"]);
  -[FMFHandle setReachable:](v5, "setReachable:", [coderCopy decodeBoolForKey:@"reachable"]);
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"qualifiedIdentifier"];

  [(FMFHandle *)v5 setQualifiedIdentifier:v13];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    comparisonIdentifier = [(FMFHandle *)self comparisonIdentifier];
    comparisonIdentifier2 = [v5 comparisonIdentifier];

    v8 = [comparisonIdentifier isEqualToString:comparisonIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)comparisonIdentifier
{
  identifier = [(FMFHandle *)self identifier];
  lowercaseString = [identifier lowercaseString];

  return lowercaseString;
}

- (unint64_t)hash
{
  comparisonIdentifier = [(FMFHandle *)self comparisonIdentifier];
  v3 = [comparisonIdentifier hash];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  identifier = [(FMFHandle *)self identifier];
  v4 = [v2 stringWithFormat:@"%@", identifier];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(FMFHandle *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, identifier];

  return v6;
}

- (int64_t)prettyNameCompare:(id)compare
{
  compareCopy = compare;
  prettyName = [(FMFHandle *)self prettyName];
  prettyName2 = [compareCopy prettyName];

  v7 = [prettyName caseInsensitiveCompare:prettyName2];
  return v7;
}

- (id)prettyName
{
  _prettyNameInternal = [(FMFHandle *)self _prettyNameInternal];

  if (_prettyNameInternal)
  {
    _prettyNameInternal2 = [(FMFHandle *)self _prettyNameInternal];
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = +[FMFSession sharedInstance];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __23__FMFHandle_prettyName__block_invoke;
    v15[3] = &unk_278FDE270;
    v17 = &v18;
    v7 = v5;
    v16 = v7;
    [v6 getPrettyNameForHandle:self completion:v15];

    v8 = dispatch_time(0, 2000000000);
    if (dispatch_semaphore_wait(v7, v8))
    {
      v9 = LogCategory_Daemon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_24A33F000, v9, OS_LOG_TYPE_DEFAULT, "timeOut prettyName", v14, 2u);
      }
    }

    v10 = v19[5];
    if (!v10 || ![v10 length])
    {
      identifier = [(FMFHandle *)self identifier];
      v12 = v19[5];
      v19[5] = identifier;
    }

    [(FMFHandle *)self set_prettyNameInternal:v19[5]];
    _prettyNameInternal2 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  return _prettyNameInternal2;
}

void __23__FMFHandle_prettyName__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  if (!v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    dispatch_semaphore_signal(v7);
  }
}

- (id)cachedPrettyName
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(FMFHandle *)a2 cachedPrettyName];
  }

  return [(FMFHandle *)self _prettyNameInternal];
}

- (void)prettyNameWithCompletion:(id)completion
{
  completionCopy = completion;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(FMFHandle *)a2 prettyNameWithCompletion:?];
  }

  _prettyNameInternal = [(FMFHandle *)self _prettyNameInternal];

  if (_prettyNameInternal)
  {
    _prettyNameInternal2 = [(FMFHandle *)self _prettyNameInternal];
    completionCopy[2](completionCopy, _prettyNameInternal2);
  }

  else
  {
    v8 = +[FMFSession sharedInstance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__FMFHandle_prettyNameWithCompletion___block_invoke;
    v9[3] = &unk_278FDE2C0;
    v9[4] = self;
    v10 = completionCopy;
    [v8 getPrettyNameForHandle:self completion:v9];
  }
}

void __38__FMFHandle_prettyNameWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [*(a1 + 32) identifier];
  }

  v6 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__FMFHandle_prettyNameWithCompletion___block_invoke_2;
  block[3] = &unk_278FDE298;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __38__FMFHandle_prettyNameWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) set_prettyNameInternal:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)idsCorrelationIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  _idsCorrelationIdentifierInternal = [(FMFHandle *)self _idsCorrelationIdentifierInternal];

  if (_idsCorrelationIdentifierInternal)
  {
    _idsCorrelationIdentifierInternal2 = [(FMFHandle *)self _idsCorrelationIdentifierInternal];
    completionCopy[2](completionCopy, _idsCorrelationIdentifierInternal2);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__FMFHandle_idsCorrelationIdentifierWithCompletion___block_invoke;
    v7[3] = &unk_278FDE2E8;
    v7[4] = self;
    v8 = completionCopy;
    [(FMFHandle *)self correlationIdentifierForHandle:self withCompletion:v7];
  }
}

void __52__FMFHandle_idsCorrelationIdentifierWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 set_idsCorrelationIdentifierInternal:v4];
  (*(*(a1 + 40) + 16))();
}

- (id)recordId
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = +[FMFSession sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __21__FMFHandle_recordId__block_invoke;
  v11[3] = &unk_278FDE270;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [v4 getRecordIdForHandle:self completion:v11];

  v6 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = LogCategory_Daemon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_24A33F000, v7, OS_LOG_TYPE_DEFAULT, "timeOut recordId", v10, 2u);
    }
  }

  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __21__FMFHandle_recordId__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_semaphore_signal(v4);
  }
}

- (BOOL)isPhoneNumber
{
  decimalDigitCharacterSet = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  [decimalDigitCharacterSet addCharactersInString:@"+()-"];
  controlCharacterSet = [MEMORY[0x277CCA900] controlCharacterSet];
  [decimalDigitCharacterSet formUnionWithCharacterSet:controlCharacterSet];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [decimalDigitCharacterSet formUnionWithCharacterSet:whitespaceAndNewlineCharacterSet];

  identifier = [(FMFHandle *)self identifier];
  v7 = [identifier componentsSeparatedByCharactersInSet:decimalDigitCharacterSet];
  v8 = [v7 componentsJoinedByString:&stru_285D7AA10];

  LOBYTE(identifier) = [v8 length] == 0;
  return identifier;
}

- (id)sanitizePhoneNumber:(id)number
{
  decimalDigitCharacterSet = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  [decimalDigitCharacterSet addCharactersInString:@"+"];
  controlCharacterSet = [MEMORY[0x277CCA900] controlCharacterSet];
  [decimalDigitCharacterSet formUnionWithCharacterSet:controlCharacterSet];

  invertedSet = [decimalDigitCharacterSet invertedSet];
  identifier = [(FMFHandle *)self identifier];
  v8 = [identifier componentsSeparatedByCharactersInSet:invertedSet];
  v9 = [v8 componentsJoinedByString:&stru_285D7AA10];

  return v9;
}

- (void)correlationIdentifierForHandle:(id)handle withCompletion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  v8 = [(FMFHandle *)self IDSRecipientFromHandle:handleCopy];
  mEMORY[0x277D18728] = [MEMORY[0x277D18728] sharedInstance];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:{v8, 0}];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__1;
  v19[4] = __Block_byref_object_dispose__1;
  v20 = 0;
  v11 = MEMORY[0x277D85CD0];
  v12 = MEMORY[0x277D85CD0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__FMFHandle_correlationIdentifierForHandle_withCompletion___block_invoke;
  v15[3] = &unk_278FDE310;
  v13 = v8;
  v16 = v13;
  v18 = v19;
  v14 = completionCopy;
  v17 = v14;
  [mEMORY[0x277D18728] currentRemoteDevicesForDestinations:v10 service:@"com.apple.private.alloy.fmf" listenerID:@"com.apple.private.alloy.fmf" queue:v11 completionBlock:v15];

  _Block_object_dispose(v19, 8);
}

void __59__FMFHandle_correlationIdentifierForHandle_withCompletion___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:a1[4]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * v7) senderCorrelationIdentifier];
        v9 = *(a1[6] + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *(*(a1[6] + 8) + 40);
  (*(a1[5] + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (id)IDSRecipientFromHandle:(id)handle
{
  handleCopy = handle;
  isPhoneNumber = [(FMFHandle *)self isPhoneNumber];
  identifier = [handleCopy identifier];

  if (isPhoneNumber)
  {
    v7 = IDSCopyIDForPhoneNumber();
  }

  else
  {
    v7 = MEMORY[0x24C216530](identifier);
  }

  v8 = v7;

  return v8;
}

- (void)cachedPrettyName
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"FMFHandle.m" lineNumber:223 description:@"This method should run on Main thread"];
}

- (void)prettyNameWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMFHandle.m" lineNumber:229 description:@"This method should run on Main thread"];
}

@end