@interface FlexSegmentAssemblyInfo
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation FlexSegmentAssemblyInfo

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_segment(self, a2, v2, v3, v4);
  v12 = objc_msgSend_name(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_barsUsed(self, v13, v14, v15, v16);
  v22 = objc_msgSend_segment(self, v18, v19, v20, v21);
  v27 = objc_msgSend_bars(v22, v23, v24, v25, v26);
  v32 = objc_msgSend_duration(self, v28, v29, v30, v31);
  v36 = objc_msgSend_stringWithFormat_(v6, v33, @"segment: %@, barsUsed: %lu (%lu), duration: %1.2f", v34, v35, v12, v17, v27, (v32 / 48000.0));

  return v36;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  v18 = objc_msgSend_init(v9, v10, v11, v12, v13);
  if (v18)
  {
    v19 = objc_msgSend_segment(self, v14, v15, v16, v17);
    v23 = objc_msgSend_copyWithZone_(v19, v20, zone, v21, v22);
    v24 = v18[1];
    v18[1] = v23;

    v18[2] = objc_msgSend_barsUsed(self, v25, v26, v27, v28);
    v33 = objc_msgSend_url(self, v29, v30, v31, v32);
    v37 = objc_msgSend_copyWithZone_(v33, v34, zone, v35, v36);
    v38 = v18[3];
    v18[3] = v37;

    v18[4] = objc_msgSend_offset(self, v39, v40, v41, v42);
    v18[5] = objc_msgSend_duration(self, v43, v44, v45, v46);
  }

  return v18;
}

@end