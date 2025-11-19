@interface CHTerminal
- (id)description;
- (id)getStringValue;
- (id)getValue;
@end

@implementation CHTerminal

- (id)getValue
{
  v7 = objc_msgSend_name(self, a2, v2, v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"0", v9, v10, v11);

  if (isEqualToString)
  {
    return &unk_1EF1ED108;
  }

  v19 = objc_msgSend_name(self, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_isEqualToString_(v19, v20, @"1", v21, v22, v23);

  if (v24)
  {
    return &unk_1EF1ED120;
  }

  v30 = objc_msgSend_name(self, v25, v26, v27, v28, v29);
  v35 = objc_msgSend_isEqualToString_(v30, v31, @"2", v32, v33, v34);

  if (v35)
  {
    return &unk_1EF1ED138;
  }

  v41 = objc_msgSend_name(self, v36, v37, v38, v39, v40);
  v46 = objc_msgSend_isEqualToString_(v41, v42, @"3", v43, v44, v45);

  if (v46)
  {
    return &unk_1EF1ED150;
  }

  v52 = objc_msgSend_name(self, v47, v48, v49, v50, v51);
  v57 = objc_msgSend_isEqualToString_(v52, v53, @"4", v54, v55, v56);

  if (v57)
  {
    return &unk_1EF1ED168;
  }

  v63 = objc_msgSend_name(self, v58, v59, v60, v61, v62);
  v68 = objc_msgSend_isEqualToString_(v63, v64, @"5", v65, v66, v67);

  if (v68)
  {
    return &unk_1EF1ED180;
  }

  v74 = objc_msgSend_name(self, v69, v70, v71, v72, v73);
  v79 = objc_msgSend_isEqualToString_(v74, v75, @"6", v76, v77, v78);

  if (v79)
  {
    return &unk_1EF1ED198;
  }

  v85 = objc_msgSend_name(self, v80, v81, v82, v83, v84);
  v90 = objc_msgSend_isEqualToString_(v85, v86, @"7", v87, v88, v89);

  if (v90)
  {
    return &unk_1EF1ED1B0;
  }

  v96 = objc_msgSend_name(self, v91, v92, v93, v94, v95);
  v101 = objc_msgSend_isEqualToString_(v96, v97, @"8", v98, v99, v100);

  if (v101)
  {
    return &unk_1EF1ED1C8;
  }

  v107 = objc_msgSend_name(self, v102, v103, v104, v105, v106);
  v112 = objc_msgSend_isEqualToString_(v107, v108, @"9", v109, v110, v111);

  if (v112)
  {
    return &unk_1EF1ED1E0;
  }

  v118 = objc_msgSend_name(self, v113, v114, v115, v116, v117);
  v123 = objc_msgSend_isEqualToString_(v118, v119, @"e", v120, v121, v122);

  if (v123)
  {
    return &unk_1EF1EDFD0;
  }

  v129 = objc_msgSend_name(self, v124, v125, v126, v127, v128);
  v134 = objc_msgSend_isEqualToString_(v129, v130, @"π", v131, v132, v133);

  if (v134)
  {
    return &unk_1EF1EDFE0;
  }

  else
  {
    return 0;
  }
}

- (id)getStringValue
{
  v7 = objc_msgSend_name(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_name(self, v8, v9, v10, v11, v12);
  isEqualToString = objc_msgSend_isEqualToString_(v13, v14, @"e", v15, v16, v17);

  if (isEqualToString)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"%0.6f", v21, v22, v23, 0x4005BF0A8B145769);
  }

  else
  {
    v24 = objc_msgSend_name(self, v19, v20, v21, v22, v23);
    v29 = objc_msgSend_isEqualToString_(v24, v25, @"π", v26, v27, v28);

    if (!v29)
    {
      goto LABEL_6;
    }

    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v30, @"%0.6f", v31, v32, v33, 0x400921FB54442D18);
  }
  v34 = ;

  v7 = v34;
LABEL_6:

  return v7;
}

- (id)description
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_name(self, a2, v2, v3, v4, v5);
  v14 = objc_msgSend_inputRange(self, v9, v10, v11, v12, v13);
  v19 = objc_msgSend_stringWithFormat_(v7, v15, @"[%@] : %lu", v16, v17, v18, v8, v14);

  return v19;
}

@end