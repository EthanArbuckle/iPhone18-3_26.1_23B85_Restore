@interface CKDPackageManifest
+ (BOOL)readContentsOfFile:(id)file intoPackage:(id)package error:(id *)error;
+ (BOOL)writePackage:(id)package toFile:(id)file error:(id *)error;
+ (id)packageWithContentsOfFile:(id)file error:(id *)error;
@end

@implementation CKDPackageManifest

+ (BOOL)readContentsOfFile:(id)file intoPackage:(id)package error:(id *)error
{
  v161 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  packageCopy = package;
  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9);
  if ((objc_msgSend_isReadableFileAtPath_(v10, v11, fileCopy) & 1) == 0)
  {
    v13 = objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBBF50], 1000, fileCopy, @"File not readable");
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v16 = v14;
      v19 = objc_msgSend_CKSanitizedPath(fileCopy, v17, v18);
      *buf = 138543362;
      v152 = v19;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "Couldn't read the package manifest at %{public}@", buf, 0xCu);

      if (v13)
      {
        goto LABEL_6;
      }
    }

    else if (v13)
    {
LABEL_6:
      v15 = 0;
      v148 = 0;
      goto LABEL_22;
    }
  }

  v20 = objc_msgSend_inputStreamWithFileAtPath_(MEMORY[0x277CBEAE0], v12, fileCopy);
  v21 = objc_alloc(MEMORY[0x277D43180]);
  v23 = objc_msgSend_initWithStream_(v21, v22, v20);
  objc_msgSend_open(v20, v24, v25);
  v26 = objc_opt_class();
  objc_msgSend_setClassOfNextMessage_(v23, v27, v26);
  v148 = v23;
  Message = objc_msgSend_nextMessage(v23, v28, v29);
  if (Message)
  {
  }

  else
  {
    v13 = objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v30, *MEMORY[0x277CBBF50], 1000, fileCopy, @"Failed reading package object from manifest");

    if (v13)
    {
      v15 = 0;
LABEL_22:
      v74 = 0;
      if (!error)
      {
        goto LABEL_82;
      }

      goto LABEL_80;
    }
  }

  v145 = fileCopy;
  v34 = objc_msgSend_signature(Message, v32, v33);
  v37 = objc_msgSend_verificationKey(Message, v35, v36);
  v39 = objc_msgSend_setSignature_verificationKey_(packageCopy, v38, v34, v37);

  v40 = objc_opt_class();
  objc_msgSend_setClassOfNextMessage_(v148, v41, v40);
  v44 = objc_msgSend_nextMessage(v148, v42, v43);
  v142 = v10;
  errorCopy = error;
  v144 = Message;
  if (v44)
  {
    v47 = v44;
    v48 = 0;
    v49 = MEMORY[0x277CBC880];
    v50 = MEMORY[0x277CBC830];
    do
    {
      v51 = v48;
      v52 = objc_msgSend_size(v47, v45, v46);
      v53 = objc_alloc(MEMORY[0x277CBC548]);
      v56 = objc_msgSend_signature(v47, v54, v55);
      v59 = objc_msgSend_verificationKey(v47, v57, v58);
      v61 = objc_msgSend_initWithIndex_signature_verificationKey_(v53, v60, v51, v56, v59);

      objc_msgSend_setManifestSize_(v61, v62, v52);
      v13 = objc_msgSend_addSection_(packageCopy, v63, v61);
      if (*v49 != -1)
      {
        dispatch_once(v49, *MEMORY[0x277CBC878]);
      }

      v64 = *v50;
      if (os_log_type_enabled(*v50, OS_LOG_TYPE_DEBUG))
      {
        v70 = v64;
        v73 = objc_msgSend_signature(v47, v71, v72);
        *buf = 134218498;
        v152 = v51;
        v153 = 2048;
        v154 = v52;
        v155 = 2112;
        v156 = v73;
        _os_log_debug_impl(&dword_22506F000, v70, OS_LOG_TYPE_DEBUG, "Read section with index %ld, size %lld, signature %@", buf, 0x20u);
      }

      if ((objc_msgSend_lastSection(v47, v65, v66) & 1) != 0 || v13)
      {

        goto LABEL_28;
      }

      v69 = objc_msgSend_nextMessage(v148, v67, v68);

      v48 = v51 + 1;
      v47 = v69;
    }

    while (v69);
    if (v51 == -1)
    {
      v10 = v142;
      goto LABEL_33;
    }

    v13 = objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v45, *MEMORY[0x277CBBF50], 1000, v145, @"Failed reading section object from manifest");
LABEL_28:
    v10 = v142;
    v74 = v144;
    if (v13)
    {
      v15 = 0;
      fileCopy = v145;
      if (!error)
      {
        goto LABEL_82;
      }

      goto LABEL_80;
    }

    v77 = v51 + 1;
  }

  else
  {
    v52 = 0;
LABEL_33:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v78 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v152 = packageCopy;
      _os_log_debug_impl(&dword_22506F000, v78, OS_LOG_TYPE_DEBUG, "Found empty package %@", buf, 0xCu);
    }

    v77 = 0;
  }

  v79 = objc_msgSend_sectionCount(packageCopy, v75, v76);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v80 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v152 = v77;
    v153 = 2112;
    v154 = packageCopy;
    _os_log_debug_impl(&dword_22506F000, v80, OS_LOG_TYPE_DEBUG, "Read %ld sections from manifest for package %@", buf, 0x16u);
    if (v79)
    {
      goto LABEL_42;
    }

LABEL_70:
    LODWORD(v147) = 0;
    v96 = 0;
    v86 = 0;
    v85 = 0;
    v15 = 0;
    fileCopy = v145;
    goto LABEL_71;
  }

  if (!v79)
  {
    goto LABEL_70;
  }

LABEL_42:
  v146 = v79;
  v81 = objc_opt_class();
  objc_msgSend_setClassOfNextMessage_(v148, v82, v81);
  v77 = 0;
  v15 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v147 = 0;
  while (1)
  {
    v89 = v87;
    v87 = objc_msgSend_nextMessage(v148, v83, v84);

    if (!v87)
    {
      v125 = MEMORY[0x277CBC560];
      v126 = *MEMORY[0x277CBBF50];
      v127 = @"Failed reading item object from manifest";
      goto LABEL_62;
    }

    if (v85 && objc_msgSend_size(v87, v90, v91))
    {
      v147 = (v147 + 1);

      v88 = 0;
    }

    else if (v15)
    {
      goto LABEL_51;
    }

    if (v146 <= v147)
    {
      fileCopy = v145;
      v13 = objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v90, *MEMORY[0x277CBBF50], 1000, v145, @"Package manifest is corrupt - section index %ld is out of bounds", v147);
      v15 = 0;
      goto LABEL_65;
    }

    v150 = 0;
    v15 = objc_msgSend_sectionAtIndex_error_(packageCopy, v90, v147, &v150);
    v92 = v150;
    if (v92)
    {
      v13 = v92;
      goto LABEL_68;
    }

    v52 = objc_msgSend_manifestSize(v15, v93, v94);
LABEL_51:
    v95 = objc_msgSend_size(v87, v90, v91);
    v96 = v95 + v88;
    if (__CFADD__(v95, v88) || v52 < v96)
    {
      break;
    }

    v97 = objc_alloc(MEMORY[0x277CBC540]);
    v99 = objc_msgSend_initWithFileURL_(v97, v98, 0);
    objc_msgSend_setPackageIndex_(v99, v100, v77);
    v103 = objc_msgSend_size(v87, v101, v102);
    objc_msgSend_setSize_(v99, v104, v103);
    v107 = objc_msgSend_signature(v87, v105, v106);
    objc_msgSend_setSignature_(v99, v108, v107);

    v110 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v109, v147);
    objc_msgSend_setSectionIndex_(v99, v111, v110);

    objc_msgSend_setOffset_(v99, v112, v88);
    v114 = objc_msgSend_addItem_(packageCopy, v113, v99);
    if (v114)
    {
      v13 = v114;

LABEL_68:
      fileCopy = v145;

      v10 = v142;
      goto LABEL_79;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v115 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v141 = v115;
      v140 = objc_msgSend_size(v87, v120, v121);
      v124 = objc_msgSend_signature(v87, v122, v123);
      *buf = 134219010;
      v152 = v77;
      v153 = 2048;
      v154 = v147;
      v155 = 2048;
      v156 = v88;
      v157 = 2048;
      v158 = v140;
      v159 = 2112;
      v160 = v124;
      _os_log_debug_impl(&dword_22506F000, v141, OS_LOG_TYPE_DEBUG, "Read item with index %ld, section index %ld, section offset %llu, size %lld, signature %@", buf, 0x34u);
    }

    v86 += objc_msgSend_size(v99, v116, v117);
    v85 = v96 == v52;
    ++v77;

    v88 = v96;
    if (objc_msgSend_lastItem(v87, v118, v119))
    {

      fileCopy = v145;
      v79 = v146;
      v10 = v142;
      goto LABEL_71;
    }
  }

  v125 = MEMORY[0x277CBC560];
  v126 = *MEMORY[0x277CBBF50];
  v127 = @"Package manifest is corrupt - item boundary is not aligned with section boundary";
LABEL_62:
  fileCopy = v145;
  v13 = objc_msgSend_errorWithDomain_code_path_format_(v125, v90, v126, 1000, v145, v127);
LABEL_65:

  v96 = v88;
  v10 = v142;
  v79 = v146;
  if (v13)
  {
    goto LABEL_79;
  }

LABEL_71:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v128 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v152 = v77;
    v153 = 2048;
    v154 = v86;
    v155 = 2112;
    v156 = packageCopy;
    _os_log_debug_impl(&dword_22506F000, v128, OS_LOG_TYPE_DEBUG, "Read %ld items (%llu bytes) from manifest for package %@", buf, 0x20u);
  }

  v131 = v147 + v85;
  if (v96 == 0 || v85)
  {
    v74 = v144;
    if (v79 == v131)
    {
      v13 = 0;
      goto LABEL_82;
    }

    v13 = objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v129, *MEMORY[0x277CBBF50], 1000, fileCopy, @"Package manifest is corrupt - Expected %lu sections, found %lu", v131, v79);
    error = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_82;
    }

LABEL_80:
    if (v13)
    {
      v137 = v13;
      *error = v13;
    }
  }

  else
  {
    v132 = MEMORY[0x277CBC560];
    v133 = *MEMORY[0x277CBBF50];
    v134 = v131;
    v135 = objc_msgSend_manifestSize(v15, v129, v130);
    v13 = objc_msgSend_errorWithDomain_code_path_format_(v132, v136, v133, 1000, fileCopy, @"Package manifest is corrupt - section %lu contains %llu bytes, expected %llu bytes", v134, v135, v96);
LABEL_79:
    error = errorCopy;
    v74 = v144;
    if (errorCopy)
    {
      goto LABEL_80;
    }
  }

LABEL_82:

  v138 = *MEMORY[0x277D85DE8];
  return v13 == 0;
}

+ (id)packageWithContentsOfFile:(id)file error:(id *)error
{
  v6 = MEMORY[0x277CBC208];
  fileCopy = file;
  v9 = objc_msgSend_packageWithError_(v6, v8, error);
  LODWORD(error) = objc_msgSend_readContentsOfFile_intoPackage_error_(self, v10, fileCopy, v9, error);

  if (error)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)writePackage:(id)package toFile:(id)file error:(id *)error
{
  v155 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  fileCopy = file;
  v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10);
  if ((objc_msgSend_fileExistsAtPath_(v11, v12, fileCopy) & 1) == 0)
  {
    v15 = objc_msgSend_data(MEMORY[0x277CBEA90], v13, v14);
    v17 = objc_msgSend_writeToFile_options_error_(v15, v16, fileCopy, 0, error);

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  if ((objc_msgSend_isWritableFileAtPath_(v11, v13, fileCopy) & 1) == 0)
  {
    if (error)
    {
      objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v18, *MEMORY[0x277CBBF50], 1000, fileCopy, @"File not writable");
      *error = v73 = 0;
      goto LABEL_62;
    }

LABEL_23:
    v73 = 0;
    goto LABEL_62;
  }

  v19 = objc_msgSend_outputStreamToFileAtPath_append_(MEMORY[0x277CBEB78], v18, fileCopy, 0);
  v20 = objc_alloc(MEMORY[0x277D43188]);
  v22 = objc_msgSend_initWithOutputStream_(v20, v21, v19);
  objc_msgSend_open(v19, v23, v24);
  v25 = objc_alloc_init(CKDPPackageManifestHeader);
  v28 = objc_msgSend_signature(packageCopy, v26, v27);
  objc_msgSend_setSignature_(v25, v29, v28);

  v32 = objc_msgSend_verificationKey(packageCopy, v30, v31);
  objc_msgSend_setVerificationKey_(v25, v33, v32);

  objc_msgSend_setVersion_(v25, v34, 1);
  if ((objc_msgSend_writeMessage_(v22, v35, v25) & 1) == 0)
  {
    if (error)
    {
      objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBBF50], 1000, fileCopy, @"Failed writing package object to manifest");
      *error = v73 = 0;
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v133 = v25;
  v38 = objc_msgSend_sectionCount(packageCopy, v36, v37);
  objc_msgSend_sectionEnumerator(packageCopy, v39, v40);
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  obj = v146 = 0u;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v143, v154, 16);
  v123 = v38;
  if (!v42)
  {
    v72 = 0;
LABEL_29:

    v25 = v133;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v74 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v148 = v123;
      v149 = 2112;
      v150 = packageCopy;
      _os_log_debug_impl(&dword_22506F000, v74, OS_LOG_TYPE_DEBUG, "Wrote %ld sections to manifest for package %@", buf, 0x16u);
    }

    v77 = objc_msgSend_itemCount(packageCopy, v75, v76);
    if (v72)
    {
    }

    else
    {
      v119 = v77;
      objc_msgSend_itemEnumerator(packageCopy, v78, v79);
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v134 = v141 = 0u;
      v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v82, &v138, v153, 16);
      if (v83)
      {
        v84 = v83;
        v130 = packageCopy;
        errorCopy = error;
        v126 = v19;
        v128 = v11;
        v85 = 0;
        v86 = 0;
        v136 = *v139;
        v87 = v119 - 1;
        v118 = v119 - 1;
        while (2)
        {
          v88 = 0;
          v89 = v87 - v85;
          v120 = v84 + v85;
          do
          {
            if (*v139 != v136)
            {
              objc_enumerationMutation(v134);
            }

            v90 = *(*(&v138 + 1) + 8 * v88);
            v91 = objc_autoreleasePoolPush();
            v92 = objc_alloc_init(CKDPPackageManifestItem);
            v95 = objc_msgSend_signature(v90, v93, v94);
            objc_msgSend_setSignature_(v92, v96, v95);

            v99 = objc_msgSend_size(v90, v97, v98);
            objc_msgSend_setSize_(v92, v100, v99);
            if (v89 == v88)
            {
              objc_msgSend_setLastItem_(v92, v101, 1);
            }

            if (!objc_msgSend_writeMessage_(v22, v101, v92, v118))
            {
              v72 = objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v102, *MEMORY[0x277CBBF50], 1000, fileCopy, @"Failed writing item object to manifest");

              objc_autoreleasePoolPop(v91);
              goto LABEL_54;
            }

            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v103 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v107 = v103;
              v122 = objc_msgSend_size(v90, v108, v109);
              v124 = objc_msgSend_signature(v90, v110, v111);
              *buf = 134218242;
              v148 = v122;
              v149 = 2112;
              v150 = v124;
              _os_log_debug_impl(&dword_22506F000, v107, OS_LOG_TYPE_DEBUG, "Wrote package item with size:%lld, signature:%@", buf, 0x16u);
            }

            v86 += objc_msgSend_size(v90, v104, v105);

            objc_autoreleasePoolPop(v91);
            ++v88;
          }

          while (v84 != v88);
          v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v106, &v138, v153, 16);
          v85 = v120;
          v87 = v118;
          if (v84)
          {
            continue;
          }

          break;
        }

        v72 = 0;
LABEL_54:
        v11 = v128;
        packageCopy = v130;
        v19 = v126;
        error = errorCopy;
        v25 = v133;
      }

      else
      {
        v86 = 0;
        v72 = 0;
      }

      if (!v72)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v115 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v148 = v119;
          v149 = 2048;
          v150 = v86;
          v151 = 2112;
          v152 = packageCopy;
          _os_log_debug_impl(&dword_22506F000, v115, OS_LOG_TYPE_DEBUG, "Wrote %ld items (%llu bytes) to manifest for package %@", buf, 0x20u);
        }

        objc_msgSend_close(v19, v116, v117);
        v73 = 1;
        goto LABEL_61;
      }
    }

    if (error)
    {
      v112 = v72;
      *error = v72;
    }

    objc_msgSend_close(v19, v80, v81);

LABEL_60:
    v73 = 0;
    goto LABEL_61;
  }

  v43 = v42;
  v129 = packageCopy;
  errorCopy2 = error;
  v125 = v19;
  v127 = v11;
  v44 = 0;
  v45 = *v144;
  v46 = v38 - 1;
  v121 = v38 - 1;
LABEL_7:
  v47 = 0;
  v48 = v46 - v44;
  v135 = v43 + v44;
  while (1)
  {
    if (*v144 != v45)
    {
      objc_enumerationMutation(obj);
    }

    v49 = *(*(&v143 + 1) + 8 * v47);
    v50 = objc_alloc_init(CKDPPackageManifestSection);
    v53 = objc_msgSend_signature(v49, v51, v52);
    objc_msgSend_setSignature_(v50, v54, v53);

    v57 = objc_msgSend_verificationKey(v49, v55, v56);
    objc_msgSend_setVerificationKey_(v50, v58, v57);

    v142 = 0;
    v60 = objc_msgSend_size_(v49, v59, &v142);
    v61 = v142;
    if (v61)
    {
      v72 = v61;

LABEL_28:
      v11 = v127;
      packageCopy = v129;
      v19 = v125;
      error = errorCopy2;
      goto LABEL_29;
    }

    objc_msgSend_setSize_(v50, v62, v60);
    if (v48 == v47)
    {
      objc_msgSend_setLastSection_(v50, v63, 1);
    }

    if ((objc_msgSend_writeMessage_(v22, v63, v50) & 1) == 0)
    {
      break;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v66 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v68 = v66;
      v71 = objc_msgSend_signature(v49, v69, v70);
      *buf = 134218242;
      v148 = v60;
      v149 = 2112;
      v150 = v71;
      _os_log_debug_impl(&dword_22506F000, v68, OS_LOG_TYPE_DEBUG, "Wrote package section with size:%lld, signature:%@", buf, 0x16u);
    }

    if (v43 == ++v47)
    {
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v67, &v143, v154, 16);
      v46 = v121;
      v44 = v135;
      if (v43)
      {
        goto LABEL_7;
      }

      v72 = 0;
      goto LABEL_28;
    }
  }

  if (errorCopy2)
  {
    *errorCopy2 = objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v64, *MEMORY[0x277CBBF50], 1000, fileCopy, @"Failed writing section object to manifest");
  }

  v19 = v125;
  objc_msgSend_close(v125, v64, v65);

  v73 = 0;
  v11 = v127;
  packageCopy = v129;
  v25 = v133;
LABEL_61:

LABEL_62:
  v113 = *MEMORY[0x277D85DE8];
  return v73;
}

@end