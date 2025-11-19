@interface MDMSharedDefinitions
+ (id)oidsAnonymous:(BOOL)a3 nonce:(BOOL)a4 coresidency:(BOOL)a5;
@end

@implementation MDMSharedDefinitions

+ (id)oidsAnonymous:(BOOL)a3 nonce:(BOOL)a4 coresidency:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v46 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB18];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v9 = getkMAOptionsBAAOIDEDASEPOSVersionSymbolLoc_ptr;
  v41 = getkMAOptionsBAAOIDEDASEPOSVersionSymbolLoc_ptr;
  if (!getkMAOptionsBAAOIDEDASEPOSVersionSymbolLoc_ptr)
  {
    v10 = DeviceIdentityLibrary();
    v39[3] = dlsym(v10, "kMAOptionsBAAOIDEDASEPOSVersion");
    getkMAOptionsBAAOIDEDASEPOSVersionSymbolLoc_ptr = v39[3];
    v9 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v9)
  {
    goto LABEL_35;
  }

  v11 = *v9;
  v44[0] = v11;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v12 = getkMAOptionsBAAOIDEDAFirmwareVersionSymbolLoc_ptr;
  v41 = getkMAOptionsBAAOIDEDAFirmwareVersionSymbolLoc_ptr;
  if (!getkMAOptionsBAAOIDEDAFirmwareVersionSymbolLoc_ptr)
  {
    v13 = DeviceIdentityLibrary();
    v39[3] = dlsym(v13, "kMAOptionsBAAOIDEDAFirmwareVersion");
    getkMAOptionsBAAOIDEDAFirmwareVersionSymbolLoc_ptr = v39[3];
    v12 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v12)
  {
    goto LABEL_35;
  }

  v14 = *v12;
  v44[1] = v14;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v15 = getkMAOptionsBAAOIDEDAOSVersionSymbolLoc_ptr;
  v41 = getkMAOptionsBAAOIDEDAOSVersionSymbolLoc_ptr;
  if (!getkMAOptionsBAAOIDEDAOSVersionSymbolLoc_ptr)
  {
    v16 = DeviceIdentityLibrary();
    v39[3] = dlsym(v16, "kMAOptionsBAAOIDEDAOSVersion");
    getkMAOptionsBAAOIDEDAOSVersionSymbolLoc_ptr = v39[3];
    v15 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v15)
  {
    goto LABEL_35;
  }

  v17 = *v15;
  v44[2] = v17;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v18 = getkMAOptionsBAAOIDEDAProductTypeSymbolLoc_ptr;
  v41 = getkMAOptionsBAAOIDEDAProductTypeSymbolLoc_ptr;
  if (!getkMAOptionsBAAOIDEDAProductTypeSymbolLoc_ptr)
  {
    v19 = DeviceIdentityLibrary();
    v39[3] = dlsym(v19, "kMAOptionsBAAOIDEDAProductType");
    getkMAOptionsBAAOIDEDAProductTypeSymbolLoc_ptr = v39[3];
    v18 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v18)
  {
    goto LABEL_35;
  }

  v45 = *v18;
  v20 = MEMORY[0x277CBEA60];
  v21 = v45;
  v22 = [v20 arrayWithObjects:v44 count:4];

  v23 = [v8 arrayWithArray:v22];

  if (!a3)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v24 = getkMAOptionsBAAOIDEDASerialNumberSymbolLoc_ptr;
    v41 = getkMAOptionsBAAOIDEDASerialNumberSymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDEDASerialNumberSymbolLoc_ptr)
    {
      v25 = DeviceIdentityLibrary();
      v39[3] = dlsym(v25, "kMAOptionsBAAOIDEDASerialNumber");
      getkMAOptionsBAAOIDEDASerialNumberSymbolLoc_ptr = v39[3];
      v24 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (!v24)
    {
      goto LABEL_35;
    }

    v26 = *v24;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v27 = getkMAOptionsBAAOIDEDAUDIDSymbolLoc_ptr;
    v41 = getkMAOptionsBAAOIDEDAUDIDSymbolLoc_ptr;
    v42 = v26;
    if (!getkMAOptionsBAAOIDEDAUDIDSymbolLoc_ptr)
    {
      v28 = DeviceIdentityLibrary();
      v39[3] = dlsym(v28, "kMAOptionsBAAOIDEDAUDID");
      getkMAOptionsBAAOIDEDAUDIDSymbolLoc_ptr = v39[3];
      v27 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (!v27)
    {
      goto LABEL_35;
    }

    v43 = *v27;
    v29 = MEMORY[0x277CBEA60];
    v30 = v43;
    v31 = [v29 arrayWithObjects:&v42 count:2];

    [v23 addObjectsFromArray:v31];
  }

  if (v5 && [MEMORY[0x277D034F8] isMDACoResidencyEnabled])
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v32 = getkMAOptionsBAAOIDEDAAttestationPublicKeySymbolLoc_ptr;
    v41 = getkMAOptionsBAAOIDEDAAttestationPublicKeySymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDEDAAttestationPublicKeySymbolLoc_ptr)
    {
      v33 = DeviceIdentityLibrary();
      v39[3] = dlsym(v33, "kMAOptionsBAAOIDEDAAttestationPublicKey");
      getkMAOptionsBAAOIDEDAAttestationPublicKeySymbolLoc_ptr = v39[3];
      v32 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (!v32)
    {
      goto LABEL_35;
    }

    [v23 addObject:*v32];
  }

  if (!v6)
  {
    goto LABEL_32;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v34 = getkMAOptionsBAAOIDEDANonceSymbolLoc_ptr;
  v41 = getkMAOptionsBAAOIDEDANonceSymbolLoc_ptr;
  if (!getkMAOptionsBAAOIDEDANonceSymbolLoc_ptr)
  {
    v35 = DeviceIdentityLibrary();
    v39[3] = dlsym(v35, "kMAOptionsBAAOIDEDANonce");
    getkMAOptionsBAAOIDEDANonceSymbolLoc_ptr = v39[3];
    v34 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v34)
  {
LABEL_35:
    +[MDMSharedDefinitions oidsAnonymous:nonce:coresidency:];
    __break(1u);
  }

  [v23 addObject:*v34];
LABEL_32:
  v36 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (uint64_t)oidsAnonymous:nonce:coresidency:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return +[(MDMUserClient *)v0];
}

@end