void sub_241C7D0D8()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();
  v109 = objc_msgSend_bundleForClass_(v0, v2, v1);
  v3 = [_BCUCoverEffectsShadow alloc];
  v5 = objc_msgSend_URLForResource_withExtension_(v109, v4, @"iBooks_Covers_Flat-L_Shadow", @"png");
  v6 = v5;
  if (v5 && (v7 = CGDataProviderCreateWithURL(v5)) != 0)
  {
    v8 = v7;
    v9 = CGImageCreateWithPNGDataProvider(v7, 0, 1, kCGRenderingIntentDefault);
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  v11 = objc_msgSend_initWithImage_insets_(v3, v10, v9, 44.0, 64.0, 108.0, 64.0);
  v12 = qword_2810D51A8;
  qword_2810D51A8 = v11;

  v13 = [_BCUCoverEffectsShadow alloc];
  v15 = objc_msgSend_URLForResource_withExtension_(v109, v14, @"iBooks_Covers_RTL_Flat-L_Shadow", @"png");
  v16 = v15;
  if (v15 && (v17 = CGDataProviderCreateWithURL(v15)) != 0)
  {
    v18 = v17;
    v19 = CGImageCreateWithPNGDataProvider(v17, 0, 1, kCGRenderingIntentDefault);
    CFRelease(v18);
  }

  else
  {
    v19 = 0;
  }

  v21 = objc_msgSend_initWithImage_insets_(v13, v20, v19, 44.0, 64.0, 108.0, 64.0);
  v22 = qword_2810D5198;
  qword_2810D5198 = v21;

  v23 = [_BCUCoverEffectsShadow alloc];
  v25 = objc_msgSend_URLForResource_withExtension_(v109, v24, @"iBooks_Covers_Flat-L_Shadow~Night", @"png");
  v26 = v25;
  if (v25 && (v27 = CGDataProviderCreateWithURL(v25)) != 0)
  {
    v28 = v27;
    v29 = CGImageCreateWithPNGDataProvider(v27, 0, 1, kCGRenderingIntentDefault);
    CFRelease(v28);
  }

  else
  {
    v29 = 0;
  }

  v31 = objc_msgSend_initWithImage_insets_(v23, v30, v29, 44.0, 64.0, 108.0, 64.0);
  v32 = qword_2810D51A0;
  qword_2810D51A0 = v31;

  v33 = [_BCUCoverEffectsShadow alloc];
  v35 = objc_msgSend_URLForResource_withExtension_(v109, v34, @"iBooks_Covers_RTL_Flat-L_Shadow~Night", @"png");
  v36 = v35;
  if (v35 && (v37 = CGDataProviderCreateWithURL(v35)) != 0)
  {
    v38 = v37;
    v39 = CGImageCreateWithPNGDataProvider(v37, 0, 1, kCGRenderingIntentDefault);
    CFRelease(v38);
  }

  else
  {
    v39 = 0;
  }

  v41 = objc_msgSend_initWithImage_insets_(v33, v40, v39, 44.0, 64.0, 108.0, 64.0);
  v42 = qword_2810D5190;
  qword_2810D5190 = v41;

  v43 = [_BCUCoverEffectsShadow alloc];
  v45 = objc_msgSend_URLForResource_withExtension_(v109, v44, @"iBooks_Covers_Flowcase_Shadow", @"png");
  v46 = v45;
  if (v45 && (v47 = CGDataProviderCreateWithURL(v45)) != 0)
  {
    v48 = v47;
    v49 = CGImageCreateWithPNGDataProvider(v47, 0, 1, kCGRenderingIntentDefault);
    CFRelease(v48);
  }

  else
  {
    v49 = 0;
  }

  v51 = objc_msgSend_initWithImage_insets_blendMode_(v43, v50, v49, *MEMORY[0x277CDA568], 266.0, 510.0, 266.0, 510.0);
  v52 = qword_2810D51C8;
  qword_2810D51C8 = v51;

  v53 = [_BCUCoverEffectsShadow alloc];
  v55 = objc_msgSend_URLForResource_withExtension_(v109, v54, @"iBooks_Covers_Flat-L_SeriesShadow", @"png");
  v56 = v55;
  if (v55 && (v57 = CGDataProviderCreateWithURL(v55)) != 0)
  {
    v58 = v57;
    v59 = CGImageCreateWithPNGDataProvider(v57, 0, 1, kCGRenderingIntentDefault);
    CFRelease(v58);
  }

  else
  {
    v59 = 0;
  }

  v61 = objc_msgSend_initWithImage_insets_(v53, v60, v59, 108.0, 128.0, 176.0, 128.0);
  v62 = qword_2810D5188;
  qword_2810D5188 = v61;

  v63 = [_BCUCoverEffectsShadow alloc];
  v65 = objc_msgSend_URLForResource_withExtension_(v109, v64, @"iBooks_Covers_RTL_Flat-L_SeriesShadow", @"png");
  v66 = v65;
  if (v65 && (v67 = CGDataProviderCreateWithURL(v65)) != 0)
  {
    v68 = v67;
    v69 = CGImageCreateWithPNGDataProvider(v67, 0, 1, kCGRenderingIntentDefault);
    CFRelease(v68);
  }

  else
  {
    v69 = 0;
  }

  v71 = objc_msgSend_initWithImage_insets_(v63, v70, v69, 108.0, 128.0, 176.0, 128.0);
  v72 = qword_2810D5178;
  qword_2810D5178 = v71;

  v73 = [_BCUCoverEffectsShadow alloc];
  v75 = objc_msgSend_URLForResource_withExtension_(v109, v74, @"iBooks_Covers_Flat-L_SeriesShadow~Night", @"png");
  v76 = v75;
  if (v75 && (v77 = CGDataProviderCreateWithURL(v75)) != 0)
  {
    v78 = v77;
    v79 = CGImageCreateWithPNGDataProvider(v77, 0, 1, kCGRenderingIntentDefault);
    CFRelease(v78);
  }

  else
  {
    v79 = 0;
  }

  v81 = objc_msgSend_initWithImage_insets_(v73, v80, v79, 108.0, 128.0, 176.0, 128.0);
  v82 = qword_2810D5180;
  qword_2810D5180 = v81;

  v83 = [_BCUCoverEffectsShadow alloc];
  v85 = objc_msgSend_URLForResource_withExtension_(v109, v84, @"iBooks_Covers_RTL_Flat-L_SeriesShadow~Night", @"png");
  v86 = v85;
  if (v85 && (v87 = CGDataProviderCreateWithURL(v85)) != 0)
  {
    v88 = v87;
    v89 = CGImageCreateWithPNGDataProvider(v87, 0, 1, kCGRenderingIntentDefault);
    CFRelease(v88);
  }

  else
  {
    v89 = 0;
  }

  v91 = objc_msgSend_initWithImage_insets_(v83, v90, v89, 108.0, 128.0, 176.0, 128.0);
  v92 = qword_2810D5170;
  qword_2810D5170 = v91;

  v93 = [_BCUCoverEffectsAssets alloc];
  v95 = objc_msgSend_initWithBundle_rtl_night_(v93, v94, v109, 0, 0);
  v96 = qword_2810D51E8;
  qword_2810D51E8 = v95;

  v97 = [_BCUCoverEffectsAssets alloc];
  v99 = objc_msgSend_initWithBundle_rtl_night_(v97, v98, v109, 0, 1);
  v100 = qword_2810D51E0;
  qword_2810D51E0 = v99;

  v101 = [_BCUCoverEffectsAssets alloc];
  v103 = objc_msgSend_initWithBundle_rtl_night_(v101, v102, v109, 1, 0);
  v104 = qword_2810D51D8;
  qword_2810D51D8 = v103;

  v105 = [_BCUCoverEffectsAssets alloc];
  v107 = objc_msgSend_initWithBundle_rtl_night_(v105, v106, v109, 1, 1);
  v108 = qword_2810D51D0;
  qword_2810D51D0 = v107;
}

id sub_241C7D850()
{
  if (qword_2810D5160 != -1)
  {
    sub_241C7D83C();
  }

  v1 = qword_2810D5168;

  return v1;
}

uint64_t sub_241C7D894()
{
  qword_2810D5168 = os_log_create("com.apple.BookCoverUtility", "BCULayerRenderer");

  return MEMORY[0x2821F96F8]();
}

void sub_241C7D94C(uint64_t a1)
{
  v230 = *MEMORY[0x277D85DE8];
  v218 = 0;
  v219 = &v218;
  v220 = 0x2020000000;
  v221 = 1;
  v194 = *MEMORY[0x277CD2B88];
  v192 = *MEMORY[0x277CD2968];
  v193 = *MEMORY[0x277CD2A28];
  v191 = *MEMORY[0x277CD2948];
  v190 = *MEMORY[0x277CD2960];
  v189 = *MEMORY[0x277CD2A70];
  v187 = *MEMORY[0x277CDA820];
  name = *MEMORY[0x277CBF3E0];
  key = *MEMORY[0x277CD29C0];
  while (*(v219 + 24) == 1)
  {
    context = objc_autoreleasePoolPush();
    v212 = 0;
    v213 = &v212;
    v214 = 0x3032000000;
    v215 = sub_241C7F69C;
    v216 = sub_241C7F6AC;
    v217 = 0;
    v1 = *(a1 + 32);
    v2 = *(v1 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241C7E8F4;
    block[3] = &unk_278D13F48;
    block[5] = &v212;
    block[4] = v1;
    dispatch_sync(v2, block);
    v3 = sub_241C7D850();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_msgSend_count(v213[5], v4, v5);
      LODWORD(buf.m11) = 134217984;
      *(&buf.m11 + 4) = v6;
      _os_log_impl(&dword_241C7C000, v3, OS_LOG_TYPE_DEFAULT, "sorting operations; count=%lu", &buf, 0xCu);
    }

    os_unfair_lock_lock(&unk_2810D5150);
    v8 = objc_msgSend_sortedArrayUsingSelector_(v213[5], v7, sel__compareHoldingStateLock_);
    v9 = v213[5];
    v213[5] = v8;

    os_unfair_lock_unlock(&unk_2810D5150);
    if (objc_msgSend_count(v213[5], v10, v11) >= 9)
    {
      v14 = v213[5];
      v15 = objc_msgSend_count(v14, v12, v13);
      v17 = objc_msgSend_subarrayWithRange_(v14, v16, v15 - 8, 8);
      v18 = v213[5];
      v213[5] = v17;
    }

    v19 = *(a1 + 32);
    v20 = *(v19 + 8);
    v210[0] = MEMORY[0x277D85DD0];
    v210[1] = 3221225472;
    v210[2] = sub_241C7E9F8;
    v210[3] = &unk_278D13F70;
    v210[4] = v19;
    v210[5] = &v212;
    v210[6] = &v218;
    dispatch_sync(v20, v210);
    if (objc_msgSend_count(v213[5], v21, v22))
    {
      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v23 = v213[5];
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v206, v227, 16);
      if (v27)
      {
        v28 = *v207;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v207 != v28)
            {
              objc_enumerationMutation(v23);
            }

            v30 = *(*(&v206 + 1) + 8 * i);
            v32 = objc_msgSend_configureLayer(v30, v25, v26);
            if (v32)
            {
              objc_msgSend_setLayer_(v30, v31, v32);
              v35 = objc_msgSend_layer(v30, v33, v34);
              objc_msgSend_setNeedsDisplay(v35, v36, v37);
            }
          }

          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v206, v227, 16);
        }

        while (v27);
      }

      v205 = 0u;
      v203 = 0u;
      v204 = 0u;
      v202 = 0u;
      obj = v213[5];
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v202, v226, 16);
      if (v39)
      {
        v195 = *v203;
        do
        {
          v196 = v39;
          for (j = 0; j != v196; ++j)
          {
            if (*v203 != v195)
            {
              objc_enumerationMutation(obj);
            }

            v43 = *(*(&v202 + 1) + 8 * j);
            v44 = objc_msgSend_layer(v43, v40, v41);
            v47 = v44;
            if (v44)
            {
              objc_msgSend_bounds(v44, v45, v46);
              v49 = v48;
              v51 = v50;
              objc_msgSend_rasterizationScale(v47, v52, v53);
              v55 = v54;
              v56 = v49 * v54;
              if (v56 > 8192.0)
              {
                v56 = 8192.0;
              }

              v57 = fmax(v56, 1.0);
              if (v51 * v55 <= 8192.0)
              {
                v58 = v51 * v55;
              }

              else
              {
                v58 = 8192.0;
              }

              AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
              v60 = v57;
              v223.m11 = v194;
              v62 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v61, llroundf(v60));
              v63 = fmax(v58, 1.0);
              v64 = v63;
              v65 = llroundf(v64);
              *&buf.m11 = v62;
              v223.m12 = v193;
              v67 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v66, v65);
              *&buf.m12 = v67;
              v223.m13 = v192;
              v69 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v68, AlignedBytesPerRow);
              *&buf.m13 = v69;
              v223.m14 = v191;
              v71 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v70, AlignedBytesPerRow * v65);
              *&buf.m14 = v71;
              *&buf.m21 = &unk_2853D9FF0;
              v223.m21 = v190;
              v223.m22 = v189;
              *&buf.m22 = &unk_2853DA008;
              properties = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v72, &buf, &v223, 6);

              v73 = IOSurfaceCreate(properties);
              v74 = v73;
              if (v73)
              {
                IOSurfaceLock(v73, 0, 0);
                if (!*(*(a1 + 32) + 48))
                {
                  v76 = MTLCreateSystemDefaultDevice();
                  v77 = *(a1 + 32);
                  v78 = *(v77 + 48);
                  *(v77 + 48) = v76;

                  v81 = objc_msgSend_newCommandQueue(*(*(a1 + 32) + 48), v79, v80);
                  v82 = *(a1 + 32);
                  v83 = *(v82 + 56);
                  *(v82 + 56) = v81;
                }

                v84 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v75, 80, v57, v63, 0);
                objc_msgSend_setUsage_(v84, v85, 5);
                v197 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(*(*(a1 + 32) + 48), v86, v84, v74, 0);
                v88 = *(a1 + 32);
                v89 = *(v88 + 40);
                if (v89)
                {
                  objc_msgSend_setDestination_(v89, v87, v197);
                }

                else
                {
                  v93 = *(v88 + 56);
                  if (v93)
                  {
                    v224 = v187;
                    v225 = v93;
                    v94 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v87, &v225, &v224, 1);
                    objc_msgSend_rendererWithMTLTexture_options_(MEMORY[0x277CD9F40], v95, v197, v94);
                  }

                  else
                  {
                    v94 = 0;
                    objc_msgSend_rendererWithMTLTexture_options_(MEMORY[0x277CD9F40], v87, v197, 0);
                  }
                  v96 = ;
                  v97 = *(a1 + 32);
                  v98 = *(v97 + 40);
                  *(v97 + 40) = v96;
                }

                memset(&v223, 0, sizeof(v223));
                CATransform3DMakeScale(&v223, v55, -v55, 1.0);
                objc_msgSend_begin(MEMORY[0x277CD9FF0], v99, v100);
                objc_msgSend_activateBackground_(MEMORY[0x277CD9FF0], v101, 1);
                objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v102, 1);
                v105 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v103, v104);
                objc_msgSend_setAnchorPoint_(v105, v106, v107, 0.5, 0.5);
                buf = v223;
                objc_msgSend_setTransform_(v105, v108, &buf);
                objc_msgSend_setFrame_(v105, v109, v110, 0.0, 0.0, v57, v63);
                objc_msgSend_setGeometryFlipped_(v105, v111, 1);
                objc_msgSend_addSublayer_(v105, v112, v47);
                objc_msgSend_setLayer_(*(*(a1 + 32) + 40), v113, v105);
                objc_msgSend_setBounds_(*(*(a1 + 32) + 40), v114, v115, 0.0, 0.0, v57, v63);
                objc_msgSend_commit(MEMORY[0x277CD9FF0], v116, v117);
                objc_msgSend_flush(MEMORY[0x277CD9FF0], v118, v119);
                objc_msgSend_beginFrameAtTime_timeStamp_(*(*(a1 + 32) + 40), v120, 0, 0.0);
                objc_msgSend_render(*(*(a1 + 32) + 40), v121, v122);
                objc_msgSend_endFrame(*(*(a1 + 32) + 40), v123, v124);
                if (objc_msgSend_waitForCPUSynchronization(v43, v125, v126))
                {
                  v129 = objc_msgSend_commandBuffer(*(*(a1 + 32) + 56), v127, v128);
                  objc_msgSend_enqueue(v129, v130, v131);
                  objc_msgSend_commit(v129, v132, v133);
                  objc_msgSend_waitUntilCompleted(v129, v134, v135);
                  v138 = objc_msgSend_status(v129, v136, v137);
                  v141 = v138 == 5;
                  if (v138 == 5)
                  {
                    v142 = objc_msgSend_error(v129, v139, v140);
                    v143 = sub_241C7D850();
                    if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                    {
                      v186 = objc_msgSend_logKey(v43, v144, v145);
                      v171 = objc_msgSend_localizedDescription(v142, v169, v170);
                      LODWORD(buf.m11) = 138412802;
                      *(&buf.m11 + 4) = v186;
                      WORD2(buf.m12) = 2082;
                      *(&buf.m12 + 6) = "[BCULayerRenderer _processOperations]_block_invoke";
                      HIWORD(buf.m13) = 2112;
                      v184 = v171;
                      *&buf.m14 = v171;
                      _os_log_error_impl(&dword_241C7C000, v143, OS_LOG_TYPE_ERROR, "[%@] %{public}s error in the Metal Command Buffer: %@", &buf, 0x20u);
                    }
                  }
                }

                else
                {
                  v141 = 0;
                }

                objc_msgSend_setLayer_(v43, v127, 0);
                if (v141)
                {
LABEL_48:
                  v92 = 0;
                }

                else
                {
                  v146 = CFGetTypeID(v74);
                  if (v146 != CGImageGetTypeID() || (v147 = [BCUPurgeableImage alloc], (v92 = objc_msgSend_initWithImage_surface_contentsScale_(v147, v148, v74, 0, v55)) == 0))
                  {
                    PixelFormat = IOSurfaceGetPixelFormat(v74);
                    if (PixelFormat == 1999843442 || PixelFormat == 1647534392)
                    {
                      v150 = CGImageCreateFromIOSurface();
                      v151 = [BCUPurgeableImage alloc];
                      v92 = objc_msgSend_initWithImage_surface_contentsScale_(v151, v152, v150, v74, v55);
                      CGImageRelease(v150);
                    }

                    else
                    {
                      CFRetain(v74);
                      IOSurfaceIncrementUseCount(v74);
                      BaseAddress = IOSurfaceGetBaseAddress(v74);
                      BytesPerRow = IOSurfaceGetBytesPerRow(v74);
                      Width = IOSurfaceGetWidth(v74);
                      Height = IOSurfaceGetHeight(v74);
                      AllocSize = IOSurfaceGetAllocSize(v74);
                      v156 = CGDataProviderCreateWithData(v74, BaseAddress, AllocSize, sub_241C7FAEC);
                      if (!v156)
                      {
                        IOSurfaceDecrementUseCount(v74);
                        CFRelease(v74);
                        goto LABEL_48;
                      }

                      v157 = IOSurfaceCopyValue(v74, key);
                      v158 = v157;
                      if (v157)
                      {
                        DeviceRGB = CGColorSpaceCreateWithPropertyList(v157);
                        CFRelease(v158);
                      }

                      else
                      {
                        v229 = 0;
                        memset(&buf, 0, sizeof(buf));
                        v222 = 132;
                        DeviceRGB = 0;
                        if (!IOSurfaceGetBulkAttachments() && v222 == 132 && BYTE3(buf.m24) == 12)
                        {
                          DeviceRGB = CGColorSpaceCreateWithName(name);
                        }
                      }

                      if (!DeviceRGB)
                      {
                        DeviceRGB = CGColorSpaceCreateDeviceRGB();
                      }

                      v161 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, BytesPerRow, DeviceRGB, 0x2002u, v156, 0, 1, kCGRenderingIntentDefault);
                      CGImageSetProperty();
                      CGColorSpaceRelease(DeviceRGB);
                      CGDataProviderRelease(v156);
                      v162 = [BCUPurgeableImage alloc];
                      v92 = objc_msgSend_initWithImage_surface_contentsScale_(v162, v163, v161, v74, v55);
                      CGImageRelease(v161);
                    }
                  }
                }

                IOSurfaceUnlock(v74, 0, 0);
                CFRelease(v74);
                if (!v92)
                {
                  v164 = sub_241C7D850();
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                  {
                    v168 = objc_msgSend_logKey(v43, v165, v166);
                    LODWORD(buf.m11) = 138412546;
                    *(&buf.m11 + 4) = v168;
                    WORD2(buf.m12) = 2082;
                    *(&buf.m12 + 6) = "[BCULayerRenderer _processOperations]_block_invoke";
                    _os_log_error_impl(&dword_241C7C000, v164, OS_LOG_TYPE_ERROR, "[%@] %{public}s failed to create image", &buf, 0x16u);
                  }
                }
              }

              else
              {
                v84 = sub_241C7D850();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                {
                  v160 = objc_msgSend_logKey(v43, v90, v91);
                  LODWORD(buf.m11) = 138412802;
                  *(&buf.m11 + 4) = v160;
                  WORD2(buf.m12) = 2082;
                  *(&buf.m12 + 6) = "[BCULayerRenderer _processOperations]_block_invoke";
                  HIWORD(buf.m13) = 2112;
                  *&buf.m14 = properties;
                  _os_log_error_impl(&dword_241C7C000, v84, OS_LOG_TYPE_ERROR, "[%@] %{public}s failed to create IOSurface: %@", &buf, 0x20u);
                }

                v92 = 0;
              }

              objc_msgSend_setResult_(v43, v167, v92);
            }
          }

          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v202, v226, 16);
        }

        while (v39);
      }

      os_unfair_lock_lock(&unk_2810D5150);
      v172 = *(*(a1 + 32) + 64);
      os_unfair_lock_unlock(&unk_2810D5150);
      if (v172 == 1)
      {
        v173 = *(a1 + 32);
        v174 = *(v173 + 8);
        v201[0] = MEMORY[0x277D85DD0];
        v201[1] = 3221225472;
        v201[2] = sub_241C7F6B4;
        v201[3] = &unk_278D13F48;
        v201[4] = v173;
        v201[5] = &v212;
        dispatch_sync(v174, v201);
        *(v219 + 24) = 0;
      }

      else
      {
        v175 = sub_241C7D850();
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
        {
          v178 = objc_msgSend_count(*(*(a1 + 32) + 32), v176, v177);
          LODWORD(buf.m11) = 134217984;
          *(&buf.m11 + 4) = v178;
          _os_log_impl(&dword_241C7C000, v175, OS_LOG_TYPE_DEFAULT, "completed %lu operations", &buf, 0xCu);
        }

        v179 = *(*(a1 + 32) + 24);
        v200[0] = MEMORY[0x277D85DD0];
        v200[1] = 3221225472;
        v200[2] = sub_241C7F828;
        v200[3] = &unk_278D13F98;
        v200[4] = &v212;
        dispatch_async(v179, v200);
      }
    }

    _Block_object_dispose(&v212, 8);

    objc_autoreleasePoolPop(context);
  }

  _Block_object_dispose(&v218, 8);
}

void sub_241C7E85C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241C7E8F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_allObjects(*(*(a1 + 32) + 32), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  result = objc_msgSend_count(*(*(*(a1 + 40) + 8) + 40), v7, v8);
  if (!result)
  {
    result = objc_msgSend_count(*(*(a1 + 32) + 32), v10, v11);
    if (result)
    {
      v12 = sub_241C7D850();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_msgSend_count(*(*(a1 + 32) + 32), v13, v14);
        v18 = 134217984;
        v19 = v15;
        _os_log_impl(&dword_241C7C000, v12, OS_LOG_TYPE_DEFAULT, "no operations to sort; count=%lu", &v18, 0xCu);
      }

      return objc_msgSend_removeAllObjects(*(*(a1 + 32) + 32), v16, v17);
    }
  }

  return result;
}

void sub_241C7E9F8(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(*(a1[5] + 8) + 40);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v13, v19, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_removeObject_(*(a1[4] + 32), v5, *(*(&v13 + 1) + 8 * v8++), v13);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v13, v19, 16);
    }

    while (v6);
  }

  v11 = objc_msgSend_count(*(a1[4] + 32), v9, v10);
  v12 = sub_241C7D850();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v11;
    _os_log_impl(&dword_241C7C000, v12, OS_LOG_TYPE_DEFAULT, "removed operations for processing; count=%lu", buf, 0xCu);
  }

  *(*(a1[6] + 8) + 24) = v11 != 0;
}

void sub_241C7F584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241C7F59C(void *a1, const char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_count(*(a1[4] + 32), a2, a3);
  *(*(a1[6] + 8) + 24) = v4 == 0;
  objc_msgSend_addObject_(*(a1[4] + 32), v5, a1[5]);
  v6 = sub_241C7D850();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_msgSend_logKey(a1[5], v7, v8);
    v10 = 138543618;
    v11 = v9;
    v12 = 2048;
    v13 = v4 + 1;
    _os_log_impl(&dword_241C7C000, v6, OS_LOG_TYPE_DEFAULT, "added operation %{public}@; count=%lu", &v10, 0x16u);
  }
}

uint64_t sub_241C7F69C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241C7F6B4(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v15, v21, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_msgSend_setResult_(v9, v5, 0, v15);
        objc_msgSend_addObject_(*(*(a1 + 32) + 32), v10, v9);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v15, v21, 16);
    }

    while (v6);
  }

  v11 = sub_241C7D850();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_msgSend_count(*(*(a1 + 32) + 32), v12, v13);
    *buf = 134217984;
    v20 = v14;
    _os_log_impl(&dword_241C7C000, v11, OS_LOG_TYPE_DEFAULT, "added operations for retrying; count=%lu", buf, 0xCu);
  }
}

void sub_241C7F828(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v13, v17, 16);
  if (v3)
  {
    v6 = v3;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v1);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_msgSend_result(v9, v4, v5, v13);
        objc_msgSend_setResult_(v9, v11, 0);
        objc_msgSend_completeWithImage_(v9, v12, v10);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v4, &v13, v17, 16);
    }

    while (v6);
  }
}

void sub_241C7FAEC(__IOSurface *a1)
{
  IOSurfaceDecrementUseCount(a1);

  CFRelease(a1);
}

id BookCoverUtilityLog()
{
  if (qword_27EC698D0 != -1)
  {
    sub_241C85B54();
  }

  v1 = qword_27EC698C8;

  return v1;
}

uint64_t sub_241C7FB68()
{
  qword_27EC698C8 = os_log_create("com.apple.iBooks", "BookCoverUtility");

  return MEMORY[0x2821F96F8]();
}

CGImageRef sub_241C80094(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_URLForResource_withExtension_(a2, a2, a1, @"png");
  v3 = v2;
  if (v2 && (v4 = CGDataProviderCreateWithURL(v2)) != 0)
  {
    v5 = v4;
    v6 = CGImageCreateWithPNGDataProvider(v4, 0, 1, kCGRenderingIntentDefault);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

double sub_241C80F64(CGImage *a1, double a2, double a3, double a4)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v10 = 0.0;
  if (*MEMORY[0x277CBF3A8] != Width || *(MEMORY[0x277CBF3A8] + 8) != Height)
  {
    v10 = fmin(a2 / Width, a3 / Height);
  }

  if (a4 == 0.0)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = a4;
  }

  return 1.0 / v12 * round(v12 * (v10 * Width));
}

void sub_241C81024(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v7 = a3;
  v12 = *(*(a1 + 32) + 16);
  if (v12)
  {
    objc_msgSend_roundedInsetsWithSize_(v12, v5, v6, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v8.n128_u64[0] = 0;
    v9.n128_u64[0] = 0;
    v10.n128_u64[0] = 0;
    v11.n128_u64[0] = 0;
  }

  (*(*(a1 + 40) + 16))(v8, v9, v10, v11);
  CGImageRelease(*(a1 + 64));
}

CGColorRef sub_241C816F0()
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = xmmword_241C86D70;
  if (qword_2810D51C0 != -1)
  {
    sub_241C85BC4();
  }

  qword_27EC698D8 = CGColorCreate(qword_2810D51B8, &v1);
  v1 = xmmword_241C86D80;
  if (qword_2810D51C0 != -1)
  {
    sub_241C85BD8();
  }

  result = CGColorCreate(qword_2810D51B8, &v1);
  qword_27EC698E0 = result;
  return result;
}

void sub_241C81A04(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v7 = a3;
  v12 = *(a1 + 32);
  if (v12[17] == 1)
  {
    objc_msgSend__roundedInsetsWithSize_(v12, v5, v6, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v8.n128_u64[0] = 0;
    v9.n128_u64[0] = 0;
    v10.n128_u64[0] = 0;
    v11.n128_u64[0] = 0;
  }

  (*(*(a1 + 40) + 16))(v8, v9, v10, v11);
  CGImageRelease(*(a1 + 64));
}

void sub_241C81DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_241C81E1C(void *a1)
{
  (*(a1[4] + 16))(*(*(a1[5] + 8) + 32), *(*(a1[5] + 8) + 40), *(*(a1[5] + 8) + 48), *(*(a1[5] + 8) + 56));
  v2 = *(*(a1[6] + 8) + 24);

  CGPathRelease(v2);
}

CGColorRef sub_241C82600()
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = xmmword_241C86D90;
  if (qword_2810D51C0 != -1)
  {
    sub_241C85BC4();
  }

  result = CGColorCreate(qword_2810D51B8, &v1);
  qword_27EC698F0 = result;
  return result;
}

double sub_241C82684(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_msgSend_bounds(v1, v2, v3);
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if ((objc_msgSend_masksToBounds(v1, v12, v13) & 1) == 0)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = objc_msgSend_sublayers(v1, v14, v15, 0);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v30, v34, 16);
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          sub_241C82684(v22);
          objc_msgSend_convertRect_toLayer_(v22, v23, v1);
          v38.origin.x = v24;
          v38.origin.y = v25;
          v38.size.width = v26;
          v38.size.height = v27;
          v36.origin.x = x;
          v36.origin.y = y;
          v36.size.width = width;
          v36.size.height = height;
          v37 = CGRectUnion(v36, v38);
          x = v37.origin.x;
          y = v37.origin.y;
          width = v37.size.width;
          height = v37.size.height;
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v28, &v30, v34, 16);
      }

      while (v19);
    }
  }

  return x;
}

double sub_241C833B8()
{
  result = 0.0;
  xmmword_27EC69940 = 0u;
  unk_27EC69950 = 0u;
  xmmword_27EC69920 = 0u;
  unk_27EC69930 = 0u;
  xmmword_27EC69900 = 0u;
  *algn_27EC69910 = 0u;
  qword_27EC69960 = @"BCUCoverEffectsIdentifierBookBinding";
  unk_27EC69968 = @"BCUCoverEffectsIdentifierBookBindingNight";
  qword_27EC69970 = @"BCUCoverEffectsIdentifierBookBindingWithShadow";
  unk_27EC69978 = @"BCUCoverEffectsIdentifierBookBindingNightWithShadow";
  qword_27EC69980 = @"BCUCoverEffectsIdentifierBookBindingShadowOnly";
  unk_27EC69988 = @"BCUCoverEffectsIdentifierBookBindingNightShadowOnly";
  qword_27EC69990 = @"BCUCoverEffectsIdentifierBookBindingRTL";
  unk_27EC69998 = @"BCUCoverEffectsIdentifierBookBindingRTLNight";
  qword_27EC699A0 = @"BCUCoverEffectsIdentifierBookBindingRTLWithShadow";
  unk_27EC699A8 = @"BCUCoverEffectsIdentifierBookBindingRTLNightWithShadow";
  qword_27EC699B0 = @"BCUCoverEffectsIdentifierBookBindingRTLShadowOnly";
  unk_27EC699B8 = @"BCUCoverEffectsIdentifierBookBindingRTLNightShadowOnly";
  qword_27EC699C0 = @"BCUCoverEffectsIdentifierAudiobook";
  unk_27EC699C8 = @"BCUCoverEffectsIdentifierAudiobookNight";
  qword_27EC699D0 = @"BCUCoverEffectsIdentifierAudiobookWithShadow";
  unk_27EC699D8 = @"BCUCoverEffectsIdentifierAudiobookNightWithShadow";
  qword_27EC699E0 = @"BCUCoverEffectsIdentifierAudiobookShadowOnly";
  unk_27EC699E8 = @"BCUCoverEffectsIdentifierAudiobookNightShadowOnly";
  qword_27EC699F0 = @"BCUCoverEffectsIdentifierAudiobook";
  unk_27EC699F8 = @"BCUCoverEffectsIdentifierAudiobookNight";
  qword_27EC69A00 = @"BCUCoverEffectsIdentifierAudiobookWithShadow";
  unk_27EC69A08 = @"BCUCoverEffectsIdentifierAudiobookNightWithShadow";
  qword_27EC69A10 = @"BCUCoverEffectsIdentifierAudiobookShadowOnly";
  unk_27EC69A18 = @"BCUCoverEffectsIdentifierAudiobookNightShadowOnly";
  qword_27EC69A20 = @"BCUCoverEffectsIdentifierPDF";
  unk_27EC69A28 = @"BCUCoverEffectsIdentifierPDFNight";
  qword_27EC69A30 = @"BCUCoverEffectsIdentifierPDFWithShadow";
  unk_27EC69A38 = @"BCUCoverEffectsIdentifierPDFNightWithShadow";
  qword_27EC69A40 = @"BCUCoverEffectsIdentifierPDFShadowOnly";
  unk_27EC69A48 = @"BCUCoverEffectsIdentifierPDFNightShadowOnly";
  qword_27EC69A50 = @"BCUCoverEffectsIdentifierPDF";
  unk_27EC69A58 = @"BCUCoverEffectsIdentifierPDFNight";
  qword_27EC69A60 = @"BCUCoverEffectsIdentifierPDFWithShadow";
  unk_27EC69A68 = @"BCUCoverEffectsIdentifierPDFNightWithShadow";
  qword_27EC69A70 = @"BCUCoverEffectsIdentifierPDFShadowOnly";
  unk_27EC69A78 = @"BCUCoverEffectsIdentifierPDFNightShadowOnly";
  return result;
}

CGColorSpaceRef sub_241C85400()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF400]);
  qword_2810D51B8 = result;
  return result;
}

void sub_241C856FC(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = *(a1 + 32);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_241C8581C;
  v24 = &unk_278D141D0;
  v25 = v14;
  v26 = v13;
  v15 = v13;
  v16 = a3;
  os_unfair_lock_lock_with_options();
  (sub_241C8581C)(&v21);
  os_unfair_lock_unlock(v14 + 2);
  v17 = *(a1 + 40);
  v20 = objc_msgSend_CGImage(v16, v18, v19, v21, v22);

  (*(v17 + 16))(v17, v20, a4, a5, a6, a7);
}

void sub_241C8581C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_filterOperations(*(a1 + 32), a2, a3);
  objc_msgSend_removeObject_(v5, v4, *(a1 + 40));
}

void sub_241C85870(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_filterOperations(*(a1 + 32), a2, a3);
  objc_msgSend_addObject_(v5, v4, *(a1 + 40));
}

void sub_241C85C50(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_241C7C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Single cover mode doesn't support %@", &v1, 0xCu);
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}