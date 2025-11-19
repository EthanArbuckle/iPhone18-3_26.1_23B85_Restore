@interface KVProfileReaderFactory
- (id)profileReaderForData:(id)a3 error:(id *)a4;
@end

@implementation KVProfileReaderFactory

- (id)profileReaderForData:(id)a3 error:(id *)a4
{
  v137[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_length(v5, v6, v7, v8, v9, v10))
  {
    v11 = v5;
    v17 = *(objc_msgSend_bytes(v11, v12, v13, v14, v15, v16) + 4);
    v18 = v5;
    if (v17 == 844517451)
    {
      v24 = objc_msgSend_bytes(v5, v19, v20, v21, v22, v23);
    }

    else
    {
      v24 = (objc_msgSend_bytes(v5, v19, v20, v21, v22, v23) + 4);
    }

    v34 = *v24;
    v35 = v5;
    v131 = objc_msgSend_bytes(v35, v36, v37, v38, v39, v40);
    v132 = objc_msgSend_length(v5, v41, v42, v43, v44, v45);
    v133 = xmmword_2559D02B0;
    v134 = 0;
    v135 = 1;
    if (v132 >= 0x7FFFFFFF)
    {
      __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
    }

    v46 = (v24 + v34);
    if (sub_2559A7668(&v131, (v24 + v34)) && sub_2559A7720((v24 + v34), &v131, 4u))
    {
      v47 = *v46;
      v48 = v46 - v47;
      v49 = *(v46 - v47);
      if (v49 < 5 || !*(v48 + 2))
      {
        goto LABEL_92;
      }

      v50 = (v46 + *(v48 + 2) + *(v46 + *(v48 + 2)));
      v51 = v50 - v131;
      if ((((v50 - v131) & 3) == 0 || (v135 & 1) == 0) && v132 >= 5 && v132 - 4 >= v51)
      {
        v52 = *v50;
        if (v52 <= 0x7FFFFFFE)
        {
          v53 = v52 + 4;
          v55 = v132 >= v53;
          v54 = v132 - v53;
          v55 = v54 != 0 && v55 && v54 >= v51;
          if (v55)
          {
LABEL_92:
            if (sub_2559A7720((v24 + v34), &v131, 6u))
            {
              if (v49 < 7)
              {
                goto LABEL_80;
              }

              if (!*(v48 + 3))
              {
                v58 = -v47;
                goto LABEL_32;
              }

              if (sub_2559A77F8(&v131, (v46 + *(v48 + 3) + *(v46 + *(v48 + 3))), 4uLL, 0))
              {
                v47 = *v46;
                if (*(v46 - v47) >= 7u)
                {
                  v58 = -v47;
LABEL_32:
                  v59 = *(v46 + v58 + 6);
                  if (v59)
                  {
                    v60 = *(v46 + v59);
                    v61 = (v46 + v59 + v60);
                    if (*v61)
                    {
                      v62 = 0;
                      v127 = v61 + 1;
                      v129 = v24 + v34 + v59 + v60 + 8;
                      v130 = v24 + v34 + v60 + v59 + 8;
                      v125 = (v46 + v59 + v60);
                      while (1)
                      {
                        v128 = v62;
                        v63 = &v127[v62];
                        v64 = *v63;
                        v65 = (v63 + v64);
                        if (!sub_2559A7668(&v131, (v63 + v64)) || !sub_2559A7720(v65, &v131, 4u))
                        {
                          goto LABEL_76;
                        }

                        v66 = *v65;
                        v67 = v65 - v66;
                        v68 = *(v65 - v66);
                        if (v68 >= 5)
                        {
                          if (*(v67 + 2))
                          {
                            v69 = (v65 + *(v67 + 2) + *(v65 + *(v67 + 2)));
                            v70 = v69 - v131;
                            if ((v69 - v131) & 3) != 0 && (v135)
                            {
                              goto LABEL_76;
                            }

                            if (v132 < 5)
                            {
                              goto LABEL_76;
                            }

                            if (v132 - 4 < v70)
                            {
                              goto LABEL_76;
                            }

                            v71 = *v69;
                            if (v71 > 0x7FFFFFFE)
                            {
                              goto LABEL_76;
                            }

                            v72 = v71 + 4;
                            v55 = v132 >= v72;
                            v73 = v132 - v72;
                            if (v73 == 0 || !v55 || v73 < v70)
                            {
                              goto LABEL_76;
                            }
                          }
                        }

                        if (!sub_2559A7720(v65, &v131, 6u))
                        {
                          goto LABEL_76;
                        }

                        if (v68 >= 7)
                        {
                          if (*(v67 + 3))
                          {
                            if (!sub_2559A77F8(&v131, (v65 + *(v67 + 3) + *(v65 + *(v67 + 3))), 4uLL, 0))
                            {
                              goto LABEL_76;
                            }

                            v75 = *v65;
                            if (*(v65 - v75) < 7u)
                            {
                              goto LABEL_74;
                            }

                            v76 = -v75;
                          }

                          else
                          {
                            v76 = -v66;
                          }

                          v77 = *(v65 + v76 + 6);
                          if (v77)
                          {
                            v78 = *(v65 + v77);
                            v126 = v65 + v77;
                            if (*(v65 + v77 + v78))
                            {
                              v79 = 0;
                              v80 = v130 + v77 + v64;
                              v81 = v129 + v64 + v77;
                              do
                              {
                                v82 = *(v80 + v78);
                                if (!sub_2559A7668(&v131, (v80 + v78 + v82)) || !sub_2559A7720((v80 + v78 + v82), &v131, 4u))
                                {
                                  goto LABEL_76;
                                }

                                v83 = v82 - *(v80 + v78 + v82);
                                if (*(v80 + v78 + v83) >= 5u)
                                {
                                  v84 = *(v80 + v78 + v83 + 4);
                                  if (v84)
                                  {
                                    v85 = v82 + v84 + *(v80 + v78 + v82 + v84);
                                    v86 = v78 + v81 + v85 - v131;
                                    if (v86 & 3) != 0 && (v135)
                                    {
                                      goto LABEL_76;
                                    }

                                    if (v132 < 5)
                                    {
                                      goto LABEL_76;
                                    }

                                    if (v132 - 4 < v86)
                                    {
                                      goto LABEL_76;
                                    }

                                    v87 = *(v80 + v78 + v85);
                                    if (v87 > 0x7FFFFFFE)
                                    {
                                      goto LABEL_76;
                                    }

                                    v88 = v87 + 4;
                                    v55 = v132 >= v88;
                                    v89 = v132 - v88;
                                    if (v89 == 0 || !v55 || v89 < v86)
                                    {
                                      goto LABEL_76;
                                    }
                                  }
                                }

                                LODWORD(v133) = v133 - 1;
                                ++v79;
                                v80 += 4;
                                v81 += 4;
                              }

                              while (v79 < *&v126[v78]);
                            }
                          }
                        }

LABEL_74:
                        LODWORD(v133) = v133 - 1;
                        v62 = v128 + 1;
                        v129 += 4;
                        v130 += 4;
                        if (v128 + 1 >= *v125)
                        {
                          LODWORD(v47) = *v46;
                          break;
                        }
                      }
                    }
                  }
                }

LABEL_80:
                LODWORD(v133) = v133 - 1;
                v97 = (v46 + *(v46 - v47 + 4));
                v98 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v56, v97 + *v97 + 4, *(v97 + *v97), 0, v57);
                v99 = [KVProfileInfo alloc];
                v103 = objc_msgSend_initWithBuffer_error_(v99, v100, v98, a4, v101, v102);
                v109 = v103;
                if (v103)
                {
                  if (objc_msgSend_datasetCount(v103, v104, v105, v106, v107, v108) && ((v110 = (v46 - *v46), *v110 < 7u) || !v110[3]))
                  {
                    v115 = v5;
                    v121 = *objc_msgSend_bytes(v115, v116, v117, v118, v119, v120);
                    v122 = [KVStreamProfileReader alloc];
                    v114 = objc_msgSend_initWithData_profileInfo_offset_(v122, v123, v5, v109, (v121 + 4), v124);
                  }

                  else
                  {
                    v111 = [KVEmbeddedProfileReader alloc];
                    v114 = objc_msgSend_initWithData_profile_profileInfo_(v111, v112, v5, v46, v109, v113);
                  }

                  v33 = v114;
                }

                else
                {
                  v33 = 0;
                }

                goto LABEL_77;
              }
            }
          }
        }
      }
    }

LABEL_76:
    v91 = [KVJSONProfileReader alloc];
    v33 = objc_msgSend_initWithData_error_(v91, v92, v5, a4, v93, v94);
    goto LABEL_77;
  }

  v25 = MEMORY[0x277CCA9B8];
  v136 = *MEMORY[0x277CCA450];
  v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"Unexpected profile data: %@", v8, v9, v10, v5);
  v137[0] = v26;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v137, &v136, 1, v28);
  v32 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v30, @"com.apple.koa.profile", 2, v29, v31);
  if (a4 && v32)
  {
    v32 = v32;
    *a4 = v32;
  }

  v33 = 0;
LABEL_77:

  v95 = *MEMORY[0x277D85DE8];

  return v33;
}

@end