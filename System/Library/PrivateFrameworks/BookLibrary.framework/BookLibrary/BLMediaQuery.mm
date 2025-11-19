@interface BLMediaQuery
+ (MPMediaQuery)audiobooksNonPreordersQuery;
+ (MPMediaQuery)audiobooksQuery;
@end

@implementation BLMediaQuery

+ (MPMediaQuery)audiobooksQuery
{
  v2 = sub_241D0E308();

  return objc_msgSend_audiobooksQuery(v2, v3, v4, v5);
}

+ (MPMediaQuery)audiobooksNonPreordersQuery
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = sub_241D0E308();
  v6 = objc_msgSend_audiobooksQuery(v2, v3, v4, v5);
  v7 = sub_241D11960();
  v8 = *MEMORY[0x277CD57A8];
  if (objc_msgSend_canFilterByProperty_(v7, v9, *MEMORY[0x277CD57A8], v10) & 1) != 0 || (v11 = sub_241D11A98(), (objc_msgSend_canFilterByProperty_(v11, v12, v8, v13)))
  {
    v14 = sub_241D11BD0();
    v16 = objc_msgSend_predicateWithValue_forProperty_(v14, v15, &unk_2853E1F90, v8);
    objc_msgSend_addFilterPredicate_(v6, v17, v16, v18);
  }

  else
  {
    v19 = BLDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = v8;
      _os_log_impl(&dword_241D0D000, v19, OS_LOG_TYPE_ERROR, "MPMediaPropertyPredicate cannot filter using the %@ property.", &v22, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v6;
}

@end