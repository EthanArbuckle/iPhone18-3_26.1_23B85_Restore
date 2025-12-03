@interface CKDPThrottlingConfigCriteria
- (BOOL)isEqual:(id)equal;
- (id)containerEnvironmentAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)databaseTypeAsString:(int)string;
- (id)description;
- (id)dictionaryRepresentation;
- (id)operationTypeAsString:(int)string;
- (int)StringAsContainerEnvironment:(id)environment;
- (int)StringAsDatabaseType:(id)type;
- (int)StringAsOperationType:(id)type;
- (int)containerEnvironment;
- (int)databaseType;
- (int)operationType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDatabaseType:(BOOL)type;
- (void)setHasOperationType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation CKDPThrottlingConfigCriteria

- (int)containerEnvironment
{
  if (*&self->_has)
  {
    return self->_containerEnvironment;
  }

  else
  {
    return 1;
  }
}

- (id)containerEnvironmentAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"production";
  }

  else if (string == 2)
  {
    v4 = @"sandbox";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  return v4;
}

- (int)StringAsContainerEnvironment:(id)environment
{
  environmentCopy = environment;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(environmentCopy, v4, @"production") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(environmentCopy, v5, @"sandbox"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (int)operationType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_operationType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasOperationType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)operationTypeAsString:(int)string
{
  if (string <= 301)
  {
    if (string <= 259)
    {
      switch(string)
      {
        case 200:
          v4 = @"zoneSaveType";

          break;
        case 201:
          v4 = @"zoneRetrieveType";

          break;
        case 202:
          v4 = @"zoneDeleteType";

          break;
        case 203:
          v4 = @"zoneRetrieveChangesType";

          break;
        case 204:
        case 205:
        case 207:
        case 208:
        case 209:
        case 215:
        case 222:
        case 223:
        case 224:
        case 225:
        case 226:
        case 227:
        case 228:
        case 229:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 236:
        case 237:
        case 238:
        case 239:
        case 241:
        case 242:
        case 245:
        case 246:
        case 247:
        case 248:
        case 249:
          goto LABEL_98;
        case 206:
          v4 = @"zoneRetrieveAncestors";

          break;
        case 210:
          v4 = @"recordSaveType";

          break;
        case 211:
          v4 = @"recordRetrieveType";

          break;
        case 212:
          v4 = @"recordRetrieveVersionsType";

          break;
        case 213:
          v4 = @"recordRetrieveChangesType";

          break;
        case 214:
          v4 = @"recordDeleteType";

          break;
        case 216:
          v4 = @"recordResolveTokenType";

          break;
        case 217:
          v4 = @"fetchArchivedRecordsType";

          break;
        case 218:
          v4 = @"recordMoveType";

          break;
        case 219:
          v4 = @"shareAccessType";

          break;
        case 220:
          v4 = @"queryRetrieveType";

          break;
        case 221:
          v4 = @"shareDeclineType";

          break;
        case 230:
          v4 = @"assetUploadTokenRetrieveType";

          break;
        case 240:
          v4 = @"containerDeleteType";

          break;
        case 243:
          v4 = @"userAvailableQuotaType";

          break;
        case 244:
          v4 = @"containerGetBundlesType";

          break;
        case 250:
          v4 = @"webAuthTokenRetrieveType";

          break;
        default:
          if (string)
          {
            goto LABEL_98;
          }

          v4 = @"noneType";

          break;
      }

      return v4;
    }

    if (string > 271)
    {
      switch(string)
      {
        case 272:
          v4 = @"zoneChildrenRetrieveType";

          return v4;
        case 300:
          v4 = @"subscriptionCreateType";

          return v4;
        case 301:
          v4 = @"subscriptionRetrieveType";

          return v4;
      }
    }

    else
    {
      switch(string)
      {
        case 260:
          v4 = @"dataRepairUpdateMissingAssetStatusType";

          return v4;
        case 270:
          v4 = @"addAnonymousShareType";

          return v4;
        case 271:
          v4 = @"removeAnonymousShareType";

          return v4;
      }
    }

LABEL_98:
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);

    return v4;
  }

  if (string <= 405)
  {
    if (string > 321)
    {
      if (string > 401)
      {
        if (string > 403)
        {
          if (string == 404)
          {
            v4 = @"userPrivacySettingsResetType";
          }

          else
          {
            v4 = @"userPrivacySettingsBatchLookup";
          }
        }

        else if (string == 402)
        {
          v4 = @"userPrivacySettingsRetrieveType";
        }

        else
        {
          v4 = @"userPrivacySettingsUpdateType";
        }

        return v4;
      }

      switch(string)
      {
        case 322:
          v4 = @"privateSearchDeleteType";

          return v4;
        case 400:
          v4 = @"userRetrieveType";

          return v4;
        case 401:
          v4 = @"userQueryType";

          return v4;
      }
    }

    else if (string <= 312)
    {
      switch(string)
      {
        case 302:
          v4 = @"subscriptionDeleteType";

          return v4;
        case 311:
          v4 = @"mergeableDeltaSaveType";

          return v4;
        case 312:
          v4 = @"mergeableDeltaMetadataRetrieveType";

          return v4;
      }
    }

    else
    {
      if (string > 319)
      {
        if (string == 320)
        {
          v4 = @"privateSearchSetType";
        }

        else
        {
          v4 = @"privateSearchGetType";
        }

        return v4;
      }

      if (string == 313)
      {
        v4 = @"mergeableDeltaReplaceType";

        return v4;
      }

      if (string == 314)
      {
        v4 = @"mergeableDeltaRetrieveType";

        return v4;
      }
    }

    goto LABEL_98;
  }

  if (string <= 799)
  {
    if (string <= 408)
    {
      if (string == 406)
      {
        v4 = @"sharePermissionSettingsUpdateType";
      }

      else if (string == 407)
      {
        v4 = @"adopterCapabilitiesSaveType";
      }

      else
      {
        v4 = @"adopterCapabilitiesCheckType";
      }

      return v4;
    }

    if (string > 502)
    {
      if (string == 503)
      {
        v4 = @"shareAcceptType";

        return v4;
      }

      if (string == 513)
      {
        v4 = @"shareVettingInitiateType";

        return v4;
      }
    }

    else
    {
      if (string == 409)
      {
        v4 = @"zoneUsageSaveType";

        return v4;
      }

      if (string == 410)
      {
        v4 = @"shareUsageSaveType";

        return v4;
      }
    }

    goto LABEL_98;
  }

  if (string <= 803)
  {
    if (string > 801)
    {
      if (string == 802)
      {
        v4 = @"pushBadgeType";
      }

      else
      {
        v4 = @"pushSyncType";
      }
    }

    else if (string == 800)
    {
      v4 = @"pushRegisterType";
    }

    else
    {
      v4 = @"pushUnregisterType";
    }

    return v4;
  }

  if (string > 900)
  {
    if (string == 901)
    {
      v4 = @"datarepairMarkAssetBrokenType";

      return v4;
    }

    if (string == 1101)
    {
      v4 = @"functionInvokeType";

      return v4;
    }

    goto LABEL_98;
  }

  if (string != 804)
  {
    if (string == 900)
    {
      v4 = @"archiveRecordsType";

      return v4;
    }

    goto LABEL_98;
  }

  v4 = @"pushReadType";

  return v4;
}

- (int)StringAsOperationType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"noneType"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"zoneSaveType"))
  {
    v6 = 200;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"zoneRetrieveType"))
  {
    v6 = 201;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v8, @"zoneDeleteType"))
  {
    v6 = 202;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v9, @"zoneRetrieveChangesType"))
  {
    v6 = 203;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v10, @"zoneRetrieveAncestors"))
  {
    v6 = 206;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v11, @"recordSaveType"))
  {
    v6 = 210;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v12, @"recordRetrieveType"))
  {
    v6 = 211;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v13, @"recordRetrieveVersionsType"))
  {
    v6 = 212;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v14, @"recordRetrieveChangesType"))
  {
    v6 = 213;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v15, @"recordDeleteType"))
  {
    v6 = 214;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v16, @"recordResolveTokenType"))
  {
    v6 = 216;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v17, @"fetchArchivedRecordsType"))
  {
    v6 = 217;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v18, @"recordMoveType"))
  {
    v6 = 218;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v19, @"shareAccessType"))
  {
    v6 = 219;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v20, @"queryRetrieveType"))
  {
    v6 = 220;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v21, @"shareDeclineType"))
  {
    v6 = 221;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v22, @"assetUploadTokenRetrieveType"))
  {
    v6 = 230;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v23, @"containerDeleteType"))
  {
    v6 = 240;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v24, @"userAvailableQuotaType"))
  {
    v6 = 243;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v25, @"containerGetBundlesType"))
  {
    v6 = 244;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v26, @"webAuthTokenRetrieveType"))
  {
    v6 = 250;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v27, @"dataRepairUpdateMissingAssetStatusType"))
  {
    v6 = 260;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v28, @"addAnonymousShareType"))
  {
    v6 = 270;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v29, @"removeAnonymousShareType"))
  {
    v6 = 271;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v30, @"zoneChildrenRetrieveType"))
  {
    v6 = 272;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v31, @"subscriptionCreateType"))
  {
    v6 = 300;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v32, @"subscriptionRetrieveType"))
  {
    v6 = 301;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v33, @"subscriptionDeleteType"))
  {
    v6 = 302;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v34, @"mergeableDeltaSaveType"))
  {
    v6 = 311;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v35, @"mergeableDeltaMetadataRetrieveType"))
  {
    v6 = 312;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v36, @"mergeableDeltaReplaceType"))
  {
    v6 = 313;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v37, @"mergeableDeltaRetrieveType"))
  {
    v6 = 314;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v38, @"privateSearchSetType"))
  {
    v6 = 320;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v39, @"privateSearchGetType"))
  {
    v6 = 321;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v40, @"privateSearchDeleteType"))
  {
    v6 = 322;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v41, @"userRetrieveType"))
  {
    v6 = 400;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v42, @"userQueryType"))
  {
    v6 = 401;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v43, @"userPrivacySettingsRetrieveType"))
  {
    v6 = 402;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v44, @"userPrivacySettingsUpdateType"))
  {
    v6 = 403;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v45, @"userPrivacySettingsResetType"))
  {
    v6 = 404;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v46, @"userPrivacySettingsBatchLookup"))
  {
    v6 = 405;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v47, @"sharePermissionSettingsUpdateType"))
  {
    v6 = 406;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v48, @"adopterCapabilitiesSaveType"))
  {
    v6 = 407;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v49, @"adopterCapabilitiesCheckType"))
  {
    v6 = 408;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v50, @"zoneUsageSaveType"))
  {
    v6 = 409;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v51, @"shareUsageSaveType"))
  {
    v6 = 410;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v52, @"shareAcceptType"))
  {
    v6 = 503;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v53, @"shareVettingInitiateType"))
  {
    v6 = 513;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v54, @"pushRegisterType"))
  {
    v6 = 800;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v55, @"pushUnregisterType"))
  {
    v6 = 801;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v56, @"pushBadgeType"))
  {
    v6 = 802;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v57, @"pushSyncType"))
  {
    v6 = 803;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v58, @"pushReadType"))
  {
    v6 = 804;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v59, @"archiveRecordsType"))
  {
    v6 = 900;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v60, @"datarepairMarkAssetBrokenType"))
  {
    v6 = 901;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v61, @"functionInvokeType"))
  {
    v6 = 1101;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)databaseType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_databaseType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasDatabaseType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)databaseTypeAsString:(int)string
{
  if ((string - 1) >= 4)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CD68[string - 1];
  }

  return v4;
}

- (int)StringAsDatabaseType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"privateDB"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"publicDB"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"sharedDB"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v8, @"orgDB"))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPThrottlingConfigCriteria;
  v4 = [(CKDPThrottlingConfigCriteria *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  containerName = self->_containerName;
  if (containerName)
  {
    objc_msgSend_setObject_forKey_(v4, v5, containerName, @"containerName");
  }

  has = self->_has;
  if (has)
  {
    containerEnvironment = self->_containerEnvironment;
    if (containerEnvironment == 1)
    {
      v10 = @"production";
      objc_msgSend_setObject_forKey_(v6, v5, @"production", @"containerEnvironment");
    }

    else if (containerEnvironment == 2)
    {
      v10 = @"sandbox";
      objc_msgSend_setObject_forKey_(v6, v5, @"sandbox", @"containerEnvironment");
    }

    else
    {
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_containerEnvironment);
      objc_msgSend_setObject_forKey_(v6, v11, v10, @"containerEnvironment");
    }

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  operationType = self->_operationType;
  if (operationType <= 301)
  {
    if (operationType > 259)
    {
      if (operationType > 271)
      {
        switch(operationType)
        {
          case 272:
            v13 = @"zoneChildrenRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"zoneChildrenRetrieveType", @"operationType");
            goto LABEL_117;
          case 300:
            v13 = @"subscriptionCreateType";
            objc_msgSend_setObject_forKey_(v6, v5, @"subscriptionCreateType", @"operationType");
            goto LABEL_117;
          case 301:
            v13 = @"subscriptionRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"subscriptionRetrieveType", @"operationType");
            goto LABEL_117;
        }
      }

      else
      {
        switch(operationType)
        {
          case 260:
            v13 = @"dataRepairUpdateMissingAssetStatusType";
            objc_msgSend_setObject_forKey_(v6, v5, @"dataRepairUpdateMissingAssetStatusType", @"operationType");
            goto LABEL_117;
          case 270:
            v13 = @"addAnonymousShareType";
            objc_msgSend_setObject_forKey_(v6, v5, @"addAnonymousShareType", @"operationType");
            goto LABEL_117;
          case 271:
            v13 = @"removeAnonymousShareType";
            objc_msgSend_setObject_forKey_(v6, v5, @"removeAnonymousShareType", @"operationType");
            goto LABEL_117;
        }
      }

      goto LABEL_76;
    }

    switch(operationType)
    {
      case 200:
        v13 = @"zoneSaveType";
        objc_msgSend_setObject_forKey_(v6, v5, @"zoneSaveType", @"operationType");
        break;
      case 201:
        v13 = @"zoneRetrieveType";
        objc_msgSend_setObject_forKey_(v6, v5, @"zoneRetrieveType", @"operationType");
        break;
      case 202:
        v13 = @"zoneDeleteType";
        objc_msgSend_setObject_forKey_(v6, v5, @"zoneDeleteType", @"operationType");
        break;
      case 203:
        v13 = @"zoneRetrieveChangesType";
        objc_msgSend_setObject_forKey_(v6, v5, @"zoneRetrieveChangesType", @"operationType");
        break;
      case 204:
      case 205:
      case 207:
      case 208:
      case 209:
      case 215:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 238:
      case 239:
      case 241:
      case 242:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
        goto LABEL_76;
      case 206:
        v13 = @"zoneRetrieveAncestors";
        objc_msgSend_setObject_forKey_(v6, v5, @"zoneRetrieveAncestors", @"operationType");
        break;
      case 210:
        v13 = @"recordSaveType";
        objc_msgSend_setObject_forKey_(v6, v5, @"recordSaveType", @"operationType");
        break;
      case 211:
        v13 = @"recordRetrieveType";
        objc_msgSend_setObject_forKey_(v6, v5, @"recordRetrieveType", @"operationType");
        break;
      case 212:
        v13 = @"recordRetrieveVersionsType";
        objc_msgSend_setObject_forKey_(v6, v5, @"recordRetrieveVersionsType", @"operationType");
        break;
      case 213:
        v13 = @"recordRetrieveChangesType";
        objc_msgSend_setObject_forKey_(v6, v5, @"recordRetrieveChangesType", @"operationType");
        break;
      case 214:
        v13 = @"recordDeleteType";
        objc_msgSend_setObject_forKey_(v6, v5, @"recordDeleteType", @"operationType");
        break;
      case 216:
        v13 = @"recordResolveTokenType";
        objc_msgSend_setObject_forKey_(v6, v5, @"recordResolveTokenType", @"operationType");
        break;
      case 217:
        v13 = @"fetchArchivedRecordsType";
        objc_msgSend_setObject_forKey_(v6, v5, @"fetchArchivedRecordsType", @"operationType");
        break;
      case 218:
        v13 = @"recordMoveType";
        objc_msgSend_setObject_forKey_(v6, v5, @"recordMoveType", @"operationType");
        break;
      case 219:
        v13 = @"shareAccessType";
        objc_msgSend_setObject_forKey_(v6, v5, @"shareAccessType", @"operationType");
        break;
      case 220:
        v13 = @"queryRetrieveType";
        objc_msgSend_setObject_forKey_(v6, v5, @"queryRetrieveType", @"operationType");
        break;
      case 221:
        v13 = @"shareDeclineType";
        objc_msgSend_setObject_forKey_(v6, v5, @"shareDeclineType", @"operationType");
        break;
      case 230:
        v13 = @"assetUploadTokenRetrieveType";
        objc_msgSend_setObject_forKey_(v6, v5, @"assetUploadTokenRetrieveType", @"operationType");
        break;
      case 240:
        v13 = @"containerDeleteType";
        objc_msgSend_setObject_forKey_(v6, v5, @"containerDeleteType", @"operationType");
        break;
      case 243:
        v13 = @"userAvailableQuotaType";
        objc_msgSend_setObject_forKey_(v6, v5, @"userAvailableQuotaType", @"operationType");
        break;
      case 244:
        v13 = @"containerGetBundlesType";
        objc_msgSend_setObject_forKey_(v6, v5, @"containerGetBundlesType", @"operationType");
        break;
      case 250:
        v13 = @"webAuthTokenRetrieveType";
        objc_msgSend_setObject_forKey_(v6, v5, @"webAuthTokenRetrieveType", @"operationType");
        break;
      default:
        if (operationType)
        {
          goto LABEL_76;
        }

        v13 = @"noneType";
        objc_msgSend_setObject_forKey_(v6, v5, @"noneType", @"operationType");
        break;
    }
  }

  else if (operationType <= 405)
  {
    if (operationType > 321)
    {
      if (operationType <= 401)
      {
        switch(operationType)
        {
          case 322:
            v13 = @"privateSearchDeleteType";
            objc_msgSend_setObject_forKey_(v6, v5, @"privateSearchDeleteType", @"operationType");
            goto LABEL_117;
          case 400:
            v13 = @"userRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"userRetrieveType", @"operationType");
            goto LABEL_117;
          case 401:
            v13 = @"userQueryType";
            objc_msgSend_setObject_forKey_(v6, v5, @"userQueryType", @"operationType");
            goto LABEL_117;
        }

        goto LABEL_76;
      }

      if (operationType > 403)
      {
        if (operationType == 404)
        {
          v13 = @"userPrivacySettingsResetType";
          objc_msgSend_setObject_forKey_(v6, v5, @"userPrivacySettingsResetType", @"operationType");
        }

        else
        {
          v13 = @"userPrivacySettingsBatchLookup";
          objc_msgSend_setObject_forKey_(v6, v5, @"userPrivacySettingsBatchLookup", @"operationType");
        }
      }

      else if (operationType == 402)
      {
        v13 = @"userPrivacySettingsRetrieveType";
        objc_msgSend_setObject_forKey_(v6, v5, @"userPrivacySettingsRetrieveType", @"operationType");
      }

      else
      {
        v13 = @"userPrivacySettingsUpdateType";
        objc_msgSend_setObject_forKey_(v6, v5, @"userPrivacySettingsUpdateType", @"operationType");
      }
    }

    else
    {
      if (operationType <= 312)
      {
        switch(operationType)
        {
          case 302:
            v13 = @"subscriptionDeleteType";
            objc_msgSend_setObject_forKey_(v6, v5, @"subscriptionDeleteType", @"operationType");
            goto LABEL_117;
          case 311:
            v13 = @"mergeableDeltaSaveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"mergeableDeltaSaveType", @"operationType");
            goto LABEL_117;
          case 312:
            v13 = @"mergeableDeltaMetadataRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"mergeableDeltaMetadataRetrieveType", @"operationType");
            goto LABEL_117;
        }

        goto LABEL_76;
      }

      if (operationType <= 319)
      {
        if (operationType == 313)
        {
          v13 = @"mergeableDeltaReplaceType";
          objc_msgSend_setObject_forKey_(v6, v5, @"mergeableDeltaReplaceType", @"operationType");
          goto LABEL_117;
        }

        if (operationType == 314)
        {
          v13 = @"mergeableDeltaRetrieveType";
          objc_msgSend_setObject_forKey_(v6, v5, @"mergeableDeltaRetrieveType", @"operationType");
          goto LABEL_117;
        }

        goto LABEL_76;
      }

      if (operationType == 320)
      {
        v13 = @"privateSearchSetType";
        objc_msgSend_setObject_forKey_(v6, v5, @"privateSearchSetType", @"operationType");
      }

      else
      {
        v13 = @"privateSearchGetType";
        objc_msgSend_setObject_forKey_(v6, v5, @"privateSearchGetType", @"operationType");
      }
    }
  }

  else
  {
    if (operationType > 799)
    {
      if (operationType <= 803)
      {
        if (operationType > 801)
        {
          if (operationType == 802)
          {
            v13 = @"pushBadgeType";
            objc_msgSend_setObject_forKey_(v6, v5, @"pushBadgeType", @"operationType");
          }

          else
          {
            v13 = @"pushSyncType";
            objc_msgSend_setObject_forKey_(v6, v5, @"pushSyncType", @"operationType");
          }
        }

        else if (operationType == 800)
        {
          v13 = @"pushRegisterType";
          objc_msgSend_setObject_forKey_(v6, v5, @"pushRegisterType", @"operationType");
        }

        else
        {
          v13 = @"pushUnregisterType";
          objc_msgSend_setObject_forKey_(v6, v5, @"pushUnregisterType", @"operationType");
        }

        goto LABEL_117;
      }

      if (operationType > 900)
      {
        if (operationType == 901)
        {
          v13 = @"datarepairMarkAssetBrokenType";
          objc_msgSend_setObject_forKey_(v6, v5, @"datarepairMarkAssetBrokenType", @"operationType");
          goto LABEL_117;
        }

        if (operationType == 1101)
        {
          v13 = @"functionInvokeType";
          objc_msgSend_setObject_forKey_(v6, v5, @"functionInvokeType", @"operationType");
          goto LABEL_117;
        }
      }

      else
      {
        if (operationType == 804)
        {
          v13 = @"pushReadType";
          objc_msgSend_setObject_forKey_(v6, v5, @"pushReadType", @"operationType");
          goto LABEL_117;
        }

        if (operationType == 900)
        {
          v13 = @"archiveRecordsType";
          objc_msgSend_setObject_forKey_(v6, v5, @"archiveRecordsType", @"operationType");
          goto LABEL_117;
        }
      }

LABEL_76:
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_operationType);
      objc_msgSend_setObject_forKey_(v6, v14, v13, @"operationType");
      goto LABEL_117;
    }

    if (operationType > 408)
    {
      if (operationType > 502)
      {
        if (operationType == 503)
        {
          v13 = @"shareAcceptType";
          objc_msgSend_setObject_forKey_(v6, v5, @"shareAcceptType", @"operationType");
          goto LABEL_117;
        }

        if (operationType == 513)
        {
          v13 = @"shareVettingInitiateType";
          objc_msgSend_setObject_forKey_(v6, v5, @"shareVettingInitiateType", @"operationType");
          goto LABEL_117;
        }
      }

      else
      {
        if (operationType == 409)
        {
          v13 = @"zoneUsageSaveType";
          objc_msgSend_setObject_forKey_(v6, v5, @"zoneUsageSaveType", @"operationType");
          goto LABEL_117;
        }

        if (operationType == 410)
        {
          v13 = @"shareUsageSaveType";
          objc_msgSend_setObject_forKey_(v6, v5, @"shareUsageSaveType", @"operationType");
          goto LABEL_117;
        }
      }

      goto LABEL_76;
    }

    if (operationType == 406)
    {
      v13 = @"sharePermissionSettingsUpdateType";
      objc_msgSend_setObject_forKey_(v6, v5, @"sharePermissionSettingsUpdateType", @"operationType");
    }

    else if (operationType == 407)
    {
      v13 = @"adopterCapabilitiesSaveType";
      objc_msgSend_setObject_forKey_(v6, v5, @"adopterCapabilitiesSaveType", @"operationType");
    }

    else
    {
      v13 = @"adopterCapabilitiesCheckType";
      objc_msgSend_setObject_forKey_(v6, v5, @"adopterCapabilitiesCheckType", @"operationType");
    }
  }

LABEL_117:

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_122;
  }

LABEL_118:
  v15 = self->_databaseType - 1;
  if (v15 >= 4)
  {
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_databaseType);
  }

  else
  {
    v16 = off_27854CD68[v15];
  }

  objc_msgSend_setObject_forKey_(v6, v5, v16, @"databaseType");

LABEL_122:
  zoneName = self->_zoneName;
  if (zoneName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, zoneName, @"zoneName");
  }

  operationGroupName = self->_operationGroupName;
  if (operationGroupName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, operationGroupName, @"operationGroupName");
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    objc_msgSend_setObject_forKey_(v6, v5, bundleID, @"bundleID");
  }

  invernessServiceName = self->_invernessServiceName;
  if (invernessServiceName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, invernessServiceName, @"invernessServiceName");
  }

  invernessFunctionName = self->_invernessFunctionName;
  if (invernessFunctionName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, invernessFunctionName, @"invernessFunctionName");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_containerName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    containerEnvironment = self->_containerEnvironment;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  operationType = self->_operationType;
  PBDataWriterWriteInt32Field();
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    databaseType = self->_databaseType;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

LABEL_7:
  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_operationGroupName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_invernessServiceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_invernessFunctionName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  containerName = self->_containerName;
  v13 = toCopy;
  if (containerName)
  {
    objc_msgSend_setContainerName_(toCopy, v5, containerName);
    toCopy = v13;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 4) = self->_containerEnvironment;
    *(toCopy + 80) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 16) = self->_operationType;
  *(toCopy + 80) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(toCopy + 8) = self->_databaseType;
    *(toCopy + 80) |= 2u;
  }

LABEL_7:
  zoneName = self->_zoneName;
  if (zoneName)
  {
    objc_msgSend_setZoneName_(v13, v5, zoneName);
    toCopy = v13;
  }

  operationGroupName = self->_operationGroupName;
  if (operationGroupName)
  {
    objc_msgSend_setOperationGroupName_(v13, v5, operationGroupName);
    toCopy = v13;
  }

  invernessServiceName = self->_invernessServiceName;
  if (invernessServiceName)
  {
    objc_msgSend_setInvernessServiceName_(v13, v5, invernessServiceName);
    toCopy = v13;
  }

  invernessFunctionName = self->_invernessFunctionName;
  if (invernessFunctionName)
  {
    objc_msgSend_setInvernessFunctionName_(v13, v5, invernessFunctionName);
    toCopy = v13;
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    objc_msgSend_setBundleID_(v13, v5, bundleID);
    toCopy = v13;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_containerName, v11, zone);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v10 + 64) = self->_operationType;
    *(v10 + 80) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v10 + 16) = self->_containerEnvironment;
  *(v10 + 80) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v10 + 32) = self->_databaseType;
    *(v10 + 80) |= 2u;
  }

LABEL_5:
  v16 = objc_msgSend_copyWithZone_(self->_zoneName, v14, zone);
  v17 = *(v10 + 72);
  *(v10 + 72) = v16;

  v19 = objc_msgSend_copyWithZone_(self->_operationGroupName, v18, zone);
  v20 = *(v10 + 56);
  *(v10 + 56) = v19;

  v22 = objc_msgSend_copyWithZone_(self->_invernessServiceName, v21, zone);
  v23 = *(v10 + 48);
  *(v10 + 48) = v22;

  v25 = objc_msgSend_copyWithZone_(self->_invernessFunctionName, v24, zone);
  v26 = *(v10 + 40);
  *(v10 + 40) = v25;

  v28 = objc_msgSend_copyWithZone_(self->_bundleID, v27, zone);
  v29 = *(v10 + 8);
  *(v10 + 8) = v28;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_29;
  }

  containerName = self->_containerName;
  v9 = equalCopy[3];
  if (containerName | v9)
  {
    if (!objc_msgSend_isEqual_(containerName, v7, v9))
    {
      goto LABEL_29;
    }
  }

  v10 = *(equalCopy + 80);
  if (*&self->_has)
  {
    if ((equalCopy[10] & 1) == 0 || self->_containerEnvironment != *(equalCopy + 4))
    {
      goto LABEL_29;
    }
  }

  else if (equalCopy[10])
  {
LABEL_29:
    isEqual = 0;
    goto LABEL_30;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[10] & 4) == 0 || self->_operationType != *(equalCopy + 16))
    {
      goto LABEL_29;
    }
  }

  else if ((equalCopy[10] & 4) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[10] & 2) == 0 || self->_databaseType != *(equalCopy + 8))
    {
      goto LABEL_29;
    }
  }

  else if ((equalCopy[10] & 2) != 0)
  {
    goto LABEL_29;
  }

  zoneName = self->_zoneName;
  v12 = equalCopy[9];
  if (zoneName | v12 && !objc_msgSend_isEqual_(zoneName, v7, v12))
  {
    goto LABEL_29;
  }

  operationGroupName = self->_operationGroupName;
  v14 = equalCopy[7];
  if (operationGroupName | v14)
  {
    if (!objc_msgSend_isEqual_(operationGroupName, v7, v14))
    {
      goto LABEL_29;
    }
  }

  invernessServiceName = self->_invernessServiceName;
  v16 = equalCopy[6];
  if (invernessServiceName | v16)
  {
    if (!objc_msgSend_isEqual_(invernessServiceName, v7, v16))
    {
      goto LABEL_29;
    }
  }

  invernessFunctionName = self->_invernessFunctionName;
  v18 = equalCopy[5];
  if (invernessFunctionName | v18)
  {
    if (!objc_msgSend_isEqual_(invernessFunctionName, v7, v18))
    {
      goto LABEL_29;
    }
  }

  bundleID = self->_bundleID;
  v20 = equalCopy[1];
  if (bundleID | v20)
  {
    isEqual = objc_msgSend_isEqual_(bundleID, v7, v20);
  }

  else
  {
    isEqual = 1;
  }

LABEL_30:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_containerName, a2, v2);
  if ((*&self->_has & 1) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = 2654435761 * self->_containerEnvironment;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = 2654435761 * self->_operationType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = 2654435761 * self->_databaseType;
LABEL_8:
  v10 = v7 ^ v4 ^ v8 ^ v9 ^ objc_msgSend_hash(self->_zoneName, v5, v6);
  v13 = objc_msgSend_hash(self->_operationGroupName, v11, v12);
  v16 = v13 ^ objc_msgSend_hash(self->_invernessServiceName, v14, v15);
  v19 = v10 ^ v16 ^ objc_msgSend_hash(self->_invernessFunctionName, v17, v18);
  return v19 ^ objc_msgSend_hash(self->_bundleID, v20, v21);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = *(fromCopy + 3);
  v13 = fromCopy;
  if (v6)
  {
    objc_msgSend_setContainerName_(self, v5, v6);
    fromCopy = v13;
  }

  v7 = *(fromCopy + 80);
  if (v7)
  {
    self->_containerEnvironment = *(fromCopy + 4);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 80);
    if ((v7 & 4) == 0)
    {
LABEL_5:
      if ((v7 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 80) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_operationType = *(fromCopy + 16);
  *&self->_has |= 4u;
  if ((*(fromCopy + 80) & 2) != 0)
  {
LABEL_6:
    self->_databaseType = *(fromCopy + 8);
    *&self->_has |= 2u;
  }

LABEL_7:
  v8 = *(fromCopy + 9);
  if (v8)
  {
    objc_msgSend_setZoneName_(self, v5, v8);
    fromCopy = v13;
  }

  v9 = *(fromCopy + 7);
  if (v9)
  {
    objc_msgSend_setOperationGroupName_(self, v5, v9);
    fromCopy = v13;
  }

  v10 = *(fromCopy + 6);
  if (v10)
  {
    objc_msgSend_setInvernessServiceName_(self, v5, v10);
    fromCopy = v13;
  }

  v11 = *(fromCopy + 5);
  if (v11)
  {
    objc_msgSend_setInvernessFunctionName_(self, v5, v11);
    fromCopy = v13;
  }

  v12 = *(fromCopy + 1);
  if (v12)
  {
    objc_msgSend_setBundleID_(self, v5, v12);
    fromCopy = v13;
  }
}

@end