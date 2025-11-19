void sub_254815874(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_status(*(a1 + 32), a2, a3, a4, a5, a6, a7);
  v9 = IMOSLoggingEnabled();
  if (v8 == 5)
  {
    if (v9)
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        LOWORD(v51.value) = 0;
        _os_log_impl(&dword_254811000, v40, OS_LOG_TYPE_INFO, "Export canceled", &v51, 2u);
      }
    }

    v33 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v10, @"__kIMTranscodeErrorDomain", -6, 0, v14, v15);
    goto LABEL_13;
  }

  if (v8 == 4)
  {
    if (v9)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v23 = objc_msgSend_error(*(a1 + 32), v17, v18, v19, v20, v21, v22);
        LODWORD(v51.value) = 138412290;
        *(&v51.value + 4) = v23;
        _os_log_impl(&dword_254811000, v16, OS_LOG_TYPE_INFO, "Export failed: %@", &v51, 0xCu);
      }
    }

    v24 = MEMORY[0x277CCA9B8];
    v54 = *MEMORY[0x277CCA7E8];
    v25 = objc_msgSend_error(*(a1 + 32), v10, v11, v12, v13, v14, v15);
    v55[0] = v25;
    v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v55, &v54, 1, v27, v28);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v24, v30, @"__kIMTranscodeErrorDomain", -4, v29, v31, v32);

LABEL_13:
    v41 = 0;
    goto LABEL_19;
  }

  if (v9)
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      LOWORD(v51.value) = 0;
      _os_log_impl(&dword_254811000, v42, OS_LOG_TYPE_INFO, "Export succeeded!", &v51, 2u);
    }
  }

  v41 = objc_msgSend_outputURL(*(a1 + 32), v10, v11, v12, v13, v14, v15);
  v33 = 0;
LABEL_19:
  if (*(a1 + 40))
  {
    v52 = @"Duration";
    v43 = MEMORY[0x277CCABB0];
    Seconds = *(a1 + 48);
    if (Seconds < 2.22044605e-16)
    {
      v51 = *(a1 + 56);
      Seconds = CMTimeGetSeconds(&v51);
    }

    v45 = objc_msgSend_numberWithDouble_(v43, v34, v35, v36, v37, v38, v39, Seconds);
    v53 = v45;
    v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, &v53, &v52, 1, v47, v48);

    (*(*(a1 + 40) + 16))();
  }

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t sub_254815F10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_254815F28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67[1] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_status(*(a1 + 32), a2, a3, a4, a5, a6, a7);
  v9 = IMOSLoggingEnabled();
  if (v8 == 5)
  {
    if (v9)
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        LOWORD(v65.value) = 0;
        _os_log_impl(&dword_254811000, v36, OS_LOG_TYPE_INFO, "mpeg4 conversion canceled", &v65, 2u);
      }
    }

    v37 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v10, @"__kIMTranscodeErrorDomain", -6, 0, v14, v15);
    v38 = *(a1 + 56);
    goto LABEL_18;
  }

  if (v8 != 4)
  {
    if (v9)
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        LOWORD(v65.value) = 0;
        _os_log_impl(&dword_254811000, v39, OS_LOG_TYPE_INFO, "mpeg4 conversion succeeded!", &v65, 2u);
      }
    }

    v37 = objc_msgSend_outputURL(*(a1 + 32), v10, v11, v12, v13, v14, v15);
    v38 = *(a1 + 64);
LABEL_18:
    v40 = *(v38 + 8);
    v25 = *(v40 + 40);
    *(v40 + 40) = v37;
    goto LABEL_19;
  }

  if (v9)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v23 = objc_msgSend_error(*(a1 + 32), v17, v18, v19, v20, v21, v22);
      LODWORD(v65.value) = 138412290;
      *(&v65.value + 4) = v23;
      _os_log_impl(&dword_254811000, v16, OS_LOG_TYPE_INFO, "mpeg4 conversion failed: %@", &v65, 0xCu);
    }
  }

  v24 = MEMORY[0x277CCA9B8];
  v66 = *MEMORY[0x277CCA7E8];
  v25 = objc_msgSend_error(*(a1 + 32), v10, v11, v12, v13, v14, v15);
  v67[0] = v25;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v67, &v66, 1, v27, v28);
  v33 = objc_msgSend_errorWithDomain_code_userInfo_(v24, v30, @"__kIMTranscodeErrorDomain", -4, v29, v31, v32);
  v34 = *(*(a1 + 56) + 8);
  v35 = *(v34 + 40);
  *(v34 + 40) = v33;

LABEL_19:
  if (*(a1 + 48))
  {
    v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v48 = MEMORY[0x277CCABB0];
    v49 = *(a1 + 40);
    if (v49)
    {
      objc_msgSend_duration(v49, v41, v42, v43, v44, v45, v46);
    }

    else
    {
      memset(&v65, 0, sizeof(v65));
    }

    Seconds = CMTimeGetSeconds(&v65);
    v57 = objc_msgSend_numberWithDouble_(v48, v51, v52, v53, v54, v55, v56, Seconds);
    objc_msgSend_setObject_forKey_(v47, v58, v57, @"Duration", v59, v60, v61);

    v62 = *(*(*(a1 + 64) + 8) + 40);
    v63 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  v64 = *MEMORY[0x277D85DE8];
}

void sub_2548177E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2 == 1)
  {
    sub_254830FF0(a1);
    JUMPOUT(0x254817114);
  }

  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose((v70 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_254817AC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend__fileSizeForTransfer_(*(a1 + 32), v10, v7, v11, v12, v13, v14);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(*(*(a1 + 48) + 8) + 24);
      if (*(a1 + 80))
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v28 = 134218754;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      v32 = 2112;
      v33 = v7;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_254811000, v15, OS_LOG_TYPE_INFO, "Transcoding bigSize finished with size %llu removeAlpha %@ path %@ and error %@", &v28, 0x2Au);
    }
  }

  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v7;
  v20 = v7;

  v21 = *(*(a1 + 64) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v9;
  v23 = v9;

  v24 = *(*(a1 + 72) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v8;
  v26 = v8;

  dispatch_group_leave(*(a1 + 40));
  v27 = *MEMORY[0x277D85DE8];
}

void sub_254817C84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend__fileSizeForTransfer_(*(a1 + 32), v10, v7, v11, v12, v13, v14);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(*(*(a1 + 48) + 8) + 24);
      if (*(a1 + 80))
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v28 = 134218754;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      v32 = 2112;
      v33 = v7;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_254811000, v15, OS_LOG_TYPE_INFO, "Transcoding smallSize finished with size %llu removeAlpha %@ path %@ and error %@", &v28, 0x2Au);
    }
  }

  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v7;
  v20 = v7;

  v21 = *(*(a1 + 64) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v8;
  v23 = v8;

  v24 = *(*(a1 + 72) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v9;
  v26 = v9;

  dispatch_group_leave(*(a1 + 40));
  v27 = *MEMORY[0x277D85DE8];
}

void *sub_254817E44()
{
  result = MEMORY[0x259C1B200]("IOSurfaceGetWidth", @"IOSurface");
  off_27F611A18 = result;
  return result;
}

void *sub_254817E74()
{
  result = MEMORY[0x259C1B200]("IOSurfaceGetHeight", @"IOSurface");
  off_27F611A28 = result;
  return result;
}

void *sub_254817EA4()
{
  result = MEMORY[0x259C1B200]("IOSurfaceGetBaseAddress", @"IOSurface");
  off_27F611A38 = result;
  return result;
}

void *sub_254817ED4()
{
  result = MEMORY[0x259C1B200]("IOSurfaceLock", @"IOSurface");
  off_27F611A48 = result;
  return result;
}

void *sub_254817F04()
{
  result = MEMORY[0x259C1B200]("IOSurfaceUnlock", @"IOSurface");
  off_27F611A58 = result;
  return result;
}

id sub_25481DAD4(CGImageSource *a1, unint64_t a2, double a3, double a4)
{
  v330[1] = *MEMORY[0x277D85DE8];
  v4 = ceil(a3);
  v5 = ceil(a4);
  if (v4 >= v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v6 <= 1.84467441e19)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.84467441e19;
  }

  Count = CGImageSourceGetCount(a1);
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v312 = objc_msgSend_initWithCapacity_(v9, v10, Count, v11, v12, v13, v14);
  if (Count)
  {
    v18 = 0;
    v19 = *MEMORY[0x277CD3648];
    v20 = *MEMORY[0x277CD31C8];
    v21 = *MEMORY[0x277CD31E8];
    v22 = *MEMORY[0x277CD31C0];
    v23 = MEMORY[0x277CBEC38];
    do
    {
      LODWORD(valuePtr) = 0;
      v330[0] = v19;
      *buf = v23;
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, buf, v330, 1, v16, v17);
      v25 = CGImageSourceCopyPropertiesAtIndex(a1, v18, v24);

      if (v25)
      {
        Value = CFDictionaryGetValue(v25, v20);
        v27 = Value;
        if (Value)
        {
          v28 = CFDictionaryGetValue(Value, v21);
          if (v28 || (v28 = CFDictionaryGetValue(v27, v22)) != 0)
          {
            CFNumberGetValue(v28, kCFNumberFloatType, &valuePtr);
          }
        }

        CFRelease(v25);
        v29 = *&valuePtr;
      }

      else
      {
        v29 = 0.0;
      }

      if (v29 >= 0.011)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0.1;
      }

      v31 = objc_alloc(MEMORY[0x277CCABB0]);
      v38 = objc_msgSend_initWithDouble_(v31, v32, v33, v34, v35, v36, v37, v30);
      objc_msgSend_addObject_(v312, v39, v38, v40, v41, v42, v43);

      ++v18;
    }

    while (Count != v18);
  }

  if (IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      *&buf[4] = Count;
      *&buf[12] = 2112;
      *&buf[14] = v312;
      _os_log_impl(&dword_254811000, v44, OS_LOG_TYPE_INFO, "GIF wanted %zu durations. Generated: %@.", buf, 0x16u);
    }
  }

  v45 = CGImageSourceGetCount(a1);
  v46 = objc_alloc(MEMORY[0x277CBEB18]);
  v313 = objc_msgSend_initWithCapacity_(v46, v47, v45, v48, v49, v50, v51);
  v52 = objc_alloc_init(MEMORY[0x277CBEA78]);
  objc_msgSend_setName_(v52, v53, @"IMTranscoderAgent _GIFCreateFrameGenerationBlocksForImageSource source frame cache", v54, v55, v56, v57);
  objc_msgSend_setCountLimit_(v52, v58, v45, v59, v60, v61, v62);
  v63 = v7;
  Width = 0;
  if (v45)
  {
    for (i = 0; i != v45; ++i)
    {
      v66 = v52;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_254824048;
      *&buf[24] = &unk_27978ABB8;
      *&buf[32] = v66;
      v327 = i;
      v328 = v7;
      v329 = a1;
      v73 = objc_msgSend_copy(buf, v67, v68, v69, v70, v71, v72);

      if (!Width)
      {
        v74 = v73[2](v73);
        v75 = v74;
        if (v74)
        {
          Width = CGImageGetWidth(v74);
          Height = CGImageGetHeight(v75);
          if (Width <= Height)
          {
            Width = Height;
          }

          CFRelease(v75);
        }

        else
        {
          Width = 0;
        }
      }

      v77 = MEMORY[0x259C1B690](v73);
      objc_msgSend_addObject_(v313, v78, v77, v79, v80, v81, v82);
    }
  }

  v310 = objc_msgSend_count(v313, v83, v84, v85, v86, v87, v88);
  if (IMOSLoggingEnabled())
  {
    v89 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = Width;
      _os_log_impl(&dword_254811000, v89, OS_LOG_TYPE_INFO, "Real width is: %d", buf, 8u);
    }
  }

  v309 = 0;
  v90 = Width;
  if (Width >= v63)
  {
    v91 = v4;
  }

  else
  {
    v91 = Width;
  }

  if (Width >= v63)
  {
    v90 = v5;
  }

  v303 = v310;
  v319 = v310 - 1;
  v320 = 0;
  key = *MEMORY[0x277CD3450];
  v306 = *MEMORY[0x277CD3448];
  v301 = v90;
  v302 = v91;
  v93 = v91 * v90;
  v317 = *MEMORY[0x277CD31C8];
  v305 = *MEMORY[0x277CD31D8];
  v308 = *MEMORY[0x277CE1D88];
  v316 = *MEMORY[0x277CD31C0];
  while (1)
  {
    context = objc_autoreleasePoolPush();
    v100 = objc_msgSend_mutableCopy(v313, v94, v95, v96, v97, v98, v99);
    v107 = objc_msgSend_mutableCopy(v312, v101, v102, v103, v104, v105, v106);
    if (IMOSLoggingEnabled())
    {
      v108 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v310;
        _os_log_impl(&dword_254811000, v108, OS_LOG_TYPE_INFO, "Trying to create GIF with %d frames", buf, 8u);
      }
    }

    if (v320 <= 0)
    {
      v176 = v310 - v320;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v115 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v320;
          _os_log_impl(&dword_254811000, v115, OS_LOG_TYPE_INFO, "    Need to remove %d frame(s)", buf, 8u);
        }
      }

      v116 = v320;
      if (v319 >= 2)
      {
        v117 = 0;
        v118 = 1;
        v119 = 2;
        v120 = v303 / (v320 + 1);
        do
        {
          v121 = (v119 - 1);
          if (v121 == floorf(v120))
          {
            v128 = objc_msgSend_objectAtIndex_(v107, v109, v118, v111, v112, v113, v114, v121);
            v129 = v118;
            if (v118 <= 0)
            {
              v129 = objc_msgSend_count(v100, v122, v123, v124, v125, v126, v127);
            }

            v130 = v129 - 1;
            v131 = objc_msgSend_objectAtIndex_(v107, v122, v130, v124, v125, v126, v127);
            v132 = MEMORY[0x277CCABB0];
            objc_msgSend_floatValue(v131, v133, v134, v135, v136, v137, v138);
            v140 = v139;
            objc_msgSend_floatValue(v128, v141, v142, v143, v144, v145, v146);
            *&v148 = v140 + v147;
            v155 = objc_msgSend_numberWithFloat_(v132, v149, v150, v151, v152, v153, v154, v148);
            objc_msgSend_replaceObjectAtIndex_withObject_(v107, v156, v130, v155, v157, v158, v159);
            objc_msgSend_removeObjectAtIndex_(v107, v160, v118, v161, v162, v163, v164);
            objc_msgSend_removeObjectAtIndex_(v100, v165, v118, v166, v167, v168, v169);

            --v118;
            v120 = (v303 / (v320 + 1)) + v120;
            ++v117;
            v116 = v320;
          }

          if (v319 <= v119)
          {
            break;
          }

          ++v118;
          ++v119;
        }

        while (v116 > v117);
      }

      v176 = v310 - v320;
      if (objc_msgSend_count(v100, v109, v110, v111, v112, v113, v114) != v310 - v320)
      {
        objc_msgSend_removeLastObject(v100, v170, v171, v172, v173, v174, v175);
      }

      if (IMOSLoggingEnabled())
      {
        v177 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
        {
          v184 = objc_msgSend_count(v100, v178, v179, v180, v181, v182, v183);
          *buf = 67109120;
          *&buf[4] = v184;
          _os_log_impl(&dword_254811000, v177, OS_LOG_TYPE_INFO, "    Left with %d frame(s)", buf, 8u);
        }
      }
    }

    v92 = v310;
    if (IMOSLoggingEnabled())
    {
      v191 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v191, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v320 / v92;
        _os_log_impl(&dword_254811000, v191, OS_LOG_TYPE_INFO, "    Removed factor: %f", buf, 0xCu);
      }
    }

    if (v176 <= 5 && v320 || v320 / v310 > 0.2)
    {
      break;
    }

    v192 = objc_msgSend_count(v100, v185, v186, v187, v188, v189, v190);
    v330[0] = 0;
    valuePtr = 0.0;
    v193 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
    v194 = v193;
    if (v193)
    {
      v195 = CFDictionaryGetValue(v193, key);
      if (v195)
      {
        CFNumberGetValue(v195, kCFNumberCGFloatType, v330);
      }

      v196 = CFDictionaryGetValue(v194, v306);
      if (v196)
      {
        CFNumberGetValue(v196, kCFNumberCGFloatType, &valuePtr);
      }

      CFRelease(v194);
      v197 = *v330;
      v198 = valuePtr;
    }

    else
    {
      v198 = 0.0;
      v197 = 0.0;
    }

    v199 = 3 * vcvtd_n_u64_f64(v93 * v192, 2uLL) + a2 + (v197 * (v198 + 1.0) + 1293732.0) + vcvtd_n_u64_f64(v198 * v197 * v192, 2uLL);
    if (IMOSLoggingEnabled())
    {
      v200 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v199 >> 20;
        _os_log_impl(&dword_254811000, v200, OS_LOG_TYPE_INFO, "  Projected memory footprint of GIF transcode: %lu megabytes", buf, 0xCu);
      }
    }

    if (v199 < 0x9600001)
    {
      properties = 0;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v204 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v204, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v204, OS_LOG_TYPE_INFO, "  Enabling memory efficient GIF encoding", buf, 2u);
        }
      }

      v324 = v317;
      v322 = v305;
      v323 = MEMORY[0x277CBEC28];
      v205 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v201, &v323, &v322, 1, v202, v203);
      v325 = v205;
      properties = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v206, &v325, &v324, 1, v207, v208);
    }

    v209 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v216 = objc_msgSend_identifier(v308, v210, v211, v212, v213, v214, v215);
    v217 = CGImageDestinationCreateWithData(v209, v216, v192, 0);

    if (objc_msgSend_count(properties, v218, v219, v220, v221, v222, v223))
    {
      CGImageDestinationSetProperties(v217, properties);
    }

    v229 = 0.0;
    if (v192)
    {
      for (j = 0; v192 != j; ++j)
      {
        v231 = objc_msgSend_objectAtIndex_(v100, v224, j, v225, v226, v227, v228);
        v237 = v231[2]();
        if (v237)
        {
          v238 = MEMORY[0x277CBEAC0];
          v239 = objc_msgSend_objectAtIndex_(v107, v232, j, v233, v234, v235, v236);
          v245 = objc_msgSend_dictionaryWithObjectsAndKeys_(v238, v240, v239, v241, v242, v243, v244, v316, 0);

          v250 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v246, v245, v317, v247, v248, v249);
          CGImageDestinationAddImage(v217, v237, v250);
          CFRelease(v237);
          if (objc_msgSend_length(v209, v251, v252, v253, v254, v255, v256) > a2)
          {
            if (IMOSLoggingEnabled())
            {
              v263 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v263, OS_LOG_TYPE_INFO))
              {
                *buf = 67109376;
                *&buf[4] = j + 1;
                *&buf[8] = 2048;
                *&buf[10] = v192;
                _os_log_impl(&dword_254811000, v263, OS_LOG_TYPE_INFO, "  Bailing on frame %d out of %lu bceause we already exceeded the target data size", buf, 0x12u);
              }
            }

            v304 = objc_msgSend_length(v209, v257, v258, v259, v260, v261, v262);
            v270 = objc_msgSend_length(v209, v264, v265, v266, v267, v268, v269);

            v229 = v270 / (v304 / (j + 1) * v192);
            break;
          }
        }
      }
    }

    CGImageDestinationFinalize(v217);
    v283 = objc_msgSend_length(v209, v271, v272, v273, v274, v275, v276) > a2 && a2 != 0;
    if (v283)
    {
      if (v229 == 0.0)
      {
        v229 = a2 / objc_msgSend_length(v209, v277, v278, v279, v280, v281, v282);
      }

      v284 = v229 * v192;
      v320 = (fmax(floorf(v192 - v284), 1.0) + v320);
      if (IMOSLoggingEnabled())
      {
        v285 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v285, OS_LOG_TYPE_INFO))
        {
          *buf = 67109888;
          *&buf[4] = v320;
          *&buf[8] = 2048;
          *&buf[10] = v192;
          *&buf[18] = 2048;
          *&buf[20] = v284;
          *&buf[28] = 2048;
          *&buf[30] = v229;
          _os_log_impl(&dword_254811000, v285, OS_LOG_TYPE_INFO, "  Didn't fit, updating frames to remove: %d   (count: %lu   extra frames: %f  factorOff: %f)", buf, 0x26u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v286 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v286, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v286, OS_LOG_TYPE_INFO, "  Fits!", buf, 2u);
        }
      }

      v287 = v209;

      v309 = v287;
    }

    if (IMOSLoggingEnabled())
    {
      v288 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v288, OS_LOG_TYPE_INFO))
      {
        v295 = objc_msgSend_length(v209, v289, v290, v291, v292, v293, v294);
        *buf = 67109120;
        *&buf[4] = v295;
        _os_log_impl(&dword_254811000, v288, OS_LOG_TYPE_INFO, "Final length was %d", buf, 8u);
      }
    }

    CFRelease(v217);

    objc_autoreleasePoolPop(context);
    if (!v283)
    {
      v297 = v309;
      v298 = v297;
      goto LABEL_132;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v296 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v296, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v320 / v92;
      _os_log_impl(&dword_254811000, v296, OS_LOG_TYPE_INFO, "    Removed too many frames (%f), trying to shrink the image", buf, 0xCu);
    }
  }

  v298 = sub_25481DAD4(a1, a2, v302 * 0.85, v301 * 0.85);

  objc_autoreleasePoolPop(context);
  v297 = v309;
LABEL_132:

  v299 = *MEMORY[0x277D85DE8];

  return v298;
}

void *sub_254823284(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (objc_msgSend_longValue(v3, v4, v5, v6, v7, v8, v9) > *(a1 + 40))
  {
    v10 = *(a1 + 32);
  }

  v11 = v10;

  return v10;
}

const void *sub_254824048(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 32);
  v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, *(a1 + 40), a4, a5, a6, a7);
  ThumbnailAtIndex = objc_msgSend_objectForKey_(v8, v10, v9, v11, v12, v13, v14);

  if (ThumbnailAtIndex)
  {
    CFRetain(ThumbnailAtIndex);
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CBEB38]);
    v22 = objc_msgSend_initWithCapacity_(v16, v17, 3, v18, v19, v20, v21);
    v23 = MEMORY[0x277CBEC38];
    objc_msgSend_setObject_forKey_(v22, v24, MEMORY[0x277CBEC38], *MEMORY[0x277CD3568], v25, v26, v27);
    v33 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v28, *(a1 + 48), v29, v30, v31, v32);
    objc_msgSend_setObject_forKey_(v22, v34, v33, *MEMORY[0x277CD3660], v35, v36, v37);

    objc_msgSend_setObject_forKey_(v22, v38, v23, *MEMORY[0x277CD3578], v39, v40, v41);
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(*(a1 + 56), *(a1 + 40), v22);
    if (ThumbnailAtIndex)
    {
      v47 = *(a1 + 32);
      v48 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v42, *(a1 + 40), v43, v44, v45, v46);
      objc_msgSend_setObject_forKey_(v47, v49, ThumbnailAtIndex, v48, v50, v51, v52);
    }
  }

  return ThumbnailAtIndex;
}

void sub_25482418C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_2548258EC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2548257E8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_254826284(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25482629C(uint64_t *a1, void *a2, void *a3)
{
  v113 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v12 = a3;
  if (!v12)
  {
    v14 = objc_msgSend_bestTranscription(v5, v6, v7, v8, v9, v10, v11);
    v21 = v14;
    if (v14)
    {
      v22 = objc_msgSend_formattedString(v14, v15, v16, v17, v18, v19, v20);
      v29 = objc_msgSend_length(v22, v23, v24, v25, v26, v27, v28);

      if (v29)
      {
        v30 = *(*(a1[5] + 8) + 40);
        v31 = objc_msgSend_formattedString(v21, v15, v16, v17, v18, v19, v20);
        v37 = objc_msgSend_stringByAppendingString_(v30, v32, v31, v33, v34, v35, v36);
        v38 = *(a1[5] + 8);
        v39 = *(v38 + 40);
        *(v38 + 40) = v37;

        v40 = *(*(a1[6] + 8) + 24);
        v47 = objc_msgSend_segments(v21, v41, v42, v43, v44, v45, v46);
        v54 = objc_msgSend_count(v47, v48, v49, v50, v51, v52, v53) + v40;

        if (v54 < 0x33)
        {
          v57 = objc_msgSend_segments(v21, v15, v16, v17, v18, v19, v20);
          v56 = objc_msgSend_count(v57, v58, v59, v60, v61, v62, v63);

          v64 = *(*(a1[6] + 8) + 24);
          v71 = objc_msgSend_segments(v21, v65, v66, v67, v68, v69, v70);
          *(*(a1[6] + 8) + 24) = objc_msgSend_count(v71, v72, v73, v74, v75, v76, v77) + v64;

          if (!v56)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v55 = *(a1[6] + 8);
          v56 = 50 - *(v55 + 24);
          *(v55 + 24) = 50;
          if (!v56)
          {
            goto LABEL_15;
          }
        }

        for (i = 0; i != v56; ++i)
        {
          v79 = *(*(a1[7] + 8) + 24);
          v80 = objc_msgSend_segments(v21, v15, v16, v17, v18, v19, v20);
          v86 = objc_msgSend_objectAtIndexedSubscript_(v80, v81, i, v82, v83, v84, v85);
          objc_msgSend_confidence(v86, v87, v88, v89, v90, v91, v92);
          *(*(a1[7] + 8) + 24) = v79 + v93;
        }
      }
    }

LABEL_15:
    if (objc_msgSend_isFinal(v5, v15, v16, v17, v18, v19, v20))
    {
      objc_msgSend_commitTranscriptionWithString_confidenceSum_numberOfSegments_completion_(IMTranscriptionUtilities, v94, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 24), a1[4], v98, v99, *(*(a1[7] + 8) + 24));
    }

    else
    {
      v100 = *(*(a1[5] + 8) + 40);
      v101 = objc_msgSend_localizedSeparatorString(IMTranscriptionUtilities, v94, v95, v96, v97, v98, v99);
      v107 = objc_msgSend_stringByAppendingString_(v100, v102, v101, v103, v104, v105, v106);
      v108 = *(a1[5] + 8);
      v109 = *(v108 + 40);
      *(v108 + 40) = v107;
    }

    goto LABEL_19;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v111 = 138412290;
      v112 = v12;
      _os_log_impl(&dword_254811000, v13, OS_LOG_TYPE_INFO, "Transcription failed with error: %@", &v111, 0xCu);
    }
  }

  (*(a1[4] + 16))();
LABEL_19:

  v110 = *MEMORY[0x277D85DE8];
}

uint64_t sub_254826724()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();
  qword_27F611A68 = objc_msgSend_bundleForClass_(v0, v2, v1, v3, v4, v5, v6);

  return MEMORY[0x2821F96F8]();
}

NSData *sub_254829078(uint64_t a1)
{
  v2 = MEMORY[0x259C1B1F0](@"PKPeerPaymentBubbleView", @"PassKitUI");
  v3 = MEMORY[0x259C1B1F0](@"CKUIBehavior", @"ChatKit");
  v10 = objc_msgSend_sharedBehaviors(v3, v4, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_isFromMe(*(a1 + 32), v11, v12, v13, v14, v15, v16);
  objc_msgSend_pluginBalloonInsetsForMessageFromMe_(v10, v18, v17, v19, v20, v21, v22);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = *(a1 + 40);
  v38 = objc_msgSend_isFromMe(*(a1 + 32), v32, v33, v34, v35, v36, v37);
  v43 = objc_msgSend_generatedSnapshotForDataURL_contentInset_isFromMe_(v2, v39, v31, v38, v40, v41, v42, v24, v26, v28, v30);
  result = UIImagePNGRepresentation(v43);
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

void sub_254829970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v48 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = MEMORY[0x277CCABB0];
      v20 = objc_msgSend_length(*(a1 + 32), v13, v14, v15, v16, v17, v18);
      v26 = objc_msgSend_numberWithUnsignedInteger_(v19, v21, v20, v22, v23, v24, v25);
      v27 = @"NO";
      v28 = *(a1 + 40);
      v29 = *(a1 + 48);
      if (a5)
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v32 = 138414082;
      if (a6)
      {
        v27 = @"YES";
      }

      v33 = v26;
      v34 = 2112;
      v35 = v28;
      v36 = 2112;
      v37 = a2;
      v38 = 2112;
      v39 = a4;
      v40 = 2112;
      v41 = v30;
      v42 = 2112;
      v43 = v27;
      v44 = 2112;
      v45 = a3;
      v46 = 2112;
      v47 = v29;
      _os_log_impl(&dword_254811000, v12, OS_LOG_TYPE_INFO, "output trying to generate fallback for data %@ inFileURL %@ outputURLs %@ error %@ success %@ attemptedTranscode %@ text %@ attachments %@", &v32, 0x52u);
    }
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64));

  v31 = *MEMORY[0x277D85DE8];
}

void sub_254829B2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = MEMORY[0x277CCABB0];
      v18 = objc_msgSend_length(*(a1 + 32), v11, v12, v13, v14, v15, v16);
      v24 = objc_msgSend_numberWithUnsignedInteger_(v17, v19, v18, v20, v21, v22, v23);
      v25 = @"NO";
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      if (a4)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v30 = 138413826;
      if (a5)
      {
        v25 = @"YES";
      }

      v31 = v24;
      v32 = 2112;
      v33 = v26;
      v34 = 2112;
      v35 = a2;
      v36 = 2112;
      v37 = a3;
      v38 = 2112;
      v39 = v28;
      v40 = 2112;
      v41 = v25;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, "output trying to generate fallback for data %@ inFileURL %@ outputURLs %@ error %@ success %@ attemptedTranscode %@ attachments %@", &v30, 0x48u);
    }
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64));

  v29 = *MEMORY[0x277D85DE8];
}

void sub_254829CDC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v24 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      v16 = 138413058;
      v17 = a2;
      if (a4)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (a5)
      {
        v11 = @"YES";
      }

      v18 = 2112;
      v19 = a3;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, "got fullquality for data at URLs %@ error %@ success %@ attemptedToGenerateFallback %@", &v16, 0x2Au);
    }
  }

  v13 = *(a1 + 40);
  v14 = *(v13 + 16);
  if (a5)
  {
    v14(v13, a2);
  }

  else
  {
    v14(v13, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_254829E48(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      v13 = 138412802;
      v14 = a2;
      v15 = 2112;
      if (a4)
      {
        v9 = @"YES";
      }

      v16 = a3;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_254811000, v8, OS_LOG_TYPE_INFO, "got fullquality for data at URLs %@ error %@ success %@", &v13, 0x20u);
    }
  }

  v10 = *(a1 + 40);
  v11 = *(v10 + 16);
  if (a4)
  {
    v11(v10, a2);
  }

  else
  {
    v11(v10, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void *sub_25482A310()
{
  result = MEMORY[0x259C1B200]("PFCreateGIFFromVideoURL", @"PhotosFormats");
  off_27F611A80 = result;
  return result;
}

void sub_25482A340(double a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 134217984;
      v5 = a1;
      _os_log_impl(&dword_254811000, v2, OS_LOG_TYPE_INFO, "Converting to GIF progress {progress: %f}", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25482A440(void *a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (a2)
      {
        v9 = @"YES";
      }

      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_254811000, v8, OS_LOG_TYPE_INFO, "Finished transcoding GIF {success: %@}", buf, 0xCu);
    }
  }

  v10 = a1[5];
  if (a2)
  {
    v14 = a1[4];
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, &v14, 1, v5, v6, v7);
    result = (*(v10 + 16))(v10, v11, 0, 0, 1, 1);
  }

  else
  {
    result = (*(v10 + 16))(a1[5], 0, 0, *(*(a1[6] + 8) + 40), 0, 1);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25482A660()
{
  qword_28112D500 = objc_alloc_init(IMTranscodingAgentController);

  return MEMORY[0x2821F96F8]();
}

void sub_25482B85C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6, char a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v25 = a8;
  if (*(a1 + 32))
  {
    v26 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v19, v20, v21, v22, v23, v24);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_25482B9D4;
    v32[3] = &unk_27978AD40;
    v38 = *(a1 + 32);
    v33 = v15;
    v34 = v16;
    v35 = v17;
    v36 = v18;
    v39 = a6;
    v40 = a7;
    v37 = v25;
    objc_msgSend___im_performBlock_(v26, v27, v32, v28, v29, v30, v31);
  }
}

void sub_25482B9F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = objc_msgSend_lastObject(*(*(a1 + 32) + 16), a2, a3, a4, a5, a6, a7);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_25482BAD0;
  v14[3] = &unk_27978AD90;
  v11 = *(a1 + 56);
  v16 = *(a1 + 64);
  v15 = *(a1 + 40);
  objc_msgSend_transcodeFileTransferContents_utiType_transcoderUserInfo_completionBlock_(v8, v12, v9, v10, v11, v14, v13);
}

void sub_25482BB00(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, char a7, void *a8)
{
  v35 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = IMOSLoggingEnabled();
  if (a6)
  {
    if (v20)
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v27, OS_LOG_TYPE_INFO, "Main transcoding finished, trying to generate thumbnail", buf, 2u);
      }
    }

    objc_msgSend_transcodeThumbnailFor_target_allSizes_commonCapabilities_maxDimension_transcoderUserInfo_isLQMEnabled_outputURLs_outputContextInfo_attemptedTranscode_additionalOutPutContext_completionBlock_(*(a1 + 32), v21, *(a1 + 40), *(a1 + 88), *(a1 + 48), *(a1 + 56), *(a1 + 96), *(a1 + 64), *(a1 + 104), v16, v17, a7, v19, *(a1 + 72));
  }

  else
  {
    if (v20)
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = v18;
        _os_log_impl(&dword_254811000, v28, OS_LOG_TYPE_INFO, "Failed to transcode, error %@", buf, 0xCu);
      }
    }

    v29 = _IMTranscoderLinkFile(*(a1 + 40), v21, v22, v23, v24, v25, v26);
    v30 = IMSingleObjectArray();

    v31 = *(a1 + 40);
    (*(*(a1 + 80) + 16))();
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_25482C5DC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6, uint64_t a7, void *a8)
{
  v54 = *MEMORY[0x277D85DE8];
  v47 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = @"NO";
      *buf = 138412802;
      if (a6)
      {
        v24 = @"YES";
      }

      v49 = v24;
      v50 = 2112;
      v51 = v15;
      v52 = 2112;
      v53 = v13;
      _os_log_impl(&dword_254811000, v23, OS_LOG_TYPE_INFO, "Thumbnail generation result: %@, error %@ - %@", buf, 0x20u);
    }
  }

  v25 = objc_msgSend_mutableCopy(*(a1 + 32), v17, v18, v19, v20, v21, v22);
  objc_msgSend_addEntriesFromDictionary_(v25, v26, v16, v27, v28, v29, v30);
  v36 = *(a1 + 64);
  if (v36)
  {
    v37 = *(a1 + 40);
    v38 = objc_msgSend_arrayByAddingObjectsFromArray_(*(a1 + 48), v31, v13, v32, v33, v34, v35);
    v44 = objc_msgSend_arrayByAddingObjectsFromArray_(*(a1 + 56), v39, v14, v40, v41, v42, v43);
    (*(v36 + 16))(v36, v37, v38, v44, v15, a6, *(a1 + 72), v25);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_25482C9C4(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = @"NO";
      if (*(a1 + 72))
      {
        v10 = @"YES";
      }

      v39 = 138412546;
      v40 = v9;
      v41 = 2112;
      v42 = v10;
      _os_log_impl(&dword_254811000, v8, OS_LOG_TYPE_INFO, "Found transcoder to transcode data for balloonBundleID %@ fallback %@", &v39, 0x16u);
    }
  }

  v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v2, v3, v4, v5, v6, v7);
  v16 = objc_msgSend__randomTemporaryPathWithSuffix_fileName_(v11, v12, 0, 0, v13, v14, v15);
  v23 = objc_msgSend_stringByDeletingLastPathComponent(v16, v17, v18, v19, v20, v21, v22);

  v29 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v24, v23, v25, v26, v27, v28);
  v36 = objc_msgSend_lastObject(*(*(a1 + 40) + 16), v30, v31, v32, v33, v34, v35);
  objc_msgSend_transcodeFileTransferData_balloonBundleID_attachments_inFileURL_fallBack_completionBlock_(v36, v37, *(a1 + 48), *(a1 + 32), *(a1 + 56), v29, *(a1 + 72), *(a1 + 64));

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25482D988(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25482D9A0(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v13 = v6;
  if (!v5 || v6)
  {
    if (v6)
    {
      v32 = objc_msgSend_copy(v6, v7, v8, v9, v10, v11, v12);
    }

    else
    {
      v33 = objc_alloc(MEMORY[0x277CCA9B8]);
      v32 = objc_msgSend_initWithDomain_code_userInfo_(v33, v34, *MEMORY[0x277D1A4D0], 1, 0, v35, v36);
    }

    v37 = *(*(a1 + 64) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v32;
  }

  else
  {
    MEMORY[0x259C1B1F0](@"BlastDoorVideoPreview", @"BlastDoor");
    if (objc_opt_isKindOfClass())
    {
      v14 = v5;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v22 = objc_msgSend_image(v15, v16, v17, v18, v19, v20, v21);
    v29 = objc_msgSend_cgImage(v22, v23, v24, v25, v26, v27, v28);

    v30 = IMOSLoggingEnabled();
    if (v29)
    {
      if (v30)
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          LOWORD(v43) = 0;
          _os_log_impl(&dword_254811000, v31, OS_LOG_TYPE_INFO, "Video validation completed successfully", &v43, 2u);
        }
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else if (v30)
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v43 = 138412290;
        v44 = 0;
        _os_log_impl(&dword_254811000, v39, OS_LOG_TYPE_INFO, "Video validation failed: %@", &v43, 0xCu);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = *(*(*(a1 + 64) + 8) + 40);
      v43 = 138412290;
      v44 = v41;
      _os_log_impl(&dword_254811000, v40, OS_LOG_TYPE_INFO, "Blastdoor validation completed, err: %@", &v43, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v42 = *MEMORY[0x277D85DE8];
}

void sub_25482DC50(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && !*(*(*(a1 + 48) + 8) + 40))
  {
    MEMORY[0x259C1B1F0](@"BlastDoorPreviewAudio", @"BlastDoor");
    if (objc_opt_isKindOfClass())
    {
      v16 = v5;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v24 = objc_msgSend_powerLevels(v17, v18, v19, v20, v21, v22, v23);
    v31 = objc_msgSend_count(v24, v25, v26, v27, v28, v29, v30);

    if (v31)
    {
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          LOWORD(v41) = 0;
          _os_log_impl(&dword_254811000, v32, OS_LOG_TYPE_INFO, "Audio validation completed successfully", &v41, 2u);
        }
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(*(*(a1 + 48) + 8) + 40);
        v41 = 138412290;
        v42 = v14;
        _os_log_impl(&dword_254811000, v13, OS_LOG_TYPE_INFO, "Audio validation failed: %@", &v41, 0xCu);
      }
    }

    if (v6)
    {
      v15 = objc_msgSend_copy(v6, v7, v8, v9, v10, v11, v12);
    }

    else
    {
      v33 = objc_alloc(MEMORY[0x277CCA9B8]);
      v15 = objc_msgSend_initWithDomain_code_userInfo_(v33, v34, *MEMORY[0x277D1A4D0], 1, 0, v35, v36);
    }

    v37 = *(*(a1 + 48) + 8);
    v17 = *(v37 + 40);
    *(v37 + 40) = v15;
  }

  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = *(*(*(a1 + 48) + 8) + 40);
      v41 = 138412290;
      v42 = v39;
      _os_log_impl(&dword_254811000, v38, OS_LOG_TYPE_INFO, "Blastdoor validation completed, err: %@", &v41, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v40 = *MEMORY[0x277D85DE8];
}

void sub_25482E0B0(uint64_t a1, char a2, void *a3)
{
  v11 = a3;
  if (*(a1 + 32))
  {
    v12 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v5, v6, v7, v8, v9, v10);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_25482E188;
    v18[3] = &unk_27978AED0;
    v20 = *(a1 + 32);
    v21 = a2;
    v19 = v11;
    objc_msgSend___im_performBlock_(v12, v13, v18, v14, v15, v16, v17);
  }
}

void sub_25482E380(uint64_t a1, char a2, void *a3, double a4, double a5)
{
  v15 = a3;
  if (*(a1 + 32))
  {
    v16 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v9, v10, v11, v12, v13, v14);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_25482E46C;
    v22[3] = &unk_27978AF20;
    v24 = *(a1 + 32);
    v27 = a2;
    v25 = a4;
    v26 = a5;
    v23 = v15;
    objc_msgSend___im_performBlock_(v16, v17, v22, v18, v19, v20, v21);
  }
}

void sub_25482E488(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = *MEMORY[0x277CBF3A8];
  v8 = objc_msgSend_sharedInstance(MEMORY[0x277D1AB50], a2, a3, a4, a5, a6, a7);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 88);
  v18[0] = *(a1 + 72);
  v18[1] = v13;
  v19 = *(a1 + 104);
  v20 = 0;
  v15 = objc_msgSend_generateAndPersistPreviewFromSourceURL_previewURL_senderContext_size_balloonBundleID_previewConstraints_error_(v8, v14, v9, v10, v11, &v21, v12, v18, &v20);
  v16 = v20;

  v17 = *(a1 + 64);
  if (v17)
  {
    (*(v17 + 16))(v17, v15, v16, *&v21, *(&v21 + 1));
  }
}

void sub_25482E6DC(uint64_t a1, char a2, void *a3, double a4, double a5)
{
  v15 = a3;
  if (*(a1 + 32))
  {
    v16 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v9, v10, v11, v12, v13, v14);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_25482E7C8;
    v22[3] = &unk_27978AF20;
    v24 = *(a1 + 32);
    v27 = a2;
    v25 = a4;
    v26 = a5;
    v23 = v15;
    objc_msgSend___im_performBlock_(v16, v17, v22, v18, v19, v20, v21);
  }
}

void sub_25482E7E4(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = *MEMORY[0x277CBF3A8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_254811000, v8, OS_LOG_TYPE_INFO, "Will generate preview metadata for url %@ dst url %@", buf, 0x16u);
    }
  }

  v11 = objc_msgSend_sharedInstance(MEMORY[0x277D1AB50], v2, v3, v4, v5, v6, v7);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v21 = 0;
  v15 = *(a1 + 80);
  *buf = *(a1 + 64);
  *&buf[16] = v15;
  v24 = *(a1 + 96);
  v17 = objc_msgSend_generateAndPersistMetadataFromSourceURL_destinationURL_senderContext_size_constraints_error_(v11, v16, v12, v13, v14, &v22, buf, &v21);
  v18 = v21;

  v19 = *(a1 + 56);
  if (v19)
  {
    (*(v19 + 16))(v19, v17, v18, *&v22, *(&v22 + 1));
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_25482EAD4(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v17 = a5;
  if (*(a1 + 32))
  {
    v18 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v11, v12, v13, v14, v15, v16);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_25482EBF4;
    v24[3] = &unk_27978AFC0;
    v28 = *(a1 + 32);
    v29 = a2;
    v25 = v9;
    v26 = v10;
    v27 = v17;
    objc_msgSend___im_performBlock_(v18, v19, v24, v20, v21, v22, v23);
  }
}

void sub_25482EC10(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v10 = 0;
  v6 = objc_msgSend_decodeiMessageAppPayload_senderContext_bundleID_outAttachmentURLs_error_(MEMORY[0x277D1AD08], a2, v3, v4, v5, &v10, &v9);
  v7 = v10;
  v8 = v9;
  (*(a1[7] + 16))(a1[7], v6 != 0, v6, v7, v8);
}

void sub_25482EEF0(uint64_t a1, char a2, void *a3)
{
  v11 = a3;
  if (*(a1 + 32))
  {
    v12 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v5, v6, v7, v8, v9, v10);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_25482EFC8;
    v18[3] = &unk_27978AED0;
    v20 = *(a1 + 32);
    v21 = a2;
    v19 = v11;
    objc_msgSend___im_performBlock_(v12, v13, v18, v14, v15, v16, v17);
  }
}

void sub_25482EFE0(uint64_t a1)
{
  v2 = MEMORY[0x277D1A8B0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_25482F09C;
  v8[3] = &unk_27978B038;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  objc_msgSend_generateTranscriptBackground_senderContext_completion_(v2, v5, v3, v4, v8, v6, v7);
}

void sub_25482F09C(uint64_t a1, void *a2, void *a3)
{
  v122 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v119 = v4;
      v120 = 2112;
      v121 = v6;
      _os_log_impl(&dword_254811000, v9, OS_LOG_TYPE_INFO, "GeneratePoster: Blastdoor came back with data %@ error %@", buf, 0x16u);
    }
  }

  MEMORY[0x259C1B1F0](@"BlastDoorBackground", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v18 = v11;
  if (v11)
  {
    v19 = objc_msgSend_watchBackground(v11, v12, v13, v14, v15, v16, v17);
    v20 = MEMORY[0x277D1ACF0];
    v27 = objc_msgSend_backgroundImage(v19, v21, v22, v23, v24, v25, v26);
    objc_msgSend_cgImage(v27, v28, v29, v30, v31, v32, v33);
    v34 = IMCreatePNGImageDataFromCGImageRef();
    objc_msgSend_luminance(v19, v35, v36, v37, v38, v39, v40);
    v42 = v41;
    isHighKey = objc_msgSend_isHighKey(v19, v43, v44, v45, v46, v47, v48);
    v56 = objc_msgSend_extensionIdentifier(v19, v50, v51, v52, v53, v54, v55);
    v60 = objc_msgSend_payloadDataFor_luminance_isHighKey_extensionIdentfier_(v20, v57, v34, isHighKey, v56, v58, v59, v42);

    v67 = objc_msgSend_im_associatedWatchBackgroundURL(*(a1 + 32), v61, v62, v63, v64, v65, v66);
    LOBYTE(v27) = objc_msgSend_writeToURL_atomically_(v60, v68, v67, 1, v69, v70, v71);

    if ((v27 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v78 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          v85 = objc_msgSend_im_associatedWatchBackgroundURL(*(a1 + 32), v79, v80, v81, v82, v83, v84);
          *buf = 138412546;
          v119 = v60;
          v120 = 2112;
          v121 = v85;
          _os_log_impl(&dword_254811000, v78, OS_LOG_TYPE_INFO, "GeneratePoster: Error writing watch data %@ to URL %@", buf, 0x16u);
        }
      }

      v86 = objc_alloc(MEMORY[0x277CCA9B8]);
      v90 = objc_msgSend_initWithDomain_code_userInfo_(v86, v87, *MEMORY[0x277D1A4D0], 1, 0, v88, v89);

      v8 = 0;
      v6 = v90;
    }

    v91 = objc_msgSend_poster(v18, v72, v73, v74, v75, v76, v77);
    if ((objc_msgSend_writeToURL_atomically_(v91, v92, *(a1 + 32), 1, v93, v94, v95) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v96 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          v97 = *(a1 + 32);
          *buf = 138412546;
          v119 = v91;
          v120 = 2112;
          v121 = v97;
          _os_log_impl(&dword_254811000, v96, OS_LOG_TYPE_INFO, "GeneratePoster: Error writing poster data %@ to URL %@", buf, 0x16u);
        }
      }

      v98 = objc_alloc(MEMORY[0x277CCA9B8]);
      v102 = objc_msgSend_initWithDomain_code_userInfo_(v98, v99, *MEMORY[0x277D1A4D0], 1, 0, v100, v101);

      v8 = 0;
      v6 = v102;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v103 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
      {
        v110 = objc_msgSend_im_associatedWatchBackgroundURL(*(a1 + 32), v104, v105, v106, v107, v108, v109);
        *buf = 138412290;
        v119 = v110;
        _os_log_impl(&dword_254811000, v103, OS_LOG_TYPE_INFO, "Got a response not of type BlastDoorBackground for generateTranscriptBackground at source %@", buf, 0xCu);
      }
    }

    v111 = objc_alloc(MEMORY[0x277CCA9B8]);
    v8 = 0;
    v19 = v6;
    v6 = objc_msgSend_initWithDomain_code_userInfo_(v111, v112, *MEMORY[0x277D1A4D0], 1, 0, v113, v114);
  }

  v115 = *(a1 + 40);
  if (v115)
  {
    (*(v115 + 16))(v115, v8, v6);
  }

  v116 = *MEMORY[0x277D85DE8];
}

void sub_25482F4F4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25482F2D0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25482FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, a2, a3);
  }

  return result;
}

Class sub_25482FAC0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_27F611A98)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = sub_25482FC04;
    v5[4] = &unk_27978B0C0;
    v5[5] = v5;
    v6 = xmmword_27978B0A8;
    v7 = 0;
    qword_27F611A98 = _sl_dlopen();
    v2 = v5[0];
    if (qword_27F611A98)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PRSPosterArchiver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2548315F8();
  }

  qword_27F611A90 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25482FC04(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27F611A98 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _IMTranscoderLinkFile(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = 0;
  v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3, a4, a5, a6, a7);
  PathComponent = objc_msgSend_lastPathComponent(a1, v9, v10, v11, v12, v13, v14);
  v22 = objc_msgSend_stringByDeletingPathExtension(PathComponent, v16, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_pathExtension(a1, v23, v24, v25, v26, v27, v28);
  v35 = objc_msgSend_stringByAppendingPathExtension_(v22, v30, v29, v31, v32, v33, v34);
  v41 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v8, v36, v35, v37, v38, v39, v40);
  v48 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v42, v43, v44, v45, v46, v47);
  if (objc_msgSend_copyItemAtURL_toURL_error_(v48, v49, a1, v41, &v53, v50, v51))
  {
    return v41;
  }

  else
  {
    return 0;
  }
}

void sub_254830784(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    v3 = [Image_Estimator_HEIF alloc];
    v9 = objc_msgSend_initWithMLModel_(v3, v4, v10, v5, v6, v7, v8);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_254830A3C(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  if (v28)
  {
    v5 = a3;
    v6 = [Image_Estimator_HEIFOutput alloc];
    v12 = objc_msgSend_featureValueForName_(v28, v7, @"Target Quality Factor", v8, v9, v10, v11);
    objc_msgSend_doubleValue(v12, v13, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_initWithTarget_Quality_Factor_(v6, v19, v20, v21, v22, v23, v24);

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v26 = *(a1 + 32);
    v27 = *(v26 + 16);
    v25 = a3;
    v27(v26, 0, v25);
  }
}

void sub_254830BFC(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  if (v28)
  {
    v5 = a3;
    v6 = [Image_Estimator_HEIFOutput alloc];
    v12 = objc_msgSend_featureValueForName_(v28, v7, @"Target Quality Factor", v8, v9, v10, v11);
    objc_msgSend_doubleValue(v12, v13, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_initWithTarget_Quality_Factor_(v6, v19, v20, v21, v22, v23, v24);

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v26 = *(a1 + 32);
    v27 = *(v26 + 16);
    v25 = a3;
    v27(v26, 0, v25);
  }
}

void sub_254830FBC(void *a1)
{

  objc_end_catch();
}

void sub_2548310E0()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD2DB0];
  sub_254824178();
  sub_25482418C(&dword_254811000, MEMORY[0x277D86220], v1, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254831168()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD2DC8];
  sub_254824178();
  sub_25482418C(&dword_254811000, MEMORY[0x277D86220], v1, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2548311F0()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3438];
  sub_254824178();
  sub_25482418C(&dword_254811000, MEMORY[0x277D86220], v1, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254831278()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3338];
  sub_254824178();
  sub_25482418C(&dword_254811000, MEMORY[0x277D86220], v1, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254831300()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3358];
  sub_254824178();
  sub_25482418C(&dword_254811000, MEMORY[0x277D86220], v1, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254831388()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3340];
  sub_254824178();
  sub_25482418C(&dword_254811000, MEMORY[0x277D86220], v1, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254831410()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD34F8];
  sub_254824178();
  sub_25482418C(&dword_254811000, MEMORY[0x277D86220], v1, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254831498()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3518];
  sub_254824178();
  sub_25482418C(&dword_254811000, MEMORY[0x277D86220], v1, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254831520()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3500];
  sub_254824178();
  sub_25482418C(&dword_254811000, MEMORY[0x277D86220], v1, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}