@interface NRDeviceManager
+ (id)copySharedDeviceManager;
- (id)copyIDSDeviceID;
- (id)initInternal;
- (void)disableDevice:(id)device;
- (void)disableDevice:(id)device queue:(id)queue completionBlock:(id)block;
- (void)enableDevice:(id)device;
- (void)enableDevice:(id)device queue:(id)queue completionBlock:(id)block;
- (void)registerDevice:(id)device properties:(id)properties operationalproperties:(id)operationalproperties queue:(id)queue completionBlock:(id)block;
- (void)registerDevice:(id)device properties:(id)properties queue:(id)queue completionBlock:(id)block;
- (void)scrubAllDevicesWithQueue:(id)queue completionBlock:(id)block;
- (void)scrubDevice:(id)device queue:(id)queue completionBlock:(id)block;
- (void)unregisterAllDevicesWithQueue:(id)queue completionBlock:(id)block;
- (void)unregisterDevice:(id)device;
- (void)unregisterDevice:(id)device queue:(id)queue completionBlock:(id)block;
@end

@implementation NRDeviceManager

- (void)disableDevice:(id)device
{
  v24 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!deviceCopy)
  {
    v8 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v9 = v8;
      v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

      if (!v10)
      {
        goto LABEL_9;
      }
    }

    v11 = nrCopyLogObj_1876();
    _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", v12, v13, v14, v15, v16, "");

LABEL_9:
    v17 = _os_log_pack_size();
    MEMORY[0x28223BE20](v17, v18);
    v19 = *__error();
    v20 = _os_log_pack_fill();
    *v20 = 136446466;
    *(v20 + 4) = "[NRDeviceManager disableDevice:]";
    *(v20 + 12) = 2080;
    *(v20 + 14) = "[NRDeviceManager disableDevice:]";
    v21 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v21);
  }

  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __33__NRDeviceManager_disableDevice___block_invoke;
  v22[3] = &unk_27996B3A8;
  v23 = deviceCopy;
  v6 = deviceCopy;
  [(NRDeviceManager *)self disableDevice:v6 queue:queue completionBlock:v22];

  v7 = *MEMORY[0x277D85DE8];
}

void __33__NRDeviceManager_disableDevice___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to disable device %@: %@", v3, v4, v5, v6, v7, "");
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Disabled device %@", v3, v4, v5, v6, v7, "");
    }
  }
}

- (void)enableDevice:(id)device
{
  v24 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!deviceCopy)
  {
    v8 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v9 = v8;
      v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

      if (!v10)
      {
        goto LABEL_9;
      }
    }

    v11 = nrCopyLogObj_1876();
    _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", v12, v13, v14, v15, v16, "");

LABEL_9:
    v17 = _os_log_pack_size();
    MEMORY[0x28223BE20](v17, v18);
    v19 = *__error();
    v20 = _os_log_pack_fill();
    *v20 = 136446466;
    *(v20 + 4) = "[NRDeviceManager enableDevice:]";
    *(v20 + 12) = 2080;
    *(v20 + 14) = "[NRDeviceManager enableDevice:]";
    v21 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v21);
  }

  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __32__NRDeviceManager_enableDevice___block_invoke;
  v22[3] = &unk_27996B3A8;
  v23 = deviceCopy;
  v6 = deviceCopy;
  [(NRDeviceManager *)self enableDevice:v6 queue:queue completionBlock:v22];

  v7 = *MEMORY[0x277D85DE8];
}

void __32__NRDeviceManager_enableDevice___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to enable device %@: %@", v3, v4, v5, v6, v7, "");
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Enabled device %@", v3, v4, v5, v6, v7, "");
    }
  }
}

- (void)unregisterDevice:(id)device
{
  v24 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!deviceCopy)
  {
    v8 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v9 = v8;
      v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

      if (!v10)
      {
        goto LABEL_9;
      }
    }

    v11 = nrCopyLogObj_1876();
    _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", v12, v13, v14, v15, v16, "");

LABEL_9:
    v17 = _os_log_pack_size();
    MEMORY[0x28223BE20](v17, v18);
    v19 = *__error();
    v20 = _os_log_pack_fill();
    *v20 = 136446466;
    *(v20 + 4) = "[NRDeviceManager unregisterDevice:]";
    *(v20 + 12) = 2080;
    *(v20 + 14) = "[NRDeviceManager unregisterDevice:]";
    v21 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v21);
  }

  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __36__NRDeviceManager_unregisterDevice___block_invoke;
  v22[3] = &unk_27996B3A8;
  v23 = deviceCopy;
  v6 = deviceCopy;
  [(NRDeviceManager *)self unregisterDevice:v6 queue:queue completionBlock:v22];

  v7 = *MEMORY[0x277D85DE8];
}

void __36__NRDeviceManager_unregisterDevice___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to unregister device %@: %@", v3, v4, v5, v6, v7, "");
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Unregistered device %@", v3, v4, v5, v6, v7, "");
    }
  }
}

- (void)registerDevice:(id)device properties:(id)properties queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  propertiesCopy = properties;
  deviceCopy = device;
  v14 = +[NRDeviceOperationalProperties copyPropertiesForDefaultPairedPhone];
  [(NRDeviceManager *)self registerDevice:deviceCopy properties:propertiesCopy operationalproperties:v14 queue:queueCopy completionBlock:blockCopy];
}

- (void)registerDevice:(id)device properties:(id)properties operationalproperties:(id)operationalproperties queue:(id)queue completionBlock:(id)block
{
  v199 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  propertiesCopy = properties;
  operationalpropertiesCopy = operationalproperties;
  queueCopy = queue;
  blockCopy = block;
  if (!deviceCopy)
  {
    v55 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v60 = v55;
      v61 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);

      if (!v61)
      {
        goto LABEL_59;
      }
    }

    v62 = nrCopyLogObj_1876();
    _NRLogWithArgs(v62, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", v63, v64, v65, v66, v67, "");

    goto LABEL_59;
  }

  if (!propertiesCopy)
  {
    v56 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v68 = v56;
      v69 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);

      if (!v69)
      {
        goto LABEL_59;
      }
    }

    v70 = nrCopyLogObj_1876();
    _NRLogWithArgs(v70, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL properties", v71, v72, v73, v74, v75, "");

    goto LABEL_59;
  }

  if (!operationalpropertiesCopy)
  {
    v57 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v76 = v57;
      v77 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);

      if (!v77)
      {
        goto LABEL_59;
      }
    }

    v78 = nrCopyLogObj_1876();
    _NRLogWithArgs(v78, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL operationalproperties", v79, v80, v81, v82, v83, "");

    goto LABEL_59;
  }

  if (!queueCopy)
  {
    v58 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v84 = v58;
      v85 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);

      if (!v85)
      {
        goto LABEL_59;
      }
    }

    v86 = nrCopyLogObj_1876();
    _NRLogWithArgs(v86, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL queue", v87, v88, v89, v90, v91, "");

    goto LABEL_59;
  }

  v16 = blockCopy;
  if (!blockCopy)
  {
    v59 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v92 = v59;
      v93 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);

      if (!v93)
      {
        goto LABEL_59;
      }
    }

    v94 = nrCopyLogObj_1876();
    _NRLogWithArgs(v94, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL completionBlock", v95, v96, v97, v98, v99, "");

    goto LABEL_59;
  }

  v17 = [deviceCopy copy];
  v23 = [propertiesCopy copy];
  if (nrCopyLogObj_onceToken_1880 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Registering device %@ with properties %@", v18, v19, v20, v21, v22, "");
  }

  if (([v23 wasInitiallySetupUsingIDSPairing] & 1) == 0)
  {
    outOfBandKey = [v23 outOfBandKey];
    if (outOfBandKey)
    {
    }

    else if (([propertiesCopy isExternalPairing] & 1) == 0)
    {
      v165 = nrCopyLogObj_1876();
      v166 = v165;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v169 = os_log_type_enabled(v165, OS_LOG_TYPE_ERROR);

        if (!v169)
        {
          goto LABEL_59;
        }
      }

      v170 = nrCopyLogObj_1876();
      _NRLogWithArgs(v170, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with Device pairing properties must either have wasInitiallySetupUsingIDSPairing or outOfBandKey or isExternalPairing", v171, v172, v173, v174, v175, "");

      goto LABEL_59;
    }
  }

  v192 = v16;
  v194 = queueCopy;
  if ([v23 pairingProtocolVersion] < 0)
  {
    v127 = nrCopyLogObj_1876();
    v128 = v127;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v131 = os_log_type_enabled(v127, OS_LOG_TYPE_ERROR);

      if (!v131)
      {
LABEL_78:
        v138 = _os_log_pack_size();
        MEMORY[0x28223BE20](v138, v139);
        v140 = *__error();
        v141 = _os_log_pack_fill();
        __os_log_helper_1_2_3_8_34_8_32_8_0(v141, [v23 pairingProtocolVersion]);
        goto LABEL_84;
      }
    }

    v132 = nrCopyLogObj_1876();
    [v23 pairingProtocolVersion];
    _NRLogWithArgs(v132, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with Device pairing protocol version %llu is too large", v133, v134, v135, v136, v137, "");

    goto LABEL_78;
  }

  [v23 peerNetworkRelayVersion];
  outOfBandKey2 = [v23 outOfBandKey];
  if (outOfBandKey2)
  {
    v26 = outOfBandKey2;
    outOfBandKey3 = [v23 outOfBandKey];
    v28 = [outOfBandKey3 length];

    if (!v28)
    {
      if (nrCopyLogObj_onceToken_1880 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Received empty out of band key, using generic key for device %@ with properties %@", v29, v30, v31, v32, v33, "");
      }

      v34 = [@"Apple Watch Pairing Bluetooth PIN!" dataUsingEncoding:4];
      [v23 setOutOfBandKey:v34];

      outOfBandKey4 = [v23 outOfBandKey];

      if (!outOfBandKey4)
      {
        v105 = nrCopyLogObj_1876();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v107 = v105;
          v108 = os_log_type_enabled(v105, OS_LOG_TYPE_ERROR);

          if (!v108)
          {
            goto LABEL_70;
          }
        }

        v109 = nrCopyLogObj_1876();
        _NRLogWithArgs(v109, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (propertiesCopy.outOfBandKey) != ((void*)0)", v110, v111, v112, v113, v114, "");

        goto LABEL_70;
      }

      outOfBandKey5 = [v23 outOfBandKey];
      v37 = [outOfBandKey5 length];

      if (v37 == 34)
      {
        goto LABEL_25;
      }

      v106 = nrCopyLogObj_1876();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v115 = v106;
        v116 = os_log_type_enabled(v106, OS_LOG_TYPE_ERROR);

        if (!v116)
        {
LABEL_70:
          v123 = _os_log_pack_size();
          MEMORY[0x28223BE20](v123, v124);
          v125 = *__error();
          v126 = _os_log_pack_fill();
          *v126 = 136446210;
          *(v126 + 4) = "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]";
LABEL_60:
          v104 = nrCopyLogObj_1876();
          _NRLogAbortWithPack(v104);
        }
      }

      v117 = nrCopyLogObj_1876();
      _NRLogWithArgs(v117, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: propertiesCopy.outOfBandKey.length == 34", v118, v119, v120, v121, v122, "");

      goto LABEL_70;
    }
  }

LABEL_25:
  if ([v23 pairWithSPPLink])
  {
    bluetoothMACAddress = [v23 bluetoothMACAddress];

    if (!bluetoothMACAddress)
    {
      v142 = nrCopyLogObj_1876();
      v143 = v142;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v158 = os_log_type_enabled(v142, OS_LOG_TYPE_ERROR);

        if (!v158)
        {
          goto LABEL_59;
        }
      }

      v159 = nrCopyLogObj_1876();
      _NRLogWithArgs(v159, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with Device pairing properties has pairWithSPPLink but no bluetoothMACAddress", v160, v161, v162, v163, v164, "");

      goto LABEL_59;
    }
  }

  bluetoothMACAddress2 = [v23 bluetoothMACAddress];
  if (bluetoothMACAddress2)
  {
    v40 = bluetoothMACAddress2;
    bluetoothMACAddress3 = [v23 bluetoothMACAddress];
    v42 = [bluetoothMACAddress3 length];

    if (v42 != 6)
    {
      v129 = nrCopyLogObj_1876();
      v130 = v129;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v144 = os_log_type_enabled(v129, OS_LOG_TYPE_ERROR);

        if (!v144)
        {
LABEL_83:
          v152 = _os_log_pack_size();
          MEMORY[0x28223BE20](v152, v153);
          v154 = *__error();
          v155 = _os_log_pack_fill();
          bluetoothMACAddress4 = [v23 bluetoothMACAddress];
          __os_log_helper_1_2_3_8_34_8_32_8_0(v155, [bluetoothMACAddress4 length]);

LABEL_84:
          v157 = nrCopyLogObj_1876();
          _NRLogAbortWithPack(v157);
        }
      }

      v145 = nrCopyLogObj_1876();
      bluetoothMACAddress5 = [v23 bluetoothMACAddress];
      [bluetoothMACAddress5 length];
      _NRLogWithArgs(v145, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with Device pairing bluetoothMACAddress length %lu != 6", v147, v148, v149, v150, v151, "");

      goto LABEL_83;
    }
  }

  if ([v23 isExternalPairing])
  {
    if (![v23 psm])
    {
      allowedLinkTypes = [operationalpropertiesCopy allowedLinkTypes];
      v44 = [allowedLinkTypes containsObject:&unk_286D2D0E8];

      if (v44)
      {
        v167 = nrCopyLogObj_1876();
        v168 = v167;
        if (sNRCopyLogToStdErr == 1)
        {

LABEL_96:
          v177 = nrCopyLogObj_1876();
          _NRLogWithArgs(v177, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with Invalid PSM for external device registration", v178, v179, v180, v181, v182, "");

          goto LABEL_59;
        }

        v176 = os_log_type_enabled(v167, OS_LOG_TYPE_ERROR);

        if (v176)
        {
          goto LABEL_96;
        }

LABEL_59:
        v100 = _os_log_pack_size();
        MEMORY[0x28223BE20](v100, v101);
        v102 = *__error();
        v103 = _os_log_pack_fill();
        *v103 = 136446466;
        *(v103 + 4) = "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]";
        *(v103 + 12) = 2080;
        *(v103 + 14) = "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]";
        goto LABEL_60;
      }
    }
  }

  v190 = operationalpropertiesCopy;
  v45 = v17;
  nrDeviceIdentifier = [v17 nrDeviceIdentifier];
  pairingProtocolVersion = [v23 pairingProtocolVersion];
  peerNetworkRelayVersion = [v23 peerNetworkRelayVersion];
  wasInitiallySetupUsingIDSPairing = [v23 wasInitiallySetupUsingIDSPairing];
  outOfBandKey6 = [v23 outOfBandKey];
  pairWithSPPLink = [v23 pairWithSPPLink];
  isAltAccountPairing = [v23 isAltAccountPairing];
  isExternalPairing = [v23 isExternalPairing];
  v183 = [v23 psm];
  bluetoothMACAddress6 = [v23 bluetoothMACAddress];
  peerEndpointDictionary = [v23 peerEndpointDictionary];
  v191 = deviceCopy;
  if (v17)
  {
    v50 = v17[8];
  }

  else
  {
    v50 = 0;
  }

  candidateService = [v23 candidateService];
  v195[0] = MEMORY[0x277D85DD0];
  v195[1] = 3221225472;
  v195[2] = __89__NRDeviceManager_registerDevice_properties_operationalproperties_queue_completionBlock___block_invoke;
  v195[3] = &unk_27996B380;
  v196 = v45;
  v197 = v23;
  v198 = v192;
  v193 = v192;
  v52 = v23;
  v53 = v45;
  nrXPCRegisterDeviceByNRUUID(nrDeviceIdentifier, pairingProtocolVersion, peerNetworkRelayVersion, wasInitiallySetupUsingIDSPairing, outOfBandKey6, pairWithSPPLink, isAltAccountPairing, isExternalPairing, v183, bluetoothMACAddress6, v194, v190, peerEndpointDictionary, v50 & 1, candidateService, v195);

  v54 = *MEMORY[0x277D85DE8];
}

void __89__NRDeviceManager_registerDevice_properties_operationalproperties_queue_completionBlock___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    if (v5)
    {
      v24 = *MEMORY[0x277CCA450];
      v25[0] = v5;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    }

    else
    {
      v12 = 0;
    }

    v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v12];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      v23 = a1[5];
      v21 = a1[4];
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to register device %@ with properties %@: %@", v13, v14, v15, v16, v17, "");
    }

    (*(a1[6] + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      v20 = a1[4];
      v22 = a1[5];
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Registered device %@ with properties %@", v6, v7, v8, v9, v10, "");
    }

    (*(a1[6] + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)copySharedDeviceManager
{
  if (copySharedDeviceManager_onceToken != -1)
  {
    dispatch_once(&copySharedDeviceManager_onceToken, &__block_literal_global_1929);
  }

  v3 = copySharedDeviceManager_sharedDeviceManager;

  return v3;
}

uint64_t __42__NRDeviceManager_copySharedDeviceManager__block_invoke()
{
  v0 = [[NRDeviceManager alloc] initInternal];
  v1 = copySharedDeviceManager_sharedDeviceManager;
  copySharedDeviceManager_sharedDeviceManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)initInternal
{
  v29 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    v2 = 0;
    goto LABEL_6;
  }

  v28.receiver = self;
  v28.super_class = NRDeviceManager;
  v1 = objc_msgSendSuper2(&v28, sel_init);
  if (!v1)
  {
    v5 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

      if (!v8)
      {
        goto LABEL_16;
      }
    }

    v9 = nrCopyLogObj_1876();
    _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v10, v11, v12, v13, v14, "");

LABEL_16:
    v23 = _os_log_pack_size();
    MEMORY[0x28223BE20](v23, v24);
    v25 = *__error();
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "[NRDeviceManager initInternal]";
    v27 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v27);
  }

  v2 = v1;
  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  objc_storeStrong(v2 + 1, nrXPCCopyQueue_nrXPCQueue);
  if (!v2[1])
  {
    v6 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v15 = v6;
      v16 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (!v16)
      {
        goto LABEL_16;
      }
    }

    v17 = nrCopyLogObj_1876();
    _NRLogWithArgs(v17, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.queue) != ((void*)0)", v18, v19, v20, v21, v22, "");

    goto LABEL_16;
  }

LABEL_6:
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)copyIDSDeviceID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1951;
  v9 = __Block_byref_object_dispose__1952;
  v10 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NRDeviceManager_Internal__copyIDSDeviceID__block_invoke;
  block[3] = &unk_27996B420;
  block[4] = &v5;
  if (copyIDSDeviceID_onceToken != -1)
  {
    dispatch_once(&copyIDSDeviceID_onceToken, block);
  }

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __44__NRDeviceManager_Internal__copyIDSDeviceID__block_invoke(uint64_t a1)
{
  v2 = nrXPCCopyIDSDeviceID();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)disableDevice:(id)device queue:(id)queue completionBlock:(id)block
{
  v53 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  queueCopy = queue;
  blockCopy = block;
  if (!deviceCopy)
  {
    v20 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v20;
      v24 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
        goto LABEL_20;
      }
    }

    v25 = nrCopyLogObj_1876();
    _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", v26, v27, v28, v29, v30, "");

LABEL_20:
    v31 = _os_log_pack_size();
    MEMORY[0x28223BE20](v31, v32);
    v33 = *__error();
    v34 = _os_log_pack_fill();
    *v34 = 136446466;
    *(v34 + 4) = "[NRDeviceManager(Internal) disableDevice:queue:completionBlock:]";
    *(v34 + 12) = 2080;
    *(v34 + 14) = "[NRDeviceManager(Internal) disableDevice:queue:completionBlock:]";
    v35 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v35);
  }

  v10 = blockCopy;
  if (queueCopy)
  {
    if (blockCopy)
    {
      v16 = [deviceCopy copy];
      if (nrCopyLogObj_onceToken_1880 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Disabling device %@", v11, v12, v13, v14, v15, "");
      }

      nrDeviceIdentifier = [v16 nrDeviceIdentifier];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __65__NRDeviceManager_Internal__disableDevice_queue_completionBlock___block_invoke;
      v50[3] = &unk_27996B3D0;
      v51 = v16;
      v52 = v10;
      v18 = v16;
      nrXPCDisableDeviceByNRUUID(nrDeviceIdentifier, queueCopy, v50);
    }

    else
    {
      v22 = nrCopyLogObj_1876();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v43 = v22;
        v44 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);

        if (!v44)
        {
          goto LABEL_11;
        }
      }

      v18 = nrCopyLogObj_1876();
      _NRLogWithArgs(v18, 17, "%s called with null completionBlock", v45, v46, v47, v48, v49, "[NRDeviceManager(Internal) disableDevice:queue:completionBlock:]");
    }
  }

  else
  {
    v21 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v36 = v21;
      v37 = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);

      if (!v37)
      {
        goto LABEL_11;
      }
    }

    v18 = nrCopyLogObj_1876();
    _NRLogWithArgs(v18, 17, "%s called with null queue", v38, v39, v40, v41, v42, "[NRDeviceManager(Internal) disableDevice:queue:completionBlock:]");
  }

LABEL_11:
  v19 = *MEMORY[0x277D85DE8];
}

void __65__NRDeviceManager_Internal__disableDevice_queue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    if (v5)
    {
      v22 = *MEMORY[0x277CCA450];
      v23[0] = v5;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    }

    else
    {
      v12 = 0;
    }

    v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v12];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to disable device %@: %@", v13, v14, v15, v16, v17, "");
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Disabled device %@", v6, v7, v8, v9, v10, "");
    }

    (*(*(a1 + 40) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)enableDevice:(id)device queue:(id)queue completionBlock:(id)block
{
  v53 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  queueCopy = queue;
  blockCopy = block;
  if (!deviceCopy)
  {
    v20 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v20;
      v24 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
        goto LABEL_20;
      }
    }

    v25 = nrCopyLogObj_1876();
    _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", v26, v27, v28, v29, v30, "");

LABEL_20:
    v31 = _os_log_pack_size();
    MEMORY[0x28223BE20](v31, v32);
    v33 = *__error();
    v34 = _os_log_pack_fill();
    *v34 = 136446466;
    *(v34 + 4) = "[NRDeviceManager(Internal) enableDevice:queue:completionBlock:]";
    *(v34 + 12) = 2080;
    *(v34 + 14) = "[NRDeviceManager(Internal) enableDevice:queue:completionBlock:]";
    v35 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v35);
  }

  v10 = blockCopy;
  if (queueCopy)
  {
    if (blockCopy)
    {
      v16 = [deviceCopy copy];
      if (nrCopyLogObj_onceToken_1880 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Enabling device %@", v11, v12, v13, v14, v15, "");
      }

      nrDeviceIdentifier = [v16 nrDeviceIdentifier];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __64__NRDeviceManager_Internal__enableDevice_queue_completionBlock___block_invoke;
      v50[3] = &unk_27996B3D0;
      v51 = v16;
      v52 = v10;
      v18 = v16;
      nrXPCEnableDeviceByNRUUID(nrDeviceIdentifier, queueCopy, v50);
    }

    else
    {
      v22 = nrCopyLogObj_1876();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v43 = v22;
        v44 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);

        if (!v44)
        {
          goto LABEL_11;
        }
      }

      v18 = nrCopyLogObj_1876();
      _NRLogWithArgs(v18, 17, "%s called with null completionBlock", v45, v46, v47, v48, v49, "[NRDeviceManager(Internal) enableDevice:queue:completionBlock:]");
    }
  }

  else
  {
    v21 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v36 = v21;
      v37 = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);

      if (!v37)
      {
        goto LABEL_11;
      }
    }

    v18 = nrCopyLogObj_1876();
    _NRLogWithArgs(v18, 17, "%s called with null queue", v38, v39, v40, v41, v42, "[NRDeviceManager(Internal) enableDevice:queue:completionBlock:]");
  }

LABEL_11:
  v19 = *MEMORY[0x277D85DE8];
}

void __64__NRDeviceManager_Internal__enableDevice_queue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    if (v5)
    {
      v22 = *MEMORY[0x277CCA450];
      v23[0] = v5;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    }

    else
    {
      v12 = 0;
    }

    v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v12];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to enable device %@: %@", v13, v14, v15, v16, v17, "");
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Enabled device %@", v6, v7, v8, v9, v10, "");
    }

    (*(*(a1 + 40) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)scrubAllDevicesWithQueue:(id)queue completionBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v12 = blockCopy;
  if (!queueCopy)
  {
    v13 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v15 = v13;
      v16 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);

      if (!v16)
      {
        goto LABEL_9;
      }
    }

    v17 = nrCopyLogObj_1876();
    _NRLogWithArgs(v17, 17, "%s called with null queue", v18, v19, v20, v21, v22, "[NRDeviceManager(Internal) scrubAllDevicesWithQueue:completionBlock:]");
LABEL_18:

    goto LABEL_9;
  }

  if (!blockCopy)
  {
    v14 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v14;
      v24 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

      if (!v24)
      {
        goto LABEL_9;
      }
    }

    v17 = nrCopyLogObj_1876();
    _NRLogWithArgs(v17, 17, "%s called with null completionBlock", v25, v26, v27, v28, v29, "[NRDeviceManager(Internal) scrubAllDevicesWithQueue:completionBlock:]");
    goto LABEL_18;
  }

  if (nrCopyLogObj_onceToken_1880 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Scrubbing all devices", v7, v8, v9, v10, v11, "");
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __70__NRDeviceManager_Internal__scrubAllDevicesWithQueue_completionBlock___block_invoke;
  v30[3] = &unk_27996B3F8;
  v31 = v12;
  nrXPCScrubAllDevices(queueCopy, v30);

LABEL_9:
}

void __70__NRDeviceManager_Internal__scrubAllDevicesWithQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    if (v5)
    {
      v20 = *MEMORY[0x277CCA450];
      v21[0] = v5;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    }

    else
    {
      v12 = 0;
    }

    v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v12];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to scrub all devices: %@", v13, v14, v15, v16, v17, "");
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Scrubbed all devices", v6, v7, v8, v9, v10, "");
    }

    (*(*(a1 + 32) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)scrubDevice:(id)device queue:(id)queue completionBlock:(id)block
{
  v53 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  queueCopy = queue;
  blockCopy = block;
  if (!deviceCopy)
  {
    v20 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v20;
      v24 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
        goto LABEL_20;
      }
    }

    v25 = nrCopyLogObj_1876();
    _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", v26, v27, v28, v29, v30, "");

LABEL_20:
    v31 = _os_log_pack_size();
    MEMORY[0x28223BE20](v31, v32);
    v33 = *__error();
    v34 = _os_log_pack_fill();
    *v34 = 136446466;
    *(v34 + 4) = "[NRDeviceManager(Internal) scrubDevice:queue:completionBlock:]";
    *(v34 + 12) = 2080;
    *(v34 + 14) = "[NRDeviceManager(Internal) scrubDevice:queue:completionBlock:]";
    v35 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v35);
  }

  v10 = blockCopy;
  if (queueCopy)
  {
    if (blockCopy)
    {
      v16 = [deviceCopy copy];
      if (nrCopyLogObj_onceToken_1880 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Scrubbing device %@", v11, v12, v13, v14, v15, "");
      }

      nrDeviceIdentifier = [v16 nrDeviceIdentifier];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __63__NRDeviceManager_Internal__scrubDevice_queue_completionBlock___block_invoke;
      v50[3] = &unk_27996B3D0;
      v51 = v16;
      v52 = v10;
      v18 = v16;
      nrXPCScrubDeviceByNRUUID(nrDeviceIdentifier, queueCopy, v50);
    }

    else
    {
      v22 = nrCopyLogObj_1876();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v43 = v22;
        v44 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);

        if (!v44)
        {
          goto LABEL_11;
        }
      }

      v18 = nrCopyLogObj_1876();
      _NRLogWithArgs(v18, 17, "%s called with null completionBlock", v45, v46, v47, v48, v49, "[NRDeviceManager(Internal) scrubDevice:queue:completionBlock:]");
    }
  }

  else
  {
    v21 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v36 = v21;
      v37 = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);

      if (!v37)
      {
        goto LABEL_11;
      }
    }

    v18 = nrCopyLogObj_1876();
    _NRLogWithArgs(v18, 17, "%s called with null queue", v38, v39, v40, v41, v42, "[NRDeviceManager(Internal) scrubDevice:queue:completionBlock:]");
  }

LABEL_11:
  v19 = *MEMORY[0x277D85DE8];
}

void __63__NRDeviceManager_Internal__scrubDevice_queue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    if (v5)
    {
      v22 = *MEMORY[0x277CCA450];
      v23[0] = v5;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    }

    else
    {
      v12 = 0;
    }

    v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v12];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to scrub device %@: %@", v13, v14, v15, v16, v17, "");
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Scrubbed device %@", v6, v7, v8, v9, v10, "");
    }

    (*(*(a1 + 40) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAllDevicesWithQueue:(id)queue completionBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v12 = blockCopy;
  if (!queueCopy)
  {
    v13 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v15 = v13;
      v16 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);

      if (!v16)
      {
        goto LABEL_9;
      }
    }

    v17 = nrCopyLogObj_1876();
    _NRLogWithArgs(v17, 17, "%s called with null queue", v18, v19, v20, v21, v22, "[NRDeviceManager(Internal) unregisterAllDevicesWithQueue:completionBlock:]");
LABEL_18:

    goto LABEL_9;
  }

  if (!blockCopy)
  {
    v14 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v14;
      v24 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

      if (!v24)
      {
        goto LABEL_9;
      }
    }

    v17 = nrCopyLogObj_1876();
    _NRLogWithArgs(v17, 17, "%s called with null completionBlock", v25, v26, v27, v28, v29, "[NRDeviceManager(Internal) unregisterAllDevicesWithQueue:completionBlock:]");
    goto LABEL_18;
  }

  if (nrCopyLogObj_onceToken_1880 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Unregistering all devices", v7, v8, v9, v10, v11, "");
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __75__NRDeviceManager_Internal__unregisterAllDevicesWithQueue_completionBlock___block_invoke;
  v30[3] = &unk_27996B3F8;
  v31 = v12;
  nrXPCUnregisterAllDevices(queueCopy, v30);

LABEL_9:
}

void __75__NRDeviceManager_Internal__unregisterAllDevicesWithQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    if (v5)
    {
      v20 = *MEMORY[0x277CCA450];
      v21[0] = v5;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    }

    else
    {
      v12 = 0;
    }

    v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v12];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to unregister all devices: %@", v13, v14, v15, v16, v17, "");
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Unregistered all devices", v6, v7, v8, v9, v10, "");
    }

    (*(*(a1 + 32) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)unregisterDevice:(id)device queue:(id)queue completionBlock:(id)block
{
  v53 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  queueCopy = queue;
  blockCopy = block;
  if (!deviceCopy)
  {
    v20 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v20;
      v24 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
        goto LABEL_20;
      }
    }

    v25 = nrCopyLogObj_1876();
    _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", v26, v27, v28, v29, v30, "");

LABEL_20:
    v31 = _os_log_pack_size();
    MEMORY[0x28223BE20](v31, v32);
    v33 = *__error();
    v34 = _os_log_pack_fill();
    *v34 = 136446466;
    *(v34 + 4) = "[NRDeviceManager(Internal) unregisterDevice:queue:completionBlock:]";
    *(v34 + 12) = 2080;
    *(v34 + 14) = "[NRDeviceManager(Internal) unregisterDevice:queue:completionBlock:]";
    v35 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v35);
  }

  v10 = blockCopy;
  if (queueCopy)
  {
    if (blockCopy)
    {
      v16 = [deviceCopy copy];
      if (nrCopyLogObj_onceToken_1880 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Unregistering device %@", v11, v12, v13, v14, v15, "");
      }

      nrDeviceIdentifier = [v16 nrDeviceIdentifier];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __68__NRDeviceManager_Internal__unregisterDevice_queue_completionBlock___block_invoke;
      v50[3] = &unk_27996B3D0;
      v51 = v16;
      v52 = v10;
      v18 = v16;
      nrXPCUnregisterDeviceByNRUUID(nrDeviceIdentifier, queueCopy, v50);
    }

    else
    {
      v22 = nrCopyLogObj_1876();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v43 = v22;
        v44 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);

        if (!v44)
        {
          goto LABEL_11;
        }
      }

      v18 = nrCopyLogObj_1876();
      _NRLogWithArgs(v18, 17, "%s called with null completionBlock", v45, v46, v47, v48, v49, "[NRDeviceManager(Internal) unregisterDevice:queue:completionBlock:]");
    }
  }

  else
  {
    v21 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v36 = v21;
      v37 = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);

      if (!v37)
      {
        goto LABEL_11;
      }
    }

    v18 = nrCopyLogObj_1876();
    _NRLogWithArgs(v18, 17, "%s called with null queue", v38, v39, v40, v41, v42, "[NRDeviceManager(Internal) unregisterDevice:queue:completionBlock:]");
  }

LABEL_11:
  v19 = *MEMORY[0x277D85DE8];
}

void __68__NRDeviceManager_Internal__unregisterDevice_queue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    if (v5)
    {
      v22 = *MEMORY[0x277CCA450];
      v23[0] = v5;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    }

    else
    {
      v12 = 0;
    }

    v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v12];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to unregister device %@: %@", v13, v14, v15, v16, v17, "");
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Unregistered device %@", v6, v7, v8, v9, v10, "");
    }

    (*(*(a1 + 40) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end