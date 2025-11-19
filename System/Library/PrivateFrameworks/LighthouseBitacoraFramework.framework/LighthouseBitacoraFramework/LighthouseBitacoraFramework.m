uint64_t sub_255ED68E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_255ED69B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_255F0C9A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_255ED6A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_255F0314C(&qword_27F817AD8, &qword_255F0F798);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_255F0314C(&qword_27F817AE0, &unk_255F0F7A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_255ED6BC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_255F0C9A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_255F0314C(&qword_27F817AD8, &qword_255F0F798);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_255F0314C(&qword_27F817AE0, &unk_255F0F7A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255ED6D34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_255F0314C(&qword_27F817CE8, &qword_255F10800);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_255ED6ED0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_255F0C9A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = sub_255F0314C(&qword_27F817CE8, &qword_255F10800);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_255ED7060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_255ED7188(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_255F0C9A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t LIGHTHOUSE_BITACORA_PROTOTaskEventReadFrom(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_position(a2, a2, a3, a4, a5);
  if (v7 < objc_msgSend_length(a2, v8, v9, v10, v11))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        break;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v125 = 0;
        v19 = objc_msgSend_position(a2, v12, v13, v14, v15) + 1;
        if (v19 >= objc_msgSend_position(a2, v20, v21, v22, v23) && (v28 = objc_msgSend_position(a2, v24, v25, v26, v27) + 1, v28 <= objc_msgSend_length(a2, v29, v30, v31, v32)))
        {
          v33 = objc_msgSend_data(a2, v24, v25, v26, v27);
          v38 = objc_msgSend_position(a2, v34, v35, v36, v37);
          objc_msgSend_getBytes_range_(v33, v39, &v125, v38, 1);

          v44 = objc_msgSend_position(a2, v40, v41, v42, v43);
          objc_msgSend_setPosition_(a2, v45, v44 + 1, v46, v47);
        }

        else
        {
          objc_msgSend__setError(a2, v24, v25, v26, v27);
        }

        v18 |= (v125 & 0x7F) << v16;
        if ((v125 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v48 = v17++ >= 9;
        if (v48)
        {
          v49 = 0;
          goto LABEL_15;
        }
      }

      v49 = objc_msgSend_hasError(a2, v12, v13, v14, v15) ? 0 : v18;
LABEL_15:
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        break;
      }

      v13 = v49 & 7;
      if (v13 == 4)
      {
        break;
      }

      v50 = (v49 >> 3);
      if ((v49 >> 3) == 3)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v127 = 0;
          v89 = objc_msgSend_position(a2, v50, v13, v14, v15) + 1;
          if (v89 >= objc_msgSend_position(a2, v90, v91, v92, v93) && (v98 = objc_msgSend_position(a2, v94, v95, v96, v97) + 1, v98 <= objc_msgSend_length(a2, v99, v100, v101, v102)))
          {
            v103 = objc_msgSend_data(a2, v94, v95, v96, v97);
            v108 = objc_msgSend_position(a2, v104, v105, v106, v107);
            objc_msgSend_getBytes_range_(v103, v109, &v127, v108, 1);

            v114 = objc_msgSend_position(a2, v110, v111, v112, v113);
            objc_msgSend_setPosition_(a2, v115, v114 + 1, v116, v117);
          }

          else
          {
            objc_msgSend__setError(a2, v94, v95, v96, v97);
          }

          v88 |= (v127 & 0x7F) << v86;
          if ((v127 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v48 = v87++ >= 9;
          if (v48)
          {
            v118 = 0;
            goto LABEL_44;
          }
        }

        v118 = objc_msgSend_hasError(a2, v50, v13, v14, v15) ? 0 : v88;
LABEL_44:
        *(a1 + 8) = v118;
      }

      else if (v50 == 2)
      {
        v84 = PBReaderReadString();
        v85 = *(a1 + 16);
        *(a1 + 16) = v84;
      }

      else if (v50 == 1)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v126 = 0;
          v54 = objc_msgSend_position(a2, v50, v13, v14, v15) + 1;
          if (v54 >= objc_msgSend_position(a2, v55, v56, v57, v58) && (v63 = objc_msgSend_position(a2, v59, v60, v61, v62) + 1, v63 <= objc_msgSend_length(a2, v64, v65, v66, v67)))
          {
            v68 = objc_msgSend_data(a2, v59, v60, v61, v62);
            v73 = objc_msgSend_position(a2, v69, v70, v71, v72);
            objc_msgSend_getBytes_range_(v68, v74, &v126, v73, 1);

            v79 = objc_msgSend_position(a2, v75, v76, v77, v78);
            objc_msgSend_setPosition_(a2, v80, v79 + 1, v81, v82);
          }

          else
          {
            objc_msgSend__setError(a2, v59, v60, v61, v62);
          }

          v53 |= (v126 & 0x7F) << v51;
          if ((v126 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v48 = v52++ >= 9;
          if (v48)
          {
            LOBYTE(v83) = 0;
            goto LABEL_46;
          }
        }

        v83 = (v53 != 0) & ~objc_msgSend_hasError(a2, v50, v13, v14, v15);
LABEL_46:
        *(a1 + 24) = v83;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v120 = objc_msgSend_position(a2, v50, v13, v14, v15);
    }

    while (v120 < objc_msgSend_length(a2, v121, v122, v123, v124));
  }

  return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
}

void sub_255EDA4B0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_255EDF598(uint64_t a1, void *a2, void *a3, void *a4)
{
  v166 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v13 = objc_msgSend_bmltIdentifiers(v7, v9, v10, v11, v12);

  if (v13)
  {
    v18 = LBFLogContextAggregator;
    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
    {
      v19 = v18;
      v24 = objc_msgSend_bmltIdentifiers(v7, v20, v21, v22, v23);
      v29 = objc_msgSend_trialTaskID(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_bmltIdentifiers(v7, v30, v31, v32, v33);
      v39 = objc_msgSend_trialDeploymentID(v34, v35, v36, v37, v38);
      *buf = 138412546;
      v161 = v29;
      v162 = 2112;
      v163 = v39;
      _os_log_impl(&dword_255ED5000, v19, OS_LOG_TYPE_INFO, "bmltIdentifiers: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    v40 = objc_msgSend_experimentIdentifiers(v7, v14, v15, v16, v17);

    if (v40)
    {
      v41 = LBFLogContextAggregator;
      if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
      {
        v42 = v41;
        v153 = objc_msgSend_experimentIdentifiers(v7, v43, v44, v45, v46);
        v51 = objc_msgSend_trialExperimentID(v153, v47, v48, v49, v50);
        v56 = objc_msgSend_experimentIdentifiers(v7, v52, v53, v54, v55);
        v61 = objc_msgSend_trialDeploymentID(v56, v57, v58, v59, v60);
        objc_msgSend_experimentIdentifiers(v7, v62, v63, v64, v65);
        v67 = v66 = v8;
        v72 = objc_msgSend_trialTreatmentID(v67, v68, v69, v70, v71);
        *buf = 138412802;
        v161 = v51;
        v162 = 2112;
        v163 = v61;
        v164 = 2112;
        v165 = v72;
        _os_log_impl(&dword_255ED5000, v42, OS_LOG_TYPE_INFO, "bmltIdentifiers: %@ %@ %@", buf, 0x20u);

        v8 = v66;
      }
    }
  }

  v151 = v7;
  v73 = LBFLogContextAggregator;
  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
  {
    v74 = *(a1 + 32);
    v75 = v73;
    v80 = objc_msgSend_startTime(v6, v76, v77, v78, v79, v7);
    v84 = objc_msgSend_dateToStringInUTCAndLocal_(v74, v81, v80, v82, v83);
    *buf = 138412290;
    v161 = v84;
    _os_log_impl(&dword_255ED5000, v75, OS_LOG_TYPE_INFO, "Bucket Start Time: %@", buf, 0xCu);
  }

  v85 = LBFLogContextAggregator;
  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
  {
    v86 = *(a1 + 32);
    v87 = v85;
    v92 = objc_msgSend_endTime(v6, v88, v89, v90, v91);
    v96 = objc_msgSend_dateToStringInUTCAndLocal_(v86, v93, v92, v94, v95);
    *buf = 138412290;
    v161 = v96;
    _os_log_impl(&dword_255ED5000, v87, OS_LOG_TYPE_INFO, "Bucket End Time:   %@", buf, 0xCu);
  }

  v152 = v6;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v97 = v8;
  v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v98, &v155, v159, 16);
  if (v99)
  {
    v100 = v99;
    v101 = *v156;
    do
    {
      for (i = 0; i != v100; ++i)
      {
        if (*v156 != v101)
        {
          objc_enumerationMutation(v97);
        }

        v103 = *(*(&v155 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v104 = v103;
          v105 = LBFLogContextAggregator;
          if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
          {
            v106 = *(a1 + 32);
            v107 = v105;
            v112 = objc_msgSend_timestamp(v104, v108, v109, v110, v111);
            v116 = objc_msgSend_dateToStringInUTCAndLocal_(v106, v113, v112, v114, v115);
            *buf = 138412290;
            v161 = v116;
            v117 = v107;
            v118 = "BMLighthouseLedgerMlruntimedEvent %@";
LABEL_28:
            _os_log_impl(&dword_255ED5000, v117, OS_LOG_TYPE_INFO, v118, buf, 0xCu);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v119 = v103;
            v120 = LBFLogContextAggregator;
            if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
            {
              v121 = *(a1 + 32);
              v107 = v120;
              v112 = objc_msgSend_timestamp(v119, v122, v123, v124, v125);
              v116 = objc_msgSend_dateToStringInUTCAndLocal_(v121, v126, v112, v127, v128);
              *buf = 138412290;
              v161 = v116;
              v117 = v107;
              v118 = "BMLighthouseLedgerLighthousePluginEvent %@";
              goto LABEL_28;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v129 = v103;
              v130 = LBFLogContextAggregator;
              if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
              {
                v131 = *(a1 + 32);
                v107 = v130;
                v112 = objc_msgSend_timestamp(v129, v132, v133, v134, v135);
                v116 = objc_msgSend_dateToStringInUTCAndLocal_(v131, v136, v112, v137, v138);
                *buf = 138412290;
                v161 = v116;
                v117 = v107;
                v118 = "BMLighthouseLedgerTrialdEvent %@";
                goto LABEL_28;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }

              v140 = v103;
              v141 = LBFLogContextAggregator;
              if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
              {
                v142 = *(a1 + 32);
                v107 = v141;
                v112 = objc_msgSend_timestamp(v140, v143, v144, v145, v146);
                v116 = objc_msgSend_dateToStringInUTCAndLocal_(v142, v147, v112, v148, v149);
                *buf = 138412290;
                v161 = v116;
                v117 = v107;
                v118 = "BMLighthouseLedgerDediscoPrivacyEvent %@";
                goto LABEL_28;
              }
            }
          }
        }
      }

      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v139, &v155, v159, 16);
    }

    while (v100);
  }

  v150 = *MEMORY[0x277D85DE8];
}

_BYTE *sub_255EDFCDC(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_255EDFCEC(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_255EE12D4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_255EE7BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_255EE831C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!qword_27F817DF8)
  {
    qword_27F817DF8 = _sl_dlopen();
  }

  result = objc_getClass("FedStatsDataEncoder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27F817DF0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_255EE841C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27F817DF8 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255EE84B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 8u);
}

id sub_255EE84E4(uint64_t a1, void *a2)
{

  return a2;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiersReadFrom(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_position(a2, a2, a3, a4, a5);
  if (v7 < objc_msgSend_length(a2, v8, v9, v10, v11))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        break;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v65 = 0;
        v19 = objc_msgSend_position(a2, v12, v13, v14, v15) + 1;
        if (v19 >= objc_msgSend_position(a2, v20, v21, v22, v23) && (v28 = objc_msgSend_position(a2, v24, v25, v26, v27) + 1, v28 <= objc_msgSend_length(a2, v29, v30, v31, v32)))
        {
          v33 = objc_msgSend_data(a2, v24, v25, v26, v27);
          v38 = objc_msgSend_position(a2, v34, v35, v36, v37);
          objc_msgSend_getBytes_range_(v33, v39, &v65, v38, 1);

          v44 = objc_msgSend_position(a2, v40, v41, v42, v43);
          objc_msgSend_setPosition_(a2, v45, v44 + 1, v46, v47);
        }

        else
        {
          objc_msgSend__setError(a2, v24, v25, v26, v27);
        }

        v18 |= (v65 & 0x7F) << v16;
        if ((v65 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        if (v17++ >= 9)
        {
          v49 = 0;
          goto LABEL_15;
        }
      }

      v49 = objc_msgSend_hasError(a2, v12, v13, v14, v15) ? 0 : v18;
LABEL_15:
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        break;
      }

      v13 = v49 & 7;
      if (v13 == 4)
      {
        break;
      }

      v50 = (v49 >> 3) - 1;
      if (v50 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v51 = off_279813B58[v50];
        v52 = PBReaderReadString();
        v53 = *v51;
        v54 = *(a1 + v53);
        *(a1 + v53) = v52;
      }

      v59 = objc_msgSend_position(a2, v55, v56, v57, v58);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61, v62, v63));
  }

  return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
}

uint64_t sub_255EE8D10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_281536D20 = objc_msgSend_UUID(MEMORY[0x277CCAD78], a2, a3, a4, a5);

  return MEMORY[0x2821F96F8]();
}

void sub_255EE8EC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (*(v6 + 16))
  {
    v7 = LBFLogContextBiomeManager;
    if (os_log_type_enabled(LBFLogContextBiomeManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0B514(v7);
    }

    v6 = *(a1 + 32);
  }

  v8 = objc_msgSend_source(*(v6 + 8), a2, a3, a4, a5);
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  *(v9 + 16) = v8;
}

void sub_255EE9174(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LBFLogContextBiomeManager;
  if (os_log_type_enabled(LBFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v10 = 134217984;
    v11 = objc_msgSend_count(v3, v5, v6, v7, v8);
    _os_log_impl(&dword_255ED5000, v4, OS_LOG_TYPE_INFO, "Completed with %ld events.", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_255EE9230(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v9 = objc_msgSend_eventBody(a2, a2, a3, a4, a5);
  objc_msgSend_addObject_(v5, v6, v9, v7, v8);
}

void sub_255EE93B0()
{
  v0 = LBFLogContextBiomeManager;
  if (os_log_type_enabled(LBFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_255ED5000, v0, OS_LOG_TYPE_INFO, "Completed.", v1, 2u);
  }
}

uint64_t sub_255EE9418(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_eventBody(a2, a2, a3, a4, a5);
  v7 = (*(v5 + 16))(v5, v6);

  return v7;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOEventStatusReadFrom(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_position(a2, a2, a3, a4, a5);
  if (v7 < objc_msgSend_length(a2, v8, v9, v10, v11))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        break;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v125 = 0;
        v19 = objc_msgSend_position(a2, v12, v13, v14, v15) + 1;
        if (v19 >= objc_msgSend_position(a2, v20, v21, v22, v23) && (v28 = objc_msgSend_position(a2, v24, v25, v26, v27) + 1, v28 <= objc_msgSend_length(a2, v29, v30, v31, v32)))
        {
          v33 = objc_msgSend_data(a2, v24, v25, v26, v27);
          v38 = objc_msgSend_position(a2, v34, v35, v36, v37);
          objc_msgSend_getBytes_range_(v33, v39, &v125, v38, 1);

          v44 = objc_msgSend_position(a2, v40, v41, v42, v43);
          objc_msgSend_setPosition_(a2, v45, v44 + 1, v46, v47);
        }

        else
        {
          objc_msgSend__setError(a2, v24, v25, v26, v27);
        }

        v18 |= (v125 & 0x7F) << v16;
        if ((v125 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v48 = v17++ >= 9;
        if (v48)
        {
          v49 = 0;
          goto LABEL_15;
        }
      }

      v49 = objc_msgSend_hasError(a2, v12, v13, v14, v15) ? 0 : v18;
LABEL_15:
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        break;
      }

      v13 = v49 & 7;
      if (v13 == 4)
      {
        break;
      }

      v50 = (v49 >> 3);
      if ((v49 >> 3) == 3)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v127 = 0;
          v89 = objc_msgSend_position(a2, v50, v13, v14, v15) + 1;
          if (v89 >= objc_msgSend_position(a2, v90, v91, v92, v93) && (v98 = objc_msgSend_position(a2, v94, v95, v96, v97) + 1, v98 <= objc_msgSend_length(a2, v99, v100, v101, v102)))
          {
            v103 = objc_msgSend_data(a2, v94, v95, v96, v97);
            v108 = objc_msgSend_position(a2, v104, v105, v106, v107);
            objc_msgSend_getBytes_range_(v103, v109, &v127, v108, 1);

            v114 = objc_msgSend_position(a2, v110, v111, v112, v113);
            objc_msgSend_setPosition_(a2, v115, v114 + 1, v116, v117);
          }

          else
          {
            objc_msgSend__setError(a2, v94, v95, v96, v97);
          }

          v88 |= (v127 & 0x7F) << v86;
          if ((v127 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v48 = v87++ >= 9;
          if (v48)
          {
            v118 = 0;
            goto LABEL_44;
          }
        }

        v118 = objc_msgSend_hasError(a2, v50, v13, v14, v15) ? 0 : v88;
LABEL_44:
        *(a1 + 8) = v118;
      }

      else if (v50 == 2)
      {
        v84 = PBReaderReadString();
        v85 = *(a1 + 16);
        *(a1 + 16) = v84;
      }

      else if (v50 == 1)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v126 = 0;
          v54 = objc_msgSend_position(a2, v50, v13, v14, v15) + 1;
          if (v54 >= objc_msgSend_position(a2, v55, v56, v57, v58) && (v63 = objc_msgSend_position(a2, v59, v60, v61, v62) + 1, v63 <= objc_msgSend_length(a2, v64, v65, v66, v67)))
          {
            v68 = objc_msgSend_data(a2, v59, v60, v61, v62);
            v73 = objc_msgSend_position(a2, v69, v70, v71, v72);
            objc_msgSend_getBytes_range_(v68, v74, &v126, v73, 1);

            v79 = objc_msgSend_position(a2, v75, v76, v77, v78);
            objc_msgSend_setPosition_(a2, v80, v79 + 1, v81, v82);
          }

          else
          {
            objc_msgSend__setError(a2, v59, v60, v61, v62);
          }

          v53 |= (v126 & 0x7F) << v51;
          if ((v126 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v48 = v52++ >= 9;
          if (v48)
          {
            LOBYTE(v83) = 0;
            goto LABEL_46;
          }
        }

        v83 = (v53 != 0) & ~objc_msgSend_hasError(a2, v50, v13, v14, v15);
LABEL_46:
        *(a1 + 24) = v83;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v120 = objc_msgSend_position(a2, v50, v13, v14, v15);
    }

    while (v120 < objc_msgSend_length(a2, v121, v122, v123, v124));
  }

  return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEventReadFrom(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_position(a2, a2, a3, a4, a5);
  if (v7 < objc_msgSend_length(a2, v8, v9, v10, v11))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LOBYTE(v100) = 0;
        v19 = objc_msgSend_position(a2, v12, v13, v14, v15, v100) + 1;
        if (v19 >= objc_msgSend_position(a2, v20, v21, v22, v23) && (v28 = objc_msgSend_position(a2, v24, v25, v26, v27) + 1, v28 <= objc_msgSend_length(a2, v29, v30, v31, v32)))
        {
          v33 = objc_msgSend_data(a2, v24, v25, v26, v27);
          v38 = objc_msgSend_position(a2, v34, v35, v36, v37);
          objc_msgSend_getBytes_range_(v33, v39, &v100, v38, 1);

          v44 = objc_msgSend_position(a2, v40, v41, v42, v43);
          objc_msgSend_setPosition_(a2, v45, v44 + 1, v46, v47);
        }

        else
        {
          objc_msgSend__setError(a2, v24, v25, v26, v27);
        }

        v18 |= (v100 & 0x7F) << v16;
        if ((v100 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        if (v17++ >= 9)
        {
          v49 = 0;
          goto LABEL_15;
        }
      }

      v49 = objc_msgSend_hasError(a2, v12, v13, v14, v15) ? 0 : v18;
LABEL_15:
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v13 = v49 & 7;
      if (v13 == 4)
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v50 = (v49 >> 3);
      if ((v49 >> 3) > 100)
      {
        switch(v50)
        {
          case 'e':
            v69 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
            v70 = 24;
            goto LABEL_36;
          case 'f':
            v69 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
            v70 = 32;
LABEL_36:
            objc_storeStrong((a1 + v70), v69);
            v100 = 0;
            v101 = 0;
            if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOEventStatusReadFrom(v69, a2, v76, v77, v78))
            {
LABEL_43:

              return 0;
            }

LABEL_38:
            PBReaderRecallMark();

            goto LABEL_41;
          case 'g':
            v69 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
            v70 = 40;
            goto LABEL_36;
        }
      }

      else
      {
        switch(v50)
        {
          case 1:
            v69 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
            objc_storeStrong((a1 + 48), v69);
            v100 = 0;
            v101 = 0;
            if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiersReadFrom(v69, a2, v71, v72, v73))
            {
              goto LABEL_43;
            }

            goto LABEL_38;
          case 2:
            v74 = PBReaderReadString();
            v75 = *(a1 + 16);
            *(a1 + 16) = v74;

            goto LABEL_41;
          case 3:
            *(a1 + 56) |= 1u;
            v100 = 0;
            v51 = objc_msgSend_position(a2, v50, v13, v14, v15) + 8;
            if (v51 >= objc_msgSend_position(a2, v52, v53, v54, v55) && (v60 = objc_msgSend_position(a2, v56, v57, v58, v59) + 8, v60 <= objc_msgSend_length(a2, v61, v62, v63, v64)))
            {
              v79 = objc_msgSend_data(a2, v56, v57, v58, v59);
              v84 = objc_msgSend_position(a2, v80, v81, v82, v83);
              objc_msgSend_getBytes_range_(v79, v85, &v100, v84, 8);

              v90 = objc_msgSend_position(a2, v86, v87, v88, v89);
              objc_msgSend_setPosition_(a2, v91, v90 + 8, v92, v93);
            }

            else
            {
              objc_msgSend__setError(a2, v56, v57, v58, v59);
            }

            *(a1 + 8) = v100;
            goto LABEL_41;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v94 = objc_msgSend_position(a2, v65, v66, v67, v68);
    }

    while (v94 < objc_msgSend_length(a2, v95, v96, v97, v98));
  }

  return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEventReadFrom(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_position(a2, a2, a3, a4, a5);
  if (v7 < objc_msgSend_length(a2, v8, v9, v10, v11))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LOBYTE(v158[0]) = 0;
        v19 = objc_msgSend_position(a2, v12, v13, v14, v15, v158[0]) + 1;
        if (v19 >= objc_msgSend_position(a2, v20, v21, v22, v23) && (v28 = objc_msgSend_position(a2, v24, v25, v26, v27) + 1, v28 <= objc_msgSend_length(a2, v29, v30, v31, v32)))
        {
          v33 = objc_msgSend_data(a2, v24, v25, v26, v27);
          v38 = objc_msgSend_position(a2, v34, v35, v36, v37);
          objc_msgSend_getBytes_range_(v33, v39, v158, v38, 1);

          v44 = objc_msgSend_position(a2, v40, v41, v42, v43);
          objc_msgSend_setPosition_(a2, v45, v44 + 1, v46, v47);
        }

        else
        {
          objc_msgSend__setError(a2, v24, v25, v26, v27);
        }

        v18 |= (v158[0] & 0x7F) << v16;
        if ((v158[0] & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v48 = v17++ >= 9;
        if (v48)
        {
          v49 = 0;
          goto LABEL_15;
        }
      }

      v49 = objc_msgSend_hasError(a2, v12, v13, v14, v15) ? 0 : v18;
LABEL_15:
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v13 = v49 & 7;
      if (v13 == 4)
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v50 = (v49 >> 3);
      if ((v49 >> 3) > 2)
      {
        break;
      }

      if (v50 != 1)
      {
        if (v50 == 2)
        {
          v84 = PBReaderReadString();
          v85 = *(a1 + 16);
          *(a1 + 16) = v84;

          goto LABEL_58;
        }

        goto LABEL_48;
      }

      v133 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
      objc_storeStrong((a1 + 32), v133);
      v158[0] = 0;
      v158[1] = 0;
      if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiersReadFrom(v133, a2, v134, v135, v136))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_58:
      v152 = objc_msgSend_position(a2, v50, v13, v14, v15);
      if (v152 >= objc_msgSend_length(a2, v153, v154, v155, v156))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }
    }

    switch(v50)
    {
      case 3:
        *(a1 + 44) |= 1u;
        v158[0] = 0;
        v86 = objc_msgSend_position(a2, v50, v13, v14, v15) + 8;
        if (v86 >= objc_msgSend_position(a2, v87, v88, v89, v90) && (v95 = objc_msgSend_position(a2, v91, v92, v93, v94) + 8, v95 <= objc_msgSend_length(a2, v96, v97, v98, v99)))
        {
          v137 = objc_msgSend_data(a2, v91, v92, v93, v94);
          v142 = objc_msgSend_position(a2, v138, v139, v140, v141);
          objc_msgSend_getBytes_range_(v137, v143, v158, v142, 8);

          v148 = objc_msgSend_position(a2, v144, v145, v146, v147);
          objc_msgSend_setPosition_(a2, v149, v148 + 8, v150, v151);
        }

        else
        {
          objc_msgSend__setError(a2, v91, v92, v93, v94);
        }

        *(a1 + 8) = v158[0];
        goto LABEL_58;
      case 4:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          LOBYTE(v158[0]) = 0;
          v103 = objc_msgSend_position(a2, v50, v13, v14, v15, v158[0]) + 1;
          if (v103 >= objc_msgSend_position(a2, v104, v105, v106, v107) && (v112 = objc_msgSend_position(a2, v108, v109, v110, v111) + 1, v112 <= objc_msgSend_length(a2, v113, v114, v115, v116)))
          {
            v117 = objc_msgSend_data(a2, v108, v109, v110, v111);
            v122 = objc_msgSend_position(a2, v118, v119, v120, v121);
            objc_msgSend_getBytes_range_(v117, v123, v158, v122, 1);

            v128 = objc_msgSend_position(a2, v124, v125, v126, v127);
            objc_msgSend_setPosition_(a2, v129, v128 + 1, v130, v131);
          }

          else
          {
            objc_msgSend__setError(a2, v108, v109, v110, v111);
          }

          v102 |= (v158[0] & 0x7F) << v100;
          if ((v158[0] & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v48 = v101++ >= 9;
          if (v48)
          {
            v132 = 0;
            goto LABEL_53;
          }
        }

        if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
        {
          v132 = 0;
        }

        else
        {
          v132 = v102;
        }

LABEL_53:
        *(a1 + 24) = v132;
        goto LABEL_58;
      case 5:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          LOBYTE(v158[0]) = 0;
          v54 = objc_msgSend_position(a2, v50, v13, v14, v15, v158[0]) + 1;
          if (v54 >= objc_msgSend_position(a2, v55, v56, v57, v58) && (v63 = objc_msgSend_position(a2, v59, v60, v61, v62) + 1, v63 <= objc_msgSend_length(a2, v64, v65, v66, v67)))
          {
            v68 = objc_msgSend_data(a2, v59, v60, v61, v62);
            v73 = objc_msgSend_position(a2, v69, v70, v71, v72);
            objc_msgSend_getBytes_range_(v68, v74, v158, v73, 1);

            v79 = objc_msgSend_position(a2, v75, v76, v77, v78);
            objc_msgSend_setPosition_(a2, v80, v79 + 1, v81, v82);
          }

          else
          {
            objc_msgSend__setError(a2, v59, v60, v61, v62);
          }

          v53 |= (v158[0] & 0x7F) << v51;
          if ((v158[0] & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v48 = v52++ >= 9;
          if (v48)
          {
            LOBYTE(v83) = 0;
            goto LABEL_55;
          }
        }

        v83 = (v53 != 0) & ~objc_msgSend_hasError(a2, v50, v13, v14, v15);
LABEL_55:
        *(a1 + 40) = v83;
        goto LABEL_58;
    }

LABEL_48:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_58;
  }

  return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
}

void sub_255EED7FC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void LBFLoggingUtilsInit()
{
  if (qword_281536D28 != -1)
  {
    sub_255F0BEB8();
  }
}

uint64_t sub_255EED850()
{
  v0 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryEventManager);
  v1 = LBFLogContextEventManager;
  LBFLogContextEventManager = v0;

  v2 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryAggregator);
  v3 = LBFLogContextAggregator;
  LBFLogContextAggregator = v2;

  v4 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryEventFiltering);
  v5 = LBFLogContextEventFiltering;
  LBFLogContextEventFiltering = v4;

  v6 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryBiomeManager);
  v7 = LBFLogContextBiomeManager;
  LBFLogContextBiomeManager = v6;

  v8 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryEventsHolder);
  v9 = LBFLogContextEventsHolder;
  LBFLogContextEventsHolder = v8;

  v10 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryBiomeConverter);
  v11 = LBFLogContextBiomeConverter;
  LBFLogContextBiomeConverter = v10;

  v12 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryProtoConverter);
  v13 = LBFLogContextProtoConverter;
  LBFLogContextProtoConverter = v12;

  v14 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryBitacoraStateInfo);
  v15 = LBFLogContextBitacoraStateInfo;
  LBFLogContextBitacoraStateInfo = v14;

  v16 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryTrialStatusDetector);
  v17 = LBFLogContextTrialStatusDetector;
  LBFLogContextTrialStatusDetector = v16;

  v18 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryBitacoraStateTransition);
  v19 = LBFLogContextBitacoraStateTransition;
  LBFLogContextBitacoraStateTransition = v18;

  v20 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryStateDetector);
  v21 = LBFLogContextStateDetector;
  LBFLogContextStateDetector = v20;

  LBFLogContextTrialIdentifires = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryTrialIdentifires);

  return MEMORY[0x2821F96F8]();
}

uint64_t LIGHTHOUSE_BITACORA_PROTOBitacoraStateReadFrom(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_position(a2, a2, a3, a4, a5);
  if (v7 < objc_msgSend_length(a2, v8, v9, v10, v11))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LOBYTE(v645[0]) = 0;
        v19 = objc_msgSend_position(a2, v12, v13, v14, v15, v645[0]) + 1;
        if (v19 >= objc_msgSend_position(a2, v20, v21, v22, v23) && (v28 = objc_msgSend_position(a2, v24, v25, v26, v27) + 1, v28 <= objc_msgSend_length(a2, v29, v30, v31, v32)))
        {
          v33 = objc_msgSend_data(a2, v24, v25, v26, v27);
          v38 = objc_msgSend_position(a2, v34, v35, v36, v37);
          objc_msgSend_getBytes_range_(v33, v39, v645, v38, 1);

          v44 = objc_msgSend_position(a2, v40, v41, v42, v43);
          objc_msgSend_setPosition_(a2, v45, v44 + 1, v46, v47);
        }

        else
        {
          objc_msgSend__setError(a2, v24, v25, v26, v27);
        }

        v18 |= (v645[0] & 0x7F) << v16;
        if ((v645[0] & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v48 = v17++ >= 9;
        if (v48)
        {
          v49 = 0;
          goto LABEL_15;
        }
      }

      v49 = objc_msgSend_hasError(a2, v12, v13, v14, v15) ? 0 : v18;
LABEL_15:
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v13 = v49 & 7;
      if (v13 == 4)
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v50 = (v49 >> 3);
      if ((v49 >> 3) > 302)
      {
        if (v50 <= 402)
        {
          if (v50 > 305)
          {
            switch(v50)
            {
              case 0x132:
                v540 = 0;
                v541 = 0;
                v542 = 0;
                *(a1 + 140) |= 0x100u;
                while (1)
                {
                  LOBYTE(v645[0]) = 0;
                  v543 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
                  if (v543 >= objc_msgSend_position(a2, v544, v545, v546, v547) && (v552 = objc_msgSend_position(a2, v548, v549, v550, v551) + 1, v552 <= objc_msgSend_length(a2, v553, v554, v555, v556)))
                  {
                    v557 = objc_msgSend_data(a2, v548, v549, v550, v551);
                    v562 = objc_msgSend_position(a2, v558, v559, v560, v561);
                    objc_msgSend_getBytes_range_(v557, v563, v645, v562, 1);

                    v568 = objc_msgSend_position(a2, v564, v565, v566, v567);
                    objc_msgSend_setPosition_(a2, v569, v568 + 1, v570, v571);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v548, v549, v550, v551);
                  }

                  v542 |= (v645[0] & 0x7F) << v540;
                  if ((v645[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v540 += 7;
                  v48 = v541++ >= 9;
                  if (v48)
                  {
                    v85 = 0;
                    goto LABEL_278;
                  }
                }

                if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
                {
                  v85 = 0;
                }

                else
                {
                  v85 = v542;
                }

LABEL_278:
                v637 = 56;
                goto LABEL_291;
              case 0x191:
                v476 = 0;
                v477 = 0;
                v478 = 0;
                *(a1 + 140) |= 0x20u;
                while (1)
                {
                  LOBYTE(v645[0]) = 0;
                  v479 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
                  if (v479 >= objc_msgSend_position(a2, v480, v481, v482, v483) && (v488 = objc_msgSend_position(a2, v484, v485, v486, v487) + 1, v488 <= objc_msgSend_length(a2, v489, v490, v491, v492)))
                  {
                    v493 = objc_msgSend_data(a2, v484, v485, v486, v487);
                    v498 = objc_msgSend_position(a2, v494, v495, v496, v497);
                    objc_msgSend_getBytes_range_(v493, v499, v645, v498, 1);

                    v504 = objc_msgSend_position(a2, v500, v501, v502, v503);
                    objc_msgSend_setPosition_(a2, v505, v504 + 1, v506, v507);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v484, v485, v486, v487);
                  }

                  v478 |= (v645[0] & 0x7F) << v476;
                  if ((v645[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v476 += 7;
                  v48 = v477++ >= 9;
                  if (v48)
                  {
                    v85 = 0;
                    goto LABEL_262;
                  }
                }

                if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
                {
                  v85 = 0;
                }

                else
                {
                  v85 = v478;
                }

LABEL_262:
                v637 = 44;
                goto LABEL_291;
              case 0x192:
                v183 = 0;
                v184 = 0;
                v185 = 0;
                *(a1 + 140) |= 0x10u;
                while (1)
                {
                  LOBYTE(v645[0]) = 0;
                  v186 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
                  if (v186 >= objc_msgSend_position(a2, v187, v188, v189, v190) && (v195 = objc_msgSend_position(a2, v191, v192, v193, v194) + 1, v195 <= objc_msgSend_length(a2, v196, v197, v198, v199)))
                  {
                    v200 = objc_msgSend_data(a2, v191, v192, v193, v194);
                    v205 = objc_msgSend_position(a2, v201, v202, v203, v204);
                    objc_msgSend_getBytes_range_(v200, v206, v645, v205, 1);

                    v211 = objc_msgSend_position(a2, v207, v208, v209, v210);
                    objc_msgSend_setPosition_(a2, v212, v211 + 1, v213, v214);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v191, v192, v193, v194);
                  }

                  v185 |= (v645[0] & 0x7F) << v183;
                  if ((v645[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v183 += 7;
                  v48 = v184++ >= 9;
                  if (v48)
                  {
                    v85 = 0;
                    goto LABEL_270;
                  }
                }

                if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
                {
                  v85 = 0;
                }

                else
                {
                  v85 = v185;
                }

LABEL_270:
                v637 = 40;
                goto LABEL_291;
            }
          }

          else
          {
            switch(v50)
            {
              case 0x12F:
                v508 = 0;
                v509 = 0;
                v510 = 0;
                *(a1 + 140) |= 0x2000u;
                while (1)
                {
                  LOBYTE(v645[0]) = 0;
                  v511 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
                  if (v511 >= objc_msgSend_position(a2, v512, v513, v514, v515) && (v520 = objc_msgSend_position(a2, v516, v517, v518, v519) + 1, v520 <= objc_msgSend_length(a2, v521, v522, v523, v524)))
                  {
                    v525 = objc_msgSend_data(a2, v516, v517, v518, v519);
                    v530 = objc_msgSend_position(a2, v526, v527, v528, v529);
                    objc_msgSend_getBytes_range_(v525, v531, v645, v530, 1);

                    v536 = objc_msgSend_position(a2, v532, v533, v534, v535);
                    objc_msgSend_setPosition_(a2, v537, v536 + 1, v538, v539);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v516, v517, v518, v519);
                  }

                  v510 |= (v645[0] & 0x7F) << v508;
                  if ((v645[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v508 += 7;
                  v48 = v509++ >= 9;
                  if (v48)
                  {
                    v85 = 0;
                    goto LABEL_274;
                  }
                }

                if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
                {
                  v85 = 0;
                }

                else
                {
                  v85 = v510;
                }

LABEL_274:
                v637 = 76;
                goto LABEL_291;
              case 0x130:
                v444 = 0;
                v445 = 0;
                v446 = 0;
                *(a1 + 140) |= 0x1000u;
                while (1)
                {
                  LOBYTE(v645[0]) = 0;
                  v447 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
                  if (v447 >= objc_msgSend_position(a2, v448, v449, v450, v451) && (v456 = objc_msgSend_position(a2, v452, v453, v454, v455) + 1, v456 <= objc_msgSend_length(a2, v457, v458, v459, v460)))
                  {
                    v461 = objc_msgSend_data(a2, v452, v453, v454, v455);
                    v466 = objc_msgSend_position(a2, v462, v463, v464, v465);
                    objc_msgSend_getBytes_range_(v461, v467, v645, v466, 1);

                    v472 = objc_msgSend_position(a2, v468, v469, v470, v471);
                    objc_msgSend_setPosition_(a2, v473, v472 + 1, v474, v475);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v452, v453, v454, v455);
                  }

                  v446 |= (v645[0] & 0x7F) << v444;
                  if ((v645[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v444 += 7;
                  v48 = v445++ >= 9;
                  if (v48)
                  {
                    v85 = 0;
                    goto LABEL_258;
                  }
                }

                if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
                {
                  v85 = 0;
                }

                else
                {
                  v85 = v446;
                }

LABEL_258:
                v637 = 72;
                goto LABEL_291;
              case 0x131:
                v86 = 0;
                v87 = 0;
                v88 = 0;
                *(a1 + 140) |= 0x200u;
                while (1)
                {
                  LOBYTE(v645[0]) = 0;
                  v89 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
                  if (v89 >= objc_msgSend_position(a2, v90, v91, v92, v93) && (v98 = objc_msgSend_position(a2, v94, v95, v96, v97) + 1, v98 <= objc_msgSend_length(a2, v99, v100, v101, v102)))
                  {
                    v103 = objc_msgSend_data(a2, v94, v95, v96, v97);
                    v108 = objc_msgSend_position(a2, v104, v105, v106, v107);
                    objc_msgSend_getBytes_range_(v103, v109, v645, v108, 1);

                    v114 = objc_msgSend_position(a2, v110, v111, v112, v113);
                    objc_msgSend_setPosition_(a2, v115, v114 + 1, v116, v117);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v94, v95, v96, v97);
                  }

                  v88 |= (v645[0] & 0x7F) << v86;
                  if ((v645[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v86 += 7;
                  v48 = v87++ >= 9;
                  if (v48)
                  {
                    v85 = 0;
                    goto LABEL_266;
                  }
                }

                if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
                {
                  v85 = 0;
                }

                else
                {
                  v85 = v88;
                }

LABEL_266:
                v637 = 60;
                goto LABEL_291;
            }
          }
        }

        else if (v50 <= 501)
        {
          switch(v50)
          {
            case 0x193:
              v605 = 0;
              v606 = 0;
              v607 = 0;
              *(a1 + 140) |= 0x80u;
              while (1)
              {
                LOBYTE(v645[0]) = 0;
                v608 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
                if (v608 >= objc_msgSend_position(a2, v609, v610, v611, v612) && (v617 = objc_msgSend_position(a2, v613, v614, v615, v616) + 1, v617 <= objc_msgSend_length(a2, v618, v619, v620, v621)))
                {
                  v622 = objc_msgSend_data(a2, v613, v614, v615, v616);
                  v627 = objc_msgSend_position(a2, v623, v624, v625, v626);
                  objc_msgSend_getBytes_range_(v622, v628, v645, v627, 1);

                  v633 = objc_msgSend_position(a2, v629, v630, v631, v632);
                  objc_msgSend_setPosition_(a2, v634, v633 + 1, v635, v636);
                }

                else
                {
                  objc_msgSend__setError(a2, v613, v614, v615, v616);
                }

                v607 |= (v645[0] & 0x7F) << v605;
                if ((v645[0] & 0x80) == 0)
                {
                  break;
                }

                v605 += 7;
                v48 = v606++ >= 9;
                if (v48)
                {
                  v85 = 0;
                  goto LABEL_290;
                }
              }

              if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
              {
                v85 = 0;
              }

              else
              {
                v85 = v607;
              }

LABEL_290:
              v637 = 52;
              goto LABEL_291;
            case 0x194:
              v573 = 0;
              v574 = 0;
              v575 = 0;
              *(a1 + 140) |= 0x40u;
              while (1)
              {
                LOBYTE(v645[0]) = 0;
                v576 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
                if (v576 >= objc_msgSend_position(a2, v577, v578, v579, v580) && (v585 = objc_msgSend_position(a2, v581, v582, v583, v584) + 1, v585 <= objc_msgSend_length(a2, v586, v587, v588, v589)))
                {
                  v590 = objc_msgSend_data(a2, v581, v582, v583, v584);
                  v595 = objc_msgSend_position(a2, v591, v592, v593, v594);
                  objc_msgSend_getBytes_range_(v590, v596, v645, v595, 1);

                  v601 = objc_msgSend_position(a2, v597, v598, v599, v600);
                  objc_msgSend_setPosition_(a2, v602, v601 + 1, v603, v604);
                }

                else
                {
                  objc_msgSend__setError(a2, v581, v582, v583, v584);
                }

                v575 |= (v645[0] & 0x7F) << v573;
                if ((v645[0] & 0x80) == 0)
                {
                  break;
                }

                v573 += 7;
                v48 = v574++ >= 9;
                if (v48)
                {
                  v85 = 0;
                  goto LABEL_282;
                }
              }

              if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
              {
                v85 = 0;
              }

              else
              {
                v85 = v575;
              }

LABEL_282:
              v637 = 48;
              goto LABEL_291;
            case 0x1F5:
              v215 = 0;
              v216 = 0;
              v217 = 0;
              *(a1 + 140) |= 0x4000u;
              while (1)
              {
                LOBYTE(v645[0]) = 0;
                v218 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
                if (v218 >= objc_msgSend_position(a2, v219, v220, v221, v222) && (v227 = objc_msgSend_position(a2, v223, v224, v225, v226) + 1, v227 <= objc_msgSend_length(a2, v228, v229, v230, v231)))
                {
                  v232 = objc_msgSend_data(a2, v223, v224, v225, v226);
                  v237 = objc_msgSend_position(a2, v233, v234, v235, v236);
                  objc_msgSend_getBytes_range_(v232, v238, v645, v237, 1);

                  v243 = objc_msgSend_position(a2, v239, v240, v241, v242);
                  objc_msgSend_setPosition_(a2, v244, v243 + 1, v245, v246);
                }

                else
                {
                  objc_msgSend__setError(a2, v223, v224, v225, v226);
                }

                v217 |= (v645[0] & 0x7F) << v215;
                if ((v645[0] & 0x80) == 0)
                {
                  break;
                }

                v215 += 7;
                v48 = v216++ >= 9;
                if (v48)
                {
                  v85 = 0;
                  goto LABEL_286;
                }
              }

              if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
              {
                v85 = 0;
              }

              else
              {
                v85 = v217;
              }

LABEL_286:
              v637 = 104;
LABEL_291:
              *(a1 + v637) = v85;
              goto LABEL_292;
          }
        }

        else
        {
          if (v50 <= 503)
          {
            if (v50 == 502)
            {
              v51 = PBReaderReadString();
              v52 = 96;
            }

            else
            {
              v51 = PBReaderReadString();
              v52 = 88;
            }

            goto LABEL_201;
          }

          if (v50 == 504)
          {
            v51 = PBReaderReadString();
            v52 = 128;
            goto LABEL_201;
          }

          if (v50 == 505)
          {
            v51 = PBReaderReadString();
            v52 = 120;
            goto LABEL_201;
          }
        }

        goto LABEL_220;
      }

      if (v50 > 200)
      {
        break;
      }

      if (v50 > 3)
      {
        switch(v50)
        {
          case 4:
            v379 = 0;
            v380 = 0;
            v381 = 0;
            while (1)
            {
              LOBYTE(v645[0]) = 0;
              v382 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
              if (v382 >= objc_msgSend_position(a2, v383, v384, v385, v386) && (v391 = objc_msgSend_position(a2, v387, v388, v389, v390) + 1, v391 <= objc_msgSend_length(a2, v392, v393, v394, v395)))
              {
                v396 = objc_msgSend_data(a2, v387, v388, v389, v390);
                v401 = objc_msgSend_position(a2, v397, v398, v399, v400);
                objc_msgSend_getBytes_range_(v396, v402, v645, v401, 1);

                v407 = objc_msgSend_position(a2, v403, v404, v405, v406);
                objc_msgSend_setPosition_(a2, v408, v407 + 1, v409, v410);
              }

              else
              {
                objc_msgSend__setError(a2, v387, v388, v389, v390);
              }

              v381 |= (v645[0] & 0x7F) << v379;
              if ((v645[0] & 0x80) == 0)
              {
                break;
              }

              v379 += 7;
              v48 = v380++ >= 9;
              if (v48)
              {
                v411 = 0;
                goto LABEL_250;
              }
            }

            if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
            {
              v411 = 0;
            }

            else
            {
              v411 = v381;
            }

LABEL_250:
            *(a1 + 8) = v411;
            goto LABEL_292;
          case 0x65:
            v283 = 0;
            v284 = 0;
            v285 = 0;
            *(a1 + 140) |= 0x10000u;
            while (1)
            {
              LOBYTE(v645[0]) = 0;
              v286 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
              if (v286 >= objc_msgSend_position(a2, v287, v288, v289, v290) && (v295 = objc_msgSend_position(a2, v291, v292, v293, v294) + 1, v295 <= objc_msgSend_length(a2, v296, v297, v298, v299)))
              {
                v300 = objc_msgSend_data(a2, v291, v292, v293, v294);
                v305 = objc_msgSend_position(a2, v301, v302, v303, v304);
                objc_msgSend_getBytes_range_(v300, v306, v645, v305, 1);

                v311 = objc_msgSend_position(a2, v307, v308, v309, v310);
                objc_msgSend_setPosition_(a2, v312, v311 + 1, v313, v314);
              }

              else
              {
                objc_msgSend__setError(a2, v291, v292, v293, v294);
              }

              v285 |= (v645[0] & 0x7F) << v283;
              if ((v645[0] & 0x80) == 0)
              {
                break;
              }

              v283 += 7;
              v48 = v284++ >= 9;
              if (v48)
              {
                LOBYTE(v150) = 0;
                goto LABEL_227;
              }
            }

            v150 = (v285 != 0) & ~objc_msgSend_hasError(a2, v50, v13, v14, v15);
LABEL_227:
            v638 = 137;
            goto LABEL_238;
          case 0x66:
            v118 = 0;
            v119 = 0;
            v120 = 0;
            *(a1 + 140) |= 0x8000u;
            while (1)
            {
              LOBYTE(v645[0]) = 0;
              v121 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
              if (v121 >= objc_msgSend_position(a2, v122, v123, v124, v125) && (v130 = objc_msgSend_position(a2, v126, v127, v128, v129) + 1, v130 <= objc_msgSend_length(a2, v131, v132, v133, v134)))
              {
                v135 = objc_msgSend_data(a2, v126, v127, v128, v129);
                v140 = objc_msgSend_position(a2, v136, v137, v138, v139);
                objc_msgSend_getBytes_range_(v135, v141, v645, v140, 1);

                v146 = objc_msgSend_position(a2, v142, v143, v144, v145);
                objc_msgSend_setPosition_(a2, v147, v146 + 1, v148, v149);
              }

              else
              {
                objc_msgSend__setError(a2, v126, v127, v128, v129);
              }

              v120 |= (v645[0] & 0x7F) << v118;
              if ((v645[0] & 0x80) == 0)
              {
                break;
              }

              v118 += 7;
              v48 = v119++ >= 9;
              if (v48)
              {
                LOBYTE(v150) = 0;
                goto LABEL_237;
              }
            }

            v150 = (v120 != 0) & ~objc_msgSend_hasError(a2, v50, v13, v14, v15);
LABEL_237:
            v638 = 136;
LABEL_238:
            *(a1 + v638) = v150;
            goto LABEL_292;
        }

        goto LABEL_220;
      }

      if (v50 == 1)
      {
        v51 = PBReaderReadString();
        v52 = 80;
        goto LABEL_201;
      }

      if (v50 != 2)
      {
        if (v50 == 3)
        {
          v51 = PBReaderReadString();
          v52 = 16;
LABEL_201:
          v572 = *(a1 + v52);
          *(a1 + v52) = v51;

          goto LABEL_292;
        }

        goto LABEL_220;
      }

      v247 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
      objc_storeStrong((a1 + 112), v247);
      v645[0] = 0;
      v645[1] = 0;
      if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiersReadFrom(v247, a2, v248, v249, v250))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_292:
      v639 = objc_msgSend_position(a2, v50, v13, v14, v15);
      if (v639 >= objc_msgSend_length(a2, v640, v641, v642, v643))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }
    }

    if (v50 <= 203)
    {
      if (v50 == 201)
      {
        v347 = 0;
        v348 = 0;
        v349 = 0;
        *(a1 + 140) |= 4u;
        while (1)
        {
          LOBYTE(v645[0]) = 0;
          v350 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
          if (v350 >= objc_msgSend_position(a2, v351, v352, v353, v354) && (v359 = objc_msgSend_position(a2, v355, v356, v357, v358) + 1, v359 <= objc_msgSend_length(a2, v360, v361, v362, v363)))
          {
            v364 = objc_msgSend_data(a2, v355, v356, v357, v358);
            v369 = objc_msgSend_position(a2, v365, v366, v367, v368);
            objc_msgSend_getBytes_range_(v364, v370, v645, v369, 1);

            v375 = objc_msgSend_position(a2, v371, v372, v373, v374);
            objc_msgSend_setPosition_(a2, v376, v375 + 1, v377, v378);
          }

          else
          {
            objc_msgSend__setError(a2, v355, v356, v357, v358);
          }

          v349 |= (v645[0] & 0x7F) << v347;
          if ((v645[0] & 0x80) == 0)
          {
            break;
          }

          v347 += 7;
          v48 = v348++ >= 9;
          if (v48)
          {
            v85 = 0;
            goto LABEL_246;
          }
        }

        if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
        {
          v85 = 0;
        }

        else
        {
          v85 = v349;
        }

LABEL_246:
        v637 = 32;
      }

      else if (v50 == 202)
      {
        v251 = 0;
        v252 = 0;
        v253 = 0;
        *(a1 + 140) |= 8u;
        while (1)
        {
          LOBYTE(v645[0]) = 0;
          v254 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
          if (v254 >= objc_msgSend_position(a2, v255, v256, v257, v258) && (v263 = objc_msgSend_position(a2, v259, v260, v261, v262) + 1, v263 <= objc_msgSend_length(a2, v264, v265, v266, v267)))
          {
            v268 = objc_msgSend_data(a2, v259, v260, v261, v262);
            v273 = objc_msgSend_position(a2, v269, v270, v271, v272);
            objc_msgSend_getBytes_range_(v268, v274, v645, v273, 1);

            v279 = objc_msgSend_position(a2, v275, v276, v277, v278);
            objc_msgSend_setPosition_(a2, v280, v279 + 1, v281, v282);
          }

          else
          {
            objc_msgSend__setError(a2, v259, v260, v261, v262);
          }

          v253 |= (v645[0] & 0x7F) << v251;
          if ((v645[0] & 0x80) == 0)
          {
            break;
          }

          v251 += 7;
          v48 = v252++ >= 9;
          if (v48)
          {
            v85 = 0;
            goto LABEL_225;
          }
        }

        if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
        {
          v85 = 0;
        }

        else
        {
          v85 = v253;
        }

LABEL_225:
        v637 = 36;
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 140) |= 1u;
        while (1)
        {
          LOBYTE(v645[0]) = 0;
          v56 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
          if (v56 >= objc_msgSend_position(a2, v57, v58, v59, v60) && (v65 = objc_msgSend_position(a2, v61, v62, v63, v64) + 1, v65 <= objc_msgSend_length(a2, v66, v67, v68, v69)))
          {
            v70 = objc_msgSend_data(a2, v61, v62, v63, v64);
            v75 = objc_msgSend_position(a2, v71, v72, v73, v74);
            objc_msgSend_getBytes_range_(v70, v76, v645, v75, 1);

            v81 = objc_msgSend_position(a2, v77, v78, v79, v80);
            objc_msgSend_setPosition_(a2, v82, v81 + 1, v83, v84);
          }

          else
          {
            objc_msgSend__setError(a2, v61, v62, v63, v64);
          }

          v55 |= (v645[0] & 0x7F) << v53;
          if ((v645[0] & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v48 = v54++ >= 9;
          if (v48)
          {
            v85 = 0;
            goto LABEL_235;
          }
        }

        if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
        {
          v85 = 0;
        }

        else
        {
          v85 = v55;
        }

LABEL_235:
        v637 = 24;
      }

      goto LABEL_291;
    }

    switch(v50)
    {
      case 0xCC:
        v412 = 0;
        v413 = 0;
        v414 = 0;
        *(a1 + 140) |= 2u;
        while (1)
        {
          LOBYTE(v645[0]) = 0;
          v415 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
          if (v415 >= objc_msgSend_position(a2, v416, v417, v418, v419) && (v424 = objc_msgSend_position(a2, v420, v421, v422, v423) + 1, v424 <= objc_msgSend_length(a2, v425, v426, v427, v428)))
          {
            v429 = objc_msgSend_data(a2, v420, v421, v422, v423);
            v434 = objc_msgSend_position(a2, v430, v431, v432, v433);
            objc_msgSend_getBytes_range_(v429, v435, v645, v434, 1);

            v440 = objc_msgSend_position(a2, v436, v437, v438, v439);
            objc_msgSend_setPosition_(a2, v441, v440 + 1, v442, v443);
          }

          else
          {
            objc_msgSend__setError(a2, v420, v421, v422, v423);
          }

          v414 |= (v645[0] & 0x7F) << v412;
          if ((v645[0] & 0x80) == 0)
          {
            break;
          }

          v412 += 7;
          v48 = v413++ >= 9;
          if (v48)
          {
            v85 = 0;
            goto LABEL_254;
          }
        }

        if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
        {
          v85 = 0;
        }

        else
        {
          v85 = v414;
        }

LABEL_254:
        v637 = 28;
        goto LABEL_291;
      case 0x12D:
        v315 = 0;
        v316 = 0;
        v317 = 0;
        *(a1 + 140) |= 0x800u;
        while (1)
        {
          LOBYTE(v645[0]) = 0;
          v318 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
          if (v318 >= objc_msgSend_position(a2, v319, v320, v321, v322) && (v327 = objc_msgSend_position(a2, v323, v324, v325, v326) + 1, v327 <= objc_msgSend_length(a2, v328, v329, v330, v331)))
          {
            v332 = objc_msgSend_data(a2, v323, v324, v325, v326);
            v337 = objc_msgSend_position(a2, v333, v334, v335, v336);
            objc_msgSend_getBytes_range_(v332, v338, v645, v337, 1);

            v343 = objc_msgSend_position(a2, v339, v340, v341, v342);
            objc_msgSend_setPosition_(a2, v344, v343 + 1, v345, v346);
          }

          else
          {
            objc_msgSend__setError(a2, v323, v324, v325, v326);
          }

          v317 |= (v645[0] & 0x7F) << v315;
          if ((v645[0] & 0x80) == 0)
          {
            break;
          }

          v315 += 7;
          v48 = v316++ >= 9;
          if (v48)
          {
            v85 = 0;
            goto LABEL_231;
          }
        }

        if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
        {
          v85 = 0;
        }

        else
        {
          v85 = v317;
        }

LABEL_231:
        v637 = 68;
        goto LABEL_291;
      case 0x12E:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(a1 + 140) |= 0x400u;
        while (1)
        {
          LOBYTE(v645[0]) = 0;
          v154 = objc_msgSend_position(a2, v50, v13, v14, v15, v645[0]) + 1;
          if (v154 >= objc_msgSend_position(a2, v155, v156, v157, v158) && (v163 = objc_msgSend_position(a2, v159, v160, v161, v162) + 1, v163 <= objc_msgSend_length(a2, v164, v165, v166, v167)))
          {
            v168 = objc_msgSend_data(a2, v159, v160, v161, v162);
            v173 = objc_msgSend_position(a2, v169, v170, v171, v172);
            objc_msgSend_getBytes_range_(v168, v174, v645, v173, 1);

            v179 = objc_msgSend_position(a2, v175, v176, v177, v178);
            objc_msgSend_setPosition_(a2, v180, v179 + 1, v181, v182);
          }

          else
          {
            objc_msgSend__setError(a2, v159, v160, v161, v162);
          }

          v153 |= (v645[0] & 0x7F) << v151;
          if ((v645[0] & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v48 = v152++ >= 9;
          if (v48)
          {
            v85 = 0;
            goto LABEL_242;
          }
        }

        if (objc_msgSend_hasError(a2, v50, v13, v14, v15))
        {
          v85 = 0;
        }

        else
        {
          v85 = v153;
        }

LABEL_242:
        v637 = 64;
        goto LABEL_291;
    }

LABEL_220:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_292;
  }

  return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
}

uint64_t sub_255EF21A0()
{
  qword_281536D08 = objc_alloc_init(LBFEventManager);

  return MEMORY[0x2821F96F8]();
}

void sub_255EF22FC(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) && os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0BF64();
  }

  v2 = [LBFBiomeManager alloc];
  v3 = BiomeLibrary();
  v8 = objc_msgSend_Lighthouse(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_Ledger(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_LighthousePluginEvent(v13, v14, v15, v16, v17);
  v22 = objc_msgSend_init_(v2, v19, v18, v20, v21);
  v23 = *(a1 + 32);
  v24 = *(v23 + 8);
  *(v23 + 8) = v22;
}

void sub_255EF246C(uint64_t a1)
{
  if (*(*(a1 + 32) + 16) && os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0BF98();
  }

  v2 = [LBFBiomeManager alloc];
  v3 = BiomeLibrary();
  v8 = objc_msgSend_Lighthouse(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_Ledger(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_TrialdEvent(v13, v14, v15, v16, v17);
  v22 = objc_msgSend_init_(v2, v19, v18, v20, v21);
  v23 = *(a1 + 32);
  v24 = *(v23 + 16);
  *(v23 + 16) = v22;
}

void sub_255EF25DC(uint64_t a1)
{
  if (*(*(a1 + 32) + 24) && os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0BFCC();
  }

  v2 = [LBFBiomeManager alloc];
  v3 = BiomeLibrary();
  v8 = objc_msgSend_Lighthouse(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_Ledger(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_MlruntimedEvent(v13, v14, v15, v16, v17);
  v22 = objc_msgSend_init_(v2, v19, v18, v20, v21);
  v23 = *(a1 + 32);
  v24 = *(v23 + 24);
  *(v23 + 24) = v22;
}

void sub_255EF274C(uint64_t a1)
{
  if (*(*(a1 + 32) + 32) && os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0C000();
  }

  v2 = [LBFBiomeManager alloc];
  v3 = BiomeLibrary();
  v8 = objc_msgSend_Lighthouse(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_Ledger(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_DediscoPrivacyEvent(v13, v14, v15, v16, v17);
  v22 = objc_msgSend_init_(v2, v19, v18, v20, v21);
  v23 = *(a1 + 32);
  v24 = *(v23 + 32);
  *(v23 + 32) = v22;
}

uint64_t sub_255EF3544(uint64_t *a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1[4] && (v9 = a1[5], objc_msgSend_trialIdentifiers(v3, v4, v5, v6, v7), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = objc_msgSend_isEqualIdentifiers_identifiers_(v9, v11, v10, a1[4], v12), v10, !v9))
  {
    v67 = 1;
  }

  else
  {
    v13 = a1[5];
    v14 = objc_msgSend_trialIdentifiers(v8, v4, v5, v6, v7);
    v18 = objc_msgSend_convertToLBFTrialIdentifiers_(v13, v15, v14, v16, v17);

    if (objc_msgSend_eventType(v8, v19, v20, v21, v22) == 1)
    {
      v27 = [LBFTrialEvent alloc];
      v32 = objc_msgSend_eventSucceeded(v8, v28, v29, v30, v31);
      v36 = objc_msgSend_initWithAllocation_(v27, v33, v32, v34, v35);
    }

    else
    {
      v36 = 0;
    }

    if (objc_msgSend_eventType(v8, v23, v24, v25, v26) == 2)
    {
      v41 = [LBFTrialEvent alloc];
      v46 = objc_msgSend_eventSucceeded(v8, v42, v43, v44, v45);
      v50 = objc_msgSend_initWithActivation_(v41, v47, v46, v48, v49);

      v36 = v50;
    }

    if (objc_msgSend_eventType(v8, v37, v38, v39, v40) == 3)
    {
      v55 = [LBFTrialEvent alloc];
      v60 = objc_msgSend_eventSucceeded(v8, v56, v57, v58, v59);
      v64 = objc_msgSend_initWithDeactivation_(v55, v61, v60, v62, v63);

      v36 = v64;
    }

    v65 = a1[6];
    v66 = objc_msgSend_timestamp(v8, v51, v52, v53, v54);
    v67 = (*(v65 + 16))(v65, v18, v36, v66);
  }

  return v67;
}

void sub_255EF37F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_255EF3810(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_255EF3988(uint64_t *a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1[4] && (v9 = a1[5], objc_msgSend_trialIdentifiers(v3, v4, v5, v6, v7), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = objc_msgSend_isEqualIdentifiers_identifiers_(v9, v11, v10, a1[4], v12), v10, !v9))
  {
    v103 = 1;
  }

  else
  {
    v13 = a1[5];
    v14 = objc_msgSend_trialIdentifiers(v8, v4, v5, v6, v7);
    v18 = objc_msgSend_convertToLBFTrialIdentifiers_(v13, v15, v14, v16, v17);

    v23 = objc_msgSend_performTaskStatus(v8, v19, v20, v21, v22);

    if (v23)
    {
      v28 = objc_msgSend_performTaskStatus(v8, v24, v25, v26, v27);
      v33 = objc_msgSend_errorDomain(v28, v29, v30, v31, v32);

      if (v33)
      {
        v34 = objc_alloc(MEMORY[0x277CCA9B8]);
        v39 = objc_msgSend_performTaskStatus(v8, v35, v36, v37, v38);
        v44 = objc_msgSend_errorDomain(v39, v40, v41, v42, v43);
        v49 = objc_msgSend_performTaskStatus(v8, v45, v46, v47, v48);
        v54 = objc_msgSend_errorCode(v49, v50, v51, v52, v53);
        v33 = objc_msgSend_initWithDomain_code_userInfo_(v34, v55, v44, v54, 0);
      }

      v56 = [LBFLighthouseEvent alloc];
      v61 = objc_msgSend_performTaskStatus(v8, v57, v58, v59, v60);
      v66 = objc_msgSend_succeeded(v61, v62, v63, v64, v65);
      v23 = objc_msgSend_initWithPerformTaskStatus_error_(v56, v67, v66, v33, v68);
    }

    v69 = objc_msgSend_performTrialTaskStatus(v8, v24, v25, v26, v27);

    if (v69)
    {
      v74 = objc_msgSend_performTrialTaskStatus(v8, v70, v71, v72, v73);
      v79 = objc_msgSend_errorDomain(v74, v75, v76, v77, v78);

      if (v79)
      {
        v80 = objc_alloc(MEMORY[0x277CCA9B8]);
        v85 = objc_msgSend_performTrialTaskStatus(v8, v81, v82, v83, v84);
        v90 = objc_msgSend_errorDomain(v85, v86, v87, v88, v89);
        v95 = objc_msgSend_performTrialTaskStatus(v8, v91, v92, v93, v94);
        v100 = objc_msgSend_errorCode(v95, v96, v97, v98, v99);
        v102 = objc_msgSend_initWithDomain_code_userInfo_(v80, v101, v90, v100, 0);
      }

      else
      {
        v102 = 0;
      }

      v104 = [LBFLighthouseEvent alloc];
      v109 = objc_msgSend_performTrialTaskStatus(v8, v105, v106, v107, v108);
      v114 = objc_msgSend_succeeded(v109, v110, v111, v112, v113);
      v117 = objc_msgSend_initWithPerformTrialTaskStatus_error_(v104, v115, v114, v102, v116);

      v23 = v117;
    }

    v118 = objc_msgSend_stop(v8, v70, v71, v72, v73);

    if (v118)
    {
      v123 = objc_msgSend_stop(v8, v119, v120, v121, v122);
      v128 = objc_msgSend_errorDomain(v123, v124, v125, v126, v127);

      if (v128)
      {
        v129 = objc_alloc(MEMORY[0x277CCA9B8]);
        v134 = objc_msgSend_stop(v8, v130, v131, v132, v133);
        v139 = objc_msgSend_errorDomain(v134, v135, v136, v137, v138);
        v144 = objc_msgSend_stop(v8, v140, v141, v142, v143);
        v149 = objc_msgSend_errorCode(v144, v145, v146, v147, v148);
        v151 = objc_msgSend_initWithDomain_code_userInfo_(v129, v150, v139, v149, 0);
      }

      else
      {
        v151 = 0;
      }

      v152 = [LBFLighthouseEvent alloc];
      v157 = objc_msgSend_stop(v8, v153, v154, v155, v156);
      v162 = objc_msgSend_succeeded(v157, v158, v159, v160, v161);
      v165 = objc_msgSend_initWithStop_error_(v152, v163, v162, v151, v164);

      v23 = v165;
    }

    v166 = a1[6];
    v167 = objc_msgSend_timestamp(v8, v119, v120, v121, v122);
    v103 = (*(v166 + 16))(v166, v18, v23, v167);
  }

  return v103;
}

void sub_255EF3E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_255EF3FD0(uint64_t *a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1[4] && (v9 = a1[5], objc_msgSend_trialIdentifiers(v3, v4, v5, v6, v7), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = objc_msgSend_isEqualIdentifiers_identifiers_(v9, v11, v10, a1[4], v12), v10, !v9))
  {
    v76 = 1;
  }

  else
  {
    v13 = a1[5];
    v14 = objc_msgSend_trialIdentifiers(v8, v4, v5, v6, v7);
    v18 = objc_msgSend_convertToLBFTrialIdentifiers_(v13, v15, v14, v16, v17);

    v23 = objc_msgSend_activityScheduleStatus(v8, v19, v20, v21, v22);

    if (v23)
    {
      v28 = [LBFMLRuntimedEvent alloc];
      v33 = objc_msgSend_activityScheduleStatus(v8, v29, v30, v31, v32);
      v38 = objc_msgSend_scheduled(v33, v34, v35, v36, v37);
      v23 = objc_msgSend_initWithScheduleStatus_(v28, v39, v38, v40, v41);
    }

    v42 = objc_msgSend_taskFetched(v8, v24, v25, v26, v27);

    if (v42)
    {
      v47 = objc_msgSend_taskFetched(v8, v43, v44, v45, v46);
      v52 = objc_msgSend_errorDomain(v47, v48, v49, v50, v51);

      if (v52)
      {
        v53 = objc_alloc(MEMORY[0x277CCA9B8]);
        v58 = objc_msgSend_taskFetched(v8, v54, v55, v56, v57);
        v63 = objc_msgSend_errorDomain(v58, v59, v60, v61, v62);
        v68 = objc_msgSend_taskFetched(v8, v64, v65, v66, v67);
        v73 = objc_msgSend_errorCode(v68, v69, v70, v71, v72);
        v75 = objc_msgSend_initWithDomain_code_userInfo_(v53, v74, v63, v73, 0);
      }

      else
      {
        v75 = 0;
      }

      v77 = [LBFMLRuntimedEvent alloc];
      v82 = objc_msgSend_taskFetched(v8, v78, v79, v80, v81);
      v87 = objc_msgSend_succeeded(v82, v83, v84, v85, v86);
      v90 = objc_msgSend_initWithTaskFetched_error_(v77, v88, v87, v75, v89);

      v23 = v90;
    }

    v91 = objc_msgSend_taskScheduled(v8, v43, v44, v45, v46);

    if (v91)
    {
      v96 = objc_msgSend_taskScheduled(v8, v92, v93, v94, v95);
      v101 = objc_msgSend_errorDomain(v96, v97, v98, v99, v100);

      if (v101)
      {
        v102 = objc_alloc(MEMORY[0x277CCA9B8]);
        v107 = objc_msgSend_taskScheduled(v8, v103, v104, v105, v106);
        v112 = objc_msgSend_errorDomain(v107, v108, v109, v110, v111);
        v117 = objc_msgSend_taskScheduled(v8, v113, v114, v115, v116);
        v122 = objc_msgSend_errorCode(v117, v118, v119, v120, v121);
        v124 = objc_msgSend_initWithDomain_code_userInfo_(v102, v123, v112, v122, 0);
      }

      else
      {
        v124 = 0;
      }

      v125 = [LBFMLRuntimedEvent alloc];
      v130 = objc_msgSend_taskScheduled(v8, v126, v127, v128, v129);
      v135 = objc_msgSend_succeeded(v130, v131, v132, v133, v134);
      v138 = objc_msgSend_initWithTaskScheduled_error_(v125, v136, v135, v124, v137);

      v23 = v138;
    }

    v139 = objc_msgSend_taskCompleted(v8, v92, v93, v94, v95);

    if (v139)
    {
      v144 = objc_msgSend_taskCompleted(v8, v140, v141, v142, v143);
      v149 = objc_msgSend_errorDomain(v144, v145, v146, v147, v148);

      if (v149)
      {
        v150 = objc_alloc(MEMORY[0x277CCA9B8]);
        v155 = objc_msgSend_taskCompleted(v8, v151, v152, v153, v154);
        v160 = objc_msgSend_errorDomain(v155, v156, v157, v158, v159);
        v165 = objc_msgSend_taskCompleted(v8, v161, v162, v163, v164);
        v170 = objc_msgSend_errorCode(v165, v166, v167, v168, v169);
        v172 = objc_msgSend_initWithDomain_code_userInfo_(v150, v171, v160, v170, 0);
      }

      else
      {
        v172 = 0;
      }

      v173 = [LBFMLRuntimedEvent alloc];
      v178 = objc_msgSend_taskCompleted(v8, v174, v175, v176, v177);
      v183 = objc_msgSend_succeeded(v178, v179, v180, v181, v182);
      v186 = objc_msgSend_initWithTaskCompleted_error_(v173, v184, v183, v172, v185);

      v23 = v186;
    }

    v187 = a1[6];
    v188 = objc_msgSend_timestamp(v8, v140, v141, v142, v143);
    v76 = (*(v187 + 16))(v187, v18, v23, v188);
  }

  return v76;
}

void sub_255EF44FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_255EF4674(uint64_t *a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1[4] && (v9 = a1[5], objc_msgSend_trialIdentifiers(v3, v4, v5, v6, v7), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = objc_msgSend_isEqualIdentifiers_identifiers_(v9, v11, v10, a1[4], v12), v10, !v9))
  {
    v41 = 1;
  }

  else
  {
    v13 = a1[5];
    v14 = objc_msgSend_trialIdentifiers(v8, v4, v5, v6, v7);
    v87 = objc_msgSend_convertToLBFTrialIdentifiers_(v13, v15, v14, v16, v17);

    v22 = objc_msgSend_event(v8, v18, v19, v20, v21);
    v27 = objc_msgSend_errorMessage(v22, v23, v24, v25, v26);

    if (v27)
    {
      v28 = objc_alloc(MEMORY[0x277CCA9B8]);
      v33 = objc_msgSend_event(v8, v29, v30, v31, v32);
      v38 = objc_msgSend_errorMessage(v33, v34, v35, v36, v37);
      v40 = objc_msgSend_initWithDomain_code_userInfo_(v28, v39, v38, 0, 0);
    }

    else
    {
      v40 = 0;
    }

    v42 = [LBFDprivacydEvent alloc];
    v47 = objc_msgSend_event(v8, v43, v44, v45, v46);
    v52 = objc_msgSend_phase(v47, v48, v49, v50, v51);
    v57 = objc_msgSend_eventIdentifier(v8, v53, v54, v55, v56);
    v62 = objc_msgSend_event(v8, v58, v59, v60, v61);
    v67 = objc_msgSend_succeeded(v62, v63, v64, v65, v66);
    v72 = objc_msgSend_aggregateFunction(v8, v68, v69, v70, v71);
    v77 = objc_msgSend_count(v8, v73, v74, v75, v76);
    v79 = objc_msgSend_initWithEventPhase_eventUUID_succeeded_error_aggregateFunction_count_(v42, v78, v52, v57, v67, v40, v72, v77);

    v80 = a1[6];
    v85 = objc_msgSend_timestamp(v8, v81, v82, v83, v84);
    v41 = (*(v80 + 16))(v80, v87, v79, v85);
  }

  return v41;
}

void sub_255EF49A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_255EF4A90(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_255EF4D8C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEventReadFrom(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_position(a2, a2, a3, a4, a5);
  if (v7 < objc_msgSend_length(a2, v8, v9, v10, v11))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LOBYTE(v103) = 0;
        v19 = objc_msgSend_position(a2, v12, v13, v14, v15, v103) + 1;
        if (v19 >= objc_msgSend_position(a2, v20, v21, v22, v23) && (v28 = objc_msgSend_position(a2, v24, v25, v26, v27) + 1, v28 <= objc_msgSend_length(a2, v29, v30, v31, v32)))
        {
          v33 = objc_msgSend_data(a2, v24, v25, v26, v27);
          v38 = objc_msgSend_position(a2, v34, v35, v36, v37);
          objc_msgSend_getBytes_range_(v33, v39, &v103, v38, 1);

          v44 = objc_msgSend_position(a2, v40, v41, v42, v43);
          objc_msgSend_setPosition_(a2, v45, v44 + 1, v46, v47);
        }

        else
        {
          objc_msgSend__setError(a2, v24, v25, v26, v27);
        }

        v18 |= (v103 & 0x7F) << v16;
        if ((v103 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        if (v17++ >= 9)
        {
          v49 = 0;
          goto LABEL_15;
        }
      }

      v49 = objc_msgSend_hasError(a2, v12, v13, v14, v15) ? 0 : v18;
LABEL_15:
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v13 = v49 & 7;
      if (v13 == 4)
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v50 = (v49 >> 3);
      if ((v49 >> 3) <= 100)
      {
        switch(v50)
        {
          case 1:
            v51 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
            objc_storeStrong((a1 + 56), v51);
            v103 = 0;
            v104 = 0;
            if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiersReadFrom(v51, a2, v71, v72, v73))
            {
LABEL_49:

              return 0;
            }

            goto LABEL_42;
          case 2:
            v85 = PBReaderReadString();
            v86 = *(a1 + 24);
            *(a1 + 24) = v85;

            goto LABEL_43;
          case 3:
            *(a1 + 64) |= 1u;
            v103 = 0;
            v53 = objc_msgSend_position(a2, v50, v13, v14, v15) + 8;
            if (v53 >= objc_msgSend_position(a2, v54, v55, v56, v57) && (v62 = objc_msgSend_position(a2, v58, v59, v60, v61) + 8, v62 <= objc_msgSend_length(a2, v63, v64, v65, v66)))
            {
              v87 = objc_msgSend_data(a2, v58, v59, v60, v61);
              v92 = objc_msgSend_position(a2, v88, v89, v90, v91);
              objc_msgSend_getBytes_range_(v87, v93, &v103, v92, 8);

              v98 = objc_msgSend_position(a2, v94, v95, v96, v97);
              objc_msgSend_setPosition_(a2, v99, v98 + 8, v100, v101);
            }

            else
            {
              objc_msgSend__setError(a2, v58, v59, v60, v61);
            }

            *(a1 + 8) = v103;
            goto LABEL_43;
        }
      }

      else if (v50 > 102)
      {
        if (v50 == 103)
        {
          v51 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
          v52 = 48;
LABEL_40:
          objc_storeStrong((a1 + v52), v51);
          v103 = 0;
          v104 = 0;
          if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOTaskEventReadFrom(v51, a2, v77, v78, v79))
          {
            goto LABEL_49;
          }

LABEL_42:
          PBReaderRecallMark();

          goto LABEL_43;
        }

        if (v50 == 104)
        {
          v51 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
          v52 = 32;
          goto LABEL_40;
        }
      }

      else
      {
        if (v50 == 101)
        {
          v51 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOScheduleStatus);
          objc_storeStrong((a1 + 16), v51);
          v103 = 0;
          v104 = 0;
          if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOScheduleStatusReadFrom(v51, a2, v74, v75, v76))
          {
            goto LABEL_49;
          }

          goto LABEL_42;
        }

        if (v50 == 102)
        {
          v51 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
          v52 = 40;
          goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v80 = objc_msgSend_position(a2, v67, v68, v69, v70);
    }

    while (v80 < objc_msgSend_length(a2, v81, v82, v83, v84));
  }

  return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiersReadFrom(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_position(a2, a2, a3, a4, a5);
  if (v7 < objc_msgSend_length(a2, v8, v9, v10, v11))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v64 = 0;
        v19 = objc_msgSend_position(a2, v12, v13, v14, v15) + 1;
        if (v19 >= objc_msgSend_position(a2, v20, v21, v22, v23) && (v28 = objc_msgSend_position(a2, v24, v25, v26, v27) + 1, v28 <= objc_msgSend_length(a2, v29, v30, v31, v32)))
        {
          v33 = objc_msgSend_data(a2, v24, v25, v26, v27);
          v38 = objc_msgSend_position(a2, v34, v35, v36, v37);
          objc_msgSend_getBytes_range_(v33, v39, &v64, v38, 1);

          v44 = objc_msgSend_position(a2, v40, v41, v42, v43);
          objc_msgSend_setPosition_(a2, v45, v44 + 1, v46, v47);
        }

        else
        {
          objc_msgSend__setError(a2, v24, v25, v26, v27);
        }

        v18 |= (v64 & 0x7F) << v16;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        if (v17++ >= 9)
        {
          v49 = 0;
          goto LABEL_15;
        }
      }

      v49 = objc_msgSend_hasError(a2, v12, v13, v14, v15) ? 0 : v18;
LABEL_15:
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v13 = v49 & 7;
      if (v13 == 4)
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      if ((v49 >> 3) == 1)
      {
        break;
      }

      if ((v49 >> 3) == 2)
      {
        v50 = &OBJC_IVAR___LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers__trialDeploymentID;
LABEL_21:
        v51 = PBReaderReadString();
        v52 = *v50;
        v53 = *(a1 + v52);
        *(a1 + v52) = v51;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v58 = objc_msgSend_position(a2, v54, v55, v56, v57);
      if (v58 >= objc_msgSend_length(a2, v59, v60, v61, v62))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }
    }

    v50 = &OBJC_IVAR___LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers__trialTaskID;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOScheduleStatusReadFrom(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_position(a2, a2, a3, a4, a5);
  if (v7 < objc_msgSend_length(a2, v8, v9, v10, v11))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        break;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v90 = 0;
        v19 = objc_msgSend_position(a2, v12, v13, v14, v15) + 1;
        if (v19 >= objc_msgSend_position(a2, v20, v21, v22, v23) && (v28 = objc_msgSend_position(a2, v24, v25, v26, v27) + 1, v28 <= objc_msgSend_length(a2, v29, v30, v31, v32)))
        {
          v33 = objc_msgSend_data(a2, v24, v25, v26, v27);
          v38 = objc_msgSend_position(a2, v34, v35, v36, v37);
          objc_msgSend_getBytes_range_(v33, v39, &v90, v38, 1);

          v44 = objc_msgSend_position(a2, v40, v41, v42, v43);
          objc_msgSend_setPosition_(a2, v45, v44 + 1, v46, v47);
        }

        else
        {
          objc_msgSend__setError(a2, v24, v25, v26, v27);
        }

        v18 |= (v90 & 0x7F) << v16;
        if ((v90 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v48 = v17++ >= 9;
        if (v48)
        {
          v49 = 0;
          goto LABEL_15;
        }
      }

      v49 = objc_msgSend_hasError(a2, v12, v13, v14, v15) ? 0 : v18;
LABEL_15:
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        break;
      }

      v13 = v49 & 7;
      if (v13 == 4)
      {
        break;
      }

      v50 = (v49 >> 3);
      if ((v49 >> 3) == 1)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v91 = 0;
          v54 = objc_msgSend_position(a2, v50, v13, v14, v15) + 1;
          if (v54 >= objc_msgSend_position(a2, v55, v56, v57, v58) && (v63 = objc_msgSend_position(a2, v59, v60, v61, v62) + 1, v63 <= objc_msgSend_length(a2, v64, v65, v66, v67)))
          {
            v68 = objc_msgSend_data(a2, v59, v60, v61, v62);
            v73 = objc_msgSend_position(a2, v69, v70, v71, v72);
            objc_msgSend_getBytes_range_(v68, v74, &v91, v73, 1);

            v79 = objc_msgSend_position(a2, v75, v76, v77, v78);
            objc_msgSend_setPosition_(a2, v80, v79 + 1, v81, v82);
          }

          else
          {
            objc_msgSend__setError(a2, v59, v60, v61, v62);
          }

          v53 |= (v91 & 0x7F) << v51;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v48 = v52++ >= 9;
          if (v48)
          {
            LOBYTE(v83) = 0;
            goto LABEL_30;
          }
        }

        v83 = (v53 != 0) & ~objc_msgSend_hasError(a2, v50, v13, v14, v15);
LABEL_30:
        *(a1 + 8) = v83;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v85 = objc_msgSend_position(a2, v50, v13, v14, v15);
    }

    while (v85 < objc_msgSend_length(a2, v86, v87, v88, v89));
  }

  return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
}

uint64_t LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiersReadFrom(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_position(a2, a2, a3, a4, a5);
  if (v7 < objc_msgSend_length(a2, v8, v9, v10, v11))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LOBYTE(v67) = 0;
        v19 = objc_msgSend_position(a2, v12, v13, v14, v15, v67) + 1;
        if (v19 >= objc_msgSend_position(a2, v20, v21, v22, v23) && (v28 = objc_msgSend_position(a2, v24, v25, v26, v27) + 1, v28 <= objc_msgSend_length(a2, v29, v30, v31, v32)))
        {
          v33 = objc_msgSend_data(a2, v24, v25, v26, v27);
          v38 = objc_msgSend_position(a2, v34, v35, v36, v37);
          objc_msgSend_getBytes_range_(v33, v39, &v67, v38, 1);

          v44 = objc_msgSend_position(a2, v40, v41, v42, v43);
          objc_msgSend_setPosition_(a2, v45, v44 + 1, v46, v47);
        }

        else
        {
          objc_msgSend__setError(a2, v24, v25, v26, v27);
        }

        v18 |= (v67 & 0x7F) << v16;
        if ((v67 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        if (v17++ >= 9)
        {
          v49 = 0;
          goto LABEL_15;
        }
      }

      v49 = objc_msgSend_hasError(a2, v12, v13, v14, v15) ? 0 : v18;
LABEL_15:
      if (objc_msgSend_hasError(a2, v12, v13, v14, v15))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      v13 = v49 & 7;
      if (v13 == 4)
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }

      if ((v49 >> 3) == 2)
      {
        break;
      }

      if ((v49 >> 3) == 1)
      {
        v50 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers);
        objc_storeStrong((a1 + 16), v50);
        v67 = 0;
        v68 = 0;
        if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiersReadFrom(v50, a2, v51, v52, v53))
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
      v61 = objc_msgSend_position(a2, v57, v58, v59, v60);
      if (v61 >= objc_msgSend_length(a2, v62, v63, v64, v65))
      {
        return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
      }
    }

    v50 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers);
    objc_storeStrong((a1 + 8), v50);
    v67 = 0;
    v68 = 0;
    if (!PBReaderPlaceMark() || !LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiersReadFrom(v50, a2, v54, v55, v56))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v12, v13, v14, v15) ^ 1;
}

uint64_t sub_255EF96A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F08B40();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_255EF96F4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255F0701C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_255EF971C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255F0701C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_255EF9758()
{
  v2 = *v0;
  sub_255F0CC98();
  sub_255F0CBB8();
  return sub_255F0CCA8();
}

uint64_t sub_255EF97BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F08B94();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_255EF9808()
{
  v2 = *v0;
  sub_255F0CC98();
  sub_255F0CBB8();
  return sub_255F0CCA8();
}

unint64_t sub_255EF9868@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t *sub_255EF987C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_255EF98A4()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A200);
  sub_255F06F80(v0, qword_27F81A200);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F5C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "experimentIdentifiers";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bmltIdentifiers";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255EF9A6C()
{
  while (1)
  {
    result = sub_255F0CA38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_255EF9B00();
    }

    else if (result == 2)
    {
      sub_255EF9BB4();
    }
  }

  return result;
}

uint64_t sub_255EF9B00()
{
  v0 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0) + 20);
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
  sub_255F0622C(&qword_27F817C48, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
  return sub_255F0CAA8();
}

uint64_t sub_255EF9BB4()
{
  v0 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0) + 24);
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0);
  sub_255F0622C(&qword_27F817C28, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
  return sub_255F0CAA8();
}

uint64_t sub_255EF9C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EF9CD8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_255EF9EE8(v3, a1, a2, a3);
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255EF9CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = (*(*(sub_255F0314C(&qword_27F817AD8, &qword_255F0F798) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  sub_255F08A10(a1 + *(v13 + 20), v7, &qword_27F817AD8, &qword_255F0F798);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817AD8, &qword_255F0F798);
  }

  sub_255F06EB8(v7, v12, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
  sub_255F0622C(&qword_27F817C48, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
  sub_255F0CB78();
  return sub_255F06F20(v12, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
}

uint64_t sub_255EF9EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = (*(*(sub_255F0314C(&qword_27F817AE0, &unk_255F0F7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  v8 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  sub_255F08A10(a1 + *(v13 + 24), v7, &qword_27F817AE0, &unk_255F0F7A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255F08AE0(v7, &qword_27F817AE0, &unk_255F0F7A0);
  }

  sub_255F06EB8(v7, v12, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
  sub_255F0622C(&qword_27F817C28, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
  sub_255F0CB78();
  return sub_255F06F20(v12, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
}

uint64_t sub_255EFA0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_255F0C998();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_255EFA230(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817CA0, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255EFA2D0(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255EFA33C()
{
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);

  return sub_255F0CAF8();
}

uint64_t sub_255EFA3BC()
{
  result = MEMORY[0x259C51540](0xD000000000000016, 0x8000000255F12DC0);
  qword_27F81A218 = 0xD00000000000003ALL;
  unk_27F81A220 = 0x8000000255F12D50;
  return result;
}

uint64_t sub_255EFA430()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A228);
  sub_255F06F80(v0, qword_27F81A228);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F5D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "trialExperimentID";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trialDeploymentID";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "trialTreatmentID";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255EFA644()
{
  while (1)
  {
    result = sub_255F0CA38();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0) + 28);
LABEL_3:
        v0 = 0;
        sub_255F0CA88();
        break;
      case 2:
        v1 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_255EFA708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EFADE0(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
  if (!v4)
  {
    sub_255EFAE5C(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
    sub_255EFA7B8(v3);
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255EFA7B8(uint64_t a1)
{
  result = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_255F0CB48();
  }

  return result;
}

uint64_t sub_255EFA834@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255F0C998();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_255EFA8D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817CD0, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255EFA974(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817C48, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255EFA9E0()
{
  sub_255F0622C(&qword_27F817C48, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);

  return sub_255F0CAF8();
}

uint64_t sub_255EFAA60()
{
  result = MEMORY[0x259C51540](0xD000000000000010, 0x8000000255F12E40);
  qword_27F81A240 = 0xD00000000000003ALL;
  *algn_27F81A248 = 0x8000000255F12D50;
  return result;
}

uint64_t sub_255EFAAD8()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A250);
  sub_255F06F80(v0, qword_27F81A250);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F5C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "trialTaskID";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trialDeploymentID";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255EFACA0()
{
  while (1)
  {
    result = sub_255F0CA38();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0) + 24);
LABEL_3:
      v0 = 0;
      sub_255F0CA88();
    }
  }
}

uint64_t sub_255EFAD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EFADE0(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
  if (!v4)
  {
    sub_255EFAE5C(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255EFADE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_255F0CB48();
  }

  return result;
}

uint64_t sub_255EFAE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_255F0CB48();
  }

  return result;
}

uint64_t sub_255EFAED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255F0C998();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_255EFAF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817CD8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255EFB00C(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817C28, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255EFB078()
{
  sub_255F0622C(&qword_27F817C28, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);

  return sub_255F0CAF8();
}

uint64_t sub_255EFB0F8()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A268);
  sub_255F06F80(v0, qword_27F81A268);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_255F0F5E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "trialIdentifiers";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_255F0CB88();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "contextID";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "performTaskStatus";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 102;
  *v14 = "performTrialTaskStatus";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 103;
  *v16 = "stop";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  return sub_255F0CB98();
}

uint64_t sub_255EFB3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_255F0CA38();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 100)
    {
      switch(result)
      {
        case 'e':
          sub_255EFB5DC();
          break;
        case 'f':
          sub_255EFB690();
          break;
        case 'g':
          sub_255EFB744();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_255EFB524(a1, v5, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
          break;
        case 2:
          v12 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0) + 24);
          sub_255F0CA88();
          break;
        case 3:
          v11 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0) + 28);
          sub_255F0CA78();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_255EFB524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 20);
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  return sub_255F0CAA8();
}

uint64_t sub_255EFB5DC()
{
  v0 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0) + 32);
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  return sub_255F0CAA8();
}

uint64_t sub_255EFB690()
{
  v0 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0) + 36);
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  return sub_255F0CAA8();
}

uint64_t sub_255EFB744()
{
  v0 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0) + 40);
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  return sub_255F0CAA8();
}

uint64_t sub_255EFB7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EFB904(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
  if (!v4)
  {
    sub_255EFAE5C(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
    sub_255F00FC8(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
    sub_255EFBB18(v3, a1, a2, a3);
    sub_255EFBD28(v3, a1, a2, a3);
    sub_255EFBF38(v3, a1, a2, a3);
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255EFB904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v20[3] = a4;
  v20[0] = a2;
  v20[1] = a3;
  v7 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v20 - v10;
  v12 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a5(0);
  sub_255F08A10(a1 + *(v18 + 20), v11, &qword_27F817CF0, &qword_255F10808);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_255F08AE0(v11, &qword_27F817CF0, &qword_255F10808);
  }

  sub_255F06EB8(v11, v17, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F0CB78();
  return sub_255F06F20(v17, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
}

uint64_t sub_255EFBB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_255F0314C(&qword_27F817CE8, &qword_255F10800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  sub_255F08A10(a1 + *(v16 + 32), v9, &qword_27F817CE8, &qword_255F10800);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_255F08AE0(v9, &qword_27F817CE8, &qword_255F10800);
  }

  sub_255F06EB8(v9, v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F0CB78();
  return sub_255F06F20(v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
}

uint64_t sub_255EFBD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_255F0314C(&qword_27F817CE8, &qword_255F10800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  sub_255F08A10(a1 + *(v16 + 36), v9, &qword_27F817CE8, &qword_255F10800);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_255F08AE0(v9, &qword_27F817CE8, &qword_255F10800);
  }

  sub_255F06EB8(v9, v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F0CB78();
  return sub_255F06F20(v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
}

uint64_t sub_255EFBF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_255F0314C(&qword_27F817CE8, &qword_255F10800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  sub_255F08A10(a1 + *(v16 + 40), v9, &qword_27F817CE8, &qword_255F10800);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_255F08AE0(v9, &qword_27F817CE8, &qword_255F10800);
  }

  sub_255F06EB8(v9, v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F0CB78();
  return sub_255F06F20(v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
}

uint64_t sub_255EFC148@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_255F0C998();
  v4 = a1[5];
  v5 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = (a2 + a1[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1[8];
  v10 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  v13 = *(*(v10 - 8) + 56);
  (v13)((v10 - 8), a2 + v9, 1, 1, v10);
  v13(a2 + a1[9], 1, 1, v10);
  v11 = a2 + a1[10];

  return (v13)(v11, 1, 1, v10);
}

uint64_t sub_255EFC2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817CE0, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255EFC370(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817C08, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255EFC3DC()
{
  sub_255F0622C(&qword_27F817C08, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);

  return sub_255F0CAF8();
}

uint64_t sub_255EFC45C()
{
  result = MEMORY[0x259C51540](0x7453746E6576452ELL, 0xEC00000073757461);
  qword_27F81A280 = 0xD00000000000003FLL;
  *algn_27F81A288 = 0x8000000255F12E60;
  return result;
}

uint64_t sub_255EFC4D0()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A290);
  sub_255F06F80(v0, qword_27F81A290);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F5D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "succeeded";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errorDomain";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "errorCode";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255EFC78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817D08, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255EFC82C(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255EFC898()
{
  sub_255F0622C(&qword_27F817BE8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);

  return sub_255F0CAF8();
}

uint64_t sub_255EFC944()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A2A8);
  sub_255F06F80(v0, qword_27F81A2A8);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_255F0F5F0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "trialIdentifiers";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_255F0CB88();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "contextID";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "activityScheduleStatus";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 102;
  *v14 = "taskFetched";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 103;
  *v16 = "taskScheduled";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 104;
  *v18 = "taskCompleted";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return sub_255F0CB98();
}

uint64_t sub_255EFCC44()
{
  v0 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  v5 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = (v3 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  *v6 = 0;
  v6[1] = 0;
  v7 = v3 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  v9 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  v11 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v3 + v10, 1, 1, v11);
  v12(v3 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled, 1, 1, v11);
  result = (v12)(v3 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted, 1, 1, v11);
  qword_27F8178F8 = v3;
  return result;
}

uint64_t sub_255EFCDDC(uint64_t a1)
{
  v3 = sub_255F0314C(&qword_27F817D18, &qword_255F10820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v46 = &v43 - v6;
  v7 = sub_255F0314C(&qword_27F817D20, &qword_255F10828);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v48 = &v43 - v10;
  v11 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  v16 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  v17 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  *v18 = 0;
  v18[1] = 0;
  v19 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  v44 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  v21 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  v45 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  v23 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  v24 = *(*(v23 - 8) + 56);
  v24(v1 + v22, 1, 1, v23);
  v47 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled;
  v24(v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled, 1, 1, v23);
  v49 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted;
  v24(v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted, 1, 1, v23);
  v25 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  sub_255F08A10(a1 + v25, v15, &qword_27F817CF0, &qword_255F10808);
  swift_beginAccess();
  sub_255F08A78(v15, v1 + v16, &qword_27F817CF0, &qword_255F10808);
  swift_endAccess();
  v26 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  swift_beginAccess();
  v29 = v18[1];
  *v18 = v28;
  v18[1] = v27;

  v30 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  swift_beginAccess();
  *v19 = v31;
  *(v19 + 8) = v30;
  v32 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  swift_beginAccess();
  v33 = v48;
  sub_255F08A10(a1 + v32, v48, &qword_27F817D20, &qword_255F10828);
  v34 = v44;
  swift_beginAccess();
  sub_255F08A78(v33, v1 + v34, &qword_27F817D20, &qword_255F10828);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  swift_beginAccess();
  v36 = v46;
  sub_255F08A10(a1 + v35, v46, &qword_27F817D18, &qword_255F10820);
  v37 = v45;
  swift_beginAccess();
  sub_255F08A78(v36, v1 + v37, &qword_27F817D18, &qword_255F10820);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled;
  swift_beginAccess();
  sub_255F08A10(a1 + v38, v36, &qword_27F817D18, &qword_255F10820);
  v39 = v47;
  swift_beginAccess();
  sub_255F08A78(v36, v1 + v39, &qword_27F817D18, &qword_255F10820);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted;
  swift_beginAccess();
  sub_255F08A10(a1 + v40, v36, &qword_27F817D18, &qword_255F10820);

  v41 = v49;
  swift_beginAccess();
  sub_255F08A78(v36, v1 + v41, &qword_27F817D18, &qword_255F10820);
  swift_endAccess();
  return v1;
}

uint64_t sub_255EFD364()
{
  sub_255F08AE0(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers, &qword_27F817CF0, &qword_255F10808);
  v1 = *(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID + 8);

  sub_255F08AE0(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus, &qword_27F817D20, &qword_255F10828);
  sub_255F08AE0(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched, &qword_27F817D18, &qword_255F10820);
  sub_255F08AE0(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled, &qword_27F817D18, &qword_255F10820);
  sub_255F08AE0(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted, &qword_27F817D18, &qword_255F10820);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

void sub_255EFD49C()
{
  sub_255EFD62C(319, &qword_27F817998, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_255EFD62C(319, &qword_27F8179A0, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_255EFD62C(319, &qword_27F8179A8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_255EFD62C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255F0CC38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_255EFD6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_255F0CA38();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 100)
      {
        switch(result)
        {
          case 1:
            sub_255EFD858();
            break;
          case 2:
            sub_255F04150(a2, a1, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
            break;
          case 3:
            sub_255F03F0C(a2, a1, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp, MEMORY[0x277D217C0]);
            break;
        }
      }

      else if (result > 102)
      {
        if (result == 103)
        {
          sub_255EFDAEC();
        }

        else if (result == 104)
        {
          sub_255EFDBC8();
        }
      }

      else if (result == 101)
      {
        sub_255EFD934();
      }

      else
      {
        sub_255EFDA10();
      }

      result = sub_255F0CA38();
    }
  }

  return result;
}

uint64_t sub_255EFD858()
{
  swift_beginAccess();
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F0CAA8();
  return swift_endAccess();
}

uint64_t sub_255EFD934()
{
  swift_beginAccess();
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0);
  sub_255F0622C(&qword_27F817BA8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
  sub_255F0CAA8();
  return swift_endAccess();
}

uint64_t sub_255EFDA10()
{
  swift_beginAccess();
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F0CAA8();
  return swift_endAccess();
}

uint64_t sub_255EFDAEC()
{
  swift_beginAccess();
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F0CAA8();
  return swift_endAccess();
}

uint64_t sub_255EFDBC8()
{
  swift_beginAccess();
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F0CAA8();
  return swift_endAccess();
}

uint64_t sub_255EFDCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_255EFDD78(a1, a2, a3, a4);
  if (!v4)
  {
    sub_255F04AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
    sub_255EFDF94(a1);
    sub_255EFE020(a1, a2, a3, a4);
    sub_255EFE23C(a1, a2, a3, a4);
    sub_255EFE458(a1, a2, a3, a4);
    return sub_255EFE674(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_255EFDD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  sub_255F08A10(a1 + v16, v9, &qword_27F817CF0, &qword_255F10808);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_255F08AE0(v9, &qword_27F817CF0, &qword_255F10808);
  }

  sub_255F06EB8(v9, v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F0CB78();
  return sub_255F06F20(v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
}

uint64_t sub_255EFDF94(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return sub_255F0CB38();
  }

  return result;
}

uint64_t sub_255EFE020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_255F0314C(&qword_27F817D20, &qword_255F10828);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  swift_beginAccess();
  sub_255F08A10(a1 + v16, v9, &qword_27F817D20, &qword_255F10828);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_255F08AE0(v9, &qword_27F817D20, &qword_255F10828);
  }

  sub_255F06EB8(v9, v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
  sub_255F0622C(&qword_27F817BA8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
  sub_255F0CB78();
  return sub_255F06F20(v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
}

uint64_t sub_255EFE23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_255F0314C(&qword_27F817D18, &qword_255F10820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  swift_beginAccess();
  sub_255F08A10(a1 + v16, v9, &qword_27F817D18, &qword_255F10820);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_255F08AE0(v9, &qword_27F817D18, &qword_255F10820);
  }

  sub_255F06EB8(v9, v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F0CB78();
  return sub_255F06F20(v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
}

uint64_t sub_255EFE458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_255F0314C(&qword_27F817D18, &qword_255F10820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled;
  swift_beginAccess();
  sub_255F08A10(a1 + v16, v9, &qword_27F817D18, &qword_255F10820);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_255F08AE0(v9, &qword_27F817D18, &qword_255F10820);
  }

  sub_255F06EB8(v9, v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F0CB78();
  return sub_255F06F20(v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
}

uint64_t sub_255EFE674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_255F0314C(&qword_27F817D18, &qword_255F10820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted;
  swift_beginAccess();
  sub_255F08A10(a1 + v16, v9, &qword_27F817D18, &qword_255F10820);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_255F08AE0(v9, &qword_27F817D18, &qword_255F10820);
  }

  sub_255F06EB8(v9, v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F0CB78();
  return sub_255F06F20(v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
}

BOOL sub_255EFE890(uint64_t a1, uint64_t a2)
{
  v164 = a2;
  v152 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent(0);
  v154 = *(v152 - 8);
  v3 = *(v154 + 64);
  MEMORY[0x28223BE20](v152, v4);
  v146 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_255F0314C(&qword_27F817D28, &qword_255F10830);
  v6 = *(*(v151 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v151, v7);
  v142 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v145 = &v140 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v150 = &v140 - v14;
  v15 = sub_255F0314C(&qword_27F817D18, &qword_255F10820);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v141 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v144 = &v140 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v143 = &v140 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v148 = &v140 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v147 = &v140 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v161 = &v140 - v33;
  v34 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0);
  v156 = *(v34 - 8);
  v157 = v34;
  v35 = *(v156 + 64);
  MEMORY[0x28223BE20](v34, v36);
  v149 = &v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_255F0314C(&qword_27F817D30, &qword_255F10838);
  v38 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155, v39);
  v158 = &v140 - v40;
  v41 = sub_255F0314C(&qword_27F817D20, &qword_255F10828);
  v42 = *(*(v41 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v41 - 8, v43);
  v153 = &v140 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v160 = &v140 - v47;
  v163 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v48 = *(v163 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v163, v50);
  v159 = &v140 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_255F0314C(&qword_27F817D00, &qword_255F10818);
  v53 = v52 - 8;
  v54 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52, v55);
  v57 = &v140 - v56;
  v58 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v59 = *(*(v58 - 8) + 64);
  v61 = MEMORY[0x28223BE20](v58 - 8, v60);
  v162 = &v140 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61, v63);
  v65 = &v140 - v64;
  v66 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  sub_255F08A10(a1 + v66, v65, &qword_27F817CF0, &qword_255F10808);
  v67 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  v68 = v164;
  swift_beginAccess();
  v69 = *(v53 + 56);
  sub_255F08A10(v65, v57, &qword_27F817CF0, &qword_255F10808);
  v70 = v163;
  sub_255F08A10(v68 + v67, &v57[v69], &qword_27F817CF0, &qword_255F10808);
  v71 = *(v48 + 48);
  if (v71(v57, 1, v70) == 1)
  {

    sub_255F08AE0(v65, &qword_27F817CF0, &qword_255F10808);
    v72 = a1;
    if (v71(&v57[v69], 1, v70) == 1)
    {
      sub_255F08AE0(v57, &qword_27F817CF0, &qword_255F10808);
      goto LABEL_10;
    }

LABEL_6:
    sub_255F08AE0(v57, &qword_27F817D00, &qword_255F10818);
    goto LABEL_7;
  }

  v72 = a1;
  v73 = v162;
  sub_255F08A10(v57, v162, &qword_27F817CF0, &qword_255F10808);
  if (v71(&v57[v69], 1, v70) == 1)
  {

    sub_255F08AE0(v65, &qword_27F817CF0, &qword_255F10808);
    sub_255F06F20(v73, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
    goto LABEL_6;
  }

  v75 = &v57[v69];
  v76 = v159;
  sub_255F06EB8(v75, v159, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);

  v77 = sub_255F0841C(v73, v76);
  sub_255F06F20(v76, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F08AE0(v65, &qword_27F817CF0, &qword_255F10808);
  sub_255F06F20(v73, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F08AE0(v57, &qword_27F817CF0, &qword_255F10808);
  if ((v77 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v78 = (v72 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  swift_beginAccess();
  v79 = *v78;
  v80 = v78[1];
  v81 = (v68 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  swift_beginAccess();
  v82 = v81[1];
  if (v80)
  {
    v84 = v160;
    v83 = v161;
    if (!v82 || (v79 != *v81 || v80 != v82) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v84 = v160;
    v83 = v161;
    if (v82)
    {
      goto LABEL_7;
    }
  }

  v85 = v72 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  swift_beginAccess();
  v86 = *v85;
  v87 = *(v85 + 8);
  v88 = v68 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  swift_beginAccess();
  v89 = *(v88 + 8);
  if (v87)
  {
    if ((*(v88 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v88 + 8) & 1) != 0 || v86 != *v88)
  {
    goto LABEL_7;
  }

  v90 = v72;
  v91 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  swift_beginAccess();
  v163 = v90;
  sub_255F08A10(v90 + v91, v84, &qword_27F817D20, &qword_255F10828);
  v92 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__activityScheduleStatus;
  swift_beginAccess();
  v93 = *(v155 + 48);
  v94 = v158;
  sub_255F08A10(v84, v158, &qword_27F817D20, &qword_255F10828);
  sub_255F08A10(v68 + v92, v94 + v93, &qword_27F817D20, &qword_255F10828);
  v95 = v157;
  v96 = *(v156 + 48);
  if (v96(v94, 1, v157) == 1)
  {
    sub_255F08AE0(v84, &qword_27F817D20, &qword_255F10828);
    if (v96(v94 + v93, 1, v95) == 1)
    {
      sub_255F08AE0(v94, &qword_27F817D20, &qword_255F10828);
      goto LABEL_25;
    }

LABEL_30:
    v106 = &qword_27F817D30;
    v107 = &qword_255F10838;
    v108 = v94;
LABEL_49:
    sub_255F08AE0(v108, v106, v107);
    goto LABEL_7;
  }

  v105 = v153;
  sub_255F08A10(v94, v153, &qword_27F817D20, &qword_255F10828);
  if (v96(v94 + v93, 1, v95) == 1)
  {
    sub_255F08AE0(v84, &qword_27F817D20, &qword_255F10828);
    sub_255F06F20(v105, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
    goto LABEL_30;
  }

  v109 = v94 + v93;
  v110 = v149;
  sub_255F06EB8(v109, v149, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
  v111 = *(v95 + 20);
  v112 = *(v105 + v111);
  v113 = *(v110 + v111);
  if (v112 == 2)
  {
    if (v113 == 2)
    {
      goto LABEL_40;
    }

LABEL_39:
    sub_255F06F20(v110, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
    sub_255F08AE0(v84, &qword_27F817D20, &qword_255F10828);
    sub_255F06F20(v105, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
    v108 = v94;
    v106 = &qword_27F817D20;
    v107 = &qword_255F10828;
    goto LABEL_49;
  }

  if (v113 == 2 || ((v112 ^ v113) & 1) != 0)
  {
    goto LABEL_39;
  }

LABEL_40:
  sub_255F0C9A8();
  sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8]);
  v115 = sub_255F0CBC8();
  sub_255F06F20(v110, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
  sub_255F08AE0(v84, &qword_27F817D20, &qword_255F10828);
  sub_255F06F20(v105, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
  sub_255F08AE0(v94, &qword_27F817D20, &qword_255F10828);
  if ((v115 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  v97 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  v98 = v163;
  swift_beginAccess();
  sub_255F08A10(v98 + v97, v83, &qword_27F817D18, &qword_255F10820);
  v99 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskFetched;
  swift_beginAccess();
  v100 = v150;
  v101 = *(v151 + 48);
  sub_255F08A10(v83, v150, &qword_27F817D18, &qword_255F10820);
  sub_255F08A10(v68 + v99, v100 + v101, &qword_27F817D18, &qword_255F10820);
  v103 = v154 + 48;
  v102 = *(v154 + 48);
  v104 = v152;
  if (v102(v100, 1, v152) == 1)
  {
    sub_255F08AE0(v83, &qword_27F817D18, &qword_255F10820);
    if (v102(v100 + v101, 1, v104) == 1)
    {
      v154 = v103;
      sub_255F08AE0(v100, &qword_27F817D18, &qword_255F10820);
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  v114 = v147;
  sub_255F08A10(v100, v147, &qword_27F817D18, &qword_255F10820);
  if (v102(v100 + v101, 1, v104) == 1)
  {
    sub_255F08AE0(v83, &qword_27F817D18, &qword_255F10820);
    sub_255F06F20(v114, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
LABEL_36:
    v106 = &qword_27F817D28;
    v107 = &qword_255F10830;
    v108 = v100;
    goto LABEL_49;
  }

  v154 = v103;
  v116 = v100 + v101;
  v117 = v146;
  sub_255F06EB8(v116, v146, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  v118 = sub_255F07D28(v114, v117, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F06F20(v117, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F08AE0(v83, &qword_27F817D18, &qword_255F10820);
  sub_255F06F20(v114, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F08AE0(v100, &qword_27F817D18, &qword_255F10820);
  if ((v118 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

LABEL_43:
  v119 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled;
  v120 = v163;
  swift_beginAccess();
  v121 = v148;
  sub_255F08A10(v120 + v119, v148, &qword_27F817D18, &qword_255F10820);
  v122 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskScheduled;
  swift_beginAccess();
  v123 = *(v151 + 48);
  v124 = v145;
  sub_255F08A10(v121, v145, &qword_27F817D18, &qword_255F10820);
  sub_255F08A10(v68 + v122, v124 + v123, &qword_27F817D18, &qword_255F10820);
  v125 = v152;
  if (v102(v124, 1, v152) == 1)
  {
    sub_255F08AE0(v121, &qword_27F817D18, &qword_255F10820);
    if (v102(v124 + v123, 1, v125) == 1)
    {
      sub_255F08AE0(v124, &qword_27F817D18, &qword_255F10820);
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  v126 = v143;
  sub_255F08A10(v124, v143, &qword_27F817D18, &qword_255F10820);
  if (v102(v124 + v123, 1, v125) == 1)
  {
    sub_255F08AE0(v148, &qword_27F817D18, &qword_255F10820);
    sub_255F06F20(v126, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
LABEL_48:
    v106 = &qword_27F817D28;
    v107 = &qword_255F10830;
    v108 = v124;
    goto LABEL_49;
  }

  v127 = v124 + v123;
  v128 = v146;
  sub_255F06EB8(v127, v146, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  v129 = sub_255F07D28(v126, v128, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F06F20(v128, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F08AE0(v148, &qword_27F817D18, &qword_255F10820);
  sub_255F06F20(v126, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
  sub_255F08AE0(v124, &qword_27F817D18, &qword_255F10820);
  if ((v129 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_52:
  v130 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted;
  v131 = v163;
  swift_beginAccess();
  v132 = v144;
  sub_255F08A10(v131 + v130, v144, &qword_27F817D18, &qword_255F10820);
  v133 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework55LighthouseBitacoraProto_LighthouseLedgerMlruntimedEventP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__taskCompleted;
  swift_beginAccess();
  v134 = *(v151 + 48);
  v135 = v142;
  sub_255F08A10(v132, v142, &qword_27F817D18, &qword_255F10820);
  sub_255F08A10(v68 + v133, v135 + v134, &qword_27F817D18, &qword_255F10820);
  v136 = v152;
  if (v102(v135, 1, v152) != 1)
  {
    v137 = v141;
    sub_255F08A10(v135, v141, &qword_27F817D18, &qword_255F10820);
    if (v102(v135 + v134, 1, v136) == 1)
    {

      sub_255F08AE0(v144, &qword_27F817D18, &qword_255F10820);
      sub_255F06F20(v137, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
      goto LABEL_57;
    }

    v138 = v146;
    sub_255F06EB8(v135 + v134, v146, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
    v139 = sub_255F07D28(v137, v138, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);

    sub_255F06F20(v138, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
    sub_255F08AE0(v144, &qword_27F817D18, &qword_255F10820);
    sub_255F06F20(v137, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);
    sub_255F08AE0(v135, &qword_27F817D18, &qword_255F10820);
    return (v139 & 1) != 0;
  }

  sub_255F08AE0(v132, &qword_27F817D18, &qword_255F10820);
  if (v102(v135 + v134, 1, v136) != 1)
  {
LABEL_57:
    sub_255F08AE0(v135, &qword_27F817D28, &qword_255F10830);
    return 0;
  }

  sub_255F08AE0(v135, &qword_27F817D18, &qword_255F10820);
  return 1;
}

uint64_t sub_255EFFBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817D10, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255EFFC4C(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817BC8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255EFFCB8()
{
  sub_255F0622C(&qword_27F817BC8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent);

  return sub_255F0CAF8();
}

uint64_t sub_255EFFDA8()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A2D0);
  sub_255F06F80(v0, qword_27F81A2D0);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F600;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "scheduled";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_255F0CB88();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_255F0CB98();
}

uint64_t sub_255EFFF14()
{
  while (1)
  {
    result = sub_255F0CA38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0) + 20);
      sub_255F0CA48();
    }
  }

  return result;
}

uint64_t sub_255EFFFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255F0000C(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);
  if (!v4)
  {
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255F0000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return sub_255F0CB08();
  }

  return result;
}

uint64_t sub_255F00088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255F0C998();
  *(a2 + *(a1 + 20)) = 2;
  return result;
}

uint64_t sub_255F00114(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817D38, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255F001B4(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817BA8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255F00220()
{
  sub_255F0622C(&qword_27F817BA8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus);

  return sub_255F0CAF8();
}

uint64_t sub_255F002C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x259C51540](a2, a3);
  *a4 = 0xD000000000000039;
  *a5 = 0x8000000255F12F20;
  return result;
}

uint64_t sub_255F00334()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A2F8);
  sub_255F06F80(v0, qword_27F81A2F8);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F5D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "succeeded";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errorDomain";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "errorCode";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255F00548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_255F0CA38();
    if (v4 || (v8 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v10 = *(a4(0) + 28);
        sub_255F0CA68();
        break;
      case 2:
        v6 = *(a4(0) + 24);
        sub_255F0CA88();
        break;
      case 1:
        v9 = *(a4(0) + 20);
        sub_255F0CA48();
        break;
    }
  }

  return result;
}

uint64_t sub_255F00648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  result = sub_255F0000C(v6, a1, a2, a3, a4);
  if (!v7)
  {
    sub_255EFAE5C(v6, a1, a2, a3, a5);
    sub_255F006EC(v6, a1, a2, a3, a6);
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255F006EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_255F0CB28();
  }

  return result;
}

uint64_t sub_255F00768@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255F0C998();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_255F007E0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_255F008C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817D40, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255F00960(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255F009CC()
{
  sub_255F0622C(&qword_27F817B88, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.TaskEvent);

  return sub_255F0CAF8();
}

uint64_t sub_255F00A78()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A310);
  sub_255F06F80(v0, qword_27F81A310);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_255F0F610;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "trialIdentifiers";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_255F0CB88();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "contextID";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "timestamp";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "eventType";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "eventSucceeded";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v8();
  return sub_255F0CB98();
}

uint64_t sub_255F00D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_255F0CA38();
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_255EFB524(a1, v5, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
      }

      else if (result == 2)
      {
        v13 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0) + 24);
        sub_255F0CA88();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v9 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0) + 28);
          sub_255F0CA78();
          break;
        case 4:
          sub_255F00E60();
          break;
        case 5:
          v12 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0) + 36);
          sub_255F0CA48();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_255F00E60()
{
  v0 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0) + 32);
  sub_255F08B40();
  return sub_255F0CA58();
}

uint64_t sub_255F00ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EFB904(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
  if (!v4)
  {
    sub_255EFAE5C(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
    sub_255F00FC8(v3, a1, a2, a3, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
    sub_255F01044(v3);
    sub_255F010D0(v3);
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255F00FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_255F0CB38();
  }

  return result;
}

uint64_t sub_255F01044(uint64_t a1)
{
  result = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0);
  if (*(a1 + *(result + 32)) != 4)
  {
    v3 = *(a1 + *(result + 32));
    sub_255F08B40();
    return sub_255F0CB18();
  }

  return result;
}

uint64_t sub_255F010D0(uint64_t a1)
{
  result = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_255F0CB08();
  }

  return result;
}

uint64_t sub_255F01148@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_255F0C998();
  v4 = a1[5];
  v5 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  *(a2 + a1[8]) = 4;
  *(a2 + v10) = 2;
  return result;
}

uint64_t sub_255F01238(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817D48, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255F012D8(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817B68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255F01344()
{
  sub_255F0622C(&qword_27F817B68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);

  return sub_255F0CAF8();
}

uint64_t sub_255F013C4()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A328);
  sub_255F06F80(v0, qword_27F81A328);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F620;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "allocation";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "activation";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "deactivation";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255F01630()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A340);
  sub_255F06F80(v0, qword_27F81A340);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_255F0F630;
  v4 = v55 + v3;
  v5 = v55 + v3 + v1[14];
  *(v55 + v3) = 1;
  *v5 = "telemetryID";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_255F0CB88();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "trialIdentifiers";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "contextID";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timestamp";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 101;
  *v15 = "isAllocated";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 102;
  *v17 = "isActivated";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 201;
  *v19 = "countGeneralTargetting";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 202;
  *v21 = "countGeneralTargettingMet";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 203;
  *v22 = "countCustomTargetting";
  *(v22 + 8) = 21;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 204;
  *v24 = "countCustomTargettingMet";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 301;
  *v26 = "countTaskFetchedSucceeded";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 302;
  *v28 = "countTaskFetchedFailed";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 303;
  *v30 = "countTaskScheduledSucceeded";
  *(v30 + 1) = 27;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 304;
  *v32 = "countTaskScheduledFailed";
  *(v32 + 1) = 24;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 305;
  *v34 = "countTaskCompletedSucceeded";
  *(v34 + 1) = 27;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 306;
  *v36 = "countTaskCompletedFailed";
  *(v36 + 1) = 24;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 401;
  *v37 = "countPerformTaskSucceeded";
  *(v37 + 8) = 25;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 402;
  *v39 = "countPerformTaskFailed";
  *(v39 + 1) = 22;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 403;
  *v41 = "countStopSucceeded";
  *(v41 + 1) = 18;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 404;
  *v43 = "countStopFailed";
  *(v43 + 1) = 15;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 501;
  *v45 = "trialIdentifierType";
  *(v45 + 1) = 19;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 502;
  *v47 = "trialExperimentID";
  *(v47 + 1) = 17;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 503;
  *v49 = "trialDeploymentID";
  *(v49 + 1) = 17;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 504;
  *v51 = "trialTreatmentID";
  *(v51 + 1) = 16;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 505;
  *v53 = "trialTaskID";
  *(v53 + 1) = 11;
  v53[16] = 2;
  v8();
  return sub_255F0CB98();
}

uint64_t sub_255F01D9C()
{
  v0 = type metadata accessor for LighthouseBitacoraProto_BitacoraState._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_255F01DDC();
  qword_27F817940 = result;
  return result;
}

uint64_t sub_255F01DDC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  v2 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated) = 2;
  *(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated) = 2;
  v5 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
  *v18 = 0;
  *(v18 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType) = 3;
  v19 = (v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  *v22 = 0;
  v22[1] = 0;
  return v0;
}

uint64_t sub_255F01FFC(uint64_t a1)
{
  v3 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v98 - v6;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v8 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  v98 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  v9 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  *v10 = 0;
  v10[1] = 0;
  v11 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  *v11 = 0;
  *(v11 + 8) = 1;
  v101 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated;
  *(v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated) = 2;
  v12 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated;
  *(v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated) = 2;
  v13 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
  v99 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
  v100 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting;
  v102 = v12;
  v103 = v15;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
  v104 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
  v105 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
  v106 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
  v107 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
  v108 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
  v109 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
  v110 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
  *v22 = 0;
  *(v22 + 4) = 1;
  v23 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
  v111 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
  *v23 = 0;
  *(v23 + 4) = 1;
  v24 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
  v112 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
  *v24 = 0;
  *(v24 + 4) = 1;
  v25 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
  v113 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
  *v25 = 0;
  *(v25 + 4) = 1;
  v26 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
  v114 = v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
  *(v26 + 4) = 1;
  *v26 = 0;
  v27 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType;
  *(v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType) = 3;
  v28 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID);
  v115 = v27;
  v116 = v28;
  *v28 = 0;
  v28[1] = 0;
  v29 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
  v117 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
  v118 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  v119 = (v1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  *v31 = 0;
  v31[1] = 0;
  swift_beginAccess();
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v32;
  *(v1 + 24) = v33;
  v34 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  v35 = v7;
  sub_255F08A10(a1 + v34, v7, &qword_27F817CF0, &qword_255F10808);
  v36 = v98;
  swift_beginAccess();

  sub_255F08A78(v35, v1 + v36, &qword_27F817CF0, &qword_255F10808);
  swift_endAccess();
  v37 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  swift_beginAccess();
  v40 = v10[1];
  *v10 = v39;
  v10[1] = v38;

  v41 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp);
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  swift_beginAccess();
  *v11 = v42;
  *(v11 + 8) = v41;
  v43 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated;
  swift_beginAccess();
  LOBYTE(v43) = *(a1 + v43);
  v44 = v101;
  swift_beginAccess();
  *(v1 + v44) = v43;
  v45 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated;
  swift_beginAccess();
  LOBYTE(v45) = *(a1 + v45);
  v46 = v102;
  swift_beginAccess();
  *(v1 + v46) = v45;
  v47 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
  swift_beginAccess();
  LODWORD(v46) = *v47;
  LOBYTE(v47) = *(v47 + 4);
  v48 = v99;
  swift_beginAccess();
  *v48 = v46;
  *(v48 + 4) = v47;
  v49 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
  swift_beginAccess();
  LODWORD(v46) = *v49;
  LOBYTE(v49) = *(v49 + 4);
  v50 = v100;
  swift_beginAccess();
  *v50 = v46;
  *(v50 + 4) = v49;
  v51 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting;
  swift_beginAccess();
  LODWORD(v50) = *v51;
  LOBYTE(v51) = *(v51 + 4);
  v52 = v103;
  swift_beginAccess();
  *v52 = v50;
  *(v52 + 4) = v51;
  v53 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
  swift_beginAccess();
  LODWORD(v50) = *v53;
  LOBYTE(v53) = *(v53 + 4);
  v54 = v104;
  swift_beginAccess();
  *v54 = v50;
  *(v54 + 4) = v53;
  v55 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
  swift_beginAccess();
  LODWORD(v50) = *v55;
  LOBYTE(v55) = *(v55 + 4);
  v56 = v105;
  swift_beginAccess();
  *v56 = v50;
  *(v56 + 4) = v55;
  v57 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
  swift_beginAccess();
  LODWORD(v50) = *v57;
  LOBYTE(v57) = *(v57 + 4);
  v58 = v106;
  swift_beginAccess();
  *v58 = v50;
  *(v58 + 4) = v57;
  v59 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
  swift_beginAccess();
  LODWORD(v50) = *v59;
  LOBYTE(v59) = *(v59 + 4);
  v60 = v107;
  swift_beginAccess();
  *v60 = v50;
  *(v60 + 4) = v59;
  v61 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
  swift_beginAccess();
  LODWORD(v50) = *v61;
  LOBYTE(v61) = *(v61 + 4);
  v62 = v108;
  swift_beginAccess();
  *v62 = v50;
  *(v62 + 4) = v61;
  v63 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
  swift_beginAccess();
  LODWORD(v50) = *v63;
  LOBYTE(v63) = *(v63 + 4);
  v64 = v109;
  swift_beginAccess();
  *v64 = v50;
  *(v64 + 4) = v63;
  v65 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
  swift_beginAccess();
  LODWORD(v50) = *v65;
  LOBYTE(v65) = *(v65 + 4);
  v66 = v110;
  swift_beginAccess();
  *v66 = v50;
  *(v66 + 4) = v65;
  v67 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
  swift_beginAccess();
  LODWORD(v50) = *v67;
  LOBYTE(v67) = *(v67 + 4);
  v68 = v111;
  swift_beginAccess();
  *v68 = v50;
  *(v68 + 4) = v67;
  v69 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
  swift_beginAccess();
  LODWORD(v50) = *v69;
  LOBYTE(v69) = *(v69 + 4);
  v70 = v112;
  swift_beginAccess();
  *v70 = v50;
  *(v70 + 4) = v69;
  v71 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
  swift_beginAccess();
  LODWORD(v50) = *v71;
  LOBYTE(v71) = *(v71 + 4);
  v72 = v113;
  swift_beginAccess();
  *v72 = v50;
  *(v72 + 4) = v71;
  v73 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
  swift_beginAccess();
  LODWORD(v50) = *v73;
  LOBYTE(v73) = *(v73 + 4);
  v74 = v114;
  swift_beginAccess();
  *v74 = v50;
  *(v74 + 4) = v73;
  v75 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType;
  swift_beginAccess();
  LOBYTE(v75) = *(a1 + v75);
  v76 = v115;
  swift_beginAccess();
  *(v1 + v76) = v75;
  v77 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID);
  swift_beginAccess();
  v79 = *v77;
  v78 = v77[1];
  v80 = v116;
  swift_beginAccess();
  v81 = v80[1];
  *v80 = v79;
  v80[1] = v78;

  v82 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
  swift_beginAccess();
  v84 = *v82;
  v83 = v82[1];
  v85 = v117;
  swift_beginAccess();
  v86 = v85[1];
  *v85 = v84;
  v85[1] = v83;

  v87 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
  swift_beginAccess();
  v89 = *v87;
  v88 = v87[1];
  v90 = v118;
  swift_beginAccess();
  v91 = v90[1];
  *v90 = v89;
  v90[1] = v88;

  v92 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  swift_beginAccess();
  v94 = *v92;
  v93 = v92[1];

  v95 = v119;
  swift_beginAccess();
  v96 = v95[1];
  *v95 = v94;
  v95[1] = v93;

  return v1;
}

uint64_t sub_255F02A2C()
{
  v1 = v0[3];

  sub_255F08AE0(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers, &qword_27F817CF0, &qword_255F10808);
  v2 = *(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

void sub_255F02B34()
{
  sub_255EFD62C(319, &qword_27F817998, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for LighthouseBitacoraProto_BitacoraState.TrialIdentifierType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LighthouseBitacoraProto_BitacoraState.TrialIdentifierType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_255F02E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_255F02ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_255F0C9A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_255F02FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_255F0C9A8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_255F030A4()
{
  sub_255F0C9A8();
  if (v0 <= 0x3F)
  {
    sub_255F09138(319, &qword_27F817AB0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_255F0314C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_255F031A8()
{
  sub_255F0C9A8();
  if (v0 <= 0x3F)
  {
    sub_255EFD62C(319, &qword_27F817AF8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
    if (v1 <= 0x3F)
    {
      sub_255EFD62C(319, &qword_27F817B00, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255F032E4()
{
  sub_255F0C9A8();
  if (v0 <= 0x3F)
  {
    sub_255F09138(319, &qword_27F817AB8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_255F0338C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_255F0346C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_255F0C9A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_255F03528()
{
  sub_255F0C9A8();
  if (v0 <= 0x3F)
  {
    sub_255F09138(319, &qword_27F817AB8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_255F035C8()
{
  result = qword_27F817B28;
  if (!qword_27F817B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817B28);
  }

  return result;
}

unint64_t sub_255F03620()
{
  result = qword_27F817B30;
  if (!qword_27F817B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817B30);
  }

  return result;
}

unint64_t sub_255F03678()
{
  result = qword_27F817B38;
  if (!qword_27F817B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817B38);
  }

  return result;
}

uint64_t sub_255F036CC(uint64_t a1)
{
  v2 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v13[-v5];
  swift_beginAccess();
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
    swift_beginAccess();
    sub_255F08A10(a1 + v8, v6, &qword_27F817CF0, &qword_255F10808);
    v9 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
    LODWORD(v8) = (*(*(v9 - 8) + 48))(v6, 1, v9);
    sub_255F08AE0(v6, &qword_27F817CF0, &qword_255F10808);
    if (v8 == 1)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v10 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID;
      swift_beginAccess();
      v7 = *(v10 + 8);
      if (v7)
      {
        v11 = a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
        swift_beginAccess();
        LOBYTE(v7) = *(v11 + 8) ^ 1;
      }
    }
  }

  return v7 & 1;
}

uint64_t sub_255F03860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v17 = a6(v18);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_255F03930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_255F0CA38();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 302)
      {
        if (result > 200)
        {
          if (result <= 203)
          {
            if (result == 201)
            {
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
            }

            else if (result == 202)
            {
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
            }

            else
            {
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting;
            }

            goto LABEL_5;
          }

          switch(result)
          {
            case 204:
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
              goto LABEL_5;
            case 301:
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
              goto LABEL_5;
            case 302:
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
LABEL_5:
              sub_255F0402C(v11, v12, v13, v14, v15);
              break;
          }
        }

        else
        {
          if (result <= 3)
          {
            if (result == 1)
            {
              sub_255F03DAC();
              goto LABEL_6;
            }

            if (result == 2)
            {
              sub_255F03E30();
              goto LABEL_6;
            }

            if (result != 3)
            {
              goto LABEL_6;
            }

            v16 = a2;
            v17 = a1;
            v18 = a3;
            v19 = a4;
            v20 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID;
            goto LABEL_61;
          }

          if (result == 4)
          {
            sub_255F03F0C(a2, a1, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp, MEMORY[0x277D217F0]);
          }

          else
          {
            if (result == 101)
            {
              v21 = a2;
              v22 = a1;
              v23 = a3;
              v24 = a4;
              v25 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated;
            }

            else
            {
              if (result != 102)
              {
                goto LABEL_6;
              }

              v21 = a2;
              v22 = a1;
              v23 = a3;
              v24 = a4;
              v25 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated;
            }

            sub_255F03FA4(v21, v22, v23, v24, v25);
          }
        }
      }

      else if (result <= 402)
      {
        if (result <= 305)
        {
          if (result == 303)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
          }

          else if (result == 304)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 306:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
            goto LABEL_5;
          case 401:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
            goto LABEL_5;
          case 402:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
            goto LABEL_5;
        }
      }

      else
      {
        if (result > 501)
        {
          if (result > 503)
          {
            if (result == 504)
            {
              v16 = a2;
              v17 = a1;
              v18 = a3;
              v19 = a4;
              v20 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID;
            }

            else
            {
              if (result != 505)
              {
                goto LABEL_6;
              }

              v16 = a2;
              v17 = a1;
              v18 = a3;
              v19 = a4;
              v20 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID;
            }
          }

          else if (result == 502)
          {
            v16 = a2;
            v17 = a1;
            v18 = a3;
            v19 = a4;
            v20 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID;
          }

          else
          {
            v16 = a2;
            v17 = a1;
            v18 = a3;
            v19 = a4;
            v20 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID;
          }

LABEL_61:
          sub_255F04150(v16, v17, v18, v19, v20);
          goto LABEL_6;
        }

        switch(result)
        {
          case 403:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
            goto LABEL_5;
          case 404:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
            goto LABEL_5;
          case 501:
            sub_255F040B4();
            break;
        }
      }

LABEL_6:
      result = sub_255F0CA38();
    }
  }

  return result;
}

uint64_t sub_255F03DAC()
{
  swift_beginAccess();
  sub_255F0CA88();
  return swift_endAccess();
}

uint64_t sub_255F03E30()
{
  swift_beginAccess();
  type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F0CAA8();
  return swift_endAccess();
}

uint64_t sub_255F03F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_255F03FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_255F0CA48();
  return swift_endAccess();
}

uint64_t sub_255F0402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_255F0CA98();
  return swift_endAccess();
}

uint64_t sub_255F040B4()
{
  swift_beginAccess();
  sub_255F08B94();
  sub_255F0CA58();
  return swift_endAccess();
}

uint64_t sub_255F04150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_255F0CA88();
  return swift_endAccess();
}

uint64_t sub_255F041D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_255F0C988();
  }

  return result;
}

uint64_t sub_255F04258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_255F045CC(a1);
  if (!v4)
  {
    sub_255F04668(a1, a2, a3, a4);
    sub_255F04AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
    sub_255F04884(a1);
    sub_255F04910(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated);
    sub_255F04910(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded);
    sub_255F049AC(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed);
    sub_255F04A3C(a1);
    sub_255F04AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID);
    sub_255F04AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
    sub_255F04AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
    return sub_255F04AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  }

  return result;
}

uint64_t sub_255F045CC(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);

    sub_255F0CB48();
  }

  return result;
}

uint64_t sub_255F04668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  sub_255F08A10(a1 + v16, v9, &qword_27F817CF0, &qword_255F10808);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_255F08AE0(v9, &qword_27F817CF0, &qword_255F10808);
  }

  sub_255F06EB8(v9, v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F0622C(&qword_27F817C68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F0CB78();
  return sub_255F06F20(v15, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
}

uint64_t sub_255F04884(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return sub_255F0CB68();
  }

  return result;
}

uint64_t sub_255F04910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 2)
  {
    return sub_255F0CB08();
  }

  return result;
}

uint64_t sub_255F049AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v7 = *v5;
    return sub_255F0CB58();
  }

  return result;
}

uint64_t sub_255F04A3C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType;
  result = swift_beginAccess();
  if (*(a1 + v2) != 3)
  {
    v4 = *(a1 + v2);
    sub_255F08B94();
    return sub_255F0CB18();
  }

  return result;
}

uint64_t sub_255F04AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if (v5[1])
  {
    v7 = *v5;
    v8 = v5[1];

    sub_255F0CB48();
  }

  return result;
}

uint64_t sub_255F04B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v158 = *(v4 - 8);
  v5 = *(v158 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255F0314C(&qword_27F817D00, &qword_255F10818);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v154 - v12;
  v14 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v157 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v154 - v20;
  swift_beginAccess();
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  swift_beginAccess();
  v24 = *(a2 + 24);
  if (v22)
  {
    if (!v24 || (v23 != *(a2 + 16) || v22 != v24) && (sub_255F0CC68() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v155 = v8;
  v156 = a2;
  v25 = a1;
  v26 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  v27 = a1 + v26;
  v28 = v156;
  sub_255F08A10(v27, v21, &qword_27F817CF0, &qword_255F10808);
  v29 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifiers;
  swift_beginAccess();
  v30 = *(v9 + 48);
  sub_255F08A10(v21, v13, &qword_27F817CF0, &qword_255F10808);
  sub_255F08A10(v28 + v29, &v13[v30], &qword_27F817CF0, &qword_255F10808);
  v31 = *(v158 + 48);
  if (v31(v13, 1, v4) == 1)
  {

    sub_255F08AE0(v21, &qword_27F817CF0, &qword_255F10808);
    v32 = v25;
    if (v31(&v13[v30], 1, v4) == 1)
    {
      sub_255F08AE0(v13, &qword_27F817CF0, &qword_255F10808);
      goto LABEL_17;
    }

LABEL_13:
    sub_255F08AE0(v13, &qword_27F817D00, &qword_255F10818);
    goto LABEL_14;
  }

  v33 = v157;
  sub_255F08A10(v13, v157, &qword_27F817CF0, &qword_255F10808);
  if (v31(&v13[v30], 1, v4) == 1)
  {

    sub_255F08AE0(v21, &qword_27F817CF0, &qword_255F10808);
    sub_255F06F20(v33, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
    goto LABEL_13;
  }

  v35 = v155;
  sub_255F06EB8(&v13[v30], v155, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);

  v36 = sub_255F0841C(v33, v35);
  sub_255F06F20(v35, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F08AE0(v21, &qword_27F817CF0, &qword_255F10808);
  sub_255F06F20(v33, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  v32 = v25;
  sub_255F08AE0(v13, &qword_27F817CF0, &qword_255F10808);
  if ((v36 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v37 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  v40 = (v28 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__contextID);
  swift_beginAccess();
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (v38 != *v40 || v39 != v41) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v41)
  {
    goto LABEL_14;
  }

  v42 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp);
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = v28 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__timestamp;
  swift_beginAccess();
  v46 = *(v45 + 8);
  if (v44)
  {
    if ((*(v45 + 8) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v45 + 8) & 1) != 0 || v43 != *v45)
  {
    goto LABEL_14;
  }

  v47 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated;
  swift_beginAccess();
  v48 = *(v32 + v47);
  v49 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isAllocated;
  swift_beginAccess();
  v50 = *(v28 + v49);
  if (v48 == 2)
  {
    if (v50 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v50 == 2 || ((v48 ^ v50) & 1) != 0)
  {
    goto LABEL_14;
  }

  v51 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated;
  swift_beginAccess();
  v52 = *(v32 + v51);
  v53 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__isActivated;
  swift_beginAccess();
  v54 = *(v28 + v53);
  if (v52 == 2)
  {
    if (v54 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v54 == 2 || ((v52 ^ v54) & 1) != 0)
  {
    goto LABEL_14;
  }

  v55 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting);
  swift_beginAccess();
  v56 = *v55;
  v57 = *(v55 + 4);
  v58 = v28 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargetting;
  swift_beginAccess();
  v59 = *(v58 + 4);
  if (v57)
  {
    if ((*(v58 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v58 + 4) & 1) != 0 || v56 != *v58)
  {
    goto LABEL_14;
  }

  v60 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet);
  swift_beginAccess();
  v61 = *v60;
  v62 = *(v60 + 4);
  v63 = v28 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countGeneralTargettingMet;
  swift_beginAccess();
  v64 = *(v63 + 4);
  if (v62)
  {
    if ((*(v63 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v63 + 4) & 1) != 0 || v61 != *v63)
  {
    goto LABEL_14;
  }

  v65 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting);
  swift_beginAccess();
  v66 = *v65;
  v67 = *(v65 + 4);
  v68 = v28 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargetting;
  swift_beginAccess();
  v69 = *(v68 + 4);
  if (v67)
  {
    if ((*(v68 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v68 + 4) & 1) != 0 || v66 != *v68)
  {
    goto LABEL_14;
  }

  v70 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet);
  swift_beginAccess();
  v71 = *v70;
  v72 = *(v70 + 4);
  v73 = v28 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countCustomTargettingMet;
  swift_beginAccess();
  v74 = *(v73 + 4);
  if (v72)
  {
    if (*(v73 + 4))
    {
      goto LABEL_59;
    }

LABEL_14:

    return 0;
  }

  if ((*(v73 + 4) & 1) != 0 || v71 != *v73)
  {
    goto LABEL_14;
  }

LABEL_59:
  v75 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded);
  swift_beginAccess();
  v76 = *v75;
  v77 = *(v75 + 4);
  v78 = v28 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedSucceeded;
  swift_beginAccess();
  v79 = *(v78 + 4);
  if (v77)
  {
    if ((*(v78 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v78 + 4) & 1) != 0 || v76 != *v78)
  {
    goto LABEL_14;
  }

  v80 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed);
  swift_beginAccess();
  v81 = *v80;
  v82 = *(v80 + 4);
  v83 = v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskFetchedFailed;
  swift_beginAccess();
  v84 = *(v83 + 4);
  if (v82)
  {
    if ((*(v83 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v83 + 4) & 1) != 0 || v81 != *v83)
  {
    goto LABEL_14;
  }

  v85 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded);
  swift_beginAccess();
  v86 = *v85;
  v87 = *(v85 + 4);
  v88 = v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledSucceeded;
  swift_beginAccess();
  v89 = *(v88 + 4);
  if (v87)
  {
    if ((*(v88 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v88 + 4) & 1) != 0 || v86 != *v88)
  {
    goto LABEL_14;
  }

  v90 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed);
  swift_beginAccess();
  v91 = *v90;
  v92 = *(v90 + 4);
  v93 = v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskScheduledFailed;
  swift_beginAccess();
  v94 = *(v93 + 4);
  if (v92)
  {
    if ((*(v93 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v93 + 4) & 1) != 0 || v91 != *v93)
  {
    goto LABEL_14;
  }

  v95 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded);
  swift_beginAccess();
  v96 = *v95;
  v97 = *(v95 + 4);
  v98 = v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedSucceeded;
  swift_beginAccess();
  v99 = *(v98 + 4);
  if (v97)
  {
    if ((*(v98 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v98 + 4) & 1) != 0 || v96 != *v98)
  {
    goto LABEL_14;
  }

  v100 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed);
  swift_beginAccess();
  v101 = *v100;
  v102 = *(v100 + 4);
  v103 = v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countTaskCompletedFailed;
  swift_beginAccess();
  v104 = *(v103 + 4);
  if (v102)
  {
    if ((*(v103 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v103 + 4) & 1) != 0 || v101 != *v103)
  {
    goto LABEL_14;
  }

  v105 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded);
  swift_beginAccess();
  v106 = *v105;
  v107 = *(v105 + 4);
  v108 = v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskSucceeded;
  swift_beginAccess();
  v109 = *(v108 + 4);
  if (v107)
  {
    if ((*(v108 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v108 + 4) & 1) != 0 || v106 != *v108)
  {
    goto LABEL_14;
  }

  v110 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed);
  swift_beginAccess();
  v111 = *v110;
  v112 = *(v110 + 4);
  v113 = v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countPerformTaskFailed;
  swift_beginAccess();
  v114 = *(v113 + 4);
  if (v112)
  {
    if ((*(v113 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v113 + 4) & 1) != 0 || v111 != *v113)
  {
    goto LABEL_14;
  }

  v115 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded);
  swift_beginAccess();
  v116 = *v115;
  v117 = *(v115 + 4);
  v118 = v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopSucceeded;
  swift_beginAccess();
  v119 = *(v118 + 4);
  if (v117)
  {
    if ((*(v118 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v118 + 4) & 1) != 0 || v116 != *v118)
  {
    goto LABEL_14;
  }

  v120 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed);
  swift_beginAccess();
  v121 = *v120;
  v122 = *(v120 + 4);
  v123 = v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__countStopFailed;
  swift_beginAccess();
  v124 = *(v123 + 4);
  if (v122)
  {
    if ((*(v123 + 4) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v123 + 4) & 1) != 0 || v121 != *v123)
  {
    goto LABEL_14;
  }

  v125 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType;
  swift_beginAccess();
  v126 = *(v32 + v125);
  v127 = OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialIdentifierType;
  v128 = v156;
  swift_beginAccess();
  v129 = *(v128 + v127);
  if (v126 == 3)
  {
    if (v129 != 3)
    {
      goto LABEL_14;
    }
  }

  else if (v129 == 3 || v126 != v129)
  {
    goto LABEL_14;
  }

  v130 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID);
  swift_beginAccess();
  v131 = *v130;
  v132 = v130[1];
  v133 = (v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialExperimentID);
  swift_beginAccess();
  v134 = v133[1];
  if (v132)
  {
    if (!v134 || (v131 != *v133 || v132 != v134) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v134)
  {
    goto LABEL_14;
  }

  v135 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
  swift_beginAccess();
  v136 = *v135;
  v137 = v135[1];
  v138 = (v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialDeploymentID);
  swift_beginAccess();
  v139 = v138[1];
  if (v137)
  {
    if (!v139 || (v136 != *v138 || v137 != v139) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v139)
  {
    goto LABEL_14;
  }

  v140 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
  swift_beginAccess();
  v141 = *v140;
  v142 = v140[1];
  v143 = (v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTreatmentID);
  swift_beginAccess();
  v144 = v143[1];
  if (v142)
  {
    if (!v144 || (v141 != *v143 || v142 != v144) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v144)
  {
    goto LABEL_14;
  }

  v145 = (v32 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  swift_beginAccess();
  v146 = *v145;
  v147 = v145[1];
  v148 = (v156 + OBJC_IVAR____TtCV27LighthouseBitacoraFramework37LighthouseBitacoraProto_BitacoraStateP33_36E24019A73ADCFF0D7B27133E537CB313_StorageClass__trialTaskID);
  swift_beginAccess();
  v149 = v148[1];
  if (v147)
  {
    if (!v149)
    {
      goto LABEL_14;
    }

    if (v146 == *v148 && v147 == v149)
    {
      v150 = v148[1];
    }

    else
    {
      v152 = v148[1];
      v153 = sub_255F0CC68();

      if ((v153 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v151 = v148[1];

    if (v149)
    {

      return 0;
    }
  }

  return 1;
}

uint64_t sub_255F05A38@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  sub_255F0C998();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_255F05ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_255F0C9A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_255F05B44(uint64_t a1)
{
  v3 = sub_255F0C9A8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_255F05C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_255F0622C(&qword_27F817D58, type metadata accessor for LighthouseBitacoraProto_BitacoraState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_255F05CF4(uint64_t a1)
{
  v2 = sub_255F0622C(&qword_27F817B48, type metadata accessor for LighthouseBitacoraProto_BitacoraState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_255F05D60()
{
  sub_255F0CC98();
  sub_255F0CBB8();
  return sub_255F0CCA8();
}

uint64_t sub_255F05DB8()
{
  sub_255F0622C(&qword_27F817B48, type metadata accessor for LighthouseBitacoraProto_BitacoraState);

  return sub_255F0CAF8();
}

uint64_t sub_255F05E34()
{
  sub_255F0CC98();
  sub_255F0CBB8();
  return sub_255F0CCA8();
}

uint64_t sub_255F05ECC()
{
  v0 = sub_255F0CBA8();
  sub_255F06FB8(v0, qword_27F81A358);
  sub_255F06F80(v0, qword_27F81A358);
  sub_255F0314C(&qword_27F817CA8, &qword_255F107E0);
  v1 = (sub_255F0314C(&qword_27F817CB0, &qword_255F107E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255F0F5D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_255F0CB88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "experiment";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "BMLT";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_255F0CB98();
}

uint64_t sub_255F06100@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_255F0CBA8();
  v6 = sub_255F06F80(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_255F0622C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255F0694C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255F06DEC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_255F06E64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_255F06DEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255F06EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255F06F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255F06F80(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_255F06FB8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_255F0701C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_255F0702C(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v98 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus(0);
  v96 = *(v98 - 8);
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v98, v4);
  v93 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255F0314C(&qword_27F817CE8, &qword_255F10800);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v89 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v91 = &v88 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v94 = &v88 - v15;
  v97 = sub_255F0314C(&qword_27F817CF8, &qword_255F10810);
  v16 = *(*(v97 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v97, v17);
  v90 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v92 = &v88 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v95 = &v88 - v24;
  v25 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v35 = &v88 - v34;
  v36 = sub_255F0314C(&qword_27F817D00, &qword_255F10818);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v88 - v40;
  v99 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  v100 = a1;
  v42 = *(v99 + 20);
  v43 = *(v37 + 56);
  sub_255F08A10(a1 + v42, v41, &qword_27F817CF0, &qword_255F10808);
  v44 = v101 + v42;
  v45 = v101;
  sub_255F08A10(v44, &v41[v43], &qword_27F817CF0, &qword_255F10808);
  v46 = *(v26 + 48);
  if (v46(v41, 1, v25) == 1)
  {
    if (v46(&v41[v43], 1, v25) == 1)
    {
      sub_255F08AE0(v41, &qword_27F817CF0, &qword_255F10808);
      goto LABEL_11;
    }

LABEL_6:
    v47 = &qword_27F817D00;
    v48 = &qword_255F10818;
    v49 = v41;
LABEL_7:
    sub_255F08AE0(v49, v47, v48);
    goto LABEL_8;
  }

  sub_255F08A10(v41, v35, &qword_27F817CF0, &qword_255F10808);
  if (v46(&v41[v43], 1, v25) == 1)
  {
    sub_255F06F20(v35, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
    goto LABEL_6;
  }

  sub_255F06EB8(&v41[v43], v30, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  v52 = sub_255F0841C(v35, v30);
  sub_255F06F20(v30, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F06F20(v35, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
  sub_255F08AE0(v41, &qword_27F817CF0, &qword_255F10808);
  if ((v52 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v54 = v99;
  v53 = v100;
  v55 = *(v99 + 24);
  v56 = (v100 + v55);
  v57 = *(v100 + v55 + 8);
  v58 = (v45 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v59)
  {
    goto LABEL_8;
  }

  v60 = v54[7];
  v61 = (v53 + v60);
  v62 = *(v53 + v60 + 8);
  v63 = (v45 + v60);
  v64 = *(v45 + v60 + 8);
  if (v62)
  {
    if (!v64)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*v61 != *v63)
    {
      LOBYTE(v64) = 1;
    }

    if (v64)
    {
      goto LABEL_8;
    }
  }

  v65 = v54[8];
  v66 = *(v97 + 48);
  v67 = v95;
  sub_255F08A10(v53 + v65, v95, &qword_27F817CE8, &qword_255F10800);
  sub_255F08A10(v45 + v65, v67 + v66, &qword_27F817CE8, &qword_255F10800);
  v68 = *(v96 + 48);
  v69 = v98;
  if (v68(v67, 1, v98) == 1)
  {
    if (v68(v67 + v66, 1, v69) != 1)
    {
      goto LABEL_41;
    }

    sub_255F08AE0(v67, &qword_27F817CE8, &qword_255F10800);
  }

  else
  {
    v70 = v94;
    sub_255F08A10(v67, v94, &qword_27F817CE8, &qword_255F10800);
    if (v68(v67 + v66, 1, v69) == 1)
    {
      v71 = v70;
LABEL_40:
      sub_255F06F20(v71, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
      goto LABEL_41;
    }

    v72 = v93;
    sub_255F06EB8(v67 + v66, v93, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
    v73 = v70;
    v74 = sub_255F07D28(v70, v72, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
    sub_255F06F20(v72, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
    sub_255F06F20(v73, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
    sub_255F08AE0(v67, &qword_27F817CE8, &qword_255F10800);
    if ((v74 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v75 = v54[9];
  v76 = *(v97 + 48);
  v67 = v92;
  sub_255F08A10(v53 + v75, v92, &qword_27F817CE8, &qword_255F10800);
  sub_255F08A10(v45 + v75, v67 + v76, &qword_27F817CE8, &qword_255F10800);
  v77 = v98;
  if (v68(v67, 1, v98) == 1)
  {
    if (v68(v67 + v76, 1, v77) == 1)
    {
      sub_255F08AE0(v67, &qword_27F817CE8, &qword_255F10800);
      goto LABEL_35;
    }

LABEL_41:
    v47 = &qword_27F817CF8;
    v48 = &qword_255F10810;
    v49 = v67;
    goto LABEL_7;
  }

  v78 = v91;
  sub_255F08A10(v67, v91, &qword_27F817CE8, &qword_255F10800);
  if (v68(v67 + v76, 1, v77) == 1)
  {
LABEL_39:
    v71 = v78;
    goto LABEL_40;
  }

  v79 = v67 + v76;
  v80 = v93;
  sub_255F06EB8(v79, v93, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  v81 = sub_255F07D28(v78, v80, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F06F20(v80, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F06F20(v78, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F08AE0(v67, &qword_27F817CE8, &qword_255F10800);
  if ((v81 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_35:
  v82 = v54[10];
  v83 = *(v97 + 48);
  v67 = v90;
  sub_255F08A10(v53 + v82, v90, &qword_27F817CE8, &qword_255F10800);
  sub_255F08A10(v45 + v82, v67 + v83, &qword_27F817CE8, &qword_255F10800);
  v84 = v98;
  if (v68(v67, 1, v98) == 1)
  {
    if (v68(v67 + v83, 1, v84) == 1)
    {
      sub_255F08AE0(v67, &qword_27F817CE8, &qword_255F10800);
LABEL_43:
      sub_255F0C9A8();
      sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8]);
      v50 = sub_255F0CBC8();
      return v50 & 1;
    }

    goto LABEL_41;
  }

  v78 = v89;
  sub_255F08A10(v67, v89, &qword_27F817CE8, &qword_255F10800);
  if (v68(v67 + v83, 1, v84) == 1)
  {
    goto LABEL_39;
  }

  v85 = v67 + v83;
  v86 = v93;
  sub_255F06EB8(v85, v93, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  v87 = sub_255F07D28(v78, v86, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F06F20(v86, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F06F20(v78, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
  sub_255F08AE0(v67, &qword_27F817CE8, &qword_255F10800);
  if (v87)
  {
    goto LABEL_43;
  }

LABEL_8:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_255F07A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_255F0CC68();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_255F0CC68() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_255F0C9A8();
    sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8]);
    return sub_255F0CBC8() & 1;
  }

  return 0;
}

uint64_t sub_255F07B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_255F0C9A8();
  sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8]);
  return sub_255F0CBC8() & 1;
}

uint64_t sub_255F07C60(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent.ScheduleStatus(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != 2)
  {
    if (v6 != 2 && ((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_7:
  sub_255F0C9A8();
  sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8]);
  return sub_255F0CBC8() & 1;
}

uint64_t sub_255F07D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = v5[6];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v12[1];
  if (v11)
  {
    if (!v13)
    {
      return 0;
    }

    if (*v10 != *v12 || v11 != v13)
    {
      v15 = v5;
      v16 = sub_255F0CC68();
      v5 = v15;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  v17 = v5[7];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 4);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 4);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  sub_255F0C9A8();
  sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8]);
  return sub_255F0CBC8() & 1;
}

uint64_t sub_255F07E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255F0314C(&qword_27F817CF0, &qword_255F10808);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v47 - v12;
  v14 = sub_255F0314C(&qword_27F817D00, &qword_255F10818);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v47 - v18;
  v49 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0);
  v50 = a1;
  v20 = *(v49 + 20);
  v21 = *(v15 + 56);
  sub_255F08A10(a1 + v20, v19, &qword_27F817CF0, &qword_255F10808);
  v22 = a2 + v20;
  v23 = a2;
  sub_255F08A10(v22, &v19[v21], &qword_27F817CF0, &qword_255F10808);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) != 1)
  {
    sub_255F08A10(v19, v13, &qword_27F817CF0, &qword_255F10808);
    if (v24(&v19[v21], 1, v4) != 1)
    {
      v27 = v48;
      sub_255F06EB8(&v19[v21], v48, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
      v28 = sub_255F0841C(v13, v27);
      sub_255F06F20(v27, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
      sub_255F06F20(v13, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
      sub_255F08AE0(v19, &qword_27F817CF0, &qword_255F10808);
      if ((v28 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_255F06F20(v13, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
LABEL_6:
    sub_255F08AE0(v19, &qword_27F817D00, &qword_255F10818);
    goto LABEL_7;
  }

  if (v24(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_255F08AE0(v19, &qword_27F817CF0, &qword_255F10808);
LABEL_10:
  v30 = v49;
  v29 = v50;
  v31 = *(v49 + 24);
  v32 = (v50 + v31);
  v33 = *(v50 + v31 + 8);
  v34 = (v23 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_255F0CC68() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v35)
  {
    goto LABEL_7;
  }

  v36 = v30[7];
  v37 = (v29 + v36);
  v38 = *(v29 + v36 + 8);
  v39 = (v23 + v36);
  v40 = *(v23 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_7;
    }
  }

  v41 = v30[8];
  v42 = *(v29 + v41);
  v43 = *(v23 + v41);
  if (v42 == 4)
  {
    if (v43 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v42 != v43)
  {
    goto LABEL_7;
  }

  v44 = v30[9];
  v45 = *(v29 + v44);
  v46 = *(v23 + v44);
  if (v45 == 2)
  {
    if (v46 == 2)
    {
LABEL_32:
      sub_255F0C9A8();
      sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8]);
      v25 = sub_255F0CBC8();
      return v25 & 1;
    }
  }

  else if (v46 != 2 && ((v45 ^ v46) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_7:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_255F0829C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_255F0CC68();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_255F0CC68();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (v25)
    {
      v26 = *v22 == *v24 && v23 == v25;
      if (v26 || (sub_255F0CC68() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v25)
  {
LABEL_26:
    sub_255F0C9A8();
    sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8]);
    return sub_255F0CBC8() & 1;
  }

  return 0;
}

uint64_t sub_255F0841C(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers(0);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255F0314C(&qword_27F817AE0, &unk_255F0F7A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v51 = &v49 - v10;
  v53 = sub_255F0314C(&qword_27F817CB8, &qword_255F107F0);
  v11 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53, v12);
  v56 = &v49 - v13;
  v14 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_255F0314C(&qword_27F817AD8, &qword_255F0F798);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v49 - v23;
  v25 = sub_255F0314C(&qword_27F817CC0, &qword_255F107F8);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v49 - v29;
  v52 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers(0);
  v31 = *(v52 + 20);
  v32 = *(v26 + 56);
  v57 = a1;
  sub_255F08A10(a1 + v31, v30, &qword_27F817AD8, &qword_255F0F798);
  sub_255F08A10(v58 + v31, &v30[v32], &qword_27F817AD8, &qword_255F0F798);
  v33 = *(v15 + 48);
  if (v33(v30, 1, v14) != 1)
  {
    sub_255F08A10(v30, v24, &qword_27F817AD8, &qword_255F0F798);
    if (v33(&v30[v32], 1, v14) != 1)
    {
      sub_255F06EB8(&v30[v32], v19, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
      v37 = sub_255F0829C(v24, v19);
      sub_255F06F20(v19, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
      sub_255F06F20(v24, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
      sub_255F08AE0(v30, &qword_27F817AD8, &qword_255F0F798);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_255F06F20(v24, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.ExperimentIdentifiers);
LABEL_6:
    v34 = &qword_27F817CC0;
    v35 = &qword_255F107F8;
    v36 = v30;
LABEL_14:
    sub_255F08AE0(v36, v34, v35);
    goto LABEL_15;
  }

  if (v33(&v30[v32], 1, v14) != 1)
  {
    goto LABEL_6;
  }

  sub_255F08AE0(v30, &qword_27F817AD8, &qword_255F0F798);
LABEL_8:
  v38 = *(v52 + 24);
  v39 = *(v53 + 48);
  v40 = v56;
  sub_255F08A10(v57 + v38, v56, &qword_27F817AE0, &unk_255F0F7A0);
  sub_255F08A10(v58 + v38, v40 + v39, &qword_27F817AE0, &unk_255F0F7A0);
  v41 = v55;
  v42 = *(v54 + 48);
  if (v42(v40, 1, v55) == 1)
  {
    if (v42(v40 + v39, 1, v41) == 1)
    {
      sub_255F08AE0(v40, &qword_27F817AE0, &unk_255F0F7A0);
LABEL_18:
      sub_255F0C9A8();
      sub_255F0622C(&qword_27F817CC8, MEMORY[0x277D216C8]);
      v44 = sub_255F0CBC8();
      return v44 & 1;
    }

    goto LABEL_13;
  }

  v43 = v51;
  sub_255F08A10(v40, v51, &qword_27F817AE0, &unk_255F0F7A0);
  if (v42(v40 + v39, 1, v41) == 1)
  {
    sub_255F06F20(v43, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
LABEL_13:
    v34 = &qword_27F817CB8;
    v35 = &qword_255F107F0;
    v36 = v40;
    goto LABEL_14;
  }

  v46 = v40 + v39;
  v47 = v50;
  sub_255F06EB8(v46, v50, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
  v48 = sub_255F07A40(v43, v47);
  sub_255F06F20(v47, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
  sub_255F06F20(v43, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers.BMLTIdentifiers);
  sub_255F08AE0(v40, &qword_27F817AE0, &unk_255F0F7A0);
  if (v48)
  {
    goto LABEL_18;
  }

LABEL_15:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_255F08A10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_255F0314C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255F08A78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_255F0314C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_255F08AE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_255F0314C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_255F08B40()
{
  result = qword_27F817D50;
  if (!qword_27F817D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817D50);
  }

  return result;
}

unint64_t sub_255F08B94()
{
  result = qword_27F817D60;
  if (!qword_27F817D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817D60);
  }

  return result;
}

void sub_255F08C10()
{
  sub_255F0C9A8();
  if (v0 <= 0x3F)
  {
    sub_255EFD62C(319, &qword_27F817998, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
    if (v1 <= 0x3F)
    {
      sub_255F09138(319, &qword_27F817AB8);
      if (v2 <= 0x3F)
      {
        sub_255F09138(319, &qword_27F817D78);
        if (v3 <= 0x3F)
        {
          sub_255EFD62C(319, &qword_27F817D80, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent.EventStatus);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_255F08D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255F0C9A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_255F08E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_255F0C9A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_255F08EEC()
{
  sub_255F0C9A8();
  if (v0 <= 0x3F)
  {
    sub_255F09138(319, &qword_27F817AB0);
    if (v1 <= 0x3F)
    {
      sub_255F09138(319, &qword_27F817AB8);
      if (v2 <= 0x3F)
      {
        sub_255F09138(319, &qword_27F817AC0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_255F08FF8()
{
  sub_255F0C9A8();
  if (v0 <= 0x3F)
  {
    sub_255EFD62C(319, &qword_27F817998, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialIdentifiers);
    if (v1 <= 0x3F)
    {
      sub_255F09138(319, &qword_27F817AB8);
      if (v2 <= 0x3F)
      {
        sub_255F09138(319, &qword_27F817D78);
        if (v3 <= 0x3F)
        {
          sub_255F09138(319, &qword_27F817DA8);
          if (v4 <= 0x3F)
          {
            sub_255F09138(319, &qword_27F817AB0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_255F09138(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_255F0CC38();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255F092D8()
{
  result = qword_27F817DB0;
  if (!qword_27F817DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817DB0);
  }

  return result;
}

unint64_t sub_255F09330()
{
  result = qword_27F817DB8;
  if (!qword_27F817DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817DB8);
  }

  return result;
}

unint64_t sub_255F09388()
{
  result = qword_27F817DC0;
  if (!qword_27F817DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F817DC0);
  }

  return result;
}

id sub_255F09458(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v5 = a3;
  a4();
  v7 = v6;

  if (v7)
  {
    v8 = sub_255F0CBD8();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id LBFProtoToJson_swift.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LBFProtoToJson_swift.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LBFProtoToJson_swift();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LBFProtoToJson_swift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LBFProtoToJson_swift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_255F095E8()
{
  v34 = *MEMORY[0x277D85DE8];
  v0 = sub_255F0CC18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F0CC08();
  v6 = sub_255F0CBE8();
  v8 = v7;
  (*(v1 + 8))(v5, v0);
  result = 0;
  if (v8 >> 60 != 15)
  {
    v10 = objc_opt_self();
    v11 = sub_255F0C968();
    v30 = 0;
    v12 = [v10 JSONObjectWithData:v11 options:0 error:&v30];

    v13 = v30;
    if (v12)
    {
      sub_255F0CC48();
      swift_unknownObjectRelease();
      sub_255F0A870(&v31, v33);
      v14 = sub_255F0CC58();
      v30 = 0;
      v15 = [v10 dataWithJSONObject:v14 options:1 error:&v30];
      swift_unknownObjectRelease();
      v16 = v30;
      if (v15)
      {
        v17 = sub_255F0C978();
        v19 = v18;

        sub_255F0CC08();
        v20 = sub_255F0CBF8();
        sub_255F0A808(v6, v8);
        sub_255F0A81C(v17, v19);
        sub_255F0A8B4(&v31);
        result = v20;
        goto LABEL_8;
      }

      v23 = v16;
      v22 = sub_255F0C958();

      swift_willThrow();
      sub_255F0A808(v6, v8);
      sub_255F0A8B4(&v31);
    }

    else
    {
      v21 = v13;
      v22 = sub_255F0C958();

      swift_willThrow();
      sub_255F0A808(v6, v8);
    }

    sub_255F0314C(&qword_27F817DD0, &qword_255F109F0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_255F0F600;
    v31 = 0x203A726F727245;
    v32 = 0xE700000000000000;
    swift_getErrorValue();
    v25 = sub_255F0CC78();
    MEMORY[0x259C51540](v25);

    v26 = v31;
    v27 = v32;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 32) = v26;
    *(v24 + 40) = v27;
    sub_255F0CC88();

    result = 0;
  }

LABEL_8:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s27LighthouseBitacoraFramework20LBFProtoToJson_swiftC09serializeb5StateeF09protoDataSSSgSo6NSDataC_tFZ_0()
{
  v0 = sub_255F0C9D8();
  v22[0] = *(v0 - 8);
  v1 = *(v22[0] + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255F0C9F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_255F0314C(&qword_27F817DE8, qword_255F10A08);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v22 - v11;
  v13 = type metadata accessor for LighthouseBitacoraProto_BitacoraState(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F0C978();
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_255F0C9E8();
  sub_255F0A900(&qword_27F817B48, type metadata accessor for LighthouseBitacoraProto_BitacoraState);
  sub_255F0CAD8();
  v19 = v22[0];
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_255F0A948(v12, v18, type metadata accessor for LighthouseBitacoraProto_BitacoraState);
  sub_255F0C9C8();
  sub_255F0C9B8();
  sub_255F0CAB8();
  v20 = sub_255F095E8();

  (*(v19 + 8))(v4, v0);
  sub_255F0A9B0(v18, type metadata accessor for LighthouseBitacoraProto_BitacoraState);
  return v20;
}

uint64_t _s27LighthouseBitacoraFramework20LBFProtoToJson_swiftC09serializebb15MlruntimedEventeF09protoDataSSSgSo6NSDataC_tFZ_0()
{
  v0 = sub_255F0C9D8();
  v22[0] = *(v0 - 8);
  v1 = *(v22[0] + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255F0C9F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_255F0314C(&qword_27F817DE0, &qword_255F10A00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v22 - v11;
  v13 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F0C978();
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_255F0C9E8();
  sub_255F0A900(&qword_27F817BC8, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent);
  sub_255F0CAD8();
  v19 = v22[0];
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_255F0A948(v12, v18, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent);
  sub_255F0C9C8();
  sub_255F0C9B8();
  sub_255F0CAB8();
  v20 = sub_255F095E8();

  (*(v19 + 8))(v4, v0);
  sub_255F0A9B0(v18, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerMlruntimedEvent);
  return v20;
}

uint64_t _s27LighthouseBitacoraFramework20LBFProtoToJson_swiftC09serializeba11PluginEventeF09protoDataSSSgSo6NSDataC_tFZ_0()
{
  v0 = sub_255F0C9D8();
  v22[0] = *(v0 - 8);
  v1 = *(v22[0] + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255F0C9F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_255F0314C(&qword_27F817DD8, &qword_255F109F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v22 - v11;
  v13 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F0C978();
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_255F0C9E8();
  sub_255F0A900(&qword_27F817C08, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
  sub_255F0CAD8();
  v19 = v22[0];
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_255F0A948(v12, v18, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
  sub_255F0C9C8();
  sub_255F0C9B8();
  sub_255F0CAB8();
  v20 = sub_255F095E8();

  (*(v19 + 8))(v4, v0);
  sub_255F0A9B0(v18, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerLighthousePluginEvent);
  return v20;
}