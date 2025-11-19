@interface FlexTransition
+ (int64_t)validFadeLengthForLength:(int64_t)a3;
- (BOOL)isDefaultTransition;
- (FlexTransition)init;
- (FlexTransition)initWithDictionary:(id)a3;
- (FlexTransition)initWithTransitionSegmentNamed:(id)a3 prevented:(BOOL)a4 fadeOut:(int64_t)a5 fadeIn:(int64_t)a6 useNextSegmentForFadeOut:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsDictionary;
@end

@implementation FlexTransition

- (FlexTransition)init
{
  v6.receiver = self;
  v6.super_class = FlexTransition;
  v2 = [(FlexTransition *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_prevented = 0;
    transitionSegmentName = v2->_transitionSegmentName;
    v2->_transitionSegmentName = 0;

    v3->_useNextSegmentForFadeOut = 0;
    v3->_fadeOut = 0;
    v3->_fadeIn = 0;
  }

  return v3;
}

- (FlexTransition)initWithTransitionSegmentNamed:(id)a3 prevented:(BOOL)a4 fadeOut:(int64_t)a5 fadeIn:(int64_t)a6 useNextSegmentForFadeOut:(BOOL)a7
{
  v13 = a3;
  v23.receiver = self;
  v23.super_class = FlexTransition;
  v14 = [(FlexTransition *)&v23 init];
  v15 = v14;
  if (v14)
  {
    v14->_prevented = a4;
    objc_storeStrong(&v14->_transitionSegmentName, a3);
    v15->_fadeOut = objc_msgSend_validFadeLengthForLength_(FlexTransition, v16, a5, v17, v18);
    v15->_fadeIn = objc_msgSend_validFadeLengthForLength_(FlexTransition, v19, a6, v20, v21);
    v15->_useNextSegmentForFadeOut = a7;
  }

  return v15;
}

- (FlexTransition)initWithDictionary:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = FlexTransition;
  v8 = [(FlexTransition *)&v52 init];
  if (v8)
  {
    v9 = objc_msgSend_objectForKey_(v4, v5, @"prevented", v6, v7);
    v8->_prevented = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13);

    v17 = objc_msgSend_objectForKey_(v4, v14, @"fadeOut", v15, v16);
    v22 = objc_msgSend_integerValue(v17, v18, v19, v20, v21);

    v8->_fadeOut = objc_msgSend_validFadeLengthForLength_(FlexTransition, v23, v22, v24, v25);
    v29 = objc_msgSend_objectForKey_(v4, v26, @"fadeIn", v27, v28);
    v34 = objc_msgSend_integerValue(v29, v30, v31, v32, v33);

    v8->_fadeIn = objc_msgSend_validFadeLengthForLength_(FlexTransition, v35, v34, v36, v37);
    v41 = objc_msgSend_objectForKey_(v4, v38, @"transitionSegmentName", v39, v40);
    transitionSegmentName = v8->_transitionSegmentName;
    v8->_transitionSegmentName = v41;

    v46 = objc_msgSend_objectForKey_(v4, v43, @"useNextSegmentForFadeOut", v44, v45);
    v8->_useNextSegmentForFadeOut = objc_msgSend_BOOLValue(v46, v47, v48, v49, v50);
  }

  return v8;
}

- (id)encodeAsDictionary
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v7 = MEMORY[0x277CCABB0];
  v12 = objc_msgSend_prevented(self, v8, v9, v10, v11);
  v16 = objc_msgSend_numberWithBool_(v7, v13, v12, v14, v15);
  objc_msgSend_setValue_forKey_(v6, v17, v16, @"prevented", v18);

  v19 = MEMORY[0x277CCABB0];
  v24 = objc_msgSend_fadeOut(self, v20, v21, v22, v23);
  v28 = objc_msgSend_numberWithInteger_(v19, v25, v24, v26, v27);
  objc_msgSend_setValue_forKey_(v6, v29, v28, @"fadeOut", v30);

  v31 = MEMORY[0x277CCABB0];
  v36 = objc_msgSend_fadeIn(self, v32, v33, v34, v35);
  v40 = objc_msgSend_numberWithInteger_(v31, v37, v36, v38, v39);
  objc_msgSend_setValue_forKey_(v6, v41, v40, @"fadeIn", v42);

  v47 = objc_msgSend_transitionSegmentName(self, v43, v44, v45, v46);

  if (v47)
  {
    v52 = objc_msgSend_transitionSegmentName(self, v48, v49, v50, v51);
    objc_msgSend_setValue_forKey_(v6, v53, v52, @"transitionSegmentName", v54);
  }

  if (objc_msgSend_useNextSegmentForFadeOut(self, v48, v49, v50, v51))
  {
    v59 = MEMORY[0x277CCABB0];
    SegmentForFadeOut = objc_msgSend_useNextSegmentForFadeOut(self, v55, v56, v57, v58);
    v64 = objc_msgSend_numberWithBool_(v59, v61, SegmentForFadeOut, v62, v63);
    objc_msgSend_setValue_forKey_(v6, v65, v64, @"useNextSegmentForFadeOut", v66);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9 = objc_alloc_init(objc_opt_class());
  if (v9)
  {
    v9[8] = objc_msgSend_prevented(self, v5, v6, v7, v8);
    *(v9 + 2) = objc_msgSend_fadeOut(self, v10, v11, v12, v13);
    *(v9 + 3) = objc_msgSend_fadeIn(self, v14, v15, v16, v17);
    v22 = objc_msgSend_transitionSegmentName(self, v18, v19, v20, v21);
    v26 = objc_msgSend_copyWithZone_(v22, v23, a3, v24, v25);
    v27 = *(v9 + 4);
    *(v9 + 4) = v26;

    v9[9] = objc_msgSend_useNextSegmentForFadeOut(self, v28, v29, v30, v31);
  }

  return v9;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_transitionSegmentName(self, a2, v2, v3, v4);
  if (objc_msgSend_prevented(self, v8, v9, v10, v11))
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v17 = objc_msgSend_fadeOut(self, v12, v13, v14, v15);
  v22 = objc_msgSend_fadeIn(self, v18, v19, v20, v21);
  if (objc_msgSend_useNextSegmentForFadeOut(self, v23, v24, v25, v26))
  {
    objc_msgSend_stringWithFormat_(v6, v27, @"transitionSegmentName: %@ prevented:%@ fadeOut: %ld, fadeIn: %ld useNext:%@", v28, v29, v7, v16, v17, v22, @"Y");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v6, v27, @"transitionSegmentName: %@ prevented:%@ fadeOut: %ld, fadeIn: %ld useNext:%@", v28, v29, v7, v16, v17, v22, @"N");
  }
  v30 = ;

  return v30;
}

- (BOOL)isDefaultTransition
{
  v10 = objc_msgSend_transitionSegmentName(self, a2, v2, v3, v4);
  if (v10 || (objc_msgSend_prevented(self, v6, v7, v8, v9) & 1) != 0 || objc_msgSend_fadeOut(self, v11, v12, v13, v14) || objc_msgSend_fadeIn(self, v15, v16, v17, v18))
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v23 = objc_msgSend_useNextSegmentForFadeOut(self, v19, v20, v21, v22) ^ 1;
  }

  return v23;
}

+ (int64_t)validFadeLengthForLength:(int64_t)a3
{
  v3 = 25;
  if (a3 > 0x19)
  {
    v3 = a3;
  }

  if (v3 >= 0x7D0)
  {
    v3 = 2000;
  }

  if (a3 <= 0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

@end