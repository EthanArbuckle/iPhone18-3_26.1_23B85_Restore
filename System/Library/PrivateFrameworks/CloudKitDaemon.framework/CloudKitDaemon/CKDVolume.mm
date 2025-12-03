@interface CKDVolume
+ (id)mountedVolumes;
+ (id)volumeForPath:(const char *)path;
- (CKDVolume)initWithVolumeUUID:(id)d deviceID:(id)iD mountToPath:(id)path;
- (id)CKPropertiesDescription;
@end

@implementation CKDVolume

+ (id)volumeForPath:(const char *)path
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  memset(v27, 0, 496);
  v20 = xmmword_225447C20;
  v21 = 0;
  if (getattrlist(path, &v20, &v26, 0x420uLL, 0))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v17 = v4;
      v18 = __error();
      v19 = strerror(*v18);
      *buf = 136446466;
      pathCopy = path;
      v24 = 2082;
      v25 = v19;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "getattrlist() failed for path %{public}s - %{public}s", buf, 0x16u);
    }

    v5 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    v8 = objc_msgSend_initWithUUIDBytes_(v6, v7, v27);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, &v26 + SDWORD2(v26) + 8);
    v11 = [CKDVolume alloc];
    v13 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, DWORD1(v26));
    v5 = objc_msgSend_initWithVolumeUUID_deviceID_mountToPath_(v11, v14, v8, v13, v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)mountedVolumes
{
  v13 = 0;
  v3 = getmntinfo_r_np(&v13, 2);
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v7 = objc_msgSend_initWithCapacity_(v4, v5, v3);
  if (v3 >= 1)
  {
    v8 = v3;
    v9 = 88;
    do
    {
      v11 = objc_msgSend_volumeForPath_(self, v6, v13 + v9);
      if (v11)
      {
        objc_msgSend_addObject_(v7, v10, v11);
      }

      v9 += 2168;
      --v8;
    }

    while (v8);
  }

  if (v13)
  {
    free(v13);
  }

  return v7;
}

- (CKDVolume)initWithVolumeUUID:(id)d deviceID:(id)iD mountToPath:(id)path
{
  dCopy = d;
  iDCopy = iD;
  pathCopy = path;
  if (!dCopy || !iDCopy)
  {
    __assert_rtn("[CKDVolume initWithVolumeUUID:deviceID:mountToPath:]", "CKDVolume.m", 63, "volumeUUID && deviceID && volumeUUID && deviceID");
  }

  v12 = pathCopy;
  v16.receiver = self;
  v16.super_class = CKDVolume;
  v13 = [(CKDVolume *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_volumeUUID, d);
    objc_storeStrong(&v14->_deviceID, iD);
    objc_storeStrong(&v14->_mountPath, path);
  }

  return v14;
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_volumeUUID(self, a2, v2);
  v8 = objc_msgSend_UUIDString(v5, v6, v7);
  v11 = objc_msgSend_deviceID(self, v9, v10);
  v14 = objc_msgSend_mountPath(self, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v4, v15, @"volumeUUID=%@, deviceID=%@, mountPath=%@", v8, v11, v14);

  return v16;
}

@end