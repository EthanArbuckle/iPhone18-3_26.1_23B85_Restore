@interface XRCapabilityRequirements
+ (id)requirementsFromContext:(id)a3;
+ (id)requirementsFromPlist:(id)a3 error:(id *)a4;
- (BOOL)checkRequirementsAgainstRegistery:(id)a3 error:(id *)a4;
- (XRCapabilityRequirements)init;
- (id)plistRepresentation;
@end

@implementation XRCapabilityRequirements

+ (id)requirementsFromContext:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_24809CCD0;
  v10[3] = &unk_278EFC148;
  v5 = v4;
  v11 = v5;
  objc_msgSend_enumerateRequiredCapabilities_(v3, v6, v10, v7, v8);

  return v5;
}

+ (id)requirementsFromPlist:(id)a3 error:(id *)a4
{
  v49[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v45 = 100;
  v7 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v6, v5, 0, &v45, a4);
  v8 = v7;
  v9 = v45;
  if (!v7 || v45 != 100)
  {
    if (!v7)
    {
LABEL_19:
      v19 = 0;
      goto LABEL_23;
    }

LABEL_13:
    if (v9 == 100)
    {
      v20 = @"The root of the requirements file plist must be a dictionary.";
    }

    else
    {
      v20 = @"Requirements file must be an XML plist.";
    }

    v21 = v20;
    v22 = *MEMORY[0x277CCA470];
    v46[0] = *MEMORY[0x277CCA450];
    v46[1] = v22;
    v47[0] = @"Bad Requirements Plist";
    v47[1] = v21;
    v46[2] = v46[0];
    v47[2] = @"The bundle may be corrupt or empty.  Check that the requirements file is not corrupt.";
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v47, v46, 3);
    if (a4)
    {
      *a4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v24, @"Supported Capability Problem", 1, v25);
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = v45;
    goto LABEL_13;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_24809D178;
  v34[3] = &unk_278EFC198;
  v34[4] = &v41;
  v34[5] = v39;
  v34[6] = &v35;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v10, v34, v11, v12);
  if (*(v42 + 24) == 1)
  {
    if (*(v36 + 24))
    {
      v13 = @"Requirements file plist must contain string keys and number values";
    }

    else
    {
      v13 = @"The details of a capability must be encoded in a required capabilities plist as integers or strings";
    }

    v14 = v13;
    v15 = *MEMORY[0x277CCA470];
    v48[0] = *MEMORY[0x277CCA450];
    v48[1] = v15;
    v49[0] = @"Bad Requirements Plist";
    v49[1] = v14;
    v48[2] = v48[0];
    v49[2] = @"The bundle may be corrupt or empty.  Check that the requirements file is not corrupt.";
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v49, v48, 3);
    if (a4)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v17, @"Supported Capability Problem", 1, v18);
      *a4 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v26 = objc_opt_new();
    v14 = v8;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_24809D394;
    v32[3] = &unk_278EFC1C0;
    v19 = v26;
    v33 = v19;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v14, v27, v32, v28, v29);
    v18 = v33;
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);
LABEL_23:

  v30 = *MEMORY[0x277D85DE8];

  return v19;
}

- (XRCapabilityRequirements)init
{
  v8.receiver = self;
  v8.super_class = XRCapabilityRequirements;
  v2 = [(XRCapabilityRequirements *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    capabilities = v2->_capabilities;
    v2->_capabilities = v3;

    v5 = objc_opt_new();
    unimplementedResponses = v2->_unimplementedResponses;
    v2->_unimplementedResponses = v5;
  }

  return v2;
}

- (id)plistRepresentation
{
  v4 = objc_opt_new();
  capabilities = self->_capabilities;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_24809D68C;
  v18[3] = &unk_278EFC1E8;
  v18[4] = self;
  v6 = v4;
  v19 = v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(capabilities, v7, v18, v8, v9);
  v17 = 0;
  v11 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x277CCAC58], v10, v6, 100, 0, &v17);
  v15 = v17;
  if (!v11)
  {
    sub_2480B3D84(a2, self, v12, v13, v14);
  }

  return v11;
}

- (BOOL)checkRequirementsAgainstRegistery:(id)a3 error:(id *)a4
{
  v84[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 1;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  capabilities = self->_capabilities;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_24809DC4C;
  v61[3] = &unk_278EFC210;
  v12 = v6;
  v62 = v12;
  v68 = &v79;
  v69 = &v75;
  v13 = v7;
  v63 = v13;
  v14 = v9;
  v64 = v14;
  v15 = v10;
  v70 = &v71;
  v65 = v15;
  v66 = self;
  v16 = v8;
  v67 = v16;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(capabilities, v17, v61, v18, v19);
  if (v80[3])
  {
    v24 = 1;
    goto LABEL_15;
  }

  if (v76[6] < 1)
  {
    if (v72[6] < 1)
    {
      abort();
    }

    if (!objc_msgSend_count(v16, v20, v21, v22, v23))
    {
      v48 = 0;
      v37 = @"Forward compatibility checks have failed.";
      v47 = @"This document appears to have been saved with a new version of this application.";
      goto LABEL_12;
    }

    v38 = objc_opt_new();
    v43 = objc_msgSend_count(v16, v39, v40, v41, v42);
    v54 = MEMORY[0x277D85DD0];
    v55 = 3221225472;
    v56 = sub_24809DE98;
    v57 = &unk_278EFC238;
    v32 = v38;
    v58[0] = v32;
    v58[1] = v43;
    objc_msgSend_enumerateObjectsUsingBlock_(v16, v44, &v54, v45, v46);
    v36 = v58;
    v37 = @"Forward compatibility checks have failed.";
  }

  else
  {
    if (!objc_msgSend_count(v13, v20, v21, v22, v23))
    {
      v48 = 0;
      v37 = @"Backward compatibility checks have failed.";
      v47 = @"An older version of this application may be able to open this document or connect to this device.";
      goto LABEL_12;
    }

    v26 = objc_opt_new();
    v31 = objc_msgSend_count(v13, v27, v28, v29, v30);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_24809DE1C;
    v59[3] = &unk_278EFC238;
    v32 = v26;
    v60[0] = v32;
    v60[1] = v31;
    objc_msgSend_enumerateObjectsUsingBlock_(v13, v33, v59, v34, v35);
    v36 = v60;
    v37 = @"Backward compatibility checks have failed.";
  }

  v47 = v32;

  v48 = v47;
LABEL_12:
  v49 = *MEMORY[0x277CCA450];
  v83[0] = *MEMORY[0x277CCA470];
  v83[1] = v49;
  v84[0] = v37;
  v84[1] = @"Missing features";
  v83[2] = *MEMORY[0x277CCA498];
  v83[3] = @"XRCapabilityRangesKey";
  v84[2] = v47;
  v84[3] = v14;
  v83[4] = @"XRRequiredVersionsKey";
  v84[4] = v15;
  v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v84, v83, 5, v54, v55, v56, v57);
  if (a4)
  {
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v50, @"Supported Capability Problem", 0, v51);
  }

  v24 = *(v80 + 24);
LABEL_15:

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);

  v52 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

@end