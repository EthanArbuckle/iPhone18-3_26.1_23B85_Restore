@interface CKDVolumeManager
+ (id)deviceIDForVolumeUUID:(id)d;
+ (id)volumeForDeviceID:(id)d;
+ (id)volumeForVolumeUUID:(id)d;
+ (id)volumeUUIDForDeviceID:(id)d;
+ (void)_rebuildVolumes;
+ (void)initialize;
@end

@implementation CKDVolumeManager

+ (void)initialize
{
  if (!qword_280D580A0)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.cloudd.volumeManager", v4);
    v3 = qword_280D580A0;
    qword_280D580A0 = v2;
  }
}

+ (void)_rebuildVolumes
{
  v32 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(qword_280D580A0);
  v4 = objc_msgSend_mountedVolumes(CKDVolume, v2, v3);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = qword_280D580A8;
  qword_280D580A8 = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = qword_280D580B0;
  qword_280D580B0 = v7;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v4;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v27, v31, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = qword_280D580A8;
        v19 = objc_msgSend_volumeUUID(v17, v12, v13, v27);
        objc_msgSend_setObject_forKey_(v18, v20, v17, v19);

        if ((objc_msgSend_isRootVolume(v17, v21, v22) & 1) == 0)
        {
          v23 = qword_280D580B0;
          v24 = objc_msgSend_deviceID(v17, v12, v13);
          objc_msgSend_setObject_forKey_(v23, v25, v17, v24);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v27, v31, 16);
    }

    while (v14);
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (id)volumeForVolumeUUID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_225073E90;
  v17 = sub_2250734D4;
  v18 = 0;
  v5 = qword_280D580A0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22512609C;
  block[3] = &unk_278546268;
  v11 = &v13;
  selfCopy = self;
  v10 = dCopy;
  v6 = dCopy;
  dispatch_sync(v5, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

+ (id)volumeForDeviceID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_225073E90;
  v17 = sub_2250734D4;
  v18 = 0;
  v5 = qword_280D580A0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225126214;
  block[3] = &unk_278546268;
  v11 = &v13;
  selfCopy = self;
  v10 = dCopy;
  v6 = dCopy;
  dispatch_sync(v5, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

+ (id)deviceIDForVolumeUUID:(id)d
{
  v3 = objc_msgSend_volumeForVolumeUUID_(self, a2, d);
  v6 = objc_msgSend_deviceID(v3, v4, v5);

  return v6;
}

+ (id)volumeUUIDForDeviceID:(id)d
{
  v3 = objc_msgSend_volumeForDeviceID_(self, a2, d);
  v6 = objc_msgSend_volumeUUID(v3, v4, v5);

  return v6;
}

@end