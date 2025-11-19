@interface PCCWrappedKey
- (PCCWrappedKey)initWithKey:(id)a3 permittedRemoteMeasurement:(id)a4 attestation:(id)a5;
- (void)dealloc;
@end

@implementation PCCWrappedKey

- (PCCWrappedKey)initWithKey:(id)a3 permittedRemoteMeasurement:(id)a4 attestation:(id)a5
{
  v153 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v144.receiver = self;
  v144.super_class = PCCWrappedKey;
  v13 = [(PCCWrappedKey *)&v144 init];
  if (!v13)
  {
    goto LABEL_29;
  }

  if (v10)
  {
    v14 = MEMORY[0x277CBEB28];
    v15 = objc_msgSend_applicationEnclaveQuote(v10, v11, v12);
    v16 = v15;
    v19 = objc_msgSend_bytes(v16, v17, v18);
    v22 = objc_msgSend_applicationEnclaveQuote(v10, v20, v21);
    v25 = objc_msgSend_length(v22, v23, v24);
    v27 = objc_msgSend_dataWithBytes_length_(v14, v26, v19, v25);

    v28 = v27;
    v143[0] = objc_msgSend_mutableBytes(v28, v29, v30);
    v143[1] = objc_msgSend_length(v27, v31, v32);
    v33 = MEMORY[0x277CBEB28];
    v36 = objc_msgSend_quotingEnclaveQuote(v10, v34, v35);
    v37 = v36;
    v40 = objc_msgSend_bytes(v37, v38, v39);
    v43 = objc_msgSend_quotingEnclaveQuote(v10, v41, v42);
    v46 = objc_msgSend_length(v43, v44, v45);
    v48 = objc_msgSend_dataWithBytes_length_(v33, v47, v40, v46);

    v49 = v48;
    v50 = v48;
    v143[2] = objc_msgSend_mutableBytes(v50, v51, v52);
    v143[3] = objc_msgSend_length(v48, v53, v54);
    v55 = MEMORY[0x277CBEB28];
    v58 = objc_msgSend_certificate(v10, v56, v57);
    v59 = v58;
    v61 = objc_msgSend_cStringUsingEncoding_(v59, v60, 4);
    v64 = objc_msgSend_certificate(v10, v62, v63);
    v66 = objc_msgSend_lengthOfBytesUsingEncoding_(v64, v65, 4);
    v68 = objc_msgSend_dataWithBytes_length_(v55, v67, v61, v66);

    v69 = v68;
    v143[4] = objc_msgSend_mutableBytes(v69, v70, v71);
    v143[5] = objc_msgSend_length(v68, v72, v73);
    v76 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v74, v75);
    v78 = objc_msgSend_stringArrayForKey_(v76, v77, @"PCCPinnedVerificationHashes");
    v137 = objc_msgSend_BOOLForKey_(v76, v79, @"PCCPinnedVerificationDisabled");
    if (objc_msgSend_count(v78, v80, v81))
    {
      v84 = objc_msgSend_count(v78, v82, v83);
      v138 = malloc_type_calloc(0x20uLL, v84, 0xCA056294uLL);
      if (!v138)
      {

        goto LABEL_27;
      }

      v127 = v84;
      v128 = v76;
      v133 = v68;
      v134 = v27;
      v129 = v49;
      v130 = v10;
      v135 = v13;
      v136 = v8;
      v131 = v9;
      v132 = v78;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v85 = v78;
      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v139, v152, 16);
      if (v87)
      {
        v88 = v87;
        v89 = 0;
        v90 = *v140;
        do
        {
          v91 = 0;
          v92 = &v138[32 * v89];
          v89 += v88;
          do
          {
            if (*v140 != v90)
            {
              objc_enumerationMutation(v85);
            }

            v93 = *(*(&v139 + 1) + 8 * v91);
            v94 = objc_alloc(MEMORY[0x277CBEA90]);
            v96 = objc_msgSend_initWithBase64EncodedString_options_(v94, v95, v93, 1);
            v99 = objc_msgSend_length(v96, v97, v98);
            if (v99 >= 0x20)
            {
              v100 = 32;
            }

            else
            {
              v100 = v99;
            }

            v101 = v96;
            v104 = objc_msgSend_bytes(v101, v102, v103);
            memcpy(v92, v104, v100);

            ++v91;
            v92 += 32;
          }

          while (v88 != v91);
          v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v105, &v139, v152, 16);
        }

        while (v88);
      }

      v10 = v130;
      v9 = v131;
      v76 = v128;
      v49 = v129;
      v106 = v138;
      v107 = v127;
    }

    else
    {
      v133 = v68;
      v134 = v27;
      v135 = v13;
      v136 = v8;
      v132 = v78;
      v107 = 243;
      v106 = &unk_27D71ABC8;
    }

    v108 = v9;
    v113 = objc_msgSend_bytes(v108, v109, v110);
    v114 = 0;
    memset(v149, 0, sizeof(v149));
    v150 = v106;
    v151 = v107;
    BYTE2(v151) = v137;
    do
    {
      if (v114 >= objc_msgSend_length(v9, v111, v112, v127, v128, v129, v130, v131))
      {
        break;
      }

      *(v149 + v114) = *(v113 + v114);
      ++v114;
    }

    while (v114 != 32);
    v148 = 0;
    memset(v147, 0, sizeof(v147));
    v115 = sub_22540F558(v143, v149, v147);
    if (v106 != &unk_27D71ABC8)
    {
      free(v106);
    }

    v13 = v135;
    v8 = v136;
    if (v115 || (v146 = 0, memset(v145, 0, sizeof(v145)), *&v118 = sub_22540EFEC(v147, v145).n128_u64[0], v119))
    {

      goto LABEL_27;
    }

    objc_msgSend_secret(v136, v116, v117, v118);
    v135->_wrappedInvocationKey = sub_22540EF3C(v145);
    v123 = objc_msgSend_routingToken(v10, v121, v122);
    routingToken = v135->_routingToken;
    v135->_routingToken = v123;

    sub_22540F224(v145);
LABEL_29:
    v120 = v13;
    goto LABEL_30;
  }

LABEL_27:
  v120 = 0;
LABEL_30:

  v125 = *MEMORY[0x277D85DE8];
  return v120;
}

- (void)dealloc
{
  objc_msgSend_clear(self, a2, v2);
  free(self->_wrappedInvocationKey);
  v4.receiver = self;
  v4.super_class = PCCWrappedKey;
  [(PCCWrappedKey *)&v4 dealloc];
}

@end