@interface FlexSongMetaDataReader_V2
+ (BOOL)isSongAtPath:(id)a3;
+ (id)songAtPath:(id)a3;
@end

@implementation FlexSongMetaDataReader_V2

+ (BOOL)isSongAtPath:(id)a3
{
  v5 = objc_msgSend__pathToMetadata_(a1, a2, a3, v3, v4);
  v16 = 0;
  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7, v8, v9);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v10, v11, v5, &v16, v12);
  v14 = v16;

  return isDirectory & (v14 ^ 1);
}

+ (id)songAtPath:(id)a3
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_class();
  if (objc_msgSend_isSongAtPath_(v4, v5, v3, v6, v7))
  {
    v8 = objc_opt_class();
    v12 = objc_msgSend__pathToMetadata_(v8, v9, v3, v10, v11);
    v17 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x277CBEA90], v13, v12, v14, v15);
    if (v17)
    {
      v59 = 0;
      v18 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v16, v17, 0, &v59);
      v22 = v59;
      if (v18)
      {
        v23 = objc_msgSend_objectForKey_(v18, v19, @"contentVersion", v20, v21);

        if (v23)
        {
          v27 = objc_msgSend_objectForKeyedSubscript_(v18, v24, @"contentVersion", v25, v26);
          v32 = objc_msgSend_integerValue(v27, v28, v29, v30, v31);
        }

        else
        {
          v32 = 1;
        }

        v34 = objc_msgSend_objectForKey_(v18, v24, @"compatibilityVersion", v25, v26);

        if (v34)
        {
          v38 = objc_msgSend_objectForKeyedSubscript_(v18, v35, @"compatibilityVersion", v36, v37);
          v43 = objc_msgSend_integerValue(v38, v39, v40, v41, v42);
        }

        else
        {
          v43 = 1;
        }

        v44 = [FMSongAsset alloc];
        v48 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v45, v3, v46, v47);
        v50 = objc_msgSend_initWithAssetID_assetStatus_localURL_contentVersion_compatibilityVersion_(v44, v49, @"FMSongBundleAssetID", 0, v48, v32, v43);

        v51 = [FlexSong alloc];
        v60[0] = v50;
        v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v52, v60, 1, v53);
        v33 = objc_msgSend_initWithDictionary_assets_(v51, v55, v18, v54, v56);
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v57 = *MEMORY[0x277D85DE8];

  return v33;
}

@end