@interface GDInteraction
- (BOOL)isEqual:(id)a3;
- (GDInteraction)initWithStartDate:(id)a3 endDate:(id)a4 bundleId:(id)a5 mechanism:(int64_t)a6 direction:(int64_t)a7 sender:(id)a8 recipients:(id)a9 selfParticipantStatus:(int64_t)a10;
@end

@implementation GDInteraction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v9 = objc_msgSend_startDate(self, v6, v7, v8);
    v13 = objc_msgSend_startDate(v5, v10, v11, v12);
    if (!objc_msgSend_isEqual_(v9, v14, v13, v15))
    {
      v68 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v19 = objc_msgSend_endDate(self, v16, v17, v18);
    v23 = objc_msgSend_endDate(v5, v20, v21, v22);
    if (!objc_msgSend_isEqual_(v19, v24, v23, v25))
    {
      v68 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v29 = objc_msgSend_bundleId(self, v26, v27, v28);
    v33 = objc_msgSend_bundleId(v5, v30, v31, v32);
    if (!objc_msgSend_isEqual_(v29, v34, v33, v35) || (v39 = objc_msgSend_mechanism(self, v36, v37, v38), v39 != objc_msgSend_mechanism(v5, v40, v41, v42)) || (v46 = objc_msgSend_direction(self, v43, v44, v45), v46 != objc_msgSend_direction(v5, v47, v48, v49)))
    {
      v68 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v92 = objc_msgSend_sender(self, v50, v51, v52);
    if (v92 || (objc_msgSend_sender(v5, v53, v54, v55), (v88 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v56 = objc_msgSend_sender(self, v53, v54, v55);
      v60 = objc_msgSend_sender(v5, v57, v58, v59);
      v91 = v56;
      v61 = v56;
      v62 = v60;
      if (!objc_msgSend_isEqual_(v61, v63, v60, v64))
      {
        v68 = 0;
        goto LABEL_26;
      }

      v90 = 1;
      objc_msgSend_recipients(self, v65, v66, v67, v62, v88);
    }

    else
    {
      v90 = 0;
      objc_msgSend_recipients(self, v53, v54, v55, v86, 0);
    }
    v70 = ;
    v74 = objc_msgSend_recipients(v5, v71, v72, v73);
    v89 = v70;
    v75 = v70;
    v76 = v74;
    if (objc_msgSend_isEqual_(v75, v77, v74, v78))
    {
      v82 = objc_msgSend_selfParticipantStatus(self, v79, v80, v81);
      v68 = v82 == objc_msgSend_selfParticipantStatus(v5, v83, v84, v85);

      if ((v90 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {

      v68 = 0;
      if (!v90)
      {
LABEL_27:
        if (!v92)
        {
        }

        goto LABEL_15;
      }
    }

    v62 = v87;
LABEL_26:

    goto LABEL_27;
  }

  v68 = 0;
LABEL_18:

  return v68;
}

- (GDInteraction)initWithStartDate:(id)a3 endDate:(id)a4 bundleId:(id)a5 mechanism:(int64_t)a6 direction:(int64_t)a7 sender:(id)a8 recipients:(id)a9 selfParticipantStatus:(int64_t)a10
{
  v16 = a3;
  v17 = a4;
  v24 = a5;
  v23 = a8;
  v18 = a9;
  v25.receiver = self;
  v25.super_class = GDInteraction;
  v19 = [(GDInteraction *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_startDate, a3);
    objc_storeStrong(&v20->_endDate, a4);
    objc_storeStrong(&v20->_bundleId, a5);
    v20->_mechanism = a6;
    v20->_direction = a7;
    objc_storeStrong(&v20->_sender, a8);
    objc_storeStrong(&v20->_recipients, a9);
    v20->_selfParticipantStatus = a10;
  }

  return v20;
}

@end