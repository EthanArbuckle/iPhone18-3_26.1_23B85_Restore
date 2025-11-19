void sub_18396B14C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
LABEL_3:
      v6 = *v1;
      if (!*v1)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = v5;
  operator delete(v5);
  v6 = *v1;
  if (!*v1)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v1 + 8) = v6;
  operator delete(v6);
  _Unwind_Resume(exception_object);
}

id sub_18396B96C(unsigned __int8 *a1, void *a2)
{
  v7 = a2;
  if (a1)
  {
    v8 = objc_msgSend_synthesisOptionsWithDictionary_(CHSynthesisRequestOptions, v3, v7, v4, v5, v6);
    v14 = objc_msgSend_skipStyleInventoryLookup(v8, v9, v10, v11, v12, v13);
    objc_msgSend_setSkipStyleInventoryLookup_(v8, v15, a1[8] | v14, v16, v17, v18);
    v24 = objc_msgSend_saveStyleSample(v8, v19, v20, v21, v22, v23);
    objc_msgSend_setSaveStyleSample_(v8, v25, a1[9] | v24, v26, v27, v28);
    v34 = objc_msgSend_forceInventoryDefaultStyle(v8, v29, v30, v31, v32, v33);
    objc_msgSend_setForceInventoryDefaultStyle_(v8, v35, a1[10] | v34, v36, v37, v38);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_18396BC20(void *a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    sub_18396CC08(a1);
    v6 = a1;
    objc_sync_enter(v6);
    v7 = v6[3];
    objc_sync_exit(v6);

    if (!v7)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v8 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_ERROR, "XPC connection must be non-nil", buf, 2u);
      }
    }

    v9 = v6;
    objc_sync_enter(v9);
    v10 = v6[3];
    objc_sync_exit(v9);

    if (!v10)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v11 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "XPC connection must be non-nil", buf, 2u);
      }
    }

    *buf = 0;
    v64[0] = buf;
    v64[1] = 0x3032000000;
    v64[2] = sub_18396D140;
    v64[3] = sub_18396D150;
    v65 = 0;
    v12 = v9;
    objc_sync_enter(v12);
    v13 = v6[3];
    objc_sync_exit(v12);

    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = sub_18396D158;
    v62[3] = &unk_1E6DDC2E0;
    v62[4] = buf;
    v18 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v13, v14, v62, v15, v16, v17);

    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = sub_18396D140;
    v60 = sub_18396D150;
    v61 = 0;
    v53 = 0;
    v54[0] = &v53;
    v54[1] = 0x3032000000;
    v54[2] = sub_18396D140;
    v54[3] = sub_18396D150;
    v55 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = sub_18396D278;
    v43 = &unk_1E6DE0668;
    v46 = &v56;
    v47 = &v53;
    v44 = v12;
    v19 = v5;
    v45 = v19;
    v48 = &v49;
    objc_msgSend_handleRequest_withReply_(v18, v20, v19, &v40, v21, v22);
    if ((v50[3] & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v23 = qword_1EA84DC98;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v66 = 0;
        _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "Remote Synthesis request did not execute reply block", v66, 2u);
      }

      sub_18396D474(v12, v19, 0, *(v64[0] + 40));
    }

    if (!a3)
    {
      goto LABEL_32;
    }

    if (*(v64[0] + 40))
    {
      v24 = v64;
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v25 = qword_1EA84DC98;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_msgSend_localizedDescription(*(v64[0] + 40), v26, v27, v28, v29, v30, v40, v41, v42, v43, v44);
        *v66 = 138412290;
        v67 = v31;
        _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_ERROR, "Connection Error in Remote Synthesis request: %@", v66, 0xCu);
      }
    }

    else
    {
      if (!*(v54[0] + 40))
      {
LABEL_32:
        v38 = v57[5];

        _Block_object_dispose(&v49, 8);
        _Block_object_dispose(&v53, 8);

        _Block_object_dispose(&v56, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_33;
      }

      v24 = v54;
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v25 = qword_1EA84DC98;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_msgSend_localizedDescription(*(v54[0] + 40), v32, v33, v34, v35, v36, v40, v41, v42, v43, v44);
        *v66 = 138412290;
        v67 = v37;
        _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_ERROR, "Error in Remote Synthesis request: %@", v66, 0xCu);
      }
    }

    *a3 = *(*v24 + 40);
    goto LABEL_32;
  }

  v38 = 0;
LABEL_33:

  return v38;
}

void sub_18396C208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);

  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v36 - 176), 8);

  _Unwind_Resume(a1);
}

void sub_18396CC08(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  if (!v1[3])
  {
    v2 = objc_alloc(MEMORY[0x1E696B0B8]);
    v6 = objc_msgSend_initWithMachServiceName_options_(v2, v3, @"com.apple.handwritingd.remoterecognition", 0, v4, v5);
    v7 = v1[3];
    v1[3] = v6;

    v12 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v8, &unk_1EF2155C0, v9, v10, v11);
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v20 = objc_msgSend_setWithObjects_(v13, v16, v14, v17, v18, v19, v15, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v12, v21, v20, sel_handleRequest_withReply_, 0, 1);
    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v33 = objc_msgSend_setWithObjects_(v22, v29, v23, v30, v31, v32, v24, v25, v26, v27, v28, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v12, v34, v33, sel_handleSynthesisStringChunkingRequest_withReply_, 0, 1);
    objc_msgSend_setRemoteObjectInterface_(v1[3], v35, v12, v36, v37, v38);
    objc_initWeak(&location, v1);
    v39 = v1[3];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_18396CEE4;
    v53[3] = &unk_1E6DDD098;
    objc_copyWeak(&v54, &location);
    objc_msgSend_setInterruptionHandler_(v39, v40, v53, v41, v42, v43);
    objc_msgSend_setInvalidationHandler_(v1[3], v44, &unk_1EF1BF900, v45, v46, v47);
    objc_msgSend_resume(v1[3], v48, v49, v50, v51, v52);
    objc_destroyWeak(&v54);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v1);
}

void sub_18396CE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);

  objc_sync_exit(v20);
  _Unwind_Resume(a1);
}

void sub_18396CEE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_18396CF9C(WeakRetained);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v2 = qword_1EA84DC98;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_18366B000, v2, OS_LOG_TYPE_ERROR, "Remote connection to handwritingd was interrupted", v3, 2u);
  }
}

void sub_18396CF9C(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    objc_msgSend_invalidate(obj[3], v1, v2, v3, v4, v5);
    v6 = obj[3];
    obj[3] = 0;

    objc_sync_exit(obj);
  }
}

void sub_18396D018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_18396D034()
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v0 = qword_1EA84DC98;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_18366B000, v0, OS_LOG_TYPE_ERROR, "Remote connection to handwritingd was invalidated", v1, 2u);
  }
}

void sub_18396D110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CHRemoteTextSynthesizer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_18396D140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18396D158(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC98;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8, v9);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "An XPC proxy service error occurred: %@", &v13, 0xCu);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_18396D278(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v9 = qword_1EA84DC98;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_DEFAULT, "Result retrieved for remote synthesis", &v16, 2u);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v9 = qword_1EA84DC98;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_msgSend_localizedDescription(v8, v10, v11, v12, v13, v14);
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_ERROR, "Error during remote synthesis: %@", &v16, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:
  sub_18396D474(*(a1 + 32), *(a1 + 40), v6, v8);
  *(*(*(a1 + 64) + 8) + 24) = 1;
}

void sub_18396D474(uint64_t a1, void *a2, void *a3, void *a4)
{
  v265 = *MEMORY[0x1E69E9840];
  v244 = a2;
  v243 = a3;
  v242 = a4;
  if (a1 && (os_variant_has_internal_diagnostics() & 1) != 0)
  {
    v12 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v7, v8, v9, v10, v11);
    v17 = objc_msgSend_dictionaryForKey_(v12, v13, @"com.apple.corehandwriting", v14, v15, v16);

    v240 = v17;
    v22 = objc_msgSend_objectForKey_(v17, v18, @"CHLogAllSynthesisRequests", v19, v20, v21);
    v28 = objc_msgSend_BOOLValue(v22, v23, v24, v25, v26, v27);

    if (v28)
    {
      if (qword_1EA84D268 != -1)
      {
        dispatch_once(&qword_1EA84D268, &unk_1EF1BF920);
      }

      v239 = objc_alloc_init(MEMORY[0x1E696AB78]);
      objc_msgSend_setDateFormat_(v239, v29, @"dd-MM-yyyy-HH-mm-ss-SSS", v30, v31, v32);
      v38 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v33, v34, v35, v36, v37);
      v44 = objc_msgSend_UUIDString(v38, v39, v40, v41, v42, v43);
      v241 = objc_msgSend_substringToIndex_(v44, v45, 4, v46, v47, v48);

      v54 = objc_msgSend_now(MEMORY[0x1E695DF00], v49, v50, v51, v52, v53);
      v59 = objc_msgSend_stringFromDate_(v239, v55, v54, v56, v57, v58);

      v237 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v60, @"%@_%@_request.hsr", v61, v62, v63, v59, v241);
      v64 = sub_1838743F8(v244, qword_1EA84D260, v237);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v65 = qword_1EA84DC98;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v71 = objc_msgSend_options(v244, v66, v67, v68, v69, v70);
        *buf = 138412290;
        v260 = v71;
        _os_log_impl(&dword_18366B000, v65, OS_LOG_TYPE_DEFAULT, "CHLogAllSynthesisRequests synth request with options = %@", buf, 0xCu);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v72 = qword_1EA84DC98;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v260 = @"CHLogAllSynthesisRequests";
        v261 = 2112;
        v262 = qword_1EA84D260;
        v263 = 2112;
        v264 = v237;
        _os_log_impl(&dword_18366B000, v72, OS_LOG_TYPE_DEFAULT, "%@ serialize request to %@/%@, ", buf, 0x20u);
      }

      v78 = objc_msgSend_drawing(v244, v73, v74, v75, v76, v77);
      v79 = v78 == 0;

      if (!v79)
      {
        v85 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v80, @"%@_%@_input_drawing.json", v82, v83, v84, v59, v241);
        v91 = objc_msgSend_drawing(v244, v86, v87, v88, v89, v90);
        v257 = @"string";
        v97 = objc_msgSend_string(v244, v92, v93, v94, v95, v96);
        v258 = v97;
        v100 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v98, &v258, &v257, 1, v99);
        objc_msgSend_writeToFileWithContext_folder_basename_(v91, v101, v100, qword_1EA84D260, v85, v102);

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v103 = qword_1EA84DC98;
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v260 = @"CHLogAllSynthesisRequests";
          v261 = 2112;
          v262 = qword_1EA84D260;
          v263 = 2112;
          v264 = v85;
          _os_log_impl(&dword_18366B000, v103, OS_LOG_TYPE_DEFAULT, "%@ serialize input drawing to %@/%@, ", buf, 0x20u);
        }
      }

      v104 = objc_msgSend_options(v244, v80, v81, v82, v83, v84);
      v110 = objc_msgSend_styleDrawings(v104, v105, v106, v107, v108, v109);
      v111 = v110 == 0;

      if (!v111)
      {
        v117 = objc_msgSend_options(v244, v112, v113, v114, v115, v116);
        v123 = objc_msgSend_styleDrawings(v117, v118, v119, v120, v121, v122);
        v129 = objc_msgSend_options(v244, v124, v125, v126, v127, v128);
        v135 = objc_msgSend_styleContents(v129, v130, v131, v132, v133, v134);
        v139 = objc_msgSend_concatenatedSampleWithDrawings_transcriptions_(CHSynthesisStyleInventory, v136, v123, v135, v137, v138);

        v145 = objc_msgSend_drawing(v139, v140, v141, v142, v143, v144);
        v150 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v146, @"%@_%@_style_drawing.json", v147, v148, v149, v59, v241);
        v156 = objc_msgSend_options(v244, v151, v152, v153, v154, v155);
        v162 = objc_msgSend_styleContents(v156, v157, v158, v159, v160, v161);
        v167 = objc_msgSend_componentsJoinedByString_(v162, v163, &stru_1EF1C0318, v164, v165, v166);

        v255 = @"string";
        v256 = v167;
        v170 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v168, &v256, &v255, 1, v169);
        objc_msgSend_writeToFileWithContext_folder_basename_(v145, v171, v170, qword_1EA84D260, v150, v172);

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v173 = qword_1EA84DC98;
        if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v260 = @"CHLogAllSynthesisRequests";
          v261 = 2112;
          v262 = qword_1EA84D260;
          v263 = 2112;
          v264 = v150;
          _os_log_impl(&dword_18366B000, v173, OS_LOG_TYPE_DEFAULT, "%@ serialize style drawing to %@/%@, ", buf, 0x20u);
        }
      }

      if (!v243 || (objc_msgSend_drawing(v243, v112, v113, v114, v115, v116), v174 = objc_claimAutoreleasedReturnValue(), v175 = v174 == 0, v174, v175))
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v236 = qword_1EA84DC98;
        v238 = v236;
        if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v260 = @"CHLogAllSynthesisRequests";
          v261 = 2112;
          v262 = v242;
          _os_log_impl(&dword_18366B000, v236, OS_LOG_TYPE_ERROR, "%@ skipping serialization of nil result. Error = %@", buf, 0x16u);
        }
      }

      else
      {
        v238 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v176, @"%@_%@_result.json", v177, v178, v179, v59, v241);
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v180 = qword_1EA84DC98;
        if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v260 = @"CHLogAllSynthesisRequests";
          v261 = 2112;
          v262 = qword_1EA84D260;
          v263 = 2112;
          v264 = v238;
          _os_log_impl(&dword_18366B000, v180, OS_LOG_TYPE_DEFAULT, "%@ serialize synthesis result to %@/%@, ", buf, 0x20u);
        }

        v245 = objc_msgSend_array(MEMORY[0x1E695DF70], v181, v182, v183, v184, v185);
        v250 = 0u;
        v251 = 0u;
        v248 = 0u;
        v249 = 0u;
        v191 = objc_msgSend_segmentStrokeIndexes(v243, v186, v187, v188, v189, v190);
        v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(v191, v192, &v248, v254, 16, v193);
        if (v199)
        {
          v200 = *v249;
          do
          {
            for (i = 0; i != v199; ++i)
            {
              if (*v249 != v200)
              {
                objc_enumerationMutation(v191);
              }

              v202 = *(*(&v248 + 1) + 8 * i);
              v203 = objc_msgSend_array(MEMORY[0x1E695DF70], v194, v195, v196, v197, v198);
              v246[0] = MEMORY[0x1E69E9820];
              v246[1] = 3221225472;
              v246[2] = sub_18396E1A4;
              v246[3] = &unk_1E6DDCC38;
              v204 = v203;
              v247 = v204;
              objc_msgSend_enumerateIndexesUsingBlock_(v202, v205, v246, v206, v207, v208);
              objc_msgSend_addObject_(v245, v209, v204, v210, v211, v212);
            }

            v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(v191, v194, &v248, v254, 16, v198);
          }

          while (v199);
        }

        v218 = objc_msgSend_drawing(v243, v213, v214, v215, v216, v217);
        v252[0] = @"string";
        v224 = objc_msgSend_content(v243, v219, v220, v221, v222, v223);
        v253[0] = v224;
        v252[1] = @"segmentContents";
        v230 = objc_msgSend_segmentContents(v243, v225, v226, v227, v228, v229);
        v252[2] = @"segmentStrokeIndexes";
        v253[1] = v230;
        v253[2] = v245;
        v233 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v231, v253, v252, 3, v232);
        objc_msgSend_writeToFileWithContext_folder_basename_(v218, v234, v233, qword_1EA84D260, v238, v235);
      }
    }
  }
}

void sub_18396E0A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3, a4, a5, a6);
  v25 = objc_msgSend_UUIDString(v6, v7, v8, v9, v10, v11);

  v12 = MEMORY[0x1E695DFF8];
  v13 = NSTemporaryDirectory();
  v18 = objc_msgSend_fileURLWithPath_(v12, v14, v13, v15, v16, v17);
  v23 = objc_msgSend_URLByAppendingPathComponent_(v18, v19, v25, v20, v21, v22);
  v24 = qword_1EA84D260;
  qword_1EA84D260 = v23;
}

void sub_18396E150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_18396E1A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, a2, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

BOOL sub_18396E30C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    sub_18396CC08(a1);
    v6 = a1;
    objc_sync_enter(v6);
    v7 = v6[3];
    objc_sync_exit(v6);

    if (!v7)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v8 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_ERROR, "XPC connection must be non-nil", buf, 2u);
      }
    }

    v9 = v6;
    objc_sync_enter(v9);
    v10 = v6[3];
    objc_sync_exit(v9);

    if (!v10)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v11 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "XPC connection must be non-nil", buf, 2u);
      }
    }

    *buf = 0;
    v34 = buf;
    v35 = 0x3032000000;
    v36 = sub_18396D140;
    v37 = sub_18396D150;
    v38 = 0;
    v12 = v9;
    objc_sync_enter(v12);
    v13 = v6[3];
    objc_sync_exit(v12);

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_18396EDF0;
    v32[3] = &unk_1E6DDC2E0;
    v32[4] = buf;
    v18 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v13, v14, v32, v15, v16, v17);

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_18396D140;
    v30 = sub_18396D150;
    v31 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_18396EF10;
    v25[3] = &unk_1E6DE0690;
    v25[4] = v12;
    v25[5] = &v26;
    objc_msgSend_handleInventoryRequest_withReply_(v18, v19, v5, v25, v20, v21);
    if (a3)
    {
      v22 = *(v34 + 5);
      if (!v22)
      {
        v22 = v27[5];
      }

      *a3 = v22;
    }

    if (*(v34 + 5))
    {
      v23 = 0;
    }

    else
    {
      v23 = v27[5] == 0;
    }

    _Block_object_dispose(&v26, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

void sub_18396E668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_18396EB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);

  _Block_object_dispose((v34 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18396EC94(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!result)
  {
    return result;
  }

  if (qword_1EA84D278 != -1)
  {
    dispatch_once(&qword_1EA84D278, &unk_1EF1BF940);
    objc_msgSend_timeIntervalSinceNow(qword_1EA84D270, v15, v16, v17, v18, v19);
    if (v20 < -1.0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  objc_msgSend_timeIntervalSinceNow(qword_1EA84D270, a2, a3, a4, a5, a6);
  if (v6 >= -1.0)
  {
    return 0;
  }

LABEL_4:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC98;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v21 = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEBUG, "_shouldLogInventoryStatus: allowing logging", v21, 2u);
  }

  v13 = objc_msgSend_date(MEMORY[0x1E695DF00], v8, v9, v10, v11, v12);
  v14 = qword_1EA84D270;
  qword_1EA84D270 = v13;

  return 1;
}

void sub_18396EDAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], a2, a3, a4, a5, a6, 0.0);
  v7 = qword_1EA84D270;
  qword_1EA84D270 = v6;
}

void sub_18396EDF0(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC98;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8, v9);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "An XPC proxy service error occurred: %@", &v13, 0xCu);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_18396EF10(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6)
  {
    if (v7)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v14 = qword_1EA84DC98;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v26 = objc_msgSend_localizedDescription(v8, v21, v22, v23, v24, v25);
        v27 = 138412290;
        v28 = v26;
        _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEBUG, "Error during inventory request: %@", &v27, 0xCu);
      }
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v14 = qword_1EA84DC98;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_ERROR, "Inventory request unexpected results. No inventory or error were returned", &v27, 2u);
      }
    }

    goto LABEL_17;
  }

  objc_storeStrong((*(a1 + 32) + 16), a2);
  if (os_variant_has_internal_diagnostics() && sub_18396EC94(*(a1 + 32), v9, v10, v11, v12, v13))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC98;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_msgSend_description(v6, v15, v16, v17, v18, v19);
      v27 = 138412290;
      v28 = v20;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "Status retrieved for inventory request. %@", &v27, 0xCu);
    }

LABEL_17:
  }
}

id *sub_18396F264(id *a1, double a2)
{
  v2 = a1;
  if (a1)
  {
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3032000000;
    v5[3] = sub_18396D140;
    v5[4] = sub_18396D150;
    v6 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_18396F948;
    v4[3] = &unk_1E6DE06E0;
    v4[4] = a1;
    v4[5] = v5;
    sub_18396F434(a1, @"Inventory status request", v4, a2);
    v2 = v2[2];
    _Block_object_dispose(v5, 8);
  }

  return v2;
}

void sub_18396F35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

BOOL sub_18396F434(void *a1, void *a2, void *a3, double a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  sub_18396CC08(a1);
  v9 = a1;
  objc_sync_enter(v9);
  v10 = v9[3];
  objc_sync_exit(v9);

  if (!v10)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_ERROR, "XPC connection must be non-nil", buf, 2u);
    }
  }

  v12 = v9;
  objc_sync_enter(v12);
  v13 = v9[3];
  objc_sync_exit(v12);

  if (!v13)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_FAULT, "XPC connection must be non-nil", buf, 2u);
    }
  }

  *buf = 0;
  v31 = buf;
  v32 = 0x3032000000;
  v33 = sub_18396D140;
  v34 = sub_18396D150;
  v35 = 0;
  v15 = v12;
  objc_sync_enter(v15);
  v16 = v9[3];
  objc_sync_exit(v15);

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_18396F824;
  v29[3] = &unk_1E6DDC2E0;
  v29[4] = buf;
  v21 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v16, v17, v29, v18, v19, v20);

  v22 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &unk_1EF1BF960);
  v8[2](v8, v21, v22);
  if (a4 <= 0.0)
  {
    v27 = 1;
  }

  else
  {
    v23 = dispatch_time(0, (a4 * 1000000000.0));
    v24 = dispatch_block_wait(v22, v23);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v25 = qword_1EA84DC98;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = @"YES";
      if (!v24)
      {
        v26 = @"NO";
      }

      *v36 = 138412546;
      v37 = v7;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_DEBUG, "%@ has timed out ? %@", v36, 0x16u);
    }

    v27 = v24 == 0;
  }

  _Block_object_dispose(buf, 8);
  return v27;
}

void sub_18396F7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18396F824(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC98;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8, v9);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "An XPC proxy service error occurred: %@", &v13, 0xCu);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_18396F948(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18396FA00;
  v13[3] = &unk_1E6DE06B8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = v5;
  v15 = v7;
  v13[4] = v6;
  v8 = v5;
  objc_msgSend_handleInventoryStatusRequestWithReply_(a2, v9, v13, v10, v11, v12);
}

void sub_18396FA00(uint64_t *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((a1[4] + 16), a2);
    if (os_variant_has_internal_diagnostics() && sub_18396EC94(a1[4], v9, v10, v11, v12, v13))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v14 = qword_1EA84DC98;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_msgSend_description(v6, v15, v16, v17, v18, v19);
        v27 = 138412290;
        v28 = v20;
        _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "Status retrieved for inventory status request. %@", &v27, 0xCu);
      }

LABEL_13:
    }
  }

  else if (v7)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC98;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v26 = objc_msgSend_localizedDescription(v8, v21, v22, v23, v24, v25);
      v27 = 138412290;
      v28 = v26;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEBUG, "Error during inventory status request: %@", &v27, 0xCu);
    }

    goto LABEL_13;
  }

  (*(a1[5] + 16))();
}

void sub_18396FD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18396FDB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18396FE70;
  v13[3] = &unk_1E6DE06B8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = v5;
  v15 = v7;
  v13[4] = v6;
  v8 = v5;
  objc_msgSend_handleAwaitInventoryIdleRequestWithReply_(a2, v9, v13, v10, v11, v12);
}

void sub_18396FE70(uint64_t *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((a1[4] + 16), a2);
    if (os_variant_has_internal_diagnostics() && sub_18396EC94(a1[4], v9, v10, v11, v12, v13))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v14 = qword_1EA84DC98;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_msgSend_description(v6, v15, v16, v17, v18, v19);
        v27 = 138412290;
        v28 = v20;
        _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "Status retrieved for inventory status request. %@", &v27, 0xCu);
      }

LABEL_13:
    }
  }

  else if (v7)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC98;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v26 = objc_msgSend_localizedDescription(v8, v21, v22, v23, v24, v25);
      v27 = 138412290;
      v28 = v26;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEBUG, "Error during await inventory idle request: %@", &v27, 0xCu);
    }

    goto LABEL_13;
  }

  (*(a1[5] + 16))();
}

void sub_183970098(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC98;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8, v9);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "An XPC proxy service error occurred: %@", &v13, 0xCu);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_1839701B8(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v12 = v6;
  if (v5)
  {
    *(*(a1[4] + 8) + 24) = objc_msgSend_BOOLValue(v5, v7, v8, v9, v10, v11);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC98;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412290;
      v21 = v5;
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEBUG, "Reply retrieved for inventory containing sample request. %@", &v20, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v6)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC98;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = objc_msgSend_localizedDescription(v12, v14, v15, v16, v17, v18);
      v20 = 138412290;
      v21 = v19;
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEBUG, "Error during inventory containing sample request: %@", &v20, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:
  *(*(a1[6] + 8) + 24) = 1;
}

id sub_18397046C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_18396CC08(a1);
    v4 = a1;
    objc_sync_enter(v4);
    v5 = v4[3];
    objc_sync_exit(v4);

    if (!v5)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v6 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_ERROR, "XPC connection must be non-nil", buf, 2u);
      }
    }

    v7 = v4;
    objc_sync_enter(v7);
    v8 = v4[3];
    objc_sync_exit(v7);

    if (!v8)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v9 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_FAULT, "XPC connection must be non-nil", buf, 2u);
      }
    }

    *buf = 0;
    v39 = buf;
    v40 = 0x3032000000;
    v41 = sub_18396D140;
    v42 = sub_18396D150;
    v43 = 0;
    v10 = v7;
    objc_sync_enter(v10);
    v11 = v4[3];
    objc_sync_exit(v10);

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1839709A4;
    v37[3] = &unk_1E6DDC2E0;
    v37[4] = buf;
    v16 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v11, v12, v37, v13, v14, v15);

    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = sub_18396D140;
    v35[4] = sub_18396D150;
    v36 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_18396D140;
    v29 = sub_18396D150;
    v30 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_183970AC4;
    v24[3] = &unk_1E6DE0730;
    v24[4] = &v25;
    v24[5] = v35;
    v24[6] = &v31;
    objc_msgSend_handleSynthesisStringChunkingRequest_withReply_(v16, v17, v3, v24, v18, v19);
    if ((v32[3] & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v20 = qword_1EA84DC98;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23[0] = 0;
        _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_ERROR, "Chunk string for synthesis request did not execute reply block", v23, 2u);
      }
    }

    v21 = v26[5];
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(v35, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_18397086C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);

  _Block_object_dispose((v35 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1839709A4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC98;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8, v9);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "An XPC proxy service error occurred: %@", &v13, 0xCu);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_183970AC4(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v9 = qword_1EA84DC98;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_DEBUG, "Reply retrieved chunk string for synthesis request. %@", &v16, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v7)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v9 = qword_1EA84DC98;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_msgSend_localizedDescription(v8, v10, v11, v12, v13, v14);
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_DEBUG, "Error during chunk string for synthesis request %@", &v16, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:
  *(*(a1[6] + 8) + 24) = 1;
}

void sub_1839710F4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, void *a6, float a7)
{
  v13 = a6;
  v14 = v13;
  if (a2)
  {
    v54 = v13;
    if (a5)
    {
      sub_1836EACC8(v57, a3, a4, a5);
      if (v14)
      {
        while (v58 >= 2)
        {
          if (v14[2](v14))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v52 = qword_1EA84DC68;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v52, OS_LOG_TYPE_DEBUG, "Canceling agglomerative clustering results computation", buf, 2u);
            }

            *a1 = 0;
            a1[1] = 0;
            a1[2] = 0;
            v16 = __p;
            if (__p)
            {
              goto LABEL_14;
            }

            goto LABEL_15;
          }

          if (v67 > a7)
          {
            break;
          }

          sub_1836EBA60(v57, v65, v66);
        }
      }

      else
      {
        while (v58 >= 2 && v67 <= a7)
        {
          sub_1836EBA60(v57, v65, v66);
        }
      }

      sub_1836EB934(v57, a1);
      v16 = __p;
      if (__p)
      {
LABEL_14:
        v64 = v16;
        operator delete(v16);
      }

LABEL_15:
      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      v17 = v59;
      if (v59)
      {
        v18 = v60;
        v19 = v59;
        if (v60 != v59)
        {
          v20 = v60;
          do
          {
            v22 = *(v20 - 3);
            v20 -= 24;
            v21 = v22;
            if (v22)
            {
              *(v18 - 2) = v21;
              operator delete(v21);
            }

            v18 = v20;
          }

          while (v20 != v17);
          v19 = v59;
        }

        v60 = v17;
        operator delete(v19);
      }

      sub_1836ECC04(v57, v57[1]);
    }

    else
    {
      v53 = a1;
      v23 = *a3;
      v24 = a3[1];
      if (v24 == *a3)
      {
        v27 = 0;
        v26 = 0;
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 72;
        do
        {
          v29 = 0x8E38E38E38E38E39 * ((v24 - v23) >> 3);
          v55 = v25 + 1;
          v56 = v28;
          for (i = v25 + 1; i < v29; v28 += 72)
          {
            v31 = sub_1836EA2D4((v23 + 72 * v25), (v23 + v28), a4, 0);
            v32 = v27 - v26;
            v33 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3);
            v34 = v33 + 1;
            if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_18368964C();
            }

            if (0x5555555555555556 * (-v26 >> 3) > v34)
            {
              v34 = 0x5555555555555556 * (-v26 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v26 >> 3) >= 0x555555555555555)
            {
              v35 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v35 = v34;
            }

            if (v35)
            {
              if (v35 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_183688F00();
            }

            v36 = v26;
            v37 = 24 * v33;
            *v37 = v25;
            *(v37 + 8) = i;
            *(v37 + 16) = v31;
            v27 = (24 * v33 + 24);
            v26 = v37 + 24 * (v32 / -24);
            memcpy(v26, v36, v32);
            if (v36)
            {
              operator delete(v36);
            }

            ++i;
            v23 = *a3;
            v24 = a3[1];
            v29 = 0x8E38E38E38E38E39 * ((v24 - *a3) >> 3);
          }

          v28 = v56 + 72;
          ++v25;
        }

        while (v55 < v29);
      }

      v38 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3));
      if (v27 == v26)
      {
        v39 = 0;
      }

      else
      {
        v39 = v38;
      }

      sub_18397465C(v26, v27, v39, 1);
      *buf = 0;
      v69 = 0;
      v70 = 0;
      v40 = a3[1];
      if (v40 != *a3)
      {
        if (0x8E38E38E38E38E39 * ((v40 - *a3) >> 3) <= 0x38E38E38E38E38ELL)
        {
          v60 = buf;
          operator new();
        }

        sub_18368964C();
      }

      v14 = v54;
      if (v27 != v26)
      {
        v41 = v26;
        do
        {
          if (*(v41 + 16) > a7)
          {
            break;
          }

          v42 = *buf + 72 * *v41;
          do
          {
            v43 = v42;
            v42 = *(v42 + 64);
          }

          while (v42);
          v44 = *buf + 72 * *(v41 + 8);
          do
          {
            v45 = v44;
            v44 = *(v44 + 64);
          }

          while (v44);
          if (v43 != v45)
          {
            *(v45 + 64) = v43;
            sub_1836E9F2C(v43, (v45 + 40));
          }

          v41 += 24;
        }

        while (v41 != v27);
      }

      *v53 = 0;
      v53[1] = 0;
      v53[2] = 0;
      v47 = *buf;
      v46 = v69;
      if (*buf != v69)
      {
        v48 = 0;
        do
        {
          if (!*(v47 + 64))
          {
            if (v48 >= v53[2])
            {
              v48 = sub_1836EC8C0(v53, v47);
            }

            else
            {
              sub_1836EC4D8(v48, v47);
              v48 += 72;
            }

            v53[1] = v48;
          }

          v47 += 72;
        }

        while (v47 != v46);
        v47 = *buf;
      }

      if (v47)
      {
        v49 = v47;
        if (v69 != v47)
        {
          v50 = v69 - 32;
          do
          {
            v51 = v50 - 40;
            sub_18368D56C(v50, *(v50 + 8));
            sub_18368A374(v50 - 40, *(v50 - 32));
            v50 -= 72;
          }

          while (v51 != v47);
          v49 = *buf;
        }

        v69 = v47;
        operator delete(v49);
      }

      if (v26)
      {
        operator delete(v26);
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_183971A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1836ECB94(&a15);
  sub_1836EAC4C((v21 - 128));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_183972724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1836EAC4C((v18 - 144));
  sub_1836EAC4C(va);

  _Unwind_Resume(a1);
}

void sub_183972FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  sub_1836EC49C(v37 - 232);
  sub_18368A374(v37 - 160, *(v37 - 152));
  sub_1836EAC4C(a15);

  _Unwind_Resume(a1);
}

__n128 sub_1839731D4(__n128 *a1, __n128 *a2)
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

void sub_1839731F8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_183973210(uint64_t a1, double a2, double a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  sub_1836973A4(*(*(a1 + 32) + 8) + 48, &v3);
}

void sub_183973244(uint64_t a1, double a2, double a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  sub_1836973A4(*(*(a1 + 32) + 8) + 48, &v3);
}

void sub_183974338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  sub_1836EAC4C(&a29);

  _Unwind_Resume(a1);
}

uint64_t sub_1839745B8(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 24);
    if (v5 != v4)
    {
      v7 = *(a1 + 32);
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *(a1 + 24);
    }

    *(a1 + 32) = v4;
    operator delete(v6);
  }

  sub_1836ECC04(a1, *(a1 + 8));
  return a1;
}

void sub_18397465C(_OWORD *a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 3);
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return;
    }

    if (v10 == 2)
    {
      v128 = *(a2 - 2);
      v129 = *(v8 + 16);
      if (v128 < v129)
      {
        v130 = *v8;
        *v8 = *(a2 - 3);
        *(a2 - 3) = v130;
        v131 = *(v8 + 8);
        *(v8 + 8) = *(a2 - 2);
        *(a2 - 2) = v131;
        *(v8 + 16) = v128;
        *(a2 - 2) = v129;
      }

      return;
    }

LABEL_9:
    if (v9 <= 575)
    {
      v137 = (v8 + 24);
      v139 = v8 == a2 || v137 == a2;
      if (a4)
      {
        if (!v139)
        {
          v140 = 0;
          v141 = v8;
          do
          {
            v143 = *(v141 + 10);
            v144 = *(v141 + 4);
            v141 = v137;
            if (v143 < v144)
            {
              v145 = *v137;
              v146 = v140;
              do
              {
                v147 = v8 + v146;
                v148 = *(v8 + v146 + 8);
                *(v147 + 24) = *(v8 + v146);
                *(v147 + 32) = v148;
                *(v147 + 40) = *(v8 + v146 + 16);
                if (!v146)
                {
                  v142 = v8;
                  goto LABEL_128;
                }

                v146 -= 24;
              }

              while (v143 < *(v147 - 8));
              v142 = v8 + v146 + 24;
LABEL_128:
              *v142 = v145;
              *(v142 + 16) = v143;
            }

            v137 = (v141 + 24);
            v140 += 24;
          }

          while ((v141 + 24) != a2);
        }
      }

      else if (!v139)
      {
        v182 = (v8 + 40);
        do
        {
          v183 = *(a1 + 10);
          v184 = *(a1 + 4);
          a1 = v137;
          if (v183 < v184)
          {
            v185 = *v137;
            v186 = v182;
            do
            {
              v187 = v186;
              v188 = *(v186 - 4);
              *(v186 - 2) = *(v186 - 5);
              *(v186 - 1) = v188;
              v189 = *(v186 - 6);
              v186 -= 6;
              *v187 = v189;
            }

            while (v183 < *(v187 - 12));
            *(v186 - 1) = v185;
            *v186 = v183;
          }

          v137 = (a1 + 24);
          v182 += 6;
        }

        while ((a1 + 24) != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v149 = (v10 - 2) >> 1;
      v150 = v149;
      do
      {
        if (v149 >= v150)
        {
          v152 = (2 * (v150 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
          v153 = v8 + 24 * v152;
          if (2 * v150 + 2 < v10 && *(v153 + 16) < *(v153 + 40))
          {
            v153 += 24;
            v152 = 2 * v150 + 2;
          }

          v154 = v8 + 24 * v150;
          v155 = *(v153 + 16);
          v156 = *(v154 + 16);
          if (v155 >= v156)
          {
            v157 = *v154;
            do
            {
              v158 = v154;
              v154 = v153;
              *v158 = *v153;
              *(v158 + 8) = *(v153 + 8);
              *(v158 + 16) = v155;
              if (v149 < v152)
              {
                break;
              }

              v159 = 2 * v152;
              v152 = (2 * v152) | 1;
              v153 = v8 + 24 * v152;
              v160 = v159 + 2;
              if (v160 < v10 && *(v153 + 16) < *(v153 + 40))
              {
                v153 += 24;
                v152 = v160;
              }

              v155 = *(v153 + 16);
            }

            while (v155 >= v156);
            *v154 = v157;
            *(v154 + 16) = v156;
          }
        }

        v151 = v150-- <= 0;
      }

      while (!v151);
      v161 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      while (2)
      {
        v162 = 0;
        v163 = *v8;
        v164 = *(v8 + 8);
        v165 = *(v8 + 16);
        v166 = v8;
        do
        {
          v171 = v166 + 24 * v162;
          v170 = (v171 + 24);
          v172 = (2 * v162) | 1;
          v162 = 2 * v162 + 2;
          if (v162 < v161)
          {
            v167 = *(v171 + 40);
            v168 = *(v171 + 64);
            v169 = (v171 + 48);
            if (v167 >= v168)
            {
              v162 = v172;
            }

            else
            {
              v170 = v169;
            }
          }

          else
          {
            v162 = v172;
          }

          *v166 = *v170;
          *(v166 + 8) = *(v170 + 1);
          *(v166 + 16) = *(v170 + 4);
          v166 = v170;
        }

        while (v162 <= ((v161 - 2) >> 1));
        if (v170 != (a2 - 24))
        {
          *v170 = *(a2 - 3);
          *(v170 + 1) = *(a2 - 2);
          *(v170 + 4) = *(a2 - 2);
          *(a2 - 3) = v163;
          *(a2 - 2) = v164;
          *(a2 - 2) = v165;
          v173 = v170 - v8 + 24;
          if (v173 >= 25)
          {
            v174 = (-2 - 0x5555555555555555 * (v173 >> 3)) >> 1;
            v175 = v8 + 24 * v174;
            v176 = *(v175 + 16);
            v165 = *(v170 + 4);
            if (v176 < v165)
            {
              v177 = *v170;
              do
              {
                v178 = v170;
                v170 = v175;
                *v178 = *v175;
                *(v178 + 1) = *(v175 + 8);
                *(v178 + 4) = v176;
                if (!v174)
                {
                  break;
                }

                v174 = (v174 - 1) >> 1;
                v175 = v8 + 24 * v174;
                v176 = *(v175 + 16);
              }

              while (v176 < v165);
              *v170 = v177;
LABEL_152:
              *(v170 + 4) = v165;
            }
          }

          a2 = (a2 - 24);
          v151 = v161-- <= 2;
          if (v151)
          {
            return;
          }

          continue;
        }

        break;
      }

      *v170 = v163;
      *(v170 + 1) = v164;
      goto LABEL_152;
    }

    v11 = v10 >> 1;
    v12 = v8 + 24 * (v10 >> 1);
    v13 = *(a2 - 2);
    if (v9 < 0xC01)
    {
      v18 = *(v8 + 16);
      v19 = *(v12 + 16);
      if (v18 < v19)
      {
        v20 = *v12;
        if (v13 < v18)
        {
          *v12 = *(a2 - 3);
          *(a2 - 3) = v20;
          v21 = *(v12 + 8);
          *(v12 + 8) = *(a2 - 2);
          *(a2 - 2) = v21;
          *(v12 + 16) = v13;
          goto LABEL_36;
        }

        v48 = *(v12 + 8);
        *v12 = *v8;
        *v8 = v20;
        *(v8 + 8) = v48;
        *(v12 + 16) = v18;
        *(v8 + 16) = v19;
        v49 = *(a2 - 2);
        if (v49 < v19)
        {
          *v8 = *(a2 - 3);
          *(a2 - 3) = v20;
          v50 = *(v8 + 8);
          *(v8 + 8) = *(a2 - 2);
          *(a2 - 2) = v50;
          *(v8 + 16) = v49;
LABEL_36:
          *(a2 - 2) = v19;
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        goto LABEL_37;
      }

      v27 = *v8;
      *v8 = *(a2 - 3);
      *(a2 - 3) = v27;
      v28 = *(v8 + 8);
      *(v8 + 8) = *(a2 - 2);
      *(a2 - 2) = v28;
      *(v8 + 16) = v13;
      *(a2 - 2) = v18;
      v29 = *(v8 + 16);
      v30 = *(v12 + 16);
      if (v29 >= v30)
      {
        goto LABEL_37;
      }

      v31 = *v12;
      *v12 = *v8;
      *v8 = v31;
      *(v12 + 16) = v29;
      *(v8 + 16) = v30;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_38:
      v51 = *v8;
      v52 = *(v8 + 16);
LABEL_63:
      v86 = 0;
      v87 = *(v8 + 8);
      do
      {
        v88 = *(v8 + v86 + 40);
        v86 += 24;
      }

      while (v88 < v52);
      v89 = v8 + v86;
      v90 = a2;
      if (v86 == 24)
      {
        v93 = a2;
        while (v89 < v93)
        {
          v91 = (v93 - 24);
          v94 = *(v93 - 2);
          v93 = (v93 - 24);
          if (v94 < v52)
          {
            goto LABEL_71;
          }
        }

        v91 = v93;
        v8 = v89;
      }

      else
      {
        do
        {
          v91 = (v90 - 24);
          v92 = *(v90 - 2);
          v90 = (v90 - 24);
        }

        while (v92 >= v52);
LABEL_71:
        v8 = v89;
        if (v89 < v91)
        {
          v95 = v91;
          do
          {
            v96 = *v8;
            *v8 = *v95;
            *v95 = v96;
            v97 = *(v8 + 8);
            *(v8 + 8) = *(v95 + 8);
            *(v95 + 8) = v97;
            v98 = *(v8 + 16);
            *(v8 + 16) = *(v95 + 16);
            *(v95 + 16) = v98;
            do
            {
              v99 = *(v8 + 40);
              v8 += 24;
            }

            while (v99 < v52);
            do
            {
              v100 = *(v95 - 8);
              v95 -= 24;
            }

            while (v100 >= v52);
          }

          while (v8 < v95);
        }
      }

      if ((v8 - 24) != a1)
      {
        *a1 = *(v8 - 24);
        *(a1 + 1) = *(v8 - 16);
        *(a1 + 4) = *(v8 - 8);
      }

      *(v8 - 24) = v51;
      *(v8 - 16) = v87;
      *(v8 - 8) = v52;
      if (v89 < v91)
      {
        goto LABEL_82;
      }

      v101 = sub_1839755B0(a1, (v8 - 24));
      if (sub_1839755B0(v8, a2))
      {
        a2 = (v8 - 24);
        if (v101)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v101)
      {
LABEL_82:
        sub_18397465C(a1, v8 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v14 = *(v12 + 16);
      v15 = *(v8 + 16);
      if (v14 >= v15)
      {
        if (v13 < v14)
        {
          v22 = *v12;
          *v12 = *(a2 - 3);
          *(a2 - 3) = v22;
          v23 = *(v12 + 8);
          *(v12 + 8) = *(a2 - 2);
          *(a2 - 2) = v23;
          *(v12 + 16) = v13;
          *(a2 - 2) = v14;
          v24 = *(v12 + 16);
          v25 = *(v8 + 16);
          if (v24 < v25)
          {
            v26 = *v8;
            *v8 = *v12;
            *v12 = v26;
            *(v8 + 16) = v24;
            *(v12 + 16) = v25;
          }
        }
      }

      else
      {
        v16 = *v8;
        if (v13 >= v14)
        {
          v32 = *(v8 + 8);
          *v8 = *v12;
          *v12 = v16;
          *(v12 + 8) = v32;
          *(v8 + 16) = v14;
          *(v12 + 16) = v15;
          v33 = *(a2 - 2);
          if (v33 >= v15)
          {
            goto LABEL_28;
          }

          *v12 = *(a2 - 3);
          *(a2 - 3) = v16;
          v34 = *(v12 + 8);
          *(v12 + 8) = *(a2 - 2);
          *(a2 - 2) = v34;
          *(v12 + 16) = v33;
        }

        else
        {
          *v8 = *(a2 - 3);
          *(a2 - 3) = v16;
          v17 = *(v8 + 8);
          *(v8 + 8) = *(a2 - 2);
          *(a2 - 2) = v17;
          *(v8 + 16) = v13;
        }

        *(a2 - 2) = v15;
      }

LABEL_28:
      v35 = v8 + 24 * v11;
      v36 = (v35 - 24);
      v37 = *(v35 - 8);
      v38 = *(v8 + 40);
      v39 = *(a2 - 8);
      if (v37 >= v38)
      {
        if (v39 < v37)
        {
          v42 = *v36;
          *v36 = *(a2 - 6);
          *(a2 - 6) = v42;
          v43 = *(v36 + 1);
          *(v36 + 1) = *(a2 - 5);
          *(a2 - 5) = v43;
          v36[4] = v39;
          *(a2 - 8) = v37;
          v44 = v36[4];
          v45 = *(v8 + 40);
          if (v44 < v45)
          {
            v46 = *(v8 + 24);
            *(v8 + 24) = *v36;
            *v36 = v46;
            v47 = *(v8 + 32);
            *(v8 + 32) = *(v36 + 1);
            *(v36 + 1) = v47;
            *(v8 + 40) = v44;
            v36[4] = v45;
          }
        }
      }

      else
      {
        v40 = *(v8 + 24);
        if (v39 >= v37)
        {
          *(v8 + 24) = *v36;
          *v36 = v40;
          v53 = *(v8 + 32);
          *(v8 + 32) = *(v36 + 1);
          *(v36 + 1) = v53;
          *(v8 + 40) = v37;
          v36[4] = v38;
          v54 = *(a2 - 8);
          if (v54 >= v38)
          {
            goto LABEL_42;
          }

          v55 = *v36;
          *v36 = *(a2 - 6);
          *(a2 - 6) = v55;
          v56 = *(v36 + 1);
          *(v36 + 1) = *(a2 - 5);
          *(a2 - 5) = v56;
          v36[4] = v54;
        }

        else
        {
          *(v8 + 24) = *(a2 - 6);
          *(a2 - 6) = v40;
          v41 = *(v8 + 32);
          *(v8 + 32) = *(a2 - 5);
          *(a2 - 5) = v41;
          *(v8 + 40) = v39;
        }

        *(a2 - 8) = v38;
      }

LABEL_42:
      v57 = v8 + 24 * v11;
      v58 = (v57 + 24);
      v59 = *(v57 + 40);
      v60 = *(v8 + 64);
      v61 = *(a2 - 14);
      if (v59 >= v60)
      {
        if (v61 < v59)
        {
          v64 = *v58;
          *v58 = *(a2 - 9);
          *(a2 - 9) = v64;
          v65 = *(v58 + 1);
          *(v58 + 1) = *(a2 - 8);
          *(a2 - 8) = v65;
          v58[4] = v61;
          *(a2 - 14) = v59;
          v66 = v58[4];
          v67 = *(v8 + 64);
          if (v66 < v67)
          {
            v68 = *(v8 + 48);
            *(v8 + 48) = *v58;
            *v58 = v68;
            v69 = *(v8 + 56);
            *(v8 + 56) = *(v58 + 1);
            *(v58 + 1) = v69;
            *(v8 + 64) = v66;
            v58[4] = v67;
          }
        }
      }

      else
      {
        v62 = *(v8 + 48);
        if (v61 >= v59)
        {
          *(v8 + 48) = *v58;
          *v58 = v62;
          v70 = *(v8 + 56);
          *(v8 + 56) = *(v58 + 1);
          *(v58 + 1) = v70;
          *(v8 + 64) = v59;
          v58[4] = v60;
          v71 = *(a2 - 14);
          if (v71 >= v60)
          {
            goto LABEL_51;
          }

          v72 = *v58;
          *v58 = *(a2 - 9);
          *(a2 - 9) = v72;
          v73 = *(v58 + 1);
          *(v58 + 1) = *(a2 - 8);
          *(a2 - 8) = v73;
          v58[4] = v71;
        }

        else
        {
          *(v8 + 48) = *(a2 - 9);
          *(a2 - 9) = v62;
          v63 = *(v8 + 56);
          *(v8 + 56) = *(a2 - 8);
          *(a2 - 8) = v63;
          *(v8 + 64) = v61;
        }

        *(a2 - 14) = v60;
      }

LABEL_51:
      v74 = *(v12 + 16);
      v75 = v36[4];
      v76 = v58[4];
      if (v74 >= v75)
      {
        v77 = *v12;
        if (v76 >= v74)
        {
          v75 = *(v12 + 16);
        }

        else
        {
          v79 = *(v12 + 8);
          v80 = *v58;
          v81 = *(v58 + 1);
          *v12 = *v58;
          *(v12 + 8) = v81;
          *v58 = v77;
          *(v58 + 1) = v79;
          *(v12 + 16) = v76;
          v58[4] = v74;
          if (v76 >= v75)
          {
            v75 = v76;
            v77 = v80;
          }

          else
          {
            v82 = *v36;
            *v36 = v80;
            *(v36 + 1) = v81;
            *v12 = v82;
            v36[4] = v76;
            *(v12 + 16) = v75;
            v77 = v82;
          }
        }
      }

      else
      {
        v77 = *v36;
        v78 = *(v36 + 1);
        if (v76 >= v74)
        {
          *v36 = *v12;
          *v12 = v77;
          *(v12 + 8) = v78;
          v36[4] = v74;
          *(v12 + 16) = v75;
          if (v76 < v75)
          {
            v83 = *v58;
            *v12 = *v58;
            *v58 = v77;
            *(v58 + 1) = v78;
            *(v12 + 16) = v76;
            v58[4] = v75;
            v77 = v83;
            v75 = v76;
          }
        }

        else
        {
          *v36 = *v58;
          *v58 = v77;
          *(v58 + 1) = v78;
          v36[4] = v76;
          v58[4] = v75;
          v77 = *v12;
          v75 = v74;
        }
      }

      v84 = *(v12 + 8);
      v85 = *v8;
      *v8 = v77;
      *(v8 + 8) = v84;
      *v12 = v85;
      LODWORD(v85) = *(v8 + 16);
      *(v8 + 16) = v75;
      *(v12 + 16) = v85;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_62:
      v52 = *(v8 + 16);
      v51 = *v8;
      if (*(v8 - 8) < v52)
      {
        goto LABEL_63;
      }

      if (v52 >= *(a2 - 2))
      {
        v104 = v8 + 24;
        do
        {
          v8 = v104;
          if (v104 >= a2)
          {
            break;
          }

          v105 = *(v104 + 16);
          v104 += 24;
        }

        while (v52 >= v105);
      }

      else
      {
        v102 = v8;
        do
        {
          v8 = v102 + 24;
          v103 = *(v102 + 40);
          v102 += 24;
        }

        while (v52 >= v103);
      }

      v106 = a2;
      if (v8 < a2)
      {
        v107 = a2;
        do
        {
          v106 = (v107 - 24);
          v108 = *(v107 - 2);
          v107 = (v107 - 24);
        }

        while (v52 < v108);
      }

      v109 = *(a1 + 1);
      while (v8 < v106)
      {
        v110 = *v8;
        *v8 = *v106;
        *v106 = v110;
        v111 = *(v8 + 8);
        *(v8 + 8) = *(v106 + 1);
        *(v106 + 1) = v111;
        v112 = *(v8 + 16);
        *(v8 + 16) = *(v106 + 4);
        *(v106 + 4) = v112;
        do
        {
          v113 = *(v8 + 40);
          v8 += 24;
        }

        while (v52 >= v113);
        do
        {
          v114 = *(v106 - 2);
          v106 = (v106 - 24);
        }

        while (v52 < v114);
      }

      if ((v8 - 24) != a1)
      {
        *a1 = *(v8 - 24);
        *(a1 + 1) = *(v8 - 16);
        *(a1 + 4) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 24) = v51;
      *(v8 - 16) = v109;
      *(v8 - 8) = v52;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      sub_1839753D8(v8, (v8 + 24), (v8 + 48), a2 - 6);
      return;
    }

    if (v10 == 5)
    {
      sub_1839753D8(v8, (v8 + 24), (v8 + 48), (v8 + 72));
      v115 = *(a2 - 2);
      v116 = *(v8 + 88);
      if (v115 >= v116)
      {
        return;
      }

      v117 = *(v8 + 72);
      *(v8 + 72) = *(a2 - 3);
      *(a2 - 3) = v117;
      v118 = *(v8 + 80);
      *(v8 + 80) = *(a2 - 2);
      *(a2 - 2) = v118;
      *(v8 + 88) = v115;
      *(a2 - 2) = v116;
      v119 = *(v8 + 88);
      v120 = *(v8 + 64);
      if (v119 >= v120)
      {
        return;
      }

      v121 = *(v8 + 72);
      v122 = *(v8 + 80);
      v123 = *(v8 + 48);
      *(v8 + 48) = v121;
      *(v8 + 56) = v122;
      *(v8 + 72) = v123;
      *(v8 + 64) = v119;
      *(v8 + 88) = v120;
      v124 = *(v8 + 40);
      if (v119 >= v124)
      {
        return;
      }

      v125 = *(v8 + 24);
      *(v8 + 24) = v121;
      *(v8 + 32) = v122;
      *(v8 + 48) = v125;
      *(v8 + 40) = v119;
      *(v8 + 64) = v124;
      v126 = *(v8 + 16);
      if (v119 >= v126)
      {
        return;
      }

      v127 = *v8;
      *v8 = v121;
      *(v8 + 8) = v122;
      *(v8 + 24) = v127;
      goto LABEL_171;
    }

    goto LABEL_9;
  }

  v132 = *(v8 + 40);
  v133 = *(v8 + 16);
  v134 = *(a2 - 2);
  if (v132 >= v133)
  {
    if (v134 >= v132)
    {
      return;
    }

    v179 = *(v8 + 24);
    *(v8 + 24) = *(a2 - 3);
    *(a2 - 3) = v179;
    v180 = *(v8 + 32);
    *(v8 + 32) = *(a2 - 2);
    *(a2 - 2) = v180;
    *(v8 + 40) = v134;
    *(a2 - 2) = v132;
    v119 = *(v8 + 40);
    v126 = *(v8 + 16);
    if (v119 >= v126)
    {
      return;
    }

    v181 = *v8;
    *v8 = *(v8 + 24);
    *(v8 + 24) = v181;
LABEL_171:
    *(v8 + 16) = v119;
    *(v8 + 40) = v126;
    return;
  }

  v135 = *v8;
  if (v134 >= v132)
  {
    v190 = *(v8 + 8);
    *v8 = *(v8 + 24);
    *(v8 + 24) = v135;
    *(v8 + 32) = v190;
    *(v8 + 16) = v132;
    *(v8 + 40) = v133;
    v191 = *(a2 - 2);
    if (v191 >= v133)
    {
      return;
    }

    *(v8 + 24) = *(a2 - 3);
    *(a2 - 3) = v135;
    v192 = *(v8 + 32);
    *(v8 + 32) = *(a2 - 2);
    *(a2 - 2) = v192;
    *(v8 + 40) = v191;
  }

  else
  {
    *v8 = *(a2 - 3);
    *(a2 - 3) = v135;
    v136 = *(v8 + 8);
    *(v8 + 8) = *(a2 - 2);
    *(a2 - 2) = v136;
    *(v8 + 16) = v134;
  }

  *(a2 - 2) = v133;
}

float sub_1839753D8(float *a1, float *a2, float *a3, float *a4)
{
  result = a2[4];
  v5 = a1[4];
  v6 = a3[4];
  if (result >= v5)
  {
    if (v6 >= result)
    {
      result = a3[4];
      v15 = a4[4];
      if (v15 >= v6)
      {
        return result;
      }

      goto LABEL_12;
    }

    v9 = *a2;
    *a2 = *a3;
    *a3 = v9;
    v10 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v10;
    a2[4] = v6;
    a3[4] = result;
    v11 = a2[4];
    v12 = a1[4];
    if (v11 < v12)
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
      v14 = *(a1 + 1);
      *(a1 + 1) = *(a2 + 1);
      *(a2 + 1) = v14;
      a1[4] = v11;
      a2[4] = v12;
      result = a3[4];
      v15 = a4[4];
      if (v15 >= result)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v7 = *a1;
    if (v6 >= result)
    {
      *a1 = *a2;
      *a2 = v7;
      v16 = *(a1 + 1);
      *(a1 + 1) = *(a2 + 1);
      *(a2 + 1) = v16;
      a1[4] = result;
      a2[4] = v5;
      result = a3[4];
      if (result >= v5)
      {
        goto LABEL_11;
      }

      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      v18 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v18;
      a2[4] = result;
    }

    else
    {
      *a1 = *a3;
      *a3 = v7;
      v8 = *(a1 + 1);
      *(a1 + 1) = *(a3 + 1);
      *(a3 + 1) = v8;
      a1[4] = v6;
    }

    a3[4] = v5;
    result = v5;
  }

LABEL_11:
  v15 = a4[4];
  if (v15 >= result)
  {
    return result;
  }

LABEL_12:
  v19 = *a3;
  *a3 = *a4;
  *a4 = v19;
  v20 = *(a3 + 1);
  *(a3 + 1) = *(a4 + 1);
  *(a4 + 1) = v20;
  a3[4] = v15;
  a4[4] = result;
  result = a3[4];
  v21 = a2[4];
  if (result < v21)
  {
    v22 = *a2;
    *a2 = *a3;
    *a3 = v22;
    v23 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v23;
    a2[4] = result;
    a3[4] = v21;
    result = a2[4];
    v24 = a1[4];
    if (result < v24)
    {
      v25 = *a1;
      *a1 = *a2;
      *a2 = v25;
      v26 = *(a1 + 1);
      *(a1 + 1) = *(a2 + 1);
      *(a2 + 1) = v26;
      a1[4] = result;
      a2[4] = v24;
    }
  }

  return result;
}

BOOL sub_1839755B0(float *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v23 = a1[10];
        v24 = a1[4];
        v25 = *(a2 - 2);
        if (v23 >= v24)
        {
          if (v25 < v23)
          {
            v35 = *(a1 + 3);
            *(a1 + 3) = *(a2 - 3);
            *(a2 - 3) = v35;
            v36 = *(a1 + 4);
            *(a1 + 4) = *(a2 - 2);
            *(a2 - 2) = v36;
            a1[10] = v25;
            *(a2 - 2) = v23;
            v37 = a1[10];
            v38 = a1[4];
            if (v37 < v38)
            {
              v39 = *a1;
              *a1 = *(a1 + 6);
              *(a1 + 6) = v39;
              a1[4] = v37;
              a1[10] = v38;
              return 1;
            }
          }
        }

        else
        {
          v26 = *a1;
          if (v25 < v23)
          {
            *a1 = *(a2 - 3);
            *(a2 - 3) = v26;
            v27 = *(a1 + 1);
            *(a1 + 1) = *(a2 - 2);
            *(a2 - 2) = v27;
            a1[4] = v25;
            *(a2 - 2) = v24;
            return 1;
          }

          v44 = *(a1 + 1);
          *a1 = *(a1 + 6);
          *(a1 + 3) = v26;
          *(a1 + 4) = v44;
          a1[4] = v23;
          a1[10] = v24;
          v45 = *(a2 - 2);
          if (v45 < v24)
          {
            *(a1 + 3) = *(a2 - 3);
            *(a2 - 3) = v26;
            v46 = *(a1 + 4);
            *(a1 + 4) = *(a2 - 2);
            *(a2 - 2) = v46;
            a1[10] = v45;
            *(a2 - 2) = v24;
            return 1;
          }
        }

        return 1;
      case 4:
        sub_1839753D8(a1, a1 + 6, a1 + 12, a2 - 6);
        return 1;
      case 5:
        sub_1839753D8(a1, a1 + 6, a1 + 12, a1 + 18);
        v10 = *(a2 - 2);
        v11 = a1[22];
        if (v10 < v11)
        {
          v12 = *(a1 + 9);
          *(a1 + 9) = *(a2 - 3);
          *(a2 - 3) = v12;
          v13 = *(a1 + 10);
          *(a1 + 10) = *(a2 - 2);
          *(a2 - 2) = v13;
          a1[22] = v10;
          *(a2 - 2) = v11;
          v14 = a1[22];
          v15 = a1[16];
          if (v14 < v15)
          {
            v16 = *(a1 + 9);
            v17 = *(a1 + 10);
            v18 = *(a1 + 3);
            *(a1 + 6) = v16;
            *(a1 + 7) = v17;
            *(a1 + 18) = v18;
            a1[16] = v14;
            a1[22] = v15;
            v19 = a1[10];
            if (v14 < v19)
            {
              v20 = *(a1 + 6);
              *(a1 + 3) = v16;
              *(a1 + 4) = v17;
              *(a1 + 3) = v20;
              a1[10] = v14;
              a1[16] = v19;
              v21 = a1[4];
              if (v14 < v21)
              {
                v22 = *a1;
                *a1 = v16;
                *(a1 + 1) = v17;
                *(a1 + 6) = v22;
                a1[4] = v14;
                a1[10] = v21;
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 2);
      v4 = a1[4];
      if (v3 < v4)
      {
        v5 = *a1;
        *a1 = *(a2 - 3);
        *(a2 - 3) = v5;
        v6 = *(a1 + 1);
        *(a1 + 1) = *(a2 - 2);
        *(a2 - 2) = v6;
        a1[4] = v3;
        *(a2 - 2) = v4;
        return 1;
      }

      return 1;
    }
  }

  v28 = a1[10];
  v29 = a1 + 4;
  v30 = a1[4];
  v31 = a1 + 16;
  v32 = a1[16];
  if (v28 < v30)
  {
    v34 = *a1;
    v33 = *(a1 + 1);
    if (v32 >= v28)
    {
      *a1 = *(a1 + 6);
      *(a1 + 3) = v34;
      *(a1 + 4) = v33;
      a1[4] = v28;
      a1[10] = v30;
      if (v32 >= v30)
      {
        goto LABEL_32;
      }

      *(a1 + 6) = *(a1 + 3);
      *(a1 + 6) = v34;
      *(a1 + 7) = v33;
      v29 = a1 + 10;
    }

    else
    {
      *a1 = *(a1 + 3);
      *(a1 + 6) = v34;
      *(a1 + 7) = v33;
    }

    goto LABEL_31;
  }

  if (v32 < v28)
  {
    v40 = *(a1 + 6);
    v41 = *(a1 + 7);
    v42 = *(a1 + 6);
    *(a1 + 3) = v40;
    *(a1 + 4) = v41;
    *(a1 + 3) = v42;
    a1[10] = v32;
    a1[16] = v28;
    if (v32 < v30)
    {
      v43 = *a1;
      *a1 = v40;
      *(a1 + 1) = v41;
      *(a1 + 6) = v43;
      v31 = a1 + 10;
LABEL_31:
      *v29 = v32;
      *v31 = v30;
    }
  }

LABEL_32:
  v47 = (a1 + 18);
  if (a1 + 18 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  v50 = a1 + 12;
  while (1)
  {
    v51 = *(v47 + 4);
    if (v51 < v50[4])
    {
      break;
    }

LABEL_41:
    v50 = v47;
    v48 += 24;
    v47 = (v47 + 24);
    if (v47 == a2)
    {
      return 1;
    }
  }

  v52 = *v47;
  v53 = v48;
  do
  {
    v54 = a1 + v53;
    v55 = *(a1 + v53 + 56);
    *(v54 + 72) = *(a1 + v53 + 48);
    *(v54 + 80) = v55;
    *(v54 + 88) = *(a1 + v53 + 64);
    if (v53 == -48)
    {
      *a1 = v52;
      a1[4] = v51;
      if (++v49 != 8)
      {
        goto LABEL_41;
      }

      return (v47 + 24) == a2;
    }

    v53 -= 24;
  }

  while (v51 < *(v54 + 40));
  v56 = a1 + v53;
  *(v56 + 72) = v52;
  *(v56 + 88) = v51;
  if (++v49 != 8)
  {
    goto LABEL_41;
  }

  return (v47 + 24) == a2;
}

uint64_t sub_1839759C0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 32;
      do
      {
        v5 = v4 - 40;
        sub_18368D56C(v4, *(v4 + 8));
        sub_18368A374(v4 - 40, *(v4 - 32));
        v4 -= 72;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

void sub_183975AF8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  sub_1836EC858(v1);
  _Unwind_Resume(a1);
}

void ***sub_183975B1C(void ***result)
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
        v6 = v4 - 32;
        do
        {
          v7 = v6 - 40;
          sub_18368D56C(v6, *(v6 + 8));
          sub_18368A374(v6 - 40, *(v6 - 32));
          v6 -= 72;
        }

        while (v7 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_183975BB4(uint64_t a1, char **a2, char **a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_50;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = v6[1] ? v6[1] : v6;
  v26 = v9;
  if (!v9)
  {
    goto LABEL_50;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v23 = *(v10 + 1);
        if (!v23)
        {
          break;
        }

        do
        {
          v10 = v23;
          v23 = *v23;
        }

        while (v23);
      }
    }

    else
    {
      for (*(v10 + 1) = 0; v11; v11 = *(v10 + 1))
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v25 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    sub_18368A374(a1, v9);
    if (v10)
    {
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  v13 = a2;
  do
  {
    v9[4] = v13[4];
    if (v9 != v13)
    {
      sub_18374AA38(v9 + 5, v13[5], v13[6], (v13[6] - v13[5]) >> 4);
      v9 = v26;
    }

    v14 = *v8;
    v15 = (a1 + 8);
    v16 = (a1 + 8);
    if (!*v8)
    {
LABEL_22:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v15;
      *v16 = v9;
      v17 = **a1;
      if (!v17)
      {
        goto LABEL_24;
      }

LABEL_23:
      *a1 = v17;
      goto LABEL_24;
    }

    do
    {
      while (1)
      {
        v15 = v14;
        if (v9[4] >= *(v14 + 4))
        {
          break;
        }

        v14 = *v14;
        v16 = v15;
        if (!*v15)
        {
          goto LABEL_22;
        }
      }

      v14 = *(v14 + 1);
    }

    while (v14);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v15;
    *(v15 + 1) = v9;
    v17 = **a1;
    if (v17)
    {
      goto LABEL_23;
    }

LABEL_24:
    sub_1836894A0(*(a1 + 8), v9);
    ++*(a1 + 16);
    v9 = v25;
    v26 = v25;
    if (v25)
    {
      v10 = v25[2];
      if (v10)
      {
        v18 = *v10;
        if (*v10 == v25)
        {
          *v10 = 0;
          while (1)
          {
            v21 = *(v10 + 1);
            if (!v21)
            {
              break;
            }

            do
            {
              v10 = v21;
              v21 = *v21;
            }

            while (v21);
          }
        }

        else
        {
          for (*(v10 + 1) = 0; v18; v18 = *(v10 + 1))
          {
            do
            {
              v10 = v18;
              v18 = *v18;
            }

            while (v18);
          }
        }
      }

      v25 = v10;
      v19 = v13[1];
      if (!v19)
      {
        do
        {
LABEL_35:
          a2 = v13[2];
          v20 = *a2 == v13;
          v13 = a2;
        }

        while (!v20);
        goto LABEL_37;
      }
    }

    else
    {
      v10 = 0;
      v19 = v13[1];
      if (!v19)
      {
        goto LABEL_35;
      }
    }

    do
    {
      a2 = v19;
      v19 = *v19;
    }

    while (v19);
LABEL_37:
    if (!v9)
    {
      break;
    }

    v13 = a2;
  }

  while (a2 != a3);
  v12 = a1;
  sub_18368A374(a1, v9);
  if (v10)
  {
LABEL_47:
    for (i = *(v10 + 2); i; i = *(i + 2))
    {
      v10 = i;
    }

    sub_18368A374(v12, v10);
  }

LABEL_50:
  if (a2 != a3)
  {
    sub_183975A34();
  }
}

void sub_183975F20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183840EA4(va);
  _Unwind_Resume(a1);
}

void sub_183975F34(void **a1, char *a2, char *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = (v10 - 32);
        do
        {
          v13 = v12 - 40;
          sub_18368D56C(v12, *(v12 + 8));
          sub_18368A374(v12 - 40, *(v12 - 32));
          v12 -= 72;
        }

        while (v13 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v14 = 0x8E38E38E38E38E39 * (v7 >> 3);
      v15 = 2 * v14;
      if (2 * v14 <= a4)
      {
        v15 = a4;
      }

      if (v14 >= 0x1C71C71C71C71C7)
      {
        v16 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v16 = v15;
      }

      if (v16 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }
    }

    sub_18368964C();
  }

  v17 = a1[1];
  v18 = v17 - v8;
  if (0x8E38E38E38E38E39 * ((v17 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v22 = 0;
      do
      {
        v23 = &v8[v22];
        if (a2 == v8)
        {
          *(v23 + 24) = *&a2[v22 + 24];
        }

        else
        {
          sub_183975BB4(&v8[v22], *&a2[v22], &a2[v22 + 8]);
          *(v23 + 24) = *&a2[v22 + 24];
          sub_1836DC16C((v23 + 40), *&a2[v22 + 40], &a2[v22 + 48]);
        }

        *&v8[v22 + 64] = *&a2[v22 + 64];
        v22 += 72;
      }

      while (&a2[v22] != a3);
      v17 = a1[1];
      v8 += v22;
    }

    if (v17 != v8)
    {
      v25 = v17 - 32;
      do
      {
        v26 = v25 - 40;
        sub_18368D56C(v25, *(v25 + 8));
        sub_18368A374(v25 - 40, *(v25 - 32));
        v25 -= 72;
      }

      while (v26 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    v19 = &a2[v18];
    if (v17 != v8)
    {
      v20 = 0;
      do
      {
        v21 = &v8[v20];
        if (a2 == v8)
        {
          *(v21 + 24) = *&a2[v20 + 24];
        }

        else
        {
          sub_183975BB4(&v8[v20], *&a2[v20], &a2[v20 + 8]);
          *(v21 + 24) = *&a2[v20 + 24];
          sub_1836DC16C((v21 + 40), *&a2[v20 + 40], &a2[v20 + 48]);
        }

        *&v8[v20 + 64] = *&a2[v20 + 64];
        v20 += 72;
      }

      while (v18 != v20);
      v17 = a1[1];
    }

    v27 = v17;
    v24 = v17;
    if (v19 != a3)
    {
      v24 = v17;
      do
      {
        sub_1836EC4D8(v24, v19);
        v19 += 72;
        v24 = v27 + 72;
        v27 += 72;
      }

      while (v19 != a3);
    }

    a1[1] = v24;
  }
}

void sub_183976288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1839759C0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1839762A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1839759C0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1839762B8(double *a1, double *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v242 = (a2 - 18);
    v245 = (a2 - 9);
    v249 = a2;
    v241 = (a2 - 27);
    v6 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = v249 - v6;
          v9 = 0x8E38E38E38E38E39 * (v249 - v6);
          if (v9 > 2)
          {
            if (v9 == 3)
            {
              v96 = *(v7 + 104);
              v97 = *(v249 - 5);
              if (v96 < *(v7 + 32))
              {
                if (v97 < v96)
                {
                  goto LABEL_142;
                }

                sub_18397814C(v7, v7 + 72);
                if (*(v249 - 5) >= *(v7 + 104))
                {
                  return;
                }

                v98 = v7 + 72;
LABEL_143:
                v99 = v245;
LABEL_313:
                sub_18397814C(v98, v99);
                return;
              }

              if (v97 >= v96)
              {
                return;
              }

              v215 = v7 + 72;
              v216 = v245;
LABEL_311:
              sub_18397814C(v215, v216);
              if (*(v7 + 104) >= *(v7 + 32))
              {
                return;
              }

              v99 = v7 + 72;
              v98 = v7;
              goto LABEL_313;
            }

            if (v9 != 4)
            {
              if (v9 == 5)
              {
                sub_183977AC0(v7, v7 + 72, v7 + 144, v7 + 216, v245);
                return;
              }

              goto LABEL_9;
            }

            v100 = *(v7 + 104);
            v101 = *(v7 + 176);
            if (v100 >= *(v7 + 32))
            {
              if (v101 >= v100)
              {
                goto LABEL_308;
              }

              sub_18397814C(v7 + 72, v7 + 144);
              if (*(v7 + 104) >= *(v7 + 32))
              {
                goto LABEL_308;
              }

              v102 = v7 + 72;
              v103 = v7;
            }

            else if (v101 >= v100)
            {
              sub_18397814C(v7, v7 + 72);
              if (*(v7 + 176) >= *(v7 + 104))
              {
                goto LABEL_308;
              }

              v103 = v7 + 72;
              v102 = v7 + 144;
            }

            else
            {
              v102 = v7 + 144;
              v103 = v7;
            }

            sub_18397814C(v103, v102);
LABEL_308:
            if (*(v249 - 5) >= *(v7 + 176))
            {
              return;
            }

            sub_18397814C(v7 + 144, v245);
            if (*(v7 + 176) >= *(v7 + 104))
            {
              return;
            }

            v215 = v7 + 72;
            v216 = v7 + 144;
            goto LABEL_311;
          }

          if (v9 < 2)
          {
            return;
          }

          if (v9 == 2)
          {
            if (*(v249 - 5) >= *(v7 + 32))
            {
              return;
            }

LABEL_142:
            v98 = v7;
            goto LABEL_143;
          }

LABEL_9:
          v252 = v7;
          if (v8 <= 1727)
          {
            if (a4)
            {
              if (v7 != v249)
              {
                v104 = (v7 + 72);
                if ((v7 + 72) != v249)
                {
                  v105 = 0;
                  v106 = v7;
                  do
                  {
                    v108 = v104;
                    if (*(v104 + 4) < *(v106 + 4))
                    {
                      v109 = v106 + 10;
                      v110 = v106[10];
                      v261 = *v108;
                      v262 = v110;
                      v263 = v106[11];
                      if (v263)
                      {
                        v110[2] = &v262;
                        *v108 = v109;
                        *v109 = 0;
                        v106[11] = 0;
                      }

                      else
                      {
                        v261 = &v262;
                      }

                      v111 = v106 + 15;
                      v112 = v106[15];
                      v264 = *(v106 + 6);
                      v265 = v106[14];
                      v266 = v112;
                      v267 = v106[16];
                      if (v267)
                      {
                        v112[2] = &v266;
                        v106[14] = v111;
                        *v111 = 0;
                        v106[16] = 0;
                      }

                      else
                      {
                        v265 = &v266;
                      }

                      v268 = v106[17];
                      v113 = v105;
                      do
                      {
                        v115 = v7 + v113;
                        v116 = v115 + 80;
                        sub_18368A374(v115 + 72, *(v115 + 80));
                        *(v115 + 72) = *v115;
                        v117 = (v115 + 8);
                        v118 = *(v115 + 8);
                        *(v115 + 80) = v118;
                        v119 = *(v115 + 16);
                        *(v115 + 88) = v119;
                        if (v119)
                        {
                          *(v118 + 16) = v116;
                          *v115 = v117;
                          *v117 = 0;
                          *(v115 + 16) = 0;
                        }

                        else
                        {
                          *(v115 + 72) = v116;
                        }

                        v120 = (v252 + v113);
                        *(v252 + v113 + 96) = *(v252 + v113 + 24);
                        v121 = (v252 + v113 + 120);
                        sub_18368D56C(v252 + v113 + 112, *v121);
                        v120[14] = v120[5];
                        v122 = (v252 + v113 + 48);
                        v123 = *v122;
                        *v121 = *v122;
                        v124 = *(v252 + v113 + 56);
                        v120[16] = v124;
                        if (v124)
                        {
                          v123[2] = v121;
                          v120[5] = v122;
                          *v122 = 0;
                          v120[7] = 0;
                          v7 = v252;
                          v114 = (v252 + v113);
                          *(v252 + v113 + 136) = *(v252 + v113 + 64);
                          if (!v113)
                          {
LABEL_169:
                            v125 = v7;
                            goto LABEL_171;
                          }
                        }

                        else
                        {
                          v120[14] = v121;
                          v7 = v252;
                          v114 = (v252 + v113);
                          *(v252 + v113 + 136) = *(v252 + v113 + 64);
                          if (!v113)
                          {
                            goto LABEL_169;
                          }
                        }

                        v113 -= 72;
                      }

                      while (*(&v264 + 1) < *(v114 - 5));
                      v125 = (v7 + v113 + 72);
LABEL_171:
                      v127 = *(v114 + 1);
                      v126 = (v114 + 1);
                      sub_18368A374(v125, v127);
                      *v125 = v261;
                      v128 = v262;
                      *v126 = v262;
                      v129 = v263;
                      v125[2] = v263;
                      if (v129)
                      {
                        v128[2] = v126;
                        v261 = &v262;
                        v262 = 0;
                        v263 = 0;
                      }

                      else
                      {
                        *v125 = v126;
                      }

                      v130 = v126 + 40;
                      *(v126 + 1) = v264;
                      sub_18368D56C((v126 + 32), *(v126 + 5));
                      *(v126 + 4) = v265;
                      v107 = v266;
                      *(v126 + 5) = v266;
                      v131 = v267;
                      v125[7] = v267;
                      if (v131)
                      {
                        v107[2] = v130;
                        v107 = 0;
                        v265 = &v266;
                        v266 = 0;
                        v267 = 0;
                      }

                      else
                      {
                        *(v126 + 4) = v130;
                      }

                      v125[8] = v268;
                      sub_18368D56C(&v265, v107);
                      sub_18368A374(&v261, v262);
                      v7 = v252;
                    }

                    v104 = v108 + 9;
                    v105 += 72;
                    v106 = v108;
                  }

                  while (v108 + 9 != v249);
                }
              }
            }

            else if (v7 != v249)
            {
              v217 = (v7 + 72);
              if ((v7 + 72) != v249)
              {
                v218 = (v7 + 136);
                do
                {
                  v220 = v217;
                  if (*(v217 + 4) < *(v7 + 32))
                  {
                    v221 = (v7 + 80);
                    v222 = *(v7 + 80);
                    v261 = *v220;
                    v262 = v222;
                    v263 = *(v7 + 88);
                    if (v263)
                    {
                      v222[2] = &v262;
                      *v220 = v221;
                      *v221 = 0;
                      *(v7 + 88) = 0;
                    }

                    else
                    {
                      v261 = &v262;
                    }

                    v223 = (v7 + 120);
                    v224 = *(v7 + 120);
                    v264 = *(v7 + 96);
                    v265 = *(v7 + 112);
                    v266 = v224;
                    v267 = *(v7 + 128);
                    if (v267)
                    {
                      v224[2] = &v266;
                      *(v7 + 112) = v223;
                      *v223 = 0;
                      *(v7 + 128) = 0;
                    }

                    else
                    {
                      v265 = &v266;
                    }

                    v268 = *(v7 + 136);
                    v225 = v218;
                    do
                    {
                      v228 = v225 - 7;
                      sub_18368A374((v225 - 8), *(v225 - 7));
                      v229 = v225 - 16;
                      v230 = *(v225 - 16);
                      *(v225 - 8) = *(v225 - 17);
                      *(v225 - 7) = v230;
                      v231 = *(v225 - 15);
                      *(v225 - 6) = v231;
                      if (v231)
                      {
                        *(v230 + 16) = v228;
                        *(v225 - 17) = v229;
                        *v229 = 0;
                        *(v225 - 15) = 0;
                      }

                      else
                      {
                        *(v225 - 8) = v228;
                      }

                      *(v225 - 5) = *(v225 - 7);
                      v232 = v225 - 2;
                      sub_18368D56C((v225 - 3), *(v225 - 2));
                      v233 = v225 - 11;
                      v234 = *(v225 - 11);
                      *(v225 - 3) = *(v225 - 12);
                      *(v225 - 2) = v234;
                      v235 = *(v225 - 10);
                      *(v225 - 1) = v235;
                      if (v235)
                      {
                        *(v234 + 16) = v232;
                        *(v225 - 12) = v233;
                        *v233 = 0;
                        *(v225 - 10) = 0;
                      }

                      else
                      {
                        *(v225 - 3) = v232;
                      }

                      v226 = v225 - 9;
                      *v225 = *(v225 - 9);
                      v227 = *(v225 - 22);
                      v225 -= 9;
                    }

                    while (*(&v264 + 1) < v227);
                    v236 = v226 - 7;
                    sub_18368A374((v226 - 8), *(v226 - 7));
                    *(v226 - 8) = v261;
                    v237 = v262;
                    *(v226 - 7) = v262;
                    v238 = v263;
                    *(v226 - 6) = v263;
                    if (v238)
                    {
                      v237[2] = v236;
                      v261 = &v262;
                      v262 = 0;
                      v263 = 0;
                    }

                    else
                    {
                      *(v226 - 8) = v236;
                    }

                    v239 = v226 - 2;
                    *(v226 - 5) = v264;
                    sub_18368D56C((v226 - 3), *(v226 - 2));
                    *(v226 - 3) = v265;
                    v219 = v266;
                    *(v226 - 2) = v266;
                    v240 = v267;
                    *(v226 - 1) = v267;
                    if (v240)
                    {
                      v219[2] = v239;
                      v219 = 0;
                      v265 = &v266;
                      v266 = 0;
                      v267 = 0;
                    }

                    else
                    {
                      *(v226 - 3) = v239;
                    }

                    *v226 = v268;
                    sub_18368D56C(&v265, v219);
                    sub_18368A374(&v261, v262);
                  }

                  v217 = v220 + 9;
                  v218 += 9;
                  v7 = v220;
                }

                while (v220 + 9 != v249);
              }
            }

            return;
          }

          if (!a3)
          {
            if (v7 != v249)
            {
              v132 = (v9 - 2) >> 1;
              v250 = v132;
              v243 = v8;
              do
              {
                v134 = v132;
                if (v250 >= v132)
                {
                  v135 = (2 * v132) | 1;
                  v136 = v7 + 72 * v135;
                  if (2 * v134 + 2 < v9 && *(v136 + 32) < *(v136 + 104))
                  {
                    v136 += 72;
                    v135 = 2 * v134 + 2;
                  }

                  v137 = v7 + 72 * v134;
                  if (*(v136 + 32) >= *(v137 + 32))
                  {
                    v261 = *v137;
                    v138 = (v137 + 8);
                    v139 = *(v137 + 8);
                    v262 = v139;
                    v263 = *(v137 + 16);
                    if (v263)
                    {
                      v139[2] = &v262;
                      *v137 = v138;
                      *v138 = 0;
                      *(v137 + 16) = 0;
                    }

                    else
                    {
                      v261 = &v262;
                    }

                    v264 = *(v137 + 24);
                    v140 = (v137 + 48);
                    v141 = *(v137 + 48);
                    v265 = *(v137 + 40);
                    v266 = v141;
                    v267 = *(v137 + 56);
                    v248 = v134;
                    if (v267)
                    {
                      v141[2] = &v266;
                      *(v137 + 40) = v140;
                      *v140 = 0;
                      *(v137 + 56) = 0;
                    }

                    else
                    {
                      v265 = &v266;
                    }

                    v268 = *(v137 + 64);
                    do
                    {
                      v142 = v136;
                      v143 = v137 + 8;
                      sub_18368A374(v137, *(v137 + 8));
                      *v137 = *v142;
                      v145 = (v142 + 8);
                      v144 = *(v142 + 8);
                      *(v137 + 8) = v144;
                      v146 = *(v142 + 16);
                      *(v137 + 16) = v146;
                      if (v146)
                      {
                        *(v144 + 16) = v143;
                        *v142 = v145;
                        *v145 = 0;
                        *(v142 + 16) = 0;
                      }

                      else
                      {
                        *v137 = v143;
                      }

                      v148 = v137 + 48;
                      v147 = *(v137 + 48);
                      *(v137 + 24) = *(v142 + 24);
                      sub_18368D56C(v137 + 40, v147);
                      v149 = (v142 + 40);
                      *(v137 + 40) = *(v142 + 40);
                      v151 = (v142 + 48);
                      v150 = *(v142 + 48);
                      *(v137 + 48) = v150;
                      v152 = *(v142 + 56);
                      *(v137 + 56) = v152;
                      if (v152)
                      {
                        *(v150 + 16) = v148;
                        *v149 = v151;
                        *v151 = 0;
                        *(v142 + 56) = 0;
                        *(v137 + 64) = *(v142 + 64);
                        if (v250 < v135)
                        {
                          break;
                        }
                      }

                      else
                      {
                        *(v137 + 40) = v148;
                        *(v137 + 64) = *(v142 + 64);
                        if (v250 < v135)
                        {
                          break;
                        }
                      }

                      v153 = 2 * v135;
                      v135 = (2 * v135) | 1;
                      v136 = v7 + 72 * v135;
                      v154 = v153 + 2;
                      if (v154 < v9 && *(v136 + 32) < *(v136 + 104))
                      {
                        v136 += 72;
                        v135 = v154;
                      }

                      v137 = v142;
                    }

                    while (*(v136 + 32) >= *(&v264 + 1));
                    sub_18368A374(v142, *(v142 + 8));
                    *v142 = v261;
                    v155 = v262;
                    *(v142 + 8) = v262;
                    v156 = v263;
                    *(v142 + 16) = v263;
                    if (v156)
                    {
                      v155[2] = v145;
                      v261 = &v262;
                      v262 = 0;
                      v263 = 0;
                    }

                    else
                    {
                      *v142 = v145;
                    }

                    *(v142 + 24) = v264;
                    sub_18368D56C(v142 + 40, *(v142 + 48));
                    *(v142 + 40) = v265;
                    v133 = v266;
                    *(v142 + 48) = v266;
                    v157 = v267;
                    *(v142 + 56) = v267;
                    if (v157)
                    {
                      v133[2] = v151;
                      v133 = 0;
                      v265 = &v266;
                      v266 = 0;
                      v267 = 0;
                    }

                    else
                    {
                      *v149 = v151;
                    }

                    v8 = v243;
                    *(v142 + 64) = v268;
                    sub_18368D56C(&v265, v133);
                    sub_18368A374(&v261, v262);
                    v134 = v248;
                  }
                }

                v132 = v134 - 1;
              }

              while (v134);
              v158 = 0x8E38E38E38E38E39 * (v8 >> 3);
              v244 = (v7 + 48);
              v246 = (v7 + 8);
              v159 = v249;
              do
              {
                v162 = *(v7 + 8);
                v253 = *v7;
                v254 = v162;
                v255 = *(v7 + 16);
                if (v255)
                {
                  v162[2] = &v254;
                  *v7 = v246;
                  *v246 = 0;
                  v246[1] = 0;
                }

                else
                {
                  v253 = &v254;
                }

                v256 = *(v7 + 24);
                v163 = *(v7 + 48);
                v257 = *(v7 + 40);
                v258 = v163;
                v259 = *(v7 + 56);
                v251 = v159;
                if (v259)
                {
                  v163[2] = &v258;
                  *(v7 + 40) = v244;
                  *v244 = 0;
                  v244[1] = 0;
                }

                else
                {
                  v257 = &v258;
                }

                v164 = 0;
                v260 = *(v7 + 64);
                v165 = (v158 - 2) >> 1;
                v166 = v7;
                do
                {
                  while (1)
                  {
                    v167 = v166 + 72 * v164;
                    v168 = v167 + 72;
                    if (2 * v164 + 2 >= v158)
                    {
                      v164 = (2 * v164) | 1;
                    }

                    else
                    {
                      v169 = *(v167 + 104);
                      v170 = *(v167 + 176);
                      v171 = v167 + 144;
                      if (v169 >= v170)
                      {
                        v164 = (2 * v164) | 1;
                      }

                      else
                      {
                        v168 = v171;
                        v164 = 2 * v164 + 2;
                      }
                    }

                    v172 = v166 + 8;
                    sub_18368A374(v166, *(v166 + 8));
                    *v166 = *v168;
                    v174 = (v168 + 8);
                    v173 = *(v168 + 8);
                    *(v166 + 8) = v173;
                    v175 = *(v168 + 16);
                    *(v166 + 16) = v175;
                    if (v175)
                    {
                      *(v173 + 16) = v172;
                      *v168 = v174;
                      *v174 = 0;
                      *(v168 + 16) = 0;
                    }

                    else
                    {
                      *v166 = v172;
                    }

                    v177 = v166 + 48;
                    v176 = *(v166 + 48);
                    *(v166 + 24) = *(v168 + 24);
                    sub_18368D56C(v166 + 40, v176);
                    v178 = (v168 + 40);
                    *(v166 + 40) = *(v168 + 40);
                    v180 = (v168 + 48);
                    v179 = *(v168 + 48);
                    *(v166 + 48) = v179;
                    v181 = *(v168 + 56);
                    *(v166 + 56) = v181;
                    if (v181)
                    {
                      break;
                    }

                    *(v166 + 40) = v177;
                    *(v166 + 64) = *(v168 + 64);
                    v166 = v168;
                    if (v164 > v165)
                    {
                      goto LABEL_231;
                    }
                  }

                  *(v179 + 16) = v177;
                  *v178 = v180;
                  *v180 = 0;
                  *(v168 + 56) = 0;
                  *(v166 + 64) = *(v168 + 64);
                  v166 = v168;
                }

                while (v164 <= v165);
LABEL_231:
                v159 = v251 - 9;
                sub_18368A374(v168, *(v168 + 8));
                if (v168 == v251 - 9)
                {
                  *v168 = v253;
                  v185 = v254;
                  *(v168 + 8) = v254;
                  v186 = v255;
                  *(v168 + 16) = v255;
                  if (v186)
                  {
                    v185[2] = v174;
                    v253 = &v254;
                    v254 = 0;
                    v255 = 0;
                  }

                  else
                  {
                    *v168 = v174;
                  }

                  *(v168 + 24) = v256;
                  sub_18368D56C(v168 + 40, *(v168 + 48));
                  *(v168 + 40) = v257;
                  v160 = v258;
                  *(v168 + 48) = v258;
                  v198 = v259;
                  *(v168 + 56) = v259;
                  if (v198)
                  {
                    v160[2] = v180;
                    v160 = 0;
                    v257 = &v258;
                    v258 = 0;
                    v259 = 0;
                  }

                  else
                  {
                    *v178 = v180;
                  }

                  *(v168 + 64) = v260;
                }

                else
                {
                  v183 = v251 - 8;
                  v182 = *(v251 - 8);
                  *v168 = *(v251 - 9);
                  *(v168 + 8) = v182;
                  v184 = *(v251 - 7);
                  *(v168 + 16) = v184;
                  if (v184)
                  {
                    *(v182 + 16) = v174;
                    *v159 = v183;
                    *v183 = 0.0;
                    *(v251 - 7) = 0.0;
                  }

                  else
                  {
                    *v168 = v174;
                  }

                  *(v168 + 24) = *(v251 - 3);
                  sub_18368D56C(v168 + 40, *(v168 + 48));
                  v187 = v251 - 4;
                  *(v168 + 40) = *(v251 - 4);
                  v189 = v251 - 3;
                  v188 = *(v251 - 3);
                  *(v168 + 48) = v188;
                  v190 = *(v251 - 2);
                  *(v168 + 56) = v190;
                  if (v190)
                  {
                    *(v188 + 16) = v180;
                    *v187 = v189;
                    *v189 = 0.0;
                    *(v251 - 2) = 0.0;
                  }

                  else
                  {
                    *v178 = v180;
                  }

                  *(v168 + 64) = *(v251 - 1);
                  sub_18368A374(v159, *(v251 - 8));
                  *(v251 - 9) = v253;
                  v191 = v254;
                  *(v251 - 8) = v254;
                  v192 = v255;
                  *(v251 - 7) = v255;
                  if (v192)
                  {
                    v191[2] = v183;
                    v253 = &v254;
                    v254 = 0;
                    v255 = 0;
                  }

                  else
                  {
                    *v159 = v183;
                  }

                  *(v251 - 3) = v256;
                  sub_18368D56C(v187, *(v251 - 3));
                  *(v251 - 4) = v257;
                  v160 = v258;
                  *(v251 - 3) = v258;
                  v193 = v259;
                  *(v251 - 2) = v259;
                  if (v193)
                  {
                    v160[2] = v189;
                    v160 = 0;
                    v257 = &v258;
                    v258 = 0;
                    v259 = 0;
                  }

                  else
                  {
                    *v187 = v189;
                  }

                  *(v251 - 1) = v260;
                  v194 = v168 + 72 - v252;
                  if (v194 >= 73)
                  {
                    v195 = (-2 - 0x71C71C71C71C71C7 * (v194 >> 3)) >> 1;
                    v196 = &v252[9 * v195];
                    if (v196[4] < *(v168 + 32))
                    {
                      v197 = *(v168 + 8);
                      v261 = *v168;
                      v262 = v197;
                      v263 = *(v168 + 16);
                      if (v263)
                      {
                        v197[2] = &v262;
                        *v168 = v174;
                        *v174 = 0;
                        *(v168 + 16) = 0;
                      }

                      else
                      {
                        v261 = &v262;
                      }

                      v264 = *(v168 + 24);
                      v199 = *(v168 + 48);
                      v265 = *(v168 + 40);
                      v266 = v199;
                      v267 = *(v168 + 56);
                      if (v267)
                      {
                        v199[2] = &v266;
                        *v178 = v180;
                        *v180 = 0;
                        *(v168 + 56) = 0;
                      }

                      else
                      {
                        v265 = &v266;
                      }

                      v268 = *(v168 + 64);
                      while (1)
                      {
                        v200 = v196;
                        v201 = v168 + 8;
                        sub_18368A374(v168, *(v168 + 8));
                        *v168 = *v200;
                        v203 = (v200 + 8);
                        v202 = *(v200 + 8);
                        *(v168 + 8) = v202;
                        v204 = *(v200 + 16);
                        *(v168 + 16) = v204;
                        if (v204)
                        {
                          *(v202 + 16) = v201;
                          *v200 = v203;
                          *v203 = 0;
                          *(v200 + 16) = 0;
                        }

                        else
                        {
                          *v168 = v201;
                        }

                        v206 = v168 + 48;
                        v205 = *(v168 + 48);
                        *(v168 + 24) = *(v200 + 24);
                        sub_18368D56C(v168 + 40, v205);
                        v207 = (v200 + 40);
                        *(v168 + 40) = *(v200 + 40);
                        v209 = (v200 + 48);
                        v208 = *(v200 + 48);
                        *(v168 + 48) = v208;
                        v210 = *(v200 + 56);
                        *(v168 + 56) = v210;
                        if (v210)
                        {
                          *(v208 + 16) = v206;
                          *v207 = v209;
                          *v209 = 0;
                          *(v200 + 56) = 0;
                          *(v168 + 64) = *(v200 + 64);
                          if (!v195)
                          {
LABEL_265:
                            sub_18368A374(v200, *(v200 + 8));
                            *v200 = v261;
                            v211 = v262;
                            *(v200 + 8) = v262;
                            v212 = v263;
                            *(v200 + 16) = v263;
                            if (v212)
                            {
                              v211[2] = v203;
                              v261 = &v262;
                              v262 = 0;
                              v263 = 0;
                            }

                            else
                            {
                              *v200 = v203;
                            }

                            *(v200 + 24) = v264;
                            sub_18368D56C(v200 + 40, *(v200 + 48));
                            *(v200 + 40) = v265;
                            v213 = v266;
                            *(v200 + 48) = v266;
                            v214 = v267;
                            *(v200 + 56) = v267;
                            if (v214)
                            {
                              v213[2] = v209;
                              v213 = 0;
                              v265 = &v266;
                              v266 = 0;
                              v267 = 0;
                            }

                            else
                            {
                              *v207 = v209;
                            }

                            *(v200 + 64) = v268;
                            sub_18368D56C(&v265, v213);
                            sub_18368A374(&v261, v262);
                            v160 = v258;
                            break;
                          }
                        }

                        else
                        {
                          *(v168 + 40) = v206;
                          *(v168 + 64) = *(v200 + 64);
                          if (!v195)
                          {
                            goto LABEL_265;
                          }
                        }

                        v195 = (v195 - 1) >> 1;
                        v196 = &v252[9 * v195];
                        v168 = v200;
                        if (v196[4] >= *(&v264 + 1))
                        {
                          goto LABEL_265;
                        }
                      }
                    }
                  }
                }

                sub_18368D56C(&v257, v160);
                sub_18368A374(&v253, v254);
                v161 = v158-- <= 2;
                v7 = v252;
              }

              while (!v161);
            }

            return;
          }

          v10 = v9 >> 1;
          v11 = v7 + 72 * (v9 >> 1);
          v12 = *(v249 - 5);
          if (v8 >= 0x2401)
          {
            v13 = *(v11 + 32);
            if (v13 >= *(v7 + 32))
            {
              if (v12 < v13)
              {
                sub_18397814C(v11, v245);
                if (*(v11 + 32) < *(v7 + 32))
                {
                  v14 = v7;
                  v15 = v11;
                  goto LABEL_25;
                }
              }
            }

            else
            {
              v14 = v7;
              if (v12 < v13)
              {
                goto LABEL_16;
              }

              sub_18397814C(v7, v11);
              if (*(v249 - 5) < *(v11 + 32))
              {
                v14 = v11;
LABEL_16:
                v15 = v245;
LABEL_25:
                sub_18397814C(v14, v15);
              }
            }

            v19 = v7 + 72 * v10;
            v20 = v19 - 72;
            v21 = *(v19 - 40);
            v22 = *(v249 - 14);
            if (v21 >= *(v7 + 104))
            {
              if (v22 < v21)
              {
                sub_18397814C(v19 - 72, v242);
                if (*(v20 + 32) < *(v7 + 104))
                {
                  v23 = v7 + 72;
                  v24 = v20;
                  goto LABEL_37;
                }
              }
            }

            else
            {
              v23 = v7 + 72;
              if (v22 < v21)
              {
                goto LABEL_30;
              }

              sub_18397814C(v23, v19 - 72);
              if (*(v249 - 14) < *(v20 + 32))
              {
                v23 = v20;
LABEL_30:
                v24 = v242;
LABEL_37:
                sub_18397814C(v23, v24);
              }
            }

            v25 = v7 + 72 * v10;
            v26 = *(v25 + 104);
            v27 = *(v249 - 23);
            if (v26 >= *(v7 + 176))
            {
              if (v27 < v26)
              {
                sub_18397814C(v25 + 72, v241);
                if (*(v25 + 104) < *(v7 + 176))
                {
                  v28 = v7 + 144;
                  v29 = v25 + 72;
                  goto LABEL_46;
                }
              }
            }

            else
            {
              v28 = v7 + 144;
              if (v27 < v26)
              {
                goto LABEL_42;
              }

              sub_18397814C(v28, v25 + 72);
              if (*(v249 - 23) < *(v25 + 104))
              {
                v28 = v25 + 72;
LABEL_42:
                v29 = v241;
LABEL_46:
                sub_18397814C(v28, v29);
              }
            }

            v30 = *(v11 + 32);
            v31 = *(v25 + 104);
            if (v30 >= *(v20 + 32))
            {
              if (v31 < v30)
              {
                sub_18397814C(v11, v25 + 72);
                if (*(v11 + 32) < *(v20 + 32))
                {
                  v33 = v20;
                  v32 = v11;
                  goto LABEL_55;
                }
              }
            }

            else
            {
              if (v31 < v30)
              {
                v32 = v25 + 72;
                v33 = v20;
                goto LABEL_55;
              }

              sub_18397814C(v20, v11);
              if (*(v25 + 104) < *(v11 + 32))
              {
                v32 = v25 + 72;
                v33 = v11;
LABEL_55:
                sub_18397814C(v33, v32);
              }
            }

            v17 = v7;
            v18 = v11;
            goto LABEL_57;
          }

          v16 = *(v7 + 32);
          if (v16 >= *(v11 + 32))
          {
            if (v12 < v16)
            {
              sub_18397814C(v7, v245);
              if (*(v7 + 32) < *(v11 + 32))
              {
                v17 = v11;
                v18 = v7;
                goto LABEL_57;
              }
            }
          }

          else
          {
            v17 = v11;
            if (v12 < v16)
            {
              goto LABEL_21;
            }

            sub_18397814C(v11, v7);
            if (*(v249 - 5) < *(v7 + 32))
            {
              v17 = v7;
LABEL_21:
              v18 = v245;
LABEL_57:
              sub_18397814C(v17, v18);
            }
          }

          --a3;
          if ((a4 & 1) != 0 || *(v7 - 40) < *(v7 + 32))
          {
            break;
          }

          v68 = (v7 + 8);
          v67 = *(v7 + 8);
          v261 = *v7;
          v262 = v67;
          v263 = *(v7 + 16);
          if (v263)
          {
            v67[2] = &v262;
            *v7 = v68;
            *v68 = 0;
            *(v7 + 16) = 0;
          }

          else
          {
            v261 = &v262;
          }

          v264 = *(v7 + 24);
          v69 = (v7 + 40);
          v71 = (v7 + 48);
          v70 = *(v7 + 48);
          v265 = *(v7 + 40);
          v266 = v70;
          v267 = *(v7 + 56);
          if (v267)
          {
            v70[2] = &v266;
            *v69 = v71;
            *v71 = 0;
            *(v7 + 56) = 0;
            v268 = *(v7 + 64);
            v72 = *(&v264 + 1);
            if (*(&v264 + 1) < *(v249 - 5))
            {
              goto LABEL_105;
            }
          }

          else
          {
            v265 = &v266;
            v268 = *(v7 + 64);
            v72 = *(&v264 + 1);
            if (*(&v264 + 1) < *(v249 - 5))
            {
LABEL_105:
              v73 = v7;
              do
              {
                v6 = (v73 + 72);
                v74 = *(v73 + 104);
                v73 += 72;
              }

              while (v72 >= v74);
              goto LABEL_112;
            }
          }

          v75 = (v7 + 72);
          do
          {
            v6 = v75;
            if (v75 >= v249)
            {
              break;
            }

            v76 = v75[4];
            v75 += 9;
          }

          while (v72 >= v76);
LABEL_112:
          v77 = v249;
          if (v6 < v249)
          {
            v78 = v249;
            do
            {
              v77 = (v78 - 9);
              v79 = *(v78 - 5);
              v78 -= 9;
            }

            while (v72 < v79);
          }

          while (v6 < v77)
          {
            sub_18397814C(v6, v77);
            do
            {
              v80 = v6[13];
              v6 += 9;
            }

            while (*(&v264 + 1) >= v80);
            do
            {
              v81 = *(v77 - 40);
              v77 -= 72;
            }

            while (*(&v264 + 1) < v81);
          }

          v82 = v6 - 9;
          if (v6 - 9 != v7)
          {
            sub_18368A374(v7, *(v7 + 8));
            v83 = v6 - 8;
            v84 = *(v6 - 8);
            *v7 = *(v6 - 9);
            *(v7 + 8) = v84;
            v85 = *(v6 - 7);
            *(v7 + 16) = v85;
            if (v85)
            {
              *(v84 + 16) = v68;
              *v82 = v83;
              *v83 = 0.0;
              *(v6 - 7) = 0.0;
            }

            else
            {
              *v7 = v68;
            }

            *(v7 + 24) = *(v6 - 3);
            sub_18368D56C(v7 + 40, *(v7 + 48));
            v86 = v6 - 3;
            v87 = *(v6 - 3);
            *(v7 + 40) = *(v6 - 4);
            *(v7 + 48) = v87;
            v88 = *(v6 - 2);
            *(v7 + 56) = v88;
            if (v88)
            {
              *(v87 + 16) = v71;
              *(v6 - 4) = v86;
              *v86 = 0.0;
              *(v6 - 2) = 0.0;
            }

            else
            {
              *v69 = v71;
            }

            *(v7 + 64) = *(v6 - 1);
          }

          v89 = v6 - 8;
          sub_18368A374((v6 - 9), *(v6 - 8));
          *(v6 - 9) = v261;
          v90 = v262;
          *(v6 - 8) = v262;
          v91 = v263;
          *(v6 - 7) = v263;
          if (v91)
          {
            v90[2] = v89;
            v261 = &v262;
            v262 = 0;
            v263 = 0;
          }

          else
          {
            *v82 = v89;
          }

          v93 = v6 - 3;
          v92 = *(v6 - 3);
          *(v6 - 3) = v264;
          sub_18368D56C((v6 - 4), v92);
          *(v6 - 4) = v265;
          v94 = v266;
          *(v6 - 3) = v266;
          v95 = v267;
          *(v6 - 2) = v267;
          if (v95)
          {
            v94[2] = v93;
            v94 = 0;
            v265 = &v266;
            v266 = 0;
            v267 = 0;
          }

          else
          {
            *(v6 - 4) = v93;
          }

          *(v6 - 1) = v268;
          sub_18368D56C(&v265, v94);
          sub_18368A374(&v261, v262);
          a4 = 0;
        }

        v35 = (v7 + 8);
        v34 = *(v7 + 8);
        v261 = *v7;
        v262 = v34;
        v263 = *(v7 + 16);
        if (v263)
        {
          v34[2] = &v262;
          *v7 = v35;
          *v35 = 0;
          *(v7 + 16) = 0;
        }

        else
        {
          v261 = &v262;
        }

        v37 = (v7 + 40);
        v36 = *(v7 + 40);
        v264 = *(v7 + 24);
        v39 = (v7 + 48);
        v38 = *(v7 + 48);
        v265 = v36;
        v266 = v38;
        v267 = *(v7 + 56);
        if (v267)
        {
          v38[2] = &v266;
          *v37 = v39;
          *v39 = 0;
          *(v7 + 56) = 0;
        }

        else
        {
          v265 = &v266;
        }

        v40 = 0;
        v268 = *(v7 + 64);
        do
        {
          v41 = *(v7 + v40 + 104);
          v40 += 72;
        }

        while (v41 < *(&v264 + 1));
        v42 = (v7 + v40);
        v43 = v249;
        if (v40 == 72)
        {
          v46 = v249;
          while (v42 < v46)
          {
            v44 = (v46 - 9);
            v47 = *(v46 - 5);
            v46 -= 9;
            if (v47 < *(&v264 + 1))
            {
              goto LABEL_74;
            }
          }

          v44 = v46;
          v6 = v42;
        }

        else
        {
          do
          {
            v44 = (v43 - 9);
            v45 = *(v43 - 5);
            v43 -= 9;
          }

          while (v45 >= *(&v264 + 1));
LABEL_74:
          v6 = v42;
          if (v42 < v44)
          {
            v48 = v44;
            do
            {
              sub_18397814C(v6, v48);
              do
              {
                v49 = v6[13];
                v6 += 9;
              }

              while (v49 < *(&v264 + 1));
              do
              {
                v50 = *(v48 - 40);
                v48 -= 72;
              }

              while (v50 >= *(&v264 + 1));
            }

            while (v6 < v48);
          }
        }

        v51 = v6 - 9;
        if (v6 - 9 != v7)
        {
          sub_18368A374(v7, *(v7 + 8));
          v52 = v6 - 8;
          v53 = *(v6 - 8);
          *v7 = *(v6 - 9);
          *(v7 + 8) = v53;
          v54 = *(v6 - 7);
          *(v7 + 16) = v54;
          if (v54)
          {
            *(v53 + 16) = v35;
            *v51 = v52;
            *v52 = 0.0;
            *(v6 - 7) = 0.0;
          }

          else
          {
            *v7 = v35;
          }

          *(v7 + 24) = *(v6 - 3);
          sub_18368D56C(v7 + 40, *(v7 + 48));
          v55 = v6 - 3;
          v56 = *(v6 - 3);
          *(v7 + 40) = *(v6 - 4);
          *(v7 + 48) = v56;
          v57 = *(v6 - 2);
          *(v7 + 56) = v57;
          if (v57)
          {
            *(v56 + 16) = v39;
            *(v6 - 4) = v55;
            *v55 = 0.0;
            *(v6 - 2) = 0.0;
          }

          else
          {
            *v37 = v39;
          }

          *(v7 + 64) = *(v6 - 1);
        }

        v58 = v6 - 8;
        sub_18368A374((v6 - 9), *(v6 - 8));
        *(v6 - 9) = v261;
        v59 = v262;
        *(v6 - 8) = v262;
        v60 = v263;
        *(v6 - 7) = v263;
        if (v60)
        {
          v59[2] = v58;
          v261 = &v262;
          v262 = 0;
          v263 = 0;
        }

        else
        {
          *v51 = v58;
        }

        v62 = v6 - 3;
        v61 = *(v6 - 3);
        *(v6 - 3) = v264;
        sub_18368D56C((v6 - 4), v61);
        *(v6 - 4) = v265;
        v63 = v266;
        *(v6 - 3) = v266;
        v64 = v267;
        *(v6 - 2) = v267;
        if (v64)
        {
          v63[2] = v62;
          v63 = 0;
          v265 = &v266;
          v266 = 0;
          v267 = 0;
        }

        else
        {
          *(v6 - 4) = v62;
        }

        *(v6 - 1) = v268;
        sub_18368D56C(&v265, v63);
        sub_18368A374(&v261, v262);
        v65 = v42 >= v44;
        a1 = v252;
        if (v65)
        {
          break;
        }

LABEL_98:
        sub_1839762B8(v252, v6 - 9, a3, a4 & 1);
        a4 = 0;
      }

      v66 = sub_183977C58(v252, v6 - 9);
      if (sub_183977C58(v6, v249))
      {
        break;
      }

      if (!v66)
      {
        goto LABEL_98;
      }
    }

    a2 = v6 - 9;
    if (!v66)
    {
      continue;
    }

    break;
  }
}

void sub_183977AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = *(a2 + 32);
  v11 = *(a3 + 32);
  if (v10 >= *(a1 + 32))
  {
    if (v11 < v10)
    {
      sub_18397814C(a2, a3);
      if (*(a2 + 32) < *(v9 + 32))
      {
        a1 = v9;
        v12 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v11 < v10)
    {
LABEL_5:
      v12 = a3;
LABEL_9:
      sub_18397814C(a1, v12);
      goto LABEL_10;
    }

    sub_18397814C(a1, a2);
    if (*(a3 + 32) < *(a2 + 32))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 32) < *(a3 + 32))
  {
    sub_18397814C(a3, a4);
    if (*(a3 + 32) < *(a2 + 32))
    {
      sub_18397814C(a2, a3);
      if (*(a2 + 32) < *(v9 + 32))
      {
        sub_18397814C(v9, a2);
      }
    }
  }

  if (*(a5 + 32) < *(a4 + 32))
  {
    sub_18397814C(a4, a5);
    if (*(a4 + 32) < *(a3 + 32))
    {
      sub_18397814C(a3, a4);
      if (*(a3 + 32) < *(a2 + 32))
      {
        sub_18397814C(a2, a3);
        if (*(a2 + 32) < *(v9 + 32))
        {

          sub_18397814C(v9, a2);
        }
      }
    }
  }
}

BOOL sub_183977C58(double *a1, double *a2)
{
  v3 = a1;
  v4 = 0x8E38E38E38E38E39 * (a2 - a1);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v5 = (a2 - 9);
      v6 = a1[13];
      v7 = *(a2 - 5);
      if (v6 < a1[4])
      {
        if (v7 < v6)
        {
          goto LABEL_67;
        }

        sub_18397814C(a1, (a1 + 9));
        if (*(a2 - 5) < v3[13])
        {
          v8 = (v3 + 9);
          v5 = (a2 - 9);
LABEL_68:
          sub_18397814C(v8, v5);
          return 1;
        }

        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      sub_18397814C((a1 + 9), v5);
      if (v3[13] >= v3[4])
      {
        return 1;
      }

LABEL_66:
      v5 = (v3 + 9);
      goto LABEL_67;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_183977AC0(a1, (a1 + 9), (a1 + 18), (a1 + 27), (a2 - 9));
        return 1;
      }

      goto LABEL_14;
    }

    v12 = a1[13];
    v13 = a1[22];
    if (v12 >= a1[4])
    {
      if (v13 < v12)
      {
        sub_18397814C((a1 + 9), (a1 + 18));
        if (v3[13] < v3[4])
        {
          v14 = (v3 + 9);
          a1 = v3;
          goto LABEL_62;
        }
      }
    }

    else
    {
      if (v13 < v12)
      {
        v14 = (a1 + 18);
LABEL_62:
        sub_18397814C(a1, v14);
        goto LABEL_63;
      }

      sub_18397814C(a1, (a1 + 9));
      if (v3[22] < v3[13])
      {
        a1 = v3 + 9;
        v14 = (v3 + 18);
        goto LABEL_62;
      }
    }

LABEL_63:
    if (*(a2 - 5) >= v3[22])
    {
      return 1;
    }

    sub_18397814C((v3 + 18), (a2 - 9));
    if (v3[22] >= v3[13])
    {
      return 1;
    }

    sub_18397814C((v3 + 9), (v3 + 18));
    if (v3[13] >= v3[4])
    {
      return 1;
    }

    goto LABEL_66;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 5) < a1[4])
    {
      v5 = (a2 - 9);
LABEL_67:
      v8 = v3;
      goto LABEL_68;
    }

    return 1;
  }

LABEL_14:
  v9 = a1 + 18;
  v10 = a1[13];
  v11 = a1[22];
  if (v10 < a1[4])
  {
    if (v11 >= v10)
    {
      sub_18397814C(a1, (a1 + 9));
      if (v3[22] >= v3[13])
      {
        goto LABEL_33;
      }

      a1 = v3 + 9;
    }

    v15 = (v3 + 18);
    goto LABEL_32;
  }

  if (v11 < v10)
  {
    sub_18397814C((a1 + 9), (a1 + 18));
    if (v3[13] < v3[4])
    {
      v15 = (v3 + 9);
      a1 = v3;
LABEL_32:
      sub_18397814C(a1, v15);
    }
  }

LABEL_33:
  v16 = v3 + 27;
  if (v3 + 27 == a2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    if (v16[4] < v9[4])
    {
      v20 = v16 + 1;
      v21 = *(v16 + 1);
      v44 = *v16;
      v45 = v21;
      v46 = *(v16 + 2);
      if (v46)
      {
        v21[2] = &v45;
        *v16 = v20;
        *v20 = 0;
        v16[2] = 0.0;
      }

      else
      {
        v44 = &v45;
      }

      v22 = v16 + 6;
      v23 = *(v16 + 6);
      v47 = *(v16 + 3);
      v48 = *(v16 + 5);
      v49 = v23;
      v50 = *(v16 + 7);
      if (v50)
      {
        v23[2] = &v49;
        *(v16 + 5) = v22;
        *v22 = 0;
        v16[7] = 0.0;
      }

      else
      {
        v48 = &v49;
      }

      v51 = *(v16 + 8);
      v24 = v17;
      do
      {
        v26 = (v3 + v24);
        v27 = (v3 + v24 + 224);
        sub_18368A374(v3 + v24 + 216, *v27);
        v26[27] = v26[18];
        v28 = (v3 + v24 + 152);
        v29 = *v28;
        *v27 = *v28;
        v30 = *(v3 + v24 + 160);
        v26[29] = v30;
        if (v30)
        {
          v29[2] = v27;
          v26[18] = v28;
          *v28 = 0;
          v26[20] = 0;
        }

        else
        {
          v26[27] = v27;
        }

        v31 = (v3 + v24);
        *(v3 + v24 + 240) = *(v3 + v24 + 168);
        v32 = (v3 + v24 + 264);
        sub_18368D56C(v3 + v24 + 256, *v32);
        v33 = (v3 + v24 + 192);
        v34 = *v33;
        v31[32] = v31[23];
        v31[33] = v34;
        v35 = *(v3 + v24 + 200);
        v31[34] = v35;
        if (v35)
        {
          *(v34 + 16) = v32;
          v31[23] = v33;
          *v33 = 0;
          v31[25] = 0;
          v25 = (v3 + v24);
          *(v3 + v24 + 280) = *(v3 + v24 + 208);
          if (v24 == -144)
          {
LABEL_53:
            v36 = v3;
            goto LABEL_55;
          }
        }

        else
        {
          v31[32] = v32;
          v25 = (v3 + v24);
          *(v3 + v24 + 280) = *(v3 + v24 + 208);
          if (v24 == -144)
          {
            goto LABEL_53;
          }
        }

        v24 -= 72;
      }

      while (*(&v47 + 1) < v25[13]);
      v36 = (v3 + v24 + 216);
LABEL_55:
      v38 = *(v25 + 19);
      v37 = (v25 + 19);
      sub_18368A374(v36, v38);
      v39 = v45;
      *v36 = v44;
      *v37 = v39;
      v40 = v46;
      *(v36 + 2) = v46;
      if (v40)
      {
        v39[2] = v37;
        v44 = &v45;
        v45 = 0;
        v46 = 0;
      }

      else
      {
        *v36 = v37;
      }

      v41 = v37 + 40;
      *(v37 + 1) = v47;
      sub_18368D56C((v37 + 32), *(v37 + 5));
      v19 = v49;
      *(v37 + 4) = v48;
      *(v37 + 5) = v19;
      v42 = v50;
      *(v36 + 7) = v50;
      if (v42)
      {
        v19[2] = v41;
        v19 = 0;
        v48 = &v49;
        v49 = 0;
        v50 = 0;
      }

      else
      {
        *(v37 + 4) = v41;
      }

      *(v36 + 8) = v51;
      ++v18;
      sub_18368D56C(&v48, v19);
      sub_18368A374(&v44, v45);
      if (v18 == 8)
      {
        return v16 + 9 == a2;
      }
    }

    v9 = v16;
    v17 += 72;
    v16 += 9;
    if (v16 == a2)
    {
      return 1;
    }
  }
}

void sub_18397814C(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v21 = *a1;
  v22 = v4;
  v23 = *(a1 + 16);
  if (v23)
  {
    v4[2] = &v22;
    v4 = 0;
    *a1 = v5;
    *v5 = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v21 = &v22;
  }

  v7 = (a1 + 40);
  v6 = *(a1 + 40);
  v24 = *(a1 + 24);
  v9 = (a1 + 48);
  v8 = *(a1 + 48);
  v25 = v6;
  v26 = v8;
  v27 = *(a1 + 56);
  if (v27)
  {
    v8[2] = &v26;
    *v7 = v9;
    *v9 = 0;
    *(a1 + 56) = 0;
  }

  else
  {
    v25 = &v26;
  }

  v28 = *(a1 + 64);
  sub_18368A374(a1, v4);
  v11 = (a2 + 8);
  v10 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v10;
  v12 = *(a2 + 16);
  *(a1 + 16) = v12;
  if (v12)
  {
    *(v10 + 16) = v5;
    *a2 = v11;
    *v11 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = v5;
  }

  *(a1 + 24) = *(a2 + 24);
  sub_18368D56C(a1 + 40, *(a1 + 48));
  v13 = (a2 + 40);
  v15 = (a2 + 48);
  v14 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v14;
  v16 = *(a2 + 56);
  *(a1 + 56) = v16;
  if (v16)
  {
    *(v14 + 16) = v9;
    *v13 = v15;
    *v15 = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    *v7 = v9;
  }

  *(a1 + 64) = *(a2 + 64);
  sub_18368A374(a2, *(a2 + 8));
  v17 = v22;
  *a2 = v21;
  *(a2 + 8) = v17;
  v18 = v23;
  *(a2 + 16) = v23;
  if (v18)
  {
    v17[2] = v11;
    v21 = &v22;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    *a2 = v11;
  }

  *(a2 + 24) = v24;
  sub_18368D56C(a2 + 40, *(a2 + 48));
  v19 = v26;
  *(a2 + 40) = v25;
  *(a2 + 48) = v19;
  v20 = v27;
  *(a2 + 56) = v27;
  if (v20)
  {
    v19[2] = v15;
    v19 = 0;
    v25 = &v26;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    *v13 = v15;
  }

  *(a2 + 64) = v28;
  sub_18368D56C(&v25, v19);
  sub_18368A374(&v21, v22);
}

void sub_18397833C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v8 = a2;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *a1 = a3;
  objc_storeStrong((a1 + 40), a2);
  *(a1 + 88) = sub_183696B2C(v8, (a1 + 96), 80.0);
  objc_msgSend_bounds(v8, v9, v10, v11, v12, v13);
  *(a1 + 120) = v19;
  *(a1 + 128) = v20;
  *(a1 + 136) = v21;
  *(a1 + 144) = v22;
  v23 = *(a1 + 96);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 104) - v23) >> 3) <= 5)
  {
    objc_msgSend_bounds(*(a1 + 40), v14, v15, v16, v17, v18);
    operator new();
  }

  v70 = a4;
  v24 = 0;
  v25 = 0;
  v74 = &v74;
  v75 = &v74;
  v76 = 0;
  v71 = &v71;
  v72 = &v71;
  v73 = 0;
  v26 = v20 + v22 * 0.5;
  v27 = v19 + v21 * 0.5;
  v28 = v27;
  v29 = v26;
  do
  {
    v32 = *(v23 + v25);
    if (v32 < v28 && (v33 = *(v23 + v25 + 40), v33 >= v28) || v32 > v28 && (v33 = *(v23 + v25 + 40), v33 <= v28))
    {
      if (vabdd_f64(v32, v28) < vabdd_f64(v33, v28))
      {
        operator new();
      }

      operator new();
    }

    v34 = *(v23 + v25 + 8);
    if (v34 < v29 && (v35 = *(v23 + v25 + 48), v35 >= v29) || v34 > v29 && (v35 = *(v23 + v25 + 48), v35 <= v29))
    {
      if (vabdd_f64(v34, v29) < vabdd_f64(v35, v29))
      {
        operator new();
      }

      operator new();
    }

    v30 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 104) - v23) >> 3);
    v25 += 40;
    v31 = v24 + 2;
    ++v24;
  }

  while (v30 > v31);
  v36 = v75;
  v37 = *(a1 + 136) * *(a1 + 136) + *(a1 + 144) * *(a1 + 144);
  for (i = -1; v36 != &v74; v36 = v36[1])
  {
    v39 = (v23 + 40 * *(v36 + 4));
    v40 = *v39 - v28;
    v41 = v39[1] - v29;
    v42 = (v41 * v41) + (v40 * v40);
    if (v42 < v37)
    {
      v37 = v42;
      i = *(v36 + 4);
    }
  }

  for (j = v72; j != &v71; j = j[1])
  {
    v44 = (v23 + 40 * *(j + 4));
    v45 = *v44 - v28;
    v46 = v44[1] - v29;
    v47 = (v46 * v46) + (v45 * v45);
    if (v47 < v37)
    {
      v37 = v47;
      i = *(j + 4);
    }
  }

  if (i < 1)
  {
    *(a1 + 156) = 1;
  }

  else
  {
    if (v30 - 2 < i)
    {
      i = v30 - 2;
    }

    *(a1 + 156) = i;
  }

  v49 = *(a1 + 96);
  v48 = *(a1 + 104);
  v50 = 0xCCCCCCCCCCCCCCCDLL * ((v48 - v49) >> 3);
  *(a1 + 152) = v50 - 1;
  *(a1 + 160) = 0;
  *(a1 + 24) = 0;
  *(a1 + 64) = 0;
  if (!v70)
  {
    sub_18397A3E4(a1, v14, v15, v16, v17, v18);
  }

  if (v48 != v49)
  {
    if (v50 < 0x666666666666667)
    {
      operator new();
    }

    sub_18369761C();
  }

  if (*(a1 + 156) <= 2)
  {
    *(a1 + 156) = (-858993459 * ((*(a1 + 104) - *(a1 + 96)) >> 3)) / 2;
  }

  sub_183978C28(a1, 1);
  sub_183978C28(a1, 0);
  v52 = *(a1 + 96);
  v51 = *(a1 + 104);
  if (0xCCCCCCCCCCCCCCCDLL * ((v51 - v52) >> 3) >= 6)
  {
    if (*(a1 + 152) - *(a1 + 160) > 1)
    {
      goto LABEL_43;
    }
  }

  else
  {
    sub_18397B8E8((a1 + 96), 0, 0, 0);
    *(a1 + 64) = 0;
    *(a1 + 24) = 0;
    v52 = *(a1 + 96);
    v51 = *(a1 + 104);
    v53 = -858993459 * ((v51 - v52) >> 3) - 1;
    *(a1 + 152) = v53;
    *(a1 + 160) = 0;
    if (v53 > 1)
    {
LABEL_43:
      v54 = objc_alloc_init(CHDrawing);
      v55 = *(a1 + 80);
      *(a1 + 80) = v54;

      v61 = *(a1 + 160);
      if (v61 <= *(a1 + 152))
      {
        v62 = 40 * v61;
        do
        {
          v63 = *(a1 + 96);
          if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 104) - v63) >> 3) <= v61)
          {
            sub_18397BA7C();
          }

          objc_msgSend_addPoint_(*(a1 + 80), v56, v57, v58, v59, v60, *(v63 + v62), *(v63 + v62 + 8));
          v62 += 40;
        }

        while (v61++ < *(a1 + 152));
      }

      objc_storeStrong((a1 + 40), *(a1 + 80));
      sub_18397A3E4(a1, v65, v66, v67, v68, v69);
    }
  }

  *(a1 + 152) = -858993459 * ((v51 - v52) >> 3) - 1;
  goto LABEL_43;
}

void sub_183978A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v13 = *a9;
  if (*a9)
  {
    *(v10 + 176) = v13;
    operator delete(v13);
    v14 = *v11;
    if (!*v11)
    {
LABEL_4:

      _Unwind_Resume(a1);
    }
  }

  else
  {
    v14 = *v11;
    if (!*v11)
    {
      goto LABEL_4;
    }
  }

  *(v10 + 104) = v14;
  operator delete(v14);
  goto LABEL_4;
}

void *sub_183978B6C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_18369761C();
  }

  return result;
}

void sub_183978C0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_183978C28(uint64_t a1, int a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 104) - *(a1 + 96)) >> 3);
  if (v2 >= 6)
  {
    v3 = *(a1 + 156);
    if (v3 >= 3 && v2 - 3 >= v3)
    {
      v5 = 0;
      v6 = v2 - v3;
      if (v6 <= v3)
      {
        v6 = *(a1 + 156);
      }

      v16 = v6;
      while (1)
      {
        v7 = *(a1 + 156);
        v8 = v5 >= v7 - 3;
        if (a2)
        {
          v9 = v7 + v5;
          v8 = -3 - 0x3333333333333333 * ((*(a1 + 104) - *(a1 + 96)) >> 3) <= (v7 + v5);
          if (((v7 + v5) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = v5;
          if ((v5 & 0x80000000) == 0)
          {
LABEL_15:
            if (!v8)
            {
              v10 = *(a1 + 96);
              v11 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 104) - v10) >> 3);
              v12 = v9 + 3;
              if (v11 <= v9 || v11 <= v12)
              {
                sub_18397BA7C();
              }

              v14 = vcvt_f32_f64(vsubq_f64(*(v10 + 40 * v12), *(v10 + 40 * v9)));
              v15 = vmul_f32(v14, v14);
              *v15.i32 = *&v15.i32[1] + (v14.f32[0] * v14.f32[0]);
              if (*v15.i32 > 0.0)
              {
                v14 = vdiv_f32(v14, vdup_lane_s32(v15, 0));
              }

              atan2f(v14.f32[1], v14.f32[0]);
              operator new();
            }
          }
        }

        if (v16 == ++v5)
        {
          if (a2)
          {
            *(a1 + 152) = -858993459 * ((*(a1 + 104) - *(a1 + 96)) >> 3) - 1;
            *(a1 + 64) = 0;
          }

          else
          {
            *(a1 + 160) = 0;
            *(a1 + 24) = 0;
          }

          return;
        }
      }
    }
  }
}

void sub_18397A288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
    if (!v30)
    {
      goto LABEL_5;
    }
  }

  else if (!v30)
  {
LABEL_5:
    if (!a13)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  operator delete(v30);
  if (!a13)
  {
LABEL_6:
    if (!a20)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a13);
  if (!a20)
  {
LABEL_7:
    if (!a14)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a20);
  if (!a14)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_12:
  operator delete(a14);
  _Unwind_Resume(exception_object);
}

void sub_18397A3E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  *(a1 + 200) = -1082130432;
  if (!objc_msgSend_strokeCount(*(a1 + 40), a2, a3, a4, a5, a6) || !objc_msgSend_pointCountForStrokeIndex_(*(a1 + 40), v7, 0, v8, v9, v10))
  {
    operator new();
  }

  v15 = objc_msgSend_pointCountForStrokeIndex_(*(a1 + 40), v11, 0, v12, v13, v14);
  v21 = v15;
  if (v15 <= 9)
  {
    objc_msgSend_bounds(*(a1 + 40), v16, v17, v18, v19, v20);
    operator new();
  }

  *v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  *v33 = 0u;
  *v30 = 0u;
  *v31 = 0u;
  v22 = ((v15 & 0x7FFFFFFF) << 32) - 0x100000000;
  v23 = v22 >> 32;
  if ((v15 & 0x7FFFFFFF) << 32 == 0x100000000)
  {
    v24 = 0;
    v26 = 1;
    v27 = v22 >> 32;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_183699848(v30, v22 >> 32);
    v24 = v31[1];
    v25 = (v32 - v31[1]) >> 2;
    v26 = v23 >= v25;
    v27 = v23 - v25;
    if (v23 > v25)
    {
LABEL_8:
      sub_183699848(&v31[1], v27);
      goto LABEL_12;
    }
  }

  if (!v26)
  {
    *&v32 = &v24[4 * v23];
  }

LABEL_12:
  v28 = (v33[1] - v33[0]) >> 2;
  if (v23 <= v28)
  {
    if (v23 < v28)
    {
      v33[1] = v33[0] + 4 * v23;
    }
  }

  else
  {
    sub_183699848(v33, v23 - v28);
  }

  v29 = (v35 - v34[1]) >> 2;
  if (v23 <= v29)
  {
    if (v23 < v29)
    {
      *&v35 = v34[1] + 4 * v23;
    }
  }

  else
  {
    sub_183699848(&v34[1], v23 - v29);
  }

  if ((v21 & 0x7FFFFFFF) != 0)
  {
    if ((v21 & 0x7FFFFFFF) << 32 != 0x100000000)
    {
      operator new();
    }
  }

  else if ((v21 & 0x7FFFFFFF) << 32 != 0x100000000)
  {
    sub_18368964C();
  }

  operator new();
}

void sub_18397B5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1865E5EC0](v43, 0x10A1C4053507AA1);
  if (a28)
  {
    operator delete(a28);
  }

  if (v44)
  {
    operator delete(v44);
  }

  operator delete(a13);
  sub_18397B884(&a31);
  sub_18397B884(&a43);
  _Unwind_Resume(a1);
}

uint64_t sub_18397B734(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  *(a1 + 64) = 0;
  *a1 = &unk_1EF1BC248;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v5 = *a2;
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 16) = v5;
  v6 = *a3;
  *(a1 + 56) = *(a3 + 4);
  *(a1 + 40) = v6;
  if (a1 + 64 != a4)
  {
    sub_18374AA38((a1 + 64), *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 4);
  }

  *(a1 + 8) = 1109917696;
  return a1;
}

void sub_18397B7CC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_18397B7E8(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  return result;
}

void sub_18397B868(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_18397B884(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

char *sub_18397B8E8(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_18369761C();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 3) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 3);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 3);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 3);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_18397D2B0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x3C0], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18397D2F0(double a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_1EA84D280;
  v9 = off_1EA84D280;
  if (!off_1EA84D280)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_18397D548;
    v5[3] = &unk_1E6DDD2E0;
    v5[4] = &v6;
    sub_18397D548(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2(@"Helvetica-Bold", 0, a1);
}

void sub_18397D3EC(uint64_t a1, double a2, double a3)
{
  v4 = vaddq_f64(*(a1 + 96), vmlaq_n_f64(vmulq_n_f64(*(a1 + 80), a3), *(a1 + 64), a2));
  v5 = *(*(a1 + 40) + 8);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v26 = v4;
    MaxX = CGRectGetMaxX(*(v5 + 32));
    MaxY = CGRectGetMaxY(*(*(*(a1 + 40) + 8) + 32));
    v4 = v26;
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 32);
    if (v9 >= v26.f64[0])
    {
      v9 = v26.f64[0];
    }

    *(v8 + 32) = v9;
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    if (v11 >= v26.f64[1])
    {
      v11 = v26.f64[1];
    }

    *(v10 + 40) = v11;
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 32);
    v14 = MaxX - v13;
    v15 = v26.f64[0] - v13;
    if (v14 > v15)
    {
      v15 = v14;
    }

    *(v12 + 48) = v15;
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    v18 = MaxY - v17;
    v19 = v26.f64[1] - v17;
    if (v18 <= v19)
    {
      v18 = v19;
    }

    *(v16 + 56) = v18;
    *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) + sqrt((v26.f64[1] - *(*(*(a1 + 48) + 8) + 40)) * (v26.f64[1] - *(*(*(a1 + 48) + 8) + 40)) + (v26.f64[0] - *(*(*(a1 + 48) + 8) + 32)) * (v26.f64[0] - *(*(*(a1 + 48) + 8) + 32)));
  }

  else
  {
    __asm
    {
      FMOV            V0.2D, #-0.5
      FMOV            V1.2D, #1.0
    }

    *(v5 + 32) = vaddq_f64(v4, _Q0);
    *(v5 + 48) = _Q1;
  }

  *(*(*(a1 + 48) + 8) + 32) = v4;
  ++*(*(*(a1 + 32) + 8) + 24);
}

void *sub_18397D548(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D288)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18397D690;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DE0778;
    v8 = 0;
    qword_1EA84D288 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D288;
    if (qword_1EA84D288)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D288;
LABEL_5:
  result = dlsym(v2, "CTFontCreateWithName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D280 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_18397D690()
{
  result = _sl_dlopen();
  qword_1EA84D288 = result;
  return result;
}

void *sub_18397D704(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D288)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18397D690;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DE0778;
    v8 = 0;
    qword_1EA84D288 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D288;
    if (qword_1EA84D288)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D288;
LABEL_5:
  result = dlsym(v2, "CTParagraphStyleCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D290 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18397D84C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D288)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18397D690;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DE0778;
    v8 = 0;
    qword_1EA84D288 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D288;
    if (qword_1EA84D288)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D288;
LABEL_5:
  result = dlsym(v2, "kCTFontAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA84D298 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18397D994(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D288)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18397D690;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DE0778;
    v8 = 0;
    qword_1EA84D288 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D288;
    if (qword_1EA84D288)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D288;
LABEL_5:
  result = dlsym(v2, "kCTForegroundColorAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA84D2A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18397DADC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D288)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18397D690;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DE0778;
    v8 = 0;
    qword_1EA84D288 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D288;
    if (qword_1EA84D288)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D288;
LABEL_5:
  result = dlsym(v2, "kCTParagraphStyleAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA84D2A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18397DC24(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D288)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18397D690;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DE0778;
    v8 = 0;
    qword_1EA84D288 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D288;
    if (qword_1EA84D288)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D288;
LABEL_5:
  result = dlsym(v2, "CTFramesetterCreateWithAttributedString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D2B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18397DD6C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D288)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18397D690;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DE0778;
    v8 = 0;
    qword_1EA84D288 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D288;
    if (qword_1EA84D288)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D288;
LABEL_5:
  result = dlsym(v2, "CTFramesetterCreateFrame");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D2B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18397DEB4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D288)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18397D690;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DE0778;
    v8 = 0;
    qword_1EA84D288 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D288;
    if (qword_1EA84D288)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D288;
LABEL_5:
  result = dlsym(v2, "CTFrameDraw");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D2C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_18397DFFC(uint64_t a1)
{
  v2 = **(a1 + 88);
  if (v2)
  {
    MEMORY[0x1865E5E90](v2, 0x1000C8000313F17);
  }

  v3 = **(a1 + 104);
  if (v3)
  {
    MEMORY[0x1865E5E90](v3, 0x1000C8077774924);
  }

  v4 = **(a1 + 96);
  if (v4)
  {
    MEMORY[0x1865E5E90](v4, 0x1000C8000313F17);
  }

  v5 = *(*(a1 + 88) + 8);
  if (v5)
  {
    MEMORY[0x1865E5E90](v5, 0x1000C8000313F17);
  }

  v6 = *(*(a1 + 104) + 8);
  if (v6)
  {
    MEMORY[0x1865E5E90](v6, 0x1000C8077774924);
  }

  v7 = *(*(a1 + 96) + 8);
  if (v7)
  {
    MEMORY[0x1865E5E90](v7, 0x1000C8000313F17);
  }

  v8 = *(*(a1 + 88) + 16);
  if (v8)
  {
    MEMORY[0x1865E5E90](v8, 0x1000C8000313F17);
  }

  v9 = *(*(a1 + 104) + 16);
  if (v9)
  {
    MEMORY[0x1865E5E90](v9, 0x1000C8077774924);
  }

  v10 = *(*(a1 + 96) + 16);
  if (v10)
  {
    MEMORY[0x1865E5E90](v10, 0x1000C8000313F17);
  }

  v11 = *(*(a1 + 88) + 24);
  if (v11)
  {
    MEMORY[0x1865E5E90](v11, 0x1000C8000313F17);
  }

  v12 = *(*(a1 + 104) + 24);
  if (v12)
  {
    MEMORY[0x1865E5E90](v12, 0x1000C8077774924);
  }

  v13 = *(*(a1 + 96) + 24);
  if (v13)
  {
    MEMORY[0x1865E5E90](v13, 0x1000C8000313F17);
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    MEMORY[0x1865E5E90](v14, 0x80C80B8603338);
  }

  v15 = *(a1 + 104);
  if (v15)
  {
    MEMORY[0x1865E5E90](v15, 0x10C80436913F5);
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    MEMORY[0x1865E5E90](v16, 0x80C80B8603338);
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    MEMORY[0x1865E5E90](v17, 0x1000C8000313F17);
  }

  v18 = *(a1 + 600);
  if (v18)
  {
    MEMORY[0x1865E5E90](v18, 0x1000C8000313F17);
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    MEMORY[0x1865E5E90](v19, 0x1000C8000313F17);
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    MEMORY[0x1865E5E90](v20, 0x1000C8000313F17);
  }

  v21 = *(a1 + 224);
  if (v21)
  {
    MEMORY[0x1865E5E90](v21, 0x1000C8000313F17);
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    MEMORY[0x1865E5E90](v22, 0x1000C8000313F17);
  }

  return a1;
}

void sub_18397E1EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3;
  *(a1 + 8) = 0;
  *(a1 + 252) = xmmword_1839DA7C0;
  *a1 = a5;
  objc_storeStrong((a1 + 8), a3);
  *(a1 + 16) = objc_msgSend_pointCountForStrokeIndex_(*(a1 + 8), v8, 0, v9, v10, v11);
  operator new[]();
}

void sub_18397F9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, id *a14)
{
  operator delete(v14);

  _Unwind_Resume(a1);
}

double sub_18397FA58(uint64_t a1)
{
  cblas_dgemm_NEWLAPACK();
  *(a1 + 400) = *(a1 + 512);
  *(a1 + 416) = *(a1 + 528);
  *(a1 + 424) = *(a1 + 544);
  *(a1 + 440) = *(a1 + 560);
  *(a1 + 448) = *(a1 + 576);
  *(a1 + 464) = *(a1 + 592);
  dgetrf_NEWLAPACK();
  dgetri_NEWLAPACK();
  cblas_dgemm_NEWLAPACK();
  cblas_dgemm_NEWLAPACK();
  cblas_dgemm_NEWLAPACK();
  dgetrf_NEWLAPACK();
  dgetri_NEWLAPACK();
  cblas_dgemm_NEWLAPACK();
  cblas_dgemm_NEWLAPACK();
  cblas_dgemm_NEWLAPACK();
  return *(a1 + 128);
}

void sub_1839807CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1839807E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_183980D4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v13 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFA8], v9, v6, v10, v11, v12);
  v19 = objc_msgSend_firstObject(v6, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_lastObject(v6, v20, v21, v22, v23, v24);
  v101 = *(MEMORY[0x1E695EFF8] + 8);
  v102 = *MEMORY[0x1E695EFF8];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  if (objc_msgSend_count(v6, v30, v31, v32, v33, v34))
  {
    v39 = objc_msgSend_objectAtIndexedSubscript_(v6, v35, 0, v36, v37, v38);
    v44 = objc_msgSend_strokeIdentifierFromData_(v7, v40, v39, v41, v42, v43);
    v49 = objc_msgSend_strokeForIdentifier_(v7, v45, v44, v46, v47, v48);
    objc_msgSend_bounds(v49, v50, v51, v52, v53, v54);
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v104.origin.x = x;
    v104.origin.y = y;
    v104.size.width = width;
    v104.size.height = height;
    v101 = v58;
    v102 = v56;
    v108.origin.x = v56;
    v108.origin.y = v58;
    v108.size.width = v60;
    v108.size.height = v62;
    v105 = CGRectUnion(v104, v108);
    x = v105.origin.x;
    y = v105.origin.y;
    width = v105.size.width;
    height = v105.size.height;

    for (i = 1; i < objc_msgSend_count(v6, v63, v64, v65, v66, v67, *&v101, *&v102); ++i)
    {
      v73 = objc_msgSend_objectAtIndexedSubscript_(v6, v69, i, v70, v71, v72);
      v78 = objc_msgSend_strokeIdentifierFromData_(v7, v74, v73, v75, v76, v77);
      v83 = objc_msgSend_strokeForIdentifier_(v7, v79, v78, v80, v81, v82);
      objc_msgSend_bounds(v83, v84, v85, v86, v87, v88);
      v90 = v89;
      v92 = v91;
      v94 = v93;
      v96 = v95;

      v106.origin.x = x;
      v106.origin.y = y;
      v106.size.width = width;
      v106.size.height = height;
      v109.origin.x = v90;
      v109.origin.y = v92;
      v109.size.width = v94;
      v109.size.height = v96;
      v107 = CGRectUnion(v106, v109);
      x = v107.origin.x;
      y = v107.origin.y;
      width = v107.size.width;
      height = v107.size.height;
    }
  }

  v97 = [CHStrokeGroup alloc];
  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v97, v98, v13, v19, v25, 0, v8, x, y, width, height, 0.0, v102, v101);

  return StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin;
}

void sub_1839811B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_1839759C0(&a11);
  *(v11 + 8) = v12;
  sub_183975B1C(&a9);
  _Unwind_Resume(a1);
}

void sub_18398128C()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.CHDocumentLayoutAnalysisModel.queue", v0);
  v2 = qword_1EA84D2C8;
  qword_1EA84D2C8 = v1;

  v3 = objc_opt_new();
  v4 = qword_1EA84D2D0;
  qword_1EA84D2D0 = v3;
}

id sub_183981308(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v31 = 0;
    goto LABEL_22;
  }

  v5 = v3;
  v11 = objc_msgSend_UTF8String(v5, v6, v7, v8, v9, v10);
  sub_1837A3290(v11, 0, __s);
  v12 = strlen(__s);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v16 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v50 = v12;
  if (v12)
  {
    memcpy(&__dst, __s, v12);
  }

  *(&__dst + v16) = 0;
  if (v50 >= 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v13, &__dst, 4, v14, v15);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v13, __dst, 4, v14, v15);
  }
  v17 = ;
  v22 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v18, v17, v19, v20, v21);
  v23 = objc_alloc(MEMORY[0x1E695FEB0]);
  v28 = objc_msgSend_initWithComputeUnits_(v23, v24, 0, v25, v26, v27);
  v48 = 0;
  v31 = objc_msgSend_modelWithContentsOfURL_configuration_error_(CHSingletonMLModel, v29, v22, v28, &v48, v30);
  v32 = v48;
  if (!v31)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v33 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_msgSend_localizedDescription(v32, v34, v35, v36, v37, v38);
      *buf = 138412546;
      v52 = v4;
      v53 = 2112;
      v54 = v39;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_ERROR, "Error loading model %@: %@", buf, 0x16u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v40 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v40 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_19;
      }
    }

    v46 = objc_msgSend_localizedDescription(v32, v41, v42, v43, v44, v45);
    *buf = 138412546;
    v52 = v4;
    v53 = 2112;
    v54 = v46;
    _os_log_impl(&dword_18366B000, v40, OS_LOG_TYPE_FAULT, "Error loading model %@: %@", buf, 0x16u);

    goto LABEL_19;
  }

LABEL_20:

  if (v50 < 0)
  {
    operator delete(__dst);
  }

LABEL_22:

  return v31;
}

void sub_18398163C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1839822FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_183984FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void **a55)
{
  *(v57 - 216) = v56;
  sub_18369F2FC(&a55);
  sub_18369D068(&a45);

  sub_18369F0F0(&a32);
  sub_183985710(&a39);
  sub_1837280DC(&a42);

  _Unwind_Resume(a1);
}

void sub_183985468(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (*&v2 <= a2)
      {
        v4 = a2 % *&v2;
      }
    }

    else
    {
      v4 = (*&v2 - 1) & a2;
    }

    v5 = *a1;
    v6 = *(*a1 + 8 * v4);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        v8 = *&v2 - 1;
        if (v3.u32[0] < 2uLL)
        {
          while (1)
          {
            v9 = v7[1];
            if (v9 == a2)
            {
              if (v7[2] == a2)
              {
                goto LABEL_22;
              }
            }

            else if ((v9 & v8) != v4)
            {
              return;
            }

            v7 = *v7;
            if (!v7)
            {
              return;
            }
          }
        }

        do
        {
          v10 = v7[1];
          if (v10 == a2)
          {
            if (v7[2] == a2)
            {
LABEL_22:
              if (v3.u32[0] > 1uLL)
              {
                if (*&v2 <= a2)
                {
                  a2 %= *&v2;
                }
              }

              else
              {
                a2 &= v8;
              }

              v11 = *(v5 + 8 * a2);
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11 != v7);
              if (v12 == a1 + 2)
              {
                goto LABEL_39;
              }

              v13 = v12[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v13 >= *&v2)
                {
                  v13 %= *&v2;
                }
              }

              else
              {
                v13 &= v8;
              }

              if (v13 != a2)
              {
LABEL_39:
                if (!*v7)
                {
                  goto LABEL_40;
                }

                v14 = *(*v7 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v14 >= *&v2)
                  {
                    v14 %= *&v2;
                  }
                }

                else
                {
                  v14 &= v8;
                }

                if (v14 != a2)
                {
LABEL_40:
                  *(v5 + 8 * a2) = 0;
                }
              }

              v15 = *v7;
              if (*v7)
              {
                v16 = *(v15 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v16 >= *&v2)
                  {
                    v16 %= *&v2;
                  }
                }

                else
                {
                  v16 &= v8;
                }

                if (v16 != a2)
                {
                  *(v5 + 8 * v16) = v12;
                  v15 = *v7;
                }
              }

              *v12 = v15;
              *v7 = 0;
              --a1[3];
              operator delete(v7);
              return;
            }
          }

          else
          {
            if (v10 >= *&v2)
            {
              v10 %= *&v2;
            }

            if (v10 != v4)
            {
              return;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }
}

void **sub_183985710(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 4);
        v5 -= 32;
        v6 = v7;
        if (v7)
        {
          *(v3 - 3) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_183985788(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 32);
        v4 -= 32;
        v5 = v6;
        if (v6)
        {
          *(v2 - 24) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t sub_1839857F8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 32;
        v4 = *(v2 - 32);
        *(a1 + 16) = v2 - 32;
        if (!v4)
        {
          break;
        }

        *(v2 - 24) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 32;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_183985868(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v77 = a3;
  (*(*a1 + 48))(&__p, a1, a2);
  v6 = __p;
  v5 = v83;
  v7 = (*(*a1 + 24))(a1, a2);
  v9 = __p;
  v8 = v83;
  (*(*a1 + 32))(&v80, a1, a2);
  v14 = (v5 - v6) >> 3;
  v15 = v8 - v9;
  if (v14 > v7)
  {
    v17 = __p;
    v16 = v83;
    v18 = (v83 - __p) >> 3;
    v10 = (v7 - v18);
    if (v7 <= v18)
    {
      if (v7 < v18)
      {
        v16 = __p + 8 * v7;
        v83 = v16;
      }
    }

    else
    {
      sub_18370D4C0(&__p, v10);
      v17 = __p;
      v16 = v83;
    }

    v14 = (v16 - v17) >> 3;
    v20 = v14;
    v22 = *(a2 + 48);
    v21 = *(a2 + 56);
    v78 = v22;
    v79 = v21;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v14 < v7)
  {
    v78 = (*(*a1 + 40))(a1, a2);
    v19 = (v83 - __p) >> 3;
    v10 = (v7 - v19);
    if (v7 == v19)
    {
LABEL_41:
      v15 = v83 - __p;
      goto LABEL_42;
    }

    if (v7 > v19)
    {
      sub_1836ECEA0(&__p, v10, &v78);
      goto LABEL_41;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v75 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = v19;
      *&buf[12] = 2048;
      *&buf[14] = v7;
      _os_log_impl(&dword_18366B000, v75, OS_LOG_TYPE_ERROR, "Synthesizer: Cannot pad sequence of length %zu that's longer than target length %zu.", buf, 0x16u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v76 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
LABEL_40:

        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v76 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_40;
      }
    }

    *buf = 134218240;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&dword_18366B000, v76, OS_LOG_TYPE_FAULT, "Synthesizer: Cannot pad sequence of length %zu that's longer than target length %zu.", buf, 0x16u);
    goto LABEL_40;
  }

LABEL_42:
  v20 = v15 >> 3;
  v22 = *(a2 + 48);
  v21 = *(a2 + 56);
  v78 = v22;
  v79 = v21;
  if (v21)
  {
LABEL_11:
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_12:
  v23 = v80;
  v85[0] = &unk_1EF1EDD50;
  v24 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v10, v20, v11, v12, v13);
  v85[1] = v24;
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v25, v85, 2, v26, v27);
  v29 = objc_alloc(MEMORY[0x1E695FED0]);
  v32 = objc_msgSend_initWithShape_dataType_error_(v29, v30, v28, 131104, 0, v31);
  v38 = objc_msgSend_count(v32, v33, v34, v35, v36, v37);
  if (v38 != (v83 - __p) >> 3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v44 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_msgSend_count(v32, v45, v46, v47, v48, v49);
      *buf = 134218240;
      *&buf[4] = v50;
      *&buf[12] = 2048;
      *&buf[14] = (v83 - __p) >> 3;
      _os_log_impl(&dword_18366B000, v44, OS_LOG_TYPE_ERROR, "Size mismatch! shape elements: %ld, vector elements: %zu", buf, 0x16u);
    }
  }

  v51 = objc_msgSend_count(v32, v39, v40, v41, v42, v43);
  if (v51 != (v83 - __p) >> 3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v56 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      v62 = objc_msgSend_count(v32, v57, v58, v59, v60, v61);
      *buf = 134218240;
      *&buf[4] = v62;
      *&buf[12] = 2048;
      *&buf[14] = (v83 - __p) >> 3;
      _os_log_impl(&dword_18366B000, v56, OS_LOG_TYPE_FAULT, "Size mismatch! shape elements: %ld, vector elements: %zu", buf, 0x16u);
    }
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_183985F80;
  v87 = &unk_1E6DE0790;
  p_p = &__p;
  objc_msgSend_getBytesWithHandler_(v32, v52, buf, v53, v54, v55);

  sub_18384B030(v22, v23, v32);
  if (v14 <= 1)
  {
    v67 = 1;
  }

  else
  {
    v67 = v14;
  }

  v68 = v81;
  v69 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v63, v67, v64, v65, v66);
  v84 = v69;
  v73 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v70, &v84, 1, v71, v72);
  v74 = sub_1836E823C(v73, &unk_1EF1EC8B0);
  sub_18384B030(v22, v68, v74);

  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }
}

void sub_183985EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11, uint64_t a12, void *a13, void *a14, void *__p, uint64_t a16)
{
  sub_18369D8F8(&a11);

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_183985F80(uint64_t result, int32x4_t *a2)
{
  v2 = *(result + 32);
  v4 = *v2;
  v3 = v2[1];
  if (v4 != v3)
  {
    v5 = v3 - v4 - 8;
    if (v5 <= 0x37)
    {
      v6 = a2;
      v7 = v4;
      do
      {
LABEL_7:
        v16 = v7->i64[0];
        v7 = (v7 + 8);
        v6->i32[0] = v16;
        v6 = (v6 + 4);
      }

      while (v7 != v3);
      return result;
    }

    v8 = (v5 >> 3) + 1;
    v6 = (a2 + 4 * (v8 & 0x3FFFFFFFFFFFFFF8));
    v7 = (v4 + 8 * (v8 & 0x3FFFFFFFFFFFFFF8));
    v9 = v4 + 2;
    v10 = a2 + 1;
    v11 = v8 & 0x3FFFFFFFFFFFFFF8;
    do
    {
      v13 = v9[-2];
      v12 = v9[-1];
      v15 = *v9;
      v14 = v9[1];
      v9 += 4;
      v10[-1] = vuzp1q_s32(v13, v12);
      *v10 = vuzp1q_s32(v15, v14);
      v10 += 2;
      v11 -= 8;
    }

    while (v11);
    if (v8 != (v8 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_7;
    }
  }

  return result;
}

void sub_18398634C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

NetworkCursor *sub_183986558(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(NetworkCursor);
  v8 = v5[1];
  v7 = v5[2];
  if (v6)
  {
    v9 = v7 == v8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v11 = 0;
    do
    {
      v12 = *(v8 + 8 * v11);
      v13 = *(a1 + 8);
      v14 = *(v13 + 32);
      v15 = *(v14 + 40 * v12);
      if (v15)
      {
        v16 = (*(v13 + 80) + 72 * *(v14 + 40 * v12 + 16) + 16);
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        while (*v16 != a3)
        {
          v16 += 9;
          --v17;
          if (!--v15)
          {
            goto LABEL_7;
          }
        }

        if (v17)
        {
          v18 = *(v16 - 1);
          if (*(v14 + 40 * v18 + 32) == 1)
          {
            if (*(v14 + 40 * v18))
            {
              v19 = 4;
            }

            else
            {
              v19 = 2;
            }
          }

          else
          {
            v19 = 1;
          }

          v20 = *(v16 - 1);
          sub_1836DB51C(&v6->_nodeIndexes, &v20);
          v6->_stateType |= v19;
          v8 = v5[1];
          v7 = v5[2];
        }
      }

LABEL_7:
      ++v11;
    }

    while (v11 < (v7 - v8) >> 3);
  }

  return v6;
}

void sub_183987338(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1839876C4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1839877B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CHEncoderDecoderNetwork;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_183987B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_183987E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_183988F70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_183686078(a1);
  }

  _Unwind_Resume(a1);
}

void sub_183989990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1836CFA48(&a25);
  sub_1838117CC(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_183989A20(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_183689098(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_18383D490(a1, i + 4);
  }

  return a1;
}

void sub_18398ACAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  sub_1837280DC(va);
  sub_1838117CC(va1);
  sub_1837280DC(va2);
  sub_1838117CC(va3);
  _Unwind_Resume(a1);
}

void sub_18398B888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_1836997F4(&a32);

  _Unwind_Resume(a1);
}

void sub_18398BAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_18369D068(&a9);

  _Unwind_Resume(a1);
}

void sub_18398C8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  v27 = a13;
  v28 = *a13;
  if (*a13)
  {
    v29 = a13[1];
    v30 = *a13;
    if (v29 != v28)
    {
      v31 = a13[1];
      do
      {
        v34 = *(v31 - 3);
        v31 -= 3;
        v33 = v34;
        if (v34)
        {
          v35 = *(v29 - 2);
          v32 = v33;
          if (v35 != v33)
          {
            do
            {
              v36 = *(v35 - 3);
              if (v36)
              {
                do
                {
                  v37 = *v36;
                  operator delete(v36);
                  v36 = v37;
                }

                while (v37);
              }

              v39 = *(v35 - 5);
              v35 -= 5;
              v38 = v39;
              *v35 = 0;
              if (v39)
              {
                operator delete(v38);
              }
            }

            while (v35 != v33);
            v32 = *v31;
          }

          *(v29 - 2) = v33;
          operator delete(v32);
        }

        v29 = v31;
      }

      while (v31 != v28);
      v27 = a13;
      v30 = *a13;
    }

    v27[1] = v28;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

id sub_18398D0C0(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v13 = a4;
  v14 = **(a1 + 40) + 24 * *(a2[9] + 4 * a3);
  if (*(v14 + 23) < 0)
  {
    v14 = *v14;
  }

  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v9, v14, v10, v11, v12);
  v26 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v16, v17, v18, v19, v20);
  v27 = a2[6] + 24 * a3;
  v28 = *v27;
  v29 = *(v27 + 8);
  if (*v27 != v29)
  {
    do
    {
      objc_msgSend_addIndex_(v26, v21, *v28++, v23, v24, v25);
    }

    while (v28 != v29);
  }

  v30 = *MEMORY[0x1E695F050];
  v31 = *(MEMORY[0x1E695F050] + 8);
  v32 = *(MEMORY[0x1E695F050] + 16);
  v33 = *(MEMORY[0x1E695F050] + 24);
  if (objc_msgSend_count(v26, v21, v22, v23, v24, v25))
  {
    objc_msgSend_boundsForStrokeIndexes_(*(a1 + 32), v34, v26, v35, v36, v37);
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v33 = v41;
  }

  v42 = *(a2[12] + 4 * a3);
  v43 = *(a2[15] + 8 * a3);
  v44 = [CHTokenizedMathResultToken alloc];
  v46 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v44, v45, v15, v26, v43, v13, v42, v30, v31, v32, v33, a5);

  return v46;
}

uint64_t sub_18398D40C(uint64_t a1)
{
  v2 = *(a1 + 720);
  if (v2)
  {
    v3 = *(a1 + 728);
    v4 = *(a1 + 720);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          do
          {
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }

        v8 = *(v3 - 5);
        v3 -= 5;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          operator delete(v7);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 720);
    }

    *(a1 + 728) = v2;
    operator delete(v4);
  }

  v9 = *(a1 + 696);
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

  v11 = *(a1 + 680);
  *(a1 + 680) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 656);
  if (v12)
  {
    do
    {
      v22 = *v12;
      v23 = v12[3];
      if (v23)
      {
        v12[4] = v23;
        operator delete(v23);
      }

      operator delete(v12);
      v12 = v22;
    }

    while (v22);
  }

  v13 = *(a1 + 640);
  *(a1 + 640) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(a1 + 616);
  if (v14)
  {
    do
    {
      v15 = *v14;
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = *(a1 + 600);
  *(a1 + 600) = 0;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(a1 + 576);
  if (v17)
  {
    do
    {
      v24 = *v17;
      v25 = v17[3];
      if (v25)
      {
        v17[4] = v25;
        operator delete(v25);
      }

      operator delete(v17);
      v17 = v24;
    }

    while (v24);
  }

  v18 = *(a1 + 560);
  *(a1 + 560) = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(a1 + 536);
  if (v19)
  {
    v20 = *(a1 + 544);
    v21 = *(a1 + 536);
    if (v20 != v19)
    {
      do
      {
        v27 = *--v20;
        v26 = v27;
        *v20 = 0;
        if (v27)
        {
          (*(*v26 + 16))(v26);
        }
      }

      while (v20 != v19);
      v21 = *(a1 + 536);
    }

    *(a1 + 544) = v19;
    operator delete(v21);
  }

  sub_183686934(a1 + 56);
  sub_18368922C(a1 + 32, *(a1 + 40));
  v28 = *a1;
  if (*a1)
  {
    v29 = *(a1 + 8);
    v30 = *a1;
    if (v29 != v28)
    {
      do
      {
        v31 = *(v29 - 1);
        v29 -= 3;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v28);
      v30 = *a1;
    }

    *(a1 + 8) = v28;
    operator delete(v30);
  }

  return a1;
}

uint64_t *sub_18398D624(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_18398DAC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183811838(va);
  _Unwind_Resume(a1);
}

void *sub_18398DADC(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return result;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t *sub_18398DDD8(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_18398E0E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183811838(va);
  _Unwind_Resume(a1);
}

char *sub_18398E0F8(char **a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = a1[2];
  v6 = *a1;
  result = v6;
  if (a4 > (v5 - v6) >> 3)
  {
    if (v6)
    {
      a1[1] = v6;
      v8 = a4;
      operator delete(v6);
      a4 = v8;
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v9 = v5 >> 2;
    if (v5 >> 2 <= a4)
    {
      v9 = a4;
    }

    v31 = v5 >= 0x7FFFFFFFFFFFFFF8;
    v10 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v31)
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_18383B70C();
  }

  v11 = a1[1];
  if (a4 <= (v11 - v6) >> 3)
  {
    if (a2 != a3)
    {
      v25 = a3 - a2 - 8;
      if (v25 >= 0x78)
      {
        v43 = v25 & 0xFFFFFFFFFFFFFFF8 | 4;
        v44 = &v6[v43];
        v45 = a2 + v43;
        v46 = (v25 & 0xFFFFFFFFFFFFFFF8) + 8;
        v48 = (v6 + 4) < a2 + v46 && a2 + 4 < &v6[v46];
        if (v44 <= a2 || v6 >= v45)
        {
          if (v48)
          {
            v26 = a2;
          }

          else
          {
            v50 = (v25 >> 3) + 1;
            v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFF8);
            result = &v6[v51];
            v26 = (a2 + v51);
            v52 = (a2 + 32);
            v53 = v6 + 32;
            v54 = v50 & 0x3FFFFFFFFFFFFFF8;
            do
            {
              v56 = *(v52 - 2);
              v55 = *(v52 - 1);
              v58 = *v52;
              v57 = v52[1];
              v52 += 4;
              *(v53 - 2) = v56;
              *(v53 - 1) = v55;
              *v53 = v58;
              v53[1] = v57;
              v53 += 4;
              v54 -= 8;
            }

            while (v54);
            if (v50 == (v50 & 0x3FFFFFFFFFFFFFF8))
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          v26 = a2;
        }
      }

      else
      {
        v26 = a2;
      }

      do
      {
        *result = *v26;
        *(result + 1) = *(v26++ + 1);
        result += 8;
      }

      while (v26 != a3);
    }

LABEL_28:
    a1[1] = result;
    return result;
  }

  v12 = (a2 + v11 - v6);
  v13 = v11 - v6;
  if (v11 == v6)
  {
    goto LABEL_15;
  }

  v14 = v13 - 8;
  if ((v13 - 8) < 0x78)
  {
    v15 = a2;
    do
    {
LABEL_14:
      *result = *v15;
      *(result + 1) = *(v15++ + 1);
      result += 8;
    }

    while (v15 != v12);
    goto LABEL_15;
  }

  v27 = v14 & 0xFFFFFFFFFFFFFFF8 | 4;
  v28 = &v6[v27];
  v29 = a2 + v27;
  v30 = (v14 & 0xFFFFFFFFFFFFFFF8) + 8;
  v31 = (v6 + 4) >= a2 + v30 || a2 + 4 >= &v6[v30];
  v32 = !v31;
  v15 = a2;
  if (v28 > a2 && v6 < v29)
  {
    goto LABEL_14;
  }

  if (v32)
  {
    goto LABEL_14;
  }

  v34 = (v14 >> 3) + 1;
  v35 = 8 * (v34 & 0x3FFFFFFFFFFFFFF8);
  result = &v6[v35];
  v15 = (a2 + v35);
  v36 = (a2 + 32);
  v37 = v6 + 32;
  v38 = v34 & 0x3FFFFFFFFFFFFFF8;
  do
  {
    v40 = *(v36 - 2);
    v39 = *(v36 - 1);
    v42 = *v36;
    v41 = v36[1];
    v36 += 4;
    *(v37 - 2) = v40;
    *(v37 - 1) = v39;
    *v37 = v42;
    v37[1] = v41;
    v37 += 4;
    v38 -= 8;
  }

  while (v38);
  if (v34 != (v34 & 0x3FFFFFFFFFFFFFF8))
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v12 == a3)
  {
    a1[1] = v11;
  }

  else
  {
    v16 = a3 + v6 - &v11[a2] - 8;
    if (v16 < 0x18)
    {
      goto LABEL_21;
    }

    if (&v6[-a2] < 0x20)
    {
      goto LABEL_21;
    }

    v17 = (v16 >> 3) + 1;
    v18 = 8 * (v17 & 0x3FFFFFFFFFFFFFFCLL);
    v12 = (v12 + v18);
    v19 = &v11[v18];
    v20 = v11 + 16;
    v21 = (a2 + v20 - v6);
    v22 = v17 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v21;
      *(v20 - 1) = *(v21 - 1);
      *v20 = v23;
      v20 += 32;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    v11 = v19;
    if (v17 != (v17 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_21:
      v19 = v11;
      do
      {
        v24 = *v12++;
        *v19 = v24;
        v19 += 8;
      }

      while (v12 != a3);
    }

    a1[1] = v19;
  }

  return result;
}

void ***sub_18398E464(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            do
            {
              v10 = *(v9 - 3);
              if (v10)
              {
                do
                {
                  v11 = *v10;
                  operator delete(v10);
                  v10 = v11;
                }

                while (v11);
              }

              v13 = *(v9 - 5);
              v9 -= 5;
              v12 = v13;
              *v9 = 0;
              if (v13)
              {
                operator delete(v12);
              }
            }

            while (v9 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_18398E560(uint64_t a1)
{

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_18398E614(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_1EF1BF9C8;
  result = MEMORY[0x1865E6810](v3);
  a2[1] = result;
  return result;
}

void sub_18398E664(id *a1)
{

  operator delete(a1);
}

uint64_t sub_18398E6A0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_18398E6B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z66[CHEncoderDecoderNetwork recognizeDrawing:beamSize:shouldCancel:]E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z66[CHEncoderDecoderNetwork recognizeDrawing:beamSize:shouldCancel:]E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z66[CHEncoderDecoderNetwork recognizeDrawing:beamSize:shouldCancel:]E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z66[CHEncoderDecoderNetwork recognizeDrawing:beamSize:shouldCancel:]E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_18398E730(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_18398E7BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      *(a1 + 16) = v4;
      if (v7)
      {
        v8 = *(v3 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          do
          {
            v9 = *(v8 - 3);
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

            v12 = *(v8 - 5);
            v8 -= 5;
            v11 = v12;
            *v8 = 0;
            if (v12)
            {
              operator delete(v11);
            }
          }

          while (v8 != v6);
          v5 = *v4;
        }

        *(v3 - 2) = v6;
        operator delete(v5);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}