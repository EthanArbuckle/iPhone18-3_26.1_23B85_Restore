@interface IMDCoreSpotlightMapsLinkIndexer
- (id)_addressComponentsFromMapMetadata:(id)a3;
- (void)_mapPropertiesFromMetadata:(id)a3 toAttributes:(id)a4;
@end

@implementation IMDCoreSpotlightMapsLinkIndexer

- (id)_addressComponentsFromMapMetadata:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_msgSend_address(v3, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_address(v3, v8, v9);
    objc_msgSend_addObject_(v4, v11, v10);
  }

  v12 = objc_msgSend_addressComponents(v3, v8, v9);
  v15 = objc_msgSend_street(v12, v13, v14);

  if (v15)
  {
    v18 = objc_msgSend_street(v12, v16, v17);
    objc_msgSend_addObject_(v4, v19, v18);
  }

  v20 = objc_msgSend_subLocality(v12, v16, v17);

  if (v20)
  {
    v23 = objc_msgSend_subLocality(v12, v21, v22);
    objc_msgSend_addObject_(v4, v24, v23);
  }

  v25 = objc_msgSend_city(v12, v21, v22);

  if (v25)
  {
    v28 = objc_msgSend_city(v12, v26, v27);
    objc_msgSend_addObject_(v4, v29, v28);
  }

  v30 = objc_msgSend_subAdministrativeArea(v12, v26, v27);

  if (v30)
  {
    v33 = objc_msgSend_subAdministrativeArea(v12, v31, v32);
    objc_msgSend_addObject_(v4, v34, v33);
  }

  v35 = objc_msgSend_state(v12, v31, v32);

  if (v35)
  {
    v38 = objc_msgSend_state(v12, v36, v37);
    objc_msgSend_addObject_(v4, v39, v38);
  }

  v40 = objc_msgSend_postalCode(v12, v36, v37);

  if (v40)
  {
    v43 = objc_msgSend_postalCode(v12, v41, v42);
    objc_msgSend_addObject_(v4, v44, v43);
  }

  v45 = objc_msgSend_country(v12, v41, v42);

  if (v45)
  {
    v48 = objc_msgSend_country(v12, v46, v47);
    objc_msgSend_addObject_(v4, v49, v48);
  }

  v50 = objc_msgSend_ISOCountryCode(v12, v46, v47);

  if (v50)
  {
    v53 = objc_msgSend_ISOCountryCode(v12, v51, v52);
    objc_msgSend_addObject_(v4, v54, v53);
  }

  objc_msgSend_count(v4, v51, v52);
  v57 = objc_msgSend_copy(v4, v55, v56);

  return v57;
}

- (void)_mapPropertiesFromMetadata:(id)a3 toAttributes:(id)a4
{
  v56[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  objc_msgSend_setMessageType_(v6, v8, @"loc");
  v11 = objc_msgSend_specialization(v7, v9, v10);

  v14 = objc_msgSend_name(v11, v12, v13);
  objc_msgSend__insertLinkName_toAttributes_(self, v15, v14, v6);

  v18 = objc_msgSend_addressComponents(v11, v16, v17);
  v21 = objc_msgSend_postalCode(v18, v19, v20);
  objc_msgSend_setPostalCode_(v6, v22, v21);

  v25 = objc_msgSend_addressComponents(v11, v23, v24);
  v28 = objc_msgSend_city(v25, v26, v27);
  objc_msgSend_setCity_(v6, v29, v28);

  v32 = objc_msgSend_addressComponents(v11, v30, v31);
  v35 = objc_msgSend_state(v32, v33, v34);
  objc_msgSend_setStateOrProvince_(v6, v36, v35);

  v39 = objc_msgSend_addressComponents(v11, v37, v38);
  v42 = objc_msgSend_country(v39, v40, v41);
  objc_msgSend_setCountry_(v6, v43, v42);

  v46 = objc_msgSend_category(v11, v44, v45);

  if (v46)
  {
    v49 = objc_msgSend_category(v11, v47, v48);
    v56[0] = v49;
    v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v50, v56, 1);
    objc_msgSend_setAddressCategories_(v6, v52, v51);
  }

  v53 = objc_msgSend__addressComponentsFromMapMetadata_(self, v47, v11);
  objc_msgSend_setAddresses_(v6, v54, v53);

  v55 = *MEMORY[0x1E69E9840];
}

@end