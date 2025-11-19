@interface CKDPOperation
- (BOOL)isEqual:(id)a3;
- (id)_typeCKLogValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)a3;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLast:(BOOL)a3;
- (void)setHasSynchronousMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPOperation

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (id)_typeCKLogValue
{
  v3 = objc_msgSend_type(self, a2, v2);
  if (v3 <= 301)
  {
    if (v3 > 259)
    {
      if (v3 > 271)
      {
        switch(v3)
        {
          case 0x110:
            v6 = @"zoneChildrenRetrieveType";
            v7 = objc_msgSend_length(@"zoneChildrenRetrieveType", v4, v5);
            goto LABEL_105;
          case 0x12C:
            v6 = @"subscriptionCreateType";
            v7 = objc_msgSend_length(@"subscriptionCreateType", v4, v5);
            goto LABEL_105;
          case 0x12D:
            v6 = @"subscriptionRetrieveType";
            v7 = objc_msgSend_length(@"subscriptionRetrieveType", v4, v5);
            goto LABEL_105;
        }
      }

      else
      {
        switch(v3)
        {
          case 0x104:
            v6 = @"dataRepairUpdateMissingAssetStatusType";
            v7 = objc_msgSend_length(@"dataRepairUpdateMissingAssetStatusType", v4, v5);
            goto LABEL_105;
          case 0x10E:
            v6 = @"addAnonymousShareType";
            v7 = objc_msgSend_length(@"addAnonymousShareType", v4, v5);
            goto LABEL_105;
          case 0x10F:
            v6 = @"removeAnonymousShareType";
            v7 = objc_msgSend_length(@"removeAnonymousShareType", v4, v5);
            goto LABEL_105;
        }
      }

      goto LABEL_64;
    }

    switch(v3)
    {
      case 200:
        v6 = @"zoneSaveType";
        v7 = objc_msgSend_length(@"zoneSaveType", v4, v5);
        break;
      case 201:
        v6 = @"zoneRetrieveType";
        v7 = objc_msgSend_length(@"zoneRetrieveType", v4, v5);
        break;
      case 202:
        v6 = @"zoneDeleteType";
        v7 = objc_msgSend_length(@"zoneDeleteType", v4, v5);
        break;
      case 203:
        v6 = @"zoneRetrieveChangesType";
        v7 = objc_msgSend_length(@"zoneRetrieveChangesType", v4, v5);
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
        goto LABEL_64;
      case 206:
        v6 = @"zoneRetrieveAncestors";
        v7 = objc_msgSend_length(@"zoneRetrieveAncestors", v4, v5);
        break;
      case 210:
        v6 = @"recordSaveType";
        v7 = objc_msgSend_length(@"recordSaveType", v4, v5);
        break;
      case 211:
        v6 = @"recordRetrieveType";
        v7 = objc_msgSend_length(@"recordRetrieveType", v4, v5);
        break;
      case 212:
        v6 = @"recordRetrieveVersionsType";
        v7 = objc_msgSend_length(@"recordRetrieveVersionsType", v4, v5);
        break;
      case 213:
        v6 = @"recordRetrieveChangesType";
        v7 = objc_msgSend_length(@"recordRetrieveChangesType", v4, v5);
        break;
      case 214:
        v6 = @"recordDeleteType";
        v7 = objc_msgSend_length(@"recordDeleteType", v4, v5);
        break;
      case 216:
        v6 = @"recordResolveTokenType";
        v7 = objc_msgSend_length(@"recordResolveTokenType", v4, v5);
        break;
      case 217:
        v6 = @"fetchArchivedRecordsType";
        v7 = objc_msgSend_length(@"fetchArchivedRecordsType", v4, v5);
        break;
      case 218:
        v6 = @"recordMoveType";
        v7 = objc_msgSend_length(@"recordMoveType", v4, v5);
        break;
      case 219:
        v6 = @"shareAccessType";
        v7 = objc_msgSend_length(@"shareAccessType", v4, v5);
        break;
      case 220:
        v6 = @"queryRetrieveType";
        v7 = objc_msgSend_length(@"queryRetrieveType", v4, v5);
        break;
      case 221:
        v6 = @"shareDeclineType";
        v7 = objc_msgSend_length(@"shareDeclineType", v4, v5);
        break;
      case 230:
        v6 = @"assetUploadTokenRetrieveType";
        v7 = objc_msgSend_length(@"assetUploadTokenRetrieveType", v4, v5);
        break;
      case 240:
        v6 = @"containerDeleteType";
        v7 = objc_msgSend_length(@"containerDeleteType", v4, v5);
        break;
      case 243:
        v6 = @"userAvailableQuotaType";
        v7 = objc_msgSend_length(@"userAvailableQuotaType", v4, v5);
        break;
      case 244:
        v6 = @"containerGetBundlesType";
        v7 = objc_msgSend_length(@"containerGetBundlesType", v4, v5);
        break;
      case 250:
        v6 = @"webAuthTokenRetrieveType";
        v7 = objc_msgSend_length(@"webAuthTokenRetrieveType", v4, v5);
        break;
      default:
        if (v3)
        {
          goto LABEL_64;
        }

        v6 = @"noneType";
        v7 = objc_msgSend_length(@"noneType", v4, v5);
        break;
    }
  }

  else if (v3 <= 405)
  {
    if (v3 > 321)
    {
      if (v3 <= 401)
      {
        switch(v3)
        {
          case 0x142:
            v6 = @"privateSearchDeleteType";
            v7 = objc_msgSend_length(@"privateSearchDeleteType", v4, v5);
            goto LABEL_105;
          case 0x190:
            v6 = @"userRetrieveType";
            v7 = objc_msgSend_length(@"userRetrieveType", v4, v5);
            goto LABEL_105;
          case 0x191:
            v6 = @"userQueryType";
            v7 = objc_msgSend_length(@"userQueryType", v4, v5);
            goto LABEL_105;
        }

        goto LABEL_64;
      }

      if (v3 > 403)
      {
        if (v3 == 404)
        {
          v6 = @"userPrivacySettingsResetType";
          v7 = objc_msgSend_length(@"userPrivacySettingsResetType", v4, v5);
        }

        else
        {
          v6 = @"userPrivacySettingsBatchLookup";
          v7 = objc_msgSend_length(@"userPrivacySettingsBatchLookup", v4, v5);
        }
      }

      else if (v3 == 402)
      {
        v6 = @"userPrivacySettingsRetrieveType";
        v7 = objc_msgSend_length(@"userPrivacySettingsRetrieveType", v4, v5);
      }

      else
      {
        v6 = @"userPrivacySettingsUpdateType";
        v7 = objc_msgSend_length(@"userPrivacySettingsUpdateType", v4, v5);
      }
    }

    else
    {
      if (v3 <= 312)
      {
        switch(v3)
        {
          case 0x12E:
            v6 = @"subscriptionDeleteType";
            v7 = objc_msgSend_length(@"subscriptionDeleteType", v4, v5);
            goto LABEL_105;
          case 0x137:
            v6 = @"mergeableDeltaSaveType";
            v7 = objc_msgSend_length(@"mergeableDeltaSaveType", v4, v5);
            goto LABEL_105;
          case 0x138:
            v6 = @"mergeableDeltaMetadataRetrieveType";
            v7 = objc_msgSend_length(@"mergeableDeltaMetadataRetrieveType", v4, v5);
            goto LABEL_105;
        }

        goto LABEL_64;
      }

      if (v3 <= 319)
      {
        if (v3 == 313)
        {
          v6 = @"mergeableDeltaReplaceType";
          v7 = objc_msgSend_length(@"mergeableDeltaReplaceType", v4, v5);
          goto LABEL_105;
        }

        if (v3 == 314)
        {
          v6 = @"mergeableDeltaRetrieveType";
          v7 = objc_msgSend_length(@"mergeableDeltaRetrieveType", v4, v5);
          goto LABEL_105;
        }

        goto LABEL_64;
      }

      if (v3 == 320)
      {
        v6 = @"privateSearchSetType";
        v7 = objc_msgSend_length(@"privateSearchSetType", v4, v5);
      }

      else
      {
        v6 = @"privateSearchGetType";
        v7 = objc_msgSend_length(@"privateSearchGetType", v4, v5);
      }
    }
  }

  else
  {
    if (v3 > 799)
    {
      if (v3 <= 803)
      {
        if (v3 > 801)
        {
          if (v3 == 802)
          {
            v6 = @"pushBadgeType";
            v7 = objc_msgSend_length(@"pushBadgeType", v4, v5);
          }

          else
          {
            v6 = @"pushSyncType";
            v7 = objc_msgSend_length(@"pushSyncType", v4, v5);
          }
        }

        else if (v3 == 800)
        {
          v6 = @"pushRegisterType";
          v7 = objc_msgSend_length(@"pushRegisterType", v4, v5);
        }

        else
        {
          v6 = @"pushUnregisterType";
          v7 = objc_msgSend_length(@"pushUnregisterType", v4, v5);
        }

        goto LABEL_105;
      }

      if (v3 > 900)
      {
        if (v3 == 901)
        {
          v6 = @"datarepairMarkAssetBrokenType";
          v7 = objc_msgSend_length(@"datarepairMarkAssetBrokenType", v4, v5);
          goto LABEL_105;
        }

        if (v3 == 1101)
        {
          v6 = @"functionInvokeType";
          v7 = objc_msgSend_length(@"functionInvokeType", v4, v5);
          goto LABEL_105;
        }
      }

      else
      {
        if (v3 == 804)
        {
          v6 = @"pushReadType";
          v7 = objc_msgSend_length(@"pushReadType", v4, v5);
          goto LABEL_105;
        }

        if (v3 == 900)
        {
          v6 = @"archiveRecordsType";
          v7 = objc_msgSend_length(@"archiveRecordsType", v4, v5);
          goto LABEL_105;
        }
      }

LABEL_64:
      v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", v3);
      v7 = objc_msgSend_length(v6, v9, v10);
      goto LABEL_105;
    }

    if (v3 > 408)
    {
      if (v3 > 502)
      {
        if (v3 == 503)
        {
          v6 = @"shareAcceptType";
          v7 = objc_msgSend_length(@"shareAcceptType", v4, v5);
          goto LABEL_105;
        }

        if (v3 == 513)
        {
          v6 = @"shareVettingInitiateType";
          v7 = objc_msgSend_length(@"shareVettingInitiateType", v4, v5);
          goto LABEL_105;
        }
      }

      else
      {
        if (v3 == 409)
        {
          v6 = @"zoneUsageSaveType";
          v7 = objc_msgSend_length(@"zoneUsageSaveType", v4, v5);
          goto LABEL_105;
        }

        if (v3 == 410)
        {
          v6 = @"shareUsageSaveType";
          v7 = objc_msgSend_length(@"shareUsageSaveType", v4, v5);
          goto LABEL_105;
        }
      }

      goto LABEL_64;
    }

    if (v3 == 406)
    {
      v6 = @"sharePermissionSettingsUpdateType";
      v7 = objc_msgSend_length(@"sharePermissionSettingsUpdateType", v4, v5);
    }

    else if (v3 == 407)
    {
      v6 = @"adopterCapabilitiesSaveType";
      v7 = objc_msgSend_length(@"adopterCapabilitiesSaveType", v4, v5);
    }

    else
    {
      v6 = @"adopterCapabilitiesCheckType";
      v7 = objc_msgSend_length(@"adopterCapabilitiesCheckType", v4, v5);
    }
  }

LABEL_105:
  v11 = objc_msgSend_substringToIndex_(v6, v8, v7 - 4);

  return v11;
}

- (id)typeAsString:(int)a3
{
  if (a3 <= 301)
  {
    if (a3 <= 259)
    {
      switch(a3)
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
          if (a3)
          {
            goto LABEL_98;
          }

          v4 = @"noneType";

          break;
      }

      return v4;
    }

    if (a3 > 271)
    {
      switch(a3)
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
      switch(a3)
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
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);

    return v4;
  }

  if (a3 <= 405)
  {
    if (a3 > 321)
    {
      if (a3 > 401)
      {
        if (a3 > 403)
        {
          if (a3 == 404)
          {
            v4 = @"userPrivacySettingsResetType";
          }

          else
          {
            v4 = @"userPrivacySettingsBatchLookup";
          }
        }

        else if (a3 == 402)
        {
          v4 = @"userPrivacySettingsRetrieveType";
        }

        else
        {
          v4 = @"userPrivacySettingsUpdateType";
        }

        return v4;
      }

      switch(a3)
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

    else if (a3 <= 312)
    {
      switch(a3)
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
      if (a3 > 319)
      {
        if (a3 == 320)
        {
          v4 = @"privateSearchSetType";
        }

        else
        {
          v4 = @"privateSearchGetType";
        }

        return v4;
      }

      if (a3 == 313)
      {
        v4 = @"mergeableDeltaReplaceType";

        return v4;
      }

      if (a3 == 314)
      {
        v4 = @"mergeableDeltaRetrieveType";

        return v4;
      }
    }

    goto LABEL_98;
  }

  if (a3 <= 799)
  {
    if (a3 <= 408)
    {
      if (a3 == 406)
      {
        v4 = @"sharePermissionSettingsUpdateType";
      }

      else if (a3 == 407)
      {
        v4 = @"adopterCapabilitiesSaveType";
      }

      else
      {
        v4 = @"adopterCapabilitiesCheckType";
      }

      return v4;
    }

    if (a3 > 502)
    {
      if (a3 == 503)
      {
        v4 = @"shareAcceptType";

        return v4;
      }

      if (a3 == 513)
      {
        v4 = @"shareVettingInitiateType";

        return v4;
      }
    }

    else
    {
      if (a3 == 409)
      {
        v4 = @"zoneUsageSaveType";

        return v4;
      }

      if (a3 == 410)
      {
        v4 = @"shareUsageSaveType";

        return v4;
      }
    }

    goto LABEL_98;
  }

  if (a3 <= 803)
  {
    if (a3 > 801)
    {
      if (a3 == 802)
      {
        v4 = @"pushBadgeType";
      }

      else
      {
        v4 = @"pushSyncType";
      }
    }

    else if (a3 == 800)
    {
      v4 = @"pushRegisterType";
    }

    else
    {
      v4 = @"pushUnregisterType";
    }

    return v4;
  }

  if (a3 > 900)
  {
    if (a3 == 901)
    {
      v4 = @"datarepairMarkAssetBrokenType";

      return v4;
    }

    if (a3 == 1101)
    {
      v4 = @"functionInvokeType";

      return v4;
    }

    goto LABEL_98;
  }

  if (a3 != 804)
  {
    if (a3 == 900)
    {
      v4 = @"archiveRecordsType";

      return v4;
    }

    goto LABEL_98;
  }

  v4 = @"pushReadType";

  return v4;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"noneType"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"zoneSaveType"))
  {
    v6 = 200;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"zoneRetrieveType"))
  {
    v6 = 201;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"zoneDeleteType"))
  {
    v6 = 202;
  }

  else if (objc_msgSend_isEqualToString_(v3, v9, @"zoneRetrieveChangesType"))
  {
    v6 = 203;
  }

  else if (objc_msgSend_isEqualToString_(v3, v10, @"zoneRetrieveAncestors"))
  {
    v6 = 206;
  }

  else if (objc_msgSend_isEqualToString_(v3, v11, @"recordSaveType"))
  {
    v6 = 210;
  }

  else if (objc_msgSend_isEqualToString_(v3, v12, @"recordRetrieveType"))
  {
    v6 = 211;
  }

  else if (objc_msgSend_isEqualToString_(v3, v13, @"recordRetrieveVersionsType"))
  {
    v6 = 212;
  }

  else if (objc_msgSend_isEqualToString_(v3, v14, @"recordRetrieveChangesType"))
  {
    v6 = 213;
  }

  else if (objc_msgSend_isEqualToString_(v3, v15, @"recordDeleteType"))
  {
    v6 = 214;
  }

  else if (objc_msgSend_isEqualToString_(v3, v16, @"recordResolveTokenType"))
  {
    v6 = 216;
  }

  else if (objc_msgSend_isEqualToString_(v3, v17, @"fetchArchivedRecordsType"))
  {
    v6 = 217;
  }

  else if (objc_msgSend_isEqualToString_(v3, v18, @"recordMoveType"))
  {
    v6 = 218;
  }

  else if (objc_msgSend_isEqualToString_(v3, v19, @"shareAccessType"))
  {
    v6 = 219;
  }

  else if (objc_msgSend_isEqualToString_(v3, v20, @"queryRetrieveType"))
  {
    v6 = 220;
  }

  else if (objc_msgSend_isEqualToString_(v3, v21, @"shareDeclineType"))
  {
    v6 = 221;
  }

  else if (objc_msgSend_isEqualToString_(v3, v22, @"assetUploadTokenRetrieveType"))
  {
    v6 = 230;
  }

  else if (objc_msgSend_isEqualToString_(v3, v23, @"containerDeleteType"))
  {
    v6 = 240;
  }

  else if (objc_msgSend_isEqualToString_(v3, v24, @"userAvailableQuotaType"))
  {
    v6 = 243;
  }

  else if (objc_msgSend_isEqualToString_(v3, v25, @"containerGetBundlesType"))
  {
    v6 = 244;
  }

  else if (objc_msgSend_isEqualToString_(v3, v26, @"webAuthTokenRetrieveType"))
  {
    v6 = 250;
  }

  else if (objc_msgSend_isEqualToString_(v3, v27, @"dataRepairUpdateMissingAssetStatusType"))
  {
    v6 = 260;
  }

  else if (objc_msgSend_isEqualToString_(v3, v28, @"addAnonymousShareType"))
  {
    v6 = 270;
  }

  else if (objc_msgSend_isEqualToString_(v3, v29, @"removeAnonymousShareType"))
  {
    v6 = 271;
  }

  else if (objc_msgSend_isEqualToString_(v3, v30, @"zoneChildrenRetrieveType"))
  {
    v6 = 272;
  }

  else if (objc_msgSend_isEqualToString_(v3, v31, @"subscriptionCreateType"))
  {
    v6 = 300;
  }

  else if (objc_msgSend_isEqualToString_(v3, v32, @"subscriptionRetrieveType"))
  {
    v6 = 301;
  }

  else if (objc_msgSend_isEqualToString_(v3, v33, @"subscriptionDeleteType"))
  {
    v6 = 302;
  }

  else if (objc_msgSend_isEqualToString_(v3, v34, @"mergeableDeltaSaveType"))
  {
    v6 = 311;
  }

  else if (objc_msgSend_isEqualToString_(v3, v35, @"mergeableDeltaMetadataRetrieveType"))
  {
    v6 = 312;
  }

  else if (objc_msgSend_isEqualToString_(v3, v36, @"mergeableDeltaReplaceType"))
  {
    v6 = 313;
  }

  else if (objc_msgSend_isEqualToString_(v3, v37, @"mergeableDeltaRetrieveType"))
  {
    v6 = 314;
  }

  else if (objc_msgSend_isEqualToString_(v3, v38, @"privateSearchSetType"))
  {
    v6 = 320;
  }

  else if (objc_msgSend_isEqualToString_(v3, v39, @"privateSearchGetType"))
  {
    v6 = 321;
  }

  else if (objc_msgSend_isEqualToString_(v3, v40, @"privateSearchDeleteType"))
  {
    v6 = 322;
  }

  else if (objc_msgSend_isEqualToString_(v3, v41, @"userRetrieveType"))
  {
    v6 = 400;
  }

  else if (objc_msgSend_isEqualToString_(v3, v42, @"userQueryType"))
  {
    v6 = 401;
  }

  else if (objc_msgSend_isEqualToString_(v3, v43, @"userPrivacySettingsRetrieveType"))
  {
    v6 = 402;
  }

  else if (objc_msgSend_isEqualToString_(v3, v44, @"userPrivacySettingsUpdateType"))
  {
    v6 = 403;
  }

  else if (objc_msgSend_isEqualToString_(v3, v45, @"userPrivacySettingsResetType"))
  {
    v6 = 404;
  }

  else if (objc_msgSend_isEqualToString_(v3, v46, @"userPrivacySettingsBatchLookup"))
  {
    v6 = 405;
  }

  else if (objc_msgSend_isEqualToString_(v3, v47, @"sharePermissionSettingsUpdateType"))
  {
    v6 = 406;
  }

  else if (objc_msgSend_isEqualToString_(v3, v48, @"adopterCapabilitiesSaveType"))
  {
    v6 = 407;
  }

  else if (objc_msgSend_isEqualToString_(v3, v49, @"adopterCapabilitiesCheckType"))
  {
    v6 = 408;
  }

  else if (objc_msgSend_isEqualToString_(v3, v50, @"zoneUsageSaveType"))
  {
    v6 = 409;
  }

  else if (objc_msgSend_isEqualToString_(v3, v51, @"shareUsageSaveType"))
  {
    v6 = 410;
  }

  else if (objc_msgSend_isEqualToString_(v3, v52, @"shareAcceptType"))
  {
    v6 = 503;
  }

  else if (objc_msgSend_isEqualToString_(v3, v53, @"shareVettingInitiateType"))
  {
    v6 = 513;
  }

  else if (objc_msgSend_isEqualToString_(v3, v54, @"pushRegisterType"))
  {
    v6 = 800;
  }

  else if (objc_msgSend_isEqualToString_(v3, v55, @"pushUnregisterType"))
  {
    v6 = 801;
  }

  else if (objc_msgSend_isEqualToString_(v3, v56, @"pushBadgeType"))
  {
    v6 = 802;
  }

  else if (objc_msgSend_isEqualToString_(v3, v57, @"pushSyncType"))
  {
    v6 = 803;
  }

  else if (objc_msgSend_isEqualToString_(v3, v58, @"pushReadType"))
  {
    v6 = 804;
  }

  else if (objc_msgSend_isEqualToString_(v3, v59, @"archiveRecordsType"))
  {
    v6 = 900;
  }

  else if (objc_msgSend_isEqualToString_(v3, v60, @"datarepairMarkAssetBrokenType"))
  {
    v6 = 901;
  }

  else if (objc_msgSend_isEqualToString_(v3, v61, @"functionInvokeType"))
  {
    v6 = 1101;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setHasSynchronousMode:(BOOL)a3
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

- (void)setHasLast:(BOOL)a3
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
  v11.receiver = self;
  v11.super_class = CKDPOperation;
  v4 = [(CKDPOperation *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  operationUUID = self->_operationUUID;
  if (operationUUID)
  {
    objc_msgSend_setObject_forKey_(v4, v5, operationUUID, @"operationUUID");
  }

  has = self->_has;
  if (has)
  {
    type = self->_type;
    if (type <= 301)
    {
      if (type <= 259)
      {
        switch(type)
        {
          case 200:
            v10 = @"zoneSaveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"zoneSaveType", @"type");
            break;
          case 201:
            v10 = @"zoneRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"zoneRetrieveType", @"type");
            break;
          case 202:
            v10 = @"zoneDeleteType";
            objc_msgSend_setObject_forKey_(v6, v5, @"zoneDeleteType", @"type");
            break;
          case 203:
            v10 = @"zoneRetrieveChangesType";
            objc_msgSend_setObject_forKey_(v6, v5, @"zoneRetrieveChangesType", @"type");
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
            goto LABEL_67;
          case 206:
            v10 = @"zoneRetrieveAncestors";
            objc_msgSend_setObject_forKey_(v6, v5, @"zoneRetrieveAncestors", @"type");
            break;
          case 210:
            v10 = @"recordSaveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"recordSaveType", @"type");
            break;
          case 211:
            v10 = @"recordRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"recordRetrieveType", @"type");
            break;
          case 212:
            v10 = @"recordRetrieveVersionsType";
            objc_msgSend_setObject_forKey_(v6, v5, @"recordRetrieveVersionsType", @"type");
            break;
          case 213:
            v10 = @"recordRetrieveChangesType";
            objc_msgSend_setObject_forKey_(v6, v5, @"recordRetrieveChangesType", @"type");
            break;
          case 214:
            v10 = @"recordDeleteType";
            objc_msgSend_setObject_forKey_(v6, v5, @"recordDeleteType", @"type");
            break;
          case 216:
            v10 = @"recordResolveTokenType";
            objc_msgSend_setObject_forKey_(v6, v5, @"recordResolveTokenType", @"type");
            break;
          case 217:
            v10 = @"fetchArchivedRecordsType";
            objc_msgSend_setObject_forKey_(v6, v5, @"fetchArchivedRecordsType", @"type");
            break;
          case 218:
            v10 = @"recordMoveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"recordMoveType", @"type");
            break;
          case 219:
            v10 = @"shareAccessType";
            objc_msgSend_setObject_forKey_(v6, v5, @"shareAccessType", @"type");
            break;
          case 220:
            v10 = @"queryRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"queryRetrieveType", @"type");
            break;
          case 221:
            v10 = @"shareDeclineType";
            objc_msgSend_setObject_forKey_(v6, v5, @"shareDeclineType", @"type");
            break;
          case 230:
            v10 = @"assetUploadTokenRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"assetUploadTokenRetrieveType", @"type");
            break;
          case 240:
            v10 = @"containerDeleteType";
            objc_msgSend_setObject_forKey_(v6, v5, @"containerDeleteType", @"type");
            break;
          case 243:
            v10 = @"userAvailableQuotaType";
            objc_msgSend_setObject_forKey_(v6, v5, @"userAvailableQuotaType", @"type");
            break;
          case 244:
            v10 = @"containerGetBundlesType";
            objc_msgSend_setObject_forKey_(v6, v5, @"containerGetBundlesType", @"type");
            break;
          case 250:
            v10 = @"webAuthTokenRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"webAuthTokenRetrieveType", @"type");
            break;
          default:
            if (type)
            {
              goto LABEL_67;
            }

            v10 = @"noneType";
            objc_msgSend_setObject_forKey_(v6, v5, @"noneType", @"type");
            break;
        }

        goto LABEL_108;
      }

      if (type > 271)
      {
        switch(type)
        {
          case 272:
            v10 = @"zoneChildrenRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"zoneChildrenRetrieveType", @"type");
            goto LABEL_108;
          case 300:
            v10 = @"subscriptionCreateType";
            objc_msgSend_setObject_forKey_(v6, v5, @"subscriptionCreateType", @"type");
            goto LABEL_108;
          case 301:
            v10 = @"subscriptionRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"subscriptionRetrieveType", @"type");
            goto LABEL_108;
        }

        goto LABEL_67;
      }

      if (type == 260)
      {
        v10 = @"dataRepairUpdateMissingAssetStatusType";
        objc_msgSend_setObject_forKey_(v6, v5, @"dataRepairUpdateMissingAssetStatusType", @"type");
        goto LABEL_108;
      }

      if (type == 270)
      {
        v10 = @"addAnonymousShareType";
        objc_msgSend_setObject_forKey_(v6, v5, @"addAnonymousShareType", @"type");
        goto LABEL_108;
      }

      if (type != 271)
      {
        goto LABEL_67;
      }

      v10 = @"removeAnonymousShareType";
      objc_msgSend_setObject_forKey_(v6, v5, @"removeAnonymousShareType", @"type");
    }

    else if (type <= 405)
    {
      if (type > 321)
      {
        if (type > 401)
        {
          if (type > 403)
          {
            if (type == 404)
            {
              v10 = @"userPrivacySettingsResetType";
              objc_msgSend_setObject_forKey_(v6, v5, @"userPrivacySettingsResetType", @"type");
            }

            else
            {
              v10 = @"userPrivacySettingsBatchLookup";
              objc_msgSend_setObject_forKey_(v6, v5, @"userPrivacySettingsBatchLookup", @"type");
            }
          }

          else if (type == 402)
          {
            v10 = @"userPrivacySettingsRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"userPrivacySettingsRetrieveType", @"type");
          }

          else
          {
            v10 = @"userPrivacySettingsUpdateType";
            objc_msgSend_setObject_forKey_(v6, v5, @"userPrivacySettingsUpdateType", @"type");
          }

          goto LABEL_108;
        }

        switch(type)
        {
          case 322:
            v10 = @"privateSearchDeleteType";
            objc_msgSend_setObject_forKey_(v6, v5, @"privateSearchDeleteType", @"type");
            goto LABEL_108;
          case 400:
            v10 = @"userRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"userRetrieveType", @"type");
            goto LABEL_108;
          case 401:
            v10 = @"userQueryType";
            objc_msgSend_setObject_forKey_(v6, v5, @"userQueryType", @"type");
            goto LABEL_108;
        }

        goto LABEL_67;
      }

      if (type <= 312)
      {
        switch(type)
        {
          case 302:
            v10 = @"subscriptionDeleteType";
            objc_msgSend_setObject_forKey_(v6, v5, @"subscriptionDeleteType", @"type");
            goto LABEL_108;
          case 311:
            v10 = @"mergeableDeltaSaveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"mergeableDeltaSaveType", @"type");
            goto LABEL_108;
          case 312:
            v10 = @"mergeableDeltaMetadataRetrieveType";
            objc_msgSend_setObject_forKey_(v6, v5, @"mergeableDeltaMetadataRetrieveType", @"type");
            goto LABEL_108;
        }

        goto LABEL_67;
      }

      if (type > 319)
      {
        if (type == 320)
        {
          v10 = @"privateSearchSetType";
          objc_msgSend_setObject_forKey_(v6, v5, @"privateSearchSetType", @"type");
        }

        else
        {
          v10 = @"privateSearchGetType";
          objc_msgSend_setObject_forKey_(v6, v5, @"privateSearchGetType", @"type");
        }

        goto LABEL_108;
      }

      if (type == 313)
      {
        v10 = @"mergeableDeltaReplaceType";
        objc_msgSend_setObject_forKey_(v6, v5, @"mergeableDeltaReplaceType", @"type");
        goto LABEL_108;
      }

      if (type != 314)
      {
        goto LABEL_67;
      }

      v10 = @"mergeableDeltaRetrieveType";
      objc_msgSend_setObject_forKey_(v6, v5, @"mergeableDeltaRetrieveType", @"type");
    }

    else
    {
      if (type > 799)
      {
        if (type <= 803)
        {
          if (type > 801)
          {
            if (type == 802)
            {
              v10 = @"pushBadgeType";
              objc_msgSend_setObject_forKey_(v6, v5, @"pushBadgeType", @"type");
            }

            else
            {
              v10 = @"pushSyncType";
              objc_msgSend_setObject_forKey_(v6, v5, @"pushSyncType", @"type");
            }
          }

          else if (type == 800)
          {
            v10 = @"pushRegisterType";
            objc_msgSend_setObject_forKey_(v6, v5, @"pushRegisterType", @"type");
          }

          else
          {
            v10 = @"pushUnregisterType";
            objc_msgSend_setObject_forKey_(v6, v5, @"pushUnregisterType", @"type");
          }

          goto LABEL_108;
        }

        if (type > 900)
        {
          if (type == 901)
          {
            v10 = @"datarepairMarkAssetBrokenType";
            objc_msgSend_setObject_forKey_(v6, v5, @"datarepairMarkAssetBrokenType", @"type");
            goto LABEL_108;
          }

          if (type == 1101)
          {
            v10 = @"functionInvokeType";
            objc_msgSend_setObject_forKey_(v6, v5, @"functionInvokeType", @"type");
            goto LABEL_108;
          }
        }

        else
        {
          if (type == 804)
          {
            v10 = @"pushReadType";
            objc_msgSend_setObject_forKey_(v6, v5, @"pushReadType", @"type");
            goto LABEL_108;
          }

          if (type == 900)
          {
            v10 = @"archiveRecordsType";
            objc_msgSend_setObject_forKey_(v6, v5, @"archiveRecordsType", @"type");
            goto LABEL_108;
          }
        }

LABEL_67:
        v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_type);
        objc_msgSend_setObject_forKey_(v6, v11, v10, @"type");
        goto LABEL_108;
      }

      if (type <= 408)
      {
        if (type == 406)
        {
          v10 = @"sharePermissionSettingsUpdateType";
          objc_msgSend_setObject_forKey_(v6, v5, @"sharePermissionSettingsUpdateType", @"type");
        }

        else if (type == 407)
        {
          v10 = @"adopterCapabilitiesSaveType";
          objc_msgSend_setObject_forKey_(v6, v5, @"adopterCapabilitiesSaveType", @"type");
        }

        else
        {
          v10 = @"adopterCapabilitiesCheckType";
          objc_msgSend_setObject_forKey_(v6, v5, @"adopterCapabilitiesCheckType", @"type");
        }

        goto LABEL_108;
      }

      if (type > 502)
      {
        if (type == 503)
        {
          v10 = @"shareAcceptType";
          objc_msgSend_setObject_forKey_(v6, v5, @"shareAcceptType", @"type");
          goto LABEL_108;
        }

        if (type == 513)
        {
          v10 = @"shareVettingInitiateType";
          objc_msgSend_setObject_forKey_(v6, v5, @"shareVettingInitiateType", @"type");
          goto LABEL_108;
        }

        goto LABEL_67;
      }

      if (type == 409)
      {
        v10 = @"zoneUsageSaveType";
        objc_msgSend_setObject_forKey_(v6, v5, @"zoneUsageSaveType", @"type");
        goto LABEL_108;
      }

      if (type != 410)
      {
        goto LABEL_67;
      }

      v10 = @"shareUsageSaveType";
      objc_msgSend_setObject_forKey_(v6, v5, @"shareUsageSaveType", @"type");
    }

LABEL_108:

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_synchronousMode);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"synchronousMode");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_last);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"last");
  }

  requestSignature = self->_requestSignature;
  if (requestSignature)
  {
    objc_msgSend_setObject_forKey_(v6, v5, requestSignature, @"requestSignature");
  }

  anonymousCKUserID = self->_anonymousCKUserID;
  if (anonymousCKUserID)
  {
    v18 = objc_msgSend_dictionaryRepresentation(anonymousCKUserID, v5, requestSignature);
    objc_msgSend_setObject_forKey_(v6, v19, v18, @"anonymousCKUserID");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_operationUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v9;
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

  synchronousMode = self->_synchronousMode;
  PBDataWriterWriteBOOLField();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    last = self->_last;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

LABEL_7:
  if (self->_requestSignature)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  if (self->_anonymousCKUserID)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  operationUUID = self->_operationUUID;
  v10 = v4;
  if (operationUUID)
  {
    objc_msgSend_setOperationUUID_(v4, v5, operationUUID);
    v4 = v10;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 8) = self->_type;
    *(v4 + 40) |= 1u;
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

  *(v4 + 37) = self->_synchronousMode;
  *(v4 + 40) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(v4 + 36) = self->_last;
    *(v4 + 40) |= 2u;
  }

LABEL_7:
  requestSignature = self->_requestSignature;
  if (requestSignature)
  {
    objc_msgSend_setRequestSignature_(v10, v5, requestSignature);
    v4 = v10;
  }

  anonymousCKUserID = self->_anonymousCKUserID;
  if (anonymousCKUserID)
  {
    objc_msgSend_setAnonymousCKUserID_(v10, v5, anonymousCKUserID);
    v4 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_operationUUID, v11, a3);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v10 + 37) = self->_synchronousMode;
    *(v10 + 40) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v10 + 32) = self->_type;
  *(v10 + 40) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v10 + 36) = self->_last;
    *(v10 + 40) |= 2u;
  }

LABEL_5:
  v16 = objc_msgSend_copyWithZone_(self->_requestSignature, v14, a3);
  v17 = *(v10 + 24);
  *(v10 + 24) = v16;

  v19 = objc_msgSend_copyWithZone_(self->_anonymousCKUserID, v18, a3);
  v20 = *(v10 + 8);
  *(v10 + 8) = v19;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_29;
  }

  operationUUID = self->_operationUUID;
  v9 = v4[2];
  if (operationUUID | v9)
  {
    if (!objc_msgSend_isEqual_(operationUUID, v7, v9))
    {
      goto LABEL_29;
    }
  }

  v10 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((v4[5] & 1) == 0 || self->_type != *(v4 + 8))
    {
      goto LABEL_29;
    }
  }

  else if (v4[5])
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((v4[5] & 4) == 0)
    {
      goto LABEL_29;
    }

    v16 = *(v4 + 37);
    if (self->_synchronousMode)
    {
      if ((*(v4 + 37) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (*(v4 + 37))
    {
      goto LABEL_29;
    }
  }

  else if ((v4[5] & 4) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((v4[5] & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_29:
    isEqual = 0;
    goto LABEL_30;
  }

  if ((v4[5] & 2) == 0)
  {
    goto LABEL_29;
  }

  v17 = *(v4 + 36);
  if (!self->_last)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

  if ((*(v4 + 36) & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_13:
  requestSignature = self->_requestSignature;
  v12 = v4[3];
  if (requestSignature | v12 && !objc_msgSend_isEqual_(requestSignature, v7, v12))
  {
    goto LABEL_29;
  }

  anonymousCKUserID = self->_anonymousCKUserID;
  v14 = v4[1];
  if (anonymousCKUserID | v14)
  {
    isEqual = objc_msgSend_isEqual_(anonymousCKUserID, v7, v14);
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
  v4 = objc_msgSend_hash(self->_operationUUID, a2, v2);
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

  v7 = 2654435761 * self->_type;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = 2654435761 * self->_synchronousMode;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = 2654435761 * self->_last;
LABEL_8:
  v10 = v7 ^ v4 ^ v8 ^ v9 ^ objc_msgSend_hash(self->_requestSignature, v5, v6);
  return v10 ^ objc_msgSend_hash(self->_anonymousCKUserID, v11, v12);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 2);
  v10 = v4;
  if (v5)
  {
    objc_msgSend_setOperationUUID_(self, v4, v5);
    v4 = v10;
  }

  v6 = *(v4 + 40);
  if (v6)
  {
    self->_type = *(v4 + 8);
    *&self->_has |= 1u;
    v6 = *(v4 + 40);
    if ((v6 & 4) == 0)
    {
LABEL_5:
      if ((v6 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 40) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_synchronousMode = *(v4 + 37);
  *&self->_has |= 4u;
  if ((*(v4 + 40) & 2) != 0)
  {
LABEL_6:
    self->_last = *(v4 + 36);
    *&self->_has |= 2u;
  }

LABEL_7:
  v7 = *(v4 + 3);
  if (v7)
  {
    objc_msgSend_setRequestSignature_(self, v4, v7);
    v4 = v10;
  }

  anonymousCKUserID = self->_anonymousCKUserID;
  v9 = *(v4 + 1);
  if (anonymousCKUserID)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(anonymousCKUserID, v4, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setAnonymousCKUserID_(self, v4, v9);
  }

  MEMORY[0x2821F96F8]();
}

@end