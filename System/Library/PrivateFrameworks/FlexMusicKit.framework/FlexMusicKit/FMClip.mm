@interface FMClip
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FMClip

- (id)copyWithZone:(_NSZone *)zone
{
  v9 = objc_alloc_init(objc_opt_class());
  if (v9)
  {
    v9[2] = objc_msgSend_position(self, v5, v6, v7, v8);
    v14 = objc_msgSend_url(self, v10, v11, v12, v13);
    v18 = objc_msgSend_copyWithZone_(v14, v15, zone, v16, v17);
    v19 = v9[1];
    v9[1] = v18;

    v9[3] = objc_msgSend_offset(self, v20, v21, v22, v23);
    v9[4] = objc_msgSend_duration(self, v24, v25, v26, v27);
  }

  return v9;
}

@end