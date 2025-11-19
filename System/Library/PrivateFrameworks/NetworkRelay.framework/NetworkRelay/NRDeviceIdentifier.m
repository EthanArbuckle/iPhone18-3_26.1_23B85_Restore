@interface NRDeviceIdentifier
+ (id)copyBestTestingDeviceIdentifier;
+ (id)newDeviceIdentifierWithBluetoothUUID:(id)a3;
+ (id)newDeviceIdentifierWithIDSDeviceID:(id)a3 shouldCreate:(BOOL)a4;
+ (id)newEphemeralDeviceIdentifier;
- (BOOL)isEqual:(id)a3;
- (NRDeviceIdentifier)initWithCoder:(id)a3;
- (NRDeviceIdentifier)initWithUUID:(id)a3;
- (NSUUID)bluetoothUUID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDeviceIdentifier

- (NSUUID)bluetoothUUID
{
  if (self && self->_ephemeral)
  {
    v2 = self->_internalEphemeralBluetoothUUID;
    goto LABEL_27;
  }

  v8 = [(NRDeviceIdentifier *)self nrDeviceIdentifier];
  if (nrCopyLogObj_onceToken_809 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Querying BluetoothUUID for nrUUID %@", v3, v4, v5, v6, v7, "");
  }

  os_unfair_lock_lock(&sBluetoothUUIDToNRUUIDMappingLock);
  if (!sBluetoothUUIDToNRUUIDMapping)
  {
LABEL_17:
    v2 = nrXPCCopyBluetoothUUIDForNRUUID(v8);
    if (!v2)
    {
      goto LABEL_26;
    }

    if (nrCopyLogObj_onceToken_809 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_21;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
    {
LABEL_22:
      v20 = sBluetoothUUIDToNRUUIDMapping;
      if (!sBluetoothUUIDToNRUUIDMapping)
      {
        v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v22 = sBluetoothUUIDToNRUUIDMapping;
        sBluetoothUUIDToNRUUIDMapping = v21;

        v20 = sBluetoothUUIDToNRUUIDMapping;
      }

      if ([v20 count] <= 0xF)
      {
        [sBluetoothUUIDToNRUUIDMapping setObject:v8 forKeyedSubscript:v2];
      }

      goto LABEL_26;
    }

LABEL_21:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Got BluetoothUUID %@ from daemon for nrUUID %@", v15, v16, v17, v18, v19, "");
    goto LABEL_22;
  }

  v9 = [sBluetoothUUIDToNRUUIDMapping allKeysForObject:v8];
  if (![v9 count])
  {

    goto LABEL_17;
  }

  v2 = [v9 firstObject];

  if (!v2)
  {
    goto LABEL_17;
  }

  if (nrCopyLogObj_onceToken_809 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_15:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Got BluetoothUUID %@ from cache for nrUUID %@", v10, v11, v12, v13, v14, "");
      goto LABEL_26;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_15;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

LABEL_26:
  os_unfair_lock_unlock(&sBluetoothUUIDToNRUUIDMappingLock);

LABEL_27:

  return v2;
}

- (unint64_t)hash
{
  v2 = [(NRDeviceIdentifier *)self nrDeviceIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(NRDeviceIdentifier *)self nrDeviceIdentifier];
    v7 = [v5 nrDeviceIdentifier];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(NRDeviceIdentifier *)self nrDeviceIdentifier];
  v5 = [v4 UUIDString];
  v6 = [v3 initWithFormat:@"NRD[%@]", v5];

  return v6;
}

- (NRDeviceIdentifier)initWithUUID:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v11 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v14 = v11;
      v15 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v15)
      {
LABEL_13:
        v22 = _os_log_pack_size();
        MEMORY[0x28223BE20](v22, v23);
        v24 = *__error();
        v25 = _os_log_pack_fill();
        *v25 = 136446466;
        *(v25 + 4) = "[NRDeviceIdentifier initWithUUID:]";
        *(v25 + 12) = 2080;
        *(v25 + 14) = "[NRDeviceIdentifier initWithUUID:]";
        goto LABEL_20;
      }
    }

    v16 = nrCopyLogObj_823();
    _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL nrDeviceIdentifier", v17, v18, v19, v20, v21, "");

    goto LABEL_13;
  }

  v5 = v4;
  *uu = 0;
  v53 = 0;
  [v4 getUUIDBytes:uu];
  if (uuid_is_null(uu))
  {
    v12 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v12;
      v27 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
LABEL_16:
        v34 = _os_log_pack_size();
        MEMORY[0x28223BE20](v34, v35);
        v36 = *__error();
        v37 = _os_log_pack_fill();
        *v37 = 136446466;
        *(v37 + 4) = "[NRDeviceIdentifier initWithUUID:]";
        *(v37 + 12) = 2080;
        *(v37 + 14) = "[NRDeviceIdentifier initWithUUID:]";
        goto LABEL_20;
      }
    }

    v28 = nrCopyLogObj_823();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with all-zero nrDeviceIdentifier", v29, v30, v31, v32, v33, "");

    goto LABEL_16;
  }

  v51.receiver = self;
  v51.super_class = NRDeviceIdentifier;
  v6 = [(NRDeviceIdentifier *)&v51 init];
  if (!v6)
  {
    v13 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v38 = v13;
      v39 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (!v39)
      {
LABEL_19:
        v46 = _os_log_pack_size();
        MEMORY[0x28223BE20](v46, v47);
        v48 = *__error();
        v49 = _os_log_pack_fill();
        *v49 = 136446210;
        *(v49 + 4) = "[NRDeviceIdentifier initWithUUID:]";
LABEL_20:
        v50 = nrCopyLogObj_823();
        _NRLogAbortWithPack(v50);
      }
    }

    v40 = nrCopyLogObj_823();
    _NRLogWithArgs(v40, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v41, v42, v43, v44, v45, "");

    goto LABEL_19;
  }

  v8 = v6;
  objc_setProperty_nonatomic_copy(v6, v7, v5, 16);

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(NRDeviceIdentifier *)self nrDeviceIdentifier];
  [v6 encodeObject:v4 forKey:@"nrDeviceIdentifier"];

  if (self)
  {
    ephemeral = self->_ephemeral;
  }

  else
  {
    ephemeral = 0;
  }

  [v6 encodeBool:ephemeral forKey:@"ephemeral"];
}

- (NRDeviceIdentifier)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = NRDeviceIdentifier;
  v5 = [(NRDeviceIdentifier *)&v25 init];
  if (!v5)
  {
    v11 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v11;
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v14 = nrCopyLogObj_823();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v15, v16, v17, v18, v19, "");

LABEL_7:
    v20 = _os_log_pack_size();
    MEMORY[0x28223BE20](v20, v21);
    v22 = *__error();
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "[NRDeviceIdentifier initWithCoder:]";
    v24 = nrCopyLogObj_823();
    _NRLogAbortWithPack(v24);
  }

  v6 = v5;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nrDeviceIdentifier"];
  objc_setProperty_nonatomic_copy(v6, v8, v7, 16);

  v6->_ephemeral = [v4 decodeBoolForKey:@"ephemeral"];
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NRDeviceIdentifier *)self nrDeviceIdentifier];
  v6 = [v4 initWithUUID:v5];

  if (!self)
  {
    ephemeral = 0;
    if (!v6)
    {
      return v6;
    }

    goto LABEL_3;
  }

  ephemeral = self->_ephemeral;
  if (v6)
  {
LABEL_3:
    v6[8] = ephemeral;
  }

  return v6;
}

+ (id)newDeviceIdentifierWithBluetoothUUID:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v34 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v36 = v34;
      v37 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

      if (!v37)
      {
LABEL_37:
        v44 = _os_log_pack_size();
        MEMORY[0x28223BE20](v44, v45);
        v46 = *__error();
        v47 = _os_log_pack_fill();
        *v47 = 136446466;
        *(v47 + 4) = "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]";
        *(v47 + 12) = 2080;
        *(v47 + 14) = "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]";
        goto LABEL_41;
      }
    }

    v38 = nrCopyLogObj_823();
    _NRLogWithArgs(v38, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL bluetoothUUID", v39, v40, v41, v42, v43, "");

    goto LABEL_37;
  }

  v5 = v4;
  *uu = 0;
  v82 = 0;
  [v4 getUUIDBytes:uu];
  if (uuid_is_null(uu))
  {
    v35 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v48 = v35;
      v49 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

      if (!v49)
      {
LABEL_40:
        v56 = _os_log_pack_size();
        MEMORY[0x28223BE20](v56, v57);
        v58 = *__error();
        v59 = _os_log_pack_fill();
        *v59 = 136446466;
        *(v59 + 4) = "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]";
        *(v59 + 12) = 2080;
        *(v59 + 14) = "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]";
LABEL_41:
        v60 = nrCopyLogObj_823();
        _NRLogAbortWithPack(v60);
      }
    }

    v50 = nrCopyLogObj_823();
    _NRLogWithArgs(v50, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with all-zero bluetoothUUID", v51, v52, v53, v54, v55, "");

    goto LABEL_40;
  }

  if (nrCopyLogObj_onceToken_809 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Querying NRUUID for bluetoothUUID %@", v6, v7, v8, v9, v10, "");
  }

  os_unfair_lock_lock(&sBluetoothUUIDToNRUUIDMappingLock);
  if (sBluetoothUUIDToNRUUIDMapping)
  {
    v11 = [sBluetoothUUIDToNRUUIDMapping objectForKeyedSubscript:v5];
    HIBYTE(v80) = 0;
    if (v11)
    {
      v17 = v11;
      if (nrCopyLogObj_onceToken_809 == -1)
      {
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_12:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
          {
            goto LABEL_49;
          }
        }
      }

      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Got NRUUID %@ from cache for bluetoothUUID %@", v12, v13, v14, v15, v16, "");
      goto LABEL_49;
    }
  }

  else
  {
    HIBYTE(v80) = 0;
  }

  v18 = nrXPCCopyNRUUIDForBluetoothUUID(v5, &v80 + 7);
  if (!v18)
  {
    os_unfair_lock_unlock(&sBluetoothUUIDToNRUUIDMappingLock);
    if (nrCopyLogObj_onceToken_809 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
    }

    v24 = nrCopyLogObj_sNRLogObj_811;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v25 = v24;
      v26 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

      if (!v26)
      {
LABEL_30:
        v17 = 0;
        v33 = 0;
        goto LABEL_57;
      }
    }

    if (nrCopyLogObj_onceToken_809 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
    }

    v27 = nrCopyLogObj_sNRLogObj_811;
    _NRLogWithArgs(v27, 17, "%s called with null nrUUID", v28, v29, v30, v31, v32, "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]");

    goto LABEL_30;
  }

  v17 = v18;
  if (nrCopyLogObj_onceToken_809 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_45;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_45;
    }
  }

  if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    if (sBluetoothUUIDToNRUUIDMapping)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Got NRUUID %@ from daemon for bluetoothUUID %@%s", v19, v20, v21, v22, v23, "");
  if (sBluetoothUUIDToNRUUIDMapping)
  {
LABEL_20:
    if ((v80 & 0x100000000000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

LABEL_46:
  v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v62 = sBluetoothUUIDToNRUUIDMapping;
  sBluetoothUUIDToNRUUIDMapping = v61;

  if ((v80 & 0x100000000000000) != 0)
  {
    goto LABEL_49;
  }

LABEL_47:
  if ([sBluetoothUUIDToNRUUIDMapping count] <= 0xF)
  {
    [sBluetoothUUIDToNRUUIDMapping setObject:v17 forKeyedSubscript:v5];
  }

LABEL_49:
  os_unfair_lock_unlock(&sBluetoothUUIDToNRUUIDMappingLock);
  *uu = 0;
  v82 = 0;
  [v17 getUUIDBytes:uu];
  if (uuid_is_null(uu))
  {
    v71 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v72 = v71;
      v73 = os_log_type_enabled(v71, OS_LOG_TYPE_FAULT);

      if (!v73)
      {
        v33 = 0;
        goto LABEL_57;
      }
    }

    v74 = nrCopyLogObj_823();
    _NRLogWithArgs(v74, 17, "called with all-zero nrUUID", v75, v76, v77, v78, v79, v80);

    v33 = 0;
  }

  else
  {
    v63 = [[NRDeviceIdentifier alloc] initWithUUID:v17];
    v33 = v63;
    if (HIBYTE(v80) == 1 && v63)
    {
      objc_storeStrong(&v63->_internalEphemeralBluetoothUUID, a3);
    }

    if (nrCopyLogObj_onceToken_809 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
LABEL_56:
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Found %@ for bluetoothUUID %@", v64, v65, v66, v67, v68, "");
        goto LABEL_57;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_56;
      }
    }

    if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
    {
      goto LABEL_56;
    }
  }

LABEL_57:

  v69 = *MEMORY[0x277D85DE8];
  return v33;
}

+ (id)newEphemeralDeviceIdentifier
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [[NRDeviceIdentifier alloc] initWithUUID:v2];
  v9 = v3;
  if (v3)
  {
    v3->_ephemeral = 1;
  }

  if (nrCopyLogObj_onceToken_809 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Creating %@ for ephemeral pairing", v4, v5, v6, v7, v8, "");
  }

  return v9;
}

+ (id)newDeviceIdentifierWithIDSDeviceID:(id)a3 shouldCreate:(BOOL)a4
{
  v4 = a4;
  v55 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v41 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v42 = v41;
      v43 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);

      if (!v43)
      {
        goto LABEL_39;
      }
    }

    v44 = nrCopyLogObj_823();
    _NRLogWithArgs(v44, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL idsDeviceID", v45, v46, v47, v48, v49, "");

LABEL_39:
    v50 = _os_log_pack_size();
    MEMORY[0x28223BE20](v50, v51);
    v52 = *__error();
    v53 = _os_log_pack_fill();
    *v53 = 136446466;
    *(v53 + 4) = "+[NRDeviceIdentifier(Internal) newDeviceIdentifierWithIDSDeviceID:shouldCreate:]";
    *(v53 + 12) = 2080;
    *(v53 + 14) = "+[NRDeviceIdentifier(Internal) newDeviceIdentifierWithIDSDeviceID:shouldCreate:]";
    v54 = nrCopyLogObj_823();
    _NRLogAbortWithPack(v54);
  }

  v11 = v5;
  if (nrCopyLogObj_onceToken_809 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Querying NRUUID for IDSDeviceID %@", v6, v7, v8, v9, v10, "");
  }

  os_unfair_lock_lock(&sIDSDeviceIDToNRUUIDMappingLock);
  if (sIDSDeviceIDToNRUUIDMapping)
  {
    v12 = [sIDSDeviceIDToNRUUIDMapping objectForKeyedSubscript:v11];
    if (v12)
    {
      v18 = v12;
      if (nrCopyLogObj_onceToken_809 == -1)
      {
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_11:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
          {
            goto LABEL_21;
          }
        }
      }

      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Got NRUUID %@ from cache for idsDeviceID %@", v13, v14, v15, v16, v17, "");
      goto LABEL_21;
    }
  }

  v19 = nrXPCCopyNRUUIDForIDSDeviceID(v11, v4);
  if (!v19)
  {
    os_unfair_lock_unlock(&sIDSDeviceIDToNRUUIDMappingLock);
    if (v4)
    {
      if (nrCopyLogObj_onceToken_809 == -1)
      {
        if (sNRCopyLogToStdErr)
        {
LABEL_30:
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 17, "%s called with null nrUUID", v34, v35, v36, v37, v38, "+[NRDeviceIdentifier(Internal) newDeviceIdentifierWithIDSDeviceID:shouldCreate:]");
          goto LABEL_31;
        }
      }

      else
      {
        dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_30;
        }
      }

      if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_30;
      }
    }

LABEL_31:
    v33 = 0;
    goto LABEL_32;
  }

  v18 = v19;
  if (nrCopyLogObj_onceToken_809 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_17:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Got NRUUID %@ from daemon for idsDeviceID %@", v20, v21, v22, v23, v24, "");
      goto LABEL_18;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_17;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    goto LABEL_17;
  }

LABEL_18:
  v25 = sIDSDeviceIDToNRUUIDMapping;
  if (!sIDSDeviceIDToNRUUIDMapping)
  {
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v27 = sIDSDeviceIDToNRUUIDMapping;
    sIDSDeviceIDToNRUUIDMapping = v26;

    v25 = sIDSDeviceIDToNRUUIDMapping;
  }

  [v25 setObject:v18 forKeyedSubscript:v11];
LABEL_21:
  os_unfair_lock_unlock(&sIDSDeviceIDToNRUUIDMappingLock);
  v33 = [[NRDeviceIdentifier alloc] initWithUUID:v18];
  if (nrCopyLogObj_onceToken_809 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_24:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Found %@ for idsDeviceID %@", v28, v29, v30, v31, v32, "");
      goto LABEL_25;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_24;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    goto LABEL_24;
  }

LABEL_25:

LABEL_32:
  v39 = *MEMORY[0x277D85DE8];
  return v33;
}

+ (id)copyBestTestingDeviceIdentifier
{
  v2 = nrXPCCopyBestTestingNRUUID();
  if (v2)
  {
    v3 = [[NRDeviceIdentifier alloc] initWithUUID:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end