uint64_t CKDPShareReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 >= objc_msgSend_length(a2, v6, v7))
  {
    return objc_msgSend_hasError(a2, v8, v9) ^ 1;
  }

  while (2)
  {
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v197) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v197) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v197, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v197 & 0x7F) << v10;
      if ((v197 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v30 = v11++ >= 9;
      if (v30)
      {
        v31 = 0;
        goto LABEL_15;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v32 = (v31 >> 3);
    switch((v31 >> 3))
    {
      case 1u:
        v33 = objc_alloc_init(CKDPShareIdentifier);
        objc_storeStrong((a1 + 128), v33);
        v197 = 0;
        v198 = 0;
        if (PBReaderPlaceMark() && CKDPShareIdentifierReadFrom(v33, a2, v34))
        {
          goto LABEL_99;
        }

        goto LABEL_145;
      case 2u:
        v35 = PBReaderReadString();
        v36 = 32;
        goto LABEL_120;
      case 3u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 156) |= 2u;
        while (1)
        {
          LOBYTE(v197) = 0;
          v88 = objc_msgSend_position(a2, v32, v9, v197) + 1;
          if (v88 >= objc_msgSend_position(a2, v89, v90) && (v93 = objc_msgSend_position(a2, v91, v92) + 1, v93 <= objc_msgSend_length(a2, v94, v95)))
          {
            v96 = objc_msgSend_data(a2, v91, v92);
            v99 = objc_msgSend_position(a2, v97, v98);
            objc_msgSend_getBytes_range_(v96, v100, &v197, v99, 1);

            v103 = objc_msgSend_position(a2, v101, v102);
            objc_msgSend_setPosition_(a2, v104, v103 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v91, v92);
          }

          v87 |= (v197 & 0x7F) << v85;
          if ((v197 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v30 = v86++ >= 9;
          if (v30)
          {
            v57 = 0;
            goto LABEL_130;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v57 = 0;
        }

        else
        {
          v57 = v87;
        }

LABEL_130:
        v191 = 96;
        goto LABEL_139;
      case 4u:
        v33 = objc_alloc_init(CKDPProtectionInfo);
        v145 = 48;
        goto LABEL_91;
      case 5u:
        v33 = objc_alloc_init(CKDPProtectionInfo);
        v145 = 112;
LABEL_91:
        objc_storeStrong((a1 + v145), v33);
        v197 = 0;
        v198 = 0;
        if (!PBReaderPlaceMark() || !CKDPProtectionInfoReadFrom(v33, a2, v147))
        {
          goto LABEL_145;
        }

        goto LABEL_99;
      case 6u:
        v33 = objc_alloc_init(CKDPParticipant);
        objc_msgSend_addParticipant_(a1, v61, v33);
        goto LABEL_41;
      case 7u:
        v35 = PBReaderReadString();
        v36 = 144;
        goto LABEL_120;
      case 8u:
        v33 = objc_alloc_init(CKDPParticipant);
        objc_msgSend_addPotentialMatch_(a1, v59, v33);
LABEL_41:
        v197 = 0;
        v198 = 0;
        if (!PBReaderPlaceMark() || !CKDPParticipantReadFrom(v33, a2, v62))
        {
          goto LABEL_145;
        }

        goto LABEL_99;
      case 9u:
        v33 = PBReaderReadData();
        if (v33)
        {
          objc_msgSend_addInvitedKeyToRemove_(a1, v58, v33);
        }

        goto LABEL_100;
      case 0xAu:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 156) |= 0x40u;
        while (1)
        {
          LOBYTE(v197) = 0;
          v108 = objc_msgSend_position(a2, v32, v9, v197) + 1;
          if (v108 >= objc_msgSend_position(a2, v109, v110) && (v113 = objc_msgSend_position(a2, v111, v112) + 1, v113 <= objc_msgSend_length(a2, v114, v115)))
          {
            v116 = objc_msgSend_data(a2, v111, v112);
            v119 = objc_msgSend_position(a2, v117, v118);
            objc_msgSend_getBytes_range_(v116, v120, &v197, v119, 1);

            v123 = objc_msgSend_position(a2, v121, v122);
            objc_msgSend_setPosition_(a2, v124, v123 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v111, v112);
          }

          v107 |= (v197 & 0x7F) << v105;
          if ((v197 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v30 = v106++ >= 9;
          if (v30)
          {
            LOBYTE(v83) = 0;
            goto LABEL_132;
          }
        }

        v83 = (v107 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_132:
        v192 = 155;
        goto LABEL_142;
      case 0xBu:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 156) |= 0x10u;
        while (1)
        {
          LOBYTE(v197) = 0;
          v66 = objc_msgSend_position(a2, v32, v9, v197) + 1;
          if (v66 >= objc_msgSend_position(a2, v67, v68) && (v71 = objc_msgSend_position(a2, v69, v70) + 1, v71 <= objc_msgSend_length(a2, v72, v73)))
          {
            v74 = objc_msgSend_data(a2, v69, v70);
            v77 = objc_msgSend_position(a2, v75, v76);
            objc_msgSend_getBytes_range_(v74, v78, &v197, v77, 1);

            v81 = objc_msgSend_position(a2, v79, v80);
            objc_msgSend_setPosition_(a2, v82, v81 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v69, v70);
          }

          v65 |= (v197 & 0x7F) << v63;
          if ((v197 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v30 = v64++ >= 9;
          if (v30)
          {
            LOBYTE(v83) = 0;
            goto LABEL_126;
          }
        }

        v83 = (v65 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_126:
        v192 = 153;
        goto LABEL_142;
      case 0xCu:
        v35 = PBReaderReadString();
        v36 = 24;
        goto LABEL_120;
      case 0xDu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 156) |= 4u;
        while (1)
        {
          LOBYTE(v197) = 0;
          v40 = objc_msgSend_position(a2, v32, v9, v197) + 1;
          if (v40 >= objc_msgSend_position(a2, v41, v42) && (v45 = objc_msgSend_position(a2, v43, v44) + 1, v45 <= objc_msgSend_length(a2, v46, v47)))
          {
            v48 = objc_msgSend_data(a2, v43, v44);
            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_getBytes_range_(v48, v52, &v197, v51, 1);

            v55 = objc_msgSend_position(a2, v53, v54);
            objc_msgSend_setPosition_(a2, v56, v55 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v43, v44);
          }

          v39 |= (v197 & 0x7F) << v37;
          if ((v197 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v30 = v38++ >= 9;
          if (v30)
          {
            v57 = 0;
            goto LABEL_124;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v57 = 0;
        }

        else
        {
          v57 = v39;
        }

LABEL_124:
        v191 = 100;
        goto LABEL_139;
      case 0xEu:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 156) |= 1u;
        while (1)
        {
          LOBYTE(v197) = 0;
          v153 = objc_msgSend_position(a2, v32, v9, v197) + 1;
          if (v153 >= objc_msgSend_position(a2, v154, v155) && (v158 = objc_msgSend_position(a2, v156, v157) + 1, v158 <= objc_msgSend_length(a2, v159, v160)))
          {
            v161 = objc_msgSend_data(a2, v156, v157);
            v164 = objc_msgSend_position(a2, v162, v163);
            objc_msgSend_getBytes_range_(v161, v165, &v197, v164, 1);

            v168 = objc_msgSend_position(a2, v166, v167);
            objc_msgSend_setPosition_(a2, v169, v168 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v156, v157);
          }

          v152 |= (v197 & 0x7F) << v150;
          if ((v197 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v30 = v151++ >= 9;
          if (v30)
          {
            v57 = 0;
            goto LABEL_138;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v57 = 0;
        }

        else
        {
          v57 = v152;
        }

LABEL_138:
        v191 = 72;
LABEL_139:
        *(a1 + v191) = v57;
        goto LABEL_143;
      case 0xFu:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 156) |= 0x20u;
        while (1)
        {
          LOBYTE(v197) = 0;
          v128 = objc_msgSend_position(a2, v32, v9, v197) + 1;
          if (v128 >= objc_msgSend_position(a2, v129, v130) && (v133 = objc_msgSend_position(a2, v131, v132) + 1, v133 <= objc_msgSend_length(a2, v134, v135)))
          {
            v136 = objc_msgSend_data(a2, v131, v132);
            v139 = objc_msgSend_position(a2, v137, v138);
            objc_msgSend_getBytes_range_(v136, v140, &v197, v139, 1);

            v143 = objc_msgSend_position(a2, v141, v142);
            objc_msgSend_setPosition_(a2, v144, v143 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v131, v132);
          }

          v127 |= (v197 & 0x7F) << v125;
          if ((v197 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v30 = v126++ >= 9;
          if (v30)
          {
            LOBYTE(v83) = 0;
            goto LABEL_134;
          }
        }

        v83 = (v127 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_134:
        v192 = 154;
        goto LABEL_142;
      case 0x10u:
      case 0x11u:
        goto LABEL_24;
      case 0x12u:
        v33 = objc_alloc_init(CKDPShareAccessRequesters);
        objc_storeStrong((a1 + 104), v33);
        v197 = 0;
        v198 = 0;
        if (!PBReaderPlaceMark() || !sub_225359980(v33, a2, v146))
        {
          goto LABEL_145;
        }

        goto LABEL_99;
      case 0x13u:
        v33 = objc_alloc_init(CKDPShareAccessBlockedRequesters);
        objc_storeStrong((a1 + 8), v33);
        v197 = 0;
        v198 = 0;
        if (PBReaderPlaceMark() && sub_2253586F4(v33, a2, v149))
        {
          goto LABEL_99;
        }

        goto LABEL_145;
      case 0x14u:
        v33 = objc_alloc_init(CKDPCryptoRequirementsSigningKey);
        objc_storeStrong((a1 + 16), v33);
        v197 = 0;
        v198 = 0;
        if (!PBReaderPlaceMark() || !sub_2252EE4B8(v33, a2, v148))
        {
          goto LABEL_145;
        }

        goto LABEL_99;
      case 0x15u:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 156) |= 8u;
        while (1)
        {
          LOBYTE(v197) = 0;
          v173 = objc_msgSend_position(a2, v32, v9, v197) + 1;
          if (v173 >= objc_msgSend_position(a2, v174, v175) && (v178 = objc_msgSend_position(a2, v176, v177) + 1, v178 <= objc_msgSend_length(a2, v179, v180)))
          {
            v181 = objc_msgSend_data(a2, v176, v177);
            v184 = objc_msgSend_position(a2, v182, v183);
            objc_msgSend_getBytes_range_(v181, v185, &v197, v184, 1);

            v188 = objc_msgSend_position(a2, v186, v187);
            objc_msgSend_setPosition_(a2, v189, v188 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v176, v177);
          }

          v172 |= (v197 & 0x7F) << v170;
          if ((v197 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v30 = v171++ >= 9;
          if (v30)
          {
            LOBYTE(v83) = 0;
            goto LABEL_141;
          }
        }

        v83 = (v172 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_141:
        v192 = 152;
LABEL_142:
        *(a1 + v192) = v83;
        goto LABEL_143;
      case 0x16u:
        v33 = objc_alloc_init(CKDPProtectionInfoKeysToRemove);
        v60 = 56;
        goto LABEL_54;
      case 0x17u:
        v33 = objc_alloc_init(CKDPProtectionInfoKeysToRemove);
        v60 = 120;
LABEL_54:
        objc_storeStrong((a1 + v60), v33);
        v197 = 0;
        v198 = 0;
        if (PBReaderPlaceMark() && sub_2253101B8(v33, a2, v84))
        {
LABEL_99:
          PBReaderRecallMark();
LABEL_100:

LABEL_143:
          v193 = objc_msgSend_position(a2, v32, v9);
          if (v193 >= objc_msgSend_length(a2, v194, v195))
          {
            return objc_msgSend_hasError(a2, v8, v9) ^ 1;
          }

          continue;
        }

LABEL_145:

        return 0;
      default:
        if (v32 == 101)
        {
          v35 = PBReaderReadData();
          v36 = 136;
        }

        else
        {
          if (v32 != 102)
          {
LABEL_24:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_143;
          }

          v35 = PBReaderReadString();
          v36 = 64;
        }

LABEL_120:
        v190 = *(a1 + v36);
        *(a1 + v36) = v35;

        goto LABEL_143;
    }
  }
}

void sub_225356C3C()
{
  v0 = qword_280D54F38;
  qword_280D54F38 = &unk_2838C9700;
}

uint64_t sub_225357050(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v86) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v86) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v86, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v86 & 0x7F) << v10;
        if ((v86 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 4)
      {
        if (v32 > 6)
        {
          if (v32 == 7)
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 68) |= 1u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v64 = objc_msgSend_position(a2, v32, v9, v86) + 1;
              if (v64 >= objc_msgSend_position(a2, v65, v66) && (v69 = objc_msgSend_position(a2, v67, v68) + 1, v69 <= objc_msgSend_length(a2, v70, v71)))
              {
                v72 = objc_msgSend_data(a2, v67, v68);
                v75 = objc_msgSend_position(a2, v73, v74);
                objc_msgSend_getBytes_range_(v72, v76, &v86, v75, 1);

                v79 = objc_msgSend_position(a2, v77, v78);
                objc_msgSend_setPosition_(a2, v80, v79 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v67, v68);
              }

              v63 |= (v86 & 0x7F) << v61;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v30 = v62++ >= 9;
              if (v30)
              {
                v81 = 0;
                goto LABEL_63;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v81 = 0;
            }

            else
            {
              v81 = v63;
            }

LABEL_63:
            *(a1 + 40) = v81;
            goto LABEL_66;
          }

          if (v32 == 8)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 68) |= 2u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v41 = objc_msgSend_position(a2, v32, v9, v86) + 1;
              if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
              {
                v49 = objc_msgSend_data(a2, v44, v45);
                v52 = objc_msgSend_position(a2, v50, v51);
                objc_msgSend_getBytes_range_(v49, v53, &v86, v52, 1);

                v56 = objc_msgSend_position(a2, v54, v55);
                objc_msgSend_setPosition_(a2, v57, v56 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v44, v45);
              }

              v40 |= (v86 & 0x7F) << v38;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v30 = v39++ >= 9;
              if (v30)
              {
                LOBYTE(v58) = 0;
                goto LABEL_65;
              }
            }

            v58 = (v40 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_65:
            *(a1 + 64) = v58;
            goto LABEL_66;
          }
        }

        else
        {
          if (v32 == 5)
          {
            v36 = objc_alloc_init(CKDPProtectionInfo);
            v37 = 24;
            goto LABEL_46;
          }

          if (v32 == 6)
          {
            v33 = PBReaderReadString();
            v34 = 16;
            goto LABEL_26;
          }
        }
      }

      else if (v32 > 2)
      {
        if (v32 == 3)
        {
          v36 = objc_alloc_init(CKDPProtectionInfo);
          v37 = 48;
LABEL_46:
          objc_storeStrong((a1 + v37), v36);
          v86 = 0;
          v87 = 0;
          if (!PBReaderPlaceMark() || !CKDPProtectionInfoReadFrom(v36, a2, v60))
          {
LABEL_68:

            return 0;
          }

LABEL_48:
          PBReaderRecallMark();

          goto LABEL_66;
        }

        if (v32 == 4)
        {
          v36 = objc_alloc_init(CKDPProtectionInfo);
          v37 = 32;
          goto LABEL_46;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v36 = objc_alloc_init(CKDPShareIdentifier);
          objc_storeStrong((a1 + 56), v36);
          v86 = 0;
          v87 = 0;
          if (!PBReaderPlaceMark() || !CKDPShareIdentifierReadFrom(v36, a2, v59))
          {
            goto LABEL_68;
          }

          goto LABEL_48;
        }

        if (v32 == 2)
        {
          v33 = PBReaderReadString();
          v34 = 8;
LABEL_26:
          v35 = *(a1 + v34);
          *(a1 + v34) = v33;

          goto LABEL_66;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      v82 = objc_msgSend_position(a2, v32, v9);
    }

    while (v82 < objc_msgSend_length(a2, v83, v84));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225358018(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPShare);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPShareReadFrom(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2253586F4(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = objc_alloc_init(CKDPUserInformationBlockedRequestAccess);
        objc_msgSend_addBlockedUsers_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPUserInformationBlockedRequestAccessReadFrom(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225358DF4()
{
  v0 = qword_280D55098;
  qword_280D55098 = &unk_2838C9728;
}

uint64_t sub_225358FB4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v43[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43[0] & 0x7F) << v10;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 == 2)
      {
        v33 = PBReaderReadData();
        v34 = 16;
LABEL_22:
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;
LABEL_26:

        goto LABEL_28;
      }

      if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = 8;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v39 = objc_msgSend_position(a2, v37, v38);
      if (v39 >= objc_msgSend_length(a2, v40, v41))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v35 = objc_alloc_init(CKDPUserInformationRequestAccess);
    objc_storeStrong((a1 + 24), v35);
    v43[0] = 0;
    v43[1] = 0;
    if (!PBReaderPlaceMark() || !CKDPUserInformationRequestAccessReadFrom(v35, a2, v36))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225359980(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPUserInformationRequestAccess);
        objc_msgSend_addRequestingAccessUsers_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPUserInformationRequestAccessReadFrom(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22535A1D0()
{
  v0 = qword_280D54F48;
  qword_280D54F48 = &unk_2838C9750;
}

uint64_t sub_22535A3AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v43) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v43) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 == 2)
      {
        v35 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v35;
        goto LABEL_27;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPShareIdentifier);
        objc_storeStrong((a1 + 24), v33);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !CKDPShareIdentifierReadFrom(v33, a2, v34))
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v39 = objc_msgSend_position(a2, v37, v38);
      if (v39 >= objc_msgSend_length(a2, v40, v41))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPProtectionInfo);
    objc_storeStrong((a1 + 16), v33);
    v43 = 0;
    v44 = 0;
    if (!PBReaderPlaceMark() || !CKDPProtectionInfoReadFrom(v33, a2, v36))
    {
LABEL_31:

      return 0;
    }

LABEL_26:
    PBReaderRecallMark();
LABEL_27:

    goto LABEL_29;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPShareIdentifierReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v39) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v39, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v39 & 0x7F) << v10;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC250]);
        objc_storeStrong((a1 + 8), v32);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v35 = objc_msgSend_position(a2, v33, v34);
      if (v35 >= objc_msgSend_length(a2, v36, v37))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(MEMORY[0x277CBC278]);
    objc_storeStrong((a1 + 16), v32);
    v39 = 0;
    v40 = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPShareMetadataReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v128) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v128) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v128, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v128 & 0x7F) << v10;
        if ((v128 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 5)
      {
        if (v32 <= 7)
        {
          if (v32 == 6)
          {
            v98 = 0;
            v99 = 0;
            v100 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              LOBYTE(v128) = 0;
              v101 = objc_msgSend_position(a2, v32, v9, v128) + 1;
              if (v101 >= objc_msgSend_position(a2, v102, v103) && (v106 = objc_msgSend_position(a2, v104, v105) + 1, v106 <= objc_msgSend_length(a2, v107, v108)))
              {
                v109 = objc_msgSend_data(a2, v104, v105);
                v112 = objc_msgSend_position(a2, v110, v111);
                objc_msgSend_getBytes_range_(v109, v113, &v128, v112, 1);

                v116 = objc_msgSend_position(a2, v114, v115);
                objc_msgSend_setPosition_(a2, v117, v116 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v104, v105);
              }

              v100 |= (v128 & 0x7F) << v98;
              if ((v128 & 0x80) == 0)
              {
                break;
              }

              v98 += 7;
              v30 = v99++ >= 9;
              if (v30)
              {
                v53 = 0;
                goto LABEL_89;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v53 = 0;
            }

            else
            {
              v53 = v100;
            }

LABEL_89:
            v123 = 28;
            goto LABEL_94;
          }

          if (v32 == 7)
          {
            v77 = 0;
            v78 = 0;
            v79 = 0;
            *(a1 + 76) |= 4u;
            while (1)
            {
              LOBYTE(v128) = 0;
              v80 = objc_msgSend_position(a2, v32, v9, v128) + 1;
              if (v80 >= objc_msgSend_position(a2, v81, v82) && (v85 = objc_msgSend_position(a2, v83, v84) + 1, v85 <= objc_msgSend_length(a2, v86, v87)))
              {
                v88 = objc_msgSend_data(a2, v83, v84);
                v91 = objc_msgSend_position(a2, v89, v90);
                objc_msgSend_getBytes_range_(v88, v92, &v128, v91, 1);

                v95 = objc_msgSend_position(a2, v93, v94);
                objc_msgSend_setPosition_(a2, v96, v95 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v83, v84);
              }

              v79 |= (v128 & 0x7F) << v77;
              if ((v128 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              v30 = v78++ >= 9;
              if (v30)
              {
                v53 = 0;
                goto LABEL_85;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v53 = 0;
            }

            else
            {
              v53 = v79;
            }

LABEL_85:
            v123 = 32;
            goto LABEL_94;
          }
        }

        else
        {
          switch(v32)
          {
            case 8:
              v118 = objc_alloc_init(CKDPRecordType);
              objc_storeStrong((a1 + 48), v118);
              v128 = 0;
              v129 = 0;
              if (!PBReaderPlaceMark() || !CKDPRecordTypeReadFrom(v118, a2, v120))
              {
LABEL_99:

                return 0;
              }

              goto LABEL_79;
            case 9:
              v118 = objc_alloc_init(CKDPZoneSignedCryptoRequirements);
              objc_storeStrong((a1 + 64), v118);
              v128 = 0;
              v129 = 0;
              if (!PBReaderPlaceMark() || !sub_225392808(v118, a2, v122))
              {
                goto LABEL_99;
              }

              goto LABEL_79;
            case 0xA:
              v54 = 0;
              v55 = 0;
              v56 = 0;
              *(a1 + 76) |= 8u;
              while (1)
              {
                LOBYTE(v128) = 0;
                v57 = objc_msgSend_position(a2, v32, v9, v128) + 1;
                if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
                {
                  v65 = objc_msgSend_data(a2, v60, v61);
                  v68 = objc_msgSend_position(a2, v66, v67);
                  objc_msgSend_getBytes_range_(v65, v69, &v128, v68, 1);

                  v72 = objc_msgSend_position(a2, v70, v71);
                  objc_msgSend_setPosition_(a2, v73, v72 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v60, v61);
                }

                v56 |= (v128 & 0x7F) << v54;
                if ((v128 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                v30 = v55++ >= 9;
                if (v30)
                {
                  LOBYTE(v74) = 0;
                  goto LABEL_96;
                }
              }

              v74 = (v56 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_96:
              *(a1 + 72) = v74;
              goto LABEL_97;
          }
        }
      }

      else if (v32 <= 2)
      {
        if (v32 == 1)
        {
          v75 = PBReaderReadString();
          v76 = 56;
          goto LABEL_59;
        }

        if (v32 == 2)
        {
          v75 = PBReaderReadData();
          v76 = 40;
LABEL_59:
          v97 = *(a1 + v76);
          *(a1 + v76) = v75;

          goto LABEL_97;
        }
      }

      else
      {
        switch(v32)
        {
          case 3:
            v118 = objc_alloc_init(CKDPParticipant);
            v119 = 16;
LABEL_74:
            objc_storeStrong((a1 + v119), v118);
            v128 = 0;
            v129 = 0;
            if (!PBReaderPlaceMark() || !CKDPParticipantReadFrom(v118, a2, v121))
            {
              goto LABEL_99;
            }

LABEL_79:
            PBReaderRecallMark();

            goto LABEL_97;
          case 4:
            v118 = objc_alloc_init(CKDPParticipant);
            v119 = 8;
            goto LABEL_74;
          case 5:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 76) |= 1u;
            while (1)
            {
              LOBYTE(v128) = 0;
              v36 = objc_msgSend_position(a2, v32, v9, v128) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v128, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v128 & 0x7F) << v33;
              if ((v128 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                v53 = 0;
                goto LABEL_93;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v53 = 0;
            }

            else
            {
              v53 = v35;
            }

LABEL_93:
            v123 = 24;
LABEL_94:
            *(a1 + v123) = v53;
            goto LABEL_97;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_97:
      v124 = objc_msgSend_position(a2, v32, v9);
    }

    while (v124 < objc_msgSend_length(a2, v125, v126));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22535DEE0()
{
  v0 = qword_280D58498;
  qword_280D58498 = &unk_2838C9778;
}

uint64_t sub_22535E030(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPSignedVersionedBlob);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225360D24(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22535E5C4()
{
  v0 = qword_280D550A8;
  qword_280D550A8 = &unk_2838C97A0;
}

uint64_t sub_22535E7C4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v43[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43[0] & 0x7F) << v10;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = PBReaderReadString();
          v34 = 24;
LABEL_30:
          v37 = *(a1 + v34);
          *(a1 + v34) = v33;
LABEL_31:

          goto LABEL_32;
        }

        if (v32 == 4)
        {
          v33 = PBReaderReadString();
          v34 = 8;
          goto LABEL_30;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v37 = objc_alloc_init(CKDPShareIdentifier);
          objc_storeStrong((a1 + 32), v37);
          v43[0] = 0;
          v43[1] = 0;
          if (!PBReaderPlaceMark() || !CKDPShareIdentifierReadFrom(v37, a2, v38))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }

        if (v32 == 2)
        {
          v33 = PBReaderReadData();
          v34 = 16;
          goto LABEL_30;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v39 = objc_msgSend_position(a2, v35, v36);
    }

    while (v39 < objc_msgSend_length(a2, v40, v41));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22535F2BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v58 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v58, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v58 & 0x7F) << v10;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v59 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v59, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v59 & 0x7F) << v33;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_32;
          }
        }

        v53 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v35;
LABEL_32:
        *(a1 + 8) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225360D24(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v82 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v82, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v82 & 0x7F) << v10;
        if ((v82 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        break;
      }

      if (v32 == 3)
      {
        v33 = PBReaderReadData();
        v34 = 8;
LABEL_44:
        v78 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_51;
      }

      if (v32 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_51;
      }

      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        v84 = 0;
        v38 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
        {
          v46 = objc_msgSend_data(a2, v41, v42);
          v49 = objc_msgSend_position(a2, v47, v48);
          objc_msgSend_getBytes_range_(v46, v50, &v84, v49, 1);

          v53 = objc_msgSend_position(a2, v51, v52);
          objc_msgSend_setPosition_(a2, v54, v53 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v41, v42);
        }

        v37 |= (v84 & 0x7F) << v35;
        if ((v84 & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v30 = v36++ >= 9;
        if (v30)
        {
          LOBYTE(v55) = 0;
          goto LABEL_46;
        }
      }

      v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_46:
      *(a1 + 28) = v55;
LABEL_51:
      v79 = objc_msgSend_position(a2, v32, v9);
      if (v79 >= objc_msgSend_length(a2, v80, v81))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 1)
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        v83 = 0;
        v60 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v60 >= objc_msgSend_position(a2, v61, v62) && (v65 = objc_msgSend_position(a2, v63, v64) + 1, v65 <= objc_msgSend_length(a2, v66, v67)))
        {
          v68 = objc_msgSend_data(a2, v63, v64);
          v71 = objc_msgSend_position(a2, v69, v70);
          objc_msgSend_getBytes_range_(v68, v72, &v83, v71, 1);

          v75 = objc_msgSend_position(a2, v73, v74);
          objc_msgSend_setPosition_(a2, v76, v75 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v63, v64);
        }

        v59 |= (v83 & 0x7F) << v57;
        if ((v83 & 0x80) == 0)
        {
          break;
        }

        v57 += 7;
        v30 = v58++ >= 9;
        if (v30)
        {
          v77 = 0;
          goto LABEL_50;
        }
      }

      if (objc_msgSend_hasError(a2, v32, v9))
      {
        v77 = 0;
      }

      else
      {
        v77 = v59;
      }

LABEL_50:
      *(a1 + 24) = v77;
      goto LABEL_51;
    }

    if (v32 != 2)
    {
      goto LABEL_32;
    }

    v33 = PBReaderReadData();
    v34 = 16;
    goto LABEL_44;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2253624AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v97 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v97, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v97 & 0x7F) << v10;
        if ((v97 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 4)
      {
        *(a1 + 28) |= 2u;
        v96 = 0;
        v75 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v75 >= objc_msgSend_position(a2, v76, v77) && (v80 = objc_msgSend_position(a2, v78, v79) + 8, v80 <= objc_msgSend_length(a2, v81, v82)))
        {
          v84 = objc_msgSend_data(a2, v78, v79);
          v87 = objc_msgSend_position(a2, v85, v86);
          objc_msgSend_getBytes_range_(v84, v88, &v96, v87, 8);

          v91 = objc_msgSend_position(a2, v89, v90);
          objc_msgSend_setPosition_(a2, v92, v91 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v78, v79);
        }

        *(a1 + 16) = v96;
      }

      else if (v32 == 2)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v99 = 0;
          v57 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
          {
            v65 = objc_msgSend_data(a2, v60, v61);
            v68 = objc_msgSend_position(a2, v66, v67);
            objc_msgSend_getBytes_range_(v65, v69, &v99, v68, 1);

            v72 = objc_msgSend_position(a2, v70, v71);
            objc_msgSend_setPosition_(a2, v73, v72 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v60, v61);
          }

          v56 |= (v99 & 0x7F) << v54;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v30 = v55++ >= 9;
          if (v30)
          {
            v74 = 0;
            goto LABEL_46;
          }
        }

        v74 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v56;
LABEL_46:
        *(a1 + 8) = v74;
      }

      else if (v32 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v98 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v98, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v98 & 0x7F) << v33;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_50;
          }
        }

        v53 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v35;
LABEL_50:
        *(a1 + 24) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v93 = objc_msgSend_position(a2, v32, v9);
    }

    while (v93 < objc_msgSend_length(a2, v94, v95));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225362FFC(id *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v44) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v44, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v44 & 0x7F) << v10;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = objc_alloc_init(CKDPStreamingAssetSaveAssetResponse);
          objc_storeStrong(a1 + 4, v33);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !sub_225365898(v33, a2, v39))
          {
LABEL_38:

            return 0;
          }

          goto LABEL_35;
        }

        if (v32 == 4)
        {
          v33 = objc_alloc_init(CKDPStreamingAssetRetrieveAssetResponse);
          objc_storeStrong(a1 + 2, v33);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !sub_22536431C(v33, a2, v35))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(CKDPStreamingAssetIdentifier);
          objc_storeStrong(a1 + 1, v33);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !sub_225363A38(v33, a2, v38))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPStreamingAssetSaveAssetRequest);
          objc_storeStrong(a1 + 3, v33);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !sub_225364DEC(v33, a2, v34))
          {
            goto LABEL_38;
          }

LABEL_35:
          PBReaderRecallMark();

          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v40 = objc_msgSend_position(a2, v36, v37);
    }

    while (v40 < objc_msgSend_length(a2, v41, v42));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225363A38(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v43 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        v33 = PBReaderReadData();
        v34 = &OBJC_IVAR___CKDPStreamingAssetIdentifier__referenceSignature;
        goto LABEL_23;
      }

      if (v32 == 2)
      {
        break;
      }

      if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = &OBJC_IVAR___CKDPStreamingAssetIdentifier__owner;
LABEL_23:
        v35 = *v34;
        v36 = *(a1 + v35);
        *(a1 + v35) = v33;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v39 = objc_msgSend_position(a2, v37, v38);
      if (v39 >= objc_msgSend_length(a2, v40, v41))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = PBReaderReadData();
    v34 = &OBJC_IVAR___CKDPStreamingAssetIdentifier__fileSignature;
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22536431C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v81 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v81, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v81 & 0x7F) << v10;
        if ((v81 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 != 2)
      {
        if (v32 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_50;
        }

        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v83 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v83, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v83 & 0x7F) << v33;
          if ((v83 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_48;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v53 = 0;
        }

        else
        {
          v53 = v35;
        }

LABEL_48:
        v77 = 16;
        goto LABEL_49;
      }

      v54 = PBReaderReadString();
      v55 = *(a1 + 24);
      *(a1 + 24) = v54;

LABEL_50:
      v78 = objc_msgSend_position(a2, v32, v9);
      if (v78 >= objc_msgSend_length(a2, v79, v80))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      v82 = 0;
      v59 = objc_msgSend_position(a2, v32, v9) + 1;
      if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
      {
        v67 = objc_msgSend_data(a2, v62, v63);
        v70 = objc_msgSend_position(a2, v68, v69);
        objc_msgSend_getBytes_range_(v67, v71, &v82, v70, 1);

        v74 = objc_msgSend_position(a2, v72, v73);
        objc_msgSend_setPosition_(a2, v75, v74 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v62, v63);
      }

      v58 |= (v82 & 0x7F) << v56;
      if ((v82 & 0x80) == 0)
      {
        break;
      }

      v56 += 7;
      v30 = v57++ >= 9;
      if (v30)
      {
        v53 = 0;
        goto LABEL_44;
      }
    }

    if (objc_msgSend_hasError(a2, v32, v9))
    {
      v53 = 0;
    }

    else
    {
      v53 = v58;
    }

LABEL_44:
    v77 = 8;
LABEL_49:
    *(a1 + v77) = v53;
    goto LABEL_50;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225364DEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v81 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v81, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v81 & 0x7F) << v10;
        if ((v81 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v74 = PBReaderReadString();
        v75 = *(a1 + 24);
        *(a1 + 24) = v74;
      }

      else
      {
        if (v32 == 2)
        {
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v82 = 0;
            v57 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
            {
              v65 = objc_msgSend_data(a2, v60, v61);
              v68 = objc_msgSend_position(a2, v66, v67);
              objc_msgSend_getBytes_range_(v65, v69, &v82, v68, 1);

              v72 = objc_msgSend_position(a2, v70, v71);
              objc_msgSend_setPosition_(a2, v73, v72 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v60, v61);
            }

            v56 |= (v82 & 0x7F) << v54;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v30 = v55++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_44;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v56;
          }

LABEL_44:
          v77 = 16;
        }

        else
        {
          if (v32 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_50;
          }

          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v83 = 0;
            v36 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v83, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v83 & 0x7F) << v33;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_48;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_48:
          v77 = 8;
        }

        *(a1 + v77) = v53;
      }

LABEL_50:
      v78 = objc_msgSend_position(a2, v32, v9);
    }

    while (v78 < objc_msgSend_length(a2, v79, v80));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225365898(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v81 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v81, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v81 & 0x7F) << v10;
        if ((v81 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 != 2)
      {
        if (v32 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_50;
        }

        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v83 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v83, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v83 & 0x7F) << v33;
          if ((v83 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_48;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v53 = 0;
        }

        else
        {
          v53 = v35;
        }

LABEL_48:
        v77 = 8;
        goto LABEL_49;
      }

      v54 = PBReaderReadString();
      v55 = *(a1 + 24);
      *(a1 + 24) = v54;

LABEL_50:
      v78 = objc_msgSend_position(a2, v32, v9);
      if (v78 >= objc_msgSend_length(a2, v79, v80))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    *(a1 + 32) |= 2u;
    while (1)
    {
      v82 = 0;
      v59 = objc_msgSend_position(a2, v32, v9) + 1;
      if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
      {
        v67 = objc_msgSend_data(a2, v62, v63);
        v70 = objc_msgSend_position(a2, v68, v69);
        objc_msgSend_getBytes_range_(v67, v71, &v82, v70, 1);

        v74 = objc_msgSend_position(a2, v72, v73);
        objc_msgSend_setPosition_(a2, v75, v74 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v62, v63);
      }

      v58 |= (v82 & 0x7F) << v56;
      if ((v82 & 0x80) == 0)
      {
        break;
      }

      v56 += 7;
      v30 = v57++ >= 9;
      if (v30)
      {
        v53 = 0;
        goto LABEL_44;
      }
    }

    if (objc_msgSend_hasError(a2, v32, v9))
    {
      v53 = 0;
    }

    else
    {
      v53 = v58;
    }

LABEL_44:
    v77 = 16;
LABEL_49:
    *(a1 + v77) = v53;
    goto LABEL_50;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225366D9C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    v10 = 0x277CBC000uLL;
    v11 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
    v12 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
    v13 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        LOBYTE(v162) = 0;
        v17 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v17 >= objc_msgSend_position(a2, v18, v19) && (v22 = objc_msgSend_position(a2, v20, v21) + 1, v22 <= objc_msgSend_length(a2, v23, v24)))
        {
          v25 = objc_msgSend_data(a2, v20, v21);
          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_getBytes_range_(v25, v29, &v162, v28, 1);

          v32 = objc_msgSend_position(a2, v30, v31);
          objc_msgSend_setPosition_(a2, v33, v32 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v21);
        }

        v16 |= (v162 & 0x7F) << v14;
        if ((v162 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v34 = v15++ >= 9;
        if (v34)
        {
          v35 = 0;
          goto LABEL_16;
        }
      }

      v35 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v16;
LABEL_16:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v35 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v36 = (v35 >> 3);
      if ((v35 >> 3) <= 4)
      {
        if (v36 > 2)
        {
          if (v36 == 3)
          {
            v91 = 0;
            v92 = 0;
            v93 = 0;
            *(a1 + v12[109]) |= 2u;
            while (1)
            {
              LOBYTE(v162) = 0;
              v94 = objc_msgSend_position(a2, v36, v9) + 1;
              if (v94 >= objc_msgSend_position(a2, v95, v96) && (v99 = objc_msgSend_position(a2, v97, v98) + 1, v99 <= objc_msgSend_length(a2, v100, v101)))
              {
                v102 = objc_msgSend_data(a2, v97, v98);
                v105 = objc_msgSend_position(a2, v103, v104);
                objc_msgSend_getBytes_range_(v102, v106, &v162, v105, 1);

                v109 = objc_msgSend_position(a2, v107, v108);
                objc_msgSend_setPosition_(a2, v110, v109 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v97, v98);
              }

              v93 |= (v162 & 0x7F) << v91;
              if ((v162 & 0x80) == 0)
              {
                break;
              }

              v91 += 7;
              v34 = v92++ >= 9;
              if (v34)
              {
                v58 = 0;
                goto LABEL_96;
              }
            }

            if (objc_msgSend_hasError(a2, v36, v9))
            {
              v58 = 0;
            }

            else
            {
              v58 = v93;
            }

LABEL_96:
            v135 = 64;
            goto LABEL_97;
          }

          if (v36 == 4)
          {
            if (v9 == 2)
            {
              v162 = 0;
              v163 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v62 = objc_msgSend_position(a2, v60, v61);
                if (v62 >= objc_msgSend_length(a2, v63, v64) || (objc_msgSend_hasError(a2, v65, v66) & 1) != 0)
                {
                  break;
                }

                v69 = 0;
                v70 = 0;
                v71 = 0;
                while (1)
                {
                  v164 = 0;
                  v72 = objc_msgSend_position(a2, v67, v68) + 1;
                  if (v72 >= objc_msgSend_position(a2, v73, v74) && (v77 = objc_msgSend_position(a2, v75, v76) + 1, v77 <= objc_msgSend_length(a2, v78, v79)))
                  {
                    v80 = objc_msgSend_data(a2, v75, v76);
                    v83 = objc_msgSend_position(a2, v81, v82);
                    objc_msgSend_getBytes_range_(v80, v84, &v164, v83, 1);

                    v87 = objc_msgSend_position(a2, v85, v86);
                    objc_msgSend_setPosition_(a2, v88, v87 + 1);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v75, v76);
                  }

                  v71 |= (v164 & 0x7F) << v69;
                  if ((v164 & 0x80) == 0)
                  {
                    break;
                  }

                  v69 += 7;
                  v34 = v70++ >= 9;
                  if (v34)
                  {
                    goto LABEL_54;
                  }
                }

                objc_msgSend_hasError(a2, v67, v68);
LABEL_54:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v136 = v12;
              v137 = v11;
              v138 = v10;
              v139 = 0;
              v140 = 0;
              v141 = 0;
              while (1)
              {
                LOBYTE(v162) = 0;
                v142 = objc_msgSend_position(a2, v36, v9) + 1;
                if (v142 >= objc_msgSend_position(a2, v143, v144) && (v147 = objc_msgSend_position(a2, v145, v146) + 1, v147 <= objc_msgSend_length(a2, v148, v149)))
                {
                  v150 = objc_msgSend_data(a2, v145, v146);
                  v153 = objc_msgSend_position(a2, v151, v152);
                  objc_msgSend_getBytes_range_(v150, v154, &v162, v153, 1);

                  v157 = objc_msgSend_position(a2, v155, v156);
                  objc_msgSend_setPosition_(a2, v158, v157 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v145, v146);
                }

                v141 |= (v162 & 0x7F) << v139;
                if ((v162 & 0x80) == 0)
                {
                  break;
                }

                v139 += 7;
                v34 = v140++ >= 9;
                if (v34)
                {
                  goto LABEL_111;
                }
              }

              objc_msgSend_hasError(a2, v36, v9);
LABEL_111:
              PBRepeatedInt32Add();
              v10 = v138;
              v11 = v137;
              v12 = v136;
              v13 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
            }

            goto LABEL_112;
          }
        }

        else
        {
          if (v36 == 1)
          {
            v37 = objc_alloc_init(*(v10 + 592));
            objc_storeStrong((a1 + v11[108]), v37);
            v162 = 0;
            v163 = 0;
            if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
            {
LABEL_115:

              return 0;
            }

            goto LABEL_77;
          }

          if (v36 == 2)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + v12[109]) |= 1u;
            while (1)
            {
              LOBYTE(v162) = 0;
              v41 = objc_msgSend_position(a2, v36, v9) + 1;
              if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
              {
                v49 = objc_msgSend_data(a2, v44, v45);
                v52 = objc_msgSend_position(a2, v50, v51);
                objc_msgSend_getBytes_range_(v49, v53, &v162, v52, 1);

                v56 = objc_msgSend_position(a2, v54, v55);
                objc_msgSend_setPosition_(a2, v57, v56 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v44, v45);
              }

              v40 |= (v162 & 0x7F) << v38;
              if ((v162 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v34 = v39++ >= 9;
              if (v34)
              {
                v58 = 0;
                goto LABEL_92;
              }
            }

            if (objc_msgSend_hasError(a2, v36, v9))
            {
              v58 = 0;
            }

            else
            {
              v58 = v40;
            }

LABEL_92:
            v135 = v13[110];
LABEL_97:
            *(a1 + v135) = v58;
            goto LABEL_112;
          }
        }
      }

      else if (v36 <= 6)
      {
        if (v36 == 5)
        {
          v37 = objc_alloc_init(CKDPSubscriptionNotification);
          objc_storeStrong((a1 + 56), v37);
          v162 = 0;
          v163 = 0;
          if (!PBReaderPlaceMark() || !sub_22536967C(v37, a2, v113))
          {
            goto LABEL_115;
          }

          goto LABEL_77;
        }

        if (v36 == 6)
        {
          v37 = objc_alloc_init(CKDPQueryFilter);
          objc_msgSend_addFilters_(a1, v89, v37);
          v162 = 0;
          v163 = 0;
          if (!PBReaderPlaceMark() || !sub_22531338C(v37, a2, v90))
          {
            goto LABEL_115;
          }

          goto LABEL_77;
        }
      }

      else
      {
        switch(v36)
        {
          case 7:
            v37 = objc_alloc_init(CKDPRecordType);
            objc_msgSend_addRecordTypes_(a1, v111, v37);
            v162 = 0;
            v163 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordTypeReadFrom(v37, a2, v112))
            {
              goto LABEL_115;
            }

            goto LABEL_77;
          case 8:
            v114 = 0;
            v115 = 0;
            v116 = 0;
            *(a1 + v12[109]) |= 4u;
            while (1)
            {
              LOBYTE(v162) = 0;
              v117 = objc_msgSend_position(a2, v36, v9) + 1;
              if (v117 >= objc_msgSend_position(a2, v118, v119) && (v122 = objc_msgSend_position(a2, v120, v121) + 1, v122 <= objc_msgSend_length(a2, v123, v124)))
              {
                v125 = objc_msgSend_data(a2, v120, v121);
                v128 = objc_msgSend_position(a2, v126, v127);
                objc_msgSend_getBytes_range_(v125, v129, &v162, v128, 1);

                v132 = objc_msgSend_position(a2, v130, v131);
                objc_msgSend_setPosition_(a2, v133, v132 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v120, v121);
              }

              v116 |= (v162 & 0x7F) << v114;
              if ((v162 & 0x80) == 0)
              {
                break;
              }

              v114 += 7;
              v34 = v115++ >= 9;
              if (v34)
              {
                LOBYTE(v134) = 0;
                goto LABEL_99;
              }
            }

            v134 = (v116 != 0) & ~objc_msgSend_hasError(a2, v36, v9);
LABEL_99:
            *(a1 + 88) = v134;
            goto LABEL_112;
          case 0xA:
            v37 = objc_alloc_init(MEMORY[0x277CBC278]);
            objc_storeStrong((a1 + 80), v37);
            v162 = 0;
            v163 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
            {
              goto LABEL_115;
            }

LABEL_77:
            PBReaderRecallMark();

            goto LABEL_112;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_112:
      v159 = objc_msgSend_position(a2, v36, v9);
    }

    while (v159 < objc_msgSend_length(a2, v160, v161));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2253684C4()
{
  v0 = qword_280D584A8;
  qword_280D584A8 = &unk_2838C97C8;
}

uint64_t sub_225368614(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPSubscription);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225366D9C(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225368BA8()
{
  v0 = qword_280D584B8;
  qword_280D584B8 = &unk_2838C97F0;
}

uint64_t sub_225368CF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v39[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v39, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v39[0] & 0x7F) << v10;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC250]);
        objc_storeStrong((a1 + 8), v32);
        v39[0] = 0;
        v39[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v35 = objc_msgSend_position(a2, v33, v34);
    }

    while (v35 < objc_msgSend_length(a2, v36, v37));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22536967C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v104[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v104[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v104, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v104[0] & 0x7F) << v10;
        if ((v104[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 3)
      {
        switch(v32)
        {
          case 4:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              LOBYTE(v104[0]) = 0;
              v41 = objc_msgSend_position(a2, v32, v9, v104[0]) + 1;
              if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
              {
                v49 = objc_msgSend_data(a2, v44, v45);
                v52 = objc_msgSend_position(a2, v50, v51);
                objc_msgSend_getBytes_range_(v49, v53, v104, v52, 1);

                v56 = objc_msgSend_position(a2, v54, v55);
                objc_msgSend_setPosition_(a2, v57, v56 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v44, v45);
              }

              v40 |= (v104[0] & 0x7F) << v38;
              if ((v104[0] & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v30 = v39++ >= 9;
              if (v30)
              {
                LOBYTE(v58) = 0;
                goto LABEL_61;
              }
            }

            v58 = (v40 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_61:
            v99 = 33;
            goto LABEL_66;
          case 5:
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              LOBYTE(v104[0]) = 0;
              v82 = objc_msgSend_position(a2, v32, v9, v104[0]) + 1;
              if (v82 >= objc_msgSend_position(a2, v83, v84) && (v87 = objc_msgSend_position(a2, v85, v86) + 1, v87 <= objc_msgSend_length(a2, v88, v89)))
              {
                v90 = objc_msgSend_data(a2, v85, v86);
                v93 = objc_msgSend_position(a2, v91, v92);
                objc_msgSend_getBytes_range_(v90, v94, v104, v93, 1);

                v97 = objc_msgSend_position(a2, v95, v96);
                objc_msgSend_setPosition_(a2, v98, v97 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v85, v86);
              }

              v81 |= (v104[0] & 0x7F) << v79;
              if ((v104[0] & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v30 = v80++ >= 9;
              if (v30)
              {
                LOBYTE(v58) = 0;
                goto LABEL_65;
              }
            }

            v58 = (v81 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_65:
            v99 = 34;
            goto LABEL_66;
          case 6:
            v35 = PBReaderReadString();
            v36 = *(a1 + 24);
            *(a1 + 24) = v35;

            goto LABEL_67;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v34 = objc_alloc_init(CKDPSubscriptionNotificationAlert);
            objc_storeStrong((a1 + 16), v34);
            v104[0] = 0;
            v104[1] = 0;
            if (!PBReaderPlaceMark() || !sub_22536AB64(v34, a2, v37))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_30;
          case 2:
            v59 = 0;
            v60 = 0;
            v61 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              LOBYTE(v104[0]) = 0;
              v62 = objc_msgSend_position(a2, v32, v9, v104[0]) + 1;
              if (v62 >= objc_msgSend_position(a2, v63, v64) && (v67 = objc_msgSend_position(a2, v65, v66) + 1, v67 <= objc_msgSend_length(a2, v68, v69)))
              {
                v70 = objc_msgSend_data(a2, v65, v66);
                v73 = objc_msgSend_position(a2, v71, v72);
                objc_msgSend_getBytes_range_(v70, v74, v104, v73, 1);

                v77 = objc_msgSend_position(a2, v75, v76);
                objc_msgSend_setPosition_(a2, v78, v77 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v65, v66);
              }

              v61 |= (v104[0] & 0x7F) << v59;
              if ((v104[0] & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              v30 = v60++ >= 9;
              if (v30)
              {
                LOBYTE(v58) = 0;
                goto LABEL_63;
              }
            }

            v58 = (v61 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_63:
            v99 = 32;
LABEL_66:
            *(a1 + v99) = v58;
            goto LABEL_67;
          case 3:
            v34 = PBReaderReadString();
            if (v34)
            {
              objc_msgSend_addAdditionalFields_(a1, v33, v34);
            }

LABEL_30:

            goto LABEL_67;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_67:
      v100 = objc_msgSend_position(a2, v32, v9);
    }

    while (v100 < objc_msgSend_length(a2, v101, v102));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22536AB64(char *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v44 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v44, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v44 & 0x7F) << v10;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      switch((v31 >> 3))
      {
        case 1u:
          v32 = PBReaderReadString();
          v33 = 80;
          goto LABEL_36;
        case 2u:
          v32 = PBReaderReadString();
          v33 = 40;
          goto LABEL_36;
        case 3u:
          v35 = PBReaderReadString();
          if (v35)
          {
            objc_msgSend_addLocalizedArguments_(a1, v37, v35);
          }

          goto LABEL_37;
        case 4u:
          v32 = PBReaderReadString();
          v33 = 8;
          goto LABEL_36;
        case 5u:
          v32 = PBReaderReadString();
          v33 = 24;
          goto LABEL_36;
        case 6u:
          v32 = PBReaderReadString();
          v33 = 48;
          goto LABEL_36;
        case 7u:
          v32 = PBReaderReadString();
          v33 = 16;
          goto LABEL_36;
        case 8u:
          v32 = PBReaderReadString();
          v33 = 88;
          goto LABEL_36;
        case 9u:
          v32 = PBReaderReadString();
          v33 = 104;
          goto LABEL_36;
        case 0xAu:
          v35 = PBReaderReadString();
          if (v35)
          {
            objc_msgSend_addTitleLocalizedArguments_(a1, v36, v35);
          }

          goto LABEL_37;
        case 0xBu:
          v32 = PBReaderReadString();
          v33 = 56;
          goto LABEL_36;
        case 0xCu:
          v32 = PBReaderReadString();
          v33 = 72;
LABEL_36:
          v35 = *&a1[v33];
          *&a1[v33] = v32;
          goto LABEL_37;
        case 0xDu:
          v35 = PBReaderReadString();
          if (v35)
          {
            objc_msgSend_addSubtitleLocalizedArguments_(a1, v34, v35);
          }

LABEL_37:

          goto LABEL_38;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

LABEL_38:
          v40 = objc_msgSend_position(a2, v38, v39);
          if (v40 >= objc_msgSend_length(a2, v41, v42))
          {
            return objc_msgSend_hasError(a2, v8, v9) ^ 1;
          }

          break;
      }
    }
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22536C06C()
{
  v0 = qword_280D584C8;
  qword_280D584C8 = &unk_2838C9818;
}

uint64_t sub_22536C1BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v39[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v39, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v39[0] & 0x7F) << v10;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC250]);
        objc_storeStrong((a1 + 8), v32);
        v39[0] = 0;
        v39[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v35 = objc_msgSend_position(a2, v33, v34);
    }

    while (v35 < objc_msgSend_length(a2, v36, v37));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22536C8AC(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPSubscription);
        objc_msgSend_addSubscriptions_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225366D9C(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22536EBA4(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v41 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41 & 0x7F) << v10;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = a1[1];
        a1[1] = v32;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = PBReaderReadString();
    if (v33)
    {
      objc_msgSend_addValues_(a1, v34, v33);
    }

    goto LABEL_22;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22536F5DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v63) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v63) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v63, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v63 & 0x7F) << v10;
        if ((v63 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = objc_alloc_init(CKDPThrottlingConfigRateLimit);
          objc_storeStrong((a1 + 24), v33);
          v63 = 0;
          v64 = 0;
          if (!PBReaderPlaceMark() || !sub_225372BFC(v33, a2, v58))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_39;
        }

        if (v32 == 10)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v63) = 0;
            v38 = objc_msgSend_position(a2, v32, v9, v63) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v63, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v63 & 0x7F) << v35;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_43;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v55 = 0;
          }

          else
          {
            v55 = v37;
          }

LABEL_43:
          *(a1 + 32) = v55;
          goto LABEL_44;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v56 = PBReaderReadString();
          v57 = *(a1 + 16);
          *(a1 + 16) = v56;

          goto LABEL_44;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPThrottlingConfigCriteria);
          objc_storeStrong((a1 + 8), v33);
          v63 = 0;
          v64 = 0;
          if (!PBReaderPlaceMark() || !sub_225371870(v33, a2, v34))
          {
            goto LABEL_46;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225371870(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v102 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v102, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v102 & 0x7F) << v10;
        if ((v102 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 4)
      {
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            v76 = 0;
            v77 = 0;
            v78 = 0;
            *(a1 + 80) |= 4u;
            while (1)
            {
              v104 = 0;
              v79 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v79 >= objc_msgSend_position(a2, v80, v81) && (v84 = objc_msgSend_position(a2, v82, v83) + 1, v84 <= objc_msgSend_length(a2, v85, v86)))
              {
                v87 = objc_msgSend_data(a2, v82, v83);
                v90 = objc_msgSend_position(a2, v88, v89);
                objc_msgSend_getBytes_range_(v87, v91, &v104, v90, 1);

                v94 = objc_msgSend_position(a2, v92, v93);
                objc_msgSend_setPosition_(a2, v95, v94 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v82, v83);
              }

              v78 |= (v104 & 0x7F) << v76;
              if ((v104 & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              v30 = v77++ >= 9;
              if (v30)
              {
                v55 = 0;
                goto LABEL_76;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v55 = 0;
            }

            else
            {
              v55 = v78;
            }

LABEL_76:
            v98 = 64;
          }

          else
          {
            if (v32 != 4)
            {
              goto LABEL_63;
            }

            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + 80) |= 2u;
            while (1)
            {
              v103 = 0;
              v59 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
              {
                v67 = objc_msgSend_data(a2, v62, v63);
                v70 = objc_msgSend_position(a2, v68, v69);
                objc_msgSend_getBytes_range_(v67, v71, &v103, v70, 1);

                v74 = objc_msgSend_position(a2, v72, v73);
                objc_msgSend_setPosition_(a2, v75, v74 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v62, v63);
              }

              v58 |= (v103 & 0x7F) << v56;
              if ((v103 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v30 = v57++ >= 9;
              if (v30)
              {
                v55 = 0;
                goto LABEL_72;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v55 = 0;
            }

            else
            {
              v55 = v58;
            }

LABEL_72:
            v98 = 32;
          }

          goto LABEL_77;
        }

        if (v32 != 1)
        {
          if (v32 != 2)
          {
            goto LABEL_63;
          }

          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            v105 = 0;
            v38 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v105, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v105 & 0x7F) << v35;
            if ((v105 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_68;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v55 = 0;
          }

          else
          {
            v55 = v37;
          }

LABEL_68:
          v98 = 16;
LABEL_77:
          *(a1 + v98) = v55;
          goto LABEL_78;
        }

        v33 = PBReaderReadString();
        v34 = 24;
      }

      else if (v32 <= 9)
      {
        if (v32 == 5)
        {
          v33 = PBReaderReadString();
          v34 = 72;
        }

        else
        {
          if (v32 != 6)
          {
LABEL_63:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_78;
          }

          v33 = PBReaderReadString();
          v34 = 56;
        }
      }

      else
      {
        switch(v32)
        {
          case 0xA:
            v33 = PBReaderReadString();
            v34 = 48;
            break;
          case 0xB:
            v33 = PBReaderReadString();
            v34 = 40;
            break;
          case 0xC:
            v33 = PBReaderReadString();
            v34 = 8;
            break;
          default:
            goto LABEL_63;
        }
      }

      v96 = *(a1 + v34);
      *(a1 + v34) = v33;

LABEL_78:
      v99 = objc_msgSend_position(a2, v32, v9);
    }

    while (v99 < objc_msgSend_length(a2, v100, v101));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225372BFC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v141 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v141, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v141 & 0x7F) << v10;
        if ((v141 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        break;
      }

      switch(v32)
      {
        case 3:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 36) |= 0x10u;
          while (1)
          {
            v142 = 0;
            v78 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v78 >= objc_msgSend_position(a2, v79, v80) && (v83 = objc_msgSend_position(a2, v81, v82) + 1, v83 <= objc_msgSend_length(a2, v84, v85)))
            {
              v86 = objc_msgSend_data(a2, v81, v82);
              v89 = objc_msgSend_position(a2, v87, v88);
              objc_msgSend_getBytes_range_(v86, v90, &v142, v89, 1);

              v93 = objc_msgSend_position(a2, v91, v92);
              objc_msgSend_setPosition_(a2, v94, v93 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v81, v82);
            }

            v77 |= (v142 & 0x7F) << v75;
            if ((v142 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v30 = v76++ >= 9;
            if (v30)
            {
              v74 = 0;
              goto LABEL_73;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v74 = 0;
          }

          else
          {
            v74 = v77;
          }

LABEL_73:
          v136 = 32;
LABEL_91:
          *(a1 + v136) = v74;
          goto LABEL_92;
        case 4:
          v95 = 0;
          v96 = 0;
          v97 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v146 = 0;
            v98 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v98 >= objc_msgSend_position(a2, v99, v100) && (v103 = objc_msgSend_position(a2, v101, v102) + 1, v103 <= objc_msgSend_length(a2, v104, v105)))
            {
              v106 = objc_msgSend_data(a2, v101, v102);
              v109 = objc_msgSend_position(a2, v107, v108);
              objc_msgSend_getBytes_range_(v106, v110, &v146, v109, 1);

              v113 = objc_msgSend_position(a2, v111, v112);
              objc_msgSend_setPosition_(a2, v114, v113 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v101, v102);
            }

            v97 |= (v146 & 0x7F) << v95;
            if ((v146 & 0x80) == 0)
            {
              break;
            }

            v95 += 7;
            v30 = v96++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_77;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v97;
          }

LABEL_77:
          v137 = 16;
          break;
        case 5:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v145 = 0;
            v36 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v145, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v145 & 0x7F) << v33;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_85;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_85:
          v137 = 8;
          break;
        default:
          goto LABEL_68;
      }

      *(a1 + v137) = v53;
LABEL_92:
      v138 = objc_msgSend_position(a2, v32, v9);
      if (v138 >= objc_msgSend_length(a2, v139, v140))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 1)
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
      *(a1 + 36) |= 8u;
      while (1)
      {
        v144 = 0;
        v118 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v118 >= objc_msgSend_position(a2, v119, v120) && (v123 = objc_msgSend_position(a2, v121, v122) + 1, v123 <= objc_msgSend_length(a2, v124, v125)))
        {
          v126 = objc_msgSend_data(a2, v121, v122);
          v129 = objc_msgSend_position(a2, v127, v128);
          objc_msgSend_getBytes_range_(v126, v130, &v144, v129, 1);

          v133 = objc_msgSend_position(a2, v131, v132);
          objc_msgSend_setPosition_(a2, v134, v133 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v121, v122);
        }

        v117 |= (v144 & 0x7F) << v115;
        if ((v144 & 0x80) == 0)
        {
          break;
        }

        v115 += 7;
        v30 = v116++ >= 9;
        if (v30)
        {
          v74 = 0;
          goto LABEL_81;
        }
      }

      if (objc_msgSend_hasError(a2, v32, v9))
      {
        v74 = 0;
      }

      else
      {
        v74 = v117;
      }

LABEL_81:
      v136 = 28;
    }

    else
    {
      if (v32 != 2)
      {
LABEL_68:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_92;
      }

      v54 = 0;
      v55 = 0;
      v56 = 0;
      *(a1 + 36) |= 4u;
      while (1)
      {
        v143 = 0;
        v57 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
        {
          v65 = objc_msgSend_data(a2, v60, v61);
          v68 = objc_msgSend_position(a2, v66, v67);
          objc_msgSend_getBytes_range_(v65, v69, &v143, v68, 1);

          v72 = objc_msgSend_position(a2, v70, v71);
          objc_msgSend_setPosition_(a2, v73, v72 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v60, v61);
        }

        v56 |= (v143 & 0x7F) << v54;
        if ((v143 & 0x80) == 0)
        {
          break;
        }

        v54 += 7;
        v30 = v55++ >= 9;
        if (v30)
        {
          v74 = 0;
          goto LABEL_90;
        }
      }

      if (objc_msgSend_hasError(a2, v32, v9))
      {
        v74 = 0;
      }

      else
      {
        v74 = v56;
      }

LABEL_90:
      v136 = 24;
    }

    goto LABEL_91;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225373CC8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v82 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v82, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v82 & 0x7F) << v10;
        if ((v82 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v83 = 0;
            v61 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
            {
              v69 = objc_msgSend_data(a2, v64, v65);
              v72 = objc_msgSend_position(a2, v70, v71);
              objc_msgSend_getBytes_range_(v69, v73, &v83, v72, 1);

              v76 = objc_msgSend_position(a2, v74, v75);
              objc_msgSend_setPosition_(a2, v77, v76 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v64, v65);
            }

            v60 |= (v83 & 0x7F) << v58;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v30 = v59++ >= 9;
            if (v30)
            {
              v78 = 0;
              goto LABEL_50;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v78 = 0;
          }

          else
          {
            v78 = v60;
          }

LABEL_50:
          *(a1 + 8) = v78;
        }

        else
        {
          if (v32 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_51;
          }

          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v84 = 0;
            v38 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v84, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v84 & 0x7F) << v35;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              LOBYTE(v55) = 0;
              goto LABEL_46;
            }
          }

          v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_46:
          *(a1 + 32) = v55;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = PBReaderReadData();
          v34 = 24;
        }

        else
        {
          if (v32 != 2)
          {
            goto LABEL_32;
          }

          v33 = PBReaderReadString();
          v34 = 16;
        }

        v57 = *(a1 + v34);
        *(a1 + v34) = v33;
      }

LABEL_51:
      v79 = objc_msgSend_position(a2, v32, v9);
    }

    while (v79 < objc_msgSend_length(a2, v80, v81));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2253746B0()
{
  v0 = qword_280D584D8;
  qword_280D584D8 = &unk_2838C9840;
}

uint64_t sub_225374800(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPTokenRegistrationBody);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225373CC8(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225374DA8()
{
  v0 = qword_280D584E8;
  qword_280D584E8 = &unk_2838C9868;
}

uint64_t sub_225374EF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPTokenRegistrationBody);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225373CC8(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2253761F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v39[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v39, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v39[0] & 0x7F) << v10;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC250]);
        objc_storeStrong((a1 + 8), v32);
        v39[0] = 0;
        v39[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v35 = objc_msgSend_position(a2, v33, v34);
    }

    while (v35 < objc_msgSend_length(a2, v36, v37));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225376688()
{
  v0 = qword_280D550B8;
  qword_280D550B8 = &unk_2838C9890;
}

uint64_t sub_225376B78(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    v10 = 0x277CBC000uLL;
    v11 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
    v12 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
    v13 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        LOBYTE(v139) = 0;
        v17 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v17 >= objc_msgSend_position(a2, v18, v19) && (v22 = objc_msgSend_position(a2, v20, v21) + 1, v22 <= objc_msgSend_length(a2, v23, v24)))
        {
          v25 = objc_msgSend_data(a2, v20, v21);
          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_getBytes_range_(v25, v29, &v139, v28, 1);

          v32 = objc_msgSend_position(a2, v30, v31);
          objc_msgSend_setPosition_(a2, v33, v32 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v21);
        }

        v16 |= (v139 & 0x7F) << v14;
        if ((v139 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v34 = v15++ >= 9;
        if (v34)
        {
          v35 = 0;
          goto LABEL_16;
        }
      }

      v35 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v16;
LABEL_16:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v35 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v36 = (v35 >> 3);
      if ((v35 >> 3) > 3)
      {
        switch(v36)
        {
          case 4:
            v60 = PBReaderReadString();
            v61 = a1[5];
            a1[5] = v60;

            goto LABEL_85;
          case 5:
            if (v9 == 2)
            {
              v139 = 0;
              v140 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v86 = objc_msgSend_position(a2, v84, v85);
                if (v86 >= objc_msgSend_length(a2, v87, v88) || (objc_msgSend_hasError(a2, v89, v90) & 1) != 0)
                {
                  break;
                }

                v93 = 0;
                v94 = 0;
                v95 = 0;
                while (1)
                {
                  v141 = 0;
                  v96 = objc_msgSend_position(a2, v91, v92) + 1;
                  if (v96 >= objc_msgSend_position(a2, v97, v98) && (v101 = objc_msgSend_position(a2, v99, v100) + 1, v101 <= objc_msgSend_length(a2, v102, v103)))
                  {
                    v104 = objc_msgSend_data(a2, v99, v100);
                    v107 = objc_msgSend_position(a2, v105, v106);
                    objc_msgSend_getBytes_range_(v104, v108, &v141, v107, 1);

                    v111 = objc_msgSend_position(a2, v109, v110);
                    objc_msgSend_setPosition_(a2, v112, v111 + 1);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v99, v100);
                  }

                  v95 |= (v141 & 0x7F) << v93;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v93 += 7;
                  v34 = v94++ >= 9;
                  if (v34)
                  {
                    goto LABEL_66;
                  }
                }

                objc_msgSend_hasError(a2, v91, v92);
LABEL_66:
                PBRepeatedInt64Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v113 = v12;
              v114 = v11;
              v115 = v10;
              v116 = 0;
              v117 = 0;
              v118 = 0;
              while (1)
              {
                LOBYTE(v139) = 0;
                v119 = objc_msgSend_position(a2, v36, v9) + 1;
                if (v119 >= objc_msgSend_position(a2, v120, v121) && (v124 = objc_msgSend_position(a2, v122, v123) + 1, v124 <= objc_msgSend_length(a2, v125, v126)))
                {
                  v127 = objc_msgSend_data(a2, v122, v123);
                  v130 = objc_msgSend_position(a2, v128, v129);
                  objc_msgSend_getBytes_range_(v127, v131, &v139, v130, 1);

                  v134 = objc_msgSend_position(a2, v132, v133);
                  objc_msgSend_setPosition_(a2, v135, v134 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v122, v123);
                }

                v118 |= (v139 & 0x7F) << v116;
                if ((v139 & 0x80) == 0)
                {
                  break;
                }

                v116 += 7;
                v34 = v117++ >= 9;
                if (v34)
                {
                  goto LABEL_84;
                }
              }

              objc_msgSend_hasError(a2, v36, v9);
LABEL_84:
              PBRepeatedInt64Add();
              v10 = v115;
              v11 = v114;
              v12 = v113;
              v13 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
            }

            goto LABEL_85;
          case 6:
            v59 = PBReaderReadString();
            if (v59)
            {
              objc_msgSend_addPackagePutReceipts_(a1, v58, v59);
            }

LABEL_39:

            goto LABEL_85;
        }
      }

      else
      {
        switch(v36)
        {
          case 1:
            v59 = objc_alloc_init(*(v10 + 616));
            objc_storeStrong((a1 + v11[174]), v59);
            v139 = 0;
            v140 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_39;
          case 2:
            v62 = 0;
            v63 = 0;
            v64 = 0;
            *(a1 + v12[175]) |= 2u;
            while (1)
            {
              LOBYTE(v139) = 0;
              v65 = objc_msgSend_position(a2, v36, v9) + 1;
              if (v65 >= objc_msgSend_position(a2, v66, v67) && (v70 = objc_msgSend_position(a2, v68, v69) + 1, v70 <= objc_msgSend_length(a2, v71, v72)))
              {
                v73 = objc_msgSend_data(a2, v68, v69);
                v76 = objc_msgSend_position(a2, v74, v75);
                objc_msgSend_getBytes_range_(v73, v77, &v139, v76, 1);

                v80 = objc_msgSend_position(a2, v78, v79);
                objc_msgSend_setPosition_(a2, v81, v80 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v68, v69);
              }

              v64 |= (v139 & 0x7F) << v62;
              if ((v139 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v34 = v63++ >= 9;
              if (v34)
              {
                LOBYTE(v82) = 0;
                goto LABEL_72;
              }
            }

            v82 = (v64 != 0) & ~objc_msgSend_hasError(a2, v36, v9);
LABEL_72:
            *(a1 + v13[176]) = v82;
            goto LABEL_85;
          case 3:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + v12[175]) |= 1u;
            while (1)
            {
              LOBYTE(v139) = 0;
              v40 = objc_msgSend_position(a2, v36, v9) + 1;
              if (v40 >= objc_msgSend_position(a2, v41, v42) && (v45 = objc_msgSend_position(a2, v43, v44) + 1, v45 <= objc_msgSend_length(a2, v46, v47)))
              {
                v48 = objc_msgSend_data(a2, v43, v44);
                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_getBytes_range_(v48, v52, &v139, v51, 1);

                v55 = objc_msgSend_position(a2, v53, v54);
                objc_msgSend_setPosition_(a2, v56, v55 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v43, v44);
              }

              v39 |= (v139 & 0x7F) << v37;
              if ((v139 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v34 = v38++ >= 9;
              if (v34)
              {
                v57 = 0;
                goto LABEL_70;
              }
            }

            if (objc_msgSend_hasError(a2, v36, v9))
            {
              v57 = 0;
            }

            else
            {
              v57 = v39;
            }

LABEL_70:
            a1[4] = v57;
            goto LABEL_85;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_85:
      v136 = objc_msgSend_position(a2, v36, v9);
    }

    while (v136 < objc_msgSend_length(a2, v137, v138));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225378098(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v64) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v64) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v64, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v64 & 0x7F) << v10;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 3)
      {
        switch(v32)
        {
          case 4:
            v33 = PBReaderReadString();
            v34 = 32;
            goto LABEL_38;
          case 5:
            v56 = objc_alloc_init(CKDPProtectionInfo);
            objc_storeStrong((a1 + 40), v56);
            v64 = 0;
            v65 = 0;
            if (!PBReaderPlaceMark() || !CKDPProtectionInfoReadFrom(v56, a2, v59))
            {
LABEL_51:

              return 0;
            }

            goto LABEL_46;
          case 6:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v64) = 0;
              v38 = objc_msgSend_position(a2, v32, v9, v64) + 1;
              if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
              {
                v46 = objc_msgSend_data(a2, v41, v42);
                v49 = objc_msgSend_position(a2, v47, v48);
                objc_msgSend_getBytes_range_(v46, v50, &v64, v49, 1);

                v53 = objc_msgSend_position(a2, v51, v52);
                objc_msgSend_setPosition_(a2, v54, v53 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v41, v42);
              }

              v37 |= (v64 & 0x7F) << v35;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v30 = v36++ >= 9;
              if (v30)
              {
                LOBYTE(v55) = 0;
                goto LABEL_48;
              }
            }

            v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_48:
            *(a1 + 48) = v55;
            goto LABEL_49;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v56 = objc_alloc_init(MEMORY[0x277CBC250]);
            objc_storeStrong((a1 + 24), v56);
            v64 = 0;
            v65 = 0;
            if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
            {
              goto LABEL_51;
            }

            goto LABEL_46;
          case 2:
            v56 = objc_alloc_init(CKDPUserAlias);
            objc_storeStrong((a1 + 8), v56);
            v64 = 0;
            v65 = 0;
            if (!PBReaderPlaceMark() || !sub_225378F44(v56, a2, v58))
            {
              goto LABEL_51;
            }

LABEL_46:
            PBReaderRecallMark();

            goto LABEL_49;
          case 3:
            v33 = PBReaderReadString();
            v34 = 16;
LABEL_38:
            v57 = *(a1 + v34);
            *(a1 + v34) = v33;

            goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v60 = objc_msgSend_position(a2, v32, v9);
    }

    while (v60 < objc_msgSend_length(a2, v61, v62));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225378F44(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v60 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v61 = 0;
          v38 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v61, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v61 & 0x7F) << v35;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_34;
          }
        }

        v55 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v37;
LABEL_34:
        *(a1 + 16) = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = *(a1 + 8);
        *(a1 + 8) = v33;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2253795F0()
{
  v0 = qword_280D584F8;
  qword_280D584F8 = &unk_2838C98B8;
}

uint64_t sub_2253798F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v58 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v58, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v58 & 0x7F) << v10;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v59 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v59, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v59 & 0x7F) << v33;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_32;
          }
        }

        v53 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v35;
LABEL_32:
        *(a1 + 8) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPUserInformationBlockedRequestAccessReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 16);
        *(a1 + 16) = v32;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPContactInformation);
    objc_storeStrong((a1 + 8), v33);
    v41[0] = 0;
    v41[1] = 0;
    if (!PBReaderPlaceMark() || !CKDPContactInformationReadFrom(v33, a2, v34))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPUserInformationRequestAccessReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 16);
        *(a1 + 16) = v32;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPContactInformation);
    objc_storeStrong((a1 + 8), v33);
    v41[0] = 0;
    v41[1] = 0;
    if (!PBReaderPlaceMark() || !CKDPContactInformationReadFrom(v33, a2, v34))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22537AD58(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v58 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v58, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v58 & 0x7F) << v10;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v59 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v59, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v59 & 0x7F) << v33;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            LOBYTE(v53) = 0;
            goto LABEL_30;
          }
        }

        v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_30:
        *(a1 + 8) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22537B228()
{
  v0 = qword_280D58508;
  qword_280D58508 = &unk_2838C98E0;
}

uint64_t sub_22537B690(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPUserPrivacySettingsBatchLookupResponseContainerPrivacySettings);
        objc_msgSend_addContainerPrivacySettings_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_22537C170(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22537C170(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v63[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v63[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v63, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v63[0] & 0x7F) << v10;
        if ((v63[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v54 = PBReaderReadString();
          if (v54)
          {
            objc_msgSend_addApplicationBundle_(a1, v58, v54);
          }

LABEL_39:

          goto LABEL_44;
        }

        if (v32 == 4)
        {
          v54 = objc_alloc_init(CKDPUserPrivacySettings);
          objc_storeStrong((a1 + 32), v54);
          v63[0] = 0;
          v63[1] = 0;
          if (!PBReaderPlaceMark() || !sub_22537AD58(v54, a2, v55))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_39;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v56 = PBReaderReadString();
          v57 = *(a1 + 16);
          *(a1 + 16) = v56;

          goto LABEL_44;
        }

        if (v32 == 2)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v63[0]) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, v63, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v63[0] & 0x7F) << v33;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_43;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_43:
          *(a1 + 24) = v53;
          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22537CD3C()
{
  v0 = qword_280D58518;
  qword_280D58518 = &unk_2838C9908;
}

void sub_22537D05C()
{
  v0 = qword_280D58528;
  qword_280D58528 = &unk_2838C9930;
}

uint64_t sub_22537D3F4(id *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPUserPrivacySettings);
        objc_storeStrong(a1 + 2, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_22537AD58(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = PBReaderReadString();
    if (v32)
    {
      objc_msgSend_addApplicationBundle_(a1, v34, v32);
    }

LABEL_24:

    goto LABEL_26;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22537DC80()
{
  v0 = qword_280D550C8;
  qword_280D550C8 = &unk_2838C9958;
}

uint64_t sub_22537DE08(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPUserPrivacySettings);
    objc_storeStrong((a1 + 16), v33);
    v41[0] = 0;
    v41[1] = 0;
    if (!PBReaderPlaceMark() || !sub_22537AD58(v33, a2, v34))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22537E598()
{
  v0 = qword_280D550D8;
  qword_280D550D8 = &unk_2838C9980;
}

uint64_t sub_22537E9EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v64) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v64) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v64, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v64 & 0x7F) << v10;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v58 = PBReaderReadString();
          v59 = *(a1 + 16);
          *(a1 + 16) = v58;

          goto LABEL_42;
        }

        if (v32 == 4)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v64) = 0;
            v39 = objc_msgSend_position(a2, v32, v9, v64) + 1;
            if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
            {
              v47 = objc_msgSend_data(a2, v42, v43);
              v50 = objc_msgSend_position(a2, v48, v49);
              objc_msgSend_getBytes_range_(v47, v51, &v64, v50, 1);

              v54 = objc_msgSend_position(a2, v52, v53);
              objc_msgSend_setPosition_(a2, v55, v54 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v42, v43);
            }

            v38 |= (v64 & 0x7F) << v36;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v30 = v37++ >= 9;
            if (v30)
            {
              LOBYTE(v56) = 0;
              goto LABEL_41;
            }
          }

          v56 = (v38 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_41:
          *(a1 + 32) = v56;
          goto LABEL_42;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(CKDPUserAlias);
          objc_storeStrong((a1 + 8), v33);
          v64 = 0;
          v65 = 0;
          if (!PBReaderPlaceMark() || !sub_225378F44(v33, a2, v57))
          {
LABEL_44:

            return 0;
          }

          goto LABEL_38;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPQuerySort);
          objc_msgSend_addSortedBy_(a1, v34, v33);
          v64 = 0;
          v65 = 0;
          if (!PBReaderPlaceMark() || !sub_225315FB0(v33, a2, v35))
          {
            goto LABEL_44;
          }

LABEL_38:
          PBReaderRecallMark();

          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v60 = objc_msgSend_position(a2, v32, v9);
    }

    while (v60 < objc_msgSend_length(a2, v61, v62));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22537F6DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPUser);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225378098(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22537FB20()
{
  v0 = qword_280D58538;
  qword_280D58538 = &unk_2838C99A8;
}

uint64_t sub_22537FDD4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPRecord);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225380218()
{
  v0 = qword_280D550E8;
  qword_280D550E8 = &unk_2838C99D0;
}

uint64_t sub_2253803F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v60 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v61 = 0;
          v38 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v61, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v61 & 0x7F) << v35;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            LOBYTE(v55) = 0;
            goto LABEL_32;
          }
        }

        v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_32:
        *(a1 + 16) = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = *(a1 + 8);
        *(a1 + 8) = v33;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225380BD8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKDPWebAuthTokenRetrieveResponse__containerScopedUserId;
LABEL_21:
        v33 = PBReaderReadString();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKDPWebAuthTokenRetrieveResponse__token;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22538168C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 >= objc_msgSend_length(a2, v6, v7))
  {
    return objc_msgSend_hasError(a2, v8, v9) ^ 1;
  }

  while (2)
  {
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v51) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v51) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v51, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v51 & 0x7F) << v10;
      if ((v51 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      if (v11++ >= 9)
      {
        v31 = 0;
        goto LABEL_15;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    switch((v31 >> 3))
    {
      case 1u:
        v32 = objc_alloc_init(MEMORY[0x277CBC278]);
        objc_storeStrong((a1 + 96), v32);
        v51 = 0;
        v52 = 0;
        if (PBReaderPlaceMark() && CKDPRecordZoneIdentifierReadFrom())
        {
          goto LABEL_53;
        }

        goto LABEL_57;
      case 3u:
        v32 = objc_alloc_init(CKDPProtectionInfo);
        v41 = 32;
        goto LABEL_38;
      case 6u:
        v32 = objc_alloc_init(CKDPProtectionInfo);
        v41 = 48;
LABEL_38:
        objc_storeStrong((a1 + v41), v32);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !CKDPProtectionInfoReadFrom(v32, a2, v42))
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      case 8u:
        v32 = objc_alloc_init(CKDPRecordStableUrl);
        objc_storeStrong((a1 + 80), v32);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordStableUrlReadFrom(v32, a2, v38))
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      case 9u:
        v32 = objc_alloc_init(CKDPShareIdentifier);
        objc_storeStrong((a1 + 64), v32);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !CKDPShareIdentifierReadFrom(v32, a2, v34))
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      case 0xAu:
        v32 = PBReaderReadData();
        if (v32)
        {
          objc_msgSend_addProtectionInfoKeysToRemove_(a1, v36, v32);
        }

        goto LABEL_54;
      case 0xBu:
        v32 = objc_alloc_init(CKDPStorageExpiration);
        objc_storeStrong((a1 + 88), v32);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !sub_2253624AC(v32, a2, v43))
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      case 0xCu:
        v32 = objc_alloc_init(CKDPZoneSignedCryptoRequirements);
        objc_storeStrong((a1 + 72), v32);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !sub_225392808(v32, a2, v44))
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      case 0xDu:
        v32 = objc_alloc_init(CKDPZoneCryptoFeatureSet);
        objc_storeStrong((a1 + 8), v32);
        v51 = 0;
        v52 = 0;
        if (PBReaderPlaceMark() && sub_225387834(v32, a2, v46))
        {
          goto LABEL_53;
        }

        goto LABEL_57;
      case 0xEu:
        v32 = objc_alloc_init(CKDPProtectionInfoKeysToRemove);
        v33 = 104;
        goto LABEL_48;
      case 0xFu:
        v32 = objc_alloc_init(CKDPProtectionInfoKeysToRemove);
        v33 = 56;
LABEL_48:
        objc_storeStrong((a1 + v33), v32);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !sub_2253101B8(v32, a2, v45))
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      case 0x10u:
        v32 = objc_alloc_init(CKDPZoneZoneReference);
        objc_storeStrong((a1 + 24), v32);
        v51 = 0;
        v52 = 0;
        if (PBReaderPlaceMark() && sub_225394710(v32, a2, v37))
        {
LABEL_53:
          PBReaderRecallMark();
LABEL_54:

LABEL_55:
          v47 = objc_msgSend_position(a2, v39, v40);
          if (v47 >= objc_msgSend_length(a2, v48, v49))
          {
            return objc_msgSend_hasError(a2, v8, v9) ^ 1;
          }

          continue;
        }

LABEL_57:

        return 0;
      case 0x11u:
        v35 = PBReaderReadString();
        v32 = *(a1 + 16);
        *(a1 + 16) = v35;
        goto LABEL_54;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_55;
    }
  }
}

uint64_t sub_225383170(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v160 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v160, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v160 & 0x7F) << v10;
        if ((v160 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 4)
      {
        switch(v32)
        {
          case 5:
            v94 = 0;
            v95 = 0;
            v96 = 0;
            *(a1 + 20) |= 1u;
            while (1)
            {
              v166 = 0;
              v97 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v97 >= objc_msgSend_position(a2, v98, v99) && (v102 = objc_msgSend_position(a2, v100, v101) + 1, v102 <= objc_msgSend_length(a2, v103, v104)))
              {
                v105 = objc_msgSend_data(a2, v100, v101);
                v108 = objc_msgSend_position(a2, v106, v107);
                objc_msgSend_getBytes_range_(v105, v109, &v166, v108, 1);

                v112 = objc_msgSend_position(a2, v110, v111);
                objc_msgSend_setPosition_(a2, v113, v112 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v100, v101);
              }

              v96 |= (v166 & 0x7F) << v94;
              if ((v166 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              v30 = v95++ >= 9;
              if (v30)
              {
                v114 = 0;
                goto LABEL_85;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v114 = 0;
            }

            else
            {
              v114 = v96;
            }

LABEL_85:
            *(a1 + 8) = v114;
            goto LABEL_95;
          case 6:
            v136 = 0;
            v137 = 0;
            v138 = 0;
            *(a1 + 20) |= 0x20u;
            while (1)
            {
              v162 = 0;
              v139 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v139 >= objc_msgSend_position(a2, v140, v141) && (v144 = objc_msgSend_position(a2, v142, v143) + 1, v144 <= objc_msgSend_length(a2, v145, v146)))
              {
                v147 = objc_msgSend_data(a2, v142, v143);
                v150 = objc_msgSend_position(a2, v148, v149);
                objc_msgSend_getBytes_range_(v147, v151, &v162, v150, 1);

                v154 = objc_msgSend_position(a2, v152, v153);
                objc_msgSend_setPosition_(a2, v155, v154 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v142, v143);
              }

              v138 |= (v162 & 0x7F) << v136;
              if ((v162 & 0x80) == 0)
              {
                break;
              }

              v136 += 7;
              v30 = v137++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_93;
              }
            }

            v53 = (v138 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_93:
            v156 = 16;
            break;
          case 7:
            v54 = 0;
            v55 = 0;
            v56 = 0;
            *(a1 + 20) |= 0x10u;
            while (1)
            {
              v161 = 0;
              v57 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
              {
                v65 = objc_msgSend_data(a2, v60, v61);
                v68 = objc_msgSend_position(a2, v66, v67);
                objc_msgSend_getBytes_range_(v65, v69, &v161, v68, 1);

                v72 = objc_msgSend_position(a2, v70, v71);
                objc_msgSend_setPosition_(a2, v73, v72 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v60, v61);
              }

              v56 |= (v161 & 0x7F) << v54;
              if ((v161 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              v30 = v55++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_89;
              }
            }

            v53 = (v56 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_89:
            v156 = 15;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_95;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v74 = 0;
            v75 = 0;
            v76 = 0;
            *(a1 + 20) |= 2u;
            while (1)
            {
              v165 = 0;
              v77 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v77 >= objc_msgSend_position(a2, v78, v79) && (v82 = objc_msgSend_position(a2, v80, v81) + 1, v82 <= objc_msgSend_length(a2, v83, v84)))
              {
                v85 = objc_msgSend_data(a2, v80, v81);
                v88 = objc_msgSend_position(a2, v86, v87);
                objc_msgSend_getBytes_range_(v85, v89, &v165, v88, 1);

                v92 = objc_msgSend_position(a2, v90, v91);
                objc_msgSend_setPosition_(a2, v93, v92 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v80, v81);
              }

              v76 |= (v165 & 0x7F) << v74;
              if ((v165 & 0x80) == 0)
              {
                break;
              }

              v74 += 7;
              v30 = v75++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_81;
              }
            }

            v53 = (v76 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_81:
            v156 = 12;
            break;
          case 2:
            v116 = 0;
            v117 = 0;
            v118 = 0;
            *(a1 + 20) |= 8u;
            while (1)
            {
              v164 = 0;
              v119 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v119 >= objc_msgSend_position(a2, v120, v121) && (v124 = objc_msgSend_position(a2, v122, v123) + 1, v124 <= objc_msgSend_length(a2, v125, v126)))
              {
                v127 = objc_msgSend_data(a2, v122, v123);
                v130 = objc_msgSend_position(a2, v128, v129);
                objc_msgSend_getBytes_range_(v127, v131, &v164, v130, 1);

                v134 = objc_msgSend_position(a2, v132, v133);
                objc_msgSend_setPosition_(a2, v135, v134 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v122, v123);
              }

              v118 |= (v164 & 0x7F) << v116;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v116 += 7;
              v30 = v117++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_91;
              }
            }

            v53 = (v118 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_91:
            v156 = 14;
            break;
          case 4:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 20) |= 4u;
            while (1)
            {
              v163 = 0;
              v36 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v163, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v163 & 0x7F) << v33;
              if ((v163 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_87;
              }
            }

            v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_87:
            v156 = 13;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v156) = v53;
LABEL_95:
      v157 = objc_msgSend_position(a2, v32, v9);
    }

    while (v157 < objc_msgSend_length(a2, v158, v159));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2253840E4()
{
  v0 = qword_280D550F8;
  qword_280D550F8 = &unk_2838C99F8;
}

uint64_t sub_2253844F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v82[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v82[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v82, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v82[0] & 0x7F) << v10;
        if ((v82[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        break;
      }

      if (v32 != 1)
      {
        if (v32 == 2)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            LOBYTE(v82[0]) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v82[0]) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, v82, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v82[0] & 0x7F) << v33;
            if ((v82[0] & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_49;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_49:
          v77 = 20;
LABEL_54:
          *(a1 + v77) = v53;
          goto LABEL_55;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_55;
      }

      v74 = objc_alloc_init(MEMORY[0x277CBC278]);
      objc_storeStrong((a1 + 24), v74);
      v82[0] = 0;
      v82[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v78 = objc_msgSend_position(a2, v32, v9);
      if (v78 >= objc_msgSend_length(a2, v79, v80))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 3)
    {
      v75 = PBReaderReadData();
      v76 = *(a1 + 8);
      *(a1 + 8) = v75;

      goto LABEL_55;
    }

    if (v32 == 4)
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        LOBYTE(v82[0]) = 0;
        v57 = objc_msgSend_position(a2, v32, v9, v82[0]) + 1;
        if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
        {
          v65 = objc_msgSend_data(a2, v60, v61);
          v68 = objc_msgSend_position(a2, v66, v67);
          objc_msgSend_getBytes_range_(v65, v69, v82, v68, 1);

          v72 = objc_msgSend_position(a2, v70, v71);
          objc_msgSend_setPosition_(a2, v73, v72 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v60, v61);
        }

        v56 |= (v82[0] & 0x7F) << v54;
        if ((v82[0] & 0x80) == 0)
        {
          break;
        }

        v54 += 7;
        v30 = v55++ >= 9;
        if (v30)
        {
          v53 = 0;
          goto LABEL_53;
        }
      }

      if (objc_msgSend_hasError(a2, v32, v9))
      {
        v53 = 0;
      }

      else
      {
        v53 = v56;
      }

LABEL_53:
      v77 = 16;
      goto LABEL_54;
    }

    goto LABEL_40;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2253852C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v63[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v63[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v63, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v63[0] & 0x7F) << v10;
        if ((v63[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v41 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
          if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
          {
            v49 = objc_msgSend_data(a2, v44, v45);
            v52 = objc_msgSend_position(a2, v50, v51);
            objc_msgSend_getBytes_range_(v49, v53, v63, v52, 1);

            v56 = objc_msgSend_position(a2, v54, v55);
            objc_msgSend_setPosition_(a2, v57, v56 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v44, v45);
          }

          v40 |= (v63[0] & 0x7F) << v38;
          if ((v63[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v30 = v39++ >= 9;
          if (v30)
          {
            LOBYTE(v58) = 0;
            goto LABEL_36;
          }
        }

        v58 = (v40 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_36:
        *(a1 + 24) = v58;
      }

      else if (v32 == 2)
      {
        v36 = PBReaderReadData();
        v37 = *(a1 + 16);
        *(a1 + 16) = v36;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPZoneChildrenRetrieveResponseChildZoneInfo);
        objc_msgSend_addChildren_(a1, v34, v33);
        v63[0] = 0;
        v63[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v35))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225387834(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v58 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v58, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v58 & 0x7F) << v10;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v59 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v59, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v59 & 0x7F) << v33;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_32;
          }
        }

        v53 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v35;
LABEL_32:
        *(a1 + 8) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225387CE4()
{
  v0 = qword_280D55108;
  qword_280D55108 = &unk_2838C9A20;
}

uint64_t sub_225387F70(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v60) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v60) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v54 = objc_alloc_init(MEMORY[0x277CBC240]);
          objc_storeStrong((a1 + 16), v54);
          v60 = 0;
          v61 = 0;
          if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
          {
LABEL_46:

            return 0;
          }

          goto LABEL_41;
        }

        if (v32 == 4)
        {
          v54 = objc_alloc_init(CKDPAncestryEtag);
          objc_storeStrong((a1 + 8), v54);
          v60 = 0;
          v61 = 0;
          if (!PBReaderPlaceMark() || !sub_2252D9FA4(v54, a2, v55))
          {
            goto LABEL_46;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v54 = objc_alloc_init(MEMORY[0x277CBC278]);
          objc_storeStrong((a1 + 24), v54);
          v60 = 0;
          v61 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
          {
            goto LABEL_46;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_44;
        }

        if (v32 == 2)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v60) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v60) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v60, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v60 & 0x7F) << v33;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              LOBYTE(v53) = 0;
              goto LABEL_43;
            }
          }

          v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_43:
          *(a1 + 32) = v53;
          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}