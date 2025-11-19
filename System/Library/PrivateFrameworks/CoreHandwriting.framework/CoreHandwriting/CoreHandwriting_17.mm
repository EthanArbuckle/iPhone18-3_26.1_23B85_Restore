uint64_t sub_1838DAB50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = v6(v3);
    }

    else
    {
      v7 = v3;
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v10 = v7;
    v8 = v7;
    LXLexiconEnumerateEntriesForString();
    v5 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1838DAC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1838DAC90(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = LXEntryCopyString();
  cf = v6;
  if (v6)
  {
    v11 = CFGetTypeID(v6);
    if (v11 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v16 = objc_msgSend_caseInsensitiveCompare_(*(a1 + 32), v12, cf, v13, v14, v15);
  }

  else
  {
    v16 = objc_msgSend_caseInsensitiveCompare_(*(a1 + 32), v7, 0, v8, v9, v10);
  }

  if (!v16 && objc_msgSend_isInappropriateLexiconEntry_(*(a1 + 40), v17, a2, v18, v19, v20))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1838DAD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_183695860(&a10);
  _Unwind_Resume(a1);
}

void sub_1838DAD8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB04(va);
  _Unwind_Resume(a1);
}

void sub_1838DADA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183695860(va);
  _Unwind_Resume(a1);
}

void sub_1838DADBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18383AB04(va);
  _Unwind_Resume(a1);
}

void sub_1838DB100(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1837AAB9C(va);
  _Unwind_Resume(a1);
}

void sub_1838DB118(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1837AAB9C(va);
  _Unwind_Resume(a1);
}

void sub_1838DB180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHStringOVSChecker;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

__CFString *CHDescriptionForCorrectionResultType(unint64_t a1)
{
  if (a1 > 8)
  {
    return &stru_1EF1C0318;
  }

  else
  {
    return off_1E6DDF8A8[a1];
  }
}

void sub_1838DBE10(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1838DD038(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(a1[4], a2, a3, a4, a5, a6) <= a2)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_msgSend_count(a1[4], v14, v15, v16, v17, v18);
      v48 = 134218240;
      v49 = a2;
      v50 = 2048;
      v51 = v19;
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "Out of bounds stroke index %lu : original stroke identifiers count %lu", &v48, 0x16u);
    }
  }

  if (objc_msgSend_count(a1[4], v8, v9, v10, v11, v12) <= a2)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v25 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      v31 = objc_msgSend_count(a1[4], v26, v27, v28, v29, v30);
      v48 = 134218240;
      v49 = a2;
      v50 = 2048;
      v51 = v31;
      _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_FAULT, "Out of bounds stroke index %lu : original stroke identifiers count %lu", &v48, 0x16u);
    }
  }

  if (objc_msgSend_count(a1[4], v20, v21, v22, v23, v24) > a2)
  {
    v36 = objc_msgSend_objectAtIndexedSubscript_(a1[4], v32, a2, v33, v34, v35);
    v42 = objc_msgSend_indexOfObject_(a1[5], v37, v36, v38, v39, v40);
    if (v42 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_addIndex_(a1[6], v41, v42, v43, v44, v45);
      goto LABEL_24;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v46 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v48) = 0;
      _os_log_impl(&dword_18366B000, v46, OS_LOG_TYPE_ERROR, "Unable to find stroke identifier in newStrokeIdentifiersOrdering", &v48, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v47 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
LABEL_22:

LABEL_24:
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v47 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_22;
      }
    }

    LOWORD(v48) = 0;
    _os_log_impl(&dword_18366B000, v47, OS_LOG_TYPE_FAULT, "Unable to find stroke identifier in newStrokeIdentifiersOrdering", &v48, 2u);
    goto LABEL_22;
  }
}

void sub_1838DD388(void *a1, void *a2, void *a3, int a4)
{
  v775 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v725 = a3;
  v757[0] = 0;
  v757[1] = 0;
  v756 = v757;
  v752 = 0u;
  v753 = 0u;
  v754 = 0u;
  v755 = 0u;
  v729 = v5;
  if (v5)
  {
    v6 = v5[9];
  }

  else
  {
    v6 = 0;
  }

  obj = v6;
  v728 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v752, v765, 16, v8);
  if (!v728)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_299;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v727 = *v753;
  do
  {
    v730 = 0;
    do
    {
      v733 = v9;
      v734 = v10;
      v735 = v11;
      if (*v753 != v727)
      {
        objc_enumerationMutation(obj);
      }

      v12 = v729;
      if (v729)
      {
        v12 = v729[10];
      }

      v13 = *(*(&v752 + 1) + 8 * v730);
      v14 = v12;
      v15 = MEMORY[0x1E696AD98];
      v21 = objc_msgSend_uniqueIdentifier(v13, v16, v17, v18, v19, v20);
      v26 = objc_msgSend_numberWithInteger_(v15, v22, v21, v23, v24, v25);
      v731 = v13;
      v741 = objc_msgSend_objectForKeyedSubscript_(v14, v27, v26, v28, v29, v30);

      v36 = objc_msgSend_mathResult(v741, v31, v32, v33, v34, v35);
      LOBYTE(v14) = v36 == 0;

      if (v14)
      {
        v520 = objc_msgSend_strokeClassificationResult(v729, v37, v38, v39, v40, v41);
        if (v520 && (objc_msgSend_classification(v13, v515, v516, v517, v518, v519) == 6 || objc_msgSend_classification(v13, v521, v522, v523, v524, v525) == 5))
        {
          v526 = objc_msgSend_strokeIdentifiers(v13, v521, v522, v523, v524, v525);
          v532 = objc_msgSend_count(v526, v527, v528, v529, v530, v531) == 1;

          if (v532)
          {
            v750 = 0u;
            v751 = 0u;
            v748 = 0u;
            v749 = 0u;
            v538 = objc_msgSend_strokeClassificationResult(v729, v533, v534, v535, v536, v537);
            v544 = objc_msgSend_nontextCandidates(v538, v539, v540, v541, v542, v543);

            v547 = objc_msgSend_countByEnumeratingWithState_objects_count_(v544, v545, &v748, v764, 16, v546);
            v548 = v731;
            if (!v547)
            {
              goto LABEL_198;
            }

            v549 = *v749;
            do
            {
              v550 = 0;
              do
              {
                if (*v749 != v549)
                {
                  objc_enumerationMutation(v544);
                }

                v551 = *(*(&v748 + 1) + 8 * v550);
                if (v551)
                {
                  v552 = v551[11];
                }

                else
                {
                  v552 = 0;
                }

                v553 = v552;
                v559 = objc_msgSend_firstStrokeIdentifier(v548, v554, v555, v556, v557, v558);
                v560 = v553 == v559;

                if (v560)
                {
                  v547 = v551;
                  goto LABEL_198;
                }

                v550 = (v550 + 1);
                v548 = v731;
              }

              while (v547 != v550);
              v563 = objc_msgSend_countByEnumeratingWithState_objects_count_(v544, v561, &v748, v764, 16, v562);
              v547 = v563;
            }

            while (v563);
LABEL_198:

            v597 = v725 == 0;
            if (v547)
            {
              v597 = 1;
            }

            v598 = v735;
            v599 = v733;
            v600 = v731;
            if (!v597)
            {
              objc_msgSend_bounds(v731, v592, v593, v594, v595, v596);
              v602 = v601;
              objc_msgSend_bounds(v731, v603, v604, v605, v606, v607);
              if (v602 > v608 + v608)
              {
                v766 = 0;
                v767 = &v766;
                v768 = 0x4812000000;
                v769 = sub_1838DFC88;
                v770 = sub_1838DFCAC;
                v771 = &unk_183A5AC72;
                v773 = 0;
                v774 = 0;
                v772 = 0;
                v609 = objc_opt_class();
                v615 = objc_msgSend_strokeIdentifiers(v731, v610, v611, v612, v613, v614);
                v621 = objc_msgSend_anyObject(v615, v616, v617, v618, v619, v620);
                v625 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v609, v622, v621, v725, v623, v624);

                v626 = objc_opt_class();
                v747[0] = MEMORY[0x1E69E9820];
                v747[1] = 3221225472;
                v747[2] = sub_1838DFCC4;
                v747[3] = &unk_1E6DDCAC0;
                v747[4] = &v766;
                objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v626, v627, v625, 1, 1, v747);
                *&v758 = 0;
                v628 = objc_opt_class();
                objc_msgSend_lineOrientationForStrokePoints_error_(v628, v629, (v767 + 6), &v758, v630, v631);
                v633 = v632;
                v634 = [CHNonTextCandidateStroke alloc];
                v547 = objc_msgSend_initWithStroke_consistingOfSubstrokes_classificationAsNonText_lineOrientation_lineError_containerScore_fallbackClassification_(v634, v635, v625, 0, 5, 5, v633, *&v758, 0.0);

                _Block_object_dispose(&v766, 8);
                if (v772)
                {
                  v773 = v772;
                  operator delete(v772);
                }

                v598 = v735;
                v599 = v733;
                v600 = v731;
                goto LABEL_205;
              }

              v547 = 0;
LABEL_263:
              if (((v598 >> 3) + 1) >> 61)
              {
                sub_18368964C();
              }

              if (v598 >> 3 != -1)
              {
                if (!(((v598 >> 3) + 1) >> 61))
                {
                  operator new();
                }

                sub_183688F00();
              }

              v681 = (8 * (v598 >> 3));
              *v681 = v600;
              v682 = v681 + 1;
              if (v735)
              {
                v683 = v598 - 8;
                v684 = 0;
                v685 = v735;
                v686 = 0;
                if ((v598 - 8) < 0x28)
                {
                  goto LABEL_353;
                }

                if ((v683 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
                {
                  v684 = 0;
                  v686 = 0;
                  goto LABEL_274;
                }

                v687 = (v683 >> 3) + 1;
                v686 = (8 * (v687 & 0x3FFFFFFFFFFFFFFCLL));
                v684 = v686;
                v688 = 16;
                v689 = 16;
                v690 = v687 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v691 = *(v689 - 16);
                  v692 = *v689;
                  *(v689 - 16) = 0uLL;
                  *v689 = 0uLL;
                  *(v688 - 16) = v691;
                  *v688 = v692;
                  v688 += 32;
                  v689 += 32;
                  v690 -= 4;
                }

                while (v690);
                v685 = v735;
                if (v687 != (v687 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_353:
                  do
                  {
LABEL_274:
                    v693 = *v684;
                    *v684++ = 0;
                    *v686++ = v693;
                  }

                  while (v684 != v685);
                }

                for (i = 0; i != v735; ++i)
                {
                }
              }

              v695 = v733;
              v735 = v682;
LABEL_278:

              v733 = v695;
              goto LABEL_258;
            }

LABEL_205:
            if (!v547 || v547[7] >= 0.2 || fabs(v547[9]) >= 0.196349541)
            {
              goto LABEL_263;
            }

            v696 = v599;
            v697 = v599 >> 3;
            if ((v697 + 1) >> 61)
            {
              sub_18368964C();
            }

            if (v697 != -1)
            {
              if (!((v697 + 1) >> 61))
              {
                operator new();
              }

              sub_183688F00();
            }

            MEMORY[0xFFFFFFFFFFFFFFF8] = v600;
            v695 = 0;
            if (!v733)
            {
              goto LABEL_278;
            }

            v698 = v696 - 8;
            v699 = 0;
            v700 = 0;
            v701 = v733;
            if ((v696 - 8) < 0x28)
            {
              goto LABEL_354;
            }

            if ((v698 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
            {
              v699 = 0;
              v700 = 0;
              goto LABEL_292;
            }

            v702 = (v698 >> 3) + 1;
            v700 = (8 * (v702 & 0x3FFFFFFFFFFFFFFCLL));
            v699 = v700;
            v703 = 16;
            v704 = 16;
            v705 = v702 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v706 = *(v704 - 16);
              v707 = *v704;
              *(v704 - 16) = 0uLL;
              *v704 = 0uLL;
              *(v703 - 16) = v706;
              *v703 = v707;
              v703 += 32;
              v704 += 32;
              v705 -= 4;
            }

            while (v705);
            v701 = v733;
            if (v702 != (v702 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_354:
              do
              {
LABEL_292:
                v708 = *v699;
                *v699++ = 0;
                *v700++ = v708;
              }

              while (v699 != v701);
            }

            for (j = 0; j != v733; ++j)
            {
            }

            goto LABEL_278;
          }
        }

        else
        {
        }

        if (((v735 >> 3) + 1) >> 61)
        {
          sub_18368964C();
        }

        if (v735 >> 3 != -1)
        {
          if (!(((v735 >> 3) + 1) >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        v579 = (8 * (v735 >> 3));
        *v579 = v731;
        v580 = v579 + 1;
        if (v735)
        {
          v581 = v735 - 8;
          v582 = 0;
          v583 = 0;
          if ((v735 - 8) < 0x28)
          {
            goto LABEL_355;
          }

          if ((v581 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
          {
            v582 = 0;
            v583 = 0;
            goto LABEL_193;
          }

          v584 = (v581 >> 3) + 1;
          v583 = (8 * (v584 & 0x3FFFFFFFFFFFFFFCLL));
          v582 = v583;
          v585 = 16;
          v586 = 16;
          v587 = v584 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v588 = *(v586 - 16);
            v589 = *v586;
            *(v586 - 16) = 0uLL;
            *v586 = 0uLL;
            *(v585 - 16) = v588;
            *v585 = v589;
            v585 += 32;
            v586 += 32;
            v587 -= 4;
          }

          while (v587);
          if (v584 != (v584 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_355:
            do
            {
LABEL_193:
              v590 = *v582;
              *v582++ = 0;
              *v583++ = v590;
            }

            while (v582 != v735);
          }

          for (k = 0; k != v735; ++k)
          {
          }
        }

        v735 = v580;
        goto LABEL_258;
      }

      v737 = 0;
      v42 = 0;
      v746 = 0;
      v43 = 0;
      v44 = 0;
      while (1)
      {
        v45 = objc_msgSend_mathResult(v741, v37, v38, v39, v40, v41);
        __src = v42;
        v51 = objc_msgSend_transcriptionPaths(v45, v46, v47, v48, v49, v50);
        v739 = v43;
        v740 = v44;
        v57 = v746 < objc_msgSend_count(v51, v52, v53, v54, v55, v56);

        if (!v57)
        {
          break;
        }

        v63 = objc_msgSend_mathResult(v741, v58, v59, v60, v61, v62);
        v69 = objc_msgSend_transcriptionPaths(v63, v64, v65, v66, v67, v68);
        v743 = objc_msgSend_objectAtIndexedSubscript_(v69, v70, v746, v71, v72, v73);

        v79 = objc_msgSend_array(MEMORY[0x1E695DF70], v74, v75, v76, v77, v78);
        v85 = objc_msgSend_tokenColumnCount(v63, v80, v81, v82, v83, v84);
        v762[0] = MEMORY[0x1E69E9820];
        v762[1] = 3221225472;
        v762[2] = sub_1838DD37C;
        v762[3] = &unk_1E6DDBDA0;
        v86 = v79;
        v763 = v86;
        objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v63, v87, v743, 0, v85, v762);
        v93 = objc_msgSend_array(MEMORY[0x1E695DF70], v88, v89, v90, v91, v92);
        if (objc_msgSend_count(v86, v94, v95, v96, v97, v98) && (objc_msgSend_objectAtIndexedSubscript_(v86, v99, 0, v101, v102, v103), v104 = objc_claimAutoreleasedReturnValue(), v110 = (objc_msgSend_properties(v104, v105, v106, v107, v108, v109) & 0x8000) == 0, v104, !v110))
        {
          if (objc_msgSend_count(v86, v99, v100, v101, v102, v103) < 2)
          {
            v744 = 1;
          }

          else
          {
            v112 = objc_msgSend_objectAtIndexedSubscript_(v86, v99, 1, v101, v102, v103);
            v118 = objc_msgSend_string(v112, v113, v114, v115, v116, v117);
            isEqualToString = objc_msgSend_isEqualToString_(v118, v119, @"{", v120, v121, v122);

            v744 = isEqualToString & 1;
          }

          v738 = 1;
          v111 = 2;
        }

        else
        {
          v738 = 0;
          v111 = 0;
          v744 = 1;
        }

        if (v111 < objc_msgSend_count(v86, v99, v100, v101, v102, v103) && v744 && (objc_msgSend_objectAtIndexedSubscript_(v86, v124, v111, v126, v127, v128), v129 = objc_claimAutoreleasedReturnValue(), v135 = (objc_msgSend_properties(v129, v130, v131, v132, v133, v134) & 8) == 0, v129, !v135))
        {
          v136 = v111 | 1;
          if ((v111 | 1) < objc_msgSend_count(v86, v124, v125, v126, v127, v128))
          {
            v259 = objc_msgSend_objectAtIndexedSubscript_(v86, v124, v111 | 1, v126, v127, v128);
            v265 = (objc_msgSend_properties(v259, v260, v261, v262, v263, v264) & 8) == 0;

            if (!v265)
            {
              v266 = objc_msgSend_objectAtIndexedSubscript_(v86, v124, v111 | 1, v126, v127, v128);
              v272 = objc_msgSend_string(v266, v267, v268, v269, v270, v271);
              v277 = objc_msgSend_isEqualToString_(v272, v273, @"-", v274, v275, v276);

              v283 = v277 ? v744 : 0;
              v744 = v283;
              v136 = v111 + 2;
              if (v111 + 2 < objc_msgSend_count(v86, v278, v279, v280, v281, v282))
              {
                if (v744)
                {
                  v284 = objc_msgSend_objectAtIndexedSubscript_(v86, v124, v111 + 2, v126, v127, v128);
                  v290 = (objc_msgSend_properties(v284, v285, v286, v287, v288, v289) & 8) == 0;

                  if (!v290)
                  {
                    objc_msgSend_count(v86, v124, v125, v126, v127, v128);
                    LOBYTE(v744) = 0;
                    v136 = v111 + 3;
LABEL_54:
                    objc_msgSend_count(v86, v124, v125, v126, v127, v128);
                    objc_msgSend_count(v86, v291, v292, v293, v294, v295);
                    objc_msgSend_count(v86, v296, v297, v298, v299, v300);
                    if (v738)
                    {
                      goto LABEL_90;
                    }

                    objc_msgSend_count(v86, v301, v302, v303, v304, v305);
                    objc_msgSend_count(v86, v306, v307, v308, v309, v310);
                    v311 = 0;
LABEL_98:
                    v464 = 0;
LABEL_99:
                    if (v464 == v311)
                    {
                      v465 = v744;
                    }

                    else
                    {
                      v465 = 0;
                    }

                    goto LABEL_102;
                  }
                }
              }
            }
          }
        }

        else
        {
          v136 = v111;
        }

        if (!v744)
        {
          goto LABEL_54;
        }

        for (m = v136 + 1; v136 < objc_msgSend_count(v86, v124, v125, v126, v127, v128); ++m)
        {
          v138 = objc_msgSend_objectAtIndexedSubscript_(v86, v124, v136, v126, v127, v128);
          v144 = (objc_msgSend_properties(v138, v139, v140, v141, v142, v143) & 0x80) == 0;

          if (v144)
          {
            break;
          }

          ++v136;
        }

        while (v136 < objc_msgSend_count(v86, v124, v125, v126, v127, v128))
        {
          v150 = objc_msgSend_objectAtIndexedSubscript_(v86, v145, v136, v147, v148, v149);
          if (objc_msgSend_properties(v150, v151, v152, v153, v154, v155) & 2) != 0 || (objc_msgSend_properties(v150, v156, v157, v158, v159, v160) & 4) != 0 || (objc_msgSend_string(v150, v161, v162, v163, v164, v165), v166 = objc_claimAutoreleasedReturnValue(), v171 = objc_msgSend_isEqualToString_(v166, v167, @"\\cdot", v168, v169, v170), v166, (v171))
          {
          }

          else
          {
            v226 = objc_msgSend_string(v150, v172, v173, v174, v175, v176);
            v232 = objc_msgSend_lowercaseString(v226, v227, v228, v229, v230, v231);
            if (!objc_msgSend_isEqualToString_(v232, v233, @"z", v234, v235, v236))
            {
              goto LABEL_57;
            }

            v242 = objc_msgSend_strokeIndexes(v150, v237, v238, v239, v240, v241);
            if (objc_msgSend_count(v242, v243, v244, v245, v246, v247) != 1 || (objc_msgSend_properties(v150, v248, v249, v250, v251, v252) & 0x40) != 0)
            {

LABEL_57:
              break;
            }

            v258 = (objc_msgSend_properties(v150, v253, v254, v255, v256, v257) & 0x80) == 0;

            if (!v258)
            {
              break;
            }
          }

          v177 = objc_msgSend_objectAtIndexedSubscript_(v86, v145, v136, v147, v148, v149);
          v183 = objc_msgSend_string(v177, v178, v179, v180, v181, v182);

          v188 = objc_msgSend_objectAtIndexedSubscript_(v86, v184, v136, v185, v186, v187);
          v194 = objc_msgSend_string(v188, v189, v190, v191, v192, v193);
          v199 = objc_msgSend_isEqualToString_(v194, v195, @"\\cdot", v196, v197, v198);

          if (v199)
          {

            v183 = @".";
          }

          v204 = objc_msgSend_objectAtIndexedSubscript_(v86, v200, v136, v201, v202, v203);
          v210 = objc_msgSend_string(v204, v205, v206, v207, v208, v209);
          v216 = objc_msgSend_lowercaseString(v210, v211, v212, v213, v214, v215);
          v221 = objc_msgSend_isEqualToString_(v216, v217, @"z", v218, v219, v220);

          if (v221)
          {

            v183 = @"2";
          }

          objc_msgSend_addObject_(v93, v222, v183, v223, v224, v225);

          ++v136;
          ++m;
        }

        LOBYTE(v312) = 0;
        while (v136 < objc_msgSend_count(v86, v145, v146, v147, v148, v149))
        {
          v313 = objc_msgSend_objectAtIndexedSubscript_(v86, v145, v136, v147, v148, v149);
          if ((objc_msgSend_properties(v313, v314, v315, v316, v317, v318) & 0x40) != 0 || (objc_msgSend_properties(v313, v319, v320, v321, v322, v323) & 0x80) != 0 || (objc_msgSend_properties(v313, v324, v325, v326, v327, v328) & 0x2000) != 0 || (objc_msgSend_properties(v313, v329, v330, v331, v332, v333) & 0x200) != 0)
          {
          }

          else
          {
            v339 = objc_msgSend_string(v313, v334, v335, v336, v337, v338);
            v344 = objc_msgSend_isEqualToString_(v339, v340, @"/", v341, v342, v343);

            if (!v344)
            {
              break;
            }
          }

          if (v312)
          {
            LOBYTE(v312) = 1;
          }

          else
          {
            v345 = objc_msgSend_objectAtIndexedSubscript_(v86, v145, v136, v147, v148, v149);
            v351 = objc_msgSend_properties(v345, v346, v347, v348, v349, v350);

            v312 = (v351 >> 6) & 1;
          }

          ++v136;
          ++m;
        }

        if ((v312 & 1) != 0 && v136 + 3 < objc_msgSend_count(v86, v145, v146, v147, v148, v149))
        {
          v352 = objc_msgSend_objectAtIndexedSubscript_(v86, v145, v136, v147, v148, v149);
          v358 = objc_msgSend_string(v352, v353, v354, v355, v356, v357);
          if (objc_msgSend_isEqualToString_(v358, v359, @"^", v360, v361, v362))
          {
            v367 = objc_msgSend_objectAtIndexedSubscript_(v86, v363, m, v364, v365, v366);
            v373 = objc_msgSend_string(v367, v368, v369, v370, v371, v372);
            if (objc_msgSend_isEqualToString_(v373, v374, @"{", v375, v376, v377))
            {
              v382 = objc_msgSend_objectAtIndexedSubscript_(v86, v378, v136 + 3, v379, v380, v381);
              v388 = objc_msgSend_string(v382, v383, v384, v385, v386, v387);
              v732 = objc_msgSend_isEqualToString_(v388, v389, @"}", v390, v391, v392);
            }

            else
            {
              v732 = 0;
            }
          }

          else
          {
            v732 = 0;
          }

          v397 = objc_msgSend_objectAtIndexedSubscript_(v86, v393, v136 + 2, v394, v395, v396);
          v403 = objc_msgSend_string(v397, v398, v399, v400, v401, v402);
          if (objc_msgSend_isEqualToString_(v403, v404, @"2", v405, v406, v407))
          {
            v412 = 1;
          }

          else
          {
            v413 = objc_msgSend_objectAtIndexedSubscript_(v86, v408, v136 + 2, v409, v410, v411);
            v419 = objc_msgSend_string(v413, v414, v415, v416, v417, v418);
            v412 = objc_msgSend_isEqualToString_(v419, v420, @"3", v421, v422, v423);
          }

          if (v732)
          {
            if (v412)
            {
              v136 += 4;
            }
          }
        }

        if ((v738 & 1) == 0)
        {
          if (v136 >= objc_msgSend_count(v86, v145, v146, v147, v148, v149) || (objc_msgSend_objectAtIndexedSubscript_(v86, v466, v136, v468, v469, v470), v471 = objc_claimAutoreleasedReturnValue(), v477 = (objc_msgSend_properties(v471, v472, v473, v474, v475, v476) & 0x4000) == 0, v471, v477))
          {
            v311 = 0;
          }

          else
          {
            objc_msgSend_count(v86, v466, v467, v468, v469, v470);
            ++v136;
            v311 = 1;
          }

          if (v136 >= objc_msgSend_count(v86, v466, v467, v468, v469, v470))
          {
            goto LABEL_98;
          }

          v478 = objc_msgSend_objectAtIndexedSubscript_(v86, v301, v136, v303, v304, v305);
          v484 = (objc_msgSend_properties(v478, v479, v480, v481, v482, v483) & 0x20000) == 0;

          if (v484)
          {
            goto LABEL_98;
          }

          objc_msgSend_count(v86, v301, v302, v303, v304, v305);
          ++v136;
          v464 = 1;
          goto LABEL_99;
        }

        if (v136 + 2 >= objc_msgSend_count(v86, v145, v146, v147, v148, v149))
        {
LABEL_90:
          v465 = 0;
          LOBYTE(v464) = 0;
          goto LABEL_102;
        }

        v424 = objc_msgSend_objectAtIndexedSubscript_(v86, v301, v136, v303, v304, v305);
        v430 = objc_msgSend_string(v424, v425, v426, v427, v428, v429);
        if (objc_msgSend_isEqualToString_(v430, v431, @"}", v432, v433, v434))
        {
          v745 = objc_msgSend_objectAtIndexedSubscript_(v86, v435, v136 + 1, v436, v437, v438);
          v444 = objc_msgSend_string(v745, v439, v440, v441, v442, v443);
          if (objc_msgSend_isEqualToString_(v444, v445, @"{", v446, v447, v448))
          {
            v453 = objc_msgSend_objectAtIndexedSubscript_(v86, v449, v136 + 2, v450, v451, v452);
            v459 = objc_msgSend_string(v453, v454, v455, v456, v457, v458);
            LOBYTE(v464) = objc_msgSend_isEqualToString_(v459, v460, @"}", v461, v462, v463);
          }

          else
          {
            LOBYTE(v464) = 0;
          }
        }

        else
        {
          LOBYTE(v464) = 0;
        }

        v136 += 3;
        v465 = v464;
LABEL_102:
        v485 = objc_msgSend_count(v86, v301, v302, v303, v304, v305);
        v490 = v465 ^ 1;
        if (v136 != v485)
        {
          v490 = 1;
        }

        if (v490)
        {
          v501 = 0;
        }

        else
        {
          v760 = 0u;
          v761 = 0u;
          v758 = 0u;
          v759 = 0u;
          v491 = v93;
          v498 = objc_msgSend_countByEnumeratingWithState_objects_count_(v491, v492, &v758, &v766, 16, v493);
          if (v498)
          {
            v499 = *v759;
            while (2)
            {
              for (n = 0; n != v498; ++n)
              {
                if (*v759 != v499)
                {
                  objc_enumerationMutation(v491);
                }

                if ((objc_msgSend_containsObject_(&unk_1EF1EC6E8, v494, *(*(&v758 + 1) + 8 * n), v495, v496, v497) & 1) == 0)
                {
                  v501 = 0;
                  goto LABEL_116;
                }
              }

              v498 = objc_msgSend_countByEnumeratingWithState_objects_count_(v491, v494, &v758, &v766, 16, v497);
              if (v498)
              {
                continue;
              }

              break;
            }
          }

          v501 = 1;
LABEL_116:
        }

        v507 = objc_msgSend_componentsJoinedByString_(v93, v486, &stru_1EF1C0318, v487, v488, v489);
        if (a4)
        {
          v508 = objc_msgSend_currentLocale(MEMORY[0x1E695DF58], v502, v503, v504, v505, v506);
          v509 = sub_1837A56A0(v507, v508);
        }

        else
        {
          v509 = sub_1837A536C(v507);
        }

        v510 = v501 & v509;
        if ((v501 & v509) != 0)
        {
          v511 = v737 - __src;
          v512 = (v737 - __src) >> 3;
          v513 = v512 + 1;
          if ((v512 + 1) >> 61)
          {
            sub_18368964C();
          }

          if (-__src >> 2 > v513)
          {
            v513 = -__src >> 2;
          }

          if (-__src >= 0x7FFFFFFFFFFFFFF8)
          {
            v514 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v514 = v513;
          }

          if (v514)
          {
            if (!(v514 >> 61))
            {
              operator new();
            }

            sub_183688F00();
          }

          *(8 * v512) = v746;
          v737 = 8 * v512 + 8;
          memcpy(0, __src, v511);
          __src = 0;
        }

        v44 = v740 | v510;
        v43 = v464 | v739 & 1;
        ++v746;
        v42 = __src;
      }

      if ((v44 & 1) == 0)
      {
        if (!(((v735 >> 3) + 1) >> 61))
        {
          if (v735 >> 3 != -1)
          {
            if (!(((v735 >> 3) + 1) >> 61))
            {
              operator new();
            }

LABEL_340:
            sub_183688F00();
          }

          v565 = (8 * (v735 >> 3));
          *v565 = v731;
          v566 = v565 + 1;
          if (v735)
          {
            v567 = v735 - 8;
            v568 = 0;
            v569 = 0;
            if ((v735 - 8) < 0x28)
            {
              goto LABEL_356;
            }

            if ((v567 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
            {
              v568 = 0;
              v569 = 0;
              goto LABEL_182;
            }

            v570 = (v567 >> 3) + 1;
            v569 = (8 * (v570 & 0x3FFFFFFFFFFFFFFCLL));
            v568 = v569;
            v571 = 16;
            v572 = 16;
            v573 = v570 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v574 = *(v572 - 16);
              v575 = *v572;
              *(v572 - 16) = 0uLL;
              *v572 = 0uLL;
              *(v571 - 16) = v574;
              *v571 = v575;
              v571 += 32;
              v572 += 32;
              v573 -= 4;
            }

            while (v573);
            if (v570 != (v570 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_356:
              do
              {
LABEL_182:
                v576 = *v568;
                *v568++ = 0;
                *v569++ = v576;
              }

              while (v568 != v735);
            }

            for (ii = 0; ii != v735; ++ii)
            {
            }
          }

          v735 = v566;
          v578 = v733;
          goto LABEL_257;
        }

LABEL_338:
        sub_18368964C();
      }

      if ((v739 & 1) == 0)
      {
        if (((v734 >> 3) + 1) >> 61)
        {
          goto LABEL_338;
        }

        if (v734 >> 3 != -1)
        {
          if (!(((v734 >> 3) + 1) >> 61))
          {
            operator new();
          }

          goto LABEL_340;
        }

        v652 = (8 * (v734 >> 3));
        *v652 = v731;
        v653 = v652 + 1;
        if (v734)
        {
          v654 = v734 - 8;
          v655 = 0;
          v656 = 0;
          if ((v734 - 8) < 0x28)
          {
            goto LABEL_357;
          }

          if ((v654 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
          {
            v655 = 0;
            v656 = 0;
            goto LABEL_227;
          }

          v657 = (v654 >> 3) + 1;
          v656 = (8 * (v657 & 0x3FFFFFFFFFFFFFFCLL));
          v655 = v656;
          v658 = 16;
          v659 = 16;
          v660 = v657 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v661 = *(v659 - 16);
            v662 = *v659;
            *(v659 - 16) = 0uLL;
            *v659 = 0uLL;
            *(v658 - 16) = v661;
            *v658 = v662;
            v658 += 32;
            v659 += 32;
            v660 -= 4;
          }

          while (v660);
          if (v657 != (v657 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_357:
            do
            {
LABEL_227:
              v663 = *v655;
              *v655++ = 0;
              *v656++ = v663;
            }

            while (v655 != v734);
          }

          for (jj = 0; jj != v734; ++jj)
          {
          }
        }

        v578 = v733;
        v734 = v653;
        goto LABEL_231;
      }

      v564 = v733 >> 3;
      if (((v733 >> 3) + 1) >> 61)
      {
        goto LABEL_338;
      }

      if (v733 >> 3 != -1)
      {
        if (!(((v733 >> 3) + 1) >> 61))
        {
          operator new();
        }

        goto LABEL_340;
      }

      *(8 * v564) = v731;
      v578 = 8 * v564 + 8;
      if (v733)
      {
        v641 = v733 - 8;
        v642 = 0;
        v643 = 0;
        if ((v733 - 8) < 0x28)
        {
          goto LABEL_358;
        }

        if ((v641 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
        {
          v642 = 0;
          v643 = 0;
          goto LABEL_216;
        }

        v644 = (v641 >> 3) + 1;
        v643 = (8 * (v644 & 0x3FFFFFFFFFFFFFFCLL));
        v642 = v643;
        v645 = 16;
        v646 = 16;
        v647 = v644 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v648 = *(v646 - 16);
          v649 = *v646;
          *(v646 - 16) = 0uLL;
          *v646 = 0uLL;
          *(v645 - 16) = v648;
          *v645 = v649;
          v645 += 32;
          v646 += 32;
          v647 -= 4;
        }

        while (v647);
        if (v644 != (v644 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_358:
          do
          {
LABEL_216:
            v650 = *v642;
            *v642++ = 0;
            *v643++ = v650;
          }

          while (v642 != v733);
        }

        for (kk = 0; kk != v733; ++kk)
        {
        }
      }

LABEL_231:
      v665 = objc_msgSend_uniqueIdentifier(v731, v636, v637, v638, v639, v640);
      v666 = v757[0];
LABEL_233:
      if (!v666)
      {
LABEL_237:
        operator new();
      }

      while (1)
      {
        v667 = v666;
        v668 = v666[4];
        if (v665 < v668)
        {
          v666 = *v667;
          goto LABEL_233;
        }

        if (v668 >= v665)
        {
          break;
        }

        v666 = v667[1];
        if (!v666)
        {
          goto LABEL_237;
        }
      }

      v669 = v667[5];
      v670 = v737 - __src;
      v671 = v667[7];
      if (v671 - v669 < (v737 - __src))
      {
        if (v669)
        {
          v667[6] = v669;
          operator delete(v669);
          v671 = 0;
          v667[5] = 0;
          v667[6] = 0;
          v667[7] = 0;
          v672 = v670 >> 3;
          if (!((v670 >> 3) >> 61))
          {
            goto LABEL_241;
          }
        }

        else
        {
          v672 = v670 >> 3;
          if (!((v670 >> 3) >> 61))
          {
LABEL_241:
            if (v671 >> 2 > v672)
            {
              v672 = v671 >> 2;
            }

            if (v671 >= 0x7FFFFFFFFFFFFFF8)
            {
              v673 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v673 = v672;
            }

            if (!(v673 >> 61))
            {
              operator new();
            }
          }
        }

        sub_18368964C();
      }

      v674 = v667[6];
      v675 = v674 - v669;
      if (v674 - v669 >= v670)
      {
        if (v737 != __src)
        {
          memmove(v669, __src, v670);
        }

        v678 = &v669[v670];
      }

      else
      {
        if (v674 == v669)
        {
          v676 = (__src + v675);
          v677 = v737 - (__src + v675);
          if (__src + v675 != v737)
          {
LABEL_251:
            memmove(v674, v676, v677);
          }
        }

        else
        {
          memmove(v669, __src, v674 - v669);
          v674 = v667[6];
          v676 = (__src + v675);
          v677 = v737 - (__src + v675);
          if (__src + v675 != v737)
          {
            goto LABEL_251;
          }
        }

        v678 = &v674[v677];
      }

      v667[6] = v678;
LABEL_257:
      v733 = v578;
LABEL_258:

      ++v730;
      v9 = v733;
      v10 = v734;
      v11 = v735;
    }

    while (v730 != v728);
    v710 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v679, &v752, v765, 16, v680);
    v728 = v710;
  }

  while (v710);
LABEL_299:

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v766 = a1;
  LOBYTE(v767) = 0;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v766 = a1 + 3;
  LOBYTE(v767) = 0;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v766 = a1 + 6;
  LOBYTE(v767) = 0;
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  a1[10] = 0;
  v711 = a1 + 10;
  a1[9] = a1 + 10;
  a1[11] = 0;
  v712 = v756;
  if (v756 != v757)
  {
    do
    {
      v713 = *v711;
      v714 = a1 + 10;
      if (a1[9] == v711)
      {
        goto LABEL_317;
      }

      v715 = *v711;
      v716 = a1 + 10;
      if (v713)
      {
        do
        {
          v714 = v715;
          v715 = v715[1];
        }

        while (v715);
      }

      else
      {
        do
        {
          v714 = v716[2];
          v717 = *v714 == v716;
          v716 = v714;
        }

        while (v717);
      }

      v718 = v712[4];
      if (v714[4] < v718)
      {
LABEL_317:
        if (v713)
        {
          v719 = v714 + 1;
        }

        else
        {
          v719 = a1 + 10;
        }

        if (!*v719)
        {
LABEL_328:
          operator new();
        }
      }

      else
      {
        if (!v713)
        {
          goto LABEL_328;
        }

        while (1)
        {
          while (1)
          {
            v720 = v713;
            v721 = v713[4];
            if (v721 <= v718)
            {
              break;
            }

            v713 = *v720;
            if (!*v720)
            {
              goto LABEL_328;
            }
          }

          if (v721 >= v718)
          {
            break;
          }

          v713 = v720[1];
          if (!v713)
          {
            goto LABEL_328;
          }
        }
      }

      v722 = v712[1];
      if (v722)
      {
        do
        {
          v723 = v722;
          v722 = *v722;
        }

        while (v722);
      }

      else
      {
        do
        {
          v723 = v712[2];
          v717 = *v723 == v712;
          v712 = v723;
        }

        while (!v717);
      }

      v712 = v723;
    }

    while (v723 != v757);
  }

  sub_1838EF034(v757[0]);
}

void sub_1838DF708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1838EEFC0(&STACK[0x348]);
  sub_18377E7BC(a43);
  sub_18377E7BC(a13);
  sub_1838EF034(a67);
  v68 = a31;
  if (__p)
  {
    if (a31 != __p)
    {
      do
      {
        v69 = (v68 - 8);

        v68 = v69;
      }

      while (v69 != __p);
    }

    operator delete(__p);
  }

  v70 = a29;
  if (a25)
  {
    if (a29 != a25)
    {
      do
      {
        v71 = (v70 - 8);

        v70 = v71;
      }

      while (v71 != a25);
    }

    operator delete(a25);
  }

  v72 = a28;
  if (a24)
  {
    if (a28 != a24)
    {
      do
      {
        v73 = (v72 - 8);

        v72 = v73;
      }

      while (v73 != a24);
    }

    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1838DFC88(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1838DFCAC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1838DFCC4(uint64_t a1, double a2, double a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  sub_1836973A4(*(*(a1 + 32) + 8) + 48, &v3);
}

double sub_1838DFCF8(void *a1, void *a2, int a3, int a4, double a5)
{
  v104 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  objc_msgSend_bounds(v9, v11, v12, v13, v14, v15);
  v17 = v16;
  objc_msgSend_bounds(v9, v18, v19, v20, v21, v22);
  v24 = v23;
  objc_msgSend_bounds(v10, v25, v26, v27, v28, v29);
  v110.origin.x = v30;
  v110.origin.y = v31;
  v110.size.width = v32;
  v110.size.height = v33;
  v105.origin.y = -3.40282347e38;
  v105.size.height = INFINITY;
  v105.origin.x = v17;
  v105.size.width = v24;
  v106 = CGRectIntersection(v105, v110);
  width = v106.size.width;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v35 = qword_1EA84DC68;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    objc_msgSend_bounds(v10, v36, v37, v38, v39, v40);
    v42 = "false";
    if (a3)
    {
      v42 = "true";
    }

    v98 = 136315650;
    v99 = v42;
    v100 = 2048;
    v101 = width;
    v102 = 2048;
    v103 = width / v41;
    _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_DEBUG, "scoreStemEntry (below=%s): horizontalOverlap: %f -> %f", &v98, 0x20u);
  }

  objc_msgSend_bounds(v10, v43, v44, v45, v46, v47);
  v54 = -1.0;
  if (width >= v53 * 0.6)
  {
    objc_msgSend_bounds(v10, v48, v49, v50, v51, v52);
    MaxY = CGRectGetMaxY(v107);
    objc_msgSend_bounds(v9, v56, v57, v58, v59, v60);
    if (a3)
    {
      v65 = MaxY > CGRectGetMaxY(*&v61);
      objc_msgSend_bounds(v10, v66, v67, v68, v69, v70);
      MinY = CGRectGetMinY(v108);
      objc_msgSend_bounds(v9, v72, v73, v74, v75, v76);
    }

    else
    {
      v65 = MaxY < CGRectGetMaxY(*&v61);
      objc_msgSend_bounds(v9, v81, v82, v83, v84, v85);
      MinY = CGRectGetMinY(v109);
      objc_msgSend_bounds(v10, v86, v87, v88, v89, v90);
    }

    v91 = MinY - CGRectGetMaxY(*&v77);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v92 = v91 / a5;
    v93 = qword_1EA84DC68;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
    {
      v94 = "false";
      v98 = 136315650;
      if (a3)
      {
        v94 = "true";
      }

      v99 = v94;
      v100 = 2048;
      v101 = v91;
      v102 = 2048;
      v103 = v92;
      _os_log_impl(&dword_18366B000, v93, OS_LOG_TYPE_DEBUG, "scoreStemEntry (below=%s): verticalDistanceFromStem: %f -> %f", &v98, 0x20u);
    }

    if (a4)
    {
      if (v92 > -0.6 && v92 <= 0.0)
      {
        v54 = 100.0;
        goto LABEL_31;
      }
    }

    else if (v92 <= 0.0 && v65)
    {
      v54 = fabs(v92) + 100.0;
      goto LABEL_31;
    }

    v95 = 3.0;
    if (a3)
    {
      v95 = 1.5;
    }

    if (v92 >= v95 || v92 <= 0.0)
    {
      v54 = -3.0;
    }

    else
    {
      v54 = 4.0 - v92;
    }
  }

LABEL_31:

  return v54;
}

void sub_1838E00B4(uint64_t a1, id **a2, id **a3, id **a4, void *a5, void *a6)
{
  v213 = *MEMORY[0x1E69E9840];
  v181 = a5;
  v192 = a6;
  *a1 = 0;
  location = a1;
  *(a1 + 16) = 0;
  v182 = objc_msgSend_set(MEMORY[0x1E695DFA8], v9, v10, v11, v12, v13);
  v19 = *a2;
  v184 = a2[1];
  v186 = a2;
  if (*a2 != v184)
  {
    v20 = 0.0;
    do
    {
      v188 = v19;
      v21 = *v19;
      v22 = MEMORY[0x1E696AD98];
      v28 = objc_msgSend_uniqueIdentifier(v21, v23, v24, v25, v26, v27);
      v33 = objc_msgSend_numberWithInteger_(v22, v29, v28, v30, v31, v32);
      v38 = objc_msgSend_objectForKeyedSubscript_(v192, v34, v33, v35, v36, v37);
      v44 = objc_msgSend_mathResult(v38, v39, v40, v41, v42, v43);

      if (v44)
      {
        v50 = MEMORY[0x1E696AD98];
        v51 = objc_msgSend_uniqueIdentifier(v21, v45, v46, v47, v48, v49);
        v56 = objc_msgSend_numberWithInteger_(v50, v52, v51, v53, v54, v55);
        v61 = objc_msgSend_objectForKeyedSubscript_(v192, v57, v56, v58, v59, v60);
        v67 = objc_msgSend_mathResult(v61, v62, v63, v64, v65, v66);
        objc_msgSend_baseCharacterHeight(v67, v68, v69, v70, v71, v72);
        v74 = v73;
      }

      else
      {
        v74 = 9.22337204e18;
      }

      obj &= 0xFFFFFFFFFFFFFF00;
      v75 = *a3;
      v76 = a3[1];
      if (*a3 == v76)
      {
        v191 = 0;
        v78 = 0.0;
        v114 = *a3;
        v77 = 0.0;
      }

      else
      {
        v191 = 0;
        v77 = 0.0;
        v78 = 0.0;
        do
        {
          v79 = *v75;
          v80 = MEMORY[0x1E696AD98];
          v86 = objc_msgSend_uniqueIdentifier(v79, v81, v82, v83, v84, v85);
          v91 = objc_msgSend_numberWithInteger_(v80, v87, v86, v88, v89, v90);
          v96 = objc_msgSend_objectForKeyedSubscript_(v192, v92, v91, v93, v94, v95);
          v102 = objc_msgSend_mathResult(v96, v97, v98, v99, v100, v101);
          objc_msgSend_baseCharacterHeight(v102, v103, v104, v105, v106, v107);
          v109 = v108;

          if (v74 == 9.22337204e18)
          {
            v110 = v109;
          }

          else
          {
            v110 = v74;
          }

          v111 = sub_1838DFCF8(v21, v79, 0, v44 == 0, v110);
          if (v111 > v77)
          {
            v112 = v21;
            v113 = v79;
            if (v191)
            {
            }

            else
            {
              v191 = 1;
            }

            v189 = v113;
            obj = v112;
            v77 = v111;
          }

          v78 = v78 + v109;
          ++v75;
        }

        while (v75 != v76);
        v75 = *a3;
        v114 = a3[1];
      }

      if (v74 == 9.22337204e18)
      {
        v74 = v78 / (v114 - v75);
      }

      v115 = *a4;
      v116 = a4[1];
      if (*a4 != v116)
      {
        while (1)
        {
          v117 = *v115;
          if (sub_1838DFCF8(v21, v117, 0, 1, v74) > v77)
          {
            break;
          }

          if (++v115 == v116)
          {
            goto LABEL_28;
          }
        }

        if (v191)
        {

          v191 = 0;
        }

        objc_msgSend_addObject_(v182, v118, v21, v119, v120, v121);
      }

LABEL_28:
      if ((v191 & 1) == 0)
      {
        goto LABEL_49;
      }

      v122 = MEMORY[0x1E696AD98];
      v123 = objc_msgSend_uniqueIdentifier(v21, v45, v46, v47, v48, v49);
      v128 = objc_msgSend_numberWithInteger_(v122, v124, v123, v125, v126, v127);
      v133 = objc_msgSend_objectForKeyedSubscript_(v192, v129, v128, v130, v131, v132);
      v139 = objc_msgSend_mathResult(v133, v134, v135, v136, v137, v138);

      if (v139)
      {
        v204[0] = 0;
        v204[1] = v204;
        v204[2] = 0x2020000000;
        v205 = 1;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v207 = 0x5012000000;
        v208 = sub_1838E0A98;
        v209 = nullsub_66;
        v210 = &unk_183A5AC72;
        v144 = *(MEMORY[0x1E695F050] + 16);
        v211 = *MEMORY[0x1E695F050];
        v212 = v144;
        v200 = 0;
        v201 = &v200;
        v202 = 0x2020000000;
        v203 = 1;
        v198[0] = 0;
        v198[1] = v198;
        v198[2] = 0x2020000000;
        v199 = 0;
        v194 = 0;
        v195 = &v194;
        v196 = 0x2020000000;
        v197 = 0;
        v193[0] = MEMORY[0x1E69E9820];
        v193[1] = 3221225472;
        v193[2] = sub_1838E0AA8;
        v193[3] = &unk_1E6DDF8F8;
        v193[4] = v204;
        v193[5] = v198;
        v193[6] = &v194;
        v193[7] = &buf;
        v193[8] = &v200;
        objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v139, v140, v193, v141, v142, v143);
        objc_msgSend_bounds(v189, v145, v146, v147, v148, v149);
        Width = CGRectGetWidth(v214);
        v156 = v74 / 3.0;
        if ((v195[3] & 1) != 0 || v201[3] > 1 || (v157 = 0.0, Width < v156))
        {
          v157 = v74 / 3.0;
        }

        objc_msgSend_bounds(v189, v150, v151, v152, v153, v154, Width, v156);
        MinX = CGRectGetMinX(v215);
        if (MinX > v157 + CGRectGetMaxX(*(*(&buf + 1) + 48)))
        {

          objc_msgSend_addObject_(v182, v159, v21, v160, v161, v162);
          v191 = 0;
        }

        _Block_object_dispose(&v194, 8);
        _Block_object_dispose(v198, 8);
        _Block_object_dispose(&v200, 8);
        _Block_object_dispose(&buf, 8);
        _Block_object_dispose(v204, 8);
      }

      if ((v191 & 1) != 0 && v77 > v20)
      {
        if (*(a1 + 16) == v191)
        {
          if (*(a1 + 16))
          {
            objc_storeStrong(a1, obj);
            objc_storeStrong((a1 + 8), v189);
          }
        }

        else if (*(a1 + 16))
        {

          *(a1 + 16) = 0;
        }

        else
        {
          *a1 = obj;
          *(a1 + 8) = v189;
          *(a1 + 16) = 1;
        }

        v20 = v77;
      }

      else if ((v191 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_49:
      v19 = v188 + 1;
      a2 = v186;
    }

    while (v188 + 1 != v184);
  }

  if (objc_msgSend_count(v182, v14, v15, v16, v17, v18))
  {
    v163 = *a2;
    v164 = a2[1];
    v169 = v182;
    if (v163 != v164)
    {
      while ((objc_msgSend_containsObject_(v169, v165, *v163, v166, v167, v168) & 1) == 0)
      {
        if (++v163 == v164)
        {
          v163 = v164;
          goto LABEL_61;
        }
      }

      if (v163 != v164)
      {
        for (i = v163 + 1; i != v164; ++i)
        {
          if ((objc_msgSend_containsObject_(v169, v165, *i, v166, v167, v168) & 1) == 0)
          {
            v171 = *i;
            *i = 0;
            v172 = *v163;
            *v163 = v171;

            ++v163;
          }
        }
      }
    }

LABEL_61:

    v177 = v186[1];
    if (v163 != v177)
    {
      while (v177 != v163)
      {
        v178 = *--v177;
      }

      v186[1] = v163;
    }

    objc_msgSend_unionSet_(v181, v173, v169, v174, v175, v176);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v179 = qword_1EA84DC68;
  if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
  {
    if (*(location + 16))
    {
      v180 = "true";
    }

    else
    {
      v180 = "false";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v180;
    _os_log_impl(&dword_18366B000, v179, OS_LOG_TYPE_DEBUG, "findBestStemEntryPair: %s", &buf, 0xCu);
  }
}

void sub_1838E090C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  sub_1838E0C0C(a16);

  _Unwind_Resume(a1);
}

__n128 sub_1838E0A98(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1838E0AA8(void *a1, void *a2)
{
  v17 = a2;
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    if ((*(*(a1[5] + 8) + 24) & 1) == 0 && (objc_msgSend_properties(v17, v3, v4, v5, v6, v7) & 0x8000) == 0 && (objc_msgSend_properties(v17, v3, v4, v5, v6, v7) & 1) == 0)
    {
      *(*(a1[6] + 8) + 24) = (objc_msgSend_properties(v17, v3, v4, v5, v6, v7) & 8) != 0;
      *(*(a1[5] + 8) + 24) = 1;
    }

    if ((objc_msgSend_properties(v17, v3, v4, v5, v6, v7) & 0x8000) == 0)
    {
      v8 = *(a1[7] + 8);
      v9 = v8[6];
      v10 = v8[7];
      v11 = v8[8];
      v12 = v8[9];
      objc_msgSend_bounds(v17, v3, v4, v5, v6, v7);
      v20.origin.x = v13;
      v20.origin.y = v14;
      v20.size.width = v15;
      v20.size.height = v16;
      v19.origin.x = v9;
      v19.origin.y = v10;
      v19.size.width = v11;
      v19.size.height = v12;
      *(*(a1[7] + 8) + 48) = CGRectUnion(v19, v20);
    }
  }

  if ((objc_msgSend_properties(v17, v3, v4, v5, v6, v7) & 0x4000) != 0)
  {
    *(*(a1[4] + 8) + 24) = 0;
    ++*(*(a1[8] + 8) + 24);
  }
}

uint64_t sub_1838E0C0C(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
  }

  return a1;
}

void sub_1838E25B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _Unwind_Exception *exception_objecta, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char *a61, uint64_t a62, uint64_t a63)
{
  if (*(v75 - 160) == 1)
  {
  }

  sub_1838EF034(a71);
  if (__p)
  {
    v76 = a68;
    v77 = __p;
    if (a68 != __p)
    {
      do
      {
        v78 = *(v76 - 1);
        v76 -= 8;
      }

      while (v76 != __p);
      v77 = __p;
    }

    operator delete(v77);
  }

  if (a64)
  {
    v79 = a65;
    v80 = a64;
    if (a65 != a64)
    {
      do
      {
        v81 = *(v79 - 1);
        v79 -= 8;
      }

      while (v79 != a64);
      v80 = a64;
    }

    operator delete(v80);
  }

  if (a61)
  {
    v82 = a62;
    v83 = a61;
    if (a62 != a61)
    {
      do
      {
        v84 = *(v82 - 1);
        v82 -= 8;
      }

      while (v82 != a61);
      v83 = a61;
    }

    operator delete(v83);
  }

  _Unwind_Resume(a1);
}

void sub_1838E2AF0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v370 = *MEMORY[0x1E69E9840];
  v340 = a2;
  v339 = a3;
  v338 = a4;
  v344 = a6;
  v346 = a1;
  if (a1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v12 = qword_1EA84DC68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v365 = objc_msgSend_count(v340, v13, v14, v15, v16, v17);
      v366 = 2112;
      v367 = v339;
      v368 = 2112;
      v369 = v338;
      _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_DEBUG, "mergeVerticalMathEntries: %lu entries with stem: %@, result: %@", buf, 0x20u);
    }

    v347 = objc_msgSend_set(MEMORY[0x1E695DFA8], v18, v19, v20, v21, v22);
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    if (objc_msgSend_count(v340, v27, v28, v29, v30, v31))
    {
      v37 = objc_msgSend_firstObject(v340, v32, v33, v34, v35, v36);
      v337 = objc_msgSend_firstStrokeIdentifier(v37, v38, v39, v40, v41, v42);

      v48 = objc_msgSend_firstObject(v340, v43, v44, v45, v46, v47);
      v335 = objc_msgSend_lastStrokeIdentifier(v48, v49, v50, v51, v52, v53);

      v59 = objc_msgSend_firstObject(v340, v54, v55, v56, v57, v58);
      objc_msgSend_firstStrokeOrigin(v59, v60, v61, v62, v63, v64);
      v66 = v65;
      v68 = v67;
    }

    else
    {
      v74 = objc_msgSend_firstStrokeIdentifier(v339, v32, v33, v34, v35, v36);
      v335 = objc_msgSend_lastStrokeIdentifier(v339, v75, v76, v77, v78, v79);
      objc_msgSend_firstStrokeOrigin(v339, v80, v81, v82, v83, v84);
      v66 = v85;
      v68 = v86;
      v337 = v74;
    }

    v87 = objc_msgSend_mutableCopy(v340, v69, v70, v71, v72, v73);
    objc_msgSend_addObject_(v87, v88, v339, v89, v90, v91);
    if (v338)
    {
      objc_msgSend_addObject_(v87, v92, v338, v93, v94, v95);
    }

    v357 = 0u;
    v358 = 0u;
    v355 = 0u;
    v356 = 0u;
    obj = v87;
    v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v96, &v355, v363, 16, v97);
    if (v103)
    {
      v104 = *v356;
      v105 = 1.0;
      do
      {
        for (i = 0; i != v103; ++i)
        {
          if (*v356 != v104)
          {
            objc_enumerationMutation(obj);
          }

          v107 = *(*(&v355 + 1) + 8 * i);
          v108 = objc_msgSend_strokeIdentifiers(v107, v98, v99, v100, v101, v102);
          objc_msgSend_unionSet_(v347, v109, v108, v110, v111, v112);

          objc_msgSend_bounds(v107, v113, v114, v115, v116, v117);
          v373.origin.x = v118;
          v373.origin.y = v119;
          v373.size.width = v120;
          v373.size.height = v121;
          v371.origin.x = x;
          v371.origin.y = y;
          v371.size.width = width;
          v371.size.height = height;
          v372 = CGRectUnion(v371, v373);
          x = v372.origin.x;
          y = v372.origin.y;
          width = v372.size.width;
          height = v372.size.height;
          objc_msgSend_groupingConfidence(v107, v122, v123, v124, v125, v126);
          v105 = v105 * v127;
        }

        v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v98, &v355, v363, 16, v102);
      }

      while (v103);
    }

    else
    {
      v105 = 1.0;
    }

    v133 = objc_msgSend_groupingManager(v346, v128, v129, v130, v131, v132);
    v134 = v133 == 0;

    objc_msgSend_allObjects(v347, v135, v136, v137, v138, v139);
    if (v134)
      v345 = {;
    }

    else
      v140 = {;
      v354[0] = MEMORY[0x1E69E9820];
      v354[1] = 3221225472;
      v354[2] = sub_1838E46F0;
      v354[3] = &unk_1E6DDCA70;
      v354[4] = v346;
      v345 = objc_msgSend_sortedArrayUsingComparator_(v140, v141, v354, v142, v143, v144);
    }

    v145 = [CHStrokeGroup alloc];
    StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v145, v146, v347, v337, v335, 3, @"CHGroupingPostProcessingManager", x, y, width, height, v105, v66, v68);
    if (!objc_msgSend_saveInputDrawings(v346, v147, v148, v149, v150, v151) || (objc_msgSend_groupingManager(v346, v152, v153, v154, v155, v156), v157 = objc_claimAutoreleasedReturnValue(), v158 = v157 == 0, v157, v158))
    {
      v334 = 0;
    }

    else
    {
      v159 = objc_msgSend_groupingManager(v346, v152, v153, v154, v155, v156);
      v334 = objc_msgSend_recognizableDrawingForStrokeGroup_translationVector_originalDrawing_orderedStrokesIDs_rescalingFactor_replacementStrokeGroup_(v159, v160, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, 0, 0, 0, 0, 0.0, 0.0);
    }

    v349 = objc_msgSend_array(MEMORY[0x1E695DF70], v152, v153, v154, v155, v156);
    v352 = 0u;
    v353 = 0u;
    v350 = 0u;
    v351 = 0u;
    v341 = v340;
    v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(v341, v161, &v350, v362, 16, v162);
    if (v168)
    {
      v343 = *v351;
      v169 = (a5 + 8);
      do
      {
        for (j = 0; j != v168; ++j)
        {
          if (*v351 != v343)
          {
            objc_enumerationMutation(v341);
          }

          v171 = *(*(&v350 + 1) + 8 * j);
          v172 = MEMORY[0x1E696AD98];
          v173 = objc_msgSend_uniqueIdentifier(v171, v163, v164, v165, v166, v167);
          v178 = objc_msgSend_numberWithInteger_(v172, v174, v173, v175, v176, v177);
          v183 = objc_msgSend_objectForKeyedSubscript_(v344, v179, v178, v180, v181, v182);

          v189 = objc_msgSend_uniqueIdentifier(v171, v184, v185, v186, v187, v188);
          v190 = *v169;
          if (!*v169)
          {
LABEL_38:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v191 = v190;
              v192 = v190[4];
              if (v189 >= v192)
              {
                break;
              }

              v190 = *v191;
              if (!*v191)
              {
                goto LABEL_38;
              }
            }

            if (v192 >= v189)
            {
              break;
            }

            v190 = v191[1];
            if (!v190)
            {
              goto LABEL_38;
            }
          }

          sub_1838E3E18(v346, v183, v349, v191 + 5, v345);
          v193 = [CHTokenizedMathResultToken alloc];
          v199 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v194, v195, v196, v197, v198);
          v202 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v193, v200, @"\\\", v199, 0x4000, v201, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
          v360 = v202;
          v206 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v203, &v360, 1, v204, v205);
          v361 = v206;
          v210 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v207, &v361, 1, v208, v209);
          objc_msgSend_addObject_(v349, v211, v210, v212, v213, v214);
        }

        v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(v341, v163, &v350, v362, 16, v167);
      }

      while (v168);
    }

    v215 = MEMORY[0x1E696AD98];
    v221 = objc_msgSend_uniqueIdentifier(v339, v216, v217, v218, v219, v220);
    v226 = objc_msgSend_numberWithInteger_(v215, v222, v221, v223, v224, v225);
    v231 = objc_msgSend_objectForKeyedSubscript_(v344, v227, v226, v228, v229, v230);

    v237 = objc_msgSend_mathResult(v231, v232, v233, v234, v235, v236);
    LOBYTE(v226) = v237 == 0;

    if (v226)
    {
      v247 = objc_msgSend_array(MEMORY[0x1E695DF70], v238, v239, v240, v241, v242);
      v248 = [CHTokenizedMathResultToken alloc];
      v253 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v249, 0, v250, v251, v252);
      objc_msgSend_bounds(v339, v254, v255, v256, v257, v258);
      v265 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v248, v259, @"\\hline", v253, 0x20000, v260, 1.0, v261, v262, v263, v264);

      sub_1838E3C00(v346, v265, v231, v247, v345);
      v359 = v247;
      v269 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v266, &v359, 1, v267, v268);
      objc_msgSend_addObject_(v349, v270, v269, v271, v272, v273);
    }

    else
    {
      v243 = objc_msgSend_uniqueIdentifier(v339, v238, v239, v240, v241, v242);
      v244 = *(a5 + 8);
      if (!v244)
      {
LABEL_48:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v245 = v244;
          v246 = v244[4];
          if (v243 >= v246)
          {
            break;
          }

          v244 = *v245;
          if (!*v245)
          {
            goto LABEL_48;
          }
        }

        if (v246 >= v243)
        {
          break;
        }

        v244 = v245[1];
        if (!v244)
        {
          goto LABEL_48;
        }
      }

      sub_1838E3E18(v346, v231, v349, v245 + 5, v345);
    }

    if (v338)
    {
      v279 = MEMORY[0x1E696AD98];
      v280 = objc_msgSend_uniqueIdentifier(v338, v274, v275, v276, v277, v278);
      v285 = objc_msgSend_numberWithInteger_(v279, v281, v280, v282, v283, v284);
      v290 = objc_msgSend_objectForKeyedSubscript_(v344, v286, v285, v287, v288, v289);

      v296 = objc_msgSend_uniqueIdentifier(v338, v291, v292, v293, v294, v295);
      v297 = *(a5 + 8);
      if (!v297)
      {
LABEL_58:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v298 = v297;
          v299 = v297[4];
          if (v296 >= v299)
          {
            break;
          }

          v297 = *v298;
          if (!*v298)
          {
            goto LABEL_58;
          }
        }

        if (v299 >= v296)
        {
          break;
        }

        v297 = v298[1];
        if (!v297)
        {
          goto LABEL_58;
        }
      }

      sub_1838E3E18(v346, v290, v349, v298 + 5, v345);
    }

    v300 = [CHTokenizedMathResult alloc];
    v305 = objc_msgSend_initWithSegmentedBestPathTokens_(v300, v301, v349, v302, v303, v304);
    v306 = [CHStrokeGroupRecognitionResult alloc];
    v308 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_inputDrawing_inputDrawingCutPoints_(v306, v307, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], v305, v345, 1, v334, 0);
    v314 = objc_msgSend_transcriptionPaths(v305, v309, v310, v311, v312, v313);
    v320 = objc_msgSend_count(v314, v315, v316, v317, v318, v319);
    if (v320)
    {
      if (!(v320 >> 61))
      {
        operator new();
      }

      sub_18368964C();
    }

    v326 = objc_msgSend_uniqueIdentifier(StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v321, v322, v323, v324, v325);
    v327 = *(a5 + 8);
    if (!v327)
    {
LABEL_69:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v328 = v327;
        v329 = *(v327 + 4);
        if (v326 >= v329)
        {
          break;
        }

        v327 = *v328;
        if (!*v328)
        {
          goto LABEL_69;
        }
      }

      if (v329 >= v326)
      {
        break;
      }

      v327 = v328[1];
      if (!v327)
      {
        goto LABEL_69;
      }
    }

    sub_18368A3D8(v328 + 5, 0, 0, 0);
    if (a7)
    {
      v330 = StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin;
      *a7 = StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin;
    }

    if (a8)
    {
      v331 = v308;
      *a8 = v308;
    }
  }
}

void sub_1838E3C00(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v78 = a2;
  v9 = a3;
  v10 = a4;
  v16 = a5;
  if (a1)
  {
    v17 = objc_msgSend_strokeIndexes(v78, v11, v12, v13, v14, v15);
    v23 = objc_msgSend_inputStrokeIdentifiers(v9, v18, v19, v20, v21, v22);
    v26 = objc_msgSend_remappedStrokeIndexes_originalStrokeIdentifiersOrdering_newStrokeIdentifiersOrdering_(CHGroupingPostprocessingStep, v24, v17, v23, v16, v25);

    v27 = [CHTokenizedMathResultToken alloc];
    v33 = objc_msgSend_string(v78, v28, v29, v30, v31, v32);
    objc_msgSend_score(v78, v34, v35, v36, v37, v38);
    v40 = v39;
    objc_msgSend_bounds(v78, v41, v42, v43, v44, v45);
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v59 = objc_msgSend_properties(v78, v54, v55, v56, v57, v58);
    v65 = objc_msgSend_maskedAlternative(v78, v60, v61, v62, v63, v64);
    objc_msgSend_maskedAlternativeScore(v78, v66, v67, v68, v69, v70);
    v73 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v27, v71, v33, v26, v59, v65, v40, v47, v49, v51, v53, v72);

    objc_msgSend_addObject_(v10, v74, v73, v75, v76, v77);
  }
}

void sub_1838E3E18(uint64_t a1, void *a2, void *a3, uint64_t **a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v345 = a5;
  v346 = v8;
  v347 = objc_msgSend_mathResult(v8, v10, v11, v12, v13, v14);
  v341 = v9;
  v344 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17, v18, v19);
  v25 = *a4;
  v342 = a4[1];
  if (*a4 != v342)
  {
    while (1)
    {
      v26 = *v25;
      v27 = objc_msgSend_array(MEMORY[0x1E695DF70], v20, v21, v22, v23, v24);
      v33 = objc_msgSend_transcriptionPaths(v347, v28, v29, v30, v31, v32);
      v38 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, v26, v35, v36, v37);
      v44 = objc_msgSend_tokenColumnCount(v347, v39, v40, v41, v42, v43);
      v348[0] = MEMORY[0x1E69E9820];
      v348[1] = 3221225472;
      v348[2] = sub_1838E46E0;
      v348[3] = &unk_1E6DDF920;
      v348[4] = a1;
      v349 = v346;
      v45 = v27;
      v350 = v45;
      v351 = v345;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v347, v46, v38, 0, v44, v348);

      v47 = v45;
      v53 = objc_msgSend_firstObject(v47, v48, v49, v50, v51, v52);
      LOWORD(v38) = objc_msgSend_properties(v53, v54, v55, v56, v57, v58);

      v64 = v47;
      if ((v38 & 0x8000) != 0)
      {
        v64 = objc_msgSend_array(MEMORY[0x1E695DF70], v59, v60, v61, v62, v63);
        v75 = objc_msgSend_firstObject(v47, v65, v66, v67, v68, v69);
        for (i = 2; i < objc_msgSend_count(v47, v70, v71, v72, v73, v74) - 3; ++i)
        {
          v81 = objc_msgSend_objectAtIndexedSubscript_(v47, v77, i, v78, v79, v80);
          objc_msgSend_addObject_(v64, v82, v81, v83, v84, v85);
        }

        v86 = [CHTokenizedMathResultToken alloc];
        v92 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v87, v88, v89, v90, v91);
        v95 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v86, v93, @"\\\", v92, 0x4000, v94, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
        objc_msgSend_addObject_(v64, v96, v95, v97, v98, v99);

        v100 = [CHTokenizedMathResultToken alloc];
        v106 = objc_msgSend_strokeIndexes(v75, v101, v102, v103, v104, v105);
        objc_msgSend_score(v75, v107, v108, v109, v110, v111);
        v113 = v112;
        objc_msgSend_bounds(v75, v114, v115, v116, v117, v118);
        v125 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v100, v119, @"\\hline", v106, 0x20000, v120, v113, v121, v122, v123, v124);
        objc_msgSend_addObject_(v64, v126, v125, v127, v128, v129);
      }

      if (objc_msgSend_count(v64, v130, v131, v132, v133, v134))
      {
        break;
      }

LABEL_25:
      objc_msgSend_addObject_(v344, v135, v64, v136, v137, v138);

      if (++v25 == v342)
      {
        goto LABEL_26;
      }
    }

    v139 = objc_msgSend_objectAtIndexedSubscript_(v64, v135, 0, v136, v137, v138);
    v145 = objc_msgSend_string(v139, v140, v141, v142, v143, v144);
    v151 = objc_msgSend_lowercaseString(v145, v146, v147, v148, v149, v150);
    if (!objc_msgSend_isEqualToString_(v151, v152, @"z", v153, v154, v155) || (objc_msgSend_properties(v139, v156, v157, v158, v159, v160) & 0x40) != 0)
    {
    }

    else
    {
      v166 = objc_msgSend_properties(v139, v161, v162, v163, v164, v165);

      if (v166 < 0)
      {
LABEL_14:

        for (j = 1; ; ++j)
        {
          if (j >= objc_msgSend_count(v64, v210, v211, v212, v213, v214))
          {
            goto LABEL_25;
          }

          v216 = objc_msgSend_objectAtIndexedSubscript_(v64, v135, j, v136, v137, v138);
          v222 = objc_msgSend_string(v216, v217, v218, v219, v220, v221);
          isEqualToString = objc_msgSend_isEqualToString_(v222, v223, @"\\cdot", v224, v225, v226);

          if (isEqualToString)
          {
            break;
          }

          v273 = objc_msgSend_string(v216, v228, v229, v230, v231, v232);
          v282 = objc_msgSend_lowercaseString(v273, v277, v278, v279, v280, v281);
          if (!objc_msgSend_isEqualToString_(v282, v283, @"z", v284, v285, v286) || (objc_msgSend_properties(v216, v287, v288, v289, v290, v291) & 0x40) != 0)
          {

LABEL_16:
            goto LABEL_17;
          }

          v297 = objc_msgSend_properties(v216, v292, v293, v294, v295, v296);

          if ((v297 & 0x80) == 0)
          {
            v298 = [CHTokenizedMathResultToken alloc];
            v304 = objc_msgSend_strokeIndexes(v216, v299, v300, v301, v302, v303);
            objc_msgSend_score(v216, v305, v306, v307, v308, v309);
            v311 = v310;
            objc_msgSend_bounds(v216, v312, v313, v314, v315, v316);
            v318 = v317;
            v320 = v319;
            v322 = v321;
            v324 = v323;
            v330 = objc_msgSend_maskedAlternative(v216, v325, v326, v327, v328, v329);
            objc_msgSend_maskedAlternativeScore(v216, v331, v332, v333, v334, v335);
            v273 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v298, v336, @"2", v304, 2, v330, v311, v318, v320, v322, v324, v337);

            objc_msgSend_setObject_atIndexedSubscript_(v64, v338, v273, j, v339, v340);
            goto LABEL_16;
          }

LABEL_17:
        }

        v233 = [CHTokenizedMathResultToken alloc];
        v239 = objc_msgSend_strokeIndexes(v216, v234, v235, v236, v237, v238);
        objc_msgSend_score(v216, v240, v241, v242, v243, v244);
        v246 = v245;
        objc_msgSend_bounds(v216, v247, v248, v249, v250, v251);
        v253 = v252;
        v255 = v254;
        v257 = v256;
        v259 = v258;
        v265 = objc_msgSend_maskedAlternative(v216, v260, v261, v262, v263, v264);
        objc_msgSend_maskedAlternativeScore(v216, v266, v267, v268, v269, v270);
        v273 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v233, v271, @".", v239, 4, v265, v246, v253, v255, v257, v259, v272);

        objc_msgSend_setObject_atIndexedSubscript_(v64, v274, v273, j, v275, v276);
        goto LABEL_16;
      }

      v167 = [CHTokenizedMathResultToken alloc];
      v173 = objc_msgSend_strokeIndexes(v139, v168, v169, v170, v171, v172);
      objc_msgSend_score(v139, v174, v175, v176, v177, v178);
      v180 = v179;
      objc_msgSend_bounds(v139, v181, v182, v183, v184, v185);
      v187 = v186;
      v189 = v188;
      v191 = v190;
      v193 = v192;
      v199 = objc_msgSend_maskedAlternative(v139, v194, v195, v196, v197, v198);
      objc_msgSend_maskedAlternativeScore(v139, v200, v201, v202, v203, v204);
      v145 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v167, v205, @"2", v173, 2, v199, v180, v187, v189, v191, v193, v206);

      objc_msgSend_setObject_atIndexedSubscript_(v64, v207, v145, 0, v208, v209);
    }

    goto LABEL_14;
  }

LABEL_26:
  objc_msgSend_addObject_(v341, v20, v344, v22, v23, v24);
}

uint64_t sub_1838E46F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = objc_msgSend_groupingManager(*(a1 + 32), v7, v8, v9, v10, v11);
  v18 = objc_msgSend_strokeProvider(v12, v13, v14, v15, v16, v17);
  v23 = objc_msgSend_strokeIdentifierFromData_(v18, v19, v5, v20, v21, v22);

  v29 = objc_msgSend_groupingManager(*(a1 + 32), v24, v25, v26, v27, v28);
  v35 = objc_msgSend_strokeProvider(v29, v30, v31, v32, v33, v34);
  v40 = objc_msgSend_strokeIdentifierFromData_(v35, v36, v6, v37, v38, v39);

  v46 = objc_msgSend_groupingManager(*(a1 + 32), v41, v42, v43, v44, v45);
  v52 = objc_msgSend_strokeProvider(v46, v47, v48, v49, v50, v51);
  v56 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v52, v53, v23, v40, v54, v55);

  return v56;
}

void sub_1838E48BC(uint64_t a1, void *a2)
{
  v25 = a2;
  v8 = objc_msgSend_string(v25, v3, v4, v5, v6, v7);
  if (objc_msgSend_isEqualToString_(v8, v9, @"\\\", v10, v11, v12))
  {
    v18 = objc_msgSend_strokeIndexes(v25, v13, v14, v15, v16, v17);
    v24 = objc_msgSend_count(v18, v19, v20, v21, v22, v23);

    if (v24)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {
  }
}

id sub_1838E9890(void *a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1)
  {
    a1 = objc_msgSend_objectForKey_(v3, v4, qword_1EA84BB50, v5, v6, v7);
    if (!a1)
    {
      v13 = MEMORY[0x1E695DEC8];
      v14 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v9, @"en_US", v10, v11, v12);
      a1 = objc_msgSend_arrayWithObject_(v13, v15, v14, v16, v17, v18);
    }
  }

  return a1;
}

uint64_t sub_1838E9968(void **a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v333 = a4;
  v330 = a1;
  if (a1)
  {
    v14 = objc_msgSend_set(MEMORY[0x1E695DFA8], v9, v10, v11, v12, v13);
    v20 = objc_msgSend_firstObject(v7, v15, v16, v17, v18, v19);
    v332 = objc_msgSend_firstStrokeIdentifier(v20, v21, v22, v23, v24, v25);

    v31 = objc_msgSend_lastObject(v7, v26, v27, v28, v29, v30);
    v331 = objc_msgSend_lastStrokeIdentifier(v31, v32, v33, v34, v35, v36);

    v42 = objc_msgSend_firstObject(v7, v37, v38, v39, v40, v41);
    objc_msgSend_bounds(v42, v43, v44, v45, v46, v47);
    v49 = v48;
    v51 = v50;

    v52 = *MEMORY[0x1E695F050];
    v53 = *(MEMORY[0x1E695F050] + 8);
    v54 = *(MEMORY[0x1E695F050] + 16);
    v55 = *(MEMORY[0x1E695F050] + 24);
    v64 = objc_msgSend_objectForKeyedSubscript_(v333, v56, qword_1EA84BB68, v57, v58, v59);
    if (v64)
    {
      v65 = objc_msgSend_objectForKeyedSubscript_(v333, v60, qword_1EA84BB68, v61, v62, v63);
      v71 = objc_msgSend_BOOLValue(v65, v66, v67, v68, v69, v70);
    }

    else
    {
      v71 = 0;
    }

    if (objc_msgSend_count(v7, v72, v73, v74, v75, v76) && ((objc_msgSend_objectAtIndexedSubscript_(v7, v77, 0, v78, v79, v80), v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend_strokeIdentifiers(v81, v82, v83, v84, v85, v86), v87 = objc_claimAutoreleasedReturnValue(), objc_msgSend_unionSet_(v14, v88, v87, v89, v90, v91), v87, objc_msgSend_bounds(v81, v92, v93, v94, v95, v96), v340.origin.x = v97, v340.origin.y = v98, v340.size.width = v99, v340.size.height = v100, v336.origin.x = v52, v336.origin.y = v53, v336.size.width = v54, v336.size.height = v55, v337 = CGRectUnion(v336, v340), x = v337.origin.x, y = v337.origin.y, width = v337.size.width, height = v337.size.height, !v8) ? (v105 = 0) : (v105 = *(v8 + 10)), v106 = v105, v107 = MEMORY[0x1E696AD98], v113 = objc_msgSend_uniqueIdentifier(v81, v108, v109, v110, v111, v112), objc_msgSend_numberWithInteger_(v107, v114, v113, v115, v116, v117), v118 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v106, v119, v118, v120, v121, v122), v123 = objc_claimAutoreleasedReturnValue(), v118, v106, v81, v123))
    {
      v129 = 1;
      while (v129 < objc_msgSend_count(v7, v124, v125, v126, v127, v128))
      {
        v135 = objc_msgSend_objectAtIndexedSubscript_(v7, v130, v129, v132, v133, v134);
        v141 = objc_msgSend_strokeIdentifiers(v135, v136, v137, v138, v139, v140);
        objc_msgSend_unionSet_(v14, v142, v141, v143, v144, v145);

        objc_msgSend_bounds(v135, v146, v147, v148, v149, v150);
        v341.origin.x = v151;
        v341.origin.y = v152;
        v341.size.width = v153;
        v341.size.height = v154;
        v338.origin.x = x;
        v338.origin.y = y;
        v338.size.width = width;
        v338.size.height = height;
        v339 = CGRectUnion(v338, v341);
        x = v339.origin.x;
        y = v339.origin.y;
        width = v339.size.width;
        height = v339.size.height;
        if (v8)
        {
          v155 = *(v8 + 10);
        }

        else
        {
          v155 = 0;
        }

        v156 = v155;
        v157 = MEMORY[0x1E696AD98];
        v163 = objc_msgSend_uniqueIdentifier(v135, v158, v159, v160, v161, v162);
        v168 = objc_msgSend_numberWithInteger_(v157, v164, v163, v165, v166, v167);
        v173 = objc_msgSend_objectForKeyedSubscript_(v156, v169, v168, v170, v171, v172);

        v177 = objc_msgSend_mathStrokeGroupRecognitionResultByAppendingStrokeGroupRecognitionResult_wrapTextResult_(v123, v174, v173, v71, v175, v176);

        ++v129;
        v123 = v177;
        if (!v177)
        {
          goto LABEL_45;
        }
      }

      v178 = objc_msgSend_mathResult(v123, v130, v131, v132, v133, v134);
      v184 = objc_msgSend_topTranscription(v178, v179, v180, v181, v182, v183);
      v189 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v185, v184, v186, v187, v188);

      v190 = v330;
      if (v330[3])
      {
        v191 = sub_1838E9890(v330, v333);
        isMathUnitConversionPatternForTextTranscription_locales = objc_msgSend_isMathUnitConversionPatternForTextTranscription_locales_(CHTokenizedMathResult, v192, v189, v191, v193, v194);

        if (isMathUnitConversionPatternForTextTranscription_locales)
        {
          v196 = v123;
          v197 = v333;
          v328 = v189;
          v203 = objc_msgSend_mathResult(v196, v198, v199, v200, v201, v202);

          if (v203)
          {
            v204 = [CHMathResultWithContext alloc];
            v210 = objc_msgSend_mathResult(v196, v205, v206, v207, v208, v209);
            v216 = objc_msgSend_set(MEMORY[0x1E695DFD8], v211, v212, v213, v214, v215);
            v220 = objc_msgSend_initWithResult_declaredVariables_(v204, v217, v210, v216, v218, v219);

            v224 = objc_msgSend_process_options_(v330[3], v221, v220, v197, v222, v223);

            v225 = [CHStrokeGroupRecognitionResult alloc];
            v231 = objc_msgSend_result(v224, v226, v227, v228, v229, v230);
            v237 = objc_msgSend_inputStrokeIdentifiers(v196, v232, v233, v234, v235, v236);
            v243 = objc_msgSend_processing(v196, v238, v239, v240, v241, v242);
            v245 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_(v225, v244, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], v231, v237, v243);
          }

          else
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v246 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v246, OS_LOG_TYPE_ERROR, "can't apply unit conversion postprocessing to strokeGroupRecognitionResult with no mathResult", buf, 2u);
            }

            v245 = v196;
          }

          v123 = v245;
          v189 = v328;
        }

        v190 = v330;
      }

      v247 = sub_1838EA43C(v190, v189);
      v248 = v247;
      if (v190[4])
      {
        v249 = v247 == 0;
      }

      else
      {
        v249 = 1;
      }

      if (!v249)
      {
        v250 = v123;
        v327 = v333;
        v251 = v248;
        v329 = v189;
        v257 = objc_msgSend_mathResult(v250, v252, v253, v254, v255, v256);

        if (v257)
        {
          v326 = v251;
          v258 = [CHMathResultWithContext alloc];
          v264 = objc_msgSend_mathResult(v250, v259, v260, v261, v262, v263);
          v269 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v265, v326, v266, v267, v268);
          v273 = objc_msgSend_initWithResult_declaredVariables_(v258, v270, v264, v269, v271, v272);

          v274 = v327;
          v278 = objc_msgSend_process_options_(v330[4], v275, v273, v327, v276, v277);

          v279 = [CHStrokeGroupRecognitionResult alloc];
          v285 = objc_msgSend_result(v278, v280, v281, v282, v283, v284);
          v291 = objc_msgSend_inputStrokeIdentifiers(v250, v286, v287, v288, v289, v290);
          v297 = objc_msgSend_processing(v250, v292, v293, v294, v295, v296);
          v299 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_(v279, v298, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8], v285, v291, v297);

          v251 = v326;
        }

        else
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v274 = v327;
          v300 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
          {
            *v335 = 0;
            _os_log_impl(&dword_18366B000, v300, OS_LOG_TYPE_ERROR, "can't apply variable assignment postprocessing to strokeGroupRecognitionResult with no mathResult", v335, 2u);
          }

          v299 = v250;
        }

        v123 = v299;
        v189 = v329;
      }

      v301 = [CHStrokeGroup alloc];
      StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v301, v302, v14, v332, v331, 3, @"CHMathStrokeGroupingStrategy", x, y, width, height, 1.0, v49, v51);
      if (v8)
      {
        objc_msgSend_addObject_(*(v8 + 9), v303, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v304, v305, v306);
      }

      else
      {
        objc_msgSend_addObject_(0, v303, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v304, v305, v306);
      }

      if (v8)
      {
        v308 = *(v8 + 10);
      }

      else
      {
        v308 = 0;
      }

      v309 = v308;
      v310 = MEMORY[0x1E696AD98];
      v316 = objc_msgSend_uniqueIdentifier(StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v311, v312, v313, v314, v315);
      v321 = objc_msgSend_numberWithInteger_(v310, v317, v316, v318, v319, v320);
      objc_msgSend_setObject_forKey_(v309, v322, v123, v321, v323, v324);

      v177 = 1;
    }

    else
    {
      v177 = 0;
    }

LABEL_45:
  }

  else
  {
    v177 = 0;
  }

  return v177;
}

id sub_1838EA43C(id a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (a1)
  {
    v8 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v3, v4, @" ", &stru_1EF1C0318, v5, v6);
    v15 = 0;
    isTextTranscriptionVariableAssignment_outVariable = objc_msgSend_isTextTranscriptionVariableAssignment_outVariable_(CHTokenizedTextResult, v9, v8, &v15, v10, v11);
    v13 = v15;

    if (isTextTranscriptionVariableAssignment_outVariable)
    {
      a1 = v13;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_1838EA51C(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_msgSend_bounds(v9, v3, v4, v5, v6, v7);
  *(*(*(a1 + 32) + 8) + 24) = v8 + *(*(*(a1 + 32) + 8) + 24);
  ++*(*(*(a1 + 40) + 8) + 24);
}

void sub_1838EA5A0(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_msgSend_bounds(v9, v3, v4, v5, v6, v7);
  *(*(*(a1 + 32) + 8) + 24) = v8 + *(*(*(a1 + 32) + 8) + 24);
  ++*(*(*(a1 + 40) + 8) + 24);
}

id sub_1838EBA28(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = *(a1 + 40);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v26, v30, 16, v6);
  if (v11)
  {
    v12 = *v27;
    do
    {
      v13 = 0;
      v14 = v3;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v4);
        }

        v15 = *(*(&v26 + 1) + 8 * v13);
        v16 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v7, v15, v8, v9, v10);
        v3 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v14, v17, v15, v16, v18, v19);

        ++v13;
        v14 = v3;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v26, v30, 16, v10);
    }

    while (v11);
  }

  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"\\text{%@}", v21, v22, v23, v3);

  return v24;
}

uint64_t sub_1838EBC04(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v13 = a2;
  v381 = a5;
  v378 = a6;
  v14 = a7;
  v15 = a8;
  v21 = objc_msgSend_strokeIndexes(v13, v16, v17, v18, v19, v20);
  v379 = v13;
  v26 = objc_msgSend_objectsAtIndexes_(v14, v22, v21, v23, v24, v25);

  v27 = [CHStrokeGroup alloc];
  v32 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v28, v26, v29, v30, v31);
  v38 = objc_msgSend_firstObject(v26, v33, v34, v35, v36, v37);
  v44 = objc_msgSend_lastObject(v26, v39, v40, v41, v42, v43);
  objc_msgSend_originalBounds(v379, v45, v46, v47, v48, v49);
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  objc_msgSend_originalBounds(v379, v58, v59, v60, v61, v62);
  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v27, v63, v32, v38, v44, 3, @"CHMathStrokeGroupingStrategy", v51, v53, v55, v57, 1.0, v64, v65);

  v72 = objc_msgSend_cachedRecognitionResultsFromPostProcessing(v15, v67, v68, v69, v70, v71);
  v78 = objc_msgSend_strokeIdentifiers(StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v73, v74, v75, v76, v77);
  v83 = objc_msgSend_objectForKeyedSubscript_(v72, v79, v78, v80, v81, v82);

  if (!v83)
  {
    v89 = (*(*(a1 + 24) + 16))();
    v95 = objc_msgSend_mathResult(v89, v90, v91, v92, v93, v94);

    if (!v95)
    {
      v389 = 0;
      goto LABEL_49;
    }

    v83 = v89;
  }

  v96 = objc_msgSend_mathResult(v83, v84, v85, v86, v87, v88);
  v377 = objc_msgSend_inputStrokeIdentifiers(v83, v97, v98, v99, v100, v101);
  v376 = StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin;
  v107 = objc_msgSend_strokeIdentifiers(StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v102, v103, v104, v105, v106);
  v108 = v83;
  v112 = v107;
  if (v15)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v15[1], v109, v108, v112, v110, v111);
    objc_msgSend_setObject_forKeyedSubscript_(v15[2], v113, v108, v112, v114, v115);
  }

  v369 = a1;

  v372 = v108;
  v121 = objc_msgSend_array(MEMORY[0x1E695DF70], v116, v117, v118, v119, v120);
  v374 = v26;
  v375 = v15;
  *&r1.size.width = MEMORY[0x1E69E9820];
  *&r1.size.height = 3221225472;
  v386 = sub_1838EC7E0;
  v387 = &unk_1E6DDBDA0;
  v122 = v121;
  v388 = v122;
  objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v96, v123, &r1.size, v124, v125, v126);
  v132 = objc_msgSend_string(MEMORY[0x1E696AD60], v127, v128, v129, v130, v131);
  v380 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v133, v134, v135, v136, v137);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v373 = v96;
  r1.origin.x = *MEMORY[0x1E695F050];
  if (v381)
  {
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v382 = 1.0;
    v384 = 1.0;
    v150 = 1;
    v368 = 0x800000;
    v151 = *(MEMORY[0x1E695F050] + 8);
    v152 = *(MEMORY[0x1E695F050] + 16);
    v153 = *(MEMORY[0x1E695F050] + 24);
    while (1)
    {
      if (v147 >= objc_msgSend_count(v122, v138, v139, v140, v141, v142))
      {
        goto LABEL_30;
      }

      v159 = objc_msgSend_objectAtIndexedSubscript_(v122, v155, v147, v156, v157, v158);
      v165 = v159;
      if (v149)
      {
        break;
      }

      v177 = objc_msgSend_string(v159, v160, v161, v162, v163, v164);
      objc_msgSend_appendString_(v132, v178, v177, v179, v180, v181);

      v187 = objc_msgSend_strokeIndexes(v165, v182, v183, v184, v185, v186);
      objc_msgSend_addIndexes_(v380, v188, v187, v189, v190, v191);

      objc_msgSend_score(v165, v192, v193, v194, v195, v196);
      v198 = v197;
      objc_msgSend_bounds(v165, v199, v200, v201, v202, v203);
      v399.origin.x = v204;
      v399.origin.y = v205;
      v399.size.width = v206;
      v399.size.height = v207;
      v392.origin.x = x;
      v392.origin.y = y;
      v392.size.width = width;
      v392.size.height = height;
      v393 = CGRectUnion(v392, v399);
      x = v393.origin.x;
      y = v393.origin.y;
      width = v393.size.width;
      height = v393.size.height;
      v382 = v382 * v198;
      if (!objc_msgSend_isEqualToString_(v132, v208, v381, v209, v210, v211))
      {
        if (!objc_msgSend_hasPrefix_(v381, v212, v132, v214, v215, v216))
        {
          goto LABEL_40;
        }

        v149 = 0;
        v150 &= v147 != objc_msgSend_count(v122, v233, v234, v235, v236, v237) - 1;
        goto LABEL_8;
      }

      v217 = objc_msgSend_string(v379, v212, v213, v214, v215, v216);
      v223 = objc_msgSend_length(v381, v218, v219, v220, v221, v222);
      v154 = objc_msgSend_substringFromIndex_(v217, v224, v223, v225, v226, v227);

      if (!objc_msgSend_length(v154, v228, v229, v230, v231, v232))
      {
        goto LABEL_39;
      }

      v150 = 1;
      v149 = 1;
LABEL_9:

      ++v147;
      v148 = v154;
    }

    objc_msgSend_score(v159, v160, v161, v162, v163, v164);
    v167 = v166;
    objc_msgSend_bounds(v165, v168, v169, v170, v171, v172);
    v398.origin.x = v173;
    v398.origin.y = v174;
    v398.size.width = v175;
    v398.size.height = v176;
    v390.origin.x = r1.origin.x;
    v390.origin.y = v151;
    v390.size.width = v152;
    v390.size.height = v153;
    v391 = CGRectUnion(v390, v398);
    r1.origin.x = v391.origin.x;
    v151 = v391.origin.y;
    v152 = v391.size.width;
    v153 = v391.size.height;
    v384 = v384 * v167;
    v149 = 1;
LABEL_8:
    v154 = v148;
    goto LABEL_9;
  }

  if (!v378)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v165 = qword_1EA84DC68;
    if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
    {
      LOWORD(r1.origin.y) = 0;
      _os_log_impl(&dword_18366B000, v165, OS_LOG_TYPE_ERROR, "Either prefix or suffix must be provided when splittin a text token.", &r1.origin.y, 2u);
    }

    v154 = 0;
LABEL_39:
    v328 = 0;
LABEL_47:

    v148 = v154;
    goto LABEL_48;
  }

  v151 = *(MEMORY[0x1E695F050] + 8);
  v153 = *(MEMORY[0x1E695F050] + 24);
  v152 = *(MEMORY[0x1E695F050] + 16);
  v240 = objc_msgSend_count(v122, v138, v139, v140, v141, v142) - 1;
  if (v240 < 0)
  {
    v154 = 0;
    v382 = 1.0;
    v384 = 1.0;
    v327 = 0x40000;
    x = r1.origin.x;
LABEL_42:
    v165 = objc_msgSend_remappedStrokeIndexes_originalStrokeIdentifiersOrdering_newStrokeIdentifiersOrdering_(CHGroupingPostprocessingStep, v155, v380, v377, v14, v158);
    v329 = [CHTokenizedMathResultToken alloc];
    v383 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v329, v330, v132, v165, v327, v331, v382, x, y, width, height);
    v337 = objc_msgSend_strokeIndexes(v379, v332, v333, v334, v335, v336);
    v343 = objc_msgSend_mutableCopy(v337, v338, v339, v340, v341, v342);

    Index = objc_msgSend_firstIndex(v343, v344, v345, v346, v347, v348);
    objc_msgSend_shiftIndexesStartingAtIndex_by_(v343, v350, 0, -Index, v351, v352);
    objc_msgSend_removeIndexes_(v343, v353, v380, v354, v355, v356);
    v359 = objc_msgSend_remappedStrokeIndexes_originalStrokeIdentifiersOrdering_newStrokeIdentifiersOrdering_(CHGroupingPostprocessingStep, v357, v343, v377, v14, v358);
    v360 = sub_1838EBA28(v369, v154);
    v361 = [CHTokenizedMathResultToken alloc];
    v364 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v361, v362, v360, v359, 0x1000000, v363, v384, r1.origin.x, v151, v152, v153);
    if (a3)
    {
      *a3 = v383;
    }

    if (a4)
    {
      v365 = v364;
      *a4 = v364;
    }

    v328 = 1;
    goto LABEL_47;
  }

  v241 = 0;
  v148 = 0;
  v150 = 1;
  v382 = 1.0;
  v384 = 1.0;
  v368 = 0x40000;
  x = r1.origin.x;
  do
  {
    while (1)
    {
      v243 = objc_msgSend_objectAtIndexedSubscript_(v122, v155, v240, v238, v239, v158);
      v165 = v243;
      if ((v241 & 1) == 0)
      {
        break;
      }

      objc_msgSend_score(v243, v244, v245, v246, v247, v248);
      v250 = v249;
      objc_msgSend_bounds(v165, v251, v252, v253, v254, v255);
      v400.origin.x = v256;
      v400.origin.y = v257;
      v400.size.width = v258;
      v400.size.height = v259;
      v394.origin.x = r1.origin.x;
      v394.origin.y = v151;
      v394.size.width = v152;
      v394.size.height = v153;
      v395 = CGRectUnion(v394, v400);
      r1.origin.x = v395.origin.x;
      v151 = v395.origin.y;
      v152 = v395.size.width;
      v153 = v395.size.height;
      v384 = v384 * v250;
LABEL_21:
      v241 = 1;

      v242 = v240-- <= 0;
      if (v242)
      {
        goto LABEL_30;
      }
    }

    v260 = objc_msgSend_string(v243, v244, v245, v246, v247, v248);
    objc_msgSend_insertString_atIndex_(v132, v261, v260, 0, v262, v263);

    v269 = objc_msgSend_strokeIndexes(v165, v264, v265, v266, v267, v268);
    objc_msgSend_addIndexes_(v380, v270, v269, v271, v272, v273);

    objc_msgSend_score(v165, v274, v275, v276, v277, v278);
    v280 = v279;
    objc_msgSend_bounds(v165, v281, v282, v283, v284, v285);
    v401.origin.x = v286;
    v401.origin.y = v287;
    v401.size.width = v288;
    v401.size.height = v289;
    v396.origin.x = x;
    v396.origin.y = y;
    v396.size.width = width;
    v396.size.height = height;
    v397 = CGRectUnion(v396, v401);
    x = v397.origin.x;
    y = v397.origin.y;
    width = v397.size.width;
    height = v397.size.height;
    v382 = v382 * v280;
    if (objc_msgSend_isEqualToString_(v132, v290, v378, v291, v292, v293))
    {
      v299 = objc_msgSend_string(v379, v294, v295, v296, v297, v298);
      v305 = objc_msgSend_string(v379, v300, v301, v302, v303, v304);
      v311 = objc_msgSend_length(v305, v306, v307, v308, v309, v310);
      v317 = objc_msgSend_length(v378, v312, v313, v314, v315, v316);
      v154 = objc_msgSend_substringToIndex_(v299, v318, v311 - v317, v319, v320, v321);

      if (!objc_msgSend_length(v154, v322, v323, v324, v325, v326))
      {
        goto LABEL_39;
      }

      v150 = 1;
      v148 = v154;
      goto LABEL_21;
    }

    if (!objc_msgSend_hasSuffix_(v378, v294, v132, v296, v297, v298))
    {
LABEL_40:
      v328 = 0;
      v154 = v148;
      goto LABEL_47;
    }

    v241 = 0;
    v150 &= v240 != 0;

    v242 = v240-- <= 0;
  }

  while (!v242);
LABEL_30:
  if (v150)
  {
    v154 = v148;
    v327 = v368;
    goto LABEL_42;
  }

  v328 = 0;
LABEL_48:
  v389 = v328;

  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = v376;
  v26 = v374;
  v15 = v375;
  v89 = v372;
LABEL_49:

  v366 = v389;
  return v366;
}

void sub_1838EC7EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v18 = a2;
  if (objc_msgSend_containsObject_(*(*(a1 + 32) + 32), v9, v18, v10, v11, v12))
  {
    objc_msgSend_appendString_(*(a1 + 40), v13, v18, v14, v15, v16);
    v17 = v18;
  }

  else
  {
    *a7 = 1;
    v17 = v18;
  }
}

void sub_1838ECA88(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t sub_1838EEAEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1838EEB04(uint64_t a1, void *a2, uint64_t a3)
{
  v166 = a2;
  if (a3 == 1)
  {
    v28 = objc_msgSend_string(v166, v6, v7, v8, v9, v10);
    if ((objc_msgSend_isEqualToString_(v28, v29, @"{", v30, v31, v32) & 1) == 0)
    {
      goto LABEL_16;
    }

    v38 = objc_msgSend_strokeIndexes(v166, v33, v34, v35, v36, v37);
    v44 = objc_msgSend_count(v38, v39, v40, v41, v42, v43);

    if (v44)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!a3)
    {
      v11 = objc_msgSend_string(v166, v6, v7, v8, v9, v10);
      if (objc_msgSend_isEqualToString_(v11, v12, @"\\frac", v13, v14, v15))
      {
        v21 = objc_msgSend_strokeIndexes(v166, v16, v17, v18, v19, v20);
        v27 = objc_msgSend_count(v21, v22, v23, v24, v25, v26);

        if (v27)
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
          goto LABEL_19;
        }
      }

      else
      {
      }

      goto LABEL_18;
    }

    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v45 = objc_msgSend_allowedSymbolsInTextPrefix(*(a1 + 40), v6, v7, v8, v9, v10);
      v51 = objc_msgSend_string(v166, v46, v47, v48, v49, v50);
      v56 = objc_msgSend_containsObject_(v45, v52, v51, v53, v54, v55);

      if (v56)
      {
        v62 = objc_msgSend_string(v166, v57, v58, v59, v60, v61);
        if (objc_msgSend_length(v62, v63, v64, v65, v66, v67) == 1)
        {
          v73 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], v68, v69, v70, v71, v72);
          v79 = objc_msgSend_string(v166, v74, v75, v76, v77, v78);
          v84 = objc_msgSend_characterAtIndex_(v79, v80, 0, v81, v82, v83);
          IsMember = objc_msgSend_characterIsMember_(v73, v85, v84, v86, v87, v88);

          if (!IsMember)
          {
            goto LABEL_19;
          }

          v90 = *(a1 + 80);
          goto LABEL_14;
        }

LABEL_28:

        goto LABEL_19;
      }

LABEL_18:
      *(*(*(a1 + 48) + 8) + 24) = 0;
      goto LABEL_19;
    }

    v91 = *(a1 + 32);
    v92 = objc_msgSend_strokeIndexes(v166, v6, v7, v8, v9, v10);
    objc_msgSend_addIndexes_(v91, v93, v92, v94, v95, v96);

    v28 = objc_msgSend_string(v166, v97, v98, v99, v100, v101);
    if (objc_msgSend_isEqualToString_(v28, v102, @"{", v103, v104, v105))
    {
LABEL_16:

      goto LABEL_18;
    }

    v111 = objc_msgSend_allowedSymbolsInTextPrefix(*(a1 + 40), v106, v107, v108, v109, v110);
    v117 = objc_msgSend_string(v166, v112, v113, v114, v115, v116);
    v122 = objc_msgSend_containsObject_(v111, v118, v117, v119, v120, v121);

    if ((v122 & 1) == 0)
    {
      goto LABEL_18;
    }

    v128 = objc_msgSend_string(v166, v123, v124, v125, v126, v127);
    isEqualToString = objc_msgSend_isEqualToString_(v128, v129, @"}", v130, v131, v132);

    if (isEqualToString)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      goto LABEL_19;
    }

    v62 = objc_msgSend_string(v166, v134, v135, v136, v137, v138);
    if (objc_msgSend_length(v62, v139, v140, v141, v142, v143) != 1)
    {
      goto LABEL_28;
    }

    v149 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], v144, v145, v146, v147, v148);
    v155 = objc_msgSend_string(v166, v150, v151, v152, v153, v154);
    v160 = objc_msgSend_characterAtIndex_(v155, v156, 0, v157, v158, v159);
    v165 = objc_msgSend_characterIsMember_(v149, v161, v160, v162, v163, v164);

    if (v165)
    {
      v90 = *(a1 + 72);
LABEL_14:
      ++*(*(v90 + 8) + 24);
    }
  }

LABEL_19:
}

void ***sub_1838EEFC0(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 8;
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_1838EF034(void *a1)
{
  if (a1)
  {
    sub_1838EF034(*a1);
    sub_1838EF034(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

float *sub_1838EF090(float *a1, float *a2, uint64_t a3, char a4, double a5)
{
  v7 = xmmword_1839CD1B0;
  v8 = xmmword_1839CD1A0;
  v9 = &unk_1839D9000;
  v10 = &qword_1839D09A0[3788];
  v11 = &unk_1839D9000;
  v12 = &unk_1839D9000;
  v13 = &unk_1839D9000;
  v14 = &unk_1839D9000;
  v15 = &unk_1839D9000;
  v16 = &unk_1839D9000;
  while (1)
  {
    result = a1;
    v18 = a2 - a1;
    if (v18 > 2)
    {
      switch(v18)
      {
        case 3:
          v319 = a1[1];
          v320 = *(a2 - 1);
          if (v319 > v320)
          {
            v321 = *(a1 + 1);
          }

          else
          {
            v321 = *(a2 - 1);
          }

          if (v319 > v320)
          {
            v319 = *(a2 - 1);
          }

          *(a2 - 1) = v319;
          *(a1 + 1) = v321;
          v322 = *(a2 - 1);
          if (v322 > *a1)
          {
            v323 = *(a2 - 1);
          }

          else
          {
            v323 = *a1;
          }

          if (v322 > *a1)
          {
            v322 = *a1;
          }

          *(a2 - 1) = v322;
          v325 = *a1;
          v324 = a1[1];
          if (v323 <= v324)
          {
            v325 = a1[1];
            v324 = v323;
          }

          *a1 = v325;
          a1[1] = v324;
          return result;
        case 4:
          v327 = a1[1];
          v326 = a1[2];
          if (*a1 > v326)
          {
            v328 = *a1;
          }

          else
          {
            v328 = a1[2];
          }

          if (*a1 <= v326)
          {
            v326 = *a1;
          }

          a1[2] = v326;
          *a1 = v328;
          v329 = *(a2 - 1);
          if (v327 > v329)
          {
            v330 = v327;
          }

          else
          {
            v330 = *(a2 - 1);
          }

          if (v327 <= v329)
          {
            v329 = v327;
          }

          *(a2 - 1) = v329;
          v331 = *a1;
          if (*a1 > v330)
          {
            v332 = *a1;
          }

          else
          {
            v332 = v330;
          }

          if (*a1 > v330)
          {
            v331 = v330;
          }

          *a1 = v332;
          a1[1] = v331;
          v333 = a1[2];
          v334 = *(a2 - 1);
          if (v333 > v334)
          {
            v335 = a1[2];
          }

          else
          {
            v335 = *(a2 - 1);
          }

          if (v333 > v334)
          {
            v333 = *(a2 - 1);
          }

          *(a2 - 1) = v333;
          v336 = a1[1];
          if (v336 > v335)
          {
            v337 = a1[1];
          }

          else
          {
            v337 = v335;
          }

          if (v336 > v335)
          {
            v336 = v335;
          }

          a1[1] = v337;
          a1[2] = v336;
          return result;
        case 5:
          v299 = *a1;
          v300 = a1[1];
          if (*a1 > v300)
          {
            v301 = *a1;
          }

          else
          {
            v301 = a1[1];
          }

          if (*a1 > v300)
          {
            v299 = a1[1];
          }

          *a1 = v301;
          a1[1] = v299;
          v302 = a1[3];
          v303 = *(a2 - 1);
          if (v302 > v303)
          {
            v304 = *(a1 + 3);
          }

          else
          {
            v304 = *(a2 - 1);
          }

          if (v302 > v303)
          {
            v302 = *(a2 - 1);
          }

          *(a2 - 1) = v302;
          *(a1 + 3) = v304;
          v305 = *(a2 - 1);
          v306 = a1[2];
          if (v305 > v306)
          {
            v307 = *(a2 - 1);
          }

          else
          {
            v307 = a1[2];
          }

          if (v305 > v306)
          {
            v305 = a1[2];
          }

          *(a2 - 1) = v305;
          v309 = *(a1 + 2);
          v308 = a1[3];
          v310 = a1[1];
          if (v307 <= v308)
          {
            v309 = *(a1 + 3);
            v308 = v307;
          }

          *(a1 + 2) = v309;
          a1[3] = v308;
          v311 = *(a2 - 1);
          if (v310 > v311)
          {
            v312 = v310;
          }

          else
          {
            v312 = *(a2 - 1);
          }

          if (v310 <= v311)
          {
            v311 = v310;
          }

          *(a2 - 1) = v311;
          v313 = *a1;
          v315 = a1[2];
          v314 = a1[3];
          if (v314 > *a1)
          {
            v316 = a1[3];
          }

          else
          {
            v316 = *a1;
          }

          if (v314 > *a1)
          {
            v314 = *a1;
          }

          if (v316 <= v315)
          {
            v313 = a1[2];
            v315 = v316;
          }

          if (v314 > v312)
          {
            v317 = v314;
          }

          else
          {
            v317 = v312;
          }

          if (v314 > v312)
          {
            v314 = v312;
          }

          if (v317 <= v315)
          {
            v312 = v315;
          }

          *a1 = v313;
          a1[1] = v312;
          if (v317 > v315)
          {
            v318 = v315;
          }

          else
          {
            v318 = v317;
          }

          a1[2] = v318;
          a1[3] = v314;
          return result;
      }
    }

    else
    {
      if (v18 < 2)
      {
        return result;
      }

      if (v18 == 2)
      {
        v297 = *(a2 - 1);
        v298 = *a1;
        if (v297 > *a1)
        {
          *a1 = v297;
          *(a2 - 1) = v298;
        }

        return result;
      }
    }

    if (v18 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return result;
      }

      v348 = (v18 - 2) >> 1;
      v349 = v348;
      do
      {
        if (v348 >= v349)
        {
          v350 = (2 * (v349 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
          v351 = &a1[v350];
          if (2 * (v349 & 0x3FFFFFFFFFFFFFFFLL) + 2 < v18 && *v351 > v351[1])
          {
            ++v351;
            v350 = 2 * (v349 & 0x3FFFFFFFFFFFFFFFLL) + 2;
          }

          v352 = &a1[v349];
          v353 = *v351;
          v354 = *v352;
          if (*v351 <= *v352)
          {
            do
            {
              *v352 = v353;
              v352 = v351;
              if (v348 < v350)
              {
                break;
              }

              v355 = 2 * v350;
              v350 = (2 * (v350 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v351 = &a1[v350];
              v356 = v355 + 2;
              if (v356 < v18 && *v351 > v351[1])
              {
                ++v351;
                v350 = v356;
              }

              v353 = *v351;
            }

            while (*v351 <= v354);
            *v352 = v354;
          }
        }

        v26 = v349-- <= 0;
      }

      while (!v26);
      while (2)
      {
        v357 = 0;
        v358 = *a1;
        v359 = a1;
        do
        {
          v360 = v359;
          v361 = &v359[v357];
          v359 = v361 + 1;
          v362 = 2 * v357;
          v357 = (2 * v357) | 1;
          v363 = v362 + 2;
          if (v363 < v18)
          {
            v365 = v361[2];
            v364 = v361 + 2;
            if (*(v364 - 1) > v365)
            {
              v359 = v364;
              v357 = v363;
            }
          }

          *v360 = *v359;
        }

        while (v357 <= ((v18 - 2) >> 1));
        if (v359 == --a2)
        {
LABEL_301:
          *v359 = v358;
        }

        else
        {
          *v359 = *a2;
          *a2 = v358;
          v366 = (v359 - a1 + 4) >> 2;
          v26 = v366 < 2;
          v367 = v366 - 2;
          if (!v26)
          {
            v368 = v367 >> 1;
            v369 = &a1[v368];
            v370 = *v369;
            v358 = *v359;
            if (*v369 > *v359)
            {
              do
              {
                *v359 = v370;
                v359 = v369;
                if (!v368)
                {
                  break;
                }

                v368 = (v368 - 1) >> 1;
                v369 = &a1[v368];
                v370 = *v369;
              }

              while (*v369 > v358);
              goto LABEL_301;
            }
          }
        }

        v26 = v18-- <= 2;
        if (v26)
        {
          return result;
        }

        continue;
      }
    }

    v19 = v18 >> 1;
    v20 = *(a2 - 1);
    if (v18 < 0x81)
    {
      if (*a1 > v20)
      {
        v53 = *a1;
      }

      else
      {
        v53 = *(a2 - 1);
      }

      if (*a1 <= v20)
      {
        v20 = *a1;
      }

      *(a2 - 1) = v20;
      *a1 = v53;
      v54 = *(a2 - 1);
      v55 = a1[v19];
      if (v54 > v55)
      {
        v56 = *(a2 - 1);
      }

      else
      {
        v56 = a1[v19];
      }

      if (v54 > v55)
      {
        v54 = a1[v19];
      }

      *(a2 - 1) = v54;
      v57 = *a1;
      v58 = v56 <= *a1;
      if (v56 > *a1)
      {
        v57 = a1[v19];
      }

      a1[v19] = v57;
      *&a5 = *a1;
      if (v58)
      {
        *&a5 = v56;
      }

      *a1 = *&a5;
    }

    else
    {
      v21 = &a1[v19];
      if (*v21 > v20)
      {
        v22 = *v21;
      }

      else
      {
        v22 = *(a2 - 1);
      }

      if (*v21 <= v20)
      {
        v20 = *v21;
      }

      *(a2 - 1) = v20;
      *v21 = v22;
      v23 = *(a2 - 1);
      if (v23 > *a1)
      {
        v24 = *(a2 - 1);
      }

      else
      {
        v24 = *a1;
      }

      if (v23 > *a1)
      {
        v23 = *a1;
      }

      *(a2 - 1) = v23;
      v25 = *v21;
      v26 = v24 <= *v21;
      if (v24 > *v21)
      {
        v25 = *a1;
      }

      *a1 = v25;
      v28 = *(v21 - 1);
      v27 = *v21;
      if (v26)
      {
        v27 = v24;
      }

      *v21 = v27;
      v29 = *(a2 - 2);
      if (v28 > v29)
      {
        v30 = v28;
      }

      else
      {
        v30 = *(a2 - 2);
      }

      if (v28 <= v29)
      {
        v29 = v28;
      }

      *(a2 - 2) = v29;
      *(v21 - 1) = v30;
      v31 = *(a2 - 2);
      v32 = a1[1];
      if (v31 > v32)
      {
        v33 = *(a2 - 2);
      }

      else
      {
        v33 = a1[1];
      }

      if (v31 > v32)
      {
        v31 = a1[1];
      }

      *(a2 - 2) = v31;
      v34 = *(v21 - 1);
      v35 = v33 <= v34;
      if (v33 > v34)
      {
        v34 = a1[1];
      }

      a1[1] = v34;
      v36 = *(v21 - 1);
      if (v35)
      {
        v36 = v33;
      }

      *(v21 - 1) = v36;
      v37 = v21[1];
      v38 = *(a2 - 3);
      if (v37 > v38)
      {
        v39 = *(v21 + 1);
      }

      else
      {
        v39 = *(a2 - 3);
      }

      if (v37 > v38)
      {
        v37 = *(a2 - 3);
      }

      *(a2 - 3) = v37;
      *(v21 + 1) = v39;
      v40 = *(a2 - 3);
      v41 = a1[2];
      if (v40 > v41)
      {
        v42 = *(a2 - 3);
      }

      else
      {
        v42 = a1[2];
      }

      if (v40 > v41)
      {
        v40 = a1[2];
      }

      *(a2 - 3) = v40;
      v43 = v21[1];
      v44 = v42 <= v43;
      if (v42 > v43)
      {
        v43 = a1[2];
      }

      a1[2] = v43;
      v46 = *v21;
      v45 = v21[1];
      if (v44)
      {
        v45 = v42;
      }

      v47 = *(v21 - 1);
      if (v46 > v45)
      {
        v48 = *v21;
      }

      else
      {
        v48 = v45;
      }

      if (v46 <= v45)
      {
        v45 = *v21;
      }

      if (v45 > v47)
      {
        v49 = v45;
      }

      else
      {
        v49 = *(v21 - 1);
      }

      if (v45 > v47)
      {
        v50 = *(v21 - 1);
      }

      else
      {
        v50 = v45;
      }

      if (v49 > v48)
      {
        v51 = *(v21 - 1);
      }

      else
      {
        v51 = v48;
      }

      if (v49 > v48)
      {
        v49 = v48;
      }

      *(v21 - 1) = v51;
      *v21 = v49;
      v21[1] = v50;
      v52 = *a1;
      *a1 = v49;
      *v21 = v52;
      *&a5 = *a1;
    }

    --a3;
    if ((a4 & 1) != 0 || *(a1 - 1) > *&a5)
    {
      if (*&a5 <= *(a2 - 1))
      {
        v61 = a1 + 1;
        do
        {
          v59 = v61;
          if (v61 >= a2)
          {
            break;
          }

          ++v61;
        }

        while (*&a5 <= *v59);
      }

      else
      {
        v59 = a1;
        do
        {
          v60 = v59[1];
          ++v59;
        }

        while (*&a5 <= v60);
      }

      v62 = a2;
      if (v59 < a2)
      {
        v62 = a2;
        do
        {
          v63 = *--v62;
        }

        while (*&a5 > v63);
      }

      v64 = v59;
      if (v59 < v62)
      {
        v65 = *v59;
        *v59 = *v62;
        v64 = (v59 + 1);
        *v62 = v65;
      }

      v66 = v62 - 1;
      v67 = (v62 - 1) - v64;
      if (v67 < 505)
      {
        v68 = 0;
        v214 = v67 >> 2;
        v71 = 1;
LABEL_120:
        v218 = v214 + 1;
        v215 = (v214 + 1) / 2;
        v216 = v218 - v218 / 2;
        goto LABEL_121;
      }

      v68 = 0;
      v69 = 0;
      v70 = vdupq_lane_s32(*&a5, 0);
      do
      {
        if (v69)
        {
          if (v68)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v73 = vmvnq_s8(vcgtq_f32(*v64, v70));
          v74.i64[0] = v73.u32[0];
          v74.i64[1] = v73.u32[1];
          v75 = v74;
          v74.i64[0] = v73.u32[2];
          v74.i64[1] = v73.u32[3];
          v76 = v74;
          v77 = vmvnq_s8(vcgtq_f32(v64[1], v70));
          v74.i64[0] = v77.u32[0];
          v74.i64[1] = v77.u32[1];
          v78 = v74;
          v74.i64[0] = v77.u32[2];
          v74.i64[1] = v77.u32[3];
          v79 = vandq_s8(v74, v9[216]);
          v80 = vmvnq_s8(vcgtq_f32(v64[2], v70));
          v74.i64[0] = v80.u32[0];
          v74.i64[1] = v80.u32[1];
          v81 = v74;
          v74.i64[0] = v80.u32[2];
          v74.i64[1] = v80.u32[3];
          v82 = v74;
          v83 = vmvnq_s8(vcgtq_f32(v64[3], v70));
          v74.i64[0] = v83.u32[0];
          v74.i64[1] = v83.u32[1];
          v84 = v74;
          v74.i64[0] = v83.u32[2];
          v74.i64[1] = v83.u32[3];
          v85 = vorrq_s8(vandq_s8(v81, v12[218]), vandq_s8(v75, v8));
          v86 = vorrq_s8(vandq_s8(v82, v11[217]), vandq_s8(v76, v7));
          v87 = vorrq_s8(vandq_s8(v84, v14[220]), vandq_s8(v78, v10[234]));
          v88 = vorrq_s8(vandq_s8(v74, v13[219]), v79);
          v89 = vmvnq_s8(vcgtq_f32(v64[4], v70));
          v74.i64[0] = v89.u32[2];
          v74.i64[1] = v89.u32[3];
          v90 = v74;
          v74.i64[0] = v89.u32[0];
          v74.i64[1] = v89.u32[1];
          v91 = v74;
          v92 = vmvnq_s8(vcgtq_f32(v64[5], v70));
          v74.i64[0] = v92.u32[2];
          v74.i64[1] = v92.u32[3];
          v93 = v74;
          v74.i64[0] = v92.u32[0];
          v74.i64[1] = v92.u32[1];
          v94 = vandq_s8(v74, xmmword_1839D9DF0);
          v95 = vmvnq_s8(vcgtq_f32(v64[6], v70));
          v74.i64[0] = v95.u32[0];
          v74.i64[1] = v95.u32[1];
          v96 = v74;
          v74.i64[0] = v95.u32[2];
          v74.i64[1] = v95.u32[3];
          v97 = v74;
          v98 = vmvnq_s8(vcgtq_f32(v64[7], v70));
          v74.i64[0] = v98.u32[0];
          v74.i64[1] = v98.u32[1];
          v99 = v74;
          v74.i64[0] = v98.u32[2];
          v74.i64[1] = v98.u32[3];
          v100 = vorrq_s8(vorrq_s8(vandq_s8(v96, xmmword_1839D9E20), vandq_s8(v91, v15[221])), v85);
          v101 = vorrq_s8(vorrq_s8(vandq_s8(v97, xmmword_1839D9E10), vandq_s8(v90, v16[222])), v86);
          v102 = vorrq_s8(vorrq_s8(vandq_s8(v99, xmmword_1839D9E40), v94), v87);
          v103 = vorrq_s8(vorrq_s8(vandq_s8(v74, xmmword_1839D9E30), vandq_s8(v93, xmmword_1839D9E00)), v88);
          v104 = vmvnq_s8(vcgtq_f32(v64[8], v70));
          v74.i64[0] = v104.i32[2];
          v74.i64[1] = v104.i32[3];
          v105 = v74;
          v74.i64[0] = v104.i32[0];
          v74.i64[1] = v104.i32[1];
          v106 = v74;
          v107 = vmvnq_s8(vcgtq_f32(v64[9], v70));
          v74.i64[0] = v107.i32[2];
          v74.i64[1] = v107.i32[3];
          v108 = v74;
          v74.i64[0] = v107.i32[0];
          v74.i64[1] = v107.i32[1];
          v109 = vandq_s8(v74, xmmword_1839D9E70);
          v110 = vmvnq_s8(vcgtq_f32(v64[10], v70));
          v74.i64[0] = v110.i32[0];
          v74.i64[1] = v110.i32[1];
          v111 = v74;
          v74.i64[0] = v110.i32[2];
          v74.i64[1] = v110.i32[3];
          v112 = v74;
          v113 = vmvnq_s8(vcgtq_f32(v64[11], v70));
          v74.i64[0] = v113.i32[0];
          v74.i64[1] = v113.i32[1];
          v114 = v74;
          v74.i64[0] = v113.i32[2];
          v74.i64[1] = v113.i32[3];
          v115 = vorrq_s8(vandq_s8(v111, xmmword_1839D9EA0), vandq_s8(v106, xmmword_1839D9E50));
          v116 = vorrq_s8(vandq_s8(v112, xmmword_1839D9E90), vandq_s8(v105, xmmword_1839D9E60));
          v117 = vorrq_s8(vandq_s8(v114, xmmword_1839D9EC0), v109);
          v118 = vorrq_s8(vandq_s8(v74, xmmword_1839D9EB0), vandq_s8(v108, xmmword_1839D9E80));
          v119 = vmvnq_s8(vcgtq_f32(v64[12], v70));
          v74.i64[0] = v119.i32[2];
          v74.i64[1] = v119.i32[3];
          v120 = v74;
          v74.i64[0] = v119.i32[0];
          v74.i64[1] = v119.i32[1];
          v121 = v74;
          v122 = vmvnq_s8(vcgtq_f32(v64[13], v70));
          v74.i64[0] = v122.i32[2];
          v74.i64[1] = v122.i32[3];
          v123 = v74;
          v74.i64[0] = v122.i32[0];
          v74.i64[1] = v122.i32[1];
          v124 = vorrq_s8(vorrq_s8(vandq_s8(v120, xmmword_1839D9EE0), v116), v101);
          v125 = vorrq_s8(vorrq_s8(vandq_s8(v121, xmmword_1839D9ED0), v115), v100);
          v126 = vorrq_s8(vorrq_s8(vandq_s8(v123, xmmword_1839D9F00), v118), v103);
          v127 = vorrq_s8(vorrq_s8(vandq_s8(v74, xmmword_1839D9EF0), v117), v102);
          v128 = vmvnq_s8(vcgtq_f32(v64[14], v70));
          v74.i64[0] = v128.i32[0];
          v74.i64[1] = v128.i32[1];
          v129 = v74;
          v74.i64[0] = v128.i32[2];
          v74.i64[1] = v128.i32[3];
          v130 = v74;
          v131 = vmvnq_s8(vcgtq_f32(v64[15], v70));
          v74.i64[0] = v131.i32[0];
          v74.i64[1] = v131.i32[1];
          v132 = v74;
          v74.i64[0] = v131.i32[2];
          v74.i64[1] = v131.i32[3];
          v133 = vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(v132, xmmword_1839D9F40), v127), vorrq_s8(vandq_s8(v129, xmmword_1839D9F20), v125)), vorrq_s8(vorrq_s8(vandq_s8(v74, xmmword_1839D9F30), v126), vorrq_s8(vandq_s8(v130, xmmword_1839D9F10), v124)));
          v69 = vorr_s8(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
          if (v68)
          {
LABEL_107:
            if (!v69)
            {
              goto LABEL_102;
            }

            goto LABEL_111;
          }
        }

        v134 = vrev64q_s32(*(v66 - 3));
        v135 = vrev64q_s32(*(v66 - 7));
        v136 = vcgtq_f32(vextq_s8(v134, v134, 8uLL), v70);
        v137.i64[0] = v136.u32[0];
        v137.i64[1] = v136.u32[1];
        v138 = v137;
        v137.i64[0] = v136.u32[2];
        v137.i64[1] = v136.u32[3];
        v139 = v137;
        v140 = vcgtq_f32(vextq_s8(v135, v135, 8uLL), v70);
        v137.i64[0] = v140.u32[0];
        v137.i64[1] = v140.u32[1];
        v141 = v137;
        v137.i64[0] = v140.u32[2];
        v137.i64[1] = v140.u32[3];
        v142 = vandq_s8(v137, v9[216]);
        v143 = vrev64q_s32(*(v66 - 11));
        v144 = vrev64q_s32(*(v66 - 15));
        v145 = vcgtq_f32(vextq_s8(v143, v143, 8uLL), v70);
        v137.i64[0] = v145.u32[0];
        v137.i64[1] = v145.u32[1];
        v146 = v137;
        v137.i64[0] = v145.u32[2];
        v137.i64[1] = v145.u32[3];
        v147 = v137;
        v148 = vcgtq_f32(vextq_s8(v144, v144, 8uLL), v70);
        v137.i64[0] = v148.u32[0];
        v137.i64[1] = v148.u32[1];
        v149 = v137;
        v137.i64[0] = v148.u32[2];
        v137.i64[1] = v148.u32[3];
        v150 = vorrq_s8(vandq_s8(v146, v12[218]), vandq_s8(v138, v8));
        v151 = vorrq_s8(vandq_s8(v147, v11[217]), vandq_s8(v139, v7));
        v152 = vorrq_s8(vandq_s8(v149, v14[220]), vandq_s8(v141, v10[234]));
        v153 = vorrq_s8(vandq_s8(v137, v13[219]), v142);
        v154 = vrev64q_s32(*(v66 - 19));
        v155 = vrev64q_s32(*(v66 - 23));
        v156 = vcgtq_f32(vextq_s8(v154, v154, 8uLL), v70);
        v137.i64[0] = v156.u32[2];
        v137.i64[1] = v156.u32[3];
        v157 = v137;
        v137.i64[0] = v156.u32[0];
        v137.i64[1] = v156.u32[1];
        v158 = v137;
        v159 = vcgtq_f32(vextq_s8(v155, v155, 8uLL), v70);
        v137.i64[0] = v159.u32[2];
        v137.i64[1] = v159.u32[3];
        v160 = v137;
        v137.i64[0] = v159.u32[0];
        v137.i64[1] = v159.u32[1];
        v161 = vandq_s8(v137, xmmword_1839D9DF0);
        v162 = vrev64q_s32(*(v66 - 27));
        v163 = vrev64q_s32(*(v66 - 31));
        v164 = vcgtq_f32(vextq_s8(v162, v162, 8uLL), v70);
        v137.i64[0] = v164.u32[0];
        v137.i64[1] = v164.u32[1];
        v165 = v137;
        v137.i64[0] = v164.u32[2];
        v137.i64[1] = v164.u32[3];
        v166 = v137;
        v167 = vcgtq_f32(vextq_s8(v163, v163, 8uLL), v70);
        v137.i64[0] = v167.u32[0];
        v137.i64[1] = v167.u32[1];
        v168 = v137;
        v137.i64[0] = v167.u32[2];
        v137.i64[1] = v167.u32[3];
        v169 = vorrq_s8(vorrq_s8(vandq_s8(v165, xmmword_1839D9E20), vandq_s8(v158, v15[221])), v150);
        v170 = vorrq_s8(vorrq_s8(vandq_s8(v166, xmmword_1839D9E10), vandq_s8(v157, v16[222])), v151);
        v171 = vorrq_s8(vorrq_s8(vandq_s8(v168, xmmword_1839D9E40), v161), v152);
        v172 = vorrq_s8(vorrq_s8(vandq_s8(v137, xmmword_1839D9E30), vandq_s8(v160, xmmword_1839D9E00)), v153);
        v173 = vrev64q_s32(*(v66 - 35));
        v174 = vrev64q_s32(*(v66 - 39));
        v175 = vcgtq_f32(vextq_s8(v173, v173, 8uLL), v70);
        v137.i64[0] = v175.i32[2];
        v137.i64[1] = v175.i32[3];
        v176 = v137;
        v137.i64[0] = v175.i32[0];
        v137.i64[1] = v175.i32[1];
        v177 = v137;
        v178 = vcgtq_f32(vextq_s8(v174, v174, 8uLL), v70);
        v137.i64[0] = v178.i32[2];
        v137.i64[1] = v178.i32[3];
        v179 = v137;
        v137.i64[0] = v178.i32[0];
        v137.i64[1] = v178.i32[1];
        v180 = vandq_s8(v137, xmmword_1839D9E70);
        v181 = vrev64q_s32(*(v66 - 43));
        v182 = vrev64q_s32(*(v66 - 47));
        v183 = vcgtq_f32(vextq_s8(v181, v181, 8uLL), v70);
        v137.i64[0] = v183.i32[0];
        v137.i64[1] = v183.i32[1];
        v184 = v137;
        v137.i64[0] = v183.i32[2];
        v137.i64[1] = v183.i32[3];
        v185 = v137;
        v186 = vcgtq_f32(vextq_s8(v182, v182, 8uLL), v70);
        v137.i64[0] = v186.i32[0];
        v137.i64[1] = v186.i32[1];
        v187 = v137;
        v137.i64[0] = v186.i32[2];
        v137.i64[1] = v186.i32[3];
        v188 = vorrq_s8(vandq_s8(v184, xmmword_1839D9EA0), vandq_s8(v177, xmmword_1839D9E50));
        v189 = vorrq_s8(vandq_s8(v185, xmmword_1839D9E90), vandq_s8(v176, xmmword_1839D9E60));
        v190 = vorrq_s8(vandq_s8(v187, xmmword_1839D9EC0), v180);
        v191 = vorrq_s8(vandq_s8(v137, xmmword_1839D9EB0), vandq_s8(v179, xmmword_1839D9E80));
        v192 = vrev64q_s32(*(v66 - 51));
        v193 = vrev64q_s32(*(v66 - 55));
        v194 = vcgtq_f32(vextq_s8(v192, v192, 8uLL), v70);
        v137.i64[0] = v194.i32[2];
        v137.i64[1] = v194.i32[3];
        v195 = v137;
        v137.i64[0] = v194.i32[0];
        v137.i64[1] = v194.i32[1];
        v196 = v137;
        v197 = vcgtq_f32(vextq_s8(v193, v193, 8uLL), v70);
        v137.i64[0] = v197.i32[2];
        v137.i64[1] = v197.i32[3];
        v198 = v137;
        v137.i64[0] = v197.i32[0];
        v137.i64[1] = v197.i32[1];
        v199 = vorrq_s8(vorrq_s8(vandq_s8(v195, xmmword_1839D9EE0), v189), v170);
        v200 = vorrq_s8(vorrq_s8(vandq_s8(v196, xmmword_1839D9ED0), v188), v169);
        v201 = vorrq_s8(vorrq_s8(vandq_s8(v198, xmmword_1839D9F00), v191), v172);
        v202 = vorrq_s8(vorrq_s8(vandq_s8(v137, xmmword_1839D9EF0), v190), v171);
        v203 = vrev64q_s32(*(v66 - 59));
        v204 = vrev64q_s32(*(v66 - 63));
        v205 = vcgtq_f32(vextq_s8(v203, v203, 8uLL), v70);
        v137.i64[0] = v205.i32[0];
        v137.i64[1] = v205.i32[1];
        v206 = v137;
        v137.i64[0] = v205.i32[2];
        v137.i64[1] = v205.i32[3];
        v207 = v137;
        v208 = vcgtq_f32(vextq_s8(v204, v204, 8uLL), v70);
        v137.i64[0] = v208.i32[0];
        v137.i64[1] = v208.i32[1];
        v209 = v137;
        v137.i64[0] = v208.i32[2];
        v137.i64[1] = v208.i32[3];
        v210 = vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(v209, xmmword_1839D9F40), v202), vorrq_s8(vandq_s8(v206, xmmword_1839D9F20), v200)), vorrq_s8(vorrq_s8(vandq_s8(v137, xmmword_1839D9F30), v201), vorrq_s8(vandq_s8(v207, xmmword_1839D9F10), v199)));
        v68 = vorr_s8(*v210.i8, *&vextq_s8(v210, v210, 8uLL));
        if (!v69)
        {
          goto LABEL_102;
        }

LABEL_111:
        if (v68)
        {
          do
          {
            v211 = __clz(__rbit64(v69));
            v69 &= v69 - 1;
            v212 = &v66[-__clz(__rbit64(v68))];
            v213 = v64->i32[v211];
            v64->i32[v211] = *v212;
            *v212 = v213;
            v68 &= v68 - 1;
          }

          while (v68 && v69);
        }

LABEL_102:
        v64 += 16 * (v69 == 0);
        v71 = v68 == 0;
        v72 = -256;
        if (v68)
        {
          v72 = 0;
        }

        v66 = (v66 + v72);
      }

      while (v66 - v64 > 504);
      v214 = (v66 - v64) >> 2;
      if (!(v68 | v69))
      {
        goto LABEL_120;
      }

      v215 = v214 - 63;
      v216 = 64;
      v217 = 64;
      if (v69)
      {
        if (v68)
        {
          goto LABEL_161;
        }

LABEL_149:
        if (v215 >= 1)
        {
          if (v215 <= 7)
          {
            v250 = 0;
            v68 = 0;
            v251 = v66;
            goto LABEL_159;
          }

          v250 = v215 & 0x7FFFFFFFFFFFFFF8;
          v251 = &v66[-(v215 & 0x7FFFFFFFFFFFFFF8)];
          v253 = vdupq_lane_s32(*&a5, 0);
          v254 = xmmword_1839D9F50;
          v255 = xmmword_1839CD610;
          v256 = (v66 - 3);
          v257 = 0uLL;
          v258 = v215 & 0x7FFFFFFFFFFFFFF8;
          v259 = 0uLL;
          v260 = 0uLL;
          v261 = 0uLL;
          do
          {
            v262 = vdupq_n_s64(4uLL);
            v263 = vrev64q_s32(*v256);
            v264 = vrev64q_s32(v256[-1]);
            v265 = vcgtq_f32(vextq_s8(v263, v263, 8uLL), v253);
            v266.i64[0] = v265.u32[2];
            v266.i64[1] = v265.u32[3];
            v267 = vdupq_n_s64(1uLL);
            v268 = vandq_s8(v266, v267);
            v266.i64[0] = v265.u32[0];
            v266.i64[1] = v265.u32[1];
            v269 = vandq_s8(v266, v267);
            v270 = vcgtq_f32(vextq_s8(v264, v264, 8uLL), v253);
            v266.i64[0] = v270.u32[2];
            v266.i64[1] = v270.u32[3];
            v271 = vandq_s8(v266, v267);
            v266.i64[0] = v270.u32[0];
            v266.i64[1] = v270.u32[1];
            v259 = vorrq_s8(vshlq_u64(v268, v254), v259);
            v257 = vorrq_s8(vshlq_u64(v269, v255), v257);
            v261 = vorrq_s8(vshlq_u64(v271, vaddq_s64(v254, v262)), v261);
            v260 = vorrq_s8(vshlq_u64(vandq_s8(v266, v267), vaddq_s64(v255, v262)), v260);
            v272 = vdupq_n_s64(8uLL);
            v254 = vaddq_s64(v254, v272);
            v255 = vaddq_s64(v255, v272);
            v256 -= 2;
            v258 -= 8;
          }

          while (v258);
          v273 = vorrq_s8(vorrq_s8(v260, v257), vorrq_s8(v261, v259));
          v68 = vorr_s8(*v273.i8, *&vextq_s8(v273, v273, 8uLL));
          while (v215 != v250)
          {
LABEL_159:
            v274 = *v251--;
            v68 |= (v274 > *&a5) << v250++;
          }

          goto LABEL_161;
        }

        if (v69)
        {
          v252 = 0;
        }

        else
        {
          v252 = v217;
        }

        a1 = &v64->f32[v252];
LABEL_174:
        if (v69)
        {
          v66 -= v215;
          goto LABEL_177;
        }

        goto LABEL_180;
      }

LABEL_121:
      if (v215 < 1)
      {
        v69 = 0;
      }

      else
      {
        if (v215 < 8)
        {
          v219 = 0;
          v69 = 0;
          v220 = v64;
          goto LABEL_146;
        }

        v219 = v215 & 0x7FFFFFFFFFFFFFF8;
        v220 = &v64->f32[v215 & 0x7FFFFFFFFFFFFFF8];
        v221 = vdupq_lane_s32(*&a5, 0);
        v222 = xmmword_1839D9F50;
        v223 = xmmword_1839CD610;
        v224 = v64 + 1;
        v225 = 0uLL;
        v226 = v215 & 0x7FFFFFFFFFFFFFF8;
        v227 = 0uLL;
        v228 = 0uLL;
        v229 = 0uLL;
        do
        {
          v230 = vdupq_n_s64(4uLL);
          v231 = vmvnq_s8(vcgtq_f32(v224[-1], v221));
          v232 = vdupq_n_s64(1uLL);
          v233.i64[0] = v231.u32[2];
          v233.i64[1] = v231.u32[3];
          v234 = vandq_s8(v233, v232);
          v233.i64[0] = v231.u32[0];
          v233.i64[1] = v231.u32[1];
          v235 = vandq_s8(v233, v232);
          v236 = vmvnq_s8(vcgtq_f32(*v224, v221));
          v233.i64[0] = v236.u32[2];
          v233.i64[1] = v236.u32[3];
          v237 = vandq_s8(v233, v232);
          v233.i64[0] = v236.u32[0];
          v233.i64[1] = v236.u32[1];
          v227 = vorrq_s8(vshlq_u64(v234, v222), v227);
          v225 = vorrq_s8(vshlq_u64(v235, v223), v225);
          v229 = vorrq_s8(vshlq_u64(v237, vaddq_s64(v222, v230)), v229);
          v228 = vorrq_s8(vshlq_u64(vandq_s8(v233, v232), vaddq_s64(v223, v230)), v228);
          v238 = vdupq_n_s64(8uLL);
          v222 = vaddq_s64(v222, v238);
          v223 = vaddq_s64(v223, v238);
          v224 += 2;
          v226 -= 8;
        }

        while (v226);
        v239 = vorrq_s8(vorrq_s8(v228, v225), vorrq_s8(v229, v227));
        v69 = vorr_s8(*v239.i8, *&vextq_s8(v239, v239, 8uLL));
        while (v215 != v219)
        {
LABEL_146:
          v249 = *v220++;
          v69 |= (v249 <= *&a5) << v219++;
        }
      }

      v217 = v215;
      v215 = v216;
      if (v71)
      {
        goto LABEL_149;
      }

LABEL_161:
      if (v69 && v68)
      {
        do
        {
          v275 = __clz(__rbit64(v69));
          v69 &= v69 - 1;
          v276 = &v66[-__clz(__rbit64(v68))];
          v277 = v64->i32[v275];
          v64->i32[v275] = *v276;
          *v276 = v277;
          v68 &= v68 - 1;
        }

        while (v68 && v69);
      }

      if (v69)
      {
        v278 = 0;
      }

      else
      {
        v278 = v217;
      }

      a1 = &v64->f32[v278];
      if (!v68)
      {
        goto LABEL_174;
      }

      if (v69)
      {
        do
        {
LABEL_177:
          v282 = __clz(v69) ^ 0x3F;
          v283 = &a1[v282];
          if (v66 != v283)
          {
            v284 = *v283;
            *v283 = *v66;
            *v66 = v284;
          }

          v69 &= ~(-1 << v282);
          --v66;
        }

        while (v69);
        a1 = v66 + 1;
      }

      else
      {
        do
        {
          v279 = __clz(v68) ^ 0x3F;
          v280 = &v66[-v279];
          if (a1 != v280)
          {
            v281 = *v280;
            *v280 = *a1;
            *a1 = v281;
          }

          v68 &= ~(-1 << v279);
          ++a1;
        }

        while (v68);
      }

LABEL_180:
      v285 = a1 - 1;
      if (a1 - 1 != result)
      {
        *result = *v285;
      }

      *v285 = *&a5;
      if (v59 < v62)
      {
LABEL_185:
        v292 = a3;
        v293 = v10;
        v294 = v11;
        v295 = v12;
        v296 = v13;
        sub_1838EF090(result, v285);
        v13 = v296;
        v12 = v295;
        v11 = v294;
        v10 = v293;
        v9 = &unk_1839D9000;
        v8 = xmmword_1839CD1A0;
        v7 = xmmword_1839CD1B0;
        a3 = v292;
        a4 = 0;
        continue;
      }

      v286 = v12;
      v287 = v10;
      v288 = v9;
      v289 = a3;
      v290 = result;
      v291 = sub_1838F03B0(result, v285);
      result = sub_1838F03B0(a1, a2);
      a3 = v289;
      if (result)
      {
        v8 = xmmword_1839CD1A0;
        v7 = xmmword_1839CD1B0;
        v9 = v288;
        v10 = v287;
        v11 = &unk_1839D9000;
        a2 = a1 - 1;
        v12 = v286;
        v13 = &unk_1839D9000;
        a1 = v290;
        v14 = &unk_1839D9000;
        v15 = &unk_1839D9000;
        v16 = &unk_1839D9000;
        if (!v291)
        {
          continue;
        }

        return result;
      }

      v8 = xmmword_1839CD1A0;
      v7 = xmmword_1839CD1B0;
      v9 = v288;
      v10 = v287;
      v11 = &unk_1839D9000;
      v12 = v286;
      v13 = &unk_1839D9000;
      result = v290;
      v14 = &unk_1839D9000;
      v15 = &unk_1839D9000;
      v16 = &unk_1839D9000;
      v285 = a1 - 1;
      if (!v291)
      {
        goto LABEL_185;
      }
    }

    else
    {
      if (*&a5 <= *(a2 - 1))
      {
        v241 = a1 + 1;
        do
        {
          a1 = v241;
          if (v241 >= a2)
          {
            break;
          }

          ++v241;
        }

        while (*&a5 <= *a1);
      }

      else
      {
        do
        {
          v240 = a1[1];
          ++a1;
        }

        while (*&a5 <= v240);
      }

      v242 = a2;
      if (a1 < a2)
      {
        v242 = a2;
        do
        {
          v243 = *--v242;
        }

        while (*&a5 > v243);
      }

      if (a1 < v242)
      {
        v244 = *a1;
        v245 = *v242;
        do
        {
          *a1 = v245;
          *v242 = v244;
          do
          {
            v246 = a1[1];
            ++a1;
            v244 = v246;
          }

          while (*&a5 <= v246);
          do
          {
            v247 = *--v242;
            v245 = v247;
          }

          while (*&a5 > v247);
        }

        while (a1 < v242);
      }

      v248 = a1 - 1;
      if (a1 - 1 != result)
      {
        *result = *v248;
      }

      a4 = 0;
      *v248 = *&a5;
    }
  }

  v338 = a1 + 1;
  v340 = a1 == a2 || v338 == a2;
  if (a4)
  {
    if (!v340)
    {
      v341 = 4;
      v342 = a1;
      do
      {
        v345 = *v342;
        v344 = v342[1];
        v342 = v338;
        if (v344 > v345)
        {
          v346 = v341;
          do
          {
            *(a1 + v346) = v345;
            v347 = v346 - 4;
            if (v346 == 4)
            {
              v343 = a1;
              goto LABEL_279;
            }

            v345 = *(a1 + v346 - 8);
            v346 -= 4;
          }

          while (v344 > v345);
          v343 = (a1 + v347);
LABEL_279:
          *v343 = v344;
        }

        v338 = v342 + 1;
        v341 += 4;
      }

      while (v342 + 1 != a2);
    }
  }

  else if (!v340)
  {
    do
    {
      v372 = *result;
      v371 = result[1];
      result = v338;
      if (v371 > v372)
      {
        v373 = v338;
        do
        {
          *v373 = v372;
          v372 = *(v373 - 2);
          --v373;
        }

        while (v371 > v372);
        *v373 = v371;
      }

      ++v338;
    }

    while (result + 1 != a2);
  }

  return result;
}

BOOL sub_1838F03B0(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v26 = a1[1];
        v27 = *(a2 - 1);
        if (v26 > v27)
        {
          v28 = *(a1 + 1);
        }

        else
        {
          v28 = *(a2 - 1);
        }

        if (v26 > v27)
        {
          v26 = *(a2 - 1);
        }

        *(a2 - 1) = v26;
        *(a1 + 1) = v28;
        v29 = *(a2 - 1);
        if (v29 > *a1)
        {
          v30 = *(a2 - 1);
        }

        else
        {
          v30 = *a1;
        }

        if (v29 > *a1)
        {
          v29 = *a1;
        }

        *(a2 - 1) = v29;
        v32 = *a1;
        v31 = a1[1];
        if (v30 <= v31)
        {
          v32 = a1[1];
          v31 = v30;
        }

        *a1 = v32;
        a1[1] = v31;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 > v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = a1[2];
        }

        if (*a1 <= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 > v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 <= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 > v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 > v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 > v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 > v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 > v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 > v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v4 = *a1;
        v5 = a1[1];
        if (*a1 > v5)
        {
          v6 = *a1;
        }

        else
        {
          v6 = a1[1];
        }

        if (*a1 > v5)
        {
          v4 = a1[1];
        }

        *a1 = v6;
        a1[1] = v4;
        v7 = a1[3];
        v8 = *(a2 - 1);
        if (v7 > v8)
        {
          v9 = *(a1 + 3);
        }

        else
        {
          v9 = *(a2 - 1);
        }

        if (v7 > v8)
        {
          v7 = *(a2 - 1);
        }

        *(a2 - 1) = v7;
        *(a1 + 3) = v9;
        v10 = *(a2 - 1);
        v11 = a1[2];
        if (v10 > v11)
        {
          v12 = *(a2 - 1);
        }

        else
        {
          v12 = a1[2];
        }

        if (v10 > v11)
        {
          v10 = a1[2];
        }

        *(a2 - 1) = v10;
        v14 = *(a1 + 2);
        v13 = a1[3];
        v15 = a1[1];
        if (v12 <= v13)
        {
          v14 = *(a1 + 3);
          v13 = v12;
        }

        *(a1 + 2) = v14;
        a1[3] = v13;
        v16 = *(a2 - 1);
        if (v15 > v16)
        {
          v17 = v15;
        }

        else
        {
          v17 = *(a2 - 1);
        }

        if (v15 <= v16)
        {
          v16 = v15;
        }

        *(a2 - 1) = v16;
        v18 = *a1;
        v20 = a1[2];
        v19 = a1[3];
        if (v19 > *a1)
        {
          v21 = a1[3];
        }

        else
        {
          v21 = *a1;
        }

        if (v19 > *a1)
        {
          v19 = *a1;
        }

        if (v21 <= v20)
        {
          v18 = a1[2];
          v20 = v21;
        }

        if (v19 > v17)
        {
          v22 = v19;
        }

        else
        {
          v22 = v17;
        }

        if (v19 > v17)
        {
          v19 = v17;
        }

        if (v22 <= v20)
        {
          v17 = v20;
        }

        *a1 = v18;
        a1[1] = v17;
        if (v22 > v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v22;
        }

        a1[2] = v23;
        a1[3] = v19;
        return 1;
    }

    goto LABEL_63;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_63:
    v33 = a1 + 2;
    v34 = a1[2];
    v36 = *a1;
    v35 = a1[1];
    if (v35 > v34)
    {
      v37 = a1[1];
    }

    else
    {
      v37 = a1[2];
    }

    if (v35 <= v34)
    {
      v34 = a1[1];
    }

    if (v34 > v36)
    {
      v38 = v34;
    }

    else
    {
      v38 = *a1;
    }

    if (v34 > v36)
    {
      v34 = *a1;
    }

    *v33 = v34;
    if (v38 > v37)
    {
      v39 = v36;
    }

    else
    {
      v39 = v37;
    }

    if (v38 > v37)
    {
      v38 = v37;
    }

    *a1 = v39;
    a1[1] = v38;
    v40 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v41 = 0;
    for (i = 12; ; i += 4)
    {
      v43 = *v40;
      v44 = *v33;
      if (*v40 > *v33)
      {
        break;
      }

LABEL_87:
      v33 = v40++;
      if (v40 == a2)
      {
        return 1;
      }
    }

    v45 = i;
    do
    {
      *(a1 + v45) = v44;
      v46 = v45 - 4;
      if (v45 == 4)
      {
        *a1 = v43;
        if (++v41 != 8)
        {
          goto LABEL_87;
        }

        return v40 + 1 == a2;
      }

      v44 = *(a1 + v45 - 8);
      v45 -= 4;
    }

    while (v43 > v44);
    *(a1 + v46) = v43;
    if (++v41 != 8)
    {
      goto LABEL_87;
    }

    return v40 + 1 == a2;
  }

  v24 = *(a2 - 1);
  v25 = *a1;
  if (v24 <= *a1)
  {
    return 1;
  }

  *a1 = v24;
  *(a2 - 1) = v25;
  return 1;
}

void sub_1838F084C(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a2;
  objc_opt_self();
  v7 = v6;
  objc_opt_self();
  v13 = objc_msgSend_scriptCode(v7, v8, v9, v10, v11, v12);
  v14 = sub_1838F11EC(CHRecognizerConfiguration, v13);

  v138 = v7;
  objc_opt_self();
  v20 = objc_msgSend_languageCode(v138, v15, v16, v17, v18, v19);
  v25 = v20;
  if (v20)
  {
    if (objc_msgSend_caseInsensitiveCompare_(v20, v21, @"de", v22, v23, v24))
    {
      if (objc_msgSend_caseInsensitiveCompare_(v25, v26, @"en", v27, v28, v29))
      {
        if (objc_msgSend_caseInsensitiveCompare_(v25, v30, @"es", v31, v32, v33))
        {
          if (objc_msgSend_caseInsensitiveCompare_(v25, v34, @"fr", v35, v36, v37))
          {
            if (objc_msgSend_caseInsensitiveCompare_(v25, v38, @"it", v39, v40, v41))
            {
              if (objc_msgSend_caseInsensitiveCompare_(v25, v42, @"pt", v43, v44, v45))
              {
                if (objc_msgSend_caseInsensitiveCompare_(v25, v46, @"id", v47, v48, v49))
                {
                  if (objc_msgSend_caseInsensitiveCompare_(v25, v50, @"ms", v51, v52, v53))
                  {
                    if (objc_msgSend_caseInsensitiveCompare_(v25, v54, @"tr", v55, v56, v57))
                    {
                      if (objc_msgSend_caseInsensitiveCompare_(v25, v58, @"cs", v59, v60, v61))
                      {
                        if (objc_msgSend_caseInsensitiveCompare_(v25, v62, @"da", v63, v64, v65))
                        {
                          if (objc_msgSend_caseInsensitiveCompare_(v25, v66, @"nl", v67, v68, v69))
                          {
                            if (objc_msgSend_caseInsensitiveCompare_(v25, v70, @"nb", v71, v72, v73))
                            {
                              if (objc_msgSend_caseInsensitiveCompare_(v25, v74, @"nn", v75, v76, v77))
                              {
                                if (objc_msgSend_caseInsensitiveCompare_(v25, v78, @"pl", v79, v80, v81))
                                {
                                  if (objc_msgSend_caseInsensitiveCompare_(v25, v82, @"ro", v83, v84, v85))
                                  {
                                    if (objc_msgSend_caseInsensitiveCompare_(v25, v86, @"sv", v87, v88, v89))
                                    {
                                      if (objc_msgSend_caseInsensitiveCompare_(v25, v90, @"fi", v91, v92, v93))
                                      {
                                        if (objc_msgSend_caseInsensitiveCompare_(v25, v94, @"zh", v95, v96, v97))
                                        {
                                          if (objc_msgSend_caseInsensitiveCompare_(v25, v98, @"yue", v99, v100, v101))
                                          {
                                            if (objc_msgSend_caseInsensitiveCompare_(v25, v102, @"ja", v103, v104, v105))
                                            {
                                              if (objc_msgSend_caseInsensitiveCompare_(v25, v106, @"ko", v107, v108, v109))
                                              {
                                                if (objc_msgSend_caseInsensitiveCompare_(v25, v110, @"th", v111, v112, v113))
                                                {
                                                  if (objc_msgSend_caseInsensitiveCompare_(v25, v114, @"ru", v115, v116, v117))
                                                  {
                                                    if (objc_msgSend_caseInsensitiveCompare_(v25, v118, @"uk", v119, v120, v121))
                                                    {
                                                      if (objc_msgSend_caseInsensitiveCompare_(v25, v122, @"ar", v123, v124, v125) && objc_msgSend_caseInsensitiveCompare_(v25, v126, @"ars", v127, v128, v129))
                                                      {
                                                        if (objc_msgSend_caseInsensitiveCompare_(v25, v130, @"vi", v131, v132, v133))
                                                        {
                                                          v134 = 0;
                                                        }

                                                        else
                                                        {
                                                          v134 = 27;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v134 = 26;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v134 = 25;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v134 = 24;
                                                  }
                                                }

                                                else
                                                {
                                                  v134 = 23;
                                                }
                                              }

                                              else
                                              {
                                                v134 = 22;
                                              }
                                            }

                                            else
                                            {
                                              v134 = 21;
                                            }
                                          }

                                          else
                                          {
                                            v134 = 20;
                                          }
                                        }

                                        else
                                        {
                                          v134 = 19;
                                        }
                                      }

                                      else
                                      {
                                        v134 = 18;
                                      }
                                    }

                                    else
                                    {
                                      v134 = 17;
                                    }
                                  }

                                  else
                                  {
                                    v134 = 16;
                                  }
                                }

                                else
                                {
                                  v134 = 15;
                                }
                              }

                              else
                              {
                                v134 = 14;
                              }
                            }

                            else
                            {
                              v134 = 13;
                            }
                          }

                          else
                          {
                            v134 = 12;
                          }
                        }

                        else
                        {
                          v134 = 11;
                        }
                      }

                      else
                      {
                        v134 = 10;
                      }
                    }

                    else
                    {
                      v134 = 9;
                    }
                  }

                  else
                  {
                    v134 = 8;
                  }
                }

                else
                {
                  v134 = 7;
                }
              }

              else
              {
                v134 = 6;
              }
            }

            else
            {
              v134 = 4;
            }
          }

          else
          {
            v134 = 2;
          }
        }

        else
        {
          v134 = 3;
        }
      }

      else
      {
        v134 = 1;
      }
    }

    else
    {
      v134 = 5;
    }
  }

  else
  {
    v134 = 0;
  }

  if (v14 > 4)
  {
    if (v14 > 6)
    {
      v135 = v138;
      if (v14 == 7)
      {
        v136 = ((0xCFFFFFFu >> v134) & 1) == 0;
        v137 = 7;
      }

      else
      {
        v136 = ((0xBFFFFFFu >> v134) & 1) == 0;
        v137 = 8;
      }
    }

    else
    {
      v135 = v138;
      if (v14 == 5)
      {
        v136 = ((0xFBFFFFFu >> v134) & 1) == 0;
        v137 = 5;
      }

      else
      {
        v136 = ((0xF7FFFFFu >> v134) & 1) == 0;
        v137 = 6;
      }
    }

LABEL_75:
    if (!v136)
    {
      v137 = 0;
    }

    goto LABEL_77;
  }

  if (v14 <= 1)
  {
    v135 = v138;
    if (v14)
    {
      if ((v134 - 19) >= 8 && v134)
      {
        v137 = 1;
      }

      else
      {
        v137 = 0;
        v134 = 0;
      }
    }

    else
    {
      v137 = qword_1839D9FE0[v134];
    }

    goto LABEL_79;
  }

  v135 = v138;
  if ((v14 - 2) >= 2)
  {
    v136 = ((0xFDFFFFFu >> v134) & 1) == 0;
    v137 = 4;
    goto LABEL_75;
  }

  v136 = ((0xFE7FFFFu >> v134) & 1) == 0;
  if ((0xFE7FFFFu >> v134))
  {
    v137 = 0;
  }

  else
  {
    v137 = v14;
  }

LABEL_77:
  if (!v136)
  {
    v134 = 0;
  }

LABEL_79:
  if (a3)
  {
    *a3 = v134;
  }

  if (a4)
  {
    *a4 = v137;
  }
}

__CFString *sub_1838F0EC4(uint64_t a1, unint64_t a2)
{
  objc_opt_self();
  if (a2 > 0x1B)
  {
    return 0;
  }

  else
  {
    return off_1E6DDFB10[a2];
  }
}

uint64_t sub_1838F11EC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    if (objc_msgSend_caseInsensitiveCompare_(v2, v3, @"Latn", v4, v5, v6))
    {
      if (objc_msgSend_caseInsensitiveCompare_(v2, v7, @"Hans", v8, v9, v10))
      {
        if (objc_msgSend_caseInsensitiveCompare_(v2, v11, @"Hant", v12, v13, v14))
        {
          if (objc_msgSend_caseInsensitiveCompare_(v2, v15, @"Hrkt", v16, v17, v18) && objc_msgSend_caseInsensitiveCompare_(v2, v19, @"Hira", v20, v21, v22) && objc_msgSend_caseInsensitiveCompare_(v2, v23, @"Kata", v24, v25, v26) && objc_msgSend_caseInsensitiveCompare_(v2, v27, @"Jpan", v28, v29, v30) && objc_msgSend_caseInsensitiveCompare_(v2, v31, @"Hani", v32, v33, v34))
          {
            if (objc_msgSend_caseInsensitiveCompare_(v2, v35, @"Kore", v36, v37, v38))
            {
              if (objc_msgSend_caseInsensitiveCompare_(v2, v39, @"Thai", v40, v41, v42))
              {
                if (objc_msgSend_caseInsensitiveCompare_(v2, v43, @"Cyrl", v44, v45, v46))
                {
                  v51 = 8 * (objc_msgSend_caseInsensitiveCompare_(v2, v47, @"Arab", v48, v49, v50) == 0);

                  return v51;
                }

                else
                {

                  return 7;
                }
              }

              else
              {

                return 6;
              }
            }

            else
            {

              return 5;
            }
          }

          else
          {

            return 4;
          }
        }

        else
        {

          return 3;
        }
      }

      else
      {

        return 2;
      }
    }

    else
    {

      return 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1838F1400(uint64_t a1, uint64_t a2, int a3)
{
  objc_opt_self();
  switch(a2)
  {
    case 0:
      result = a3 == 3;
      break;
    case 1:
      result = a3 == 4 || (a3 & 0xFFFFFFFB) - 1 < 2;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
      result = (a3 & 0xFFFFFFFB) == 1 || (a3 & 0xFFFFFFFD) == 4;
      break;
    case 6:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
      result = a3 == 1 || (a3 & 0xFFFFFFFD) == 4;
      break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
      v5 = _os_feature_enabled_impl();
      v7 = a3 == 1 || (a3 & 0xFFFFFFFD) == 4;
      if (v5)
      {
        result = v7;
      }

      else
      {
        result = 0;
      }

      break;
    case 19:
    case 20:
    case 21:
      result = (a3 - 1) < 2 || (a3 & 0xFFFFFFFD) == 4;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void sub_1838F37C8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1838F37E0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1838F3A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_18378C3E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1838F3F1C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = LMLanguageModelCreate();
  v12 = v6;
  if (v5 && !v6)
  {
    v13 = objc_msgSend_localeIdentifier(v5, v7, v8, v9, v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v14, v13, *MEMORY[0x1E69ABF90], v15, v16);

    v12 = LMLanguageModelCreate();
  }

  return v12;
}

void sub_1838F3FB8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1838F47F0()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("com.apple.CoreHandwriting.LanguageModelLoadingQueue", attr);
  v2 = qword_1EA84D198;
  qword_1EA84D198 = v1;
}

void sub_1838F4874(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3812000000;
  v18 = sub_1838F4A90;
  v19 = sub_1838F4AA0;
  v20 = &unk_183A5AC72;
  v7 = *(a1 + 32);
  v8 = objc_msgSend_linguisticResourcesFallbackLocale(*(a1 + 40), a2, a3, a4, a5, a6);
  cf = sub_1838F3F1C(CHRecognizerConfiguration, v7, v8);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v9 = qword_1EA84DC58;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 64))
    {
      v10 = "has";
    }

    else
    {
      v10 = "has not";
    }

    *buf = 136315138;
    v23 = v10;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_DEBUG, "wordLM %s been loaded (async)", buf, 0xCu);
  }

  if (v16[6])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1838F4AC4;
    block[3] = &unk_1E6DDDC10;
    v11 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = &v15;
    dispatch_sync(v11, block);
  }

  _Block_object_dispose(&v15, 8);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1838F4A68(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_183686078(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1838F4A90(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void sub_1838F4AA0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1838F4AC4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend__updateWordLanguageModel_(*(a1 + 32), a2, *(*(*(a1 + 40) + 8) + 48), a4, a5, a6);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 48);
  *(v7 + 48) = 0;
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_1838F5398(uint64_t a1, const __CFURL *a2, int a3, void *a4, CFStringRef theString1, _BYTE *a6)
{
  if (CFStringCompare(theString1, *MEMORY[0x1E69AC040], 0) == kCFCompareEqualTo)
  {
    v30 = objc_msgSend_localeIdentifier(a4, v10, v11, v12, v13, v14);
    PathComponent = CFURLCopyLastPathComponent(a2);
    if (CFStringCompare(PathComponent, @"char.lm", 0) == kCFCompareEqualTo)
    {
      objc_msgSend_setObject_forKey_(*(a1 + 32), v16, a2, v30, v17, v18);
      v24 = objc_msgSend_localeIdentifier(*(*(a1 + 40) + 48), v19, v20, v21, v22, v23);
      isEqualToString = objc_msgSend_isEqualToString_(v30, v25, v24, v26, v27, v28);

      if (isEqualToString)
      {
        *a6 = 1;
      }
    }

    if (PathComponent)
    {
      CFRelease(PathComponent);
    }
  }
}

void sub_1838F549C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, const void *a10)
{
  sub_1838FB84C(&a10);

  _Unwind_Resume(a1);
}

void sub_1838F54D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, const void *a10)
{
  sub_1838FB84C(&a10);

  _Unwind_Resume(a1);
}

void sub_1838F57C0()
{
  v0 = [CHPatternNetwork alloc];
  v5 = objc_msgSend_initWithFile_(v0, v1, @"PP.bin", v2, v3, v4);
  v6 = qword_1EA84D1A8;
  qword_1EA84D1A8 = v5;
}

void sub_1838F6368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1838F77A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_substringFromIndex_(a2, a2, 4, a4, a5, a6);
  v13 = objc_msgSend_capitalizedString(v7, v8, v9, v10, v11, v12);

  v18 = objc_msgSend_stringByAppendingString_(@"UseCPPFeatureExtraction", v14, v13, v15, v16, v17);
  v23 = objc_msgSend_objectForKey_(*(a1 + 32), v19, v18, v20, v21, v22);
  v29 = objc_msgSend_BOOLValue(v23, v24, v25, v26, v27, v28);

  return v29;
}

void sub_1838F7834(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1838F8950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1838F8AC4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @" ", v5, v6, v7))
  {

    return 2;
  }

  else
  {
    v13 = 2 * (objc_msgSend_characterAtIndex_(v3, v8, 0, v9, v10, v11) == 57427);

    return v13;
  }
}

double sub_1838F8C58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_characterCount(v3, v4, v5, v6, v7, v8) < 2)
  {
    v14 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = objc_msgSend_characterCount(v3, v9, v10, v11, v12, v13) * -100.0;
  }

  return v14;
}

void sub_1838F98BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a2)
  {
    sub_183686078(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1838F9F74(uint64_t a1, void *a2)
{
  v3 = 0;
  sub_1838F084C(CHRecognizerConfiguration, a2, &v3, 0);
  return v3 == 1;
}

void sub_1838FA0D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

const void **sub_1838FB84C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

const void **sub_1838FB884(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1838FB8B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 48) = 0u;
  v3 = a1 + 48;
  *(a1 + 40) = 1065353216;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  v4 = a1 + 88;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 136) = 0u;
  v5 = a1 + 136;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 128) = *(a2 + 128);
  *a1 = *a2;
  if (a1 != a2)
  {
    *(a1 + 40) = *(a2 + 40);
    sub_1838FEABC(a1 + 8, *(a2 + 24), 0);
    *(a1 + 80) = *(a2 + 80);
    sub_1838FF148(v3, *(a2 + 64), 0);
    *(a1 + 120) = *(a2 + 120);
    sub_1838FF7A4(v4, *(a2 + 104), 0);
    *(a1 + 168) = *(a2 + 168);
    sub_1838FF958(v5, *(a2 + 152), 0);
  }

  return a1;
}

void sub_1838FB9B0(_Unwind_Exception *a1)
{
  sub_1838111C8(v4);
  sub_18381124C(v3);
  sub_1836CFA48(v2);
  sub_1836CFA48(v1);
  _Unwind_Resume(a1);
}

void sub_1838FB9DC(uint64_t a1)
{
  *a1 = 20;
  if (*(a1 + 32))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    *(a1 + 24) = 0;
    v4 = *(a1 + 16);
    if (v4)
    {
      bzero(*(a1 + 8), 8 * v4);
    }

    *(a1 + 32) = 0;
  }

  if (*(a1 + 112))
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      do
      {
        v12 = *v5;
        v13 = v5[6];
        if (v13)
        {
          do
          {
            v14 = *v13;
            operator delete(v13);
            v13 = v14;
          }

          while (v14);
        }

        v15 = v5[4];
        v5[4] = 0;
        if (v15)
        {
          operator delete(v15);
        }

        operator delete(v5);
        v5 = v12;
      }

      while (v12);
    }

    *(a1 + 104) = 0;
    v6 = *(a1 + 96);
    if (v6)
    {
      bzero(*(a1 + 88), 8 * v6);
    }

    *(a1 + 112) = 0;
  }

  if (*(a1 + 160))
  {
    v7 = *(a1 + 152);
    if (v7)
    {
      do
      {
        v16 = *v7;
        v17 = v7[5];
        if (v17)
        {
          do
          {
            v18 = *v17;
            operator delete(v17);
            v17 = v18;
          }

          while (v18);
        }

        v19 = v7[3];
        v7[3] = 0;
        if (v19)
        {
          operator delete(v19);
        }

        operator delete(v7);
        v7 = v16;
      }

      while (v16);
    }

    *(a1 + 152) = 0;
    v8 = *(a1 + 144);
    if (v8)
    {
      bzero(*(a1 + 136), 8 * v8);
    }

    *(a1 + 160) = 0;
  }

  if (*(a1 + 72))
  {
    v9 = *(a1 + 64);
    if (v9)
    {
      do
      {
        v10 = *v9;
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    *(a1 + 64) = 0;
    v11 = *(a1 + 56);
    if (v11)
    {
      bzero(*(a1 + 48), 8 * v11);
    }

    *(a1 + 72) = 0;
  }
}

int8x8_t *sub_1838FBB5C(int8x8_t *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a3 ^ (2 * v4);
  v6 = result[2];
  if (!*&v6)
  {
    goto LABEL_53;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = *a3 ^ (2 * v4);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*&result[1] + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_28:
    if (v7.u32[0] > 1uLL)
    {
      v15 = *a3 ^ (2 * v4);
      if (v5 >= *&v6)
      {
        v15 = v5 % *&v6;
      }
    }

    else
    {
      v15 = (*&v6 - 1) & v5;
    }

    v16 = *(*&result[1] + 8 * v15);
    if (v16)
    {
      v17 = *v16;
      if (v17)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v21 = v17[1];
            if (v21 == v5)
            {
              if (v17[2] == v3 && v17[3] == v4)
              {
                return result;
              }
            }

            else if ((v21 & (*&v6 - 1)) != v15)
            {
              goto LABEL_53;
            }

            v17 = *v17;
            if (!v17)
            {
              goto LABEL_53;
            }
          }
        }

        do
        {
          v19 = v17[1];
          if (v19 == v5)
          {
            if (v17[2] == v3 && v17[3] == v4)
            {
              return result;
            }
          }

          else
          {
            if (v19 >= *&v6)
            {
              v19 %= *&v6;
            }

            if (v19 != v15)
            {
              break;
            }
          }

          v17 = *v17;
        }

        while (v17);
      }
    }

LABEL_53:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v3 && v10[3] == v4)
        {
          goto LABEL_55;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_28;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v14 = v10[1];
    if (v14 == v5)
    {
      break;
    }

    if (v14 >= *&v6)
    {
      v14 %= *&v6;
    }

    if (v14 != v8)
    {
      goto LABEL_28;
    }

LABEL_23:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_28;
    }
  }

  if (v10[2] != v3 || v10[3] != v4)
  {
    goto LABEL_23;
  }

LABEL_55:
  v10[4] += a2;
  return result;
}

void sub_1838FBF4C(void *a1, int8x8_t *a2, void *a3)
{
  v5 = a1;
  v6 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  for (i = -1; i != 2; ++i)
  {
    for (j = -1; j != 2; ++j)
    {
      if (j | i)
      {
        v9 = a2[2];
        if (v9)
        {
          v10 = *a3 + j;
          v11 = a3[1] + i;
          v12 = v10 ^ (2 * v11);
          v13 = vcnt_s8(v9);
          v13.i16[0] = vaddlv_u8(v13);
          if (v13.u32[0] > 1uLL)
          {
            v14 = v10 ^ (2 * v11);
            if (v12 >= *&v9)
            {
              v14 = v12 % *&v9;
            }
          }

          else
          {
            v14 = v12 & (*&v9 - 1);
          }

          v15 = *(*&a2[1] + 8 * v14);
          if (v15)
          {
            v16 = *v15;
            if (v16)
            {
              if (v13.u32[0] < 2uLL)
              {
                v17 = *&v9 - 1;
                while (1)
                {
                  v19 = v16[1];
                  if (v12 == v19)
                  {
                    if (v16[2] == v10 && v16[3] == v11)
                    {
                      goto LABEL_35;
                    }
                  }

                  else if ((v19 & v17) != v14)
                  {
                    goto LABEL_6;
                  }

                  v16 = *v16;
                  if (!v16)
                  {
                    goto LABEL_6;
                  }
                }
              }

              do
              {
                v21 = v16[1];
                if (v12 == v21)
                {
                  if (v16[2] == v10 && v16[3] == v11)
                  {
LABEL_35:
                    if (v16[4] >= 0x15uLL)
                    {
                      v22 = v5[2];
                      if (v6 < v22)
                      {
                        *v6 = v10;
                        *(v6 + 8) = v11;
                        v6 += 16;
                      }

                      else
                      {
                        v23 = v6;
                        v24 = v6 >> 4;
                        v25 = v24 + 1;
                        if ((v24 + 1) >> 60)
                        {
                          *a1 = 0;
                          sub_18368964C();
                        }

                        if (v22 >> 3 > v25)
                        {
                          v25 = v22 >> 3;
                        }

                        if (v22 >= 0x7FFFFFFFFFFFFFF0)
                        {
                          v26 = 0xFFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v26 = v25;
                        }

                        if (v26)
                        {
                          if (!(v26 >> 60))
                          {
                            operator new();
                          }

                          *a1 = 0;
                          sub_183688F00();
                        }

                        v27 = (16 * v24);
                        *v27 = v10;
                        v27[1] = v11;
                        v6 = 16 * v24 + 16;
                        memcpy(0, 0, v23);
                        v5 = a1;
                        a1[1] = v6;
                        a1[2] = 0;
                      }

                      v5[1] = v6;
                    }

                    break;
                  }
                }

                else
                {
                  if (v21 >= *&v9)
                  {
                    v21 %= *&v9;
                  }

                  if (v21 != v14)
                  {
                    break;
                  }
                }

                v16 = *v16;
              }

              while (v16);
            }
          }
        }
      }

LABEL_6:
      ;
    }

    *v5 = 0;
  }
}

void sub_1838FC1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10)
{
  *a9 = a10;
  if (a10)
  {
    a9[1] = a10;
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1838FC1E0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v5 = a1;
  *v223 = 0u;
  *v224 = 0u;
  v225 = 1065353216;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a1 + 104);
    v8 = (a1 + 152);
    do
    {
      __p[0] = v6[2];
      v229.i64[0] = __p;
      for (i = sub_18390044C((v5 + 136), __p[0])[5]; i; i = *i)
      {
        sub_1838FBB5C(v5, -i[4], i + 2);
        v10 = *(v5 + 96);
        if (!*&v10)
        {
          goto LABEL_32;
        }

        v11 = i[2];
        v12 = i[3];
        v13 = v11 ^ (2 * v12);
        v14 = vcnt_s8(v10);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v15 = v11 ^ (2 * v12);
          if (v13 >= *&v10)
          {
            v15 = v13 % *&v10;
          }
        }

        else
        {
          v15 = (*&v10 - 1) & v13;
        }

        v16 = *(*(v5 + 88) + 8 * v15);
        if (v16)
        {
          v17 = *v16;
          if (*v16)
          {
            if (v14.u32[0] < 2uLL)
            {
              v18 = *&v10 - 1;
              while (1)
              {
                v22 = v17[1];
                if (v22 == v13)
                {
                  if (v17[2] == v11 && v17[3] == v12)
                  {
                    goto LABEL_33;
                  }
                }

                else if ((v22 & v18) != v15)
                {
                  goto LABEL_32;
                }

                v17 = *v17;
                if (!v17)
                {
                  goto LABEL_33;
                }
              }
            }

            do
            {
              v20 = v17[1];
              if (v20 == v13)
              {
                if (v17[2] == v11 && v17[3] == v12)
                {
                  break;
                }
              }

              else
              {
                if (v20 >= *&v10)
                {
                  v20 %= *&v10;
                }

                if (v20 != v15)
                {
                  goto LABEL_32;
                }
              }

              v17 = *v17;
            }

            while (v17);
          }
        }

        else
        {
LABEL_32:
          v17 = 0;
        }

LABEL_33:
        v23 = v17[5];
        if (v23)
        {
          v24 = vcnt_s8(v23);
          v24.i16[0] = vaddlv_u8(v24);
          if (v24.u32[0] > 1uLL)
          {
            v25 = __p[0];
            if (__p[0] >= *&v23)
            {
              v25 = __p[0] % *&v23;
            }
          }

          else
          {
            v25 = (*&v23 - 1) & __p[0];
          }

          v26 = *(v17[4] + 8 * v25);
          if (v26)
          {
            v27 = *v26;
            if (*v26)
            {
              if (v24.u32[0] < 2uLL)
              {
                v28 = *&v23 - 1;
                while (1)
                {
                  v30 = *(v27 + 8);
                  if (v30 == __p[0])
                  {
                    if (*(v27 + 16) == __p[0])
                    {
                      goto LABEL_54;
                    }
                  }

                  else if ((v30 & v28) != v25)
                  {
                    goto LABEL_56;
                  }

                  v27 = *v27;
                  if (!v27)
                  {
                    goto LABEL_56;
                  }
                }
              }

              do
              {
                v29 = *(v27 + 8);
                if (v29 == __p[0])
                {
                  if (*(v27 + 16) == __p[0])
                  {
LABEL_54:
                    sub_183900778(&v229, v17 + 4, v27);
                    if (v229.i64[0])
                    {
                      operator delete(v229.i64[0]);
                    }

                    break;
                  }
                }

                else
                {
                  if (v29 >= *&v23)
                  {
                    v29 %= *&v23;
                  }

                  if (v29 != v25)
                  {
                    break;
                  }
                }

                v27 = *v27;
              }

              while (v27);
            }
          }
        }

LABEL_56:
        if (!v17[7])
        {
          v31 = *(a1 + 96);
          v32 = v17[1];
          v33 = vcnt_s8(v31);
          v33.i16[0] = vaddlv_u8(v33);
          if (v33.u32[0] > 1uLL)
          {
            if (v32 >= *&v31)
            {
              v32 %= *&v31;
            }
          }

          else
          {
            v32 &= *&v31 - 1;
          }

          v34 = *(a1 + 88);
          v35 = *(v34 + 8 * v32);
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35 != v17);
          if (v36 == v7)
          {
            goto LABEL_74;
          }

          v37 = v36[1];
          if (v33.u32[0] > 1uLL)
          {
            if (v37 >= *&v31)
            {
              v37 %= *&v31;
            }
          }

          else
          {
            v37 &= *&v31 - 1;
          }

          if (v37 != v32)
          {
LABEL_74:
            if (!*v17)
            {
              goto LABEL_75;
            }

            v38 = *(*v17 + 8);
            if (v33.u32[0] > 1uLL)
            {
              if (v38 >= *&v31)
              {
                v38 %= *&v31;
              }
            }

            else
            {
              v38 &= *&v31 - 1;
            }

            if (v38 != v32)
            {
LABEL_75:
              *(v34 + 8 * v32) = 0;
            }
          }

          v39 = *v17;
          if (*v17)
          {
            v40 = *(v39 + 8);
            if (v33.u32[0] > 1uLL)
            {
              if (v40 >= *&v31)
              {
                v40 %= *&v31;
              }
            }

            else
            {
              v40 &= *&v31 - 1;
            }

            if (v40 != v32)
            {
              *(v34 + 8 * v40) = v36;
              v39 = *v17;
            }
          }

          *v36 = v39;
          *v17 = 0;
          --*(a1 + 112);
          v41 = v17[6];
          if (v41)
          {
            do
            {
              v42 = *v41;
              operator delete(v41);
              v41 = v42;
            }

            while (v42);
          }

          v43 = v17[4];
          v17[4] = 0;
          if (v43)
          {
            operator delete(v43);
          }

          operator delete(v17);
        }

        sub_1838FFFB0(v223, i[2], i[3]);
        v5 = a1;
      }

      v44 = __p[0];
      v45 = *(v5 + 56);
      if (!*&v45)
      {
        v4 = a2;
        goto LABEL_114;
      }

      v46 = vcnt_s8(v45);
      v46.i16[0] = vaddlv_u8(v46);
      v4 = a2;
      if (v46.u32[0] > 1uLL)
      {
        v47 = __p[0];
        if (__p[0] >= *&v45)
        {
          v47 = __p[0] % *&v45;
        }
      }

      else
      {
        v47 = (*&v45 - 1) & __p[0];
      }

      v48 = *(*(v5 + 48) + 8 * v47);
      if (v48)
      {
        v49 = *v48;
        if (*v48)
        {
          if (v46.u32[0] < 2uLL)
          {
            v50 = *&v45 - 1;
            while (1)
            {
              v52 = *(v49 + 8);
              if (v52 == __p[0])
              {
                if (*(v49 + 16) == __p[0])
                {
                  goto LABEL_111;
                }
              }

              else if ((v52 & v50) != v47)
              {
                goto LABEL_114;
              }

              v49 = *v49;
              if (!v49)
              {
                goto LABEL_114;
              }
            }
          }

          do
          {
            v51 = *(v49 + 8);
            if (v51 == __p[0])
            {
              if (*(v49 + 16) == __p[0])
              {
LABEL_111:
                sub_183900778(&v229, (v5 + 48), v49);
                if (v229.i64[0])
                {
                  operator delete(v229.i64[0]);
                }

                v44 = __p[0];
                break;
              }
            }

            else
            {
              if (v51 >= *&v45)
              {
                v51 %= *&v45;
              }

              if (v51 != v47)
              {
                break;
              }
            }

            v49 = *v49;
          }

          while (v49);
        }
      }

LABEL_114:
      v53 = *(v5 + 144);
      if (v53)
      {
        v54 = vcnt_s8(v53);
        v54.i16[0] = vaddlv_u8(v54);
        if (v54.u32[0] > 1uLL)
        {
          v55 = v44;
          v56 = a1;
          if (*&v53 <= v44)
          {
            v55 = v44 % *&v53;
          }
        }

        else
        {
          v55 = (*&v53 - 1) & v44;
          v56 = a1;
        }

        v57 = *(v56 + 136);
        v58 = *(v57 + 8 * v55);
        if (v58)
        {
          v59 = *v58;
          if (*v58)
          {
            v60 = *&v53 - 1;
            if (v54.u32[0] < 2uLL)
            {
              while (1)
              {
                v61 = v59[1];
                if (v61 == v44)
                {
                  if (v59[2] == v44)
                  {
                    goto LABEL_135;
                  }
                }

                else if ((v61 & v60) != v55)
                {
                  goto LABEL_4;
                }

                v59 = *v59;
                if (!v59)
                {
                  goto LABEL_4;
                }
              }
            }

            do
            {
              v62 = v59[1];
              if (v62 == v44)
              {
                if (v59[2] == v44)
                {
LABEL_135:
                  if (v54.u32[0] > 1uLL)
                  {
                    if (*&v53 <= v44)
                    {
                      v44 %= *&v53;
                    }
                  }

                  else
                  {
                    v44 &= v60;
                  }

                  v63 = *(v57 + 8 * v44);
                  do
                  {
                    v64 = v63;
                    v63 = *v63;
                  }

                  while (v63 != v59);
                  if (v64 == v8)
                  {
                    goto LABEL_152;
                  }

                  v65 = v64[1];
                  if (v54.u32[0] > 1uLL)
                  {
                    if (v65 >= *&v53)
                    {
                      v65 %= *&v53;
                    }
                  }

                  else
                  {
                    v65 &= v60;
                  }

                  if (v65 != v44)
                  {
LABEL_152:
                    if (!*v59)
                    {
                      goto LABEL_153;
                    }

                    v66 = *(*v59 + 8);
                    if (v54.u32[0] > 1uLL)
                    {
                      if (v66 >= *&v53)
                      {
                        v66 %= *&v53;
                      }
                    }

                    else
                    {
                      v66 &= v60;
                    }

                    if (v66 != v44)
                    {
LABEL_153:
                      *(v57 + 8 * v44) = 0;
                    }
                  }

                  v67 = *v59;
                  if (*v59)
                  {
                    v68 = *(v67 + 8);
                    if (v54.u32[0] > 1uLL)
                    {
                      if (v68 >= *&v53)
                      {
                        v68 %= *&v53;
                      }
                    }

                    else
                    {
                      v68 &= v60;
                    }

                    if (v68 != v44)
                    {
                      *(v57 + 8 * v68) = v64;
                      v67 = *v59;
                    }
                  }

                  *v64 = v67;
                  *v59 = 0;
                  --*(a1 + 160);
                  v69 = v59[5];
                  if (v69)
                  {
                    do
                    {
                      v70 = *v69;
                      operator delete(v69);
                      v69 = v70;
                    }

                    while (v70);
                  }

                  v71 = v59[3];
                  v59[3] = 0;
                  if (v71)
                  {
                    operator delete(v71);
                  }

                  operator delete(v59);
                  break;
                }
              }

              else
              {
                if (v62 >= *&v53)
                {
                  v62 %= *&v53;
                }

                if (v62 != v55)
                {
                  break;
                }
              }

              v59 = *v59;
            }

            while (v59);
          }
        }
      }

LABEL_4:
      v6 = *v6;
      v5 = a1;
    }

    while (v6);
  }

  *v220 = 0u;
  *v221 = 0u;
  v222 = 1065353216;
  v72 = v4[2];
  if (!v72)
  {
    goto LABEL_308;
  }

  v217 = (v5 + 88);
  do
  {
    v73 = v72[3];
    v214 = v72[2];
    v219 = v214;
    v213 = v72;
    v74 = v72[4];
    *__p = 0u;
    *v227 = 0u;
    v228 = 1065353216;
    if (v73 == v74)
    {
      goto LABEL_282;
    }

    do
    {
      v216 = vcvtq_s64_f64(vdivq_f64(*v73, vdupq_lane_s64(COERCE__INT64(*v5), 0)));
      v229 = v216;
      sub_1838FBB5C(v5, 1, v229.i64);
      v75 = v216.i64[0] ^ (2 * v216.i64[1]);
      if (!__p[1])
      {
        goto LABEL_219;
      }

      v76 = vcnt_s8(__p[1]);
      v76.i16[0] = vaddlv_u8(v76);
      if (v76.u32[0] > 1uLL)
      {
        v77 = v216.i64[0] ^ (2 * v216.i64[1]);
        if (v75 >= __p[1])
        {
          v77 = v75 % __p[1];
        }
      }

      else
      {
        v77 = (__p[1] - 1) & v75;
      }

      v78 = *(__p[0] + v77);
      if (!v78 || (v79 = *v78) == 0)
      {
LABEL_194:
        if (v76.u32[0] > 1uLL)
        {
          v84 = v216.i64[0] ^ (2 * v216.i64[1]);
          if (v75 >= __p[1])
          {
            v84 = v75 % __p[1];
          }
        }

        else
        {
          v84 = (__p[1] - 1) & v75;
        }

        v85 = *(__p[0] + v84);
        if (v85)
        {
          v86 = *v85;
          if (v86)
          {
            if (v76.u32[0] < 2uLL)
            {
              while (1)
              {
                v90 = v86[1];
                if (v90 == v75)
                {
                  if (v86[2] == v216.i64[0] && v86[3] == v216.i64[1])
                  {
                    goto LABEL_221;
                  }
                }

                else if ((v90 & (__p[1] - 1)) != v84)
                {
                  goto LABEL_219;
                }

                v86 = *v86;
                if (!v86)
                {
                  goto LABEL_219;
                }
              }
            }

            do
            {
              v88 = v86[1];
              if (v88 == v75)
              {
                if (v86[2] == v216.i64[0] && v86[3] == v216.i64[1])
                {
                  goto LABEL_221;
                }
              }

              else
              {
                if (v88 >= __p[1])
                {
                  v88 %= __p[1];
                }

                if (v88 != v84)
                {
                  break;
                }
              }

              v86 = *v86;
            }

            while (v86);
          }
        }

LABEL_219:
        operator new();
      }

      if (v76.u32[0] < 2uLL)
      {
        while (1)
        {
          v83 = v79[1];
          if (v83 == v75)
          {
            if (v79[2] == v216.i64[0] && v79[3] == v216.i64[1])
            {
              goto LABEL_220;
            }
          }

          else if ((v83 & (__p[1] - 1)) != v77)
          {
            goto LABEL_194;
          }

          v79 = *v79;
          if (!v79)
          {
            goto LABEL_194;
          }
        }
      }

      while (1)
      {
        v81 = v79[1];
        if (v81 == v75)
        {
          break;
        }

        if (v81 >= __p[1])
        {
          v81 %= __p[1];
        }

        if (v81 != v77)
        {
          goto LABEL_194;
        }

LABEL_181:
        v79 = *v79;
        if (!v79)
        {
          goto LABEL_194;
        }
      }

      if (v79[2] != v216.i64[0] || v79[3] != v216.i64[1])
      {
        goto LABEL_181;
      }

LABEL_220:
      ++v79[4];
LABEL_221:
      ++v73;
    }

    while (v73 != v74);
    v91 = v227[0];
    if (!v227[0])
    {
      goto LABEL_282;
    }

    while (2)
    {
      v92 = v91[2];
      v232 = v214;
      v93 = *(v5 + 96);
      if (v93)
      {
        v94 = v91[3];
        v95 = v92 ^ (2 * v94);
        v96 = vcnt_s8(v93);
        v96.i16[0] = vaddlv_u8(v96);
        if (v96.u32[0] > 1uLL)
        {
          v97 = v92 ^ (2 * v94);
          if (v95 >= *&v93)
          {
            v97 = v95 % *&v93;
          }
        }

        else
        {
          v97 = (*&v93 - 1) & v95;
        }

        v98 = *(*v217 + 8 * v97);
        if (v98)
        {
          v99 = *v98;
          if (v99)
          {
            if (v96.u32[0] < 2uLL)
            {
              v100 = *&v93 - 1;
              while (1)
              {
                v104 = v99[1];
                if (v104 == v95)
                {
                  if (v99[2] == v92 && v99[3] == v94)
                  {
                    goto LABEL_276;
                  }
                }

                else if ((v104 & v100) != v97)
                {
                  goto LABEL_249;
                }

                v99 = *v99;
                if (!v99)
                {
                  goto LABEL_249;
                }
              }
            }

            do
            {
              v102 = v99[1];
              if (v102 == v95)
              {
                if (v99[2] == v92 && v99[3] == v94)
                {
LABEL_276:
                  sub_183811498(v99 + 4, &v232);
                  goto LABEL_281;
                }
              }

              else
              {
                if (v102 >= *&v93)
                {
                  v102 %= *&v93;
                }

                if (v102 != v97)
                {
                  break;
                }
              }

              v99 = *v99;
            }

            while (v99);
          }
        }
      }

LABEL_249:
      v229 = 0u;
      v230 = 0u;
      v231 = 1065353216;
      sub_183811498(&v229, &v232);
      v105 = v91[2];
      v106 = v91[3];
      v107 = v105 ^ (2 * v106);
      v108 = *(v5 + 96);
      if (!*&v108)
      {
        goto LABEL_275;
      }

      v109 = vcnt_s8(v108);
      v109.i16[0] = vaddlv_u8(v109);
      if (v109.u32[0] > 1uLL)
      {
        v110 = v105 ^ (2 * v106);
        if (v107 >= *&v108)
        {
          v110 = v107 % *&v108;
        }
      }

      else
      {
        v110 = (*&v108 - 1) & v107;
      }

      v111 = *(*v217 + 8 * v110);
      if (!v111 || (v112 = *v111) == 0)
      {
LABEL_275:
        operator new();
      }

      if (v109.u32[0] < 2uLL)
      {
        while (1)
        {
          v116 = v112[1];
          if (v116 == v107)
          {
            if (v112[2] == v105 && v112[3] == v106)
            {
              goto LABEL_277;
            }
          }

          else if ((v116 & (*&v108 - 1)) != v110)
          {
            goto LABEL_275;
          }

          v112 = *v112;
          if (!v112)
          {
            goto LABEL_275;
          }
        }
      }

      while (2)
      {
        v114 = v112[1];
        if (v114 != v107)
        {
          if (v114 >= *&v108)
          {
            v114 %= *&v108;
          }

          if (v114 != v110)
          {
            goto LABEL_275;
          }

          goto LABEL_262;
        }

        if (v112[2] != v105 || v112[3] != v106)
        {
LABEL_262:
          v112 = *v112;
          if (!v112)
          {
            goto LABEL_275;
          }

          continue;
        }

        break;
      }

LABEL_277:
      v117 = v230;
      if (v230)
      {
        do
        {
          v118 = *v117;
          operator delete(v117);
          v117 = v118;
        }

        while (v118);
      }

      v119 = v229.i64[0];
      v229.i64[0] = 0;
      if (v119)
      {
        operator delete(v119);
      }

LABEL_281:
      sub_1838FFFB0(v223, v91[2], v91[3]);
      v91 = *v91;
      if (v91)
      {
        continue;
      }

      break;
    }

LABEL_282:
    v120 = *(v5 + 144);
    if (!*&v120)
    {
      goto LABEL_302;
    }

    v121 = vcnt_s8(v120);
    v121.i16[0] = vaddlv_u8(v121);
    if (v121.u32[0] > 1uLL)
    {
      v122 = v214;
      if (*&v120 <= v214)
      {
        v122 = v214 % *&v120;
      }
    }

    else
    {
      v122 = (*&v120 - 1) & v214;
    }

    v123 = *(*(v5 + 136) + 8 * v122);
    if (!v123 || (v124 = *v123) == 0)
    {
LABEL_302:
      operator new();
    }

    if (v121.u32[0] < 2uLL)
    {
      while (1)
      {
        v126 = v124[1];
        if (v126 == v214)
        {
          if (v124[2] == v214)
          {
            goto LABEL_303;
          }
        }

        else if ((v126 & (*&v120 - 1)) != v122)
        {
          goto LABEL_302;
        }

        v124 = *v124;
        if (!v124)
        {
          goto LABEL_302;
        }
      }
    }

    while (2)
    {
      v125 = v124[1];
      if (v125 != v214)
      {
        if (v125 >= *&v120)
        {
          v125 %= *&v120;
        }

        if (v125 != v122)
        {
          goto LABEL_302;
        }

        goto LABEL_292;
      }

      if (v124[2] != v214)
      {
LABEL_292:
        v124 = *v124;
        if (!v124)
        {
          goto LABEL_302;
        }

        continue;
      }

      break;
    }

LABEL_303:
    v127 = v227[0];
    if (v227[0])
    {
      do
      {
        v128 = *v127;
        operator delete(v127);
        v127 = v128;
      }

      while (v128);
    }

    v129 = __p[0];
    __p[0] = 0;
    if (v129)
    {
      operator delete(v129);
    }

    sub_183811498(v220, &v219);
    v72 = *v213;
  }

  while (*v213);
LABEL_308:
  v130 = v224[0];
  if (v224[0])
  {
    v131 = (v5 + 88);
    do
    {
      v132 = v130[2];
      v133 = v130[3];
      v134 = v5;
      v135 = v132 ^ (2 * v133);
      v136 = v134[12];
      if (!*&v136)
      {
        goto LABEL_341;
      }

      v137 = vcnt_s8(v136);
      v137.i16[0] = vaddlv_u8(v137);
      if (v137.u32[0] > 1uLL)
      {
        v138 = v132 ^ (2 * v133);
        if (v135 >= *&v136)
        {
          v138 = v135 % *&v136;
        }
      }

      else
      {
        v138 = (*&v136 - 1) & v135;
      }

      v139 = *(*v131 + 8 * v138);
      if (!v139 || (v140 = *v139) == 0)
      {
LABEL_341:
        operator new();
      }

      if (v137.u32[0] < 2uLL)
      {
        while (1)
        {
          v143 = v140[1];
          if (v143 == v135)
          {
            if (v140[2] == v132 && v140[3] == v133)
            {
              goto LABEL_339;
            }
          }

          else if ((v143 & (*&v136 - 1)) != v138)
          {
            goto LABEL_341;
          }

          v140 = *v140;
          if (!v140)
          {
            goto LABEL_341;
          }
        }
      }

      while (1)
      {
        v141 = v140[1];
        if (v141 == v135)
        {
          break;
        }

        if (v141 >= *&v136)
        {
          v141 %= *&v136;
        }

        if (v141 != v138)
        {
          goto LABEL_341;
        }

LABEL_321:
        v140 = *v140;
        if (!v140)
        {
          goto LABEL_341;
        }
      }

      if (v140[2] != v132 || v140[3] != v133)
      {
        goto LABEL_321;
      }

LABEL_339:
      v5 = a1;
      for (j = v140[6]; j; j = *j)
      {
        v146 = j[2];
        v229.i64[0] = v146;
        v147 = v4[1];
        if (v147)
        {
          v148 = vcnt_s8(v147);
          v148.i16[0] = vaddlv_u8(v148);
          if (v148.u32[0] > 1uLL)
          {
            v149 = v146;
            if (v146 >= *&v147)
            {
              v149 = v146 % *&v147;
            }
          }

          else
          {
            v149 = (*&v147 - 1) & v146;
          }

          v150 = *(*v4 + 8 * v149);
          if (v150)
          {
            v151 = *v150;
            if (v151)
            {
              if (v148.u32[0] < 2uLL)
              {
                v152 = *&v147 - 1;
                while (1)
                {
                  v154 = v151[1];
                  if (v146 == v154)
                  {
                    if (v151[2] == v146)
                    {
                      goto LABEL_363;
                    }
                  }

                  else if ((v154 & v152) != v149)
                  {
                    goto LABEL_362;
                  }

                  v151 = *v151;
                  if (!v151)
                  {
                    goto LABEL_362;
                  }
                }
              }

              do
              {
                v153 = v151[1];
                if (v146 == v153)
                {
                  if (v151[2] == v146)
                  {
                    goto LABEL_363;
                  }
                }

                else
                {
                  if (v153 >= *&v147)
                  {
                    v153 %= *&v147;
                  }

                  if (v153 != v149)
                  {
                    break;
                  }
                }

                v151 = *v151;
              }

              while (v151);
            }
          }
        }

LABEL_362:
        sub_183811498(v220, &v229);
LABEL_363:
        ;
      }

      v130 = *v130;
    }

    while (v130);
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v155 = v221[0];
  if (!v221[0])
  {
    goto LABEL_494;
  }

  while (2)
  {
    v233 = v155[2];
    __p[0] = v233;
    v229.i64[0] = __p;
    v156 = sub_18390044C((v5 + 136), v233)[5];
    if (!v156)
    {
      goto LABEL_420;
    }

    v157 = *(v5 + 16);
    if (!*&v157)
    {
      goto LABEL_420;
    }

    v158 = 0;
    v159 = vcnt_s8(v157);
    v159.i16[0] = vaddlv_u8(v159);
    v160 = *&v157 - 1;
    do
    {
      while (1)
      {
        v161 = v156[2];
        v162 = v156[3];
        v163 = v161 ^ (2 * v162);
        if (v159.u32[0] > 1uLL)
        {
          v164 = v161 ^ (2 * v162);
          if (v163 >= *&v157)
          {
            v164 = v163 % *&v157;
          }
        }

        else
        {
          v164 = v163 & v160;
        }

        v165 = *(*(v5 + 8) + 8 * v164);
        if (v165)
        {
          v166 = *v165;
          if (v166)
          {
            break;
          }
        }

LABEL_372:
        v156 = *v156;
        if (!v156)
        {
          goto LABEL_400;
        }
      }

      if (v159.u32[0] < 2uLL)
      {
        while (1)
        {
          v168 = v166[1];
          if (v163 == v168)
          {
            if (v166[2] == v161 && v166[3] == v162)
            {
              goto LABEL_399;
            }
          }

          else if ((v168 & v160) != v164)
          {
            goto LABEL_372;
          }

          v166 = *v166;
          if (!v166)
          {
            goto LABEL_372;
          }
        }
      }

      while (1)
      {
        v170 = v166[1];
        if (v163 == v170)
        {
          break;
        }

        if (v170 >= *&v157)
        {
          v170 %= *&v157;
        }

        if (v170 != v164)
        {
          goto LABEL_372;
        }

LABEL_393:
        v166 = *v166;
        if (!v166)
        {
          goto LABEL_372;
        }
      }

      if (v166[2] != v161 || v166[3] != v162)
      {
        goto LABEL_393;
      }

LABEL_399:
      v158 += *(v166 + 8);
      v156 = *v156;
    }

    while (v156);
LABEL_400:
    if (v158 <= 10)
    {
      goto LABEL_420;
    }

    v229.i64[0] = __p;
    v171 = sub_18390044C((v5 + 136), __p[0]);
    v172 = v171;
    v173 = v171[6];
    v174 = v158 / v173;
    if (v173 < 6)
    {
LABEL_409:
      if (v173 <= 3)
      {
        if (v174 <= 70.0)
        {
          v177 = v172 + 5;
          while (1)
          {
            v177 = *v177;
            if (!v177)
            {
              break;
            }

            sub_1838FBF4C(&v229, a1, v177 + 2);
            v178 = v229;
            if (v229.i64[0])
            {
              operator delete(v229.i64[0]);
            }

            v4 = a2;
            if (v178.i64[1] - v178.i64[0] <= 0x20uLL)
            {
              v173 = v172[6];
              goto LABEL_417;
            }
          }
        }

        goto LABEL_419;
      }

LABEL_417:
      if ((v173 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        if (v174 > 34.0)
        {
          goto LABEL_419;
        }

        v199 = v172 + 5;
        do
        {
          v199 = *v199;
          v179 = v199 == 0;
          if (!v199)
          {
            break;
          }

          sub_1838FBF4C(&v229, a1, v199 + 2);
          v200 = v229;
          if (v229.i64[0])
          {
            operator delete(v229.i64[0]);
          }

          v4 = a2;
        }

        while (v200.i64[1] - v200.i64[0] > 0x20uLL);
        goto LABEL_421;
      }

LABEL_420:
      v179 = 0;
      goto LABEL_421;
    }

    if (v174 <= 20.0)
    {
      v175 = v171 + 5;
      while (1)
      {
        v175 = *v175;
        if (!v175)
        {
          break;
        }

        sub_1838FBF4C(&v229, v5, v175 + 2);
        v176 = v229;
        if (v229.i64[0])
        {
          operator delete(v229.i64[0]);
        }

        v4 = a2;
        v5 = a1;
        if (v176.i64[1] - v176.i64[0] <= 0x20uLL)
        {
          v173 = v172[6];
          goto LABEL_409;
        }
      }
    }

LABEL_419:
    v179 = 1;
LABEL_421:
    v5 = a1;
    v180 = *(a1 + 56);
    if (v180)
    {
      v181 = vcnt_s8(v180);
      v181.i16[0] = vaddlv_u8(v181);
      if (v181.u32[0] > 1uLL)
      {
        v182 = v233;
        if (v233 >= *&v180)
        {
          v182 = v233 % *&v180;
        }
      }

      else
      {
        v182 = (*&v180 - 1) & v233;
      }

      v183 = *(*(a1 + 48) + 8 * v182);
      if (v183)
      {
        v184 = *v183;
        if (*v183)
        {
          if (v181.u32[0] < 2uLL)
          {
            v185 = *&v180 - 1;
            while (1)
            {
              v187 = v184[1];
              if (v187 == v233)
              {
                if (v184[2] == v233)
                {
                  goto LABEL_463;
                }
              }

              else if ((v187 & v185) != v182)
              {
                goto LABEL_441;
              }

              v184 = *v184;
              if (!v184)
              {
                goto LABEL_441;
              }
            }
          }

          do
          {
            v186 = v184[1];
            if (v186 == v233)
            {
              if (v184[2] == v233)
              {
LABEL_463:
                if (!v179)
                {
                  sub_183900778(&v229, (a1 + 48), v184);
                  if (v229.i64[0])
                  {
                    operator delete(v229.i64[0]);
                  }

                  v196 = v4[1];
                  if (v196)
                  {
                    v197 = vcnt_s8(v196);
                    v197.i16[0] = vaddlv_u8(v197);
                    if (v197.u32[0] > 1uLL)
                    {
                      v198 = v233;
                      if (v233 >= *&v196)
                      {
                        v198 = v233 % *&v196;
                      }
                    }

                    else
                    {
                      v198 = (*&v196 - 1) & v233;
                    }

                    v201 = *(*v4 + 8 * v198);
                    if (v201)
                    {
                      v202 = *v201;
                      if (v202)
                      {
                        if (v197.u32[0] < 2uLL)
                        {
                          v203 = *&v196 - 1;
                          while (1)
                          {
                            v205 = v202[1];
                            if (v233 == v205)
                            {
                              if (v202[2] == v233)
                              {
                                goto LABEL_368;
                              }
                            }

                            else if ((v205 & v203) != v198)
                            {
                              goto LABEL_367;
                            }

                            v202 = *v202;
                            if (!v202)
                            {
                              goto LABEL_367;
                            }
                          }
                        }

                        do
                        {
                          v204 = v202[1];
                          if (v233 == v204)
                          {
                            if (v202[2] == v233)
                            {
                              goto LABEL_368;
                            }
                          }

                          else
                          {
                            if (v204 >= *&v196)
                            {
                              v204 %= *&v196;
                            }

                            if (v204 != v198)
                            {
                              break;
                            }
                          }

                          v202 = *v202;
                        }

                        while (v202);
                      }
                    }
                  }

LABEL_367:
                  sub_183811498(a4, &v233);
                }

                goto LABEL_368;
              }
            }

            else
            {
              if (v186 >= *&v180)
              {
                v186 %= *&v180;
              }

              if (v186 != v182)
              {
                break;
              }
            }

            v184 = *v184;
          }

          while (v184);
        }
      }
    }

LABEL_441:
    if (v179)
    {
      sub_183811498((a1 + 48), &v233);
      v188 = v4[1];
      if (v188)
      {
        v189 = vcnt_s8(v188);
        v189.i16[0] = vaddlv_u8(v189);
        if (v189.u32[0] > 1uLL)
        {
          v190 = v233;
          if (v233 >= *&v188)
          {
            v190 = v233 % *&v188;
          }
        }

        else
        {
          v190 = (*&v188 - 1) & v233;
        }

        v191 = *(*v4 + 8 * v190);
        if (v191)
        {
          v192 = *v191;
          if (v192)
          {
            if (v189.u32[0] < 2uLL)
            {
              v193 = *&v188 - 1;
              while (1)
              {
                v195 = v192[1];
                if (v233 == v195)
                {
                  if (v192[2] == v233)
                  {
                    goto LABEL_368;
                  }
                }

                else if ((v195 & v193) != v190)
                {
                  goto LABEL_367;
                }

                v192 = *v192;
                if (!v192)
                {
                  goto LABEL_367;
                }
              }
            }

            while (1)
            {
              v194 = v192[1];
              if (v233 == v194)
              {
                if (v192[2] == v233)
                {
                  goto LABEL_368;
                }
              }

              else
              {
                if (v194 >= *&v188)
                {
                  v194 %= *&v188;
                }

                if (v194 != v190)
                {
                  goto LABEL_367;
                }
              }

              v192 = *v192;
              if (!v192)
              {
                goto LABEL_367;
              }
            }
          }
        }
      }

      goto LABEL_367;
    }

LABEL_368:
    v155 = *v155;
    if (v155)
    {
      continue;
    }

    break;
  }

  v206 = v221[0];
  if (v221[0])
  {
    do
    {
      v207 = *v206;
      operator delete(v206);
      v206 = v207;
    }

    while (v207);
  }

LABEL_494:
  v208 = v220[0];
  v220[0] = 0;
  if (v208)
  {
    operator delete(v208);
  }

  v209 = v224[0];
  if (v224[0])
  {
    do
    {
      v210 = *v209;
      operator delete(v209);
      v209 = v210;
    }

    while (v210);
  }

  v211 = v223[0];
  v223[0] = 0;
  if (v211)
  {
    operator delete(v211);
  }
}

void sub_1838FE6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1838FE904(v31 - 192);
  sub_1836CFA48(&a25);
  sub_1836CFA48(&a31);
  _Unwind_Resume(a1);
}

void sub_1838FE720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_1838FFB08(v37 - 192);
  sub_1836CFA48(&a37);
  sub_1836CFA48(&a25);
  sub_1836CFA48(&a31);
  _Unwind_Resume(a1);
}

void sub_1838FE760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1836CFA48(a11);
  sub_1836CFA48(&a25);
  sub_1836CFA48(&a31);
  _Unwind_Resume(a1);
}

void sub_1838FE7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1836CFA48(&a25);
  sub_1836CFA48(&a31);
  _Unwind_Resume(a1);
}

void sub_1838FE7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_1836CFA48(&a37);
  sub_1836CFA48(&a25);
  sub_1836CFA48(&a31);
  _Unwind_Resume(a1);
}

void sub_1838FE7F0()
{
  sub_1836CFA48(v0);
  sub_1838FE904(v1 - 136);
  sub_1836CFA48(v1 - 192);
  JUMPOUT(0x1838FE80CLL);
}

void sub_1838FE82C(void **__p)
{
  do
  {
    v2 = *__p;
    v3 = __p[6];
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = __p[4];
    __p[4] = 0;
    if (v5)
    {
      operator delete(v5);
    }

    operator delete(__p);
    __p = v2;
  }

  while (v2);
}

void sub_1838FE898(void **__p)
{
  do
  {
    v2 = *__p;
    v3 = __p[5];
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = __p[3];
    __p[3] = 0;
    if (v5)
    {
      operator delete(v5);
    }

    operator delete(__p);
    __p = v2;
  }

  while (v2);
}