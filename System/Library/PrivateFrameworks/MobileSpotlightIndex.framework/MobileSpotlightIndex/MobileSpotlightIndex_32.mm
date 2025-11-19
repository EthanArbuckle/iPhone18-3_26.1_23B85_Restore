uint64_t _SIInitSDB(uint64_t a1, __int16 a2, int a3)
{
  v374 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v7 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
  v367 = v7;
  v8 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
  v365 = v9;
  v366 = HIDWORD(v7);
  v364 = v10;
  *(v8 + 216) = 0;
  v11 = *(v8 + 312);
  v12 = *(v8 + 224);
  if (v12)
  {
    v12(*(v8 + 288));
  }

  v363 = v367;
  v362 = v366;
  v361 = v365;
  v360 = v364;
  v13 = _setjmp(v8);
  v14 = MEMORY[0x1E695E480];
  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v8 + 312) = v11;
    CIOnThreadCleanUpReset(v360);
    dropThreadId(v363, 1, add_explicit + 1);
    CICleanUpReset(v363, v361);
    goto LABEL_617;
  }

  v15 = *(a1 + 1192);
  v359[0] = MEMORY[0x1E69E9820];
  v359[1] = 0x40000000;
  v359[2] = ___SIInitSDB_block_invoke;
  v359[3] = &__block_descriptor_tmp_1149;
  v359[4] = a1;
  v357[4] = a1;
  v358[0] = MEMORY[0x1E69E9820];
  v358[1] = 0x40000000;
  v358[2] = ___SIInitSDB_block_invoke_2;
  v358[3] = &__block_descriptor_tmp_1151;
  v358[4] = a1;
  v357[0] = MEMORY[0x1E69E9820];
  v357[1] = 0x40000000;
  v357[2] = ___SIInitSDB_block_invoke_3;
  v357[3] = &__block_descriptor_tmp_1152;
  if (*v15 != 1685287992)
  {
    v336 = __si_assert_copy_extra_332();
    v337 = v336;
    v338 = "";
    if (v336)
    {
      v338 = v336;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 233, v338);
LABEL_631:
    free(v337);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  db2_set_garbage_collector(v15, v359, v358, v357);
  v16 = *(a1 + 1192);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___SIInitSDB_block_invoke_4;
  aBlock[3] = &__block_descriptor_tmp_1154;
  aBlock[4] = a1;
  if (*v16 != 1685287992)
  {
    v339 = *__error();
    v340 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v340, OS_LOG_TYPE_ERROR))
    {
      v341 = *v16;
      *buf = 136315650;
      v369 = "db_set_dirty_callback";
      v370 = 1024;
      v371 = 235;
      v372 = 1024;
      v373 = v341;
      _os_log_error_impl(&dword_1C278D000, v340, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v339;
    v342 = __si_assert_copy_extra_332();
    v337 = v342;
    v343 = "";
    if (v342)
    {
      v343 = v342;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 235, v343);
    goto LABEL_631;
  }

  v17 = _Block_copy(aBlock);
  v18 = *(v16 + 104);
  if (v18)
  {
    _Block_release(v18);
  }

  *(v16 + 104) = v17;
  v19 = *(a1 + 6624);
  if (v19)
  {
    v355[0] = MEMORY[0x1E69E9820];
    v355[1] = 0x40000000;
    v355[2] = ___SIInitSDB_block_invoke_5;
    v355[3] = &__block_descriptor_tmp_1155;
    v355[4] = a1;
    v20 = _Block_copy(v355);
    v21 = *(v19 + 4640);
    if (v21)
    {
      _Block_release(v21);
    }

    *(v19 + 4640) = v20;
  }

  v349 = v11;
  v350 = add_explicit;
  v22 = *(a1 + 1392);
  v23 = *(a1 + 1384);
  v351[0] = MEMORY[0x1E69E9820];
  v351[1] = 0x40000000;
  v352 = ___SIInitSDB_block_invoke_6;
  v353 = &__block_descriptor_tmp_1157;
  v354 = a1;
  if (v22 && *(v22 + 8))
  {
    v24 = 0;
    while ((v352)(v351, *(*v22 + 8 * v24), 0))
    {
      if (++v24 >= *(v22 + 8))
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    if (v23 && *(v23 + 8))
    {
      v25 = 0;
      do
      {
        if (!(v352)(v351, *(*v23 + 8 * v25), 1))
        {
          break;
        }

        ++v25;
      }

      while (v25 < *(v23 + 8));
    }
  }

  v26 = a3;
  if (*(a1 + 2072) == 1)
  {
    v27 = SICopyProperty(a1, @"GroupAssignments");
    v28 = *v14;
    if (v27)
    {
      v29 = v27;
      *(a1 + 2088) = CFDictionaryCreateMutableCopy(*v14, 0, v27);
      CFRelease(v29);
    }

    else
    {
      *(a1 + 2088) = CFDictionaryCreateMutable(*v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    Mutable = CFBitVectorCreateMutable(v28, 256);
    *(a1 + 2096) = Mutable;
    CFBitVectorSetCount(Mutable, 256);
    CFBitVectorSetAllBits(*(a1 + 2096), 0);
    CFDictionaryApplyFunction(*(a1 + 2088), updateUsedBites, *(a1 + 2096));
  }

  v31 = (a1 + 1192);
  *(a1 + 2060) = db_create_id_for_field(*(a1 + 1192), "_kMDItemExternalID", 0x2308u, 11);
  *(a1 + 2064) = db_create_id_for_field(*(a1 + 1192), "_kMDItemBundleID", 0x4318u, 11);
  *(a1 + 2056) = db_create_id_for_field(*(a1 + 1192), "_kMDItemOwnerUserID", 0x308u, 7);
  *(a1 + 2068) = db_create_id_for_field(*(a1 + 1192), "_kMDItemDomainIdentifier", 0x4300u, 11);
  *(a1 + 2032) = db_create_id_for_field(*(a1 + 1192), "_kMDItemFileName", 0x308u, 11);
  *(a1 + 2000) = db_create_id_for_field(*(a1 + 1192), "kMDItemContentTypeTree", 0x330u, 11);
  *(a1 + 2004) = db_create_id_for_field(*(a1 + 1192), "kMDItemSupportFileType", 0x330u, 11);
  *(a1 + 1996) = db_create_id_for_field(*(a1 + 1192), "kMDItemContentType", 0x310u, 11);
  *(a1 + 2008) = db_create_id_for_field(*(a1 + 1192), "_kMDItemGroupId", 0x108u, 2);
  if (v26)
  {
    if ((a2 & 0x100) != 0)
    {
      v174 = "_kMDItemStorageSize";
    }

    else
    {
      if (!*(a1 + 6608))
      {
        v32 = *v14;
        v33 = CFDictionaryCreateMutable(*v14, 0, 0, 0);
        v34 = *v31;
        id_for_string = db_get_id_for_string(*v31, "public.message");
        if (id_for_string != -2)
        {
          CFDictionarySetValue(v33, (id_for_string & 0x7FFFFFFF), 1);
          v34 = *v31;
        }

        v36 = db_get_id_for_string(v34, "com.apple.mail.emlx");
        if (v36 != -2)
        {
          CFDictionarySetValue(v33, (v36 & 0x7FFFFFFF), 2);
          v34 = *v31;
        }

        v37 = db_get_id_for_string(v34, "com.apple.mail.eml");
        if (v37 != -2)
        {
          CFDictionarySetValue(v33, (v37 & 0x7FFFFFFF), 3);
          v34 = *v31;
        }

        v38 = db_get_id_for_string(v34, "com.microsoft.entourage.virtual.message");
        if (v38 != -2)
        {
          CFDictionarySetValue(v33, (v38 & 0x7FFFFFFF), 4);
          v34 = *v31;
        }

        v39 = db_get_id_for_string(v34, "com.apple.ichat.transcript");
        if (v39 != -2)
        {
          CFDictionarySetValue(v33, (v39 & 0x7FFFFFFF), 5);
          v34 = *v31;
        }

        v40 = db_get_id_for_string(v34, "public.contact");
        if (v40 != -2)
        {
          CFDictionarySetValue(v33, (v40 & 0x7FFFFFFF), 6);
          v34 = *v31;
        }

        v41 = db_get_id_for_string(v34, "public.vcard");
        if (v41 != -2)
        {
          CFDictionarySetValue(v33, (v41 & 0x7FFFFFFF), 7);
          v34 = *v31;
        }

        v42 = db_get_id_for_string(v34, "com.apple.addressbook.person");
        if (v42 != -2)
        {
          CFDictionarySetValue(v33, (v42 & 0x7FFFFFFF), 8);
          v34 = *v31;
        }

        v43 = db_get_id_for_string(v34, "com.apple.addressbook.group");
        if (v43 != -2)
        {
          CFDictionarySetValue(v33, (v43 & 0x7FFFFFFF), 9);
          v34 = *v31;
        }

        v44 = db_get_id_for_string(v34, "com.microsoft.entourage.virtual.contact");
        if (v44 != -2)
        {
          CFDictionarySetValue(v33, (v44 & 0x7FFFFFFF), 0xA);
          v34 = *v31;
        }

        v45 = db_get_id_for_string(v34, "com.microsoft.entourage.virtual.group");
        if (v45 != -2)
        {
          CFDictionarySetValue(v33, (v45 & 0x7FFFFFFF), 0xB);
          v34 = *v31;
        }

        v46 = db_get_id_for_string(v34, "com.apple.systempreference.prefpane");
        if (v46 != -2)
        {
          CFDictionarySetValue(v33, (v46 & 0x7FFFFFFF), 0xC);
          v34 = *v31;
        }

        v47 = db_get_id_for_string(v34, "public.font");
        if (v47 != -2)
        {
          CFDictionarySetValue(v33, (v47 & 0x7FFFFFFF), 0xD);
          v34 = *v31;
        }

        v48 = db_get_id_for_string(v34, "public.bookmark");
        if (v48 != -2)
        {
          CFDictionarySetValue(v33, (v48 & 0x7FFFFFFF), 0xE);
          v34 = *v31;
        }

        v49 = db_get_id_for_string(v34, "com.apple.safari.bookmark");
        if (v49 != -2)
        {
          CFDictionarySetValue(v33, (v49 & 0x7FFFFFFF), 0xF);
          v34 = *v31;
        }

        v50 = db_get_id_for_string(v34, "com.apple.safari.history");
        if (v50 != -2)
        {
          CFDictionarySetValue(v33, (v50 & 0x7FFFFFFF), 0x10);
          v34 = *v31;
        }

        v51 = db_get_id_for_string(v34, "public.to-do-item");
        if (v51 != -2)
        {
          CFDictionarySetValue(v33, (v51 & 0x7FFFFFFF), 0x11);
          v34 = *v31;
        }

        v52 = db_get_id_for_string(v34, "public.calendar-event");
        if (v52 != -2)
        {
          CFDictionarySetValue(v33, (v52 & 0x7FFFFFFF), 0x12);
          v34 = *v31;
        }

        v53 = db_get_id_for_string(v34, "com.apple.ical.bookmark");
        if (v53 != -2)
        {
          CFDictionarySetValue(v33, (v53 & 0x7FFFFFFF), 0x13);
          v34 = *v31;
        }

        v54 = db_get_id_for_string(v34, "com.apple.ical.bookmark.todo");
        if (v54 != -2)
        {
          CFDictionarySetValue(v33, (v54 & 0x7FFFFFFF), 0x14);
          v34 = *v31;
        }

        v55 = db_get_id_for_string(v34, "com.apple.ical.ics.event");
        if (v55 != -2)
        {
          CFDictionarySetValue(v33, (v55 & 0x7FFFFFFF), 0x15);
          v34 = *v31;
        }

        v56 = db_get_id_for_string(v34, "com.apple.ical.ics.todo");
        if (v56 != -2)
        {
          CFDictionarySetValue(v33, (v56 & 0x7FFFFFFF), 0x16);
          v34 = *v31;
        }

        v57 = db_get_id_for_string(v34, "com.microsoft.entourage.virtual.event");
        if (v57 != -2)
        {
          CFDictionarySetValue(v33, (v57 & 0x7FFFFFFF), 0x17);
          v34 = *v31;
        }

        v58 = db_get_id_for_string(v34, "com.microsoft.entourage.virtual.task");
        if (v58 != -2)
        {
          CFDictionarySetValue(v33, (v58 & 0x7FFFFFFF), 0x18);
          v34 = *v31;
        }

        v59 = db_get_id_for_string(v34, "public.movie");
        if (v59 != -2)
        {
          CFDictionarySetValue(v33, (v59 & 0x7FFFFFFF), 0x19);
          v34 = *v31;
        }

        v60 = db_get_id_for_string(v34, "com.apple.quicktime-movie");
        if (v60 != -2)
        {
          CFDictionarySetValue(v33, (v60 & 0x7FFFFFFF), 0x1A);
          v34 = *v31;
        }

        v61 = db_get_id_for_string(v34, "public.mpeg-video");
        if (v61 != -2)
        {
          CFDictionarySetValue(v33, (v61 & 0x7FFFFFFF), 0x1B);
          v34 = *v31;
        }

        v62 = db_get_id_for_string(v34, "public.mpeg-4");
        if (v62 != -2)
        {
          CFDictionarySetValue(v33, (v62 & 0x7FFFFFFF), 0x1C);
          v34 = *v31;
        }

        v63 = db_get_id_for_string(v34, "public.mpeg");
        if (v63 != -2)
        {
          CFDictionarySetValue(v33, (v63 & 0x7FFFFFFF), 0x1D);
          v34 = *v31;
        }

        v64 = db_get_id_for_string(v34, "public.3gpp");
        if (v64 != -2)
        {
          CFDictionarySetValue(v33, (v64 & 0x7FFFFFFF), 0x1E);
          v34 = *v31;
        }

        v65 = db_get_id_for_string(v34, "public.3gpp2");
        if (v65 != -2)
        {
          CFDictionarySetValue(v33, (v65 & 0x7FFFFFFF), 0x1F);
          v34 = *v31;
        }

        v66 = db_get_id_for_string(v34, "com.apple.application-bundle");
        if (v66 != -2)
        {
          CFDictionarySetValue(v33, (v66 & 0x7FFFFFFF), 0x20);
          v34 = *v31;
        }

        v67 = db_get_id_for_string(v34, "com.apple.application-file");
        if (v67 != -2)
        {
          CFDictionarySetValue(v33, (v67 & 0x7FFFFFFF), 0x21);
          v34 = *v31;
        }

        v68 = db_get_id_for_string(v34, "com.apple.dashboard-widget");
        if (v68 != -2)
        {
          CFDictionarySetValue(v33, (v68 & 0x7FFFFFFF), 0x22);
          v34 = *v31;
        }

        v69 = db_get_id_for_string(v34, "public.folder");
        if (v69 != -2)
        {
          CFDictionarySetValue(v33, (v69 & 0x7FFFFFFF), 0x23);
          v34 = *v31;
        }

        v70 = db_get_id_for_string(v34, "com.apple.mount-point");
        if (v70 != -2)
        {
          CFDictionarySetValue(v33, (v70 & 0x7FFFFFFF), 0x24);
          v34 = *v31;
        }

        v71 = db_get_id_for_string(v34, "public.audio");
        if (v71 != -2)
        {
          CFDictionarySetValue(v33, (v71 & 0x7FFFFFFF), 0x25);
          v34 = *v31;
        }

        v72 = db_get_id_for_string(v34, "public.mpeg-4-audio");
        if (v72 != -2)
        {
          CFDictionarySetValue(v33, (v72 & 0x7FFFFFFF), 0x26);
          v34 = *v31;
        }

        v73 = db_get_id_for_string(v34, "com.apple.protected-mpeg-4-audio");
        if (v73 != -2)
        {
          CFDictionarySetValue(v33, (v73 & 0x7FFFFFFF), 0x27);
          v34 = *v31;
        }

        v74 = db_get_id_for_string(v34, "com.adobe.pdf");
        if (v74 != -2)
        {
          CFDictionarySetValue(v33, (v74 & 0x7FFFFFFF), 0x28);
          v34 = *v31;
        }

        v75 = db_get_id_for_string(v34, "com.apple.localized-pdf-bundle");
        if (v75 != -2)
        {
          CFDictionarySetValue(v33, (v75 & 0x7FFFFFFF), 0x29);
          v34 = *v31;
        }

        v76 = db_get_id_for_string(v34, "public.presentation");
        if (v76 != -2)
        {
          CFDictionarySetValue(v33, (v76 & 0x7FFFFFFF), 0x2A);
          v34 = *v31;
        }

        v77 = db_get_id_for_string(v34, "com.microsoft.powerpoint.ppt");
        if (v77 != -2)
        {
          CFDictionarySetValue(v33, (v77 & 0x7FFFFFFF), 0x2B);
          v34 = *v31;
        }

        v78 = db_get_id_for_string(v34, "com.apple.keynote.key");
        if (v78 != -2)
        {
          CFDictionarySetValue(v33, (v78 & 0x7FFFFFFF), 0x2C);
          v34 = *v31;
        }

        v79 = db_get_id_for_string(v34, "com.apple.iwork.keynote.key");
        if (v79 != -2)
        {
          CFDictionarySetValue(v33, (v79 & 0x7FFFFFFF), 0x2D);
          v34 = *v31;
        }

        v80 = db_get_id_for_string(v34, "public.image");
        if (v80 != -2)
        {
          CFDictionarySetValue(v33, (v80 & 0x7FFFFFFF), 0x2E);
          v34 = *v31;
        }

        v81 = db_get_id_for_string(v34, "com.apple.motion.project");
        if (v81 != -2)
        {
          CFDictionarySetValue(v33, (v81 & 0x7FFFFFFF), 0x2F);
          v34 = *v31;
        }

        v82 = db_get_id_for_string(v34, "com.apple.iwork.pages.pages");
        if (v82 != -2)
        {
          CFDictionarySetValue(v33, (v82 & 0x7FFFFFFF), 0x30);
          v34 = *v31;
        }

        v83 = db_get_id_for_string(v34, "com.apple.iwork.pages.sffpages");
        if (v83 != -2)
        {
          CFDictionarySetValue(v33, (v83 & 0x7FFFFFFF), 0x31);
          v34 = *v31;
        }

        v84 = db_get_id_for_string(v34, "com.apple.iwork.pages.template");
        if (v84 != -2)
        {
          CFDictionarySetValue(v33, (v84 & 0x7FFFFFFF), 0x32);
          v34 = *v31;
        }

        v85 = db_get_id_for_string(v34, "com.apple.iwork.pages.sfftemplate");
        if (v85 != -2)
        {
          CFDictionarySetValue(v33, (v85 & 0x7FFFFFFF), 0x33);
          v34 = *v31;
        }

        v86 = db_get_id_for_string(v34, "public.rtf");
        if (v86 != -2)
        {
          CFDictionarySetValue(v33, (v86 & 0x7FFFFFFF), 0x34);
          v34 = *v31;
        }

        v87 = db_get_id_for_string(v34, "com.apple.rtfd");
        if (v87 != -2)
        {
          CFDictionarySetValue(v33, (v87 & 0x7FFFFFFF), 0x35);
          v34 = *v31;
        }

        v88 = db_get_id_for_string(v34, "com.apple.flat-rtfd");
        if (v88 != -2)
        {
          CFDictionarySetValue(v33, (v88 & 0x7FFFFFFF), 0x36);
          v34 = *v31;
        }

        v89 = db_get_id_for_string(v34, "com.microsoft.word.doc");
        if (v89 != -2)
        {
          CFDictionarySetValue(v33, (v89 & 0x7FFFFFFF), 0x37);
          v34 = *v31;
        }

        v90 = db_get_id_for_string(v34, "org.khronos.collada.digital-asset-exchange");
        if (v90 != -2)
        {
          CFDictionarySetValue(v33, (v90 & 0x7FFFFFFF), 0x38);
          v34 = *v31;
        }

        v91 = db_get_id_for_string(v34, "public.plain-text");
        if (v91 != -2)
        {
          CFDictionarySetValue(v33, (v91 & 0x7FFFFFFF), 0x39);
          v34 = *v31;
        }

        v92 = db_get_id_for_string(v34, "public.html");
        if (v92 != -2)
        {
          CFDictionarySetValue(v33, (v92 & 0x7FFFFFFF), 0x3A);
          v34 = *v31;
        }

        v93 = db_get_id_for_string(v34, "public.xhtml");
        if (v93 != -2)
        {
          CFDictionarySetValue(v33, (v93 & 0x7FFFFFFF), 0x3B);
          v34 = *v31;
        }

        v94 = db_get_id_for_string(v34, "public.shell-script");
        if (v94 != -2)
        {
          CFDictionarySetValue(v33, (v94 & 0x7FFFFFFF), 0x3C);
          v34 = *v31;
        }

        v95 = db_get_id_for_string(v34, "public.source-code");
        if (v95 != -2)
        {
          CFDictionarySetValue(v33, (v95 & 0x7FFFFFFF), 0x3D);
          v34 = *v31;
        }

        v96 = db_get_id_for_string(v34, "public.unix-executable");
        if (v96 != -2)
        {
          CFDictionarySetValue(v33, (v96 & 0x7FFFFFFF), 0x3E);
          v34 = *v31;
        }

        v97 = db_get_id_for_string(v34, "com.apple.xcode.project");
        if (v97 != -2)
        {
          CFDictionarySetValue(v33, (v97 & 0x7FFFFFFF), 0x3F);
          v34 = *v31;
        }

        v98 = db_get_id_for_string(v34, "com.apple.xcode.model");
        if (v98 != -2)
        {
          CFDictionarySetValue(v33, (v98 & 0x7FFFFFFF), 0x40);
          v34 = *v31;
        }

        v99 = db_get_id_for_string(v34, "com.apple.xcode.archive");
        if (v99 != -2)
        {
          CFDictionarySetValue(v33, (v99 & 0x7FFFFFFF), 0x41);
          v34 = *v31;
        }

        v100 = db_get_id_for_string(v34, "com.apple.xcode.docset");
        if (v100 != -2)
        {
          CFDictionarySetValue(v33, (v100 & 0x7FFFFFFF), 0x42);
          v34 = *v31;
        }

        v101 = db_get_id_for_string(v34, "com.apple.xcode.projectdata");
        if (v101 != -2)
        {
          CFDictionarySetValue(v33, (v101 & 0x7FFFFFFF), 0x43);
          v34 = *v31;
        }

        v102 = db_get_id_for_string(v34, "com.apple.xcode.dsym");
        if (v102 != -2)
        {
          CFDictionarySetValue(v33, (v102 & 0x7FFFFFFF), 0x44);
          v34 = *v31;
        }

        v103 = db_get_id_for_string(v34, "com.apple.xcode.configsettings");
        if (v103 != -2)
        {
          CFDictionarySetValue(v33, (v103 & 0x7FFFFFFF), 0x45);
          v34 = *v31;
        }

        v104 = db_get_id_for_string(v34, "com.apple.xcode.usersettings");
        if (v104 != -2)
        {
          CFDictionarySetValue(v33, (v104 & 0x7FFFFFFF), 0x46);
          v34 = *v31;
        }

        v105 = db_get_id_for_string(v34, "com.apple.xcode.strings-text");
        if (v105 != -2)
        {
          CFDictionarySetValue(v33, (v105 & 0x7FFFFFFF), 0x47);
          v34 = *v31;
        }

        v106 = db_get_id_for_string(v34, "com.apple.xcode.plugin");
        if (v106 != -2)
        {
          CFDictionarySetValue(v33, (v106 & 0x7FFFFFFF), 0x48);
          v34 = *v31;
        }

        v107 = db_get_id_for_string(v34, "com.apple.xcode.mom");
        if (v107 != -2)
        {
          CFDictionarySetValue(v33, (v107 & 0x7FFFFFFF), 0x49);
          v34 = *v31;
        }

        v108 = db_get_id_for_string(v34, "com.apple.property-list");
        if (v108 != -2)
        {
          CFDictionarySetValue(v33, (v108 & 0x7FFFFFFF), 0x4A);
          v34 = *v31;
        }

        v109 = db_get_id_for_string(v34, "dyn.ah62d4rv4ge81a7dk");
        if (v109 != -2)
        {
          CFDictionarySetValue(v33, (v109 & 0x7FFFFFFF), 0x4B);
          v34 = *v31;
        }

        v110 = db_get_id_for_string(v34, "dyn.ah62d4rv4ge80u5pbsa");
        if (v110 != -2)
        {
          CFDictionarySetValue(v33, (v110 & 0x7FFFFFFF), 0x4C);
          v34 = *v31;
        }

        v111 = db_get_id_for_string(v34, "com.apple.dashcode.xml");
        if (v111 != -2)
        {
          CFDictionarySetValue(v33, (v111 & 0x7FFFFFFF), 0x4D);
          v34 = *v31;
        }

        v112 = db_get_id_for_string(v34, "com.apple.dashcode.css");
        if (v112 != -2)
        {
          CFDictionarySetValue(v33, (v112 & 0x7FFFFFFF), 0x4E);
          v34 = *v31;
        }

        v113 = db_get_id_for_string(v34, "com.apple.dashcode.javascript");
        if (v113 != -2)
        {
          CFDictionarySetValue(v33, (v113 & 0x7FFFFFFF), 0x4F);
          v34 = *v31;
        }

        v114 = db_get_id_for_string(v34, "com.apple.dashcode.json");
        if (v114 != -2)
        {
          CFDictionarySetValue(v33, (v114 & 0x7FFFFFFF), 0x50);
          v34 = *v31;
        }

        v115 = db_get_id_for_string(v34, "com.apple.dashcode.manifest");
        if (v115 != -2)
        {
          CFDictionarySetValue(v33, (v115 & 0x7FFFFFFF), 0x51);
          v34 = *v31;
        }

        v116 = db_get_id_for_string(v34, "com.apple.interfacebuilder.document");
        if (v116 != -2)
        {
          CFDictionarySetValue(v33, (v116 & 0x7FFFFFFF), 0x52);
          v34 = *v31;
        }

        v117 = db_get_id_for_string(v34, "com.apple.interfacebuilder.document.cocoa");
        if (v117 != -2)
        {
          CFDictionarySetValue(v33, (v117 & 0x7FFFFFFF), 0x53);
          v34 = *v31;
        }

        v118 = db_get_id_for_string(v34, "com.apple.rez-source");
        if (v118 != -2)
        {
          CFDictionarySetValue(v33, (v118 & 0x7FFFFFFF), 0x54);
          v34 = *v31;
        }

        v119 = db_get_id_for_string(v34, "com.apple.iphone.developerprofile");
        if (v119 != -2)
        {
          CFDictionarySetValue(v33, (v119 & 0x7FFFFFFF), 0x55);
          v34 = *v31;
        }

        v120 = db_get_id_for_string(v34, "com.apple.iphone.mobileprovision");
        if (v120 != -2)
        {
          CFDictionarySetValue(v33, (v120 & 0x7FFFFFFF), 0x56);
          v34 = *v31;
        }

        v121 = db_get_id_for_string(v34, "com.apple.coreanimation-bundle");
        if (v121 != -2)
        {
          CFDictionarySetValue(v33, (v121 & 0x7FFFFFFF), 0x57);
          v34 = *v31;
        }

        v122 = db_get_id_for_string(v34, "com.apple.coreanimation-xml");
        if (v122 != -2)
        {
          CFDictionarySetValue(v33, (v122 & 0x7FFFFFFF), 0x58);
          v34 = *v31;
        }

        v123 = db_get_id_for_string(v34, "com.sun.java-class");
        if (v123 != -2)
        {
          CFDictionarySetValue(v33, (v123 & 0x7FFFFFFF), 0x59);
          v34 = *v31;
        }

        v124 = db_get_id_for_string(v34, "com.apple.scripting-definition");
        if (v124 != -2)
        {
          CFDictionarySetValue(v33, (v124 & 0x7FFFFFFF), 0x5A);
          v34 = *v31;
        }

        v125 = db_get_id_for_string(v34, "com.apple.dt.document.workspace");
        if (v125 != -2)
        {
          CFDictionarySetValue(v33, (v125 & 0x7FFFFFFF), 0x5B);
          v34 = *v31;
        }

        v126 = db_get_id_for_string(v34, "com.apple.dt.document.scheme");
        if (v126 != -2)
        {
          CFDictionarySetValue(v33, (v126 & 0x7FFFFFFF), 0x5C);
          v34 = *v31;
        }

        v127 = db_get_id_for_string(v34, "com.apple.dt.ide.plug-in");
        if (v127 != -2)
        {
          CFDictionarySetValue(v33, (v127 & 0x7FFFFFFF), 0x5D);
          v34 = *v31;
        }

        v128 = db_get_id_for_string(v34, "com.apple.dt.dvt.plug-in");
        if (v128 != -2)
        {
          CFDictionarySetValue(v33, (v128 & 0x7FFFFFFF), 0x5E);
          v34 = *v31;
        }

        v129 = db_get_id_for_string(v34, "com.apple.dt.document.snapshot");
        if (v129 != -2)
        {
          CFDictionarySetValue(v33, (v129 & 0x7FFFFFFF), 0x5F);
          v34 = *v31;
        }

        v130 = db_get_id_for_string(v34, "com.apple.dt.bundle.unit-test.objective-c");
        if (v130 != -2)
        {
          CFDictionarySetValue(v33, (v130 & 0x7FFFFFFF), 0x60);
          v34 = *v31;
        }

        v131 = db_get_id_for_string(v34, "com.apple.instruments.tracetemplate");
        if (v131 != -2)
        {
          CFDictionarySetValue(v33, (v131 & 0x7FFFFFFF), 0x61);
          v34 = *v31;
        }

        v132 = db_get_id_for_string(v34, "com.apple.quartzdebug.introspectiontrace");
        if (v132 != -2)
        {
          CFDictionarySetValue(v33, (v132 & 0x7FFFFFFF), 0x62);
          v34 = *v31;
        }

        v133 = db_get_id_for_string(v34, "com.apple.applescript.text-object");
        if (v133 != -2)
        {
          CFDictionarySetValue(v33, (v133 & 0x7FFFFFFF), 0x63);
          v34 = *v31;
        }

        v134 = db_get_id_for_string(v34, "com.apple.applescript.data-object");
        if (v134 != -2)
        {
          CFDictionarySetValue(v33, (v134 & 0x7FFFFFFF), 0x64);
        }

        v135 = *v31;
        v136 = db_get_id_for_string(*v31, "com.apple.applescript.url-object");
        if (v136 != -2)
        {
          CFDictionarySetValue(v33, (v136 & 0x7FFFFFFF), 0x65);
          v135 = *v31;
        }

        v137 = db_get_id_for_string(v135, "com.apple.applescript.alias-object");
        if (v137 != -2)
        {
          CFDictionarySetValue(v33, (v137 & 0x7FFFFFFF), 0x66);
          v135 = *v31;
        }

        v138 = db_get_id_for_string(v135, "com.apple.symbol-export");
        if (v138 != -2)
        {
          CFDictionarySetValue(v33, (v138 & 0x7FFFFFFF), 0x67);
          v135 = *v31;
        }

        v139 = db_get_id_for_string(v135, "com.apple.mach-o-binary");
        if (v139 != -2)
        {
          CFDictionarySetValue(v33, (v139 & 0x7FFFFFFF), 0x68);
          v135 = *v31;
        }

        v140 = db_get_id_for_string(v135, "com.apple.mach-o-object");
        if (v140 != -2)
        {
          CFDictionarySetValue(v33, (v140 & 0x7FFFFFFF), 0x69);
          v135 = *v31;
        }

        v141 = db_get_id_for_string(v135, "com.apple.mach-o-executable");
        if (v141 != -2)
        {
          CFDictionarySetValue(v33, (v141 & 0x7FFFFFFF), 0x6A);
          v135 = *v31;
        }

        v142 = db_get_id_for_string(v135, "com.apple.x11-mach-o-executable");
        if (v142 != -2)
        {
          CFDictionarySetValue(v33, (v142 & 0x7FFFFFFF), 0x6B);
          v135 = *v31;
        }

        v143 = db_get_id_for_string(v135, "public.object-code");
        if (v143 != -2)
        {
          CFDictionarySetValue(v33, (v143 & 0x7FFFFFFF), 0x6C);
          v135 = *v31;
        }

        v144 = db_get_id_for_string(v135, "com.microsoft.windows-executable");
        if (v144 != -2)
        {
          CFDictionarySetValue(v33, (v144 & 0x7FFFFFFF), 0x6D);
          v135 = *v31;
        }

        v145 = db_get_id_for_string(v135, "com.microsoft.windows-dynamic-link-library");
        if (v145 != -2)
        {
          CFDictionarySetValue(v33, (v145 & 0x7FFFFFFF), 0x6E);
          v135 = *v31;
        }

        v146 = db_get_id_for_string(v135, "com.sun.java-archive");
        if (v146 != -2)
        {
          CFDictionarySetValue(v33, (v146 & 0x7FFFFFFF), 0x6F);
          v135 = *v31;
        }

        v147 = db_get_id_for_string(v135, "com.sun.web-application-archive");
        if (v147 != -2)
        {
          CFDictionarySetValue(v33, (v147 & 0x7FFFFFFF), 0x70);
          v135 = *v31;
        }

        v148 = db_get_id_for_string(v135, "com.apple.xcode.plugindata");
        if (v148 != -2)
        {
          CFDictionarySetValue(v33, (v148 & 0x7FFFFFFF), 0x71);
          v135 = *v31;
        }

        v149 = db_get_id_for_string(v135, "com.apple.dt.playground");
        if (v149 != -2)
        {
          CFDictionarySetValue(v33, (v149 & 0x7FFFFFFF), 0x72);
          v135 = *v31;
        }

        v150 = db_get_id_for_string(v135, "com.apple.iwork.numbers.sffnumbers");
        if (v150 != -2)
        {
          CFDictionarySetValue(v33, (v150 & 0x7FFFFFFF), 0x73);
          v135 = *v31;
        }

        v151 = db_get_id_for_string(v135, "com.apple.iwork.numbers.numbers");
        if (v151 != -2)
        {
          CFDictionarySetValue(v33, (v151 & 0x7FFFFFFF), 0x74);
          v135 = *v31;
        }

        v152 = db_get_id_for_string(v135, "com.apple.iwork.numbers.template");
        if (v152 != -2)
        {
          CFDictionarySetValue(v33, (v152 & 0x7FFFFFFF), 0x75);
          v135 = *v31;
        }

        v153 = db_get_id_for_string(v135, "com.microsoft.excel.xls");
        if (v153 != -2)
        {
          CFDictionarySetValue(v33, (v153 & 0x7FFFFFFF), 0x76);
          v135 = *v31;
        }

        v154 = db_get_id_for_string(v135, "org.openxmlformats.spreadsheetml.sheet");
        if (v154 != -2)
        {
          CFDictionarySetValue(v33, (v154 & 0x7FFFFFFF), 0x77);
          v135 = *v31;
        }

        v155 = db_get_id_for_string(v135, "public.spreadsheet");
        if (v155 != -2)
        {
          CFDictionarySetValue(v33, (v155 & 0x7FFFFFFF), 0x78);
          v135 = *v31;
        }

        v156 = db_get_id_for_string(v135, "public.xml");
        if (v156 != -2)
        {
          CFDictionarySetValue(v33, (v156 & 0x7FFFFFFF), 0x79);
          v135 = *v31;
        }

        v157 = db_get_id_for_string(v135, "com.apple.log");
        if (v157 != -2)
        {
          CFDictionarySetValue(v33, (v157 & 0x7FFFFFFF), 0x7A);
          v135 = *v31;
        }

        v158 = db_get_id_for_string(v135, "com.apple.crashreport");
        if (v158 != -2)
        {
          CFDictionarySetValue(v33, (v158 & 0x7FFFFFFF), 0x7B);
          v135 = *v31;
        }

        v159 = db_get_id_for_string(v135, "com.apple.spinreport");
        if (v159 != -2)
        {
          CFDictionarySetValue(v33, (v159 & 0x7FFFFFFF), 0x7C);
          v135 = *v31;
        }

        v160 = db_get_id_for_string(v135, "com.apple.panicreport");
        if (v160 != -2)
        {
          CFDictionarySetValue(v33, (v160 & 0x7FFFFFFF), 0x7D);
          v135 = *v31;
        }

        v161 = db_get_id_for_string(v135, "com.apple.shutdownstall");
        if (v161 != -2)
        {
          CFDictionarySetValue(v33, (v161 & 0x7FFFFFFF), 0x7E);
          v135 = *v31;
        }

        v162 = db_get_id_for_string(v135, "com.apple.hangreport");
        if (v162 != -2)
        {
          CFDictionarySetValue(v33, (v162 & 0x7FFFFFFF), 0x7F);
          v135 = *v31;
        }

        v163 = db_get_id_for_string(v135, "public.json");
        if (v163 != -2)
        {
          CFDictionarySetValue(v33, (v163 & 0x7FFFFFFF), 0x80);
          v135 = *v31;
        }

        v164 = db_get_id_for_string(v135, "public.log");
        if (v164 != -2)
        {
          CFDictionarySetValue(v33, (v164 & 0x7FFFFFFF), 0x81);
          v135 = *v31;
        }

        v165 = db_get_id_for_string(v135, "public.content");
        if (v165 != -2)
        {
          CFDictionarySetValue(v33, (v165 & 0x7FFFFFFF), 0x82);
          v135 = *v31;
        }

        v166 = db_get_id_for_string(v135, "com.microsoft.excel.sheet.binary.macroenabled");
        if (v166 != -2)
        {
          CFDictionarySetValue(v33, (v166 & 0x7FFFFFFF), 0x83);
          v135 = *v31;
        }

        v167 = db_get_id_for_string(v135, "org.openxmlformats.spreadsheetml.sheet.macroenabled");
        if (v167 != -2)
        {
          CFDictionarySetValue(v33, (v167 & 0x7FFFFFFF), 0x84);
          v135 = *v31;
        }

        v168 = db_get_id_for_string(v135, "com.apple.protected-mpeg-4-audio-b");
        if (v168 != -2)
        {
          CFDictionarySetValue(v33, (v168 & 0x7FFFFFFF), 0x85);
          v135 = *v31;
        }

        v169 = db_get_id_for_string(v135, "com.audible.aa-audiobook");
        if (v169 != -2)
        {
          CFDictionarySetValue(v33, (v169 & 0x7FFFFFFF), 0x86);
          v135 = *v31;
        }

        v170 = db_get_id_for_string(v135, "com.audible.aax-audiobook");
        if (v170 != -2)
        {
          CFDictionarySetValue(v33, (v170 & 0x7FFFFFFF), 0x87);
          v135 = *v31;
        }

        v171 = db_get_id_for_string(v135, "com.apple.tips");
        if (v171 != -2)
        {
          CFDictionarySetValue(v33, (v171 & 0x7FFFFFFF), 0x88);
          v135 = *v31;
        }

        v172 = db_get_id_for_string(v135, "com.apple.helpviewer");
        if (v172 != -2)
        {
          CFDictionarySetValue(v33, (v172 & 0x7FFFFFFF), 0x89);
          v135 = *v31;
        }

        v173 = db_get_id_for_string(v135, "com.apple.help.topic");
        if (v173 != -2)
        {
          CFDictionarySetValue(v33, (v173 & 0x7FFFFFFF), 0x8A);
        }

        *(a1 + 6608) = CFDictionaryCreateCopy(v32, v33);
        CFRelease(v33);
      }

      v174 = "kMDItemPhysicalSize";
    }

    *(a1 + 2012) = db_get_id_for_field(*(a1 + 1192), v174);
    id_for_field = db_get_id_for_field(*(a1 + 1192), "kMDItemWhereFroms");
  }

  else
  {
    if ((a2 & 0x100) != 0)
    {
      v315 = "_kMDItemStorageSize";
    }

    else
    {
      if (!*(a1 + 6608))
      {
        v175 = *v14;
        v176 = CFDictionaryCreateMutable(*v14, 0, 0, 0);
        id_for_value = db_create_id_for_value(*v31, "public.message");
        if (id_for_value != -2)
        {
          CFDictionarySetValue(v176, (id_for_value & 0x7FFFFFFF), 1);
        }

        v178 = db_create_id_for_value(*v31, "com.apple.mail.emlx");
        if (v178 != -2)
        {
          CFDictionarySetValue(v176, (v178 & 0x7FFFFFFF), 2);
        }

        v179 = db_create_id_for_value(*v31, "com.apple.mail.eml");
        if (v179 != -2)
        {
          CFDictionarySetValue(v176, (v179 & 0x7FFFFFFF), 3);
        }

        v180 = db_create_id_for_value(*v31, "com.microsoft.entourage.virtual.message");
        if (v180 != -2)
        {
          CFDictionarySetValue(v176, (v180 & 0x7FFFFFFF), 4);
        }

        v181 = db_create_id_for_value(*v31, "com.apple.ichat.transcript");
        if (v181 != -2)
        {
          CFDictionarySetValue(v176, (v181 & 0x7FFFFFFF), 5);
        }

        v182 = db_create_id_for_value(*v31, "public.contact");
        if (v182 != -2)
        {
          CFDictionarySetValue(v176, (v182 & 0x7FFFFFFF), 6);
        }

        v183 = db_create_id_for_value(*v31, "public.vcard");
        if (v183 != -2)
        {
          CFDictionarySetValue(v176, (v183 & 0x7FFFFFFF), 7);
        }

        v184 = db_create_id_for_value(*v31, "com.apple.addressbook.person");
        if (v184 != -2)
        {
          CFDictionarySetValue(v176, (v184 & 0x7FFFFFFF), 8);
        }

        v185 = db_create_id_for_value(*v31, "com.apple.addressbook.group");
        if (v185 != -2)
        {
          CFDictionarySetValue(v176, (v185 & 0x7FFFFFFF), 9);
        }

        v186 = db_create_id_for_value(*v31, "com.microsoft.entourage.virtual.contact");
        if (v186 != -2)
        {
          CFDictionarySetValue(v176, (v186 & 0x7FFFFFFF), 0xA);
        }

        v187 = db_create_id_for_value(*v31, "com.microsoft.entourage.virtual.group");
        if (v187 != -2)
        {
          CFDictionarySetValue(v176, (v187 & 0x7FFFFFFF), 0xB);
        }

        v188 = db_create_id_for_value(*v31, "com.apple.systempreference.prefpane");
        if (v188 != -2)
        {
          CFDictionarySetValue(v176, (v188 & 0x7FFFFFFF), 0xC);
        }

        v189 = db_create_id_for_value(*v31, "public.font");
        if (v189 != -2)
        {
          CFDictionarySetValue(v176, (v189 & 0x7FFFFFFF), 0xD);
        }

        v190 = db_create_id_for_value(*v31, "public.bookmark");
        if (v190 != -2)
        {
          CFDictionarySetValue(v176, (v190 & 0x7FFFFFFF), 0xE);
        }

        v191 = db_create_id_for_value(*v31, "com.apple.safari.bookmark");
        if (v191 != -2)
        {
          CFDictionarySetValue(v176, (v191 & 0x7FFFFFFF), 0xF);
        }

        v192 = db_create_id_for_value(*v31, "com.apple.safari.history");
        if (v192 != -2)
        {
          CFDictionarySetValue(v176, (v192 & 0x7FFFFFFF), 0x10);
        }

        v193 = db_create_id_for_value(*v31, "public.to-do-item");
        if (v193 != -2)
        {
          CFDictionarySetValue(v176, (v193 & 0x7FFFFFFF), 0x11);
        }

        v194 = db_create_id_for_value(*v31, "public.calendar-event");
        if (v194 != -2)
        {
          CFDictionarySetValue(v176, (v194 & 0x7FFFFFFF), 0x12);
        }

        v195 = db_create_id_for_value(*v31, "com.apple.ical.bookmark");
        if (v195 != -2)
        {
          CFDictionarySetValue(v176, (v195 & 0x7FFFFFFF), 0x13);
        }

        v196 = db_create_id_for_value(*v31, "com.apple.ical.bookmark.todo");
        if (v196 != -2)
        {
          CFDictionarySetValue(v176, (v196 & 0x7FFFFFFF), 0x14);
        }

        v197 = db_create_id_for_value(*v31, "com.apple.ical.ics.event");
        if (v197 != -2)
        {
          CFDictionarySetValue(v176, (v197 & 0x7FFFFFFF), 0x15);
        }

        v198 = db_create_id_for_value(*v31, "com.apple.ical.ics.todo");
        if (v198 != -2)
        {
          CFDictionarySetValue(v176, (v198 & 0x7FFFFFFF), 0x16);
        }

        v199 = db_create_id_for_value(*v31, "com.microsoft.entourage.virtual.event");
        if (v199 != -2)
        {
          CFDictionarySetValue(v176, (v199 & 0x7FFFFFFF), 0x17);
        }

        v200 = db_create_id_for_value(*v31, "com.microsoft.entourage.virtual.task");
        if (v200 != -2)
        {
          CFDictionarySetValue(v176, (v200 & 0x7FFFFFFF), 0x18);
        }

        v201 = db_create_id_for_value(*v31, "public.movie");
        if (v201 != -2)
        {
          CFDictionarySetValue(v176, (v201 & 0x7FFFFFFF), 0x19);
        }

        v202 = db_create_id_for_value(*v31, "com.apple.quicktime-movie");
        if (v202 != -2)
        {
          CFDictionarySetValue(v176, (v202 & 0x7FFFFFFF), 0x1A);
        }

        v203 = db_create_id_for_value(*v31, "public.mpeg-video");
        if (v203 != -2)
        {
          CFDictionarySetValue(v176, (v203 & 0x7FFFFFFF), 0x1B);
        }

        v204 = db_create_id_for_value(*v31, "public.mpeg-4");
        if (v204 != -2)
        {
          CFDictionarySetValue(v176, (v204 & 0x7FFFFFFF), 0x1C);
        }

        v205 = db_create_id_for_value(*v31, "public.mpeg");
        if (v205 != -2)
        {
          CFDictionarySetValue(v176, (v205 & 0x7FFFFFFF), 0x1D);
        }

        v206 = db_create_id_for_value(*v31, "public.3gpp");
        if (v206 != -2)
        {
          CFDictionarySetValue(v176, (v206 & 0x7FFFFFFF), 0x1E);
        }

        v207 = db_create_id_for_value(*v31, "public.3gpp2");
        if (v207 != -2)
        {
          CFDictionarySetValue(v176, (v207 & 0x7FFFFFFF), 0x1F);
        }

        v208 = db_create_id_for_value(*v31, "com.apple.application-bundle");
        if (v208 != -2)
        {
          CFDictionarySetValue(v176, (v208 & 0x7FFFFFFF), 0x20);
        }

        v209 = db_create_id_for_value(*v31, "com.apple.application-file");
        if (v209 != -2)
        {
          CFDictionarySetValue(v176, (v209 & 0x7FFFFFFF), 0x21);
        }

        v210 = db_create_id_for_value(*v31, "com.apple.dashboard-widget");
        if (v210 != -2)
        {
          CFDictionarySetValue(v176, (v210 & 0x7FFFFFFF), 0x22);
        }

        v211 = db_create_id_for_value(*v31, "public.folder");
        if (v211 != -2)
        {
          CFDictionarySetValue(v176, (v211 & 0x7FFFFFFF), 0x23);
        }

        v212 = db_create_id_for_value(*v31, "com.apple.mount-point");
        if (v212 != -2)
        {
          CFDictionarySetValue(v176, (v212 & 0x7FFFFFFF), 0x24);
        }

        v213 = db_create_id_for_value(*v31, "public.audio");
        if (v213 != -2)
        {
          CFDictionarySetValue(v176, (v213 & 0x7FFFFFFF), 0x25);
        }

        v214 = db_create_id_for_value(*v31, "public.mpeg-4-audio");
        if (v214 != -2)
        {
          CFDictionarySetValue(v176, (v214 & 0x7FFFFFFF), 0x26);
        }

        v215 = db_create_id_for_value(*v31, "com.apple.protected-mpeg-4-audio");
        if (v215 != -2)
        {
          CFDictionarySetValue(v176, (v215 & 0x7FFFFFFF), 0x27);
        }

        v216 = db_create_id_for_value(*v31, "com.adobe.pdf");
        if (v216 != -2)
        {
          CFDictionarySetValue(v176, (v216 & 0x7FFFFFFF), 0x28);
        }

        v217 = db_create_id_for_value(*v31, "com.apple.localized-pdf-bundle");
        if (v217 != -2)
        {
          CFDictionarySetValue(v176, (v217 & 0x7FFFFFFF), 0x29);
        }

        v218 = db_create_id_for_value(*v31, "public.presentation");
        if (v218 != -2)
        {
          CFDictionarySetValue(v176, (v218 & 0x7FFFFFFF), 0x2A);
        }

        v219 = db_create_id_for_value(*v31, "com.microsoft.powerpoint.ppt");
        if (v219 != -2)
        {
          CFDictionarySetValue(v176, (v219 & 0x7FFFFFFF), 0x2B);
        }

        v220 = db_create_id_for_value(*v31, "com.apple.keynote.key");
        if (v220 != -2)
        {
          CFDictionarySetValue(v176, (v220 & 0x7FFFFFFF), 0x2C);
        }

        v221 = db_create_id_for_value(*v31, "com.apple.iwork.keynote.key");
        if (v221 != -2)
        {
          CFDictionarySetValue(v176, (v221 & 0x7FFFFFFF), 0x2D);
        }

        v222 = db_create_id_for_value(*v31, "public.image");
        if (v222 != -2)
        {
          CFDictionarySetValue(v176, (v222 & 0x7FFFFFFF), 0x2E);
        }

        v223 = db_create_id_for_value(*v31, "com.apple.motion.project");
        if (v223 != -2)
        {
          CFDictionarySetValue(v176, (v223 & 0x7FFFFFFF), 0x2F);
        }

        v224 = db_create_id_for_value(*v31, "com.apple.iwork.pages.pages");
        if (v224 != -2)
        {
          CFDictionarySetValue(v176, (v224 & 0x7FFFFFFF), 0x30);
        }

        v225 = db_create_id_for_value(*v31, "com.apple.iwork.pages.sffpages");
        if (v225 != -2)
        {
          CFDictionarySetValue(v176, (v225 & 0x7FFFFFFF), 0x31);
        }

        v226 = db_create_id_for_value(*v31, "com.apple.iwork.pages.template");
        if (v226 != -2)
        {
          CFDictionarySetValue(v176, (v226 & 0x7FFFFFFF), 0x32);
        }

        v227 = db_create_id_for_value(*v31, "com.apple.iwork.pages.sfftemplate");
        if (v227 != -2)
        {
          CFDictionarySetValue(v176, (v227 & 0x7FFFFFFF), 0x33);
        }

        v228 = db_create_id_for_value(*v31, "public.rtf");
        if (v228 != -2)
        {
          CFDictionarySetValue(v176, (v228 & 0x7FFFFFFF), 0x34);
        }

        v229 = db_create_id_for_value(*v31, "com.apple.rtfd");
        if (v229 != -2)
        {
          CFDictionarySetValue(v176, (v229 & 0x7FFFFFFF), 0x35);
        }

        v230 = db_create_id_for_value(*v31, "com.apple.flat-rtfd");
        if (v230 != -2)
        {
          CFDictionarySetValue(v176, (v230 & 0x7FFFFFFF), 0x36);
        }

        v231 = db_create_id_for_value(*v31, "com.microsoft.word.doc");
        if (v231 != -2)
        {
          CFDictionarySetValue(v176, (v231 & 0x7FFFFFFF), 0x37);
        }

        v232 = db_create_id_for_value(*v31, "org.khronos.collada.digital-asset-exchange");
        if (v232 != -2)
        {
          CFDictionarySetValue(v176, (v232 & 0x7FFFFFFF), 0x38);
        }

        v233 = db_create_id_for_value(*v31, "public.plain-text");
        if (v233 != -2)
        {
          CFDictionarySetValue(v176, (v233 & 0x7FFFFFFF), 0x39);
        }

        v234 = db_create_id_for_value(*v31, "public.html");
        if (v234 != -2)
        {
          CFDictionarySetValue(v176, (v234 & 0x7FFFFFFF), 0x3A);
        }

        v235 = db_create_id_for_value(*v31, "public.xhtml");
        if (v235 != -2)
        {
          CFDictionarySetValue(v176, (v235 & 0x7FFFFFFF), 0x3B);
        }

        v236 = db_create_id_for_value(*v31, "public.shell-script");
        if (v236 != -2)
        {
          CFDictionarySetValue(v176, (v236 & 0x7FFFFFFF), 0x3C);
        }

        v237 = db_create_id_for_value(*v31, "public.source-code");
        if (v237 != -2)
        {
          CFDictionarySetValue(v176, (v237 & 0x7FFFFFFF), 0x3D);
        }

        v238 = db_create_id_for_value(*v31, "public.unix-executable");
        if (v238 != -2)
        {
          CFDictionarySetValue(v176, (v238 & 0x7FFFFFFF), 0x3E);
        }

        v239 = db_create_id_for_value(*v31, "com.apple.xcode.project");
        if (v239 != -2)
        {
          CFDictionarySetValue(v176, (v239 & 0x7FFFFFFF), 0x3F);
        }

        v240 = db_create_id_for_value(*v31, "com.apple.xcode.model");
        if (v240 != -2)
        {
          CFDictionarySetValue(v176, (v240 & 0x7FFFFFFF), 0x40);
        }

        v241 = db_create_id_for_value(*v31, "com.apple.xcode.archive");
        if (v241 != -2)
        {
          CFDictionarySetValue(v176, (v241 & 0x7FFFFFFF), 0x41);
        }

        v242 = db_create_id_for_value(*v31, "com.apple.xcode.docset");
        if (v242 != -2)
        {
          CFDictionarySetValue(v176, (v242 & 0x7FFFFFFF), 0x42);
        }

        v243 = db_create_id_for_value(*v31, "com.apple.xcode.projectdata");
        if (v243 != -2)
        {
          CFDictionarySetValue(v176, (v243 & 0x7FFFFFFF), 0x43);
        }

        v244 = db_create_id_for_value(*v31, "com.apple.xcode.dsym");
        if (v244 != -2)
        {
          CFDictionarySetValue(v176, (v244 & 0x7FFFFFFF), 0x44);
        }

        v245 = db_create_id_for_value(*v31, "com.apple.xcode.configsettings");
        if (v245 != -2)
        {
          CFDictionarySetValue(v176, (v245 & 0x7FFFFFFF), 0x45);
        }

        v246 = db_create_id_for_value(*v31, "com.apple.xcode.usersettings");
        if (v246 != -2)
        {
          CFDictionarySetValue(v176, (v246 & 0x7FFFFFFF), 0x46);
        }

        v247 = db_create_id_for_value(*v31, "com.apple.xcode.strings-text");
        if (v247 != -2)
        {
          CFDictionarySetValue(v176, (v247 & 0x7FFFFFFF), 0x47);
        }

        v248 = db_create_id_for_value(*v31, "com.apple.xcode.plugin");
        if (v248 != -2)
        {
          CFDictionarySetValue(v176, (v248 & 0x7FFFFFFF), 0x48);
        }

        v249 = db_create_id_for_value(*v31, "com.apple.xcode.mom");
        if (v249 != -2)
        {
          CFDictionarySetValue(v176, (v249 & 0x7FFFFFFF), 0x49);
        }

        v250 = db_create_id_for_value(*v31, "com.apple.property-list");
        if (v250 != -2)
        {
          CFDictionarySetValue(v176, (v250 & 0x7FFFFFFF), 0x4A);
        }

        v251 = db_create_id_for_value(*v31, "dyn.ah62d4rv4ge81a7dk");
        if (v251 != -2)
        {
          CFDictionarySetValue(v176, (v251 & 0x7FFFFFFF), 0x4B);
        }

        v252 = db_create_id_for_value(*v31, "dyn.ah62d4rv4ge80u5pbsa");
        if (v252 != -2)
        {
          CFDictionarySetValue(v176, (v252 & 0x7FFFFFFF), 0x4C);
        }

        v253 = db_create_id_for_value(*v31, "com.apple.dashcode.xml");
        if (v253 != -2)
        {
          CFDictionarySetValue(v176, (v253 & 0x7FFFFFFF), 0x4D);
        }

        v254 = db_create_id_for_value(*v31, "com.apple.dashcode.css");
        if (v254 != -2)
        {
          CFDictionarySetValue(v176, (v254 & 0x7FFFFFFF), 0x4E);
        }

        v255 = db_create_id_for_value(*v31, "com.apple.dashcode.javascript");
        if (v255 != -2)
        {
          CFDictionarySetValue(v176, (v255 & 0x7FFFFFFF), 0x4F);
        }

        v256 = db_create_id_for_value(*v31, "com.apple.dashcode.json");
        if (v256 != -2)
        {
          CFDictionarySetValue(v176, (v256 & 0x7FFFFFFF), 0x50);
        }

        v257 = db_create_id_for_value(*v31, "com.apple.dashcode.manifest");
        if (v257 != -2)
        {
          CFDictionarySetValue(v176, (v257 & 0x7FFFFFFF), 0x51);
        }

        v258 = db_create_id_for_value(*v31, "com.apple.interfacebuilder.document");
        if (v258 != -2)
        {
          CFDictionarySetValue(v176, (v258 & 0x7FFFFFFF), 0x52);
        }

        v259 = db_create_id_for_value(*v31, "com.apple.interfacebuilder.document.cocoa");
        if (v259 != -2)
        {
          CFDictionarySetValue(v176, (v259 & 0x7FFFFFFF), 0x53);
        }

        v260 = db_create_id_for_value(*v31, "com.apple.rez-source");
        if (v260 != -2)
        {
          CFDictionarySetValue(v176, (v260 & 0x7FFFFFFF), 0x54);
        }

        v261 = db_create_id_for_value(*v31, "com.apple.iphone.developerprofile");
        if (v261 != -2)
        {
          CFDictionarySetValue(v176, (v261 & 0x7FFFFFFF), 0x55);
        }

        v262 = db_create_id_for_value(*v31, "com.apple.iphone.mobileprovision");
        if (v262 != -2)
        {
          CFDictionarySetValue(v176, (v262 & 0x7FFFFFFF), 0x56);
        }

        v263 = db_create_id_for_value(*v31, "com.apple.coreanimation-bundle");
        if (v263 != -2)
        {
          CFDictionarySetValue(v176, (v263 & 0x7FFFFFFF), 0x57);
        }

        v264 = db_create_id_for_value(*v31, "com.apple.coreanimation-xml");
        if (v264 != -2)
        {
          CFDictionarySetValue(v176, (v264 & 0x7FFFFFFF), 0x58);
        }

        v265 = db_create_id_for_value(*v31, "com.sun.java-class");
        if (v265 != -2)
        {
          CFDictionarySetValue(v176, (v265 & 0x7FFFFFFF), 0x59);
        }

        v266 = db_create_id_for_value(*v31, "com.apple.scripting-definition");
        if (v266 != -2)
        {
          CFDictionarySetValue(v176, (v266 & 0x7FFFFFFF), 0x5A);
        }

        v267 = db_create_id_for_value(*v31, "com.apple.dt.document.workspace");
        if (v267 != -2)
        {
          CFDictionarySetValue(v176, (v267 & 0x7FFFFFFF), 0x5B);
        }

        v268 = db_create_id_for_value(*v31, "com.apple.dt.document.scheme");
        if (v268 != -2)
        {
          CFDictionarySetValue(v176, (v268 & 0x7FFFFFFF), 0x5C);
        }

        v269 = db_create_id_for_value(*v31, "com.apple.dt.ide.plug-in");
        if (v269 != -2)
        {
          CFDictionarySetValue(v176, (v269 & 0x7FFFFFFF), 0x5D);
        }

        v270 = db_create_id_for_value(*v31, "com.apple.dt.dvt.plug-in");
        if (v270 != -2)
        {
          CFDictionarySetValue(v176, (v270 & 0x7FFFFFFF), 0x5E);
        }

        v271 = db_create_id_for_value(*v31, "com.apple.dt.document.snapshot");
        if (v271 != -2)
        {
          CFDictionarySetValue(v176, (v271 & 0x7FFFFFFF), 0x5F);
        }

        v272 = db_create_id_for_value(*v31, "com.apple.dt.bundle.unit-test.objective-c");
        if (v272 != -2)
        {
          CFDictionarySetValue(v176, (v272 & 0x7FFFFFFF), 0x60);
        }

        v273 = db_create_id_for_value(*v31, "com.apple.instruments.tracetemplate");
        if (v273 != -2)
        {
          CFDictionarySetValue(v176, (v273 & 0x7FFFFFFF), 0x61);
        }

        v274 = db_create_id_for_value(*v31, "com.apple.quartzdebug.introspectiontrace");
        if (v274 != -2)
        {
          CFDictionarySetValue(v176, (v274 & 0x7FFFFFFF), 0x62);
        }

        v275 = db_create_id_for_value(*v31, "com.apple.applescript.text-object");
        if (v275 != -2)
        {
          CFDictionarySetValue(v176, (v275 & 0x7FFFFFFF), 0x63);
        }

        v276 = db_create_id_for_value(*v31, "com.apple.applescript.data-object");
        if (v276 != -2)
        {
          CFDictionarySetValue(v176, (v276 & 0x7FFFFFFF), 0x64);
        }

        v277 = db_create_id_for_value(*v31, "com.apple.applescript.url-object");
        if (v277 != -2)
        {
          CFDictionarySetValue(v176, (v277 & 0x7FFFFFFF), 0x65);
        }

        v278 = db_create_id_for_value(*v31, "com.apple.applescript.alias-object");
        if (v278 != -2)
        {
          CFDictionarySetValue(v176, (v278 & 0x7FFFFFFF), 0x66);
        }

        v279 = db_create_id_for_value(*v31, "com.apple.symbol-export");
        if (v279 != -2)
        {
          CFDictionarySetValue(v176, (v279 & 0x7FFFFFFF), 0x67);
        }

        v280 = db_create_id_for_value(*v31, "com.apple.mach-o-binary");
        if (v280 != -2)
        {
          CFDictionarySetValue(v176, (v280 & 0x7FFFFFFF), 0x68);
        }

        v281 = db_create_id_for_value(*v31, "com.apple.mach-o-object");
        if (v281 != -2)
        {
          CFDictionarySetValue(v176, (v281 & 0x7FFFFFFF), 0x69);
        }

        v282 = db_create_id_for_value(*v31, "com.apple.mach-o-executable");
        if (v282 != -2)
        {
          CFDictionarySetValue(v176, (v282 & 0x7FFFFFFF), 0x6A);
        }

        v283 = db_create_id_for_value(*v31, "com.apple.x11-mach-o-executable");
        if (v283 != -2)
        {
          CFDictionarySetValue(v176, (v283 & 0x7FFFFFFF), 0x6B);
        }

        v284 = db_create_id_for_value(*v31, "public.object-code");
        if (v284 != -2)
        {
          CFDictionarySetValue(v176, (v284 & 0x7FFFFFFF), 0x6C);
        }

        v285 = db_create_id_for_value(*v31, "com.microsoft.windows-executable");
        if (v285 != -2)
        {
          CFDictionarySetValue(v176, (v285 & 0x7FFFFFFF), 0x6D);
        }

        v286 = db_create_id_for_value(*v31, "com.microsoft.windows-dynamic-link-library");
        if (v286 != -2)
        {
          CFDictionarySetValue(v176, (v286 & 0x7FFFFFFF), 0x6E);
        }

        v287 = db_create_id_for_value(*v31, "com.sun.java-archive");
        if (v287 != -2)
        {
          CFDictionarySetValue(v176, (v287 & 0x7FFFFFFF), 0x6F);
        }

        v288 = db_create_id_for_value(*v31, "com.sun.web-application-archive");
        if (v288 != -2)
        {
          CFDictionarySetValue(v176, (v288 & 0x7FFFFFFF), 0x70);
        }

        v289 = db_create_id_for_value(*v31, "com.apple.xcode.plugindata");
        if (v289 != -2)
        {
          CFDictionarySetValue(v176, (v289 & 0x7FFFFFFF), 0x71);
        }

        v290 = db_create_id_for_value(*v31, "com.apple.dt.playground");
        if (v290 != -2)
        {
          CFDictionarySetValue(v176, (v290 & 0x7FFFFFFF), 0x72);
        }

        v291 = db_create_id_for_value(*v31, "com.apple.iwork.numbers.sffnumbers");
        if (v291 != -2)
        {
          CFDictionarySetValue(v176, (v291 & 0x7FFFFFFF), 0x73);
        }

        v292 = db_create_id_for_value(*v31, "com.apple.iwork.numbers.numbers");
        if (v292 != -2)
        {
          CFDictionarySetValue(v176, (v292 & 0x7FFFFFFF), 0x74);
        }

        v293 = db_create_id_for_value(*v31, "com.apple.iwork.numbers.template");
        if (v293 != -2)
        {
          CFDictionarySetValue(v176, (v293 & 0x7FFFFFFF), 0x75);
        }

        v294 = db_create_id_for_value(*v31, "com.microsoft.excel.xls");
        if (v294 != -2)
        {
          CFDictionarySetValue(v176, (v294 & 0x7FFFFFFF), 0x76);
        }

        v295 = db_create_id_for_value(*v31, "org.openxmlformats.spreadsheetml.sheet");
        if (v295 != -2)
        {
          CFDictionarySetValue(v176, (v295 & 0x7FFFFFFF), 0x77);
        }

        v296 = db_create_id_for_value(*v31, "public.spreadsheet");
        if (v296 != -2)
        {
          CFDictionarySetValue(v176, (v296 & 0x7FFFFFFF), 0x78);
        }

        v297 = db_create_id_for_value(*v31, "public.xml");
        if (v297 != -2)
        {
          CFDictionarySetValue(v176, (v297 & 0x7FFFFFFF), 0x79);
        }

        v298 = db_create_id_for_value(*v31, "com.apple.log");
        if (v298 != -2)
        {
          CFDictionarySetValue(v176, (v298 & 0x7FFFFFFF), 0x7A);
        }

        v299 = db_create_id_for_value(*v31, "com.apple.crashreport");
        if (v299 != -2)
        {
          CFDictionarySetValue(v176, (v299 & 0x7FFFFFFF), 0x7B);
        }

        v300 = db_create_id_for_value(*v31, "com.apple.spinreport");
        if (v300 != -2)
        {
          CFDictionarySetValue(v176, (v300 & 0x7FFFFFFF), 0x7C);
        }

        v301 = db_create_id_for_value(*v31, "com.apple.panicreport");
        if (v301 != -2)
        {
          CFDictionarySetValue(v176, (v301 & 0x7FFFFFFF), 0x7D);
        }

        v302 = db_create_id_for_value(*v31, "com.apple.shutdownstall");
        if (v302 != -2)
        {
          CFDictionarySetValue(v176, (v302 & 0x7FFFFFFF), 0x7E);
        }

        v303 = db_create_id_for_value(*v31, "com.apple.hangreport");
        if (v303 != -2)
        {
          CFDictionarySetValue(v176, (v303 & 0x7FFFFFFF), 0x7F);
        }

        v304 = db_create_id_for_value(*v31, "public.json");
        if (v304 != -2)
        {
          CFDictionarySetValue(v176, (v304 & 0x7FFFFFFF), 0x80);
        }

        v305 = db_create_id_for_value(*v31, "public.log");
        if (v305 != -2)
        {
          CFDictionarySetValue(v176, (v305 & 0x7FFFFFFF), 0x81);
        }

        v306 = db_create_id_for_value(*v31, "public.content");
        if (v306 != -2)
        {
          CFDictionarySetValue(v176, (v306 & 0x7FFFFFFF), 0x82);
        }

        v307 = db_create_id_for_value(*v31, "com.microsoft.excel.sheet.binary.macroenabled");
        if (v307 != -2)
        {
          CFDictionarySetValue(v176, (v307 & 0x7FFFFFFF), 0x83);
        }

        v308 = db_create_id_for_value(*v31, "org.openxmlformats.spreadsheetml.sheet.macroenabled");
        if (v308 != -2)
        {
          CFDictionarySetValue(v176, (v308 & 0x7FFFFFFF), 0x84);
        }

        v309 = db_create_id_for_value(*v31, "com.apple.protected-mpeg-4-audio-b");
        if (v309 != -2)
        {
          CFDictionarySetValue(v176, (v309 & 0x7FFFFFFF), 0x85);
        }

        v310 = db_create_id_for_value(*v31, "com.audible.aa-audiobook");
        if (v310 != -2)
        {
          CFDictionarySetValue(v176, (v310 & 0x7FFFFFFF), 0x86);
        }

        v311 = db_create_id_for_value(*v31, "com.audible.aax-audiobook");
        if (v311 != -2)
        {
          CFDictionarySetValue(v176, (v311 & 0x7FFFFFFF), 0x87);
        }

        v312 = db_create_id_for_value(*v31, "com.apple.tips");
        if (v312 != -2)
        {
          CFDictionarySetValue(v176, (v312 & 0x7FFFFFFF), 0x88);
        }

        v313 = db_create_id_for_value(*v31, "com.apple.helpviewer");
        if (v313 != -2)
        {
          CFDictionarySetValue(v176, (v313 & 0x7FFFFFFF), 0x89);
        }

        v314 = db_create_id_for_value(*v31, "com.apple.help.topic");
        if (v314 != -2)
        {
          CFDictionarySetValue(v176, (v314 & 0x7FFFFFFF), 0x8A);
        }

        *(a1 + 6608) = CFDictionaryCreateCopy(v175, v176);
        CFRelease(v176);
      }

      v315 = "kMDItemPhysicalSize";
    }

    *(a1 + 2012) = db_create_id_for_field(*(a1 + 1192), v315, 0x300u, 7);
    id_for_field = db_create_id_for_field(*(a1 + 1192), "kMDItemWhereFroms", 0x220u, 11);
  }

  *(a1 + 2028) = id_for_field;
  v317 = *(a1 + 1192);
  if (*v317 != 1685287992)
  {
    v344 = *__error();
    v345 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v345, OS_LOG_TYPE_ERROR))
    {
      v346 = *v317;
      *buf = 136315650;
      v369 = "db_create_static_strings";
      v370 = 1024;
      v371 = 436;
      v372 = 1024;
      v373 = v346;
      _os_log_error_impl(&dword_1C278D000, v345, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v344;
    v347 = __si_assert_copy_extra_332();
    v337 = v347;
    v348 = "";
    if (v347)
    {
      v348 = v347;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 436, v348);
    goto LABEL_631;
  }

  v318 = v317[201];
  *buf = 18959;
  v317[234] = _get_id_for_string(v317, 0, "kMDItemLanguages", 16, ((v318 >> 3) & 1) == 0, buf);
  v319 = v317[201];
  if ((v319 & 4) != 0)
  {
    v320 = 17167;
  }

  else
  {
    v320 = -15601;
  }

  *buf = v320;
  v317[235] = _get_id_for_string(v317, 0, "kMDItemKind", 11, ((v319 >> 3) & 1) == 0, buf);
  v321 = v317[201];
  if ((v321 & 4) != 0)
  {
    v322 = 17163;
  }

  else
  {
    v322 = -15605;
  }

  *buf = v322;
  v317[236] = _get_id_for_string(v317, 0, "kMDItemDisplayName", 18, ((v321 >> 3) & 1) == 0, buf);
  v323 = v317[201];
  if ((v323 & 4) != 0)
  {
    v324 = 779;
  }

  else
  {
    v324 = -31989;
  }

  *buf = v324;
  v317[237] = _get_id_for_string(v317, 0, "kMDItemKeywords", 15, ((v323 >> 3) & 1) == 0, buf);
  v325 = v317[201];
  if ((v325 & 4) != 0)
  {
    v326 = 779;
  }

  else
  {
    v326 = -31989;
  }

  *buf = v326;
  v317[238] = _get_id_for_string(v317, 0, "com_apple_system_prefs_keywords", 31, ((v325 >> 3) & 1) == 0, buf);
  v327 = v317[201];
  if ((v327 & 4) != 0)
  {
    v328 = 783;
  }

  else
  {
    v328 = -31985;
  }

  *buf = v328;
  v317[239] = _get_id_for_string(v317, 0, "kMDItemKeywords", 15, ((v327 >> 3) & 1) == 0, buf);
  v329 = v317[201];
  if ((v329 & 4) != 0)
  {
    v330 = 783;
  }

  else
  {
    v330 = -31985;
  }

  *buf = v330;
  v317[240] = _get_id_for_string(v317, 0, "com_apple_system_prefs_keywords", 31, ((v329 >> 3) & 1) == 0, buf);
  *(a1 + 2016) = db_create_id_for_field(*(a1 + 1192), "kMDItemDisplayName", 0x12A0u, 11);
  *(a1 + 2020) = db_create_id_for_field(*(a1 + 1192), "kMDItemLanguages", 0x330u, 11);
  *(a1 + 2036) = db_create_id_for_field(*(a1 + 1192), "kMDItemRecipientEmailAddresses", 0x220u, 11);
  *(a1 + 2040) = db_create_id_for_field(*(a1 + 1192), "kMDItemPrimaryRecipientEmailAddresses", 0x4320u, 11);
  *(a1 + 2044) = db_create_id_for_field(*(a1 + 1192), "kMDItemAdditionalRecipientEmailAddresses", 0x4320u, 11);
  *(a1 + 2048) = db_create_id_for_field(*(a1 + 1192), "kMDItemHiddenAdditionalRecipientEmailAddresses", 0x4320u, 11);
  *(a1 + 2052) = db_create_id_for_field(*(a1 + 1192), "_kMDItemDisplayNameWithExtensions", 0x228u, 11);
  v331 = threadData[9 * v363 + 1] + 320 * v362;
  *(v331 + 312) = v349;
  v332 = *(v331 + 232);
  if (v332)
  {
    v332(*(v331 + 288));
  }

  dropThreadId(v363, 0, v350 + 1);
  v14 = MEMORY[0x1E695E480];
LABEL_617:
  v333 = *v14;
  *(a1 + 1800) = CFBagCreateMutable(*v14, 64, MEMORY[0x1E695E9D0]);
  *(a1 + 1808) = CFDictionaryCreateMutable(v333, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = pthread_mutex_init((a1 + 1816), 0);
  v335 = *MEMORY[0x1E69E9840];
  return result;
}

const void *SICopyProperty(uint64_t a1, const void *a2)
{
  if (a1 && *(a1 + 1192))
  {
    pthread_mutex_lock((a1 + 1504));
    v4 = *(a1 + 1496);
    if (!v4)
    {
      if (!si_create_propertydict(a1, 0, 0))
      {
        v6 = 0;
LABEL_10:
        pthread_mutex_unlock((a1 + 1504));
        return v6;
      }

      v4 = *(a1 + 1496);
    }

    Value = CFDictionaryGetValue(v4, a2);
    v6 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t __SIInitIndex_block_invoke_1107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(*(a1 + 32) + 8);
  if ((v2 + 1) > *(v3 + 24))
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = *(v3 + 24);
  }

  *(v3 + 24) = v4;
  return 1;
}

uint64_t __SIInitIndex_block_invoke_1116(uint64_t a1)
{
  SIInitIndex_override = 0;
  SIInitIndex_lowLatency = *(*(a1 + 32) + 6587) & 1;
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"LOW_LATENCY", @"com.apple.SpotlightServer", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    SIInitIndex_lowLatency = result != 0;
    SIInitIndex_override = 1;
  }

  return result;
}

void si_getsizes(uint64_t a1, int a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1192))
  {
    indexmetadata = si_create_indexmetadata(a1, 1);
    if (indexmetadata)
    {
      v55 = 0;
      __src = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v6 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
      v54 = v6;
      v7 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
      v52 = v8;
      v53 = HIDWORD(v6);
      v51 = v9;
      *(v7 + 216) = 0;
      v10 = *(v7 + 312);
      v11 = *(v7 + 224);
      if (v11)
      {
        v11(*(v7 + 288));
      }

      if (_setjmp(v7))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v7 + 312) = v10;
        CIOnThreadCleanUpReset(v51);
        v12 = 1;
        dropThreadId(v54, 1, add_explicit + 1);
        CICleanUpReset(v54, v52);
      }

      else
      {
        if (db_get_field(*(a1 + 1192), indexmetadata, "kMDStoreAccumulatedSizes", &v55, &__src))
        {
          v15 = *__error();
          v16 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *v58 = "si_getsizes";
            *&v58[8] = 1024;
            *&v58[10] = 1307;
            _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: Failed to get kMDStoreAccumulatedSizes", buf, 0x12u);
          }

          v17 = 0;
          *__error() = v15;
        }

        else
        {
          if (*(a1 + 2072))
          {
            v18 = 256;
          }

          else
          {
            v18 = 22;
          }

          v19 = *(v55 + 8);
          if (v19 <= 8 * v18)
          {
            memcpy((a1 + 7040), __src, v19);
            v20 = 0;
            v21 = v18;
            v22 = (a1 + 7048);
            v23 = 0;
            v24 = 1;
            *&v25 = 67109376;
            v26 = dword_1EBF46AE8;
            do
            {
              v27 = v26;
              if (v26 >= 5)
              {
                v49 = v25;
                *type = v20;
                v46 = *__error();
                log = _SILogForLogForCategory(7);
                if (os_log_type_enabled(log, type[0]))
                {
                  v30 = *v22;
                  *buf = v49;
                  *v58 = v24;
                  *&v58[4] = 2048;
                  *&v58[6] = v30;
                  _os_log_impl(&dword_1C278D000, log, type[0], "Size %d: %lld", buf, 0x12u);
                }

                *__error() = v46;
                v27 = dword_1EBF46AE8;
                v20 = *type;
                v25 = v49;
              }

              v26 = v27;
              v28 = *v22++;
              v29 = (v28 < 0) | v23;
              v23 |= v28 < 0;
              ++v24;
            }

            while (v21 != v24);
            v17 = v29 ^ 1;
          }

          else
          {
            v17 = 0;
          }
        }

        if (db_get_field(*(a1 + 1192), indexmetadata, "kMDStoreAccumulatedCounts", &v55, &__src))
        {
          v31 = *__error();
          v32 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *v58 = "si_getsizes";
            *&v58[8] = 1024;
            *&v58[10] = 1328;
            _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: Failed to get kMDStoreAccumulatedCounts", buf, 0x12u);
          }

          v12 = 0;
          *__error() = v31;
        }

        else
        {
          if (*(a1 + 2072))
          {
            v33 = 256;
          }

          else
          {
            v33 = 22;
          }

          v34 = *(v55 + 8);
          if (v34 <= 4 * v33)
          {
            memcpy((a1 + 9088), __src, v34);
            v35 = dword_1EBF46AE8;
            v36 = (a1 + 9092);
            v37 = 1;
            *&v38 = 67109376;
            do
            {
              v39 = v35;
              if (v35 >= 5)
              {
                v48 = v38;
                v47 = *__error();
                v45 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = *v36;
                  *buf = v48;
                  *v58 = v37;
                  *&v58[4] = 1024;
                  *&v58[6] = v40;
                  _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "Count %d: %d", buf, 0xEu);
                }

                *__error() = v47;
                v39 = dword_1EBF46AE8;
                v38 = v48;
              }

              v35 = v39;
              ++v37;
              ++v36;
            }

            while (v33 != v37);
            v12 = v17;
          }

          else
          {
            v12 = 0;
          }
        }

        v41 = threadData[9 * v54 + 1] + 320 * v53;
        *(v41 + 312) = v10;
        v42 = *(v41 + 232);
        if (v42)
        {
          v42(*(v41 + 288));
        }

        dropThreadId(v54, 0, add_explicit + 1);
      }
    }

    else
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v58 = "si_getsizes";
        *&v58[8] = 1024;
        *&v58[10] = 1334;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Failed to get metadata dbo", buf, 0x12u);
      }

      v12 = 0;
      *__error() = v13;
    }

    free(indexmetadata);
    if (a2 && (v12 & 1) == 0)
    {
      _SIRecomputeSizesWithCallback(a1, 0, &__block_literal_global_9005);
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

void si_inflateLeakedRemapping(uint64_t a1, char a2, uint64_t a3, __CFArray *a4)
{
  v8 = CIDecodeRemappingMetadataWithIndex(*(a1 + 32), 0, a3);
  if (v8)
  {
    v9 = v8;
    CFArrayAppendValue(a4, v8);
    if ((a2 & 1) == 0)
    {
      v10 = ContentIndexRemappingNextDocId(v9, &v12);
      v11 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
      *v11 = a1;
      v11[1] = si_indexForDocId(a1, v10);
      v11[2] = CFRetain(v9);
      if (v11[1])
      {
        si_enqueue_work(*(a1 + 1064), si_remapForIndex, v11);
      }

      else
      {
        free(v11);
      }
    }

    CFRelease(v9);
    *(a1 + 2384) = a3 + 1;
  }
}

void si_populateClientStates(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1192))
  {
    if (*(a1 + 2072) == 1)
    {
      v2 = *(a1 + 2088);
      if (v2)
      {
        Count = CFDictionaryGetCount(*(a1 + 2088));
        v20 = &v20;
        MEMORY[0x1EEE9AC00](Count);
        v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v5, v4);
        CFDictionaryGetKeysAndValues(v2, v5, 0);
        if (Count >= 1)
        {
          v6 = 0;
          v22 = *MEMORY[0x1E695E480];
          v7 = "_kMDItemStateInfo_";
          do
          {
            v8 = *&v5[8 * v6];
            v23 = 0;
            if (CFStringCompare(v8, @"com.apple.searchd", 1uLL) && !si_get_object_for_identifier_createParentDBO(a1, @"com.apple.searchd", v8, 0, 0, 0, &v23, 0))
            {
              v9 = v23;
              v26 = 0;
              v24 = 0;
              v25 = 0;
              if (!db_get_field(*(a1 + 1192), v23, "_kMDItemExternalID", &v24, &v25))
              {
                v10 = CFStringCreateWithCString(v22, v25, 0x8000100u);
                if (v10)
                {
                  v21 = v10;
                  clientstates_dict = si_get_clientstates_dict(a1, v10);
                  while (db_next_field(*(a1 + 1192), v9, 0, &v26, &v25, &v24) == 35)
                  {
                    if (*v24 == 14)
                    {
                      v12 = v25;
                      if (!strncmp(v7, v25, 0x11uLL))
                      {
                        v13 = v22;
                        v14 = CFStringCreateWithCString(v22, v12, 0x8000100u);
                        v15 = CFDataCreate(v13, (v24 + 13), *(v24 + 8));
                        v16 = v7;
                        v17 = v15;
                        CFDictionarySetValue(clientstates_dict, v14, v15);
                        v18 = v17;
                        v7 = v16;
                        CFRelease(v18);
                        CFRelease(v14);
                      }
                    }
                  }

                  CFRelease(v21);
                }
              }

              free(v23);
            }

            ++v6;
          }

          while (v6 != Count);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

BOOL si_check_version_property(uint64_t a1, const void *a2)
{
  v2 = SICopyProperty(a1, a2);
  if (v2)
  {
    v3 = v2;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      valuePtr = 0;
      CFNumberGetValue(v3, kCFNumberCFIndexType, &valuePtr);
      CFRelease(v3);
      return valuePtr != 5;
    }

    CFRelease(v3);
  }

  return 1;
}

uint64_t si_playbackJournal(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = a2;
  v65 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2072) == 1)
  {
    v6 = malloc_type_calloc(1uLL, 0x80uLL, 0x10F004037D4A986uLL);
    v7 = v6;
    if (v6)
    {
      *(v6 + 2) = -1;
      atomic_store(1u, v6);
      if (v3)
      {
        atomic_fetch_add_explicit(v3 + 8, 1u, memory_order_relaxed);
      }

      *(v6 + 1) = v3;
      *(v6 + 3) = fd_lseek(v3, 0, 2);
      v8 = a1;
      v9 = v7;
    }

    else
    {
      v8 = a1;
      v9 = 0;
    }

    v39 = preparseMobileJournal(v8, v9, a3);
    si_sync_ctx_create_with_defer_fd(a1, 0);
    atomic_fetch_add(journalsEnqueued, 1u);
    v41 = v40[11];
    if (v41 <= v39 + 1)
    {
      v41 = v39 + 1;
    }

    v40[11] = v41;
    if (v3)
    {
      atomic_fetch_add_explicit(v3 + 8, 1u, memory_order_relaxed);
    }

    v40[8] = v3;
    v40[5] = si_playbackSyncFinished;
    v40[6] = v7;
    si_enqueue_work_with_qos(*(a1 + 1104), 9, si_sync_index_delayed0, v40);
    goto LABEL_85;
  }

  v61 = 0;
  v10 = _fd_acquire_fd(a2, &v61);
  if (v10 < 0)
  {
    goto LABEL_84;
  }

  __fd = v10;
  v11 = malloc_type_malloc(0x100000uLL, 0x32A7867uLL);
  v12 = __fd;
  memset(&v60, 0, sizeof(v60));
  fstat(__fd, &v60);
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v15 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = v15;
  v55[0] = Mutable;
  v55[1] = v15;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  st_size = v60.st_size;
  if (!v60.st_size)
  {
    v54 = 0;
    v35 = 0;
    v52 = 0;
    v17 = 0;
    goto LABEL_75;
  }

  v47 = v15;
  v48 = Mutable;
  v49 = v11;
  v50 = v3;
  v17 = 0;
  v18 = 0;
  v54 = 0;
  v19 = 0x100000;
  if (v60.st_size >= 0x100000uLL)
  {
    v20 = 0x100000;
  }

  else
  {
    v20 = v60.st_size;
  }

  v52 = 1;
  v21 = v11;
  while (2)
  {
    if (pread(v12, v21, v20, v18) < 1 || (v22 = v20 + v18, v54 = v20 + v18, v18 + 12 > v20 + v18))
    {
      v52 = 0;
      v35 = v18;
      goto LABEL_74;
    }

    v23 = v18;
    v51 = v18;
    v24 = v18;
    while (1)
    {
      v25 = &v21[v23 - v24];
      v27 = *v25;
      v26 = *(v25 + 1);
      if (*v25 == -262275347 || v27 == -267518227)
      {
        break;
      }

      if (v27 == -266469651)
      {
        goto LABEL_28;
      }

      if (v27 != -263323923)
      {
        if (v27 != -265421075)
        {
          goto LABEL_70;
        }

LABEL_28:
        v35 = v26 + 12 + v23;
        if (v35 > v60.st_size || v26 + 12 > v19)
        {
          goto LABEL_69;
        }

        if (v35 > v22)
        {
          goto LABEL_56;
        }

        v33 = *(v25 + 2);
        if (v26 != 8 * v33)
        {
          goto LABEL_69;
        }

        memset(buf, 0, sizeof(buf));
        if (v33)
        {
          v34 = (v25 + 12);
          do
          {
            if ((pushMove(buf, *v34) & 1) == 0)
            {
              flushPlaybackPossibleMoves(a1, buf, v27 == -266469651);
              pushMove(buf, *v34);
            }

            ++v34;
            --v33;
          }

          while (v33);
        }

        flushPlaybackPossibleMoves(a1, buf, v27 == -266469651);
        if (*buf)
        {
          munmap(*buf, 16 * *MEMORY[0x1E69E9AC8]);
        }

LABEL_42:
        v22 = v54;
        goto LABEL_43;
      }

      v35 = v26 + 12 + v23;
      if (v35 > v60.st_size || v26 + 12 > v19)
      {
        goto LABEL_69;
      }

      if (v35 > v22)
      {
        goto LABEL_56;
      }

      if (*(v25 + 2) != 2 || v26 != 16)
      {
LABEL_69:
        v52 = 0;
LABEL_70:
        v35 = v23;
        v11 = v49;
        v3 = v50;
        v16 = v47;
        Mutable = v48;
        v12 = __fd;
        goto LABEL_75;
      }

      v37 = *(v25 + 12);
      if (v37 >= 3)
      {
        v38 = *(v25 + 20);
        if (v38 >= 3)
        {
          SITransferAttributes(a1, v37, v38, 0, 0, 0);
        }

        goto LABEL_42;
      }

LABEL_43:
      ++v17;
      v23 = v35;
      if (v35 + 12 > v22)
      {
        goto LABEL_57;
      }
    }

    v29 = v23 + v26 + 12;
    if (v29 > v60.st_size)
    {
      goto LABEL_69;
    }

    if (v29 <= v22)
    {
      v30 = v26 + 12;
      if (v26 + 12 > v19)
      {
        v31 = malloc_type_realloc(v21, v26 + 12, 0x10000403E1C8BA9uLL);
        v19 = malloc_size(v31);
        pread(__fd, v31, v19, v23);
        v24 = v23;
        v21 = v31;
      }

      si_playbackRecord(a1);
      v35 = v30 + v23;
      goto LABEL_42;
    }

LABEL_56:
    v35 = v23;
LABEL_57:
    v12 = __fd;
    if (v35 != v51)
    {
      if (v19 >= (v60.st_size - v35))
      {
        v20 = v60.st_size - v35;
      }

      else
      {
        v20 = v19;
      }

      v18 = v35;
      if (!v20)
      {
        v52 = 0;
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  v52 = 0;
  v35 = v51;
LABEL_74:
  v11 = v49;
  v3 = v50;
  v16 = v47;
  Mutable = v48;
LABEL_75:
  si_queue_playback(a1, v55, 0);
  _fd_release_fd(v3, v12, 0, v61);
  v42 = *__error();
  v43 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = v17;
    *&buf[12] = 2048;
    *&buf[14] = v52;
    *&buf[22] = 2048;
    *&buf[24] = v35;
    v63 = 2048;
    v64 = v54;
    _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "Played back %ld records (skipped %ld), read %lld/%lld bytes", buf, 0x2Au);
  }

  *__error() = v42;
  si_sync_ctx_create_with_defer_fd(a1, 0);
  atomic_fetch_add(journalsEnqueued, 1u);
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 8, 1u, memory_order_relaxed);
  }

  *(v44 + 64) = v3;
  si_enqueue_work_with_qos(*(a1 + 1104), 9, si_sync_index_delayed0, v44);
  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(v11);
LABEL_84:
  v39 = -1;
LABEL_85:
  v45 = *MEMORY[0x1E69E9840];
  return v39;
}

void __SIInitIndex_block_invoke_1123(uint64_t a1, int a2)
{
  if (!a2)
  {
    db_set_ignore_vectors(*(*(a1 + 32) + 1192), a2);
    v4 = *(a1 + 32);

    _si_set_version_property(v4, @"VEC_EXT_CLEARED_JOURNALS", 1);
  }
}

CFPropertyListRef si_read_clientstates_file(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2072) != 1)
  {
    goto LABEL_13;
  }

  v1 = fd_create_protected(*(a1 + 32), "clientstatesmetafile", 0x20000000, 3u);
  if (v1)
  {
    v2 = v1;
    v3 = fd_lseek(v1, 0, 2);
    if (v3)
    {
      v4 = v3;
      v5 = fd_mmap(v2);
      if (v5 != -1)
      {
        v6 = v5;
        v7 = *MEMORY[0x1E695E480];
        v8 = CFDataCreate(*MEMORY[0x1E695E480], v5, v4);
        if (v8)
        {
          v9 = v8;
          v10 = CFPropertyListCreateWithData(v7, v8, 0, 0, 0);
          CFRelease(v9);
        }

        else
        {
          v10 = 0;
        }

        munmap(v6, v4);
        fd_release(v2);
        goto LABEL_14;
      }

      v13 = *__error();
      v14 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = __error();
        v20 = strerror(*v19);
        v21 = 136315650;
        v22 = "si_read_clientstates_file";
        v23 = 1024;
        v24 = 5359;
        v25 = 2080;
        v26 = v20;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: si_read_clientstates_file: mmap failed: %s", &v21, 0x1Cu);
      }

      *__error() = v13;
      fd_release(v2);
LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }
  }

  v11 = *__error();
  v12 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v17 = __error();
    v18 = strerror(*v17);
    v21 = 136315650;
    v22 = "si_read_clientstates_file";
    v23 = 1024;
    v24 = 5365;
    v25 = 2080;
    v26 = v18;
    _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: si_read_clientstates_file: open client state meta file failed: %s", &v21, 0x1Cu);
  }

  v10 = 0;
  *__error() = v11;
LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

void __SIInitIndex_block_invoke_1125(uint64_t a1)
{
  valuePtr = 2;
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  SISetProperty(*(a1 + 32), @"YukonRecomputedSizes", v2);
  CFRelease(v2);
}

void resumeHoldQueue(dispatch_object_t object)
{
  if (object)
  {
    dispatch_resume(object);
  }
}

uint64_t IntPtrCFCompare(uint64_t a1, uint64_t a2)
{
  if (a1 < a2)
  {
    return -1;
  }

  else
  {
    return a1 > a2;
  }
}

uint64_t preparseMobileJournal(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v219 = a3;
  v3 = a2;
  v244 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 2136);
  v218 = *(a2 + 24);
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v242[0] = a1;
  v242[1] = v3;
  v8 = os_transaction_create();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sJournalExceptionCallbacks, v242, 0x40000000, add_explicit + 1);
  v241 = v10;
  v11 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v239 = v12;
  v240 = HIDWORD(v10);
  v238 = v13;
  *(v11 + 216) = 0;
  v14 = *(v11 + 312);
  v15 = *(v11 + 224);
  if (v15)
  {
    v15(*(v11 + 288));
  }

  v237 = v241;
  v236 = v240;
  v235 = v239;
  v234 = v238;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v11 + 312) = v14;
    CIOnThreadCleanUpReset(v234);
    dropThreadId(v237, 1, add_explicit + 1);
    CICleanUpReset(v237, v235);
    v16 = -1;
    goto LABEL_206;
  }

  if (!v218 || (v222 = v218, si_mobile_journal_map_activate(v3), v214 = *(v3 + 16), v214 == -1))
  {
    v16 = -1;
    v25 = v8;
    goto LABEL_203;
  }

  v223 = v8;
  v224 = v5;
  v225 = v14;
  v226 = add_explicit;
  v221 = Mutable;
  if (v218 <= 0xB)
  {
    v19 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
    v20 = -1;
    v21 = -1;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_196;
  }

  v212 = v6;
  v211 = -263323923;
  v213 = 0;
  v26 = -1;
  *&v17 = 136316418;
  v210 = v17;
  v209 = 4030594797;
  *&v17 = 136315906;
  v208 = v17;
  *&v17 = 136316930;
  *&v18 = 136316930;
  v207 = v18;
  v206 = v18;
  v205 = v18;
  v204 = v17;
  *&v17 = 136316418;
  v203 = v17;
  v27 = -1;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v220 = v3;
  while (1)
  {
    v31 = v29;
    v32 = v28;
    v33 = v30;
    v215 = v26;
    v34 = v214 + v29;
    v35 = v214 + v29;
    v36 = *(v214 + v29);
    v233 = v213;
    HIDWORD(v38) = v36 + 264306963;
    LODWORD(v38) = v36 + 264306963;
    v37 = v38 >> 20;
    if (v37 <= 1)
    {
      if (!v37)
      {
        v87 = v2_readVInt64(v34 + 12, &v233);
        if (v27 == -1)
        {
          v88 = v87;
        }

        else
        {
          v88 = v27;
        }

        v89 = v87;
        v90 = v88;
LABEL_60:
        v91 = v31;
        v27 = v90;
        v92 = *(v34 + 4);
        if (v92 > 0xFFFFFFF3 || (v93 = v92 + v91 + 12, v218 < v93))
        {
          v153 = v33;
          v154 = v32;
          v155 = *__error();
          v156 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "preparseMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5551;
            *&buf[18] = 2048;
            *&buf[20] = 4030594797;
            *&buf[28] = 2048;
            *&buf[30] = v92;
            *&buf[38] = 2048;
            *&buf[40] = v91;
            *&buf[48] = 2048;
            *&buf[50] = v222;
            _os_log_error_impl(&dword_1C278D000, v156, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
          }

          *__error() = v155;
          v23 = v91;
          v136 = v154;
          goto LABEL_187;
        }

        v195 = *(v34 + 4);
        if (v92 <= v233)
        {
          goto LABEL_70;
        }

        v232 = v213;
        v230 = v213;
        v229 = v213;
        v231 = v213;
        _MDPlistGetRootPlistObjectFromBytesWithError();
        if (v213)
        {
          v153 = v33;
          v183 = v32;
          v184 = *__error();
          v185 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316674;
            *&buf[4] = "preparseMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5564;
            *&buf[18] = 2048;
            *&buf[20] = v232;
            *&buf[28] = 2048;
            *&buf[30] = 4030594797;
            *&buf[38] = 2048;
            *&buf[40] = v195;
            *&buf[48] = 2048;
            *&buf[50] = v91;
            *&buf[58] = 2048;
            *&buf[60] = v222;
            _os_log_error_impl(&dword_1C278D000, v185, OS_LOG_TYPE_ERROR, "%s:%d: PlistContainer 1 errorCode:%08llx magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x44u);
          }

          *__error() = v184;
          v23 = v91;
          *v219 = 1;
          v136 = v183;
LABEL_187:
          v101 = v153;
          v60 = v215;
          v135 = v27;
          goto LABEL_195;
        }

        memset(buf, 0, 24);
        if (!_MDPlistArrayGetCount() || (*buf = v213, *&buf[8] = v213, *&buf[16] = v213, _MDPlistArrayGetPlistObjectAtIndex(), v227 = *buf, v228 = *&buf[16], (v94 = _MDPlistContainerCopyObject()) == 0))
        {
LABEL_70:
          v98 = v33;
          v99 = *__error();
          v100 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            *buf = v210;
            *&buf[4] = "preparseMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5575;
            *&buf[18] = 2048;
            *&buf[20] = v209;
            *&buf[28] = 2048;
            *&buf[30] = v195;
            *&buf[38] = 2048;
            *&buf[40] = v91;
            *&buf[48] = 2048;
            *&buf[50] = v222;
            _os_log_error_impl(&dword_1C278D000, v100, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry - nil bundleID, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
          }

          *__error() = v99;
          v60 = v215;
          if (v89 && v215 && v89 < v215)
          {
            ++v32;
            v101 = v98;
          }

          else
          {
            atomic_fetch_add_explicit(&gEnqueuedSize, v195, memory_order_relaxed);
            if (v215 <= v89)
            {
              v60 = v89;
            }

            v101 = v98 + 1;
          }

          goto LABEL_154;
        }

        v95 = v33;
        v96 = v94;
        v97 = v215;
        if (v89 && v215 && v89 < v215)
        {
          ++v32;
        }

        else
        {
          atomic_fetch_add_explicit(&gEnqueuedSize, v195, memory_order_relaxed);
          if (v215 <= v89)
          {
            v127 = v89;
          }

          else
          {
            v127 = v215;
          }

          v128 = v95 + 1;
          CFSetAddValue(v221, v96);
          v97 = v127;
          v95 = v128;
        }

        v129 = v95;
        v130 = v97;
        CFRelease(v96);
        v101 = v129;
LABEL_180:
        v60 = v130;
        goto LABEL_154;
      }

      if (v37 == 1)
      {
        v41 = 36;
        v39 = v211;
LABEL_24:
        v42 = v2_readVInt64(v34 + v41, &v233);
        if (v27 == -1)
        {
          v27 = v42;
        }

        v43 = v42;
        goto LABEL_27;
      }
    }

    else
    {
      switch(v37)
      {
        case 2:
          v39 = -261161235;
          v40 = 18;
          goto LABEL_23;
        case 4:
          v39 = -262275347;
          v40 = 36;
          goto LABEL_23;
        case 5:
          v39 = -259064083;
          v40 = 24;
LABEL_23:
          v41 = v40;
          goto LABEL_24;
      }
    }

    v39 = v36;
    v89 = 0;
    v90 = v27;
    v43 = 0;
    if (v36 == -264372499)
    {
      goto LABEL_60;
    }

LABEL_27:
    v44 = v43;
    if ((v39 & 0xFFEFFFFF) == 0xF04DFEED)
    {
      v202 = v27;
      v45 = *(v34 + 4);
      if ((v45 + 12) < 0x24 || v218 < v31 + (v45 + 12))
      {
        v149 = v31;
        v59 = v32;
        v150 = *__error();
        v151 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "preparseMobileJournal";
          *&buf[12] = 1024;
          *&buf[14] = 5600;
          *&buf[18] = 2048;
          *&buf[20] = v39;
          *&buf[28] = 2048;
          *&buf[30] = v45;
          *&buf[38] = 2048;
          *&buf[40] = v149;
          *&buf[48] = 2048;
          *&buf[50] = v222;
          _os_log_error_impl(&dword_1C278D000, v151, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
        }

        v152 = __error();
        v135 = v202;
        *v152 = v150;
        v23 = v149;
LABEL_194:
        v136 = v59;
        v101 = v33;
        v60 = v215;
        v3 = v220;
        goto LABEL_195;
      }

      v200 = v43;
      v201 = v31;
      v216 = v33;
      v217 = v32;
      v199 = v31 + (v45 + 12);
      v46 = v45 - 24;
      v47 = v45 - 24 - v233;
      if (v45 - 24 > v233)
      {
        v48 = *(v34 + 12);
        v49 = v48 & 0x3FF;
        v187 = v34 + 36;
        v50 = (v34 + 36 + v233);
        v51 = strnlen(v50, v45 - 24 - v233);
        v52 = v51;
        if (v51 == v47 || v51 + 1 != v49)
        {
          v102 = *__error();
          v103 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            *buf = v204;
            *&buf[4] = "preparseMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5617;
            *&buf[18] = 2048;
            *&buf[20] = v39;
            *&buf[28] = 2048;
            *&buf[30] = v45;
            *&buf[38] = 2048;
            *&buf[40] = v201;
            *&buf[48] = 2048;
            *&buf[50] = v222;
            *&buf[58] = 2048;
            *&buf[60] = v52;
            *&buf[68] = 2048;
            *&buf[70] = v48 & 0x3FF;
            _os_log_error_impl(&dword_1C278D000, v103, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
          }

          *__error() = v102;
        }

        else
        {
          v53 = CFStringCreateWithCString(v212, v50, 0x8000100u);
          if (v53)
          {
            v54 = v53;
            if ((*(v35 + 14) & 0x7FFF) != 0)
            {
              v55 = CFStringCreateWithCString(v212, &v50[v49 + (v48 >> 10)], 0x8000100u);
              if (v55)
              {
                v56 = v55;
                if (CFStringHasPrefix(v55, @"_kMDItemStateInfo_"))
                {
                  v57 = CFRetain(v56);
                }

                else
                {
                  v57 = CFStringCreateWithFormat(v212, 0, @"_kMDItemStateInfo_%@", v56);
                }

                v137 = v57;
                v138 = *(v35 + 32);
                if (v46 >= v138)
                {
                  clientstates_dict = si_get_clientstates_dict(a1, v54);
                  v142 = clientstates_dict;
                  if (v138)
                  {
                    v143 = CFDataCreate(v212, (v187 + v46 - v138), v138);
                    if (v143)
                    {
                      v144 = v143;
                      CFDictionarySetValue(v142, v137, v143);
                      CFRelease(v144);
                    }
                  }

                  else
                  {
                    CFDictionaryRemoveValue(clientstates_dict, v137);
                  }
                }

                else
                {
                  v139 = *__error();
                  v140 = _SILogForLogForCategory(0);
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v208;
                    *&buf[4] = "preparseMobileJournal";
                    *&buf[12] = 1024;
                    *&buf[14] = 5652;
                    *&buf[18] = 2048;
                    *&buf[20] = v138;
                    *&buf[28] = 2048;
                    *&buf[30] = v45 - 24;
                    _os_log_error_impl(&dword_1C278D000, v140, OS_LOG_TYPE_ERROR, "%s:%d: Invalid client state size:%ld > size:%ld", buf, 0x26u);
                  }

                  *__error() = v139;
                }

                CFRelease(v137);
                CFRelease(v56);
              }
            }

            v145 = v216;
            v146 = v215;
            if (v200 && v215 && v200 < v215)
            {
              v32 = v217 + 1;
            }

            else
            {
              if (v215 <= v200)
              {
                v147 = v200;
              }

              else
              {
                v147 = v215;
              }

              atomic_fetch_add_explicit(&gEnqueuedSize, v45, memory_order_relaxed);
              CFSetAddValue(v221, v54);
              v146 = v147;
              v145 = v216 + 1;
              v32 = v217;
            }

            v3 = v220;
            v27 = v202;
            v148 = v145;
            v130 = v146;
            CFRelease(v54);
            v93 = v199;
            v101 = v148;
            goto LABEL_180;
          }
        }
      }

      v104 = *__error();
      v105 = _SILogForLogForCategory(0);
      v32 = v217;
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        *buf = v203;
        *&buf[4] = "preparseMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5624;
        *&buf[18] = 2048;
        *&buf[20] = v39;
        *&buf[28] = 2048;
        *&buf[30] = v45;
        *&buf[38] = 2048;
        *&buf[40] = v201;
        *&buf[48] = 2048;
        *&buf[50] = v222;
        _os_log_error_impl(&dword_1C278D000, v105, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry - nil bundleID, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
      }

      *__error() = v104;
      v60 = v215;
      if (v200 && v215 && v200 < v215)
      {
        ++v32;
        v27 = v202;
        v93 = v199;
        goto LABEL_126;
      }

      if (v215 <= v200)
      {
        v60 = v200;
      }

      v101 = v216 + 1;
      atomic_fetch_add_explicit(&gEnqueuedSize, v45, memory_order_relaxed);
      v27 = v202;
      v93 = v199;
LABEL_153:
      v3 = v220;
      goto LABEL_154;
    }

    if (v39 == -259064083)
    {
      v72 = *(v34 + 4);
      v73 = v72 + 12;
      v74 = v215;
      if ((v72 + 12) < 0x12 || v73 < 0x18 || (v75 = v31 + v73, v218 < v75))
      {
        v157 = v31;
        v158 = v27;
        v59 = v32;
        v159 = *__error();
        v160 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "preparseMobileJournal";
          *&buf[12] = 1024;
          *&buf[14] = 5725;
          *&buf[18] = 2048;
          *&buf[20] = 4035903213;
          *&buf[28] = 2048;
          *&buf[30] = v72;
          *&buf[38] = 2048;
          *&buf[40] = v157;
          *&buf[48] = 2048;
          *&buf[50] = v222;
          _os_log_error_impl(&dword_1C278D000, v160, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
        }

        v161 = __error();
        v135 = v158;
        *v161 = v159;
        v23 = v157;
        goto LABEL_194;
      }

      v201 = v31;
      v76 = v72 - 12;
      v77 = *(v34 + 16);
      v78 = *(v34 + 18);
      v79 = *(v34 + 18);
      v80 = v233;
      if (v233 >= v72 - 12)
      {
        v106 = v32;
        v107 = 0;
        v108 = 0;
      }

      else
      {
        v81 = *(v34 + 16);
        v216 = v33;
        v202 = v27;
        v200 = v44;
        v198 = v79;
        v197 = v77;
        v191 = v78;
        if (v77)
        {
          v189 = v81;
          v82 = v76 - v233 - v78;
          v83 = strnlen((v34 + v233 + 24), v82);
          v84 = v83;
          v85 = v83 == v82;
          v81 = v189;
          if (v85 || v83 + 1 != v189)
          {
            v109 = *__error();
            v110 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
            {
              *buf = v206;
              *&buf[4] = "preparseMobileJournal";
              *&buf[12] = 1024;
              *&buf[14] = 5743;
              *&buf[18] = 2048;
              *&buf[20] = 4035903213;
              *&buf[28] = 2048;
              *&buf[30] = v72;
              *&buf[38] = 2048;
              *&buf[40] = v201;
              *&buf[48] = 2048;
              *&buf[50] = v222;
              *&buf[58] = 2048;
              *&buf[60] = v84;
              *&buf[68] = 2048;
              *&buf[70] = v189;
              _os_log_error_impl(&dword_1C278D000, v110, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
            }

            *__error() = v109;
            v86 = 0;
            v33 = v216;
            v74 = v215;
            v27 = v202;
            v44 = v200;
            v79 = v198;
            v77 = v197;
            v81 = v189;
          }

          else
          {
            v86 = CFStringCreateWithCString(v212, (v34 + v80 + 24), 0x8000100u);
            v33 = v216;
            v74 = v215;
            v27 = v202;
            v44 = v200;
            v79 = v198;
            v77 = v197;
          }
        }

        else
        {
          v86 = 0;
        }

        if (v79)
        {
          v188 = v86;
          v111 = v80 + v81;
          v112 = v76 - (v80 + v81);
          v113 = v34 + v111;
          v114 = strnlen((v34 + v111 + 24), v112);
          v115 = v114;
          if (v114 == v112 || v114 + 1 != v191)
          {
            v106 = v32;
            v116 = *__error();
            v117 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              *buf = v207;
              *&buf[4] = "preparseMobileJournal";
              *&buf[12] = 1024;
              *&buf[14] = 5753;
              *&buf[18] = 2048;
              *&buf[20] = 4035903213;
              *&buf[28] = 2048;
              *&buf[30] = v72;
              *&buf[38] = 2048;
              *&buf[40] = v201;
              *&buf[48] = 2048;
              *&buf[50] = v222;
              *&buf[58] = 2048;
              *&buf[60] = v115;
              *&buf[68] = 2048;
              *&buf[70] = v191;
              _os_log_error_impl(&dword_1C278D000, v117, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
            }

            v107 = 0;
            *__error() = v116;
          }

          else
          {
            v106 = v32;
            v107 = CFStringCreateWithCString(v212, (v113 + 24), 0x8000100u);
          }

          v108 = v188;
          v33 = v216;
          v74 = v215;
          v27 = v202;
          v44 = v200;
          v79 = v198;
          v77 = v197;
        }

        else
        {
          v106 = v32;
          v107 = 0;
          v108 = v86;
        }
      }

      if (!v108 && v77)
      {
        v118 = v33;
        v119 = v106 + 1;
        goto LABEL_149;
      }

      if (!v107 && v79 || v44 && v74 && v44 < v74)
      {
        v120 = v74;
        v121 = v33;
        v118 = v33;
        v119 = v106 + 1;
        v122 = v106 + 1;
        if (!v108)
        {
LABEL_149:
          v32 = v119;
          v125 = v74;
          if (v107)
          {
            CFRelease(v107);
          }

          v93 = v75;
          v101 = v118;
LABEL_152:
          v60 = v125;
          goto LABEL_153;
        }
      }

      else
      {
        v131 = v27;
        if (v74 <= v44)
        {
          v132 = v44;
        }

        else
        {
          v132 = v74;
        }

        v118 = v33 + 1;
        if (!v108)
        {
          v74 = v132;
          v119 = v106;
          v27 = v131;
          goto LABEL_149;
        }

        CFSetAddValue(v221, v108);
        v120 = v132;
        v121 = v33 + 1;
        v122 = v106;
        v27 = v131;
      }

      v119 = v122;
      v118 = v121;
      v133 = v27;
      v134 = v120;
      CFRelease(v108);
      v74 = v134;
      v27 = v133;
      goto LABEL_149;
    }

    v58 = v32;
    v23 = v31;
    v59 = v58;
    v60 = v215;
    if (v39 != -261161235)
    {
      break;
    }

    v61 = *(v34 + 4);
    if ((v61 + 12) < 0x12 || v218 < v23 + (v61 + 12))
    {
      v162 = v27;
      v163 = *__error();
      v164 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "preparseMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5681;
        *&buf[18] = 2048;
        *&buf[20] = 4033806061;
        *&buf[28] = 2048;
        *&buf[30] = v61;
        *&buf[38] = 2048;
        *&buf[40] = v23;
        *&buf[48] = 2048;
        *&buf[50] = v222;
        _os_log_error_impl(&dword_1C278D000, v164, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
      }

      v165 = __error();
      v135 = v162;
      *v165 = v163;
      goto LABEL_194;
    }

    v62 = v23 + (v61 + 12);
    v63 = *(v34 + 12);
    v64 = *(v34 + 12);
    v65 = v61 - 24 - v233;
    if (v61 - 24 <= v233)
    {
      v216 = v33;
      v71 = 0;
      v66 = v59;
    }

    else
    {
      v66 = v59;
      if (!*(v34 + 12))
      {
        if (v43 && v215 && v43 < v215)
        {
          v32 = v59 + 1;
          v93 = v62;
          v101 = v33;
        }

        else
        {
          if (v215 <= v43)
          {
            v60 = v43;
          }

          atomic_fetch_add_explicit(&gEnqueuedSize, v61, memory_order_relaxed);
          v93 = v23 + (v61 + 12);
          v32 = v59;
          v101 = v33 + 1;
        }

        goto LABEL_153;
      }

      v196 = v23 + (v61 + 12);
      v200 = v43;
      v202 = v27;
      v216 = v33;
      v67 = v63;
      v68 = v34 + v233;
      v69 = strnlen((v34 + v233 + 18), v61 - 24 - v233);
      v70 = v69;
      if (v69 == v65 || v69 + 1 != v67)
      {
        v123 = *__error();
        v124 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          *buf = v205;
          *&buf[4] = "preparseMobileJournal";
          *&buf[12] = 1024;
          *&buf[14] = 5697;
          *&buf[18] = 2048;
          *&buf[20] = 4033806061;
          *&buf[28] = 2048;
          *&buf[30] = v61;
          *&buf[38] = 2048;
          *&buf[40] = v23;
          *&buf[48] = 2048;
          *&buf[50] = v222;
          *&buf[58] = 2048;
          *&buf[60] = v70;
          *&buf[68] = 2048;
          *&buf[70] = v67;
          _os_log_error_impl(&dword_1C278D000, v124, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
        }

        v71 = 0;
        *__error() = v123;
      }

      else
      {
        v71 = CFStringCreateWithCString(v212, (v68 + 18), 0x8000100u);
      }

      v60 = v215;
      v27 = v202;
      v44 = v200;
      v62 = v196;
      if (v71)
      {
        goto LABEL_127;
      }
    }

    if (v64)
    {
      v32 = v66 + 1;
      v93 = v62;
LABEL_126:
      v101 = v216;
      goto LABEL_153;
    }

LABEL_127:
    if (!v44 || !v60 || v44 >= v60)
    {
      if (v60 <= v44)
      {
        v125 = v44;
      }

      else
      {
        v125 = v60;
      }

      v126 = v216 + 1;
      atomic_fetch_add_explicit(&gEnqueuedSize, v61, memory_order_relaxed);
      v93 = v62;
      if (!v71)
      {
        v32 = v66;
        v101 = v216 + 1;
        goto LABEL_152;
      }

      CFSetAddValue(v221, v71);
      v32 = v66;
      v3 = v220;
LABEL_137:
      CFRelease(v71);
      v101 = v126;
      v60 = v125;
      goto LABEL_154;
    }

    v93 = v62;
    v125 = v60;
    v126 = v216;
    v32 = v66 + 1;
    v3 = v220;
    if (v71)
    {
      goto LABEL_137;
    }

    v32 = v66 + 1;
    v101 = v216;
LABEL_154:
    v26 = v60;
    v30 = v101;
    v29 = v93;
    v135 = v27;
    v136 = v32;
    v28 = v32;
    v23 = v93;
    if (v93 + 12 > v218)
    {
      goto LABEL_195;
    }
  }

  v135 = v27;
  v136 = v58;
  v101 = v33;
LABEL_195:
  v21 = v135;
  v20 = v60;
  v24 = v101;
  v22 = v136;
  v19 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  if (v3)
  {
LABEL_196:
    atomic_fetch_add(v3, 1u);
    v166 = v19;
    v167 = v3;
  }

  else
  {
    v166 = v19;
    v167 = 0;
  }

  v193 = v23;
  v192 = v22;
  v190 = v24;
  v168 = v20;
  v194 = v21;
  v169 = v166;
  *v166 = a1;
  v166[1] = v167;
  atomic_fetch_add((a1 + 6888), 1u);
  si_mobile_journal_map_deactivate(v167);
  si_enqueue_barrier_with_qos(*(a1 + 1048), 0, playBackMobileJournal, v169);
  v170 = v221;
  Count = CFSetGetCount(v221);
  MEMORY[0x1EEE9AC00](Count);
  v173 = (&v186 - v172);
  bzero(&v186 - v172, v174);
  CFSetGetValues(v170, v173);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      *buf = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      **buf = a1;
      v176 = CFRetain(v173[i]);
      *(*buf + 8) = v176;
      si_enqueue_work_bulk_with_qos(*(a1 + 1048), 0, dummy_routine, buf, v173[i], i == 0);
    }
  }

  CFRelease(v221);
  si_enqueue_work_with_qos(*(a1 + 1048), 0, endTransaction, v223);
  v177 = *__error();
  v178 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219520;
    *&buf[4] = v190;
    *&buf[12] = 2048;
    *&buf[14] = v192;
    *&buf[22] = 2048;
    *&buf[24] = v193;
    *&buf[32] = 2048;
    *&buf[34] = v222;
    *&buf[42] = 2048;
    *&buf[44] = v224;
    *&buf[52] = 2048;
    *&buf[54] = v194;
    *&buf[62] = 2048;
    *&buf[64] = v168;
    _os_log_impl(&dword_1C278D000, v178, OS_LOG_TYPE_DEFAULT, "Played back %ld records (skipped %ld), read %lld/%lld bytes, consumedJournalSerialNumber:%lld, minReplaySerialNumber:%lld, maxReplaySerialNumber:%lld", buf, 0x48u);
  }

  *__error() = v177;
  v25 = 0;
  v16 = v168;
  add_explicit = v226;
  v14 = v225;
LABEL_203:
  v8 = v25;
  v179 = threadData[9 * v237 + 1] + 320 * v236;
  *(v179 + 312) = v14;
  v180 = *(v179 + 232);
  if (v180)
  {
    v180(*(v179 + 288));
  }

  dropThreadId(v237, 0, add_explicit + 1);
LABEL_206:
  if (v8)
  {
    os_release(v8);
  }

  v181 = *MEMORY[0x1E69E9840];
  return v16;
}

void si_playbackRecord(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v43[1024] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 8);
  if (v5)
  {
    v6 = 8 * v5 > *(v2 + 4);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v4;
    v8 = v3;
    v9 = v1;
    v10 = (v2 + 12);
    v11 = *MEMORY[0x1E695E480];
    v12 = _MDPlistBytesCreate();
    if (v12)
    {
      v13 = v12;
      v14 = _MDPlistBytesCopyPlistAtIndex();
      if (v14)
      {
        v15 = v14;
        v41 = v13;
        if (CFArrayGetCount(v14) == v5)
        {
          if (v7)
          {
            v16 = 0;
            do
            {
              v43[0] = v10[v16];
              v17 = CFNumberCreate(v11, kCFNumberLongLongType, v43);
              ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
              ++*(v7 + 16);
              v19 = CFGetTypeID(ValueAtIndex);
              if (v19 == CFNullGetTypeID())
              {
                ++*(v7 + 40);
              }

              else
              {
                v20 = CFGetTypeID(ValueAtIndex);
                if (v20 == CFDictionaryGetTypeID())
                {
                  Value = CFDictionaryGetValue(*(v7 + 8), v17);
                  if (Value)
                  {
                    CFDictionaryApplyFunction(ValueAtIndex, _mergeCFDictionaryApplier, Value);
                    ++*(v7 + 32);
                  }

                  else
                  {
                    MutableCopy = CFDictionaryCreateMutableCopy(v11, 0, ValueAtIndex);
                    CFArrayAppendValue(*v7, v17);
                    CFDictionaryAddValue(*(v7 + 8), v17, MutableCopy);
                    ++*(v7 + 24);
                    si_queue_playback(v9, v7, 0x4000uLL);
                    if (MutableCopy)
                    {
                      CFRelease(MutableCopy);
                    }
                  }
                }

                else
                {
                  ++*(v7 + 48);
                }
              }

              if (v17)
              {
                CFRelease(v17);
              }

              ++v16;
            }

            while (v5 != v16);
          }

          else
          {
            v23 = v43;
            bzero(v43, 0x2000uLL);
            v24 = v42;
            bzero(v42, 0x2000uLL);
            v25 = (v5 + 1);
            if (v25 >= 0x401)
            {
              v23 = malloc_type_malloc(8 * (v5 + 1), 0x100004000313F17uLL);
              v24 = malloc_type_malloc(8 * (v5 + 1), 0xC0040B8AA526DuLL);
            }

            v26 = *MEMORY[0x1E695E738];
            *v24 = *MEMORY[0x1E695E738];
            v27 = v23 + 1;
            v28 = v5;
            do
            {
              v29 = *v10++;
              *v27++ = v29;
              --v28;
            }

            while (v28);
            *v23 = 0;
            v44.location = 0;
            v44.length = v5;
            CFArrayGetValues(v15, v44, v24 + 1);
            v30 = 0;
            while (v30 < CFArrayGetCount(v15))
            {
              v31 = CFArrayGetValueAtIndex(v15, v30);
              v32 = &v24[v30++];
              if (v31 != v32[1])
              {
                v33 = __si_assert_copy_extra_661(-1);
                v34 = v33;
                v35 = "";
                if (v33)
                {
                  v35 = v33;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 3862, "CFArrayGetValueAtIndex(inValues,i) == valueArray[i+1]", v35);
                goto LABEL_32;
              }
            }

            if (*v24 != v26)
            {
              v39 = __si_assert_copy_extra_661(-1);
              v34 = v39;
              v40 = "";
              if (v39)
              {
                v40 = v39;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 3865, "valueArray[0]==kCFNull", v40);
LABEL_32:
              free(v34);
              if (__valid_fs(-1))
              {
                v36 = 2989;
              }

              else
              {
                v36 = 3072;
              }

              *v36 = -559038737;
              abort();
            }

            v37 = CFArrayCreate(v11, v24, v25, MEMORY[0x1E695E9C0]);
            SIBulkSetAttributes(v9, v23, 0, v25, v37, 0, 0, 65540, v8, 0, 0, 0, 0);
            if (v23 != v43)
            {
              free(v23);
            }

            if (v24 != v42)
            {
              free(v24);
            }

            if (v37)
            {
              CFRelease(v37);
            }
          }
        }

        CFRelease(v15);
        v13 = v41;
      }

      CFRelease(v13);
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

void flushPlaybackPossibleMoves(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  if (a3)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = *a2;
    v7 = v5;
    v4 = 0;
    v5 = 0;
  }

  SIPossibleMovesBulk(a1, v6, v7, v4, v5);
  v8 = *a2;
  *v8 = 0;
  v8[1] = 0;
  *(a2 + 16) = 0;
}

void SITransferAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a4 && a2 >= 3 && a3 >= 3)
  {
    v12 = malloc_type_malloc(0x1CuLL, 0x10000403E1C8BA9uLL);
    *(v12 + 12) = a2;
    *(v12 + 20) = a3;
    *v12 = 0x10F04DFEEDLL;
    *(v12 + 2) = 2;
    pthread_mutex_lock((a1 + 1632));
    JournalFd = getJournalFd(a1, 0, 0);
    v14 = fd_write(JournalFd, v12, 0x1CuLL);
    pthread_mutex_unlock((a1 + 1632));
    if (v14 == -1)
    {
      v27 = *__error();
      v15 = *__error();
      v16 = _SILogForLogForCategory(4);
      v17 = 2 * (dword_1EBF46ADC < 4);
      if (os_log_type_enabled(v16, v17))
      {
        *buf = 67109120;
        LODWORD(v29) = v27;
        _os_log_impl(&dword_1C278D000, v16, v17, "Error writing to log file: %d", buf, 8u);
      }

      *__error() = v15;
    }

    free(v12);
  }

  if (*(a1 + 1048))
  {
    v18 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A004032120C31uLL);
    if (dword_1EBF46ADC >= 5)
    {
      v23 = *__error();
      v24 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "Do attribute transfer.", buf, 2u);
      }

      *__error() = v23;
    }

    *v18 = a1;
    v18[1] = a3;
    v18[2] = a2;
    v18[3] = a4;
    v18[4] = a5;
    *(v18 + 40) = a6;
    v19 = *__error();
    v20 = _SILogForLogForCategory(4);
    v21 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v20, v21))
    {
      *buf = 134218240;
      v29 = a3;
      v30 = 2048;
      v31 = a2;
      _os_log_impl(&dword_1C278D000, v20, v21, "SITransferAttributes from %lld to %lld", buf, 0x16u);
    }

    *__error() = v19;
    si_enqueue_barrier(*(a1 + 1048), transferAttributes, v18);
    if (dword_1EBF46ADC >= 5)
    {
      v25 = *__error();
      v26 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "Leave.", buf, 2u);
      }

      *__error() = v25;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void si_queue_playback(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a2 + 24);
    if (v4 && v4 >= a3)
    {
      if (*a2)
      {
        Count = CFArrayGetCount(*a2);
        if (Count)
        {
          v8 = Count;
          if (Count == *(a2 + 24))
          {
            if (*(a2 + 8))
            {
              v9 = malloc_type_malloc(8 * Count + 8, 0x100004000313F17uLL);
              v10 = malloc_type_malloc(8 * v8 + 8, 0xC0040B8AA526DuLL);
              v11 = 0;
              *v9 = 0;
              *v10 = *MEMORY[0x1E695E738];
              v12 = 1;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*a2, v11);
                *valuePtr = 0;
                if (CFNumberGetValue(ValueAtIndex, kCFNumberLongLongType, valuePtr))
                {
                  Value = CFDictionaryGetValue(*(a2 + 8), ValueAtIndex);
                  v10[v12] = Value;
                  if (Value)
                  {
                    v9[v12++] = *valuePtr;
                  }
                }

                ++v11;
              }

              while (v8 != v11);
              if (v12 > 1)
              {
                v15 = CFArrayCreate(*MEMORY[0x1E695E480], v10, v12, MEMORY[0x1E695E9C0]);
                SIBulkSetAttributes(a1, v9, 0, v12, v15, 0, 0, 65540, 5, 0, 0, 0, 0);
                v16 = *__error();
                v17 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = *(a2 + 56);
                  v18 = *(a2 + 64);
                  v20 = *(a2 + 16);
                  v21 = *(a2 + 24);
                  v22 = *(a2 + 32);
                  v23 = *(a2 + 40);
                  v24 = *(a2 + 48);
                  *valuePtr = 134219520;
                  *&valuePtr[4] = v18;
                  v28 = 1024;
                  v29 = v19;
                  v30 = 1024;
                  v31 = v20;
                  v32 = 1024;
                  v33 = v21;
                  v34 = 1024;
                  v35 = v22;
                  v36 = 1024;
                  v37 = v23;
                  v38 = 1024;
                  v39 = v24;
                  _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "### playback file size: %ld batch: %d processed: %d unique: %d dup: %d null: %d unknown: %d", valuePtr, 0x30u);
                }

                *__error() = v16;
                CFArrayRemoveAllValues(*a2);
                CFDictionaryRemoveAllValues(*(a2 + 8));
                v25 = *(a2 + 56) + 1;
                *(a2 + 16) = 0u;
                *(a2 + 32) = 0u;
                *(a2 + 48) = 0;
                *(a2 + 56) = v25;
                if (v15)
                {
                  CFRelease(v15);
                }
              }

              free(v10);
              free(v9);
            }
          }
        }
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t SIBulkSetAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, void (*a10)(void, void), uint64_t a11, uint64_t a12, int a13)
{
  MEMORY[0x1EEE9AC00](a1);
  v123 = v20;
  v22 = a10;
  v21 = a11;
  v130 = *MEMORY[0x1E69E9840];
  if (*(v13 + 1288) == 1)
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "SIBulkSetAttributes failed: index is read-only";
LABEL_9:
      _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v26 = v16;
  if (!v16)
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "SIBulkSetAttributes failed: count is zero";
      goto LABEL_9;
    }

LABEL_10:
    *__error() = v23;
    if (a10)
    {
      a10(a11, 1);
    }

    result = 0;
    goto LABEL_130;
  }

  v27 = v19;
  v28 = v18;
  v29 = v17;
  v30 = v15;
  v31 = v13;
  v119 = v14;
  __base = malloc_type_calloc(v16, 0x28uLL, 0x1060040A1774B36uLL);
  v112 = malloc_type_calloc(v26, 8uLL, 0x100004000313F17uLL);
  bzero(buf, 0x1000uLL);
  v117 = v31;
  cf = v27;
  if (v26 <= 4096)
  {
    if (v26 <= 1)
    {
      v73 = buf;
      __memset_chk();
      v72 = 0;
      goto LABEL_55;
    }

    v33 = buf;
  }

  else
  {
    v33 = malloc_type_malloc(v26, 0xF4191400uLL);
  }

  v35 = gSILogLevels[0];
  v36 = 1;
  *&v32 = 134217984;
  v121 = v33;
  do
  {
    if (v35 >= 5)
    {
      *allocatora = v32;
      v109 = *__error();
      v37 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *(v119 + 8 * v36);
        *block = allocatora[0];
        *&block[4] = v38;
        _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "Enqueue attribute change %llx.", block, 0xCu);
      }

      *__error() = v109;
      v35 = gSILogLevels[0];
      v33 = v121;
      v32 = *allocatora;
    }

    ++v36;
  }

  while (v26 != v36);
  bzero(v33, v26);
  v39 = 0;
  v40 = 0;
  v41 = *MEMORY[0x1E695E738];
  allocator = v26;
  v42 = v26 - 1;
  v43 = __base + 16;
  do
  {
    *(v43 - 2) = *(v119 + 8 + 8 * v39);
    if (v30)
    {
      v44 = *(v30 + 8 + 8 * v39);
    }

    else
    {
      v44 = 0;
    }

    *(v43 - 1) = v44;
    if (v29)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v29, v39 + 1);
    }

    else
    {
      ValueAtIndex = 0;
    }

    *v43 = ValueAtIndex;
    if (v28)
    {
      v46 = CFArrayGetValueAtIndex(v28, v39 + 1);
    }

    else
    {
      v46 = 0;
    }

    if (v46 == v41)
    {
      v47 = 0;
    }

    else
    {
      v47 = v46;
    }

    *(v43 + 1) = v47;
    v43[16] = v121[v39] != 0;
    v40 += (v121[v39++] == 0) & (v123 >> 4);
    v43 += 40;
  }

  while (v42 != v39);
  if (!v40)
  {
    v72 = 1;
    v21 = a11;
    v22 = a10;
    v73 = v121;
    v31 = v117;
    v26 = allocator;
LABEL_55:
    v48 = v26 - 1;
    goto LABEL_56;
  }

  v48 = v42;
  v49 = malloc_type_malloc(8 * v42, 0x100004000313F17uLL);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v42, 0);
  v51 = 0;
  v52 = __base + 32;
  v53 = v42;
  v22 = a10;
  do
  {
    if ((*v52 & 1) == 0)
    {
      CFArrayAppendValue(Mutable, *(v52 - 2));
      v49[v51++] = *(v52 - 4);
    }

    v52 += 40;
    --v53;
  }

  while (v53);
  v21 = a11;
  v26 = allocator;
  if (v51)
  {
    MutableUsingMalloc = _MDPlistBytesCreateMutableUsingMalloc();
    _MDPlistBytesAppendPlist();
    ByteVectorCount = _MDPlistBytesGetByteVectorCount();
    v56 = malloc_type_malloc(8 * v51 + ByteVectorCount + 12, 0x10000403E1C8BA9uLL);
    if (a9 == 12)
    {
      v57 = -262275347;
    }

    else
    {
      v57 = -267518227;
    }

    v58 = v56;
    *v56 = v57;
    v59 = v56 + 3;
    v60 = &v56[2 * v51 + 3];
    ByteVector = _MDPlistBytesGetByteVector();
    v120 = MutableUsingMalloc;
    v62 = _MDPlistBytesGetByteVectorCount();
    memcpy(v60, ByteVector, v62);
    if (v51 >= 1)
    {
      v63 = v49;
      v64 = v51;
      do
      {
        v65 = *v63++;
        *v59++ = v65;
        --v64;
      }

      while (v64);
    }

    v66 = _MDPlistBytesGetByteVectorCount() + 8 * v51;
    *(v58 + 4) = v66;
    *(v58 + 8) = v51;
    v67 = v58;
    pthread_mutex_lock((v117 + 1632));
    JournalFd = getJournalFd(v117, 0, 0);
    v69 = fd_write(JournalFd, v58, v66 + 12);
    pthread_mutex_unlock((v117 + 1632));
    v21 = a11;
    v22 = a10;
    if (v69 == -1)
    {
      v107 = *__error();
      v110 = *__error();
      v70 = _SILogForLogForCategory(4);
      v71 = 2 * (dword_1EBF46ADC < 4);
      if (os_log_type_enabled(v70, v71))
      {
        *block = 67109120;
        *&block[4] = v107;
        _os_log_impl(&dword_1C278D000, v70, v71, "Error writing to log file: %d", block, 8u);
      }

      *__error() = v110;
    }

    CFRelease(v120);
    free(v67);
  }

  free(v49);
  CFRelease(Mutable);
  v72 = 1;
  v73 = v121;
  v31 = v117;
LABEL_56:
  if (v26 >= 3 && (v123 & 1) == 0)
  {
    qsort(__base, v48, 0x28uLL, OIDAttrPairCmp);
  }

  v74 = malloc_type_calloc(1uLL, 80 * v48 + 24, 0x1080040CC6EE3FDuLL);
  if (v74)
  {
    v122 = v73;
    v108 = v74;
    v111 = v48;
    *(v74 + 2) = v48;
    if (v72)
    {
      allocatorb = *MEMORY[0x1E695E480];
      v75 = __base + 16;
      v76 = (v74 + 96);
      v77 = v112;
      while (1)
      {
        v78 = cf;
        if (cf)
        {
          v78 = CFRetain(cf);
        }

        v79 = *(v75 - 1);
        *(v76 - 3) = v79;
        *(v76 - 4) = v78;
        *(v76 - 9) = v31;
        v80 = v75[16];
        if ((v79 == 0) | v80 & 1)
        {
          v81 = 2;
        }

        else
        {
          v81 = 0;
        }

        *(v76 - 6) = v81 | v123;
        *(v76 - 5) = a9;
        if (v80)
        {
          v82 = 0;
        }

        else
        {
          v82 = v79;
        }

        *v77 = v82;
        *(v76 - 2) = a12;
        v83 = *(v75 + 1);
        if (v83)
        {
          CFRetain(*(v75 + 1));
        }

        *(v76 - 7) = v83;
        *(v76 - 2) = a13;
        *v76 = CFAbsoluteTimeGetCurrent();
        if ((v123 & 0x80) != 0)
        {
          break;
        }

LABEL_84:
        if (*v75)
        {
          v84 = CFGetTypeID(*v75);
          if (v84 == CFDictionaryGetTypeID())
          {
            v85 = *v75;
            if (*v75)
            {
              CFRetain(*v75);
            }

            *(v76 - 8) = v85;
          }
        }

        if (a9 == 7 || !*(v76 - 8))
        {
          goto LABEL_102;
        }

        v86 = CFNumberCreate(allocatorb, kCFNumberLongLongType, v76 - 6);
        v87 = v31;
        v88 = *(v76 - 6);
        pthread_mutex_lock((v87 + 1816));
        if (CFBagGetValue(*(v87 + 1800), v86))
        {
          Value = CFDictionaryGetValue(*(v87 + 1808), v86);
          v90 = Value;
          if ((v88 & 1) == 0)
          {
            if (!Value)
            {
              v90 = CFArrayCreateMutable(allocatorb, 0, MEMORY[0x1E695E9C0]);
              CFDictionarySetValue(*(v117 + 1808), v86, v90);
              CFRelease(v90);
            }

            CFArrayAppendValue(v90, *(v76 - 8));
            goto LABEL_101;
          }

          if (Value)
          {
            CFArrayRemoveAllValues(Value);
          }
        }

        else if ((v88 & 1) == 0)
        {
          goto LABEL_101;
        }

        CFBagSetValue(*(v117 + 1800), v86);
LABEL_101:
        v31 = v117;
        pthread_mutex_unlock((v117 + 1816));
        CFRelease(v86);
LABEL_102:
        ++v77;
        v75 += 40;
        v76 += 10;
        if (!--v48)
        {
          goto LABEL_107;
        }
      }

      if (*v75)
      {
        if (CFDictionaryGetCount(*v75) > 1)
        {
          if (*v75)
          {
            goto LABEL_78;
          }
        }

        else
        {
          *v75 = 0;
        }
      }

      *(v76 - 6) |= 0x100u;
LABEL_78:
      if (!*(v31 + 6880) || (*(v31 + 6584) & 0x10) != 0)
      {
        *(v76 - 6) |= 4u;
      }

      else if (a13 == -1)
      {
        *(v76 - 2) = 1;
      }

      if (dword_1EBF46ADC >= 5)
      {
        v91 = *__error();
        v92 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          v93 = *(v76 - 6);
          v94 = *(v76 - 6);
          *block = 134218240;
          *&block[4] = v93;
          *&block[12] = 1024;
          *&block[14] = v94;
          _os_log_impl(&dword_1C278D000, v92, OS_LOG_TYPE_DEFAULT, "PUSH REPAIR oid: %lld, f:%x", block, 0x12u);
        }

        *__error() = v91;
        v31 = v117;
      }

      goto LABEL_84;
    }

LABEL_107:
    if ((v123 & 1) != 0 || !a12)
    {
      v97 = v108;
      v96 = v111;
      *v108 = v22;
      v108[1] = v21;
      v22 = 0;
      v95 = v112;
    }

    else
    {
      v95 = v112;
      v97 = v108;
      v96 = v111;
    }

    v101 = *(v31 + 1048);
    v102 = *(v101 + 8);
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 0x40000000;
    *&block[16] = __si_push_queue_block_invoke;
    *&block[24] = &__block_descriptor_tmp_41_1562;
    v126 = v101;
    v127 = a12;
    v128 = v95;
    v129 = v96;
    dispatch_sync(v102, block);
    v73 = v122;
    if (a9 == 10 || (v123 & 0x801) == 0)
    {
      v103 = (v31 + 1048);
      if (a13 && *(v31 + 6928) != a13)
      {
        *(v31 + 6928) = a13;
      }
    }

    else
    {
      if (a13 && *(v31 + 6928) != a13)
      {
        *(v31 + 6928) = a13;
      }

      v103 = (v31 + 1160);
    }

    v104 = *v103;
    v105 = qos_class_self();
    si_enqueue_barrier_with_qos(v104, v105, setAttributesBulk, v97);
    if (v22)
    {
      v22(v21, 0);
    }

    free(__base);
    free(v95);
    v100 = 1;
    result = 1;
  }

  else
  {
    v98 = *__error();
    v99 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      *block = 136315650;
      *&block[4] = "SIBulkSetAttributes";
      *&block[12] = 1024;
      *&block[14] = 19464;
      *&block[18] = 2048;
      *&block[20] = 80 * v48 + 24;
      _os_log_error_impl(&dword_1C278D000, v99, OS_LOG_TYPE_ERROR, "%s:%d: SIBulkSetAttributes failed: calloc failed to allocate size %zu", block, 0x1Cu);
    }

    *__error() = v98;
    if (v22)
    {
      v22(v21, 1);
    }

    free(__base);
    free(v112);
    v100 = 0;
    result = 0;
  }

  if (v73 != buf)
  {
    free(v73);
    result = v100;
  }

LABEL_130:
  v106 = *MEMORY[0x1E69E9840];
  return result;
}

void setAttributesBulk(void *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1[2] >= gCPUCount)
  {
    v4 = gCPUCount;
  }

  else
  {
    v4 = a1[2];
  }

  if (v4 >= 0x10)
  {
    v5 = 16;
  }

  else
  {
    v5 = v4;
  }

  if (dword_1EBF46ADC >= 5)
  {
    v26 = *__error();
    v27 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = a1[2];
      *buf = 134218240;
      *&buf[4] = v28;
      v36 = 2048;
      v37 = v5;
      _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "Begin setattr with %ld items on %ld threads", buf, 0x16u);
    }

    *__error() = v26;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = dispatch_group_create();
  v8 = v7;
  if (!a2 && v4 > 1)
  {
    *buf = 0;
    v9 = a1[3];
    v10 = *(v9 + 32);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 0x40000000;
    v32[2] = __setAttributesBulk_block_invoke;
    v32[3] = &__block_descriptor_tmp_1998;
    v33 = v10;
    v32[4] = buf;
    v32[5] = a1;
    v32[6] = v7;
    v34 = 0;
    dispatch_apply(v5, 0, v32);
    v11 = v9;
    goto LABEL_19;
  }

  v12 = a1[2];
  if (a2)
  {
    v13 = 0;
    if (!v12)
    {
      goto LABEL_18;
    }

LABEL_16:
    v14 = 0;
    v15 = (a1 + 3);
    do
    {
      _setAttributes(v15);
      ++v14;
      v15 += 80;
    }

    while (v14 < a1[2]);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = a1[3];
    goto LABEL_16;
  }

  v13 = 0;
LABEL_18:
  v11 = v13;
LABEL_19:
  bumpWorkTime(v11, Current);
  if (dword_1EBF46ADC >= 5)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = "Canceled";
      if (!a2)
      {
        v31 = "Complete";
      }

      *buf = 136315138;
      *&buf[4] = v31;
      _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "%s setattr", buf, 0xCu);
    }

    *__error() = v29;
  }

  if (*a1)
  {
    (*a1)(a1[1], a2);
  }

  if (!a2)
  {
    if (a1[2])
    {
      v17 = a1[3];
      if ((*(v17 + 2072) & 1) == 0 && (*(v17 + 1480) & 1) == 0)
      {
        v18 = **(v17 + 1048);
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
        if (v19[33] <= 1)
        {
          v20 = *(v17 + 1472);
          v21 = CFAbsoluteTimeGetCurrent();
          *(v17 + 1472) = v21;
          if (v21 - v20 >= 0.9)
          {
            *(v17 + 1480) = 1;
            v22 = *__error();
            v23 = _SILogForLogForCategory(11);
            v24 = 2 * (dword_1EBF46AF8 < 4);
            if (os_log_type_enabled(v23, v24))
            {
              *buf = 0;
              _os_log_impl(&dword_1C278D000, v23, v24, "Index going idle; sync immediately", buf, 2u);
            }

            *__error() = v22;
            si_sync_ctx_create_with_defer_fd(v17, 0);
            *(v25 + 139) = 1;
            si_enqueue_work_with_qos(*(v17 + 1104), 9, si_sync_index_delayed0, v25);
          }
        }
      }
    }
  }

  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v8);
  free(a1);
  v16 = *MEMORY[0x1E69E9840];
}

void _setAttributes(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v415 = *MEMORY[0x1E69E9840];
  if (*(v7 + 56))
  {
    v9 = dword_1EBF46AD8 < 5;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v273 = *__error();
    v274 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v274, OS_LOG_TYPE_DEFAULT))
    {
      v276 = CFAbsoluteTimeGetCurrent() - *(v8 + 72);
      LODWORD(v367[0]) = 134217984;
      *(v367 + 4) = v276;
      _os_log_impl(&dword_1C278D000, v274, OS_LOG_TYPE_DEFAULT, "Set attributes waited for %f seconds", v367, 0xCu);
    }

    *__error() = v273;
  }

  v10 = 0x1EBF46000uLL;
  if (!v2)
  {
    v334 = v6;
    v327 = v4;
    if (dword_1EBF46ADC < 5)
    {
      v14 = 0;
    }

    else
    {
      v277 = *__error();
      v278 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
      {
        v280 = *(v8 + 24);
        v281 = *(v8 + 52);
        LODWORD(v367[0]) = 134218496;
        *(v367 + 4) = v280;
        WORD2(v367[1]) = 1024;
        *(&v367[1] + 6) = v281;
        WORD1(v367[2]) = 1024;
        HIDWORD(v367[2]) = v281;
        _os_log_impl(&dword_1C278D000, v278, OS_LOG_TYPE_DEFAULT, "_setAttributes oid: %lld source: %d options: 0x%x", v367, 0x18u);
      }

      *__error() = v277;
      v14 = dword_1EBF46ADC > 4;
    }

    v15 = (v8 + 24);
    v16 = *(v8 + 48);
    v17 = v16 & 1;
    if (*(v8 + 24))
    {
      v18 = (v16 >> 1) & 1;
    }

    else
    {
      v18 = 1;
    }

    v19 = v18 != 1 || !v14;
    LODWORD(v346) = *(v8 + 48);
    v348 = v16 & 1;
    if (!v19)
    {
      v287 = *__error();
      v288 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v288, OS_LOG_TYPE_DEFAULT))
      {
        v290 = *v15;
        LODWORD(v367[0]) = 134217984;
        *(v367 + 4) = v290;
        _os_log_impl(&dword_1C278D000, v288, OS_LOG_TYPE_DEFAULT, "Dummy coming in oid: %lld", v367, 0xCu);
      }

      *__error() = v287;
      v16 = *(v8 + 48);
      v17 = v348;
    }

    v337 = v17 == 0;
    LODWORD(v339) = v16 & 0x100;
    v20 = v339 == 0;
    if ((v16 & 0x100) == 0 && v17)
    {
      v20 = (v16 & 0x24) != 0;
    }

    v21 = *(v8 + 64);
    if (_os_feature_enabled_impl() && (v23 = *(v8 + 8)) != 0)
    {
      v24 = CFGetTypeID(v23);
      if (v24 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(*(v8 + 8), @"_kMDItemIsEvictedFile")) != 0)
      {
        v26 = Value;
        v27 = v16;
        v28 = CFGetTypeID(Value);
        if ((v28 == CFBooleanGetTypeID() || (v29 = CFGetTypeID(v26), v29 == CFNumberGetTypeID())) && CFBooleanGetValue(v26))
        {
          v335 = 0;
          *(v8 + 48) &= ~1u;
        }

        else
        {
          v335 = v346;
        }

        v17 = v348;
        v16 = v27;
      }

      else
      {
        v335 = v346;
        v17 = v348;
      }
    }

    else
    {
      v335 = v346;
    }

    v30 = v16;
    if ((v18 & 1) == 0)
    {
      v31 = *(v8 + 16);
      v30 = v16;
      if (v31)
      {
        if (CFDictionaryGetValue(v31, @"_kMDItemDeleted"))
        {
          v30 = v16 | 0x8000;
        }

        else
        {
          v30 = v16;
        }
      }
    }

    if ((v30 & 0x18000) == 0x10000)
    {
      bzero(v367, 0x400uLL);
      v32 = *(v8 + 24);
      if (!(*(*(*v8 + 1416) + 40))())
      {
        v30 |= 0x8000u;
      }
    }

    v341 = v8;
    LODWORD(v338) = v30;
    if ((v30 & 0x8000) != 0)
    {
      v36 = *v15;
      if (*v15)
      {
        if (dword_1EBF46ADC >= 5)
        {
          v296 = v16;
          v297 = *__error();
          v298 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
          {
            v299 = *v15;
            LODWORD(v367[0]) = 134217984;
            *(v367 + 4) = v299;
            _os_log_impl(&dword_1C278D000, v298, OS_LOG_TYPE_DEFAULT, "deleting oid: %lld", v367, 0xCu);
          }

          *__error() = v297;
          v36 = *v15;
          v8 = v341;
          v16 = v296;
        }

        LOBYTE(v367[0]) = 0;
        v37 = *v8;
        _si_delete_attributes_inner(*v8, v36, 0, 0, 1u, 0, v367);
        si_finish_text_store_deletions(v37);
        if (LOBYTE(v367[0]) == 1)
        {
          notify_post("com.apple.spotlight.SyndicatedContentDeleted");
        }

        LODWORD(v349) = 1;
        v17 = v348;
        if (!v20)
        {
LABEL_65:
          if (!v17)
          {
            goto LABEL_69;
          }

          if (*(v8 + 8) == *MEMORY[0x1E695E738])
          {
            v291 = __si_assert_copy_extra_661(*(*v8 + 32));
            v292 = v291;
            v293 = "";
            if (v291)
            {
              v293 = v291;
            }

            __message_assert("%s:%u: failed assertion '%s' %s src: %d id: %d oid: %lld parent: %lld options: %x extra: %p", "SpotlightIndex.c", 27202, "(CFTypeRef)ctx->attrdict!=(CFTypeRef)kCFNull", v293, *(v8 + 52), *(v8 + 64), *(v8 + 24), *(v8 + 32), *(v8 + 48), *(v8 + 16));
            free(v292);
            if (__valid_fs(*(*v8 + 32)))
            {
              v294 = 2989;
            }

            else
            {
              v294 = 3072;
            }

            *v294 = -559038737;
            abort();
          }

          if ((v338 & 0x400) != 0)
          {
LABEL_69:
            LOBYTE(v44) = 0;
            v43 = 0;
          }

          else
          {
            v42 = v338 & 0x200;
            v43 = v42 == 0;
            v44 = v42 >> 9;
          }

          if ((v16 & 0x40) != 0)
          {
            v45 = 4;
          }

          else
          {
            v45 = 6;
          }

          if ((v16 & 0xC0) == 0)
          {
            v45 = 7;
          }

          if ((v16 & 0x1C0) == 0)
          {
            v45 = 5;
            v46 = 5;
            v47 = 5;
            if ((v16 & 0x20) != 0 || !v17)
            {
              goto LABEL_77;
            }

            v60 = (v16 & 0x1000) == 0;
            v61 = !v20 || !v60;
            v45 = v20 && v60 ? 1 : 9;
            v46 = v20 && v60 ? 2 : 9;
            v47 = v61 ? 9 : 3;
            if ((v20 | ((v16 & 0x1000) >> 12)))
            {
              goto LABEL_77;
            }

            v45 = ((v16 << 18) >> 31) & 5;
          }

          v46 = v45;
          v47 = v45;
LABEL_77:
          if (v44)
          {
            v48 = v45;
          }

          else
          {
            v48 = v47;
          }

          LODWORD(v325) = v43;
          if (v43)
          {
            v49 = v46;
          }

          else
          {
            v49 = v48;
          }

          v50 = *(v8 + 52);
          if (v50 - 10 >= 3)
          {
            v51 = v49;
          }

          else
          {
            v51 = v50;
          }

          v52 = v50 - 10 < 3 || v20;
          v345 = v52;
          if ((*(*v8 + 2072) & 1) == 0 && v51 != v50)
          {
            v53 = v16;
            v54 = *__error();
            v55 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v128 = *(v8 + 52);
              v129 = *(v8 + 24);
              LODWORD(v367[0]) = 136316418;
              *(v367 + 4) = "_setAttributes";
              WORD2(v367[1]) = 1024;
              *(&v367[1] + 6) = 27253;
              WORD1(v367[2]) = 1024;
              HIDWORD(v367[2]) = v128;
              LOWORD(v367[3]) = 1024;
              *(&v367[3] + 2) = v51;
              HIWORD(v367[3]) = 2048;
              v368 = v129;
              LOWORD(v369) = 1024;
              *(&v369 + 2) = v338;
              _os_log_error_impl(&dword_1C278D000, v55, OS_LOG_TYPE_ERROR, "%s:%d: ctx->source: %d != source: %d oid: %lld options: %x", v367, 0x2Eu);
            }

            *__error() = v54;
            v16 = v53;
          }

          v326 = v16;
          v56 = v16 & 0x80;
          if ((v349 & 1) == 0)
          {
            v57 = *(v8 + 8);
            if (v57)
            {
              v58 = v16 & 0x80;
              bzero(&v379, 0x400uLL);
              bzero(&v372, 0x400uLL);
              v59 = CFDictionaryGetValue(v57, @":MD:kMDItemPath");
              if (v59 && CFStringGetCString(v59, &v379, 1024, 0x8000100u))
              {
                snprintf(v367, 0x400uLL, "processing oid: %lld source: %d %s", *v15, v51, &v379);
              }

              else
              {
                snprintf(v367, 0x400uLL, "processing oid: %lld source: %d", *v15, v51);
              }

              snprintf(&v372, 0x400uLL, "processing oid: %lld source: %d", *v15, v51);
              v318[509] = 27270;
              v319 = &v372;
              __si_set_error_str(1, "%s:%u: %s", v62, v63, v64, v65, v66, v67, "SpotlightIndex.c");
              v56 = v58;
            }
          }

          v68 = *v8;
          v336 = v56;
          v347 = v15;
          if ((v56 >> 7) | (v339 >> 8))
          {
            v69 = *__error();
            v70 = _SILogForLogForCategory(4);
            v71 = 2 * (dword_1EBF46ADC < 4);
            if (os_log_type_enabled(v70, v71))
            {
              v72 = *v347;
              LODWORD(v367[0]) = 134218496;
              *(v367 + 4) = v72;
              WORD2(v367[1]) = 1024;
              *(&v367[1] + 6) = v338;
              WORD1(v367[2]) = 1024;
              HIDWORD(v367[2]) = v21;
              _os_log_impl(&dword_1C278D000, v70, v71, "DEQUEUE oid: %lld, o: %x t: %d", v367, 0x18u);
            }

            *__error() = v69;
            v15 = v347;
          }

          v333 = v346 & 0x4800;
          v73 = *(v8 + 8);
          v331 = *(v8 + 16);
          v332 = v73;
          v74 = *(v8 + 32);
          v344 = *(v8 + 24);
          v75 = *(v8 + 40);
          v329 = v74;
          v330 = v75;
          v350 = v68;
          if (!v348)
          {
            goto LABEL_131;
          }

          v76 = *MEMORY[0x1E695E480];
          v77 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongLongType, v15);
          pthread_mutex_lock((v68 + 1816));
          if (MEMORY[0x1C691E5E0](*(v68 + 1800), v77) < 2)
          {
            v79 = CFDictionaryGetValue(*(v68 + 1808), v77);
            v78 = v79;
            if (v79)
            {
              CFRetain(v79);
              CFDictionaryRemoveValue(*(v68 + 1808), v77);
            }
          }

          else if (dword_1EBF46ADC >= 5)
          {
            v300 = *__error();
            v301 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v301, OS_LOG_TYPE_DEFAULT))
            {
              v302 = *v347;
              LODWORD(v367[0]) = 134217984;
              *(v367 + 4) = v302;
              _os_log_impl(&dword_1C278D000, v301, OS_LOG_TYPE_DEFAULT, "Duplicate in flight oid: %lld", v367, 0xCu);
            }

            v78 = 0;
            *__error() = v300;
            LODWORD(v349) = 1;
            v8 = v341;
            v68 = v350;
          }

          else
          {
            v78 = 0;
            LODWORD(v349) = 1;
          }

          CFBagRemoveValue(*(v68 + 1800), v77);
          pthread_mutex_unlock((v68 + 1816));
          CFRelease(v77);
          if (v78)
          {
            Mutable = CFDictionaryCreateMutable(v76, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v81 = *(v8 + 8);
            v367[0] = Mutable;
            v367[1] = v81;
            Count = CFArrayGetCount(v78);
            if (Count >= 1)
            {
              v83 = Count + 1;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v78, v83 - 2);
                CFDictionaryApplyFunction(ValueAtIndex, preProcessInFlight, v367);
                --v83;
              }

              while (v83 > 1);
            }

            v328 = CFDictionaryGetCount(Mutable);
            if (!v328)
            {
              CFRelease(Mutable);
              Mutable = 0;
            }

            v340 = Mutable;
            CFRelease(v78);
            v68 = v350;
          }

          else
          {
LABEL_131:
            v328 = 0;
            v340 = 0;
          }

          v85 = 0;
          if (v51 == 4)
          {
            v86 = 1;
          }

          else
          {
            v86 = v345;
          }

          *&v22 = 67109376;
          v342 = v22;
          *&v22 = 67109120;
          v343 = v22;
          do
          {
            if (v86)
            {
              LiveIndex = si_getLiveIndex(*(v68 + 1384));
            }

            else
            {
              LiveIndex = si_getSyncIndex(v68, v21);
            }

            SyncIndex = LiveIndex;
            if (v21 < 1)
            {
              goto LABEL_156;
            }

            v21 &= ~(v21 >> 31);
            if (v21 > LiveIndex[10] && (LiveIndex[11] & 1) == 0)
            {
              v89 = v51;
              v90 = *__error();
              v91 = _SILogForLogForCategory(4);
              v92 = v10;
              v93 = *(v10 + 2780) < 3;
              if (os_log_type_enabled(v91, v93))
              {
                v94 = SyncIndex[10];
                v367[0] = __PAIR64__(v21, v342);
                LOWORD(v367[1]) = 1024;
                *(&v367[1] + 2) = v94;
                _os_log_impl(&dword_1C278D000, v91, v93, "*warn* Unexpected transaction id %d. Expected %d. Attempting repair", v367, 0xEu);
              }

              *__error() = v90;
              v68 = v350;
              si_sync_ctx_create_with_defer_fd(v350, 0);
              v96 = v95;
              *(v95 + 80) = v21 - 1;
              v97 = *(v68 + 1048);
              v98 = qos_class_self();
              si_enqueue_barrier_with_qos(v97, v98, si_initialIndexingEndedQueueOnFlush, v96);
              v99 = *__error();
              v100 = _SILogForLogForCategory(4);
              v101 = *(v92 + 2780) < 3;
              if (os_log_type_enabled(v100, v101))
              {
                v367[0] = __PAIR64__(si_getSyncIndex(v68, v21)[10], v343);
                _os_log_impl(&dword_1C278D000, v100, v101, "*warn* Transaction id is now %d", v367, 8u);
              }

              *__error() = v99;
              SyncIndex = si_getSyncIndex(v68, v21);
              v10 = v92;
              v51 = v89;
            }

            v102 = SyncIndex[10];
            if (v21 <= v102 || SyncIndex == v85 || SyncIndex == 0)
            {
              break;
            }

            v85 = SyncIndex;
          }

          while (*(SyncIndex + 44) != 1);
          if ((v337 | v345) & 1 | (v21 >= v102))
          {
LABEL_156:
            v8 = v341;
            v105 = v347;
          }

          else
          {
            v8 = v341;
            v105 = v347;
            if ((SyncIndex[11] & 1) == 0)
            {
              if (*(v68 + 2424) < v21 && v344 != -1)
              {
                *(v68 + 2424) = v21;
                v110 = *__error();
                v111 = _SILogForLogForCategory(4);
                v112 = *(v10 + 2780) < 3;
                if (os_log_type_enabled(v111, v112))
                {
                  v113 = SyncIndex[10];
                  LODWORD(v367[0]) = 67109632;
                  HIDWORD(v367[0]) = v21;
                  LOWORD(v367[1]) = 1024;
                  *(&v367[1] + 2) = v113;
                  HIWORD(v367[1]) = 2048;
                  v367[2] = v344;
                  _os_log_impl(&dword_1C278D000, v111, v112, "*warn* Items's transaction id %d is too low for the current index %d. Discarding oid %llx.", v367, 0x18u);
                }

                *__error() = v110;
                v105 = v347;
              }

              goto LABEL_158;
            }
          }

          if (v349)
          {
LABEL_158:
            if (*(v10 + 2780) < 5)
            {
LABEL_159:
              LOBYTE(v106) = 0;
              goto LABEL_484;
            }

            v283 = *__error();
            v284 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v367[0]) = 134217984;
              *(v367 + 4) = v344;
              _os_log_impl(&dword_1C278D000, v284, OS_LOG_TYPE_DEFAULT, "isDummy oid: %lld", v367, 0xCu);
            }

            LOBYTE(v106) = 0;
            *__error() = v283;
LABEL_484:
            if (v336 && !*v105)
            {
              v245 = *__error();
              v246 = _SILogForLogForCategory(4);
              v247 = 2 * (*(v10 + 2780) < 4);
              if (os_log_type_enabled(v246, v247))
              {
                LOWORD(v367[0]) = 0;
                _os_log_impl(&dword_1C278D000, v246, v247, "All recovery items processed", v367, 2u);
              }

              *__error() = v245;
              v68 = v350;
              *(v350 + 6892) = 1;
            }

            if (SyncIndex)
            {
              v248 = v106;
            }

            else
            {
              v248 = 1;
            }

            if ((v248 & 1) == 0)
            {
              v249 = si_getLiveIndex(*(*v8 + 1384));
              _CIUpdateContent(v249, 0, 0, 0, 0, 0, 0, 0, 0.0, 0, 0, 0, v51, 0, (*(v68 + 6584) >> 25) & 3, lowDiskSpaceCallback, v68, 0, 0, *(v68 + 2464), v334, 0);
              if (v344)
              {
                v250 = *__error();
                v251 = _SILogForLogForCategory(4);
                v252 = 2 * (*(v10 + 2780) < 4);
                if (os_log_type_enabled(v251, v252))
                {
                  LODWORD(v367[0]) = 134217984;
                  *(v367 + 4) = v344;
                  _os_log_impl(&dword_1C278D000, v251, v252, "Dummy for oid %lld", v367, 0xCu);
                }

                *__error() = v250;
              }
            }

            v253 = *(v68 + 1484);
            atomic_compare_exchange_strong_explicit((v68 + 1484), &v253, 0, memory_order_relaxed, memory_order_relaxed);
            if (v340)
            {
              CFRelease(v340);
            }

            _si_set_error_str(0, 1);
            v254 = *(v8 + 56);
            if (v254)
            {
              v255 = *(v68 + 1048);
              v256 = *(v255 + 8);
              v367[0] = MEMORY[0x1E69E9820];
              v367[1] = 0x40000000;
              v367[2] = __si_pop_queue_block_invoke;
              v367[3] = &__block_descriptor_tmp_42_1565;
              v368 = v255;
              v369 = v254;
              p_obj = 1;
              v371 = v105;
              dispatch_sync(v256, v367);
            }

            goto LABEL_501;
          }

          if (!v344)
          {
            if (*(v10 + 2780) >= 5)
            {
              v114 = *__error();
              v115 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v367[0]) = 134217984;
                *(v367 + 4) = 0;
                _os_log_impl(&dword_1C278D000, v115, OS_LOG_TYPE_DEFAULT, "oid is zero: %lld", v367, 0xCu);
              }

              *__error() = v114;
              LOBYTE(v106) = 1;
              v8 = v341;
              v105 = v347;
              v68 = v350;
              goto LABEL_484;
            }

LABEL_483:
            LOBYTE(v106) = 1;
            goto LABEL_484;
          }

          v107 = *(v68 + 1192);
          obj = 0;
          obj_callback = db_get_obj_callback(v107, v344, &obj, 0x10000, si_docIdRewriteCallback, *(v68 + 2368), 0);
          v109 = obj_callback;
          if (obj_callback)
          {
            if (obj_callback == 9)
            {
              v106 = 0;
LABEL_468:
              if (obj)
              {
                free(obj);
                obj = 0;
              }

              if (SyncIndex)
              {
                v238 = v106;
              }

              else
              {
                v238 = 0;
              }

              if (v238 != 1)
              {
                goto LABEL_484;
              }

              v239 = atomic_load(SyncIndex + 9);
              if ((v239 & 2) == 0 && (*(SyncIndex + 15203) & 1) == 0 && *(SyncIndex + 15664) && !atomic_fetch_or((v68 + 1448), 2u))
              {
                v240 = *__error();
                v241 = _SILogForLogForCategory(4);
                v242 = 2 * (*(v10 + 2780) < 4);
                if (os_log_type_enabled(v241, v242))
                {
                  LOWORD(v367[0]) = 0;
                  _os_log_impl(&dword_1C278D000, v241, v242, "Schedule index flush.", v367, 2u);
                }

                *__error() = v240;
                v243 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
                v68 = v350;
                *v243 = v350;
                v243[1] = SyncIndex;
                v244 = SyncIndex[14];
                *(v243 + 4) = 2;
                *(v243 + 5) = v244;
                si_indexDeleteDeferredItems(v68);
                v243[5] = copyHoldQueue(*v243);
                if (!v243[9] && !*(v243 + 12))
                {
                  v267 = *(v68 + 2360);
                  if (v267)
                  {
                    v268 = *(v267 + 64);
                    if (v268)
                    {
                      *(v243 + 12) = v268(*(v267 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 28066, "void _setAttributes(si_set_attr_ctx *, _Bool, dispatch_group_t, Boolean)");
                    }
                  }
                }

                si_enqueue_work(*(v68 + 1040), _flushCache, v243);
              }

              goto LABEL_483;
            }
          }

          else
          {
            obj_callback = db_validate_obj(v107);
          }

          LODWORD(v342) = v109;
          v349 = v107;
          v353 = 0;
          v354 = 0;
          v352 = 0;
          v116 = v337;
          if (!obj)
          {
            v116 = 0;
          }

          v117 = v332;
          if (v116 == 1 && v332)
          {
            derivedAttributesCheck(v332, &v353, &v354, 1, &v352, v349, obj, v344);
          }

          MEMORY[0x1EEE9AC00](obj_callback);
          bzero(v318, 0x1000uLL);
          allocator = _SIStackAllocatorCreate(v318, 4096, indexingZone);
          v118 = v331;
          if (v117)
          {
            v119 = CFDictionaryGetCount(v117);
            if (v118)
            {
LABEL_182:
              v120 = CFDictionaryGetCount(v118);
              goto LABEL_187;
            }
          }

          else
          {
            v119 = 0;
            if (v331)
            {
              goto LABEL_182;
            }
          }

          v120 = 0;
LABEL_187:
          v121 = v328 + v119 + v120;
          v122 = v121 + 4;
          v123 = v121 + 27;
          v328 = MEMORY[0x1C691E420](allocator, 16 * &v121[(v121 + 4)] + 656, 4272640632, 16 * &v121[(v121 + 4)] + 656);
          v124 = &v328[(v121 + 27)];
          v125 = &v124[(v121 + 27)];
          bzero(v380, 0x260uLL);
          v126 = 0;
          v379 = 0xFFF0000000000000;
          if (v335)
          {
            v127 = 2;
          }

          else
          {
            v127 = 0;
          }

          if (v51 == 10)
          {
            ++v127;
          }

          v381 = v127;
          v323 = v124;
          if (v342 || !obj)
          {
LABEL_207:
            v133 = v68;
            v134 = &v125[v121];
            v381 = v381 & 0xFFFFFE7F | v126 | (*(v133 + 2072) << 8) | 0x1000;
            v135 = v354;
            if (v354)
            {
              v135 = CFRetain(v354);
            }

            v8 = v341;
            v384 = v135;
            v391 = v328;
            v392 = v124;
            v394 = v123;
            v397 = v125;
            v398 = v134;
            v400 = v122;
            v410 = -1;
            v412 = -1;
            v136 = v350;
            v138 = v331;
            v137 = v332;
            if (obj)
            {
              LOBYTE(v351) = 0;
              v367[0] = 0;
              v372 = 0;
              if (db_get_field(v349, obj, "_kMDItemGroupId", v367, &v372))
              {
                if (!si_getGroupFromDBO(v136, obj, &v351) && *(v10 + 2780) >= 5)
                {
                  v139 = *__error();
                  v140 = _SILogForLogForCategory(4);
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                  {
                    *v356 = 0;
                    _os_log_impl(&dword_1C278D000, v140, OS_LOG_TYPE_DEFAULT, "Couldn't get the group id.", v356, 2u);
                  }

                  *__error() = v139;
                  v8 = v341;
                  v136 = v350;
                  v138 = v331;
                  v137 = v332;
                }
              }

              else if (*(v367[0] + 8) == 1)
              {
                LOBYTE(v351) = *v372;
              }

              if ((v351 & 0xF7) == 2)
              {
                v381 |= 0x400u;
              }
            }

            if (v137 | v138)
            {
              v141 = v340;
              if (v340)
              {
                CFDictionaryApplyFunction(v340, preProcess, &v379);
                CFRelease(v141);
              }

              v142 = v353;
              if (v353)
              {
                CFDictionaryApplyFunction(v353, preProcess, &v379);
                CFRelease(v142);
                v353 = 0;
              }

              if (v138)
              {
                CFDictionaryApplyFunction(v138, preProcess, &v379);
              }

              v404 = v138;
              if (v137)
              {
                CFDictionaryApplyFunction(v137, preProcess, &v379);
              }

              postPreprocess(&v379, 0);
              if (v354)
              {
                CFRelease(v354);
              }

              v354 = 0;
              handleUserTags(&v379);
              if (v405)
              {
                if (SyncIndex)
                {
                  if (v51 <= 3)
                  {
                    ContentIndexUpdateTimeStamp(SyncIndex, v405, v325, v345);
                    if (v405 > *(v136 + 2408))
                    {
                      *(v136 + 2408) = v405;
                    }
                  }
                }
              }

              if (v383)
              {
                InsertPreProcessContextAddAttr(&v379, @"_kTimeMachineOldestSnapshot", v383, 0);
                v383 = 0;
              }

              v143 = v338;
              if (v382)
              {
                InsertPreProcessContextAddAttr(&v379, @"_kTimeMachineNewestSnapshot", v382, 0);
                v382 = 0;
              }

              v144 = v381;
              if ((v381 & 0x10) != 0 && v393)
              {
                v144 = v381 & 0xEF;
                v381 &= ~0x10u;
              }

              if ((v144 & 0x20) != 0)
              {
                if (v387)
                {
                  if (!CFDictionaryGetValue(v137, @"_kMDItemSnippet"))
                  {
                    v145 = SICreateStringByRemovingWhitespaceFromTextContent(allocator, v387, 300);
                    if (v145)
                    {
                      InsertPreProcessContextAddAttr(&v379, @"_kMDItemSnippet", v145, 0);
                    }
                  }
                }
              }

              v340 = 0;
              v146 = v329;
              if (v414)
              {
                v147 = v329 == 0;
              }

              else
              {
                v147 = 1;
              }

              if (!v147)
              {
                v146 = v414;
              }

              v329 = v146;
            }

            else
            {
              v143 = v338;
            }

            v148 = v349;
            if (obj)
            {
              if (!v395 && (v346 & 0x801) == 0x800)
              {
                v367[0] = 0;
                v372 = 0;
                if (!db_get_field(v349, obj, "_kMDItemUserTags", v367, &v372))
                {
                  v149 = _decodeSDBField(v148, v367[0], v372, 0, 0, 0, 0, *MEMORY[0x1E695E480]);
                  v150 = CFGetTypeID(v149);
                  if (v150 == CFStringGetTypeID() || (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(v149)))
                  {
                    v395 = @":EA:_kMDItemUserTags";
                    v396 = v149;
                    handleUserTags(&v379);
                  }

                  else
                  {
                    CFRelease(v149);
                  }

                  v148 = v349;
                }
              }
            }

            if ((v381 & 4) != 0 && !v348)
            {
              v152 = *__error();
              v153 = _SILogForLogForCategory(0);
              v154 = 2 * (gSILogLevels[0] < 4);
              if (os_log_type_enabled(v153, v154))
              {
                LOWORD(v367[0]) = 0;
                _os_log_impl(&dword_1C278D000, v153, v154, "Dictionary claims the importer was the origin, but trail tells us it was not. Treating as normal setAttr call.", v367, 2u);
              }

              *__error() = v152;
              v148 = v349;
            }

            v155 = v385;
            if (v385)
            {
              CFRetain(v385);
            }

            v156 = v386;
            if (v386)
            {
              CFRetain(v386);
            }

            v325 = v156;
            v346 = v155;
            if (dword_1EBF46AE4 >= 5)
            {
              v303 = *__error();
              v304 = _SILogForLogForCategory(6);
              if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v367[0]) = 138412546;
                *(v367 + 4) = v325;
                WORD2(v367[1]) = 2112;
                *(&v367[1] + 6) = v346;
                _os_log_impl(&dword_1C278D000, v304, OS_LOG_TYPE_DEFAULT, "%@ = %@", v367, 0x16u);
              }

              *__error() = v303;
              v8 = v341;
              v148 = v349;
              v143 = v338;
            }

            v157 = v342;
            if (!v380[0] && v348)
            {
              v381 &= ~0x10u;
            }

            if (*(*v8 + 2072) & 1 | (v333 != 0) | v335 & 1)
            {
              v158 = v143 | 0x200;
            }

            else
            {
              v158 = v143;
            }

            v320 = v158;
            if (!v330 || (v159 = *(v330 + 56)) == 0)
            {
              v159 = gDefaultSchema;
            }

            v160 = v342 != 0;
            if (!v342)
            {
              if (obj)
              {
                if (!v348)
                {
                  if (*(v350 + 1152))
                  {
                    v161 = obj[4];
                    if (v161)
                    {
                      if (v161 > *(v350 + 1304) && v161 <= *(v350 + 1312) && objectHasContent(v148, obj) && (v381 & 0x20) == 0)
                      {
                        v162 = *obj;
                        free(obj);
                        obj = 0;
                        cleanupPreProcContext(&v379);
                        if (v328)
                        {
                          CFAllocatorDeallocate(allocator, v328);
                        }

                        v105 = v347;
                        v68 = v350;
                        if (!v393)
                        {
                          v269 = malloc_type_malloc(0x50uLL, 0x10E0040BFFD03D2uLL);
                          *v269 = *v8;
                          v270 = *(v8 + 64);
                          v272 = *(v8 + 16);
                          v271 = *(v8 + 32);
                          v269[3] = *(v8 + 48);
                          v269[4] = v270;
                          v269[1] = v272;
                          v269[2] = v271;
                          *(v8 + 48) = 0u;
                          *(v8 + 64) = 0u;
                          *(v8 + 16) = 0u;
                          *(v8 + 32) = 0u;
                          *v8 = 0u;
                          si_enqueue_work(*(v68 + 1152), setAttributes, v269);
                          goto LABEL_508;
                        }

                        (*(*(v350 + 2360) + 16))(*(*(v350 + 2360) + 144), v162, 0, 0);
                        goto LABEL_159;
                      }
                    }
                  }
                }
              }
            }

            if ((v160 | v335))
            {
              v338 = 0;
              v163 = v350;
            }

            else
            {
              v163 = v350;
              if (v387 != *MEMORY[0x1E695E738] && (objectHasContent(v148, obj) || (*(v163 + 6584) & 0x10) != 0))
              {
                v338 = decodeDBOToDictionary(v148, obj, 0, 0x2000, 2, *(v163 + 2028), *(v163 + 2060), *(v163 + 1284) > 83, 0, allocator);
              }

              else
              {
                v338 = 0;
              }
            }

            v164 = 0;
            v165 = 0;
            v166 = v344;
            if (!v157 && obj)
            {
              v367[0] = *(v163 + 2012);
              v372 = 0;
              *v356 = 0;
              v164 = 0;
              if (!db_get_field_by_id(v148, obj, v367, &v372, v356))
              {
                v164 = **v356;
              }

              LODWORD(v367[0]) = *(v163 + 2008);
              if (db_get_field_by_id(v148, obj, v367, &v372, v356))
              {
                v165 = 0;
              }

              else
              {
                v165 = **v356;
              }

              v166 = v344;
            }

            v322 = v165;
            *&v342 = v164;
            v167 = v166;
            si_indexDeleteDeferredItemsIfItemIncluded(v163, v166);
            v168 = obj;
            v321 = obj;
            if (obj)
            {
              obj = db_copy_obj(obj, 1024);
              db_validate_obj(v148);
              free(v168);
              v169 = v51 == 10 && v333 == 0;
              v170 = v337;
              if (v169)
              {
                v170 = 0;
              }

              if (v170 == 1)
              {
                v337 = candidateForReimport(v163, &obj);
              }

              else
              {
                v337 = 0;
              }

              if (v335)
              {
                v173 = db_delete_fields_with_flags(v148, obj);
                LOBYTE(v168) = v173 == 0;
                if (v173 && dword_1EBF46AE8 >= 5)
                {
                  v313 = v173;
                  v314 = *__error();
                  v315 = _SILogForLogForCategory(7);
                  if (os_log_type_enabled(v315, OS_LOG_TYPE_DEFAULT))
                  {
                    v367[0] = __PAIR64__(v313, v343);
                    _os_log_impl(&dword_1C278D000, v315, OS_LOG_TYPE_DEFAULT, "Deleting importer fields failed, rc:%d", v367, 8u);
                  }

                  *__error() = v314;
                  v8 = v341;
                  v163 = v350;
                }

                if (!v387)
                {
                  InsertPreProcessContextAddAttr(&v379, @"_kMDItemTextContentIndexExists", *MEMORY[0x1E695E4C0], 0);
                }

                v148 = v349;
              }

              else
              {
                LOBYTE(v168) = 0;
              }
            }

            else
            {
              obj = db_create_obj(v148, 1024, 0);
              *obj = v167;
              v171 = v51 == 10 && v333 == 0;
              v172 = v337;
              if (v171)
              {
                v172 = 0;
              }

              v337 = v172;
            }

            if ((v381 & 8) != 0)
            {
              *(obj + 10) |= 2u;
            }

            if (v339)
            {
              if (*(v8 + 8))
              {
                v309 = __si_assert_copy_extra_661(-1);
                v310 = v309;
                v311 = "";
                if (v309)
                {
                  v311 = v309;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 27904, "ctx->attrdict==((void*)0)", v311);
                free(v310);
                if (__valid_fs(-1))
                {
                  v312 = 2989;
                }

                else
                {
                  v312 = 3072;
                }

                *v312 = -559038737;
                abort();
              }

              v372 = 0;
              v373 = &v372;
              v374 = 0x2000000000;
              LOBYTE(v375) = 0;
              v176 = *(v163 + 6880);
              if (v176)
              {
                *v356 = 0;
                if (!db_get_obj(v176, *obj, v356, 0))
                {
                  v177 = *v356;
                  *(obj + 10) = *(*v356 + 40);
                  *(v373 + 24) = 1;
                  v178 = *(v163 + 6880);
                  v367[0] = MEMORY[0x1E69E9820];
                  v367[1] = 0x40000000;
                  v367[2] = __si_addRecoveryAttributes_block_invoke;
                  v367[3] = &unk_1E8195E80;
                  v368 = &v372;
                  v369 = v163;
                  p_obj = &obj;
                  v371 = v177;
                  _enumerate_dbo(v178, v177, 0, v367);
                  free(*v356);
                }

                v179 = *(v373 + 24);
                _Block_object_dispose(&v372, 8);
                if ((v179 & 1) == 0)
                {
                  goto LABEL_415;
                }

                LODWORD(v343) = 0;
                v180 = 1;
                goto LABEL_419;
              }

              _Block_object_dispose(&v372, 8);
            }

            else
            {
              if (v399)
              {
                setDatastoreLocalizedAttributes(v148, &obj, v397, v398, v399, v159, 0, v348, v333 != 0);
                db_validate_obj(v148);
                LOBYTE(v168) = 1;
              }

              if (!v393)
              {
LABEL_355:
                v183 = v380[0];
                if (v380[0])
                {
                  v184 = *&v379;
                  LOBYTE(v168) = 1;
                  v185 = v148;
                }

                else
                {
                  if ((v381 & 0x800) == 0)
                  {
                    goto LABEL_360;
                  }

                  v184 = *&v379;
                  LOBYTE(v168) = 1;
                  v185 = v148;
                  v183 = 0;
                }

                markItemAsUsedForField(v185, &obj, "kMDItemLastUsedDate", "kMDItemUsedDates", v183, 1, 1, 0, v184);
LABEL_360:
                if (v409)
                {
                  memset(v367, 0, sizeof(v367));
                  v186 = CFStringGetTypeID();
                  if (v186 == CFGetTypeID(v409) && CFStringGetCString(v409, v367, 32, 0x8000100u))
                  {
                    Current = CFAbsoluteTimeGetCurrent();
                    v188 = v410;
                    v189 = v367;
                    v190 = v148;
                  }

                  else
                  {
                    Current = 0.0;
                    v190 = v148;
                    v189 = 0;
                    v188 = 0;
                  }

                  updateItemRecentEngagementData(v190, &obj, v189, v188, "_kMDItemRecentAppSearchEngagementQueries", "_kMDItemRecentAppSearchEngagementDates", "_kMDItemRecentAppSearchEngagementRenderPositions", 1, Current);
                  LOBYTE(v168) = 1;
                }

                if (v411)
                {
                  memset(v367, 0, sizeof(v367));
                  v191 = CFStringGetTypeID();
                  if (v191 == CFGetTypeID(v411) && CFStringGetCString(v411, v367, 32, 0x8000100u))
                  {
                    v192 = CFAbsoluteTimeGetCurrent();
                    v193 = v412;
                    v194 = v367;
                    v195 = v148;
                  }

                  else
                  {
                    v192 = 0.0;
                    v195 = v148;
                    v194 = 0;
                    v193 = 0;
                  }

                  updateItemRecentSpotlightEngagementData(v195, &obj, v194, v193, v192);
                  LOBYTE(v168) = 1;
                }

                if (v413)
                {
                  v196 = CFDateGetTypeID();
                  v197 = CFGetTypeID(v413);
                  v198 = 0.0;
                  if (v196 == v197)
                  {
                    v198 = MEMORY[0x1C691E960](v413, 0.0);
                  }

                  updateItemRecentOutOfSpotlightEngagementData(v148, &obj, v198);
                  LOBYTE(v168) = 1;
                }

                if (v407)
                {
                  v199 = fmax(markItemAsUsedForField(v148, &obj, "_kMDItemInterestingDate", 0, v407, 0, 0, 0x2108u, 0.0), 0.0);
                  v200 = SICopyRoundedDate();
                  markItemAsUsedForField(v148, &obj, "kMDItemInterestingDate_Ranking", 0, v200, 0, 0, 0x100u, 0.0);
                  CFRelease(v200);
                  LOBYTE(v168) = 1;
                }

                else
                {
                  v201 = v406;
                  if (v406)
                  {
                    LODWORD(v367[0]) = 0;
                    v201 = CFNumberGetValue(v406, kCFNumberSInt32Type, v367);
                  }

                  v199 = 0;
                }

                v202 = v346;
                if (!v348 && !v407)
                {
                  LOBYTE(v367[0]) = 0;
                  v203 = fmax(getTimeForDateField(v148, obj, v367), 0.0);
                  if (LOBYTE(v367[0]))
                  {
                    v199 = v203;
                  }
                }

                v204 = v402;
                v205 = v401 != 0.0;
                if (v402 != 0.0)
                {
                  v205 = 1;
                }

                if (v403 != 0.0)
                {
                  v205 = 1;
                }

                LODWORD(v343) = v199;
                if (v205 != 1)
                {
LABEL_413:
                  v180 = v205 ^ 1;
                  if (!v202 && (v168 & 1) == 0)
                  {
                    goto LABEL_415;
                  }

LABEL_419:
                  v68 = v350;
                  v223 = v329;
                  if ((v381 & 0x40) == 0)
                  {
                    if (v387)
                    {
                      v224 = CFDictionaryGetValue(v332, @"kMDItemContentType");
                      if (v224)
                      {
                        v225 = v224;
                        v226 = CFStringGetTypeID();
                        if (v226 == CFGetTypeID(v225))
                        {
                          if (CFEqual(v225, @"public.plain-text") || CFEqual(v225, @"public.data") || CFStringHasPrefix(v225, @"dyn."))
                          {
                            goto LABEL_426;
                          }

                          if (v331)
                          {
                            v282 = CFDictionaryGetValue(v331, @"kMDItemContentTypeTree");
                          }

                          else
                          {
                            v282 = 0;
                          }

                          if (!v282 && v332)
                          {
                            v282 = CFDictionaryGetValue(v332, @"kMDItemContentTypeTree");
                          }

                          if (v282)
                          {
                            v295 = CFArrayGetTypeID();
                            if (v295 == CFGetTypeID(v282))
                            {
                              v416.length = CFArrayGetCount(v282);
                              v416.location = 0;
                              if (CFArrayContainsValue(v282, v416, @"public.plain-text"))
                              {
LABEL_426:
                                v381 |= 0x40u;
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  v227 = 0;
                  v228 = v381;
                  v229 = v387;
                  if ((v326 & 0x40) != 0 || (v381 & 0x1000) == 0)
                  {
                    v222 = v346;
                  }

                  else
                  {
                    v222 = v346;
                    if (!v387)
                    {
                      if (*(v8 + 49))
                      {
                        v227 = 1;
                      }

                      else
                      {
                        v227 = (v335 ^ 1) & ((v381 & 0x10) >> 4);
                      }
                    }
                  }

                  v230 = obj[3];
                  if (v223)
                  {
                    obj[3] = v223;
                    v228 = v381;
                  }

                  if (v345)
                  {
                    v231 = ((*(v68 + 1284) > 83) << 10) | 2;
                  }

                  else
                  {
                    v231 = (*(v68 + 1284) > 83) << 10;
                  }

                  if (v335)
                  {
                    v231 |= 4u;
                  }

                  if (v333)
                  {
                    v231 |= 0x10u;
                  }

                  v232 = v228 >> 3;
                  v233 = (2 * v228) & 0xA0 | (((v228 >> 3) & 1) << 6) | v231;
                  if (v227)
                  {
                    v234 = v233 | 0x100;
                  }

                  else
                  {
                    v234 = v233;
                  }

                  v235 = v234 | v232 & 0x200;
                  if (!v321)
                  {
                    v235 |= 0x800u;
                  }

                  if (v337)
                  {
                    v235 |= 0x1000u;
                  }

                  v372 = *(v8 + 8);
                  v373 = v229;
                  if (v180)
                  {
                    v235 |= 0x2000u;
                  }

                  if (v334)
                  {
                    v235 |= 0x4000u;
                  }

                  v374 = v390;
                  v375 = v222;
                  v376 = v325;
                  v377 = v388;
                  v378 = v389;
                  v236 = si_writeBackAndIndexWithLiveQueryToggle(v68, SyncIndex, &v372, v338, v230, &obj, v51, v235 | (v348 << 17), v330, *(v8 + 64), v342, v322, v343, v408, v327);
                  v105 = v347;
                  if (v236 != 89)
                  {
                    v237 = v236;
                    if (v236)
                    {
                      if (v236 != -3)
                      {
                        v261 = v236;
                        if ((*(v68 + 2072) & 1) == 0)
                        {
                          bzero(v367, 0x1000uLL);
                          v351 = 0;
                          v262 = *(v68 + 1416);
                          v263 = *v105;
                          *v317 = -1;
                          OidPathForOid = SIPersistentIDStoreGetOidPathForOid(v262, v263, v367, 1, &v351);
                          v261 = OidPathForOid | v351 ? OidPathForOid : 2;
                          if (_setAttributes__COUNT_ >= 1)
                          {
                            --_setAttributes__COUNT_;
                            v265 = *__error();
                            v266 = _SILogForLogForCategory(0);
                            if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
                            {
                              v285 = *(v8 + 24);
                              v286 = *(v8 + 48);
                              *v356 = 136316418;
                              *&v356[4] = "_setAttributes";
                              v357 = 1024;
                              v358 = 28006;
                              v359 = 2048;
                              v360 = v285;
                              v361 = 1024;
                              v362 = v286;
                              v363 = 1024;
                              v364 = v237;
                              v365 = 1024;
                              v366 = v261;
                              _os_log_error_impl(&dword_1C278D000, v266, OS_LOG_TYPE_ERROR, "%s:%d: Couldn't update index oid: %lld options: %x updateErr: %d resolveErr: %d", v356, 0x2Eu);
                            }

                            *__error() = v265;
                            v105 = v347;
                          }
                        }

                        if (v261 != 2 && v261 != 22)
                        {
                          si_makeUnavailable(v68, v237, 2 * (v237 != 22), 16, "set attributes err");
                        }

                        v106 = 0;
                        goto LABEL_418;
                      }

                      if ((*(v68 + 2458) & 1) == 0)
                      {
                        *(v68 + 2458) = 1;
                        _SIConsistencyCheck(v68);
                      }
                    }
                  }

                  db_validate_obj(v349);
                  v106 = 1;
                  goto LABEL_460;
                }

                LODWORD(v323) = 1;
                v339 = v318;
                if (v402 == 0.0)
                {
                  v204 = v403;
                }

                v206 = "_kMDItemAppEngagementData";
                if (v402 != 0.0)
                {
                  v206 = "_kMDItemEngagementData";
                }

                if (v401 == 0.0)
                {
                  v207 = v204;
                }

                else
                {
                  v207 = v401;
                }

                if (v401 == 0.0)
                {
                  v208 = v206;
                }

                else
                {
                  v208 = "_kMDItemRenderData";
                }

                v372 = 0;
                *v356 = 0;
                MEMORY[0x1EEE9AC00](v201);
                bzero(v316, 0x2E3uLL);
                v209 = v349;
                db_validate_obj(v349);
                if (!*obj)
                {
LABEL_412:
                  v205 = v323;
                  goto LABEL_413;
                }

                field = db_get_field(v209, obj, v208, v356, &v372);
                if (field)
                {
                  v320 = *__error();
                  v211 = _SILogForLogForCategory(4);
                  v212 = v10;
                  v213 = 2 * (*(v10 + 2780) < 4);
                  if (os_log_type_enabled(v211, v213))
                  {
                    LOWORD(v367[0]) = 0;
                    _os_log_impl(&dword_1C278D000, v211, v213, "db didn't find any existing values", v367, 2u);
                  }

                  v214 = __error();
                  v215 = 0;
                  *v214 = v320;
                  v10 = v212;
                  v202 = v346;
                }

                else
                {
                  v215 = *(*v356 + 8);
                }

                v351 = 0;
                if (markItemAsRenderedOrEngaged(v316, v372, v215, &v351, field == 0, v207))
                {
                  v217 = db_add_field(v349, &obj, 1u, v208, 0, 0, 14, v316, v216, v351);
                  v8 = v341;
                  if (!v217)
                  {
                    LOBYTE(v168) = 1;
                    goto LABEL_412;
                  }

                  v218 = *__error();
                  v219 = _SILogForLogForCategory(4);
                  if (!os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_411;
                  }

                  LODWORD(v367[0]) = 136315394;
                  *(v367 + 4) = "_setAttributes";
                  WORD2(v367[1]) = 1024;
                  *(&v367[1] + 6) = 27891;
                  v220 = "%s:%d: db get field failed in counts code";
                }

                else
                {
                  v218 = *__error();
                  v219 = _SILogForLogForCategory(4);
                  v221 = os_log_type_enabled(v219, OS_LOG_TYPE_ERROR);
                  v8 = v341;
                  if (!v221)
                  {
LABEL_411:
                    v202 = v346;
                    *__error() = v218;
                    goto LABEL_412;
                  }

                  LODWORD(v367[0]) = 136315394;
                  *(v367 + 4) = "_setAttributes";
                  WORD2(v367[1]) = 1024;
                  *(&v367[1] + 6) = 27883;
                  v220 = "%s:%d: marking item as rendered/engaged failed";
                }

                _os_log_error_impl(&dword_1C278D000, v219, OS_LOG_TYPE_ERROR, v220, v367, 0x12u);
                goto LABEL_411;
              }

              v174 = CFDictionaryCreate(*MEMORY[0x1E695E480], v391, v323, v393, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v348)
              {
                v175 = 1;
              }

              else
              {
                v175 = *(v8 + 52) == 12;
              }

              v181 = setDatastoreAttributes(v349, &obj, v174, v320, v159, 0, v175, v333 != 0);
              v182 = v181;
              if (v174)
              {
                CFRelease(v174);
                if (!v182)
                {
                  goto LABEL_415;
                }

                goto LABEL_354;
              }

              if (v181)
              {
LABEL_354:
                LOBYTE(v168) = 1;
                v148 = v349;
                goto LABEL_355;
              }
            }

LABEL_415:
            if (*(v10 + 2780) >= 5)
            {
              v306 = *__error();
              v307 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v307, OS_LOG_TYPE_DEFAULT))
              {
                v308 = *v347;
                LODWORD(v367[0]) = 134217984;
                *(v367 + 4) = v308;
                _os_log_impl(&dword_1C278D000, v307, OS_LOG_TYPE_DEFAULT, "No write back for %lld", v367, 0xCu);
              }

              v106 = 0;
              *__error() = v306;
              v8 = v341;
            }

            else
            {
              v106 = 0;
            }

            v105 = v347;
            v68 = v350;
LABEL_418:
            v222 = v346;
LABEL_460:
            if (v325)
            {
              CFRelease(v325);
            }

            if (v222)
            {
              CFRelease(v222);
            }

            cleanupPreProcContext(&v379);
            if (v338)
            {
              CFRelease(v338);
            }

            if (v328)
            {
              CFAllocatorDeallocate(allocator, v328);
            }

            goto LABEL_468;
          }

          if ((*(v68 + 6584) & 0x10) == 0)
          {
            v126 = 0;
            goto LABEL_207;
          }

          if (BOOLValueForDBOProperty(*(v68 + 1192), obj, "_kMDItemBackupMoveMarker"))
          {
            v126 = 128;
            goto LABEL_207;
          }

          v130 = v332;
          if (v332)
          {
            if (CFDictionaryContainsKey(v332, @":MD:_kMDItemBackupMoveMarker"))
            {
LABEL_205:
              v126 = 128;
              goto LABEL_206;
            }

            v131 = CFDictionaryContainsKey(v130, @":MD:_kMDItemBackupMoveMarker");
            v126 = (v131 != 0) << 7;
            if (!v331)
            {
LABEL_206:
              v124 = v323;
              goto LABEL_207;
            }

            v124 = v323;
            if (v131)
            {
              goto LABEL_207;
            }
          }

          else
          {
            v126 = v331;
            v124 = v323;
            if (!v331)
            {
              goto LABEL_207;
            }
          }

          v132 = v331;
          if (!CFDictionaryContainsKey(v331, @":MD:_kMDItemBackupMoveMarker"))
          {
            v126 = (CFDictionaryContainsKey(v132, @":MD:_kMDItemBackupMoveMarker") != 0) << 7;
            goto LABEL_206;
          }

          goto LABEL_205;
        }

        goto LABEL_59;
      }
    }

    else if ((v18 & 1) == 0)
    {
      v33 = *(v8 + 8);
      if (v33)
      {
        v34 = CFGetTypeID(v33);
        v19 = v34 == CFDictionaryGetTypeID();
        v17 = v348;
        v35 = !v19;
LABEL_58:
        LODWORD(v349) = v35;
        if (!v20)
        {
          goto LABEL_65;
        }

        goto LABEL_59;
      }

      LODWORD(v349) = 0;
      if (!v20)
      {
        goto LABEL_65;
      }

LABEL_59:
      v38 = *v8;
      if ((*(*v8 + 2072) & 1) == 0)
      {
        v39 = v349;
        if (dword_1EBF46AFC < 4)
        {
          v39 = 1;
        }

        if ((v39 & 1) == 0)
        {
          bzero(v367, 0x400uLL);
          v40 = *v15;
          v41 = (*(*(v38 + 1416) + 40))();
          if (v41)
          {
            v319 = v41;
            CFLog();
          }
        }
      }

      goto LABEL_65;
    }

    v35 = 1;
    goto LABEL_58;
  }

  if (dword_1EBF46ADC >= 5)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v8 + 24);
      LODWORD(v367[0]) = 134217984;
      *(v367 + 4) = v13;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Canceled oid: %lld", v367, 0xCu);
    }

    *__error() = v11;
  }

LABEL_501:
  v257 = *(v8 + 40);
  if (v257)
  {
    CFRelease(v257);
  }

  *(v8 + 40) = 0;
  v258 = *(v8 + 8);
  if (v258)
  {
    CFRelease(v258);
  }

  *(v8 + 8) = 0;
  v259 = *(v8 + 16);
  if (v259)
  {
    CFRelease(v259);
  }

  *(v8 + 16) = 0;
LABEL_508:
  v260 = *MEMORY[0x1E69E9840];
}

uint64_t __setAttributesBulk_block_invoke(uint64_t a1)
{
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(*(a1 + 56), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v24 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v23 = HIDWORD(v3);
  v22 = __PAIR64__(v5, v6);
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v21 = v24;
  v20 = v23;
  v19 = v22;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v18, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v19);
    dropThreadId(v21, 1, add_explicit + 1);
    return CICleanUpReset(v21, HIDWORD(v19));
  }

  else
  {
    v10 = atomic_fetch_add_explicit(*(a1 + 32), 1uLL, memory_order_relaxed);
    if (v10 < *(*(a1 + 40) + 16))
    {
      v11 = v10;
      v12 = *(a1 + 40);
      v13 = v11;
      do
      {
        v14 = *(a1 + 48);
        v15 = *(a1 + 60);
        _setAttributes(v12 + 80 * v13 + 24);
        v13 = atomic_fetch_add_explicit(*(a1 + 32), 1uLL, memory_order_relaxed);
        v12 = *(a1 + 40);
      }

      while (v13 < *(v12 + 16));
    }

    v16 = threadData[9 * v21 + 1] + 320 * v20;
    *(v16 + 312) = v7;
    v17 = *(v16 + 232);
    if (v17)
    {
      v17(*(v16 + 288));
    }

    return dropThreadId(v21, 0, add_explicit + 1);
  }
}

void setAttributes(uint64_t *a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = dispatch_group_create();
  _setAttributes(a1, 0, v5, a2);
  if (!a2)
  {
    bumpWorkTime(*a1, Current);
  }

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);

  free(a1);
}

void preProcessInFlight(void *key, const void *a2, CFDictionaryRef *a3)
{
  if (CFDictionaryGetValue(*a3, key))
  {
    return;
  }

  v6 = a3[1];
  if (!v6)
  {
    return;
  }

  Value = CFDictionaryGetValue(v6, key);
  if (!Value)
  {
    goto LABEL_23;
  }

  v8 = Value;
  if (CFEqual(Value, a2))
  {
    return;
  }

  v9 = CFGetTypeID(v8);
  if (v9 != CFArrayGetTypeID())
  {
LABEL_23:
    v20 = *a3;

    CFDictionarySetValue(v20, key, a2);
    return;
  }

  v10 = CFGetTypeID(a2);
  if (v10 != CFArrayGetTypeID())
  {
    if (*MEMORY[0x1E695E738] != a2)
    {
      v23.length = CFArrayGetCount(v8);
      v23.location = 0;
      if (CFArrayGetFirstIndexOfValue(v8, v23, a2) != -1)
      {
        return;
      }

      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
      CFArrayAppendValue(MutableCopy, a2);
      CFDictionarySetValue(*a3, key, MutableCopy);
      v18 = MutableCopy;
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  Count = CFArrayGetCount(v8);
  v12 = CFArrayGetCount(a2);
  if (v12 >= 1)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *MEMORY[0x1E695E480];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v14);
      v22.location = 0;
      v22.length = Count;
      if (CFArrayGetFirstIndexOfValue(v8, v22, ValueAtIndex) == -1)
      {
        if (!v15)
        {
          v15 = CFArrayCreateMutableCopy(v16, 0, v8);
        }

        CFArrayAppendValue(v15, ValueAtIndex);
      }

      ++v14;
    }

    while (v13 != v14);
    if (v15)
    {
      CFDictionarySetValue(*a3, key, v15);
      v18 = v15;
LABEL_20:

      CFRelease(v18);
    }
  }
}

uint64_t OIDAttrPairCmp(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void SIPossibleMovesBulk(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  if (*(a1 + 6624) && *(a1 + 1048))
  {
    v10 = malloc_type_malloc(0x28uLL, 0x1030040626A9454uLL);
    *(v10 + 2) = a3;
    *(v10 + 4) = a5;
    *(v10 + 3) = malloc_type_malloc(a5, 0x921571A7uLL);
    v11 = malloc_type_malloc(a3, 0xB4D543EBuLL);
    *v10 = a1;
    *(v10 + 1) = v11;
    memcpy(*(v10 + 3), a4, a5);
    memcpy(*(v10 + 1), a2, a3);
    v12 = *(a1 + 1048);

    si_enqueue_barrier_with_qos(v12, 9, possibleMoves, v10);
  }
}

void possibleMoves(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040D2389C4FuLL);
    *v4 = 257;
    v4[1] = *a1;
    v4[2] = 2;
    *(v4 + 6) = 0;
    if (*(a1 + 16) >= 1)
    {
      v5 = *(a1 + 8);
      do
      {
        if (!v5[1])
        {
          break;
        }

        v6 = 0;
        v7 = v5 + 2;
        v4[5] = *v5;
        do
        {
          v4[4] = v7[v6];
          innerMoveFiles(v4);
          ++v6;
          v8 = v5[1];
        }

        while (v6 < v8);
        v5 = &v7[v8];
      }

      while (v5 < *(a1 + 8) + *(a1 + 16));
    }

    if (*(a1 + 32) >= 1)
    {
      v9 = *(a1 + 24);
      v10 = v9;
      do
      {
        v11 = v10[1];
        v4[5] = *v10;
        if (v11)
        {
          v12 = 0;
          do
          {
            v4[4] = v10[v12 + 2];
            moveDirectoriesInner(v4);
            ++v12;
            v13 = v10[1];
          }

          while (v12 < v13);
          v9 = *(a1 + 24);
          v14 = 8 * v13;
        }

        else
        {
          v14 = 0;
        }

        v10 = (v10 + v14 + 16);
      }

      while (v10 < (v9 + *(a1 + 32)));
    }

    free(v4);
    bumpWorkTime(*a1, Current);
  }

  free(*(a1 + 8));
  free(*(a1 + 24));

  free(a1);
}

unint64_t innerMoveFiles(unint64_t result)
{
  v1 = result;
  v2 = 0;
  v4 = *(result + 8);
  v3 = *(result + 16);
  while (v3 > v2)
  {
    v5 = *(v1 + 24);
    result = processOneFile(v4);
    v2 = result;
    v3 = *(v1 + 16);
    if (v3 < result)
    {
      v6 = __si_assert_copy_extra_661(-1);
      v7 = v6;
      v8 = "";
      if (v6)
      {
        v8 = v6;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33620, "i<=ctx->count", v8);
      free(v7);
      if (__valid_fs(-1))
      {
        v9 = 2989;
      }

      else
      {
        v9 = 3072;
      }

      *v9 = -559038737;
      abort();
    }
  }

  return result;
}

void moveDirectoriesInner(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v105 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 8);
  if (*(v1 + 2) == 1)
  {
    if (!*(v1 + 16))
    {
      v78 = *MEMORY[0x1E695E480];
      v79 = SIUINT64SetCreate();
      for (i = *(v3 + 6616); i; i = *(v3 + 6616))
      {
        *(v3 + 6616) = 0;
        v101 = 0x10000;
        v103 = 0u;
        v104 = 0;
        v102 = v3;
        *&v103 = 1;
        __dst = v3;
        v100[0] = v79;
        v100[1] = &v101;
        SIValueSet<unsigned long long>::_SIValueSetInnerIterate(i + 56, *(i + 16), *(i + 24), fixupOne, &__dst, 128);
        CFRelease(i);
      }

      CFRelease(v79);
      goto LABEL_111;
    }

    v4 = *(v3 + 6616);
    if (!v4)
    {
      v5 = *MEMORY[0x1E695E480];
      v4 = SIUINT64SetCreate();
      *(v3 + 6616) = v4;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = v2 + 32;
    v8 = *(v3 + 1392);
    v90 = v8;
    v91 = *(v3 + 1384);
    v9 = 0x1EBF46000uLL;
    do
    {
      v10 = *(v7 + 8 * v6);
      v11 = *(v2 + 1);
      bzero(&v101, 0x1008uLL);
      bzero(&__dst, 0x1008uLL);
      if (!v10)
      {
        if (*(v9 + 2788) >= 5)
        {
          v18 = *__error();
          v19 = _SILogForLogForCategory(6);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            buf = 134217984;
            *buf_4 = 0;
            _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "Move for bad oid: %lld", &buf, 0xCu);
          }

          *__error() = v18;
        }

        goto LABEL_106;
      }

      v12 = *(v3 + 1416);
      v13 = *(v12 + 128);
      if (!v13 || ((v14 = v13(v12), v14 != v10) ? (v15 = (v14 + 1) > 1) : (v15 = 0), !v15))
      {
        if (*(v9 + 2788) >= 5)
        {
          v69 = *__error();
          v70 = _SILogForLogForCategory(6);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            buf = 134217984;
            *buf_4 = v10;
            _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, "No parent for oid: %lld", &buf, 0xCu);
          }

          *__error() = v69;
        }

        if ((*(v3 + 6584) & 6) != 4)
        {
          v16 = *(v3 + 2360);
          v17 = *(v16 + 128);
          if (v17)
          {
            v17(*(v16 + 144), v10, 0);
          }
        }

        goto LABEL_106;
      }

      v20 = v14;
      Path = directoryStoreWriterGetPath(*(v3 + 6624), v10, &v102);
      v22 = Path;
      if (dword_1EBF46ADC >= 5)
      {
        v71 = v4;
        v72 = *__error();
        v73 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          buf = 134218240;
          *buf_4 = v10;
          LOWORD(buf_4[2]) = 2048;
          *(&buf_4[2] + 2) = v20;
          _os_log_impl(&dword_1C278D000, v73, OS_LOG_TYPE_DEFAULT, "oid: %lld moved to parent oid: %lld", &buf, 0x16u);
        }

        *__error() = v72;
        v4 = v71;
        v7 = v2 + 32;
        if (!v22)
        {
LABEL_104:
          processOneChildlessDirectory(v3);
          goto LABEL_105;
        }
      }

      else if (!Path)
      {
        goto LABEL_104;
      }

      v23 = v102;
      if (v102 == v20)
      {
        v24 = v4;
        v25 = *__error();
        v26 = _SILogForLogForCategory(6);
        v27 = 2 * (dword_1EBF46AE4 < 4);
        if (os_log_type_enabled(v26, v27))
        {
          buf = 134218240;
          *buf_4 = v20;
          LOWORD(buf_4[2]) = 2048;
          *(&buf_4[2] + 2) = v10;
          _os_log_impl(&dword_1C278D000, v26, v27, "parent %lld unchanged for %lld", &buf, 0x16u);
        }

        *__error() = v25;
        v4 = v24;
        v7 = v2 + 32;
      }

      else
      {
        if (v4)
        {
          SIValueSet<unsigned long long>::SIValueSetInsert((v4 + 16), v20);
          v23 = v102;
        }

        if (v23 == v20)
        {
          v101 = v10;
          if (v22 >= 1)
          {
            memcpy(&__dst, &v102, 8 * v22);
          }

          si_perform_livequeries_directory_updates(v3);
        }

        else
        {
          buf = 0;
          __dst = v20;
          v28 = *(v3 + 6624);
          if (v20 == 2)
          {
            directoryStoreSetParentForMove(v28, v10, 2);
            v29 = 1;
            goto LABEL_59;
          }

          v88 = v4;
          v30 = directoryStoreWriterGetPath(v28, v20, v100);
          v31 = v30;
          if (v30)
          {
            v32 = __dst;
            if (__dst != v10)
            {
              if (v30 >= 1)
              {
                v33 = (v30 + 1) - 1;
                v34 = v33;
                v35 = v100;
                do
                {
                  v37 = *v35++;
                  v36 = v37;
                  if (v10 == v37 || __dst == v36)
                  {
                    goto LABEL_93;
                  }

                  --v34;
                }

                while (v34);
                v39 = v100;
                while (1)
                {
                  v41 = *v39++;
                  v40 = v41;
                  if (v10 == v41 || __dst == v40)
                  {
                    break;
                  }

                  if (!--v33)
                  {
                    goto LABEL_54;
                  }
                }

                v82 = __si_assert_copy_extra_661(-1);
                v83 = v82;
                v84 = "";
                if (v82)
                {
                  v84 = v82;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33799, "!(sourceOid==destPath[i] || destPath[0] == destPath[i])", v84);
LABEL_115:
                free(v83);
                if (__valid_fs(-1))
                {
                  v85 = 2989;
                }

                else
                {
                  v85 = 3072;
                }

                *v85 = -559038737;
                abort();
              }

LABEL_58:
              directoryStoreSetParentForMove(*(v3 + 6624), v10, v32);
              v29 = v31 + 1;
              v4 = v88;
LABEL_59:
              v101 = v10;
              v44 = *(v3 + 6632);
              if (v44)
              {
                directoryOverlayMoveDirectory(v44, v22 + 1, &v101, v29, &__dst);
              }

              v45 = v90;
              if (*(v90 + 8))
              {
                v46 = 0;
                do
                {
                  v47 = *(v3 + 6640);
                  if (!v47 || (v48 = CFSetContainsValue(v47, *(*(*v45 + 8 * v46) + 56)), v45 = v90, !v48))
                  {
                    _CIMoveDirectory(*(*v45 + 8 * v46), v22 + 1, &v101, v29, &__dst);
                    v45 = v90;
                  }

                  ++v46;
                }

                while (v46 < *(v45 + 8));
              }

              v49 = v91;
              if (*(v91 + 8))
              {
                v50 = 0;
                do
                {
                  v51 = *(v3 + 6640);
                  if (!v51 || (v52 = CFSetContainsValue(v51, *(*(*v49 + 8 * v50) + 56)), v49 = v91, !v52))
                  {
                    _CIMoveDirectory(*(*v49 + 8 * v50), v22 + 1, &v101, v29, &__dst);
                    v49 = v91;
                  }

                  ++v50;
                }

                while (v50 < *(v49 + 8));
              }

              si_perform_livequeries_directory_updates(v3);
              v92 = 0;
              if (!db_get_obj_callback(*(v3 + 1192), v10, &v92, 0, si_docIdRewriteCallback, *(v3 + 2368), 0))
              {
                v53 = v92;
                v54 = *(v92 + 3);
                if (v54 == v102 || (v54 + 1) < 2)
                {
                  v55 = 0;
                }

                else
                {
                  v89 = v4;
                  v67 = *__error();
                  v68 = _SILogForLogForCategory(6);
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                  {
                    v74 = *v92;
                    v75 = *(v92 + 3);
                    v76 = *(v92 + 4);
                    v77 = *(v92 + 11);
                    buf = 136316674;
                    *buf_4 = "moveDirectoriesInner";
                    LOWORD(buf_4[2]) = 1024;
                    *(&buf_4[2] + 2) = 33869;
                    HIWORD(buf_4[3]) = 2048;
                    *&buf_4[4] = v75;
                    LOWORD(buf_4[6]) = 2048;
                    *(&buf_4[6] + 2) = v74;
                    HIWORD(buf_4[8]) = 2048;
                    *&buf_4[9] = v102;
                    v95 = 2048;
                    v96 = v76;
                    v97 = 1024;
                    v98 = v77;
                    _os_log_error_impl(&dword_1C278D000, v68, OS_LOG_TYPE_ERROR, "%s:%d: Got parent %lld for %lld. Expected %lld (doc %llu)(%d)", &buf, 0x40u);
                  }

                  *__error() = v67;
                  v53 = v92;
                  v55 = *(v92 + 3);
                  v4 = v89;
                }

                v56 = __dst;
                v53[3] = __dst;
                if (v56 != directoryStoreGetParent(*(v3 + 6624), *v53))
                {
                  v86 = __si_assert_copy_extra_661(-1);
                  v83 = v86;
                  v87 = "";
                  if (v86)
                  {
                    v87 = v86;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33882, "dbo->parent_oid == directoryStoreGetParent(ref->dirStore, dbo->oid)", v87);
                  goto LABEL_115;
                }

                v101 = *v92;
                if (v55)
                {
                  v102 = v55;
                }

                LiveIndex = si_getLiveIndex(*(v3 + 1384));
                if (v92 && *(v3 + 1152) && (v58 = *(v92 + 4)) != 0 && v58 > *(v3 + 1304) && v58 <= *(v3 + 1312))
                {
                  handleMovingContent(v3, LiveIndex, v92, v29, &__dst);
                }

                else
                {
                  ContentIndexUpdatePath(LiveIndex, *(v92 + 4), v29, &__dst, v22 - 1, &v102);
                  updated = db_update_obj(*(v3 + 1192), v92, 10);
                  if (updated)
                  {
                    v60 = updated;
                    v61 = *__error();
                    v62 = _SILogForLogForCategory(7);
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                    {
                      buf = 136315650;
                      *buf_4 = "moveDirectoriesInner";
                      LOWORD(buf_4[2]) = 1024;
                      *(&buf_4[2] + 2) = 33898;
                      HIWORD(buf_4[3]) = 1024;
                      buf_4[4] = v60;
                      _os_log_error_impl(&dword_1C278D000, v62, OS_LOG_TYPE_ERROR, "%s:%d: Write error %d updating parent", &buf, 0x18u);
                    }

                    *__error() = v61;
                  }
                }

                v63 = *(v92 + 10);
                if ((v63 & 0x20) != 0)
                {
                  v64 = 5;
                }

                else
                {
                  v64 = 4;
                }

                v65 = v64 | (v63 >> 5) & 2;
                HasContent = objectHasContent(*(v3 + 1192), v92);
                buf = 0;
                memset(&buf_4[3], 0, 24);
                buf_4[0] = v29;
                *&buf_4[1] = &__dst;
                LOBYTE(buf_4[3]) = HasContent;
                buf_4[4] = v65;
                si_perform_livequeries_updates(v3);
                free(v92);
              }

              goto LABEL_105;
            }
          }

          else
          {
            SIPersistentIDStoreGetOidPathForOid(*(v3 + 1416), v20, v100, 0, &buf);
            v32 = __dst;
            if (__dst != v10)
            {
LABEL_54:
              if (v31 || !buf)
              {
                goto LABEL_58;
              }

              v43 = si_directoryStoreEnsurePath(v3);
              if (v43 != -1)
              {
                v31 = v43;
                v32 = __dst;
                goto LABEL_58;
              }
            }
          }

LABEL_93:
          _SIResolveDirectory(v3, v10, *(v2 + 24));
          v4 = v88;
        }
      }

LABEL_105:
      v9 = 0x1EBF46000;
LABEL_106:
      v6 += v11 + 1;
    }

    while (v6 < *(v2 + 16));
  }

LABEL_111:
  v81 = *MEMORY[0x1E69E9840];
}

void _SIResolveDirectory(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 6624) || !*(a1 + 1048))
  {
LABEL_7:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a3 >= 1001)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "_SIResolveDirectory";
      v14 = 1024;
      v15 = 34180;
      v16 = 2048;
      v17 = a2;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: move dropped %llx retry count exceeded", &v12, 0x1Cu);
    }

    *__error() = v6;
    goto LABEL_7;
  }

  v9 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040D2389C4FuLL);
  v9[1] = a1;
  v9[2] = 1;
  *(v9 + 6) = a3 + 1;
  v9[4] = a2;
  v10 = *(a1 + 1048);
  v11 = *MEMORY[0x1E69E9840];

  si_enqueue_barrier(v10, moveDirectories, v9);
}

uint64_t si_directoryStoreEnsurePath(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  __dst[512] = *MEMORY[0x1E69E9840];
  v40 = 0;
  *v2 = 0;
  Parent = directoryStoreWriterGetParent(*(v1 + 6624), v10);
  v39 = 0;
  v14 = directoryStoreEnsurePath(*(v12 + 6624), v11, v9, v7, v5, &v39, &v40, &v38);
  v15 = v14;
  if (v14 == -1)
  {
    if (!v39)
    {
      *v3 = 22;
    }
  }

  else
  {
    if (v40)
    {
      v16 = v40 == v11;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      if (v14 < 1)
      {
        goto LABEL_16;
      }

      v17 = 0;
      while (v9[v17] != v40)
      {
        if (v14 == ++v17)
        {
          goto LABEL_33;
        }
      }

      if (v17)
      {
        bzero(__dst, 0x1000uLL);
        if (v15 - v17 < 1)
        {
          v18 = 0;
        }

        else
        {
          memcpy(__dst, &v9[v17], 8 * (v15 - v17));
          v18 = __dst[0];
        }

        v24 = &v9[v17];
        v25 = *(v24 - 1);
        v26 = processOneChildlessDirectory(v12);
        if (v26)
        {
          if (dword_1EBF46AE4 >= 5)
          {
            v27 = v26;
            v21 = *__error();
            v22 = _SILogForLogForCategory(6);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(v24 - 1);
              *buf = 134218498;
              v42 = v28;
              v43 = 2048;
              v44 = v18;
              v45 = 2080;
              v46 = v27;
              v23 = "Skipped fix up; item %lld, new parent %lld %s";
              goto LABEL_26;
            }

            goto LABEL_37;
          }
        }

        else if (dword_1EBF46AE4 >= 5)
        {
          v31 = *__error();
          v32 = _SILogForLogForCategory(6);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *(v24 - 1);
            *buf = 134218240;
            v42 = v33;
            v43 = 2048;
            v44 = v18;
            _os_log_impl(&dword_1C278D000, v32, OS_LOG_TYPE_DEFAULT, "Fixed up (formerly) childless item %lld, new parent %lld", buf, 0x16u);
          }

          *__error() = v31;
        }
      }

      else
      {
LABEL_16:
        if (!Parent)
        {
          bzero(__dst, 0x1000uLL);
          __memcpy_chk();
          v19 = processOneChildlessDirectory(v12);
          if (v19)
          {
            if (dword_1EBF46AE4 >= 5)
            {
              v20 = v19;
              v21 = *__error();
              v22 = _SILogForLogForCategory(6);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218498;
                v42 = v11;
                v43 = 2048;
                v44 = __dst[0];
                v45 = 2080;
                v46 = v20;
                v23 = "Skipped fix up; item %lld, new parent %lld %s";
LABEL_26:
                v29 = v22;
                v30 = 32;
LABEL_36:
                _os_log_impl(&dword_1C278D000, v29, OS_LOG_TYPE_DEFAULT, v23, buf, v30);
              }

LABEL_37:
              *__error() = v21;
            }
          }

          else if (dword_1EBF46AE4 >= 5)
          {
            v21 = *__error();
            v36 = _SILogForLogForCategory(6);
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_37;
            }

            *buf = 134218240;
            v42 = v11;
            v43 = 2048;
            v44 = __dst[0];
            v23 = "Fixed up (formerly) childless item %lld, new parent %lld";
            v29 = v36;
            v30 = 22;
            goto LABEL_36;
          }
        }
      }
    }
  }

LABEL_33:
  v34 = *MEMORY[0x1E69E9840];
  return v15;
}

void handleMovingContent(uint64_t a1, uint64_t a2, unint64_t *a3, unsigned int a4, const void *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E695E480];
  cf = decodeDBOToDictionary(*(a1 + 1192), a3, 0, 0, 2, *(a1 + 2028), *(a1 + 2060), 0, 0, *MEMORY[0x1E695E480]);
  if (!objectHasContent(*(a1 + 1192), a3))
  {
    goto LABEL_9;
  }

  bzero(buf, 0x400uLL);
  v12 = si_cache_relative_path_for_oid(*a3, "txt", buf, *(a1 + 2072));
  if (!v12 || (v13 = openat(*(a1 + 32), v12, 0), v13 == -1))
  {
LABEL_19:
    (*(*(a1 + 2360) + 16))(*(*(a1 + 2360) + 144), *a3, 0, 0);
    goto LABEL_20;
  }

  v14 = v13;
  fcntl(v13, 48, 1);
  fcntl(v14, 76, 1);
  v15 = lseek(v14, 0, 2);
  if (v15 < 1 || (v16 = v15, (v17 = malloc_type_zone_malloc(indexingZone, v15, 0x3D4EC5EFuLL)) == 0))
  {
LABEL_18:
    close(v14);
    goto LABEL_19;
  }

  v18 = v17;
  if (v16 != pread(v14, v17, v16, 0) || (v19 = CFStringCreateWithBytesNoCopy(v10, v18, v16, 0x8000100u, 1u, *MEMORY[0x1E695E488])) == 0)
  {
    free(v18);
    goto LABEL_18;
  }

  v20 = v19;
  CFDictionarySetValue(cf, 0, v19);
  CFRelease(v20);
  close(v14);
LABEL_9:
  v30 = 0;
  v21 = si_indexForDocId(a1, a3[4]);
  if (v21)
  {
    v22 = *a3;
    v23 = _CIDelete(v21);
  }

  else
  {
    v23 = 15;
  }

  v24 = _CIUpdateContent(a2, a4, a5, 0, 0, *a3, v23, 0, 0.0, cf, 0, &v30, 5u, 0, (*(a1 + 6584) >> 25) & 3, lowDiskSpaceCallback, a1, 0, 0, *(a1 + 2464), 0, 0);
  a3[4] = v30;
  if (!v24)
  {
    updated = db_update_obj(*(a1 + 1192), a3, 0);
    if (updated)
    {
      v26 = updated;
      v27 = *__error();
      v28 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "handleMovingContent";
        v33 = 1024;
        v34 = 33252;
        v35 = 1024;
        v36 = v26;
        _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: Write error %d updating parent", buf, 0x18u);
      }

      *__error() = v27;
    }
  }

LABEL_20:
  CFRelease(cf);
  v29 = *MEMORY[0x1E69E9840];
}

const char *processOneChildlessDirectory(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v74[512] = *MEMORY[0x1E69E9840];
  v63 = 0;
  v13 = 0;
  if (!db_get_obj_callback(*(v1 + 1192), v10, &v63, 0, si_docIdRewriteCallback, *(v1 + 2368), 0))
  {
    bzero(&v73, 0x1008uLL);
    if (v9 == -1 || !v7)
    {
      if (v9 == -1)
      {
        v14 = *(v63 + 3);
        goto LABEL_20;
      }
    }

    else
    {
      SIValueSet<unsigned long long>::SIValueSetInsert((v7 + 16), v9);
    }

    v14 = *(v63 + 3);
    if (v14 != v9 && v14 != 0)
    {
      if (v14 <= 1 && v14 != -1)
      {
        v56 = __si_assert_copy_extra_661(*(v12 + 48));
        v57 = v56;
        v58 = "";
        if (v56)
        {
          v58 = v56;
        }

        v59 = *(v63 + 3);
        __message_assert("%s:%u: failed assertion '%s' %s Got parent id %lld for oid %lld", "SpotlightIndex.c", 33425, "dbo->parent_oid>=2 || dbo->parent_oid==-1", v58, v59, *v63);
        free(v57);
        if (__valid_fs(*(v12 + 48)))
        {
          v60 = 2989;
        }

        else
        {
          v60 = 3072;
        }

        *v60 = -559038737;
        abort();
      }

      bzero(&v70, 0x1008uLL);
      v62 = 0;
      if (*(v12 + 2072) == 1)
      {
        Path = directoryStoreGetPath(*(v12 + 6624), v9, v74);
        v62 = Path;
      }

      else
      {
        v61 = v3;
        if (SIPersistentIDStoreGetOidPathForOid(*(v12 + 1416), v9, v74, 0, &v62))
        {
          *v5 = *__error();
          v13 = "failed";
LABEL_36:
          free(v63);
          goto LABEL_37;
        }

        Path = v62;
      }

      v73 = v9;
      if (v9 != v11)
      {
        v22 = (Path + 1);
        if (v22 < 2)
        {
LABEL_45:
          v28 = v63;
          v29 = *(v63 + 3);
          if (v29 == -1)
          {
            v31 = 0;
            *&v70 = 0;
          }

          else
          {
            v30 = directoryStoreGetPath(*(v12 + 6624), v29, &v70 + 8);
            v31 = v30 + 1;
            v28 = v63;
            v32 = *(v63 + 3);
            *&v70 = v32;
            if ((v30 & 0x80000000) == 0 && v32 <= 1)
            {
              v33 = __si_assert_copy_extra_661(-1);
              v34 = v33;
              v35 = "";
              if (v33)
              {
                v35 = v33;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33476, "sourcePath[0]>=2", v35);
              free(v34);
              if (__valid_fs(-1))
              {
                v36 = 2989;
              }

              else
              {
                v36 = 3072;
              }

              *v36 = -559038737;
              abort();
            }
          }

          v28[3] = v9;
          if (v22 < 2)
          {
            goto LABEL_59;
          }

          v37 = si_directoryStoreEnsurePath(v12, v9, v74, Path, *v28, v7, v5, v3, v61);
          v22 = v37 + 1;
          if ((v37 & 0x80000000) == 0)
          {
            v38 = v22;
            v39 = &v73;
            do
            {
              v40 = *v39++;
              if (v40 <= 1)
              {
                v52 = __si_assert_copy_extra_661(-1);
                v53 = v52;
                v54 = "";
                if (v52)
                {
                  v54 = v52;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33488, "destPath[i]>=2", v54);
                free(v53);
                if (__valid_fs(-1))
                {
                  v55 = 2989;
                }

                else
                {
                  v55 = 3072;
                }

                *v55 = -559038737;
                abort();
              }

              --v38;
            }

            while (v38);
          }

          if (v37 >= -1)
          {
LABEL_59:
            LiveIndex = si_getLiveIndex(*(v12 + 1384));
            if (!v63 || !*(v12 + 1152) || (v42 = *(v63 + 4)) == 0 || v42 <= *(v12 + 1304) || v42 > *(v12 + 1312))
            {
              ContentIndexUpdatePath(LiveIndex, *(v63 + 4), v22, &v73, v31, &v70);
              updated = db_update_obj(*(v12 + 1192), v63, 10);
              if (updated)
              {
                v44 = updated;
                v45 = *__error();
                v46 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v65 = "processOneChildlessDirectory";
                  v66 = 1024;
                  v67 = 33505;
                  v68 = 1024;
                  v69 = v44;
                  _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: Write error %d updating parent", buf, 0x18u);
                }

                *__error() = v45;
              }

              v47 = *(v63 + 10);
              if ((v47 & 0x20) != 0)
              {
                v48 = 5;
              }

              else
              {
                v48 = 4;
              }

              v49 = v48 | (v47 >> 5) & 2;
              HasContent = objectHasContent(*(v12 + 1192), v63);
              v70 = 0u;
              v71 = 0u;
              v72 = 0;
              DWORD1(v70) = v22 & ~(v22 >> 63);
              if (v22 <= 0)
              {
                v51 = 0;
              }

              else
              {
                v51 = &v73;
              }

              *(&v70 + 1) = v51;
              LOBYTE(v71) = HasContent;
              DWORD1(v71) = v49;
              si_perform_livequeries_updates(v12);
              v13 = 0;
              goto LABEL_36;
            }

            handleMovingContent(v12, LiveIndex, v63, v22, &v73);
          }
        }

        else
        {
          v23 = v74;
          v24 = v22 - 1;
          while (1)
          {
            v26 = *v23++;
            v25 = v26;
            if (v26 == v11 || v25 == v9)
            {
              break;
            }

            if (!--v24)
            {
              goto LABEL_45;
            }
          }
        }
      }

      v19 = 0;
LABEL_33:
      if (v19)
      {
        v13 = v19;
      }

      else
      {
        v13 = "failed";
      }

      goto LABEL_36;
    }

LABEL_20:
    v18 = "parent===1";
    if (v9 != -1)
    {
      v18 = 0;
    }

    if (v14 == v9)
    {
      v18 = "dbo->parent_oid == parent";
    }

    if (v14)
    {
      v19 = v18;
    }

    else
    {
      v19 = "dbo->parent_oid==0";
    }

    if (!v19)
    {
      v19 = "Unknown";
    }

    goto LABEL_33;
  }

LABEL_37:
  v20 = *MEMORY[0x1E69E9840];
  return v13;
}

void moveDirectories(void *a1, int a2)
{
  if (!a2)
  {
    moveDirectoriesInner(a1);
  }

  free(a1);
}

uint64_t fixupOne(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v7 = *a1++;
      v6 = v7;
      if ((SIUINT64SetContainsValue(*(a3 + 8), v7) & 1) == 0)
      {
        SIValueSet<unsigned long long>::SIValueSetInsert((*(a3 + 8) + 16), v6);
        *(*(a3 + 16) + 32) = v6;
        moveDirectoriesInner();
      }

      --v4;
    }

    while (v4);
  }

  return 0;
}

unint64_t processOneFile(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v97 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(*(v7 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v84 = v10;
  v11 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v83 = HIDWORD(v10);
  v82 = __PAIR64__(v12, v13);
  *(v11 + 216) = 0;
  v14 = *(v11 + 312);
  v15 = *(v11 + 224);
  if (v15)
  {
    v15(*(v11 + 288));
  }

  v16 = v4 + 1;
  v81 = v84;
  v80 = v83;
  v79 = v82;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v94 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v94, 2u);
    }

    *(v11 + 312) = v14;
    CIOnThreadCleanUpReset(v79);
    dropThreadId(v81, 1, add_explicit + 1);
    CICleanUpReset(v81, HIDWORD(v79));
    v17 = v4 + 1;
    v18 = 0;
    goto LABEL_61;
  }

  if (*(v6 + 1) + v16 > *(v6 + 16))
  {
    v65 = __si_assert_copy_extra_661(-1);
    v63 = v65;
    v66 = "";
    if (v65)
    {
      v66 = v65;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33278, "i+advanceLen<=ctx->count", v66);
LABEL_78:
    free(v63);
    if (__valid_fs(-1))
    {
      v67 = 2989;
    }

    else
    {
      v67 = 3072;
    }

    *v67 = -559038737;
    abort();
  }

  v19 = *(v6 + 32 + 8 * v4);
  v76 = *(v6 + 1);
  v78 = 0;
  if (!db_get_obj_callback(*(v8 + 1192), v19, &v78, 0, si_docIdRewriteCallback, *(v8 + 2368), 0))
  {
    if (*v6 != 1 || *(v6 + 1) != 1 || (v20 = *(v6 + 32 + 8 * v16)) == 0)
    {
      v21 = *(*(v8 + 1416) + 128);
      if (v21)
      {
        v20 = v21();
      }

      else
      {
        v20 = -1;
      }
    }

    if (dword_1EBF46ADC >= 5)
    {
      v75 = *__error();
      v68 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *v94 = 134218240;
        *&v94[4] = v19;
        v95 = 2048;
        v96 = v20;
        _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "oid: %lld moved to parent oid: %lld (file)", v94, 0x16u);
      }

      *__error() = v75;
    }

    bzero(v94, 0x1008uLL);
    v22 = v78;
    if (v20 == -1)
    {
      goto LABEL_57;
    }

    v23 = *(v78 + 3);
    if (v23 == v20 || !v23)
    {
      goto LABEL_57;
    }

    if (v23 <= 1 && v23 != -1)
    {
      v69 = __si_assert_copy_extra_661(*(v8 + 48));
      v70 = v69;
      v71 = "";
      if (v69)
      {
        v71 = v69;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Got parent id %lld for oid %lld", "SpotlightIndex.c", 33293, "dbo->parent_oid>=2 || dbo->parent_oid==-1", v71, *(v78 + 3), *v78);
      free(v70);
      if (__valid_fs(*(v8 + 48)))
      {
        v72 = 2989;
      }

      else
      {
        v72 = 3072;
      }

      *v72 = -559038737;
      abort();
    }

    bzero(&v91, 0x1008uLL);
    v77 = 0;
    if (SIPersistentIDStoreGetOidPathForOid(*(v8 + 1416), v20, &v94[8], 0, &v77))
    {
      v24 = 0;
    }

    else
    {
      v24 = (v77 + 1);
    }

    *v94 = v20;
    v25 = v78;
    v26 = *(v78 + 3);
    if (v26 == -1)
    {
      v29 = 0;
      *&v91 = 0;
      v30 = v20;
    }

    else
    {
      Path = directoryStoreGetPath(*(v8 + 6624), v26, &v91 + 8);
      v25 = v78;
      v28 = *(v78 + 3);
      *&v91 = v28;
      if ((Path & 0x80000000) == 0 && v28 < 2)
      {
        v73 = __si_assert_copy_extra_661(-1);
        v59 = v73;
        v74 = "";
        if (v73)
        {
          v74 = v73;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33314, "sourcePath[0]>=2", v74);
LABEL_68:
        free(v59);
        if (__valid_fs(-1))
        {
          v61 = 2989;
        }

        else
        {
          v61 = 3072;
        }

        *v61 = -559038737;
        abort();
      }

      v29 = Path + 1;
      v30 = *v94;
    }

    v25[3] = v20;
    if (v30 != v19)
    {
      v31 = v24;
      if (v24 < 2)
      {
        v37 = v29;
        v40 = v31;
LABEL_42:
        LiveIndex = si_getLiveIndex(*(v8 + 1384));
        if (!v78 || !*(v8 + 1152) || (v42 = *(v78 + 4)) == 0 || v42 <= *(v8 + 1304) || v42 > *(v8 + 1312))
        {
          ContentIndexUpdatePath(LiveIndex, *(v78 + 4), v40, v94, v37, &v91);
          updated = db_update_obj(*(v8 + 1192), v78, 10);
          if (updated)
          {
            v44 = updated;
            v45 = *__error();
            v46 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v86 = "processOneFile";
              v87 = 1024;
              v88 = 33357;
              v89 = 1024;
              v90 = v44;
              _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: Write error %d updating parent", buf, 0x18u);
            }

            *__error() = v45;
          }

          v47 = *(v78 + 10);
          if ((v47 & 0x20) != 0)
          {
            v48 = 5;
          }

          else
          {
            v48 = 4;
          }

          v49 = v48 | (v47 >> 5) & 2;
          HasContent = objectHasContent(*(v8 + 1192), v78);
          v51 = 0;
          v91 = 0u;
          v92 = 0u;
          v93 = 0;
          DWORD1(v91) = v40;
          if (v40)
          {
            v51 = v94;
          }

          *(&v91 + 1) = v51;
          LOBYTE(v92) = HasContent;
          DWORD1(v92) = v49;
          si_perform_livequeries_updates(v8);
          v22 = v78;
          goto LABEL_57;
        }

        handleMovingContent(v8, LiveIndex, v78, v40, v94);
LABEL_31:
        v22 = v78;
LABEL_57:
        free(v22);
        goto LABEL_58;
      }

      v32 = &v94[8];
      v33 = v24 - 1;
      while (1)
      {
        v35 = *v32++;
        v34 = v35;
        if (v19 == v35 || v30 == v34)
        {
          break;
        }

        if (!--v33)
        {
          v37 = v29;
          v38 = *v25;
          v39 = si_directoryStoreEnsurePath(v8);
          if (v39 < -1)
          {
            break;
          }

          v40 = (v39 + 1);
          goto LABEL_42;
        }
      }
    }

    _SIResolveDirectory(v8, v19, v2);
    goto LABEL_31;
  }

LABEL_58:
  v52 = threadData[9 * v81 + 1] + 320 * v80;
  *(v52 + 312) = v14;
  v53 = *(v52 + 232);
  if (v53)
  {
    v53(*(v52 + 288));
  }

  dropThreadId(v81, 0, add_explicit + 1);
  v17 = v16;
  v18 = v76;
LABEL_61:
  v54 = v17;
  v55 = *(v6 + 16);
  if (v55 < v54)
  {
    v58 = __si_assert_copy_extra_661(-1);
    v59 = v58;
    v60 = "";
    if (v58)
    {
      v60 = v58;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33405, "i<=ctx->count", v60);
    goto LABEL_68;
  }

  result = (v18 + v16);
  if (v55 < result)
  {
    v62 = __si_assert_copy_extra_661(-1);
    v63 = v62;
    v64 = "";
    if (v62)
    {
      v64 = v62;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 33408, "i<=ctx->count", v64);
    goto LABEL_78;
  }

  v57 = *MEMORY[0x1E69E9840];
  return result;
}

void si_playbackSyncFinished(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      *(a1 + 109) = 1;
      if (*(a1 + 8))
      {
        v2 = *(a1 + 80);
        if (v2)
        {
          if ((*(v2 + 60) & 0x100) != 0)
          {
            *(v2 + 60) &= ~0x100u;
          }
        }
      }

      v3 = *(a1 + 80);
      if (v3 && (*(v3 + 60) & 0x100) != 0)
      {
        *(v3 + 60) &= ~0x100u;
      }
    }

    if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
    {
      _si_mobile_journal_finalize(a1, 1);
    }
  }
}

void dummy_routine(CFTypeRef *a1, int a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v8[0] = 0;
    v3 = a1[1];
    v4 = *(*a1 + 131);
    v5 = *(v4 + 8);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __si_pop_queue_block_invoke;
    v7[3] = &__block_descriptor_tmp_42_1565;
    v7[4] = v4;
    v7[5] = v3;
    v7[6] = 1;
    v7[7] = v8;
    dispatch_sync(v5, v7);
  }

  CFRelease(a1[1]);
  free(a1);
  v6 = *MEMORY[0x1E69E9840];
}

void si_repair_index_file_tree(void *a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  __buf = *(a1 + 2);
  v9 = *a1;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = __si_repair_index_file_tree_block_invoke;
  v22[3] = &__block_descriptor_tmp_1170;
  v22[4] = v9;
  if (!a2)
  {
    if (*(v9 + 828))
    {
      return;
    }

    v10 = x_openat(*(v9 + 32), "repair_dirstore", 536871424, a4, a5, a6, a7, a8, 0x180u);
    if (v10 != -1)
    {
      v11 = v10;
      pwrite(v10, &__buf, 4uLL, 0);
      close(v11);
    }

    if (*(v9 + 2072) & 1) != 0 || (__buf)
    {
      v12 = *(v9 + 6624);
      if (v12)
      {
        freeReverseDirStore(v12);
      }

      *(v9 + 6624) = createReverseStore(*(v9 + 32), "tmp.", v22);
      x_unlinkat(*(v9 + 32), "mds64-crash-state-reverse-store-v2", 0);
    }

    v13 = *(v9 + 1392);
    v14 = *(v9 + 1384);
    if (v13 && *(v13 + 8))
    {
      v15 = 0;
      do
      {
        ContentIndexResetDirStore(*(*v13 + 8 * v15++));
      }

      while (v15 < *(v13 + 8));
    }

    if (v14 && *(v14 + 8))
    {
      v16 = 0;
      do
      {
        ContentIndexResetDirStore(*(*v14 + 8 * v16++));
      }

      while (v16 < *(v14 + 8));
    }

    x_unlinkat(*(v9 + 32), "mds64-crash-state-forward-path-index-v2", 0);
    v17 = *MEMORY[0x1E695E480];
    v18 = SIUINT64SetCreate();
    db_apply(*(v9 + 1192), gather_parented_items, v18);
    if (*(v9 + 2072))
    {
      v19 = reset_parented_items;
    }

    else
    {
      v19 = reparent_parented_items;
    }

    SIValueSet<unsigned long long>::_SIValueSetInnerIterate(v18 + 56, *(v18 + 16), *(v18 + 24), v19, v9, 1024);
    CFRelease(v18);
    if (*(v9 + 2072) & 1) != 0 || (__buf)
    {
      if (!flushReverseStore(*(v9 + 6624)) && !commitSyncReverseStore(*(v9 + 6624), 0))
      {
        LODWORD(v24) = 0;
        if (!shadowReverseStore(*(v9 + 6624), 1, &v24))
        {
          commitShadowReverseStore(*(v9 + 6624));
        }
      }

      v20 = *(v9 + 6624);
      v24 = 0;
      asprintf(&v24, "%sreverseDirectoryStore", "");
      fd_rename(*(v20 + 216), v24);
      free(v24);
    }

    x_unlinkat(*(v9 + 32), "repair_dirstore", 2048);
    si_getLiveIndex(*(v9 + 1384));
    LiveIndex = si_getLiveIndex(*(v9 + 1384));
    _CIFlushCache(LiveIndex, 1, 0, 0, &__block_literal_global_1178);
    _SIIssueFullMergeWithGroup(v9, 0);
    si_scheduler_resume(*(v9 + 872), *(a1 + 2), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 36360);
  }

  free(a1);
}

void _SIIssueFullMergeWithGroup(void *a1, NSObject *a2)
{
  if (a1 && a1[131])
  {
    v4 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
    *v4 = a1;
    v4[16] = 0;
    *(v4 + 1041) = 257;
    v4[1043] = 1;
    *(v4 + 274) = 4;
    *(v4 + 131) = "void _SIIssueFullMergeWithGroup(SIRef, dispatch_group_t)";
    __strlcpy_chk();
    if (!*(v4 + 136) && !*(v4 + 266))
    {
      v6 = a1[295];
      if (v6)
      {
        v7 = *(v6 + 64);
        if (v7)
        {
          *(v4 + 266) = v7(*(v6 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 23116, "void _SIIssueFullMergeWithGroup(SIRef, dispatch_group_t)");
        }
      }
    }

    if (a2)
    {
      dispatch_retain(a2);
      dispatch_group_enter(a2);
    }

    *(v4 + 139) = a2;
    v5 = a1[145];

    si_enqueue_barrier_with_qos(v5, 5, _SIContinueIssueMerge0, v4);
  }
}

void _SIContinueIssueMerge0(uint64_t a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    si_enqueue_barrier_with_qos(*(*a1 + 1048), 5, _SIContinueIssueMerge, a1);
    v3 = 0;
  }

  si_merge_ctx_free(v3, a2 != 0);
}

void _SIContinueIssueMerge(uint64_t a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    si_enqueue_work_with_qos(*(*a1 + 1040), 5, _SIContinueIssueMerge2, a1);
    v3 = 0;
  }

  si_merge_ctx_free(v3, a2 != 0);
}

void _SIContinueIssueMerge2(uint64_t a1, int a2)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    goto LABEL_2;
  }

  v5 = *a1;
  v6 = 1392;
  if (*(a1 + 16))
  {
    v6 = 1384;
  }

  v7 = *(v5 + v6);
  v8 = *(v7 + 8);
  v9 = *(v5 + 2440);
  if (*(a1 + 1042) == 1)
  {
    *(v5 + 2440) = 0;
  }

  v10 = *(a1 + 1072);
  v11 = gSISystemOnBattery;
  v12 = fullVaccuumNeeded(v5, gSISystemOnBattery);
  if (v12 & 1) != 0 || !v11 || (*(v5 + 2456))
  {
    if (v12)
    {
      goto LABEL_12;
    }
  }

  else if (fullVaccuumNeeded(v5, 0))
  {
    v21 = *(a1 + 1072);
    if (v21 && *(a1 + 1080) && xpc_activity_should_defer(v21))
    {
      **(a1 + 1080) = 1;
      *(v5 + 2456) = 1;
      LODWORD(buf) = -1;
      v22 = *(v5 + 32);
      v71 = v9;
      v23 = v22 == -1 || (fd_setDir(v22, &buf) & 1) == 0;
      v39 = *__error();
      v40 = _SILogForLogForCategory(12);
      v41 = 2 * (dword_1EBF46AFC < 4);
      if (os_log_type_enabled(v40, v41))
      {
        *v74 = 0;
        _os_log_impl(&dword_1C278D000, v40, v41, "defer vacuum", v74, 2u);
      }

      *__error() = v39;
      if (!v23)
      {
        fd_resetDir(buf);
      }
    }

    else
    {
      if (v10)
      {
LABEL_12:
        *v74 = -1;
        v13 = *(v5 + 32);
        v71 = v9;
        v14 = v13 == -1 || (fd_setDir(v13, v74) & 1) == 0;
        v15 = *__error();
        v16 = _SILogForLogForCategory(12);
        v17 = 2 * (dword_1EBF46AFC < 4);
        if (os_log_type_enabled(v16, v17))
        {
          if (gSISystemOnBattery)
          {
            v18 = " (on battery)";
          }

          else
          {
            v18 = "";
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v18;
          _os_log_impl(&dword_1C278D000, v16, v17, "Vacuum needed%s", &buf, 0xCu);
        }

        *__error() = v15;
        if (!v14)
        {
          v19 = *v74;
          MEMORY[0x1C6921200](*v74);
          if ((v19 & 0x80000000) == 0)
          {
            close(v19);
          }
        }

        v20 = 1;
        goto LABEL_25;
      }

      *(v5 + 2456) = 1;
      LODWORD(buf) = -1;
      v33 = *(v5 + 32);
      v71 = v9;
      v34 = v33 == -1 || (fd_setDir(v33, &buf) & 1) == 0;
      v36 = *__error();
      v37 = _SILogForLogForCategory(12);
      v38 = 2 * (dword_1EBF46AFC < 4);
      if (os_log_type_enabled(v37, v38))
      {
        *v74 = 0;
        _os_log_impl(&dword_1C278D000, v37, v38, "Vacuum scheduled", v74, 2u);
      }

      *__error() = v36;
      if (!v34)
      {
        fd_resetDir(buf);
      }

      (*(*(v5 + 2360) + 80))(*(*(v5 + 2360) + 144), 1, @"Merge", &__block_literal_global_1963);
    }

    v20 = 0;
LABEL_25:
    v9 = v71;
    goto LABEL_34;
  }

  v20 = 0;
LABEL_34:
  if (*(a1 + 1042) != 1 || ((v20 | *(a1 + 1043)) & 1) != 0)
  {
    while (1)
    {
      v24 = v8;
      if (!v8)
      {
        break;
      }

      v25 = *(*v7 + 8 * v8 - 8);
      v26 = atomic_load((v25 + 36));
      if ((v26 & 3) == 0)
      {
        --v8;
        if (*(v25 + 15203) != 1)
        {
          continue;
        }
      }

      v27 = v24;
      goto LABEL_41;
    }

    v27 = 0;
LABEL_41:
    si_sync_ctx_create_with_defer_fd(v5, 0);
    v29 = v28;
    *(v28 + 96) = 1;
    if ((*(*v28 + 2072) & 1) == 0 && (*(*v28 + 2437) & 1) == 0)
    {
      attachJournal(v28);
    }

    syncIndex(v29, 0);
    if (v24)
    {
      *(a1 + 12) = v27;
      *(a1 + 8) = *(*(*v7 + 8 * (*(v7 + 8) - v27)) + 56);
      si_enqueue_work(*(v5 + 1064), si_mergeIndex, a1);
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if ((v9 & 1) != 0 || (v30 = *(v5 + 1384)) == 0 || (v31 = count_IndexSet(*(v5 + 1384), *(v30 + 2) - 1, 0)) == 0)
  {
LABEL_2:
    si_merge_ctx_free(a1, a2 != 0);
    goto LABEL_3;
  }

  v32 = v31;
  if (*(v5 + 2457))
  {
    goto LABEL_58;
  }

  if (v31 == 4)
  {
    if (!v10)
    {
      goto LABEL_95;
    }

    goto LABEL_79;
  }

  if (v31 != 6)
  {
LABEL_58:
    v35 = v31 < 4 || v10 == 0;
    if (v35 && (v31 < 6 || (gSISystemOnBattery & 1) != 0))
    {
      goto LABEL_2;
    }

    goto LABEL_79;
  }

  if (gSISystemOnBattery)
  {
LABEL_95:
    *&buf = 0;
    *(&buf + 1) = &buf;
    v76 = 0x2000000000;
    v77 = malloc_type_malloc(0x460uLL, 0x1070040C187FD8AuLL);
    v57 = *(&buf + 1);
    memcpy(*(*(&buf + 1) + 24), a1, 0x460uLL);
    v58 = *(v57 + 24);
    *(v58 + 1064) = 0;
    *(v58 + 1080) = 0;
    *(v58 + 1088) = 0;
    *(v58 + 1072) = 0;
    *(*(v57 + 24) + 1056) = 0;
    *(*(v57 + 24) + 1112) = 0;
    *(*(v57 + 24) + 1100) = v32 != 4;
    *v74 = -1;
    v59 = *(v5 + 32);
    v60 = v59 == -1 || (fd_setDir(v59, v74) & 1) == 0;
    v61 = *__error();
    v62 = _SILogForLogForCategory(12);
    v63 = 2 * (dword_1EBF46AFC < 4);
    if (os_log_type_enabled(v62, v63))
    {
      *v73 = 0;
      _os_log_impl(&dword_1C278D000, v62, v63, "Merge(2) scheduled", v73, 2u);
    }

    *__error() = v61;
    if (!v60)
    {
      fd_resetDir(*v74);
    }

    *(v5 + 2457) = 1;
    v64 = *(v5 + 2360);
    v65 = *(v64 + 80);
    v66 = *(v64 + 144);
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 0x40000000;
    v72[2] = ___SIContinueIssueMerge2_block_invoke_1968;
    v72[3] = &unk_1E8192720;
    v72[4] = &buf;
    v72[5] = v5;
    v65(v66, v32 != 4, @"Merge(2)", v72);
    _Block_object_dispose(&buf, 8);
    goto LABEL_2;
  }

LABEL_79:
  *(v5 + 2457) = 0;
  v42 = *(v30 + 2);
  do
  {
    v43 = v42;
    if (v42 <= *(v30 + 2) - v31)
    {
      break;
    }

    v44 = *(*v30 + 8 * --v42);
    v45 = atomic_load((v44 + 36));
    if ((v45 & 3) != 0)
    {
      break;
    }
  }

  while (*(v44 + 15203) != 1);
  if (v43 < 5)
  {
    goto LABEL_2;
  }

  v46 = *(v30 + 2) - v31;
  if (v46 >= v43)
  {
    v48 = 0;
    v53 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v49 = *v30;
    do
    {
      v50 = *(v49 + 8 * v46);
      v51 = atomic_load((v50 + 16));
      v47 += v51;
      LODWORD(v51) = *(v50 + 68);
      v52 = *(v50 + 80);
      if (v51 >= 2)
      {
        v51 = v51;
      }

      else
      {
        v51 = 0;
      }

      v49 = *v30;
      v48 = v52 + v48 + v51 - *(*(*v30 + 8 * v46++) + 80);
    }

    while (v43 != v46);
    v53 = 4 * v47;
  }

  *(a1 + 1042) = 0;
  *(a1 + 12) = v43;
  *(a1 + 16) = 1;
  __strlcpy_chk();
  *(a1 + 1041) = v53 > v48;
  v54 = *(v30 + 2);
  v55 = v54 >= v32;
  v56 = v54 - v32;
  if (!v55)
  {
    v67 = __si_assert_copy_extra_661(-1);
    v68 = v67;
    v69 = "";
    if (v67)
    {
      v69 = v67;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 23056, "indexCount <= indexSet->indexCount", v69);
    free(v68);
    if (__valid_fs(-1))
    {
      v70 = 2989;
    }

    else
    {
      v70 = 3072;
    }

    *v70 = -559038737;
    abort();
  }

  *(a1 + 8) = *(*(*v30 + 8 * v56) + 56);
  si_enqueue_work_with_qos(*(v5 + 1064), 5, si_mergeIndex, a1);
LABEL_3:
  v4 = *MEMORY[0x1E69E9840];
}