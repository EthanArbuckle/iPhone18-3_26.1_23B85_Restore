@interface IMTranscoder_Image
+ (BOOL)_canConvertPNGToJPEG:(CGImage *)a3;
+ (BOOL)_imageContainsTranslucentPixels:(CGImage *)a3;
+ (id)findOrientationFromProperties:(id)a3;
+ (unint64_t)findLargerDimensionFromImage:(CGImageSource *)a3 withProperties:(id)a4 toWidth:(id *)a5 toHeight:(id *)a6;
- (BOOL)_isWideGamutImage:(CGImageSource *)a3;
- (id)_checkAndSaveImageData:(id)a3 sourceURL:(id)a4 inFormat:(__CFString *)a5 withMaxByteSize:(unint64_t)a6 actualSize:(unint64_t *)a7 usedLengthIndex:(int *)a8 currentIndex:(int)a9;
- (id)_getScaleFactorArray:(id)a3 transferURL:(id)a4 outputURLs:(id)a5;
- (id)_newGeneratedImage:(CGImageSource *)a3 sourceWidth:(id)a4 sourceHeight:(id)a5 sourceLength:(unint64_t)a6 sourceProps:(id)a7 target:(int64_t)a8 hardwareEncoder:(id)a9 inFormat:(__CFString *)a10 fromFormat:(__CFString *)a11 withMaxLength:(unint64_t)a12 withMaxCount:(unint64_t)a13 withCompressionQuality:(double)a14 enforceMaxes:(BOOL)a15 subsampling:(int)a16 shouldSkipAuxillaryData:(BOOL)a17;
- (id)_wideGamutImage:(CGImageSource *)a3 sourceURL:(id)a4 inFormat:(__CFString *)a5 withMaxByteSize:(unint64_t)a6 maxDimension:(unint64_t)a7 actualSize:(unint64_t *)a8 telemetry:(id)a9;
- (id)_writeHEIFImage:(CGImageSource *)a3 sourceURL:(id)a4 inFormat:(__CFString *)a5 withMaxByteSize:(unint64_t)a6 maxDimension:(unint64_t)a7 downgradingMultiFrameImageToSingleFrame:(BOOL)a8 actualSize:(unint64_t *)a9 startingLengthIndex:(int)a10 usedLengthIndex:(int *)a11 telemetry:(id)a12;
- (id)_writeImage:(CGImageSource *)a3 sourceURL:(id)a4 target:(int64_t)a5 hardwareEncoder:(id)a6 inFormat:(__CFString *)a7 fromFormat:(__CFString *)a8 withMaxByteSize:(unint64_t)a9 maxDimension:(unint64_t)a10 actualSize:(unint64_t *)a11 startingLengthIndex:(int)a12 usedLengthIndex:(int *)a13 estimator:(id)a14 isLQMEnabled:(BOOL)a15 telemetry:(id)a16;
- (id)_writeImageData:(id)a3 inFormat:(__CFString *)a4 sourceURL:(id)a5;
- (id)_writeRepresentationsForImage:(CGImageSource *)a3 target:(int64_t)a4 sourceURL:(id)a5 sizes:(id)a6 maxDimension:(unint64_t)a7 srcUTI:(__CFString *)a8 inFormat:(__CFString *)a9 downgradingMultiFrameImageToSingleFrame:(BOOL)a10 estimator:(id)a11 isLQMEnabled:(BOOL)a12 telemetry:(id)a13;
- (id)copyFramePropertiesFrom:(CGImageSource *)a3 index:(unint64_t)a4 inFormat:(__CFString *)a5 outFormat:(__CFString *)a6;
- (id)copyImagePropertiesFrom:(CGImageSource *)a3 frameCount:(unint64_t)a4 withProps:(id)a5 inFormat:(__CFString *)a6 outFormat:(__CFString *)a7;
- (int64_t)shouldTranscodeTransfer:(id)a3 transcoderUserInfo:(id)a4 target:(int64_t)a5 utiType:(id)a6 allowUnfilteredUTIs:(id)a7 fileSizeLimit:(unint64_t)a8 commonCapabilities:(id)a9;
- (unint64_t)_determineFrameIndexForDowngradeFromMultiFrameToSingleFrameWithMaxDimension:(unint64_t)a3 fromImageSource:(CGImageSource *)a4;
- (unint64_t)_getImageWidth:(CGImageSource *)a3;
- (void)_imMetricsCollectorForLQMQualityEstimatorModeImageTypeHEIC:(unint64_t)a3 shouldUseQualityEstimatorModel:(BOOL)a4 inputImageFeatures:(id)a5 metricsDict:(id)a6;
- (void)_setWideGamutProperties:(id)a3 scaledImage:(CGImage *)a4;
- (void)copyAuxiliaryImagesFromImageSource:(CGImageSource *)a3 toDestination:(CGImageDestination *)a4 fromImageAtIndex:(unint64_t)a5 scaleFactor:(double)a6;
- (void)transcodeFileTransfer:(id)a3 utiType:(id)a4 allowUnfilteredUTIs:(id)a5 target:(int64_t)a6 sizes:(id)a7 commonCapabilities:(id)a8 maxDimension:(unint64_t)a9 transcoderUserInfo:(id)a10 representations:(int64_t)a11 isLQMEnabled:(BOOL)a12 completionBlock:(id)a13;
@end

@implementation IMTranscoder_Image

- (BOOL)_isWideGamutImage:(CGImageSource *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    IsColorOptimizedForSharing = CGImageSourceIsColorOptimizedForSharing();
    v4 = IsColorOptimizedForSharing ^ 1;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"YES";
        if (IsColorOptimizedForSharing)
        {
          v6 = @"NO";
        }

        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_254811000, v5, OS_LOG_TYPE_INFO, "_isWideGamut %@ ", &v10, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_254811000, v7, OS_LOG_TYPE_INFO, "Transcoding _isWideGamut nil sourceRef", &v10, 2u);
      }
    }

    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int64_t)shouldTranscodeTransfer:(id)a3 transcoderUserInfo:(id)a4 target:(int64_t)a5 utiType:(id)a6 allowUnfilteredUTIs:(id)a7 fileSizeLimit:(unint64_t)a8 commonCapabilities:(id)a9
{
  v160[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v23 = a9;
  if (!v15)
  {
    v29 = 0;
    goto LABEL_90;
  }

  if (!objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v19, v16, *MEMORY[0x277D19E80], v20, v21, v22))
  {
    if (objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v24, v16, *MEMORY[0x277D19E78], v25, v26, v27))
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v34, OS_LOG_TYPE_INFO, "This is a genmoji, skip transcoding", buf, 2u);
        }

LABEL_19:

        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v35 = objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v30, v16, @"isSticker", v31, v32, v33);
    if (a5 != 1 && v35)
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v34, OS_LOG_TYPE_INFO, "This is a sticker, skip transcoding", buf, 2u);
        }

        goto LABEL_19;
      }

LABEL_20:
      v29 = 1;
      goto LABEL_90;
    }

    v40 = objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v36, v16, @"preserveHEIF", v37, v38, v39);
    if (a5)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40;
    }

    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v156 = v15;
        _os_log_impl(&dword_254811000, v45, OS_LOG_TYPE_INFO, "Creating CGImageSource from url: %@", buf, 0xCu);
      }
    }

    if (v17)
    {
      v159 = *MEMORY[0x277CD3668];
      v160[0] = v17;
      v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v160, &v159, 1, v43, v44);
    }

    else
    {
      v46 = 0;
    }

    v151 = v46;
    isrc = CGImageSourceCreateWithURL(v15, v46);
    if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = @"good";
        if (!isrc)
        {
          v48 = @"NULL";
        }

        *buf = 138412290;
        v156 = v48;
        _os_log_impl(&dword_254811000, v47, OS_LOG_TYPE_INFO, "Source ref is %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v156 = v15;
        _os_log_impl(&dword_254811000, v49, OS_LOG_TYPE_INFO, "Checking uti from source ref at url: %@", buf, 0xCu);
      }
    }

    Type = CGImageSourceGetType(isrc);
    if (objc_msgSend__isHEIFImageFormat_(self, v51, Type, v52, v53, v54, v55))
    {
      if ((v41 & 1) == 0)
      {
        if (isrc)
        {
          CFRelease(isrc);
        }

        if (!IMOSLoggingEnabled())
        {
          goto LABEL_87;
        }

        v72 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v72, OS_LOG_TYPE_INFO, "Needs transcode, the image was HEIF but preserveHEIF was NO", buf, 2u);
        }

        goto LABEL_86;
      }

      if (IMImageSourceHasStereoPair())
      {
        if (isrc)
        {
          CFRelease(isrc);
        }

        if (IMOSLoggingEnabled())
        {
          v62 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v62, OS_LOG_TYPE_INFO, "Image is HEIF standard-compliant, recipients prefer it, and it has a stereo pair. Not transcoding", buf, 2u);
          }
        }

        v29 = 1;
        goto LABEL_88;
      }

      if (IMOSLoggingEnabled())
      {
        v71 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v71, OS_LOG_TYPE_INFO, "Image is HEIF standard-compliant. Proceeding with other checks", buf, 2u);
        }

LABEL_66:
      }
    }

    else
    {
      if (v41)
      {
        v63 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v56, v57, v58, v59, v60, v61);
        isHighQualityPhotosEnabled = objc_msgSend_isHighQualityPhotosEnabled(v63, v64, v65, v66, v67, v68, v69);

        if ((isHighQualityPhotosEnabled & 1) == 0)
        {
          if (isrc)
          {
            CFRelease(isrc);
          }

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_87;
          }

          v72 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v156 = v17;
            _os_log_impl(&dword_254811000, v72, OS_LOG_TYPE_INFO, "Needs transcode as all recipients support heif (source uti %@)", buf, 0xCu);
          }

          goto LABEL_86;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v71 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v71, OS_LOG_TYPE_INFO, "Image is not HEIF-standard compliant. Proceeding with other checks", buf, 2u);
        }

        goto LABEL_66;
      }
    }

    v73 = CGImageSourceGetType(isrc);
    if (objc_msgSend__isWebPImageFormat_(self, v74, v73, v75, v76, v77, v78))
    {
      if (isrc)
      {
        CFRelease(isrc);
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_87;
      }

      v72 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v72, OS_LOG_TYPE_INFO, "Needs transcode as WebP is not supported", buf, 2u);
      }

      goto LABEL_86;
    }

    if (objc_msgSend__isWideGamutImage_(self, v79, isrc, v80, v81, v82, v83))
    {
      if (isrc)
      {
        CFRelease(isrc);
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_87;
      }

      v72 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v72, OS_LOG_TYPE_INFO, "Needs transcode as image is wide-gamut", buf, 2u);
      }

      goto LABEL_86;
    }

    if (IMOSLoggingEnabled())
    {
      v87 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v87, OS_LOG_TYPE_INFO, "Not wide gamut image. Proceeding with other checks", buf, 2u);
      }
    }

    if (isrc)
    {
      CFRelease(isrc);
    }

    v88 = IMOSLoggingEnabled();
    if (v17)
    {
      if (v88)
      {
        v89 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v156 = v17;
          _os_log_impl(&dword_254811000, v89, OS_LOG_TYPE_INFO, "shouldTranscodeTransfer with uti: %@ ?", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v90 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v90, OS_LOG_TYPE_INFO, "Trying to discriminate based on type alone:", buf, 2u);
        }
      }

      v91 = objc_opt_class();
      v98 = objc_msgSend_supportedUTIs(v91, v92, v93, v94, v95, v96, v97);
      v104 = objc_msgSend_containsObject_(v98, v99, v17, v100, v101, v102, v103);

      if (v104)
      {
        if (objc_msgSend_isEqualToIgnoringCase_(v17, v105, @"________WBMP_________", v106, v107, v108, v109))
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_87;
          }

          v72 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v72, OS_LOG_TYPE_INFO, "This appears to be a WBMP, this requires a transcode", buf, 2u);
          }
        }

        else
        {
          v111 = IMOSLoggingEnabled();
          if (a5 != 1)
          {
            if (v111)
            {
              v118 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v118, OS_LOG_TYPE_INFO, "That wasn't enough, let's look at filesize too:", buf, 2u);
              }
            }

            v119 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v112, v113, v114, v115, v116, v117);
            v126 = objc_msgSend_path(v15, v120, v121, v122, v123, v124, v125);
            v154 = 0;
            v131 = objc_msgSend_attributesOfItemAtPath_error_(v119, v127, v126, &v154, v128, v129, v130);
            isrca = v154;
            v138 = objc_msgSend_fileSize(v131, v132, v133, v134, v135, v136, v137);

            if (IMOSLoggingEnabled())
            {
              v139 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v156 = v15;
                v157 = 2112;
                v158 = isrca;
                _os_log_impl(&dword_254811000, v139, OS_LOG_TYPE_INFO, "Checked size of file %@ with error %@", buf, 0x16u);
              }
            }

            v140 = v18;
            v146 = v140;
            if (v140)
            {
              LODWORD(v140) = objc_msgSend_containsObject_(v140, v141, v17, v142, v143, v144, v145);
            }

            if (isrca)
            {
              v147 = 0;
            }

            else
            {
              v147 = v140;
            }

            if (v138 < a8)
            {
              v148 = v147;
            }

            else
            {
              v148 = 0;
            }

            if (IMOSLoggingEnabled())
            {
              v149 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
              {
                v150 = @"NO";
                if (v148)
                {
                  v150 = @"YES";
                }

                *buf = 138412290;
                v156 = v150;
                _os_log_impl(&dword_254811000, v149, OS_LOG_TYPE_INFO, "Is the original sendable without transcode? %@", buf, 0xCu);
              }
            }

            if (v148)
            {
              v29 = 1;
            }

            else
            {
              v29 = 2;
            }

            goto LABEL_88;
          }

          v84 = v151;
          if (!v111)
          {
            v29 = 2;
            goto LABEL_89;
          }

          v72 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v72, OS_LOG_TYPE_INFO, "This is MMS, we should always transcode", buf, 2u);
          }
        }

LABEL_86:

LABEL_87:
        v29 = 2;
LABEL_88:
        v84 = v151;
LABEL_89:

        goto LABEL_90;
      }

      if (IMOSLoggingEnabled())
      {
        v110 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v110, OS_LOG_TYPE_INFO, "Uti is not contained in supportedUTIs", buf, 2u);
        }

LABEL_119:
      }
    }

    else if (v88)
    {
      v110 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v110, OS_LOG_TYPE_INFO, "No UTI supplied", buf, 2u);
      }

      goto LABEL_119;
    }

    v29 = 0;
    goto LABEL_88;
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254811000, v28, OS_LOG_TYPE_INFO, "Genmoji heic needs fallback to png", buf, 2u);
    }
  }

  v29 = 2;
LABEL_90:

  v85 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)copyImagePropertiesFrom:(CGImageSource *)a3 frameCount:(unint64_t)a4 withProps:(id)a5 inFormat:(__CFString *)a6 outFormat:(__CFString *)a7
{
  v99 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = *MEMORY[0x277CC2120];
  v85 = v10;
  if (UTTypeConformsTo(a6, *MEMORY[0x277CC2120]))
  {
    v12 = *MEMORY[0x277CD3438];
    v13 = *MEMORY[0x277CD2DC0];
    v14 = *MEMORY[0x277CD2DB0];
    v15 = *MEMORY[0x277CD2DC8];
    v16 = MEMORY[0x277CD2DB8];
LABEL_5:
    v17 = *v16;
    v18 = v17;
    goto LABEL_6;
  }

  if (UTTypeConformsTo(a6, *MEMORY[0x277D1AD78]))
  {
    v12 = *MEMORY[0x277CD3340];
    v13 = *MEMORY[0x277CD3350];
    v14 = *MEMORY[0x277CD3338];
    v15 = *MEMORY[0x277CD3358];
    v16 = MEMORY[0x277CD3348];
    goto LABEL_5;
  }

  if (!UTTypeConformsTo(a6, *MEMORY[0x277D1AD80]))
  {
    if (UTTypeConformsTo(a6, *MEMORY[0x277CC2088]))
    {
      v12 = *MEMORY[0x277CD31C8];
      v13 = *MEMORY[0x277CD31E0];
      v14 = *MEMORY[0x277CD31C0];
      v15 = *MEMORY[0x277CD31E8];
      v16 = MEMORY[0x277CD31D0];
    }

    else
    {
      if (!UTTypeConformsTo(a6, *MEMORY[0x277D1AD88]))
      {
        v27 = 0;
        v13 = 0;
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v12 = 0;
        goto LABEL_11;
      }

      v12 = *MEMORY[0x277CD3500];
      v13 = *MEMORY[0x277CD3510];
      v14 = *MEMORY[0x277CD34F8];
      v15 = *MEMORY[0x277CD3518];
      v16 = MEMORY[0x277CD3508];
    }

    goto LABEL_5;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v18 = 0;
  v17 = *MEMORY[0x277CD3360];
  v12 = *MEMORY[0x277CD3360];
LABEL_6:
  v87 = v15;
  v88 = v18;
  v86 = v14;
  v19 = v17;
  if (v12)
  {
    v26 = objc_msgSend_objectForKey_(v10, v20, v12, v22, v23, v24, v25);
    v27 = v26;
    if (v26)
    {
      if (v13)
      {
        v90 = objc_msgSend_objectForKey_(v26, v20, v13, v22, v23, v24, v25);
      }

      else
      {
        v90 = 0;
      }

      if (v14)
      {
        v29 = objc_msgSend_objectForKey_(v27, v20, v14, v22, v23, v24, v25);
      }

      else
      {
        v29 = 0;
      }

      if (v87)
      {
        v28 = objc_msgSend_objectForKey_(v27, v20, v87, v22, v23, v24, v25);
      }

      else
      {
        v28 = 0;
      }

      v21 = v88;
      if (v88)
      {
        v89 = objc_msgSend_objectForKey_(v27, v20, v88, v22, v23, v24, v25);
      }

      else
      {
        v88 = 0;
        v89 = 0;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_11:
  v89 = 0;
  v90 = 0;
  v28 = 0;
  v29 = 0;
LABEL_22:
  if (a4 < 2)
  {
    goto LABEL_40;
  }

  if (!v29 || !v28)
  {
    v30 = CGImageSourceCopyPropertiesAtIndex(a3, 0, 0);
    v36 = v30;
    if (v30)
    {
      v37 = objc_msgSend_objectForKey_(v30, v31, v12, v32, v33, v34, v35);
      v43 = v37;
      if (v37)
      {
        if (!v29)
        {
          v29 = objc_msgSend_objectForKey_(v37, v38, v86, v39, v40, v41, v42);
        }

        if (!v28)
        {
          v28 = objc_msgSend_objectForKey_(v43, v38, v87, v39, v40, v41, v42);
        }
      }
    }
  }

  if (!objc_msgSend_count(v27, v20, v21, v22, v23, v24, v25))
  {
LABEL_40:
    v44 = v13;
    v51 = 0;
    goto LABEL_84;
  }

  v44 = v13;
  if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v92 = v29;
      v93 = 2112;
      v94 = v28;
      v95 = 2112;
      v96 = v90;
      v97 = 2112;
      v98 = v89;
      _os_log_impl(&dword_254811000, v45, OS_LOG_TYPE_INFO, "Found delay %@ unclampedDelay %@ loopCount %@ FrameInfo %@. copying to destination", buf, 0x2Au);
    }
  }

  if (UTTypeConformsTo(a7, v11))
  {
    v46 = MEMORY[0x277CD2DB8];
    v47 = MEMORY[0x277CD2DC8];
    v48 = MEMORY[0x277CD2DB0];
    v49 = MEMORY[0x277CD2DC0];
    v50 = MEMORY[0x277CD3438];
  }

  else if (UTTypeConformsTo(a7, *MEMORY[0x277D1AD78]))
  {
    v46 = MEMORY[0x277CD3348];
    v47 = MEMORY[0x277CD3358];
    v48 = MEMORY[0x277CD3338];
    v49 = MEMORY[0x277CD3350];
    v50 = MEMORY[0x277CD3340];
  }

  else if (UTTypeConformsTo(a7, *MEMORY[0x277CC2088]))
  {
    v46 = MEMORY[0x277CD31D0];
    v47 = MEMORY[0x277CD31E8];
    v48 = MEMORY[0x277CD31C0];
    v49 = MEMORY[0x277CD31E0];
    v50 = MEMORY[0x277CD31C8];
  }

  else
  {
    if (!UTTypeConformsTo(a7, *MEMORY[0x277D1AD88]))
    {
      isrca = 0;
      v59 = 0;
      v60 = 0;
      v68 = 0;
      Mutable = 0;
      v74 = objc_msgSend_count(0, v52, v53, v54, v55, v56, v57, 0);
      goto LABEL_80;
    }

    v46 = MEMORY[0x277CD3508];
    v47 = MEMORY[0x277CD3518];
    v48 = MEMORY[0x277CD34F8];
    v49 = MEMORY[0x277CD3510];
    v50 = MEMORY[0x277CD3500];
  }

  isrca = *v50;
  v58 = *v49;
  v59 = *v48;
  v60 = *v47;
  v61 = *v46;
  v68 = v61;
  v81 = v58;
  if (!v90 || !v58)
  {
    if (!v29 || !v59)
    {
      if (!v28 || !v60)
      {
        Mutable = 0;
        if (!v89 || !v61)
        {
          goto LABEL_79;
        }

LABEL_77:
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        goto LABEL_78;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  objc_msgSend_setObject_forKey_(Mutable, v70, v90, v58, v71, v72, v73);
  if (v29 && v59)
  {
    if (Mutable)
    {
LABEL_62:
      objc_msgSend_setObject_forKey_(Mutable, v62, v29, v59, v65, v66, v67, v58);
      goto LABEL_63;
    }

LABEL_61:
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    goto LABEL_62;
  }

LABEL_63:
  if (v28 && v60)
  {
    if (Mutable)
    {
LABEL_70:
      objc_msgSend_setObject_forKey_(Mutable, v62, v28, v60, v65, v66, v67, v81);
      goto LABEL_71;
    }

LABEL_69:
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    goto LABEL_70;
  }

LABEL_71:
  if (!v89 || !v68)
  {
    goto LABEL_79;
  }

  if (!Mutable)
  {
    goto LABEL_77;
  }

LABEL_78:
  objc_msgSend_setObject_forKey_(Mutable, v62, v89, v68, v65, v66, v67, v81);
LABEL_79:
  v74 = objc_msgSend_count(Mutable, v62, v63, v64, v65, v66, v67, v81);
LABEL_80:
  if (v74)
  {
    v51 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    objc_msgSend_setObject_forKey_(v51, v75, Mutable, isrca, v76, v77, v78);
  }

  else
  {
    v51 = 0;
  }

LABEL_84:
  v79 = *MEMORY[0x277D85DE8];
  return v51;
}

- (id)copyFramePropertiesFrom:(CGImageSource *)a3 index:(unint64_t)a4 inFormat:(__CFString *)a5 outFormat:(__CFString *)a6
{
  v92 = *MEMORY[0x277D85DE8];
  v9 = CGImageSourceCopyPropertiesAtIndex(a3, a4, 0);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v88 = 134218242;
      v89 = a4;
      v90 = 2112;
      v91 = v9;
      _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, "Got image properties for image at index %zu: %@", &v88, 0x16u);
    }
  }

  v11 = *MEMORY[0x277CC2120];
  v12 = UTTypeConformsTo(a5, *MEMORY[0x277CC2120]);
  v18 = MEMORY[0x277D1AD78];
  v19 = MEMORY[0x277D1AD88];
  if (v12)
  {
    v20 = objc_msgSend_objectForKey_(v9, v13, *MEMORY[0x277CD3438], v14, v15, v16, v17);
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v88 = 138412290;
        v89 = v20;
        _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, "Checking for PNG Properties: %@", &v88, 0xCu);
      }
    }

    v27 = MEMORY[0x277CD2DC8];
    v28 = MEMORY[0x277CD2DB0];
LABEL_29:
    v47 = objc_msgSend_objectForKey_(v20, v21, *v28, v22, v23, v24, v25);
    v53 = objc_msgSend_objectForKey_(v20, v48, *v27, v49, v50, v51, v52);
    goto LABEL_30;
  }

  if (UTTypeConformsTo(a5, *MEMORY[0x277D1AD78]))
  {
    v20 = objc_msgSend_objectForKey_(v9, v29, *MEMORY[0x277CD3340], v30, v31, v32, v33);
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v88 = 138412290;
        v89 = v20;
        _os_log_impl(&dword_254811000, v34, OS_LOG_TYPE_INFO, "Checking for HEICS Properties: %@", &v88, 0xCu);
      }
    }

    v27 = MEMORY[0x277CD3358];
    v28 = MEMORY[0x277CD3338];
    goto LABEL_29;
  }

  if (UTTypeConformsTo(a5, *MEMORY[0x277CC2088]))
  {
    v20 = objc_msgSend_objectForKey_(v9, v35, *MEMORY[0x277CD31C8], v36, v37, v38, v39);
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v88 = 138412290;
        v89 = v20;
        _os_log_impl(&dword_254811000, v40, OS_LOG_TYPE_INFO, "Checking for GIF Properties: %@", &v88, 0xCu);
      }
    }

    v27 = MEMORY[0x277CD31E8];
    v28 = MEMORY[0x277CD31C0];
    goto LABEL_29;
  }

  if (UTTypeConformsTo(a5, *v19))
  {
    v20 = objc_msgSend_objectForKey_(v9, v41, *MEMORY[0x277CD3500], v42, v43, v44, v45);
    if (IMOSLoggingEnabled())
    {
      v46 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v88 = 138412290;
        v89 = v20;
        _os_log_impl(&dword_254811000, v46, OS_LOG_TYPE_INFO, "Checking for WebP Properties: %@", &v88, 0xCu);
      }
    }

    v27 = MEMORY[0x277CD3518];
    v28 = MEMORY[0x277CD34F8];
    goto LABEL_29;
  }

  v53 = 0;
  v47 = 0;
  v20 = 0;
LABEL_30:
  if (UTTypeConformsTo(a6, v11))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v55 = v47;
    if (v55)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2DB0], v55);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2548310E0();
    }

    v57 = v53;
    if (v57)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2DC8], v57);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254831168();
    }

    if (objc_msgSend_count(Mutable, v58, v59, v60, v61, v62, v63))
    {
      v56 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v64 = Mutable;
      if (v64)
      {
        CFDictionarySetValue(v56, *MEMORY[0x277CD3438], v64);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2548311F0();
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v65 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          LOWORD(v88) = 0;
          _os_log_impl(&dword_254811000, v65, OS_LOG_TYPE_INFO, "No png property dictionary to add", &v88, 2u);
        }
      }

      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  if (UTTypeConformsTo(a6, *v18))
  {
    v66 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v67 = v47;
    if (v67)
    {
      CFDictionarySetValue(v66, *MEMORY[0x277CD3338], v67);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254831278();
    }

    v68 = v53;
    if (v68)
    {
      CFDictionarySetValue(v66, *MEMORY[0x277CD3358], v68);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254831300();
    }

    if (objc_msgSend_count(v66, v69, v70, v71, v72, v73, v74))
    {
      if (!v56)
      {
        v56 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v75 = v66;
      if (v75)
      {
        CFDictionarySetValue(v56, *MEMORY[0x277CD3340], v75);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_254831388();
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_73:

        goto LABEL_74;
      }

      v75 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        LOWORD(v88) = 0;
        _os_log_impl(&dword_254811000, v75, OS_LOG_TYPE_INFO, "No HEICS property dictionary to add", &v88, 2u);
      }
    }

    goto LABEL_73;
  }

LABEL_74:
  if (UTTypeConformsTo(a6, *v19))
  {
    v76 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v77 = v47;
    if (v77)
    {
      CFDictionarySetValue(v76, *MEMORY[0x277CD34F8], v77);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254831410();
    }

    v78 = v53;
    if (v78)
    {
      CFDictionarySetValue(v76, *MEMORY[0x277CD3518], v78);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254831498();
    }

    if (objc_msgSend_count(v76, v79, v80, v81, v82, v83, v84))
    {
      if (!v56)
      {
        v56 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v85 = v76;
      if (v85)
      {
        CFDictionarySetValue(v56, *MEMORY[0x277CD3500], v85);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_254831520();
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_95:

        goto LABEL_96;
      }

      v85 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        LOWORD(v88) = 0;
        _os_log_impl(&dword_254811000, v85, OS_LOG_TYPE_INFO, "No WebP property dictionary to add", &v88, 2u);
      }
    }

    goto LABEL_95;
  }

LABEL_96:

  v86 = *MEMORY[0x277D85DE8];
  return v56;
}

+ (id)findOrientationFromProperties:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CD3410];
  v15 = objc_msgSend_objectForKey_(v3, v5, *MEMORY[0x277CD3410], v6, v7, v8, v9);
  if (v15)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_10;
    }

    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v15;
      _os_log_impl(&dword_254811000, v16, OS_LOG_TYPE_INFO, "Orientation data found in default location: %@", &v25, 0xCu);
    }
  }

  else
  {
    v17 = objc_msgSend_objectForKey_(v3, v10, *MEMORY[0x277CD3490], v11, v12, v13, v14);
    v15 = objc_msgSend_objectForKey_(v17, v18, v4, v19, v20, v21, v22);

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_10;
    }

    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v15;
      _os_log_impl(&dword_254811000, v16, OS_LOG_TYPE_INFO, "Orientation data NOT found in default location, checked TIFF location: %@", &v25, 0xCu);
    }
  }

LABEL_10:
  v23 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (unint64_t)findLargerDimensionFromImage:(CGImageSource *)a3 withProperties:(id)a4 toWidth:(id *)a5 toHeight:(id *)a6
{
  v9 = a4;
  v15 = v9;
  if (!v9)
  {
    if (IMOSLoggingEnabled())
    {
      v59 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        *v62 = 0;
        _os_log_impl(&dword_254811000, v59, OS_LOG_TYPE_INFO, "Couldn't find props for image to find source height and width", v62, 2u);
      }
    }

    v17 = 0;
    v31 = 0;
    goto LABEL_30;
  }

  v16 = *MEMORY[0x277CD3450];
  v17 = objc_msgSend_objectForKey_(v9, v10, *MEMORY[0x277CD3450], v11, v12, v13, v14);
  v18 = *MEMORY[0x277CD3448];
  v24 = objc_msgSend_objectForKey_(v15, v19, *MEMORY[0x277CD3448], v20, v21, v22, v23);
  v31 = v24;
  if (v17)
  {
    v32 = v24 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32 && CGImageSourceGetCount(a3))
  {
    v33 = CGImageSourceCopyPropertiesAtIndex(a3, 0, 0);
    v39 = v33;
    if (v33)
    {
      v40 = objc_msgSend_objectForKey_(v33, v34, v16, v35, v36, v37, v38);

      v46 = objc_msgSend_objectForKey_(v39, v41, v18, v42, v43, v44, v45);

      v31 = v46;
      v17 = v40;
    }
  }

  if (a5 && v17)
  {
    v47 = v17;
    *a5 = v17;
  }

  if (a6 && v31)
  {
    v48 = v31;
    *a6 = v31;
  }

  if (v17)
  {
    v49 = v31 == 0;
  }

  else
  {
    v49 = 1;
  }

  if (v49)
  {
LABEL_30:
    v51 = 0;
    v58 = objc_msgSend_unsignedIntegerValue(0, v25, v26, v27, v28, v29, v30);
    goto LABEL_31;
  }

  if (objc_msgSend_compare_(v17, v25, v31, v27, v28, v29, v30) >= 0)
  {
    v50 = v17;
  }

  else
  {
    v50 = v31;
  }

  v51 = v50;
  v58 = objc_msgSend_unsignedIntegerValue(v51, v52, v53, v54, v55, v56, v57);
LABEL_31:
  v60 = v58;

  return v60;
}

- (id)_newGeneratedImage:(CGImageSource *)a3 sourceWidth:(id)a4 sourceHeight:(id)a5 sourceLength:(unint64_t)a6 sourceProps:(id)a7 target:(int64_t)a8 hardwareEncoder:(id)a9 inFormat:(__CFString *)a10 fromFormat:(__CFString *)a11 withMaxLength:(unint64_t)a12 withMaxCount:(unint64_t)a13 withCompressionQuality:(double)a14 enforceMaxes:(BOOL)a15 subsampling:(int)a16 shouldSkipAuxillaryData:(BOOL)a17
{
  v263 = *MEMORY[0x277D85DE8];
  v251 = a4;
  v250 = a5;
  v252 = a7;
  v22 = a9;
  v23 = v22;
  if (a3)
  {
    v248 = v22;
    if (!a10)
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v27, OS_LOG_TYPE_INFO, "Cannot generate image because format is NULL", buf, 2u);
        }
      }

      v26 = 0;
      goto LABEL_31;
    }

    v24 = CGImageSourceGetCount(a3);
    if (v24)
    {
      v247 = CGImageSourceCopyPropertiesAtIndex(a3, 0, 0);
    }

    else
    {
      v247 = 0;
    }

    if (!v251 || !v250)
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v29, OS_LOG_TYPE_INFO, "No source width and height", buf, 2u);
        }
      }

      goto LABEL_29;
    }

    if (a12 > a6 && a15 && v24 < a13)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 134218752;
          *v257 = a12;
          *&v257[8] = 2048;
          v258 = a13;
          v259 = 2048;
          v260 = a6;
          v261 = 2048;
          v262 = v24;
          _os_log_impl(&dword_254811000, v28, OS_LOG_TYPE_INFO, "Not considering resizing to %lu or reducing to %zd images, it's larger than the current image dimension (%zd) and the current image count (%zd)", buf, 0x2Au);
        }
      }

LABEL_29:
      v26 = 0;
LABEL_30:

LABEL_31:
      v23 = v248;
      goto LABEL_32;
    }

    if (v24 >= a13)
    {
      v32 = a13;
    }

    else
    {
      v32 = v24;
    }

    count = v32;
    if (a12 >= a6)
    {
      v33 = a6;
    }

    else
    {
      v33 = a12;
    }

    v246 = v33;
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v257 = count;
        _os_log_impl(&dword_254811000, v34, OS_LOG_TYPE_INFO, "    Image count = %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v257 = v24;
        _os_log_impl(&dword_254811000, v35, OS_LOG_TYPE_INFO, " Original count = %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v257 = a13;
        _os_log_impl(&dword_254811000, v36, OS_LOG_TYPE_INFO, "      Max count = %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v257 = v246;
        _os_log_impl(&dword_254811000, v37, OS_LOG_TYPE_INFO, "         Length = %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v257 = a12;
        _os_log_impl(&dword_254811000, v38, OS_LOG_TYPE_INFO, "     Max length = %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v257 = a6;
        _os_log_impl(&dword_254811000, v39, OS_LOG_TYPE_INFO, "Original Length = %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *v257 = a16;
        _os_log_impl(&dword_254811000, v40, OS_LOG_TYPE_INFO, "    subsampling = %d", buf, 8u);
      }
    }

    v46 = v246 / a6;
    if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v257 = v46;
        _os_log_impl(&dword_254811000, v47, OS_LOG_TYPE_INFO, "   scale factor = %f", buf, 0xCu);
      }
    }

    isWideGamutImage = objc_msgSend__isWideGamutImage_(self, v41, a3, v42, v43, v44, v45);
    Type = CGImageSourceGetType(a3);
    if ((v248 == 0) | (isWideGamutImage | objc_msgSend__isHEIFImageFormat_(self, v50, Type, v51, v52, v53, v54)) & 1)
    {
      if (IMOSLoggingEnabled())
      {
        v61 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v62 = @"NO";
          if (isWideGamutImage)
          {
            v62 = @"YES";
          }

          *buf = 138412546;
          *v257 = v248;
          *&v257[8] = 2112;
          v258 = v62;
          _os_log_impl(&dword_254811000, v61, OS_LOG_TYPE_INFO, "Not using hardware encoding. encoder %@  isWideGamut %@", buf, 0x16u);
        }
      }
    }

    else
    {
      objc_msgSend_setTargetJPEGCompressionValue_(v248, v55, v56, v57, v58, v59, v60, a14);
      v68 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v63, v246, v64, v65, v66, v67);
      v255 = 0;
      v73 = objc_msgSend_scaleImageToFitLargestDimension_outputData_(v248, v69, v68, &v255, v70, v71, v72);
      v26 = v255;

      v74 = IMOSLoggingEnabled();
      if (v73)
      {
        if (v74)
        {
          v75 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v75, OS_LOG_TYPE_INFO, "Successfully used hardware encoding", buf, 2u);
          }
        }

        goto LABEL_30;
      }

      if (v74)
      {
        v76 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v76, OS_LOG_TYPE_INFO, "Failed using hardware encoding", buf, 2u);
        }
      }
    }

    data = objc_alloc_init(MEMORY[0x277CBEB28]);
    idst = CGImageDestinationCreateWithData(data, a10, count, 0);
    if (idst)
    {
      if (v252)
      {
        v79 = objc_msgSend_copyImagePropertiesFrom_frameCount_withProps_inFormat_outFormat_(self, v77, a3, v24, v252, a11, a10);
        if (v79)
        {
          if (IMOSLoggingEnabled())
          {
            v80 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v257 = v79;
              _os_log_impl(&dword_254811000, v80, OS_LOG_TYPE_INFO, "Setting output props: %@", buf, 0xCu);
            }
          }

          CGImageDestinationSetProperties(idst, v79);
        }
      }

      if (count)
      {
        v81 = 0;
        v83 = a8 != 1 && v247 != 0;
        v240 = v83;
        v238 = *MEMORY[0x277CD3650];
        v244 = *MEMORY[0x277CD3568];
        v84 = *MEMORY[0x277CD3578];
        v242 = *MEMORY[0x277CD3578];
        v243 = *MEMORY[0x277CD3660];
        inConformsToUTI = *MEMORY[0x277CC20C8];
        v236 = *MEMORY[0x277D1AD80];
        v85 = a14;
        key = *MEMORY[0x277CD2D48];
        v234 = *MEMORY[0x277CD3410];
        v239 = *MEMORY[0x277CD2D60];
        *&v78 = 134218242;
        v233 = v78;
        do
        {
          v86 = objc_autoreleasePoolPush();
          v87 = objc_alloc(MEMORY[0x277CBEB38]);
          v93 = objc_msgSend_initWithCapacity_(v87, v88, 4, v89, v90, v91, v92);
          v99 = v93;
          if (a16 == -1)
          {
            objc_msgSend_setObject_forKey_(v93, v94, MEMORY[0x277CBEC38], v244, v96, v97, v98);
            v136 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v131, v246, v132, v133, v134, v135);
            objc_msgSend_setObject_forKey_(v99, v137, v136, v243, v138, v139, v140);

            v146 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v141, a8 == 1, v142, v143, v144, v145);
            objc_msgSend_setObject_forKey_(v99, v147, v146, v242, v148, v149, v150);

            ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a3, v81, v99);
            if (IMOSLoggingEnabled())
            {
              v152 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *v257 = ThumbnailAtIndex;
                _os_log_impl(&dword_254811000, v152, OS_LOG_TYPE_INFO, "Used thumbnail path %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v100 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v94, a16, v95, v96, v97, v98);
            objc_msgSend_setObject_forKey_(v99, v101, v100, v238, v102, v103, v104);

            objc_msgSend_setObject_forKey_(v99, v105, MEMORY[0x277CBEC38], v244, v106, v107, v108);
            v114 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v109, v246, v110, v111, v112, v113);
            objc_msgSend_setObject_forKey_(v99, v115, v114, v243, v116, v117, v118);

            v124 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v119, a8 == 1, v120, v121, v122, v123);
            objc_msgSend_setObject_forKey_(v99, v125, v124, v242, v126, v127, v128);

            if (IMOSLoggingEnabled())
            {
              v129 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
              {
                *buf = 67109376;
                *v257 = a16;
                *&v257[4] = 1024;
                *&v257[6] = v81;
                _os_log_impl(&dword_254811000, v129, OS_LOG_TYPE_INFO, "Using subsamping with: %d  (index: %d)", buf, 0xEu);
              }
            }

            if (count == 1)
            {
              ImageAtIndex = CGImageSourceCreateImageAtIndex(a3, v81, v99);
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v153 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
                {
                  *buf = v233;
                  *v257 = v81;
                  *&v257[8] = 2112;
                  v258 = a3;
                  _os_log_impl(&dword_254811000, v153, OS_LOG_TYPE_INFO, "Getting thumbnail at index %zu from %@", buf, 0x16u);
                }
              }

              ImageAtIndex = CGImageSourceCreateThumbnailAtIndex(a3, v81, v99);
            }

            v154 = ImageAtIndex;
            if (a8 != 1)
            {
              goto LABEL_133;
            }

            ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a3, v81, v99);
            v155 = IMOSLoggingEnabled();
            if (!ThumbnailAtIndex)
            {
              if (v155)
              {
                v157 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v157, OS_LOG_TYPE_INFO, "Failed to create a a rotated image for MMS", buf, 2u);
                }
              }

LABEL_133:
              ThumbnailAtIndex = v154;
              goto LABEL_134;
            }

            if (v155)
            {
              v156 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *v257 = ThumbnailAtIndex;
                _os_log_impl(&dword_254811000, v156, OS_LOG_TYPE_INFO, "Created a rotated image for MMS: %@", buf, 0xCu);
              }
            }

            if (v154)
            {
              CFRelease(v154);
            }
          }

LABEL_134:
          if (!UTTypeConformsTo(a10, inConformsToUTI) && !UTTypeConformsTo(a10, v236))
          {
            v205 = objc_msgSend_copyFramePropertiesFrom_index_inFormat_outFormat_(self, v158, a3, v81, a11, a10, v159);
            if (!v205)
            {
              goto LABEL_171;
            }

LABEL_168:
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
LABEL_169:
            objc_msgSend_addEntriesFromDictionary_(Mutable, v200, v205, v201, v202, v203, v204, v233);
            goto LABEL_170;
          }

          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *&v161 = v85;
          v168 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v162, v163, v164, v165, v166, v167, v161);
          if (v168)
          {
            CFDictionarySetValue(Mutable, key, v168);
          }

          else
          {
            v169 = MEMORY[0x277D86220];
            v170 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v257 = key;
              *&v257[8] = 2080;
              v258 = "properties";
              _os_log_error_impl(&dword_254811000, v169, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
            }
          }

          v171 = CGImageSourceCopyPropertiesAtIndex(a3, 0, 0);
          if (IMOSLoggingEnabled())
          {
            v172 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v257 = v171;
              _os_log_impl(&dword_254811000, v172, OS_LOG_TYPE_INFO, "Checking for properties: %@", buf, 0xCu);
            }
          }

          if (v171)
          {
            if (a8 == 1)
            {
              if (IMOSLoggingEnabled())
              {
                v179 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v179, OS_LOG_TYPE_INFO, " ...this is MMS, we don't want orientation appended, it's all pre-rotated", buf, 2u);
                }
              }

              if (objc_msgSend_count(v252, v173, v174, v175, v176, v177, v178, v233))
              {
                if (IMOSLoggingEnabled())
                {
                  v185 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v185, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_254811000, v185, OS_LOG_TYPE_INFO, " ... * Adding original properties to the set", buf, 2u);
                  }
                }

                objc_msgSend_addEntriesFromDictionary_(Mutable, v180, v252, v181, v182, v183, v184);
              }
            }

            else
            {
              v186 = objc_opt_class();
              v192 = objc_msgSend_findOrientationFromProperties_(v186, v187, v171, v188, v189, v190, v191);
              if (v192)
              {
                if (IMOSLoggingEnabled())
                {
                  v197 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v197, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    *v257 = v234;
                    *&v257[8] = 2112;
                    v258 = v192;
                    _os_log_impl(&dword_254811000, v197, OS_LOG_TYPE_INFO, "Setting the image orientation (key=%@) to (%@)", buf, 0x16u);
                  }
                }

                objc_msgSend_setValue_forKey_(Mutable, v193, v192, v234, v194, v195, v196, v233);
              }
            }
          }

          v205 = objc_msgSend_copyFramePropertiesFrom_index_inFormat_outFormat_(self, v198, a3, v81, a11, a10, v199);
          if (v205)
          {
            if (!Mutable)
            {
              goto LABEL_168;
            }

            goto LABEL_169;
          }

LABEL_170:
          if (!Mutable)
          {
LABEL_171:
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          }

          v206 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v200, 1, v201, v202, v203, v204, v233);
          if (v206)
          {
            CFDictionarySetValue(Mutable, v239, v206);
          }

          else
          {
            v207 = MEMORY[0x277D86220];
            v208 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v257 = v239;
              *&v257[8] = 2080;
              v258 = "properties";
              _os_log_error_impl(&dword_254811000, v207, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
            }
          }

          if (v240)
          {
            objc_msgSend_addEntriesFromDictionary_(Mutable, v209, v247, v210, v211, v212, v213);
          }

          if ((objc_msgSend__isHEIFImageFormat_(self, v209, a10, v210, v211, v212, v213) & 1) == 0)
          {
            objc_msgSend__setWideGamutProperties_scaledImage_(self, v214, Mutable, ThumbnailAtIndex, v215, v216, v217);
          }

          v218 = IMOSLoggingEnabled();
          if (ThumbnailAtIndex)
          {
            if (v218)
            {
              v219 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v219, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *v257 = v81;
                _os_log_impl(&dword_254811000, v219, OS_LOG_TYPE_INFO, "adding scaled image at index %lu", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v220 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v220, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *v257 = Mutable;
                _os_log_impl(&dword_254811000, v220, OS_LOG_TYPE_INFO, "  properties: %@", buf, 0xCu);
              }
            }

            CGImageDestinationAddImage(idst, ThumbnailAtIndex, Mutable);
            v221 = IMOSLoggingEnabled();
            if (a17)
            {
              if (v221)
              {
                v225 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v225, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v225, OS_LOG_TYPE_INFO, "Skipping Aux data addition for new quality estimator based transcoding for LQM", buf, 2u);
                }
              }
            }

            else
            {
              if (v221)
              {
                v227 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v227, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v227, OS_LOG_TYPE_INFO, "Adding Aux data", buf, 2u);
                }
              }

              objc_msgSend_copyAuxiliaryImagesFromImageSource_toDestination_fromImageAtIndex_scaleFactor_(self, v222, a3, idst, v81, v223, v224, v46);
            }

            CGImageRelease(ThumbnailAtIndex);
          }

          else if (v218)
          {
            v226 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v226, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              *v257 = v81;
              _os_log_impl(&dword_254811000, v226, OS_LOG_TYPE_INFO, "Failed adding scaled image at index (%zd)!", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v86);
          ++v81;
        }

        while (count != v81);
      }

      v228 = CGImageDestinationFinalize(idst);
      if (IMOSLoggingEnabled())
      {
        v229 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v229, OS_LOG_TYPE_INFO))
        {
          v230 = @"NO";
          if (v228)
          {
            v230 = @"YES";
          }

          *buf = 138412290;
          *v257 = v230;
          _os_log_impl(&dword_254811000, v229, OS_LOG_TYPE_INFO, "Success finalizing image: %@", buf, 0xCu);
        }
      }

      if (!v228)
      {

        data = 0;
      }

      CFRelease(idst);
      v231 = data;
      v26 = v231;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v232 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v232, OS_LOG_TYPE_INFO, "Cannot generate image because imageDestination is NULL", buf, 2u);
        }
      }

      v26 = 0;
      v231 = data;
    }

    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254811000, v25, OS_LOG_TYPE_INFO, "Cannot generate image because source is NULL", buf, 2u);
    }
  }

  v26 = 0;
LABEL_32:

  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)_setWideGamutProperties:(id)a3 scaledImage:(CGImage *)a4
{
  v5 = a3;
  if (a4)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
        _os_log_impl(&dword_254811000, v6, OS_LOG_TYPE_INFO, "Adding backward compatible color profile for non-heif-destination wide-gamut image", v23, 2u);
      }
    }

    Width = CGImageGetWidth(a4);
    Height = CGImageGetHeight(a4);
    if (Width <= Height)
    {
      objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v9, Height, v10, v11, v12, v13);
    }

    else
    {
      objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v9, Width, v10, v11, v12, v13);
    }
    v14 = ;
    objc_msgSend_setObject_forKey_(v5, v15, v14, *MEMORY[0x277CD2D40], v16, v17, v18);

    objc_msgSend_setObject_forKey_(v5, v19, MEMORY[0x277CBEC38], *MEMORY[0x277CD2D60], v20, v21, v22);
  }
}

- (id)_checkAndSaveImageData:(id)a3 sourceURL:(id)a4 inFormat:(__CFString *)a5 withMaxByteSize:(unint64_t)a6 actualSize:(unint64_t *)a7 usedLengthIndex:(int *)a8 currentIndex:(int)a9
{
  *&v36[5] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v23 = objc_msgSend_length(v15, v17, v18, v19, v20, v21, v22);
  v24 = IMOSLoggingEnabled();
  if (!v15 || !v23)
  {
    if (v24)
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&dword_254811000, v32, OS_LOG_TYPE_INFO, "No image generated for this iteration, we got no image data.", &v35, 2u);
      }
    }

    goto LABEL_25;
  }

  if (v24)
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v35 = 67109376;
      v36[0] = v23;
      LOWORD(v36[1]) = 1024;
      *(&v36[1] + 2) = a6;
      _os_log_impl(&dword_254811000, v25, OS_LOG_TYPE_INFO, "Successfully generated image! Comparing data length (%d) to maxByteSize (%d)", &v35, 0xEu);
    }
  }

  if (a7)
  {
    *a7 = v23;
  }

  if (v23 > a6)
  {
LABEL_25:
    v30 = 0;
    goto LABEL_26;
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_254811000, v29, OS_LOG_TYPE_INFO, "This image is a keeper, writing it out to url!", &v35, 2u);
    }
  }

  v30 = objc_msgSend__writeImageData_inFormat_sourceURL_(self, v26, v15, a5, v16, v27, v28);
  if (v30)
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v35 = 138412290;
        *v36 = v30;
        _os_log_impl(&dword_254811000, v31, OS_LOG_TYPE_INFO, "Saving %@ and breaking out of transcode loop", &v35, 0xCu);
      }
    }

    if (a8)
    {
      *a8 = a9;
    }
  }

LABEL_26:

  v33 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)copyAuxiliaryImagesFromImageSource:(CGImageSource *)a3 toDestination:(CGImageDestination *)a4 fromImageAtIndex:(unint64_t)a5 scaleFactor:(double)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_auxiliaryImagesToPreserveForDerivativesFromImageSource_imageIndex_(MEMORY[0x277D3B408], a2, a3, a5, a5, v6, v7);
  v18 = objc_msgSend_count(v11, v12, v13, v14, v15, v16, v17);
  if (v11)
  {
    v23 = v18 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = v18;
    v25 = objc_msgSend_transformAuxiliaryImages_scaleFactor_applyingOrientation_(MEMORY[0x277D3B408], v19, v11, 1, v20, v21, v22, a6);
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 134219266;
        v35 = v24;
        v36 = 2048;
        v37 = a5;
        v38 = 2048;
        v39 = a6;
        v40 = 1024;
        v41 = 1;
        v42 = 2112;
        v43 = v11;
        v44 = 2112;
        v45 = v25;
        _os_log_impl(&dword_254811000, v31, OS_LOG_TYPE_INFO, "Copying %zd aux images (index %zd scaleFactor %f orientation %d) from input %@, to output %@", buf, 0x3Au);
      }
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_25481C700;
    v33[3] = &unk_27978AB68;
    v33[4] = a4;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v25, v26, v33, v27, v28, v29, v30);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_writeImageData:(id)a3 inFormat:(__CFString *)a4 sourceURL:(id)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (!v7)
  {
    if (IMOSLoggingEnabled())
    {
      v65 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        LOWORD(v70) = 0;
        _os_log_impl(&dword_254811000, v65, OS_LOG_TYPE_INFO, "Cannot write out image because data is nil", &v70, 2u);
      }

      goto LABEL_23;
    }

LABEL_24:
    v58 = 0;
    goto LABEL_38;
  }

  if (!a4)
  {
    if (IMOSLoggingEnabled())
    {
      v65 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        LOWORD(v70) = 0;
        _os_log_impl(&dword_254811000, v65, OS_LOG_TYPE_INFO, "Cannot write out image because format is NULL", &v70, 2u);
      }

LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v9 = UTTypeCopyPreferredTagWithClass(a4, *MEMORY[0x277CC1F58]);
  v10 = IMOSLoggingEnabled();
  if (!v9)
  {
    if (v10)
    {
      v66 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        LOWORD(v70) = 0;
        _os_log_impl(&dword_254811000, v66, OS_LOG_TYPE_INFO, "Nil file extension, aborting writing of image", &v70, 2u);
      }
    }

    v58 = 0;
    goto LABEL_37;
  }

  if (v10)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v70 = 138412290;
      v71 = v9;
      _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "Using file extension: %@", &v70, 0xCu);
    }
  }

  v18 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v11, v12, v13, v14, v15, v16);
  v25 = objc_msgSend_lastPathComponent(v8, v19, v20, v21, v22, v23, v24);
  v32 = objc_msgSend_stringByDeletingPathExtension(v25, v26, v27, v28, v29, v30, v31);
  v38 = objc_msgSend_stringByAppendingPathExtension_(v32, v33, v9, v34, v35, v36, v37);
  v44 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v18, v39, v38, v40, v41, v42, v43);
  v51 = objc_msgSend_path(v44, v45, v46, v47, v48, v49, v50);

  if (IMOSLoggingEnabled())
  {
    v57 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v70 = 138412290;
      v71 = v51;
      _os_log_impl(&dword_254811000, v57, OS_LOG_TYPE_INFO, "creating destination with output path: %@", &v70, 0xCu);
    }
  }

  if (!v51)
  {
    v58 = 0;
LABEL_31:
    if (IMOSLoggingEnabled())
    {
      v67 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v70 = 138412290;
        v71 = v58;
        _os_log_impl(&dword_254811000, v67, OS_LOG_TYPE_INFO, "Writing to url %@ failed", &v70, 0xCu);
      }
    }

    v58 = 0;
    goto LABEL_36;
  }

  v58 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v52, v51, v53, v54, v55, v56);
  if (!v58)
  {
    goto LABEL_31;
  }

  v59 = objc_autoreleasePoolPush();
  v64 = objc_msgSend_writeToURL_atomically_(v7, v60, v58, 1, v61, v62, v63);
  objc_autoreleasePoolPop(v59);
  if ((v64 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_36:

LABEL_37:
LABEL_38:

  v68 = *MEMORY[0x277D85DE8];

  return v58;
}

- (id)_writeImage:(CGImageSource *)a3 sourceURL:(id)a4 target:(int64_t)a5 hardwareEncoder:(id)a6 inFormat:(__CFString *)a7 fromFormat:(__CFString *)a8 withMaxByteSize:(unint64_t)a9 maxDimension:(unint64_t)a10 actualSize:(unint64_t *)a11 startingLengthIndex:(int)a12 usedLengthIndex:(int *)a13 estimator:(id)a14 isLQMEnabled:(BOOL)a15 telemetry:(id)a16
{
  v263 = *MEMORY[0x277D85DE8];
  v249 = a4;
  v248 = a6;
  v253 = a14;
  v241 = a16;
  v251 = a3;
  if (!a3)
  {
    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v42, OS_LOG_TYPE_INFO, "Invalid image source given to writeImage!", buf, 2u);
      }

      goto LABEL_32;
    }

LABEL_33:
    v43 = 0;
    goto LABEL_152;
  }

  if (*&a7 == 0.0)
  {
    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v42, OS_LOG_TYPE_INFO, "Invalid destination format provided to writeImage", buf, 2u);
      }

LABEL_32:

      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v254 = a7;
  Count = CGImageSourceGetCount(a3);
  *&v246 = COERCE_DOUBLE(CGImageSourceCopyProperties(a3, 0));
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v258 = *&v246;
      _os_log_impl(&dword_254811000, v20, OS_LOG_TYPE_INFO, "Original image properties: %@", buf, 0xCu);
    }
  }

  v21 = objc_opt_class();
  v255 = 0;
  v256 = 0;
  LargerDimensionFromImage_withProperties_toWidth_toHeight = objc_msgSend_findLargerDimensionFromImage_withProperties_toWidth_toHeight_(v21, v22, a3, v246, &v256, &v255, v23);
  v244 = v256;
  v245 = v255;
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v258 = *&a7;
      v259 = 1024;
      *v260 = a9;
      *&v260[4] = 2048;
      *&v260[6] = a10;
      *&v260[14] = 2112;
      *&v260[16] = v244;
      v261 = 2112;
      v262 = v245;
      _os_log_impl(&dword_254811000, v24, OS_LOG_TYPE_INFO, "Beginning transcode loop for image format %@ with maxByteSize %d maxDimension %zd width %@ height %@", buf, 0x30u);
    }
  }

  if (a13)
  {
    *a13 = -1;
  }

  v25 = *MEMORY[0x277CC2088];
  if (!UTTypeConformsTo(a7, *MEMORY[0x277CC2088]) || !UTTypeConformsTo(a8, v25))
  {
    goto LABEL_47;
  }

  v38 = objc_msgSend_objectForKey_(v246, v26, *MEMORY[0x277CD31B8], v28, v29, v30, v31);
  if (v244)
  {
    v39 = v245 == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = v39;
  if (v39)
  {
    v41 = 1.79769313e308;
    v45 = 1.79769313e308;
    if (!v38)
    {
      goto LABEL_43;
    }
  }

  else
  {
    objc_msgSend_doubleValue(v244, v32, v33, v34, v35, v36, v37);
    v45 = v44;
    objc_msgSend_doubleValue(v245, v46, v47, v48, v49, v50, v51);
    v41 = v52;
    if (!v38)
    {
      goto LABEL_43;
    }
  }

  v53 = objc_msgSend_longValue(v38, v32, v33, v34, v35, v36, v37) / a9;
  if (v53 <= 2.0)
  {
    v54 = 1;
  }

  else
  {
    v54 = v40;
  }

  if ((v54 & 1) == 0)
  {
    v45 = v45 * 0.8;
    v41 = v41 * 0.8;
    if (IMOSLoggingEnabled())
    {
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v258 = v53;
        v259 = 2048;
        *v260 = v45;
        *&v260[8] = 2048;
        *&v260[10] = v41;
        _os_log_impl(&dword_254811000, v55, OS_LOG_TYPE_INFO, "Compressed input size is %.02f times larger than target output size, using initial scaled res of %.02f %.02f", buf, 0x20u);
      }
    }
  }

LABEL_43:
  v56 = sub_25481DAD4(v251, a9, v45, v41);
  if (objc_msgSend_length(v56, v57, v58, v59, v60, v61, v62) >= a9)
  {
  }

  else
  {
    v43 = objc_msgSend__writeImageData_inFormat_sourceURL_(self, v63, v56, a7, v249, v64, v65);

    if (v43)
    {
      goto LABEL_151;
    }
  }

LABEL_47:
  v66 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v26, v27, v28, v29, v30, v31);
  isLQMImageQualityEstimatorEnabled = objc_msgSend_isLQMImageQualityEstimatorEnabled(v66, v67, v68, v69, v70, v71, v72);

  if (isLQMImageQualityEstimatorEnabled)
  {
    v79 = 0;
    v240 = 0;
    v80 = -1;
    if (UTTypeConformsTo(a8, @"public.heic") && a15)
    {
      v240 = objc_msgSend_getInputImageFeatures_(IMTranscoderImageQualityEstimator, v74, v251, v75, v76, v77, v78);
      if (v240)
      {
        if (IMOSLoggingEnabled())
        {
          v81 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v81, OS_LOG_TYPE_INFO, "Use image quality estimator model for getting low quality image.", buf, 2u);
          }
        }

        v80 = 0;
        v79 = 1;
      }

      else
      {
        v240 = 0;
        v79 = 0;
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v82 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v82, OS_LOG_TYPE_INFO, "Legacy iMessage estimator to be used for getting low quality image.", buf, 2u);
      }
    }

    v240 = 0;
    v79 = 0;
    v80 = -1;
  }

  inConformsToUTI = *MEMORY[0x277CC2120];
  v238 = *MEMORY[0x277CC20C8];
  while (1)
  {
    context = objc_autoreleasePoolPush();
    v83 = LargerDimensionFromImage_withProperties_toWidth_toHeight;
    if (v80 < 0)
    {
      break;
    }

    v84 = dword_254832E48[v80];
    v83 = v84;
    v85 = !LargerDimensionFromImage_withProperties_toWidth_toHeight || LargerDimensionFromImage_withProperties_toWidth_toHeight >= v84;
    v86 = !v85;
    v87 = v83 <= a10 || a10 == 0;
    if (v87 && !v86)
    {
      break;
    }

LABEL_146:
    objc_autoreleasePoolPop(context);
    if (v80++ >= 25)
    {

      if (IMOSLoggingEnabled())
      {
        v233 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v233, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v233, OS_LOG_TYPE_INFO, "Warning! Did not find a valid size for this image given the filesize constraint!", buf, 2u);
        }
      }

      v43 = 0;
      goto LABEL_151;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v88 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v258 = *&v83;
      v259 = 1024;
      *v260 = v80;
      *&v260[4] = 1024;
      *&v260[6] = 26;
      _os_log_impl(&dword_254811000, v88, OS_LOG_TYPE_INFO, "Trying maxSize = %lu  (index: %d/%d)", buf, 0x18u);
    }
  }

  if (v80 > 2)
  {
    v89 = -1;
  }

  else
  {
    v89 = 2;
  }

  v247 = v89;
  if (CGImageSourceGetCount(v251) >= 2 && UTTypeConformsTo(a8, inConformsToUTI))
  {
    if (IMOSLoggingEnabled())
    {
      v90 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v258) = 8;
        _os_log_impl(&dword_254811000, v90, OS_LOG_TYPE_INFO, "Overrriding subsampling to %d for APNG", buf, 8u);
      }
    }

    v247 = 8;
  }

  if (UTTypeConformsTo(v254, v238))
  {
    if (UTTypeConformsTo(a8, v238))
    {
      v97 = 2;
    }

    else
    {
      v97 = 1;
    }
  }

  else
  {
    v97 = 1;
  }

  v98 = &dword_254832EB0;
  while (1)
  {
    v99 = *v98;
    objc_msgSend_overrideJPEGCompressionQuality(self, v91, v92, v93, v94, v95, v96);
    if (v106 == 0.0)
    {
      v108 = v99;
    }

    else
    {
      objc_msgSend_overrideJPEGCompressionQuality(self, v100, v101, v102, v103, v104, v105);
      v108 = v107;
    }

    v109 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v100, v101, v102, v103, v104, v105);
    v116 = objc_msgSend_isLQMImageQualityEstimatorEnabled(v109, v110, v111, v112, v113, v114, v115);

    if (v116)
    {
      break;
    }

    *&v143 = COERCE_DOUBLE(objc_msgSend_estimatedSizeForOutputUTI_maximumDimension_quality_(v253, v117, v254, v83, v119, v120, v121, v108));
    if (v143 <= a9)
    {
      LOBYTE(v128) = 0;
      goto LABEL_121;
    }

    if (IMOSLoggingEnabled())
    {
      shouldSkipAuxillaryData = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(shouldSkipAuxillaryData, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v258 = *&v143;
        v259 = 2048;
        *v260 = a9;
        _os_log_impl(&dword_254811000, shouldSkipAuxillaryData, OS_LOG_TYPE_INFO, "Estimated size %lu is larger than required size %lu, skipping", buf, 0x16u);
      }

      goto LABEL_132;
    }

LABEL_133:
    ++v98;
    if (!--v97)
    {
      goto LABEL_146;
    }
  }

  v122 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v117, v83, v118, v119, v120, v121);
  v128 = objc_msgSend_containsObject_(&unk_28669CC60, v123, v122, v124, v125, v126, v127);

  if (v79 & v128)
  {
    v133 = CACurrentMediaTime();
    objc_msgSend_predictQualityFactor_suggestedMaxLength_(IMTranscoderImageQualityEstimator, v134, v240, v83, v135, v136, v137);
    v108 = v138;
    v139 = CACurrentMediaTime();
    if (IMOSLoggingEnabled())
    {
      v140 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v258 = v139 - v133;
        _os_log_impl(&dword_254811000, v140, OS_LOG_TYPE_INFO, "Prediction Time taken by image quality estimator: %f", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v142 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v258 = v108;
        _os_log_impl(&dword_254811000, v142, OS_LOG_TYPE_INFO, "[v5.1]Estimated quality factor for image when LQM is enabled: %lf", buf, 0xCu);
      }
    }

    if (v108 < 0.45)
    {
      if (IMOSLoggingEnabled())
      {
        v191 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v191, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v258 = v108;
          _os_log_impl(&dword_254811000, v191, OS_LOG_TYPE_INFO, "Estimated quality factor is less than pivot : %lf, try for lower dimension.", buf, 0xCu);
        }
      }

      v192 = objc_msgSend_lastObject(&unk_28669CC60, v185, v186, v187, v188, v189, v190);
      v199 = v83 == objc_msgSend_integerValue(v192, v193, v194, v195, v196, v197, v198);

      if (v199)
      {
        v80 -= objc_msgSend_count(&unk_28669CC60, v91, v92, v93, v94, v95, v96);
        if (IMOSLoggingEnabled())
        {
          v200 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v258 = v108;
            _os_log_impl(&dword_254811000, v200, OS_LOG_TYPE_INFO, "Estimated quality factor is less than pivot : %lf for the lowest model supported dimension. Fallback to iMessage estimator.", buf, 0xCu);
          }
        }

        v79 = 0;
      }

      else
      {
        v79 = 1;
      }

      goto LABEL_133;
    }

    LOBYTE(v128) = 1;
  }

  else
  {
    *&v145 = COERCE_DOUBLE(objc_msgSend_estimatedSizeForOutputUTI_maximumDimension_quality_(v253, v129, v254, v83, v130, v131, v132, v108));
    if (v145 > a9)
    {
      if (IMOSLoggingEnabled())
      {
        v146 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v258 = *&v145;
          v259 = 2048;
          *v260 = a9;
          _os_log_impl(&dword_254811000, v146, OS_LOG_TYPE_INFO, "Estimated size %lu is larger than required size %lu, skipping", buf, 0x16u);
        }
      }

      goto LABEL_133;
    }
  }

LABEL_121:
  HIDWORD(v235) = v247;
  LOBYTE(v235) = v80 < 0x19;
  LOBYTE(v236) = v79 & v128 & 1;
  shouldSkipAuxillaryData = objc_msgSend__newGeneratedImage_sourceWidth_sourceHeight_sourceLength_sourceProps_target_hardwareEncoder_inFormat_fromFormat_withMaxLength_withMaxCount_withCompressionQuality_enforceMaxes_subsampling_shouldSkipAuxillaryData_(self, v141, v251, v244, v245, LargerDimensionFromImage_withProperties_toWidth_toHeight, v246, a5, v108, v248, v254, a8, v83, Count, v235, v236);
  LODWORD(v234) = v80;
  v43 = objc_msgSend__checkAndSaveImageData_sourceURL_inFormat_withMaxByteSize_actualSize_usedLengthIndex_currentIndex_(self, v147, shouldSkipAuxillaryData, v249, v254, a9, a11, a13, v234);
  v154 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v148, v149, v150, v151, v152, v153);
  v161 = objc_msgSend_isLQMImageQualityEstimatorEnabled(v154, v155, v156, v157, v158, v159, v160);

  if ((v161 & v79) == 1 && !v43)
  {
    v168 = objc_msgSend_lastObject(&unk_28669CC60, v162, v163, v164, v165, v166, v167);
    v175 = v83 == objc_msgSend_integerValue(v168, v169, v170, v171, v172, v173, v174);

    if (v175)
    {
      v80 -= objc_msgSend_count(&unk_28669CC60, v162, v176, v164, v165, v166, v167);
      if (IMOSLoggingEnabled())
      {
        v177 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
        {
          *&v184 = COERCE_DOUBLE(objc_msgSend_length(shouldSkipAuxillaryData, v178, v179, v180, v181, v182, v183));
          *buf = 134217984;
          v258 = *&v184;
          _os_log_impl(&dword_254811000, v177, OS_LOG_TYPE_INFO, "Transcoded Image size of %lu is greater than the LQM maxLimit using image quality estimator model. Fallback to iMessage legacy estimator.", buf, 0xCu);
        }
      }

      v79 = 0;
LABEL_132:

      goto LABEL_133;
    }

LABEL_130:
    if (shouldSkipAuxillaryData)
    {
      objc_msgSend_emitSignpostTranscodeStepForDestinationUTI_(v241, v162, v254, v164, v165, v166, v167);
    }

    goto LABEL_132;
  }

  if (!v43)
  {
    goto LABEL_130;
  }

  objc_msgSend_emitSignpostTranscodeFinalForDestinationUTI_(v241, v162, v254, v164, v165, v166, v167);

  v208 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v202, v203, v204, v205, v206, v207);
  v215 = objc_msgSend_isLQMImageQualityEstimatorEnabled(v208, v209, v210, v211, v212, v213, v214);

  if (v215 & a15)
  {
    v218 = objc_msgSend__imMetricsCollectorForLQMQualityEstimatorModel_suggestedMaxLength_shouldUseQualityEstimatorModel_inputImageFeatures_(self, v216, a8, v83, v79 & 1, v240, v217);
    v225 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v219, v220, v221, v222, v223, v224);
    objc_msgSend_trackEvent_withDictionary_(v225, v226, *MEMORY[0x277D1A168], v218, v227, v228, v229);
  }

  objc_autoreleasePoolPop(context);

LABEL_151:
LABEL_152:

  v230 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)_writeRepresentationsForImage:(CGImageSource *)a3 target:(int64_t)a4 sourceURL:(id)a5 sizes:(id)a6 maxDimension:(unint64_t)a7 srcUTI:(__CFString *)a8 inFormat:(__CFString *)a9 downgradingMultiFrameImageToSingleFrame:(BOOL)a10 estimator:(id)a11 isLQMEnabled:(BOOL)a12 telemetry:(id)a13
{
  v214 = *MEMORY[0x277D85DE8];
  v205 = a5;
  v16 = a6;
  v199 = a11;
  inUTI = a8;
  v201 = a13;
  v23 = 0;
  if (a8 && a9)
  {
    v24 = *MEMORY[0x277CC20C8];
    if (CFEqual(a9, *MEMORY[0x277CC20C8]))
    {
      v25 = UTTypeConformsTo(a8, v24);
      v23 = 0;
      if (a4 != 1 && v25)
      {
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, "Will use hardware JPEG encoding", buf, 2u);
          }
        }

        v23 = 1;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  v27 = objc_msgSend_array(MEMORY[0x277CBEB18], v17, v18, v19, v20, v21, v22);
  v34 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v28, v29, v30, v31, v32, v33);
  v41 = objc_msgSend_path(v205, v35, v36, v37, v38, v39, v40);
  v208 = 0;
  v46 = objc_msgSend_attributesOfItemAtPath_error_(v34, v42, v41, &v208, v43, v44, v45);
  v195 = v208;
  v202 = objc_msgSend_fileSize(v46, v47, v48, v49, v50, v51, v52);

  v207 = v202;
  v58 = objc_msgSend_objectAtIndexedSubscript_(v16, v53, 0, v54, v55, v56, v57);
  v65 = objc_msgSend_unsignedLongValue(v58, v59, v60, v61, v62, v63, v64);

  if (IMOSLoggingEnabled())
  {
    v71 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v210 = v202;
      v211 = 2112;
      *v212 = v195;
      *&v212[8] = 2112;
      v213 = v16;
      _os_log_impl(&dword_254811000, v71, OS_LOG_TYPE_INFO, "Generating the representations, originalSize %ld (err %@) sizes %@", buf, 0x20u);
    }
  }

  isWideGamutImage = objc_msgSend__isWideGamutImage_(self, v66, a3, v67, v68, v69, v70);
  v73 = 0;
  if (v195)
  {
    v74 = 0;
  }

  else
  {
    v74 = isWideGamutImage;
  }

  if (v74 == 1 && v202 < v65)
  {
    if (IMOSLoggingEnabled())
    {
      v76 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v210 = v202;
        v211 = 2048;
        *v212 = v65;
        _os_log_impl(&dword_254811000, v76, OS_LOG_TYPE_INFO, "Attempting copy+add props for size %lu (reason: the source is wide gamut and smaller than the limit %lu)", buf, 0x16u);
      }
    }

    v77 = objc_msgSend__wideGamutImage_sourceURL_inFormat_withMaxByteSize_maxDimension_actualSize_telemetry_(self, v75, a3, v205, a9, v65, a7, &v207, v201);
    v78 = IMOSLoggingEnabled();
    if (v77)
    {
      if (v78)
      {
        v79 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v210 = v77;
          _os_log_impl(&dword_254811000, v79, OS_LOG_TYPE_INFO, "Using original wide-gamut image with added properties answerImageURL: %@", buf, 0xCu);
        }
      }

      if (v27)
      {
        CFArrayAppendValue(v27, v77);
      }

      v73 = 1;
    }

    else
    {
      if (v78)
      {
        v80 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v210 = v207;
          v211 = 2048;
          *v212 = v65;
          _os_log_impl(&dword_254811000, v80, OS_LOG_TYPE_INFO, "Couldn't use copy of wide-gamut image with added properties (size %ld max %ld), transcoding", buf, 0x16u);
        }
      }

      v73 = 0;
      v202 = v207;
    }
  }

  v81 = v23 ^ 1;
  if (!v205)
  {
    v81 = 1;
  }

  if (v81)
  {
    v198 = 0;
  }

  else
  {
    v82 = objc_alloc(MEMORY[0x277CBEA90]);
    v86 = objc_msgSend_initWithContentsOfURL_options_error_(v82, v83, v205, 1, 0, v84, v85);
    if (objc_msgSend_length(v86, v87, v88, v89, v90, v91, v92))
    {
      v93 = [IMEmbeddedHardwareJPEGTranscoder alloc];
      v198 = objc_msgSend_initWithImageData_imageSource_(v93, v94, v86, a3, v95, v96, v97);
    }

    else
    {
      v198 = 0;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v104 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v210 = v16;
      v211 = 2048;
      *v212 = v202;
      _os_log_impl(&dword_254811000, v104, OS_LOG_TYPE_INFO, "Beginning to transcode images with size limits: %@ originalFileSize %lu", buf, 0x16u);
    }
  }

  if (v73 < objc_msgSend_count(v16, v98, v99, v100, v101, v102, v103))
  {
    v105 = 0;
    if (v195)
    {
      v106 = 1;
    }

    else
    {
      v106 = v202 == 0;
    }

    v107 = !v106;
    v196 = v107;
    while (1)
    {
      if (IMOSLoggingEnabled())
      {
        v113 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
        {
          v119 = objc_msgSend_objectAtIndexedSubscript_(v16, v114, v73, v115, v116, v117, v118);
          *buf = 134218242;
          v210 = v73;
          v211 = 2112;
          *v212 = v119;
          _os_log_impl(&dword_254811000, v113, OS_LOG_TYPE_INFO, "Trying to transcode to target size index %lu size limit %@", buf, 0x16u);
        }
      }

      if (v105 >= 0x1A)
      {
        if (IMOSLoggingEnabled())
        {
          v180 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v210) = v105;
            _os_log_impl(&dword_254811000, v180, OS_LOG_TYPE_INFO, "Transcoding: Aborting further transcoding attempts: current image resize index is %d.", buf, 8u);
          }
        }

        goto LABEL_151;
      }

      v120 = objc_msgSend_objectAtIndexedSubscript_(v16, v108, v73, v109, v110, v111, v112);
      v127 = objc_msgSend_unsignedLongValue(v120, v121, v122, v123, v124, v125, v126);

      if (!v73)
      {
        break;
      }

      v133 = objc_msgSend_objectAtIndexedSubscript_(v16, v128, v73 - 1, v129, v130, v131, v132);
      v140 = objc_msgSend_unsignedLongValue(v133, v134, v135, v136, v137, v138, v139) == v127;

      if (!v140)
      {
        v148 = objc_autoreleasePoolPush();
        if (v207 > v127)
        {
          if (IMOSLoggingEnabled())
          {
            v151 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              v210 = v127;
              v211 = 2048;
              *v212 = v207;
              _os_log_impl(&dword_254811000, v151, OS_LOG_TYPE_INFO, "Transcoding at size %tu (the previous size is %tu)", buf, 0x16u);
            }

            goto LABEL_122;
          }

LABEL_132:
          v206 = v105;
          LOBYTE(v194) = a12;
          LODWORD(v193) = v105;
          v170 = objc_msgSend__writeImage_sourceURL_target_hardwareEncoder_inFormat_fromFormat_withMaxByteSize_maxDimension_actualSize_startingLengthIndex_usedLengthIndex_estimator_isLQMEnabled_telemetry_(self, v150, a3, v205, a4, v198, a9, inUTI, v127, a7, &v207, v193, &v206, v199, v194, v201);
          if (IMOSLoggingEnabled())
          {
            v178 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v210 = v170;
              v211 = 1024;
              *v212 = v105;
              *&v212[4] = 1024;
              *&v212[6] = v206;
              _os_log_impl(&dword_254811000, v178, OS_LOG_TYPE_INFO, "Transcoding result URL: %@ (start/stop length index: %d => %d)", buf, 0x18u);
            }
          }

          v105 = v206 + 1;
LABEL_137:
          if (IMOSLoggingEnabled())
          {
            v179 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v210 = v27;
              v211 = 2112;
              *v212 = v170;
              _os_log_impl(&dword_254811000, v179, OS_LOG_TYPE_INFO, "answer: %@ answerImageURL: %@", buf, 0x16u);
            }
          }

          if (v27 && v170)
          {
            CFArrayAppendValue(v27, v170);
          }

          objc_autoreleasePoolPop(v148);
          goto LABEL_145;
        }

LABEL_123:
        v170 = 0;
LABEL_124:
        if (IMOSLoggingEnabled())
        {
          v177 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v210 = v127;
            _os_log_impl(&dword_254811000, v177, OS_LOG_TYPE_INFO, "Not transcoding an image for size: %tu", buf, 0xCu);
          }
        }

        goto LABEL_137;
      }

      if (IMOSLoggingEnabled())
      {
        v147 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v210 = v127;
          _os_log_impl(&dword_254811000, v147, OS_LOG_TYPE_INFO, "Aborting transcoding attempt: current size limit %tu is the same as the previous size.", buf, 0xCu);
        }
      }

LABEL_145:
      if (++v73 >= objc_msgSend_count(v16, v141, v142, v143, v144, v145, v146))
      {
        goto LABEL_151;
      }
    }

    v148 = objc_autoreleasePoolPush();
    if (v202 <= v127)
    {
      v149 = v196;
    }

    else
    {
      v149 = 0;
    }

    if (a4 == 1)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_132;
      }

      v151 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v210 = v127;
        _os_log_impl(&dword_254811000, v151, OS_LOG_TYPE_INFO, "Transcoding large size %tu (reason: the target is MMS).", buf, 0xCu);
      }

      goto LABEL_122;
    }

    Type = CGImageSourceGetType(a3);
    if (objc_msgSend__isHEIFImageFormat_(self, v153, Type, v154, v155, v156, v157) && (objc_msgSend__isHEIFImageFormat_(self, v158, a9, v159, v160, v161, v162) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v171 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v210 = v127;
          _os_log_impl(&dword_254811000, v171, OS_LOG_TYPE_INFO, "Transcoding to size %tu (reason: the source is HEIF).", buf, 0xCu);
        }
      }

      if (v202 * 2.5 <= v127)
      {
        v172 = v196;
      }

      else
      {
        v172 = 0;
      }

      v173 = IMOSLoggingEnabled();
      if (v172)
      {
        if (v173)
        {
          v174 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v174, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v174, OS_LOG_TYPE_INFO, "Transcoded size fits within the max limit so only writing URL for wide gamut properties", buf, 2u);
          }
        }

        *buf = v105;
        LODWORD(v192) = v105;
        v170 = objc_msgSend__writeHEIFImage_sourceURL_inFormat_withMaxByteSize_maxDimension_downgradingMultiFrameImageToSingleFrame_actualSize_startingLengthIndex_usedLengthIndex_telemetry_(self, v150, a3, v205, a9, v127, a7, a10, &v207, v192, buf, v201);
        v105 = *buf + 1;
        if (!v170)
        {
          goto LABEL_132;
        }

        goto LABEL_124;
      }

      if (!v173)
      {
        goto LABEL_132;
      }

      v175 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v175, OS_LOG_TYPE_INFO, "Original size is larger than max limit so needs transcoding", buf, 2u);
      }
    }

    else
    {
      if (!objc_msgSend__isHEIFImageFormat_(self, v158, a9, v159, v160, v161, v162) || (v163 = CGImageSourceGetType(a3), (objc_msgSend__isHEIFImageFormat_(self, v164, v163, v165, v166, v167, v168) & 1) != 0))
      {
        if (UTTypeEqual(a9, inUTI))
        {
          if (v149)
          {
            if (IMOSLoggingEnabled())
            {
              v169 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
              {
                *buf = 134218240;
                v210 = v127;
                v211 = 2048;
                *v212 = v202;
                _os_log_impl(&dword_254811000, v169, OS_LOG_TYPE_INFO, "Given size limit %lu is already greater than the original file size %lu.", buf, 0x16u);
              }
            }

            v170 = v205;
            goto LABEL_124;
          }

          v176 = v196;
          if (v202 <= v127)
          {
            v176 = 0;
          }

          if (v176 != 1)
          {
            goto LABEL_123;
          }

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_132;
          }

          v151 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v210 = v202;
            v211 = 2048;
            *v212 = v127;
            _os_log_impl(&dword_254811000, v151, OS_LOG_TYPE_INFO, "Original file size limit %lu is bigger than target size %lu", buf, 0x16u);
          }
        }

        else
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_132;
          }

          v151 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v210 = a9;
            v211 = 2112;
            *v212 = inUTI;
            _os_log_impl(&dword_254811000, v151, OS_LOG_TYPE_INFO, "Destination (%@) and source (%@) UTIs do not match, so transcoding", buf, 0x16u);
          }
        }

LABEL_122:

        goto LABEL_132;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_132;
      }

      v175 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v175, OS_LOG_TYPE_INFO, "Original is not HEIF, we want to send HEIF, so transcoding", buf, 2u);
      }
    }

    goto LABEL_132;
  }

LABEL_151:
  if (IMOSLoggingEnabled())
  {
    v181 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
    {
      v188 = objc_msgSend_count(v27, v182, v183, v184, v185, v186, v187);
      *buf = 134218242;
      v210 = v188;
      v211 = 2112;
      *v212 = v27;
      _os_log_impl(&dword_254811000, v181, OS_LOG_TYPE_INFO, "Finished transcoding images with %tu results: %@", buf, 0x16u);
    }
  }

  v189 = v27;

  v190 = *MEMORY[0x277D85DE8];

  return v189;
}

- (id)_wideGamutImage:(CGImageSource *)a3 sourceURL:(id)a4 inFormat:(__CFString *)a5 withMaxByteSize:(unint64_t)a6 maxDimension:(unint64_t)a7 actualSize:(unint64_t *)a8 telemetry:(id)a9
{
  v71 = *MEMORY[0x277D85DE8];
  v66 = a4;
  v67 = a9;
  Count = CGImageSourceGetCount(a3);
  context = objc_autoreleasePoolPush();
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v70 = Count;
      _os_log_impl(&dword_254811000, v13, OS_LOG_TYPE_INFO, "Trying to copy wide gamut properties with original image count = %zu", buf, 0xCu);
    }
  }

  data = objc_alloc_init(MEMORY[0x277CBEB28]);
  v14 = CGImageDestinationCreateWithData(data, a5, Count, 0);
  v15 = IMOSLoggingEnabled();
  if (!v14)
  {
    if (v15)
    {
      v46 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v46, OS_LOG_TYPE_INFO, "Cannot set gamut properties because imageDestination is NULL", buf, 2u);
      }
    }

    goto LABEL_48;
  }

  if (v15)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v70 = Count;
      _os_log_impl(&dword_254811000, v16, OS_LOG_TYPE_INFO, " ==> Image Count = %zu", buf, 0xCu);
    }
  }

  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = CGImageSourceCopyPropertiesAtIndex(a3, i, 0);
      v26 = objc_msgSend_mutableCopy(v19, v20, v21, v22, v23, v24, v25);

      ImageAtIndex = CGImageSourceCreateImageAtIndex(a3, i, 0);
      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = @"YES";
          if (!ImageAtIndex)
          {
            v34 = @"NO";
          }

          *buf = 138412290;
          v70 = v34;
          _os_log_impl(&dword_254811000, v33, OS_LOG_TYPE_INFO, "adding image properties for wide gamut properties only. Created scaled image: %@", buf, 0xCu);
        }
      }

      if ((objc_msgSend__isHEIFImageFormat_(self, v28, a5, v29, v30, v31, v32) & 1) == 0)
      {
        objc_msgSend__setWideGamutProperties_scaledImage_(self, v35, v26, ImageAtIndex, v36, v37, v38);
      }

      v39 = IMOSLoggingEnabled();
      if (ImageAtIndex)
      {
        if (v39)
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v70 = i;
            _os_log_impl(&dword_254811000, v40, OS_LOG_TYPE_INFO, "adding scaled image at index %lu", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v70 = v26;
            _os_log_impl(&dword_254811000, v41, OS_LOG_TYPE_INFO, "  properties: %@", buf, 0xCu);
          }
        }

        CGImageDestinationAddImage(v14, ImageAtIndex, v26);
        objc_msgSend_copyAuxiliaryImagesFromImageSource_toDestination_fromImageAtIndex_scaleFactor_(self, v42, a3, v14, i, v43, v44, 1.0);
        CGImageRelease(ImageAtIndex);
      }

      else if (v39)
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v70 = i;
          _os_log_impl(&dword_254811000, v45, OS_LOG_TYPE_INFO, "Failed adding scaled image at index (%zd)!", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  if (!CGImageDestinationFinalize(v14))
  {
    CFRelease(v14);
LABEL_48:

    objc_autoreleasePoolPop(context);
    v53 = 0;
    goto LABEL_49;
  }

  v53 = objc_msgSend__checkAndSaveImageData_sourceURL_inFormat_withMaxByteSize_actualSize_usedLengthIndex_currentIndex_(self, v47, data, v66, a5, a6, a8, 0, -1);
  if (v53)
  {
    if (IMOSLoggingEnabled())
    {
      v59 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v70 = v53;
        _os_log_impl(&dword_254811000, v59, OS_LOG_TYPE_INFO, "Success copying wide gamut image w/ props to url: %@", buf, 0xCu);
      }
    }

    objc_msgSend_emitSignpostTranscodeFinalForDestinationUTI_(v67, v54, a5, v55, v56, v57, v58);
    CFRelease(v14);

    objc_autoreleasePoolPop(context);
  }

  else
  {
    objc_msgSend_emitSignpostTranscodeStepForDestinationUTI_(v67, v48, a5, v49, v50, v51, v52);
    CFRelease(v14);

    objc_autoreleasePoolPop(context);
    if (IMOSLoggingEnabled())
    {
      v62 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v62, OS_LOG_TYPE_INFO, "Failed to copy an image url for a wide gamut transformation", buf, 2u);
      }
    }
  }

LABEL_49:

  v60 = *MEMORY[0x277D85DE8];

  return v53;
}

- (id)_writeHEIFImage:(CGImageSource *)a3 sourceURL:(id)a4 inFormat:(__CFString *)a5 withMaxByteSize:(unint64_t)a6 maxDimension:(unint64_t)a7 downgradingMultiFrameImageToSingleFrame:(BOOL)a8 actualSize:(unint64_t *)a9 startingLengthIndex:(int)a10 usedLengthIndex:(int *)a11 telemetry:(id)a12
{
  v95 = a8;
  *(&v105[2] + 2) = *MEMORY[0x277D85DE8];
  v91 = a4;
  v90 = a12;
  if (a10 >= 0x1A)
  {
    v15 = 0;
  }

  else
  {
    v15 = a10;
  }

  Count = CGImageSourceGetCount(a3);
  if (a7)
  {
    v16 = v15 - 1;
    v17 = &dword_254832E48[v15];
    do
    {
      v18 = *v17++;
      ++v16;
    }

    while (v18 > a7);
    if (v16 > 0x19)
    {
LABEL_59:
      if (IMOSLoggingEnabled())
      {
        v76 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v76, OS_LOG_TYPE_INFO, "Failed to generate an image url for a wide gamut transformation", buf, 2u);
        }
      }

      goto LABEL_69;
    }

    LODWORD(v15) = v16;
  }

  v98 = v15;
  v19 = a7;
  v20 = *MEMORY[0x277CD3660];
  v87 = *MEMORY[0x277CD3660];
  v88 = *MEMORY[0x277CD3568];
  v93 = a7;
  while (1)
  {
    context = objc_autoreleasePoolPush();
    v21 = dword_254832E48[v98];
    v22 = dword_254832EB8[v98];
    if (a7)
    {
      v23 = v21 / v19;
    }

    else
    {
      v23 = 1.0;
    }

    if (Count >= v22)
    {
      v24 = dword_254832EB8[v98];
    }

    else
    {
      v24 = Count;
    }

    if (v95)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    v99 = v25;
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v103 = v22;
        v104 = 1024;
        LODWORD(v105[0]) = v98;
        WORD2(v105[0]) = 2048;
        *(v105 + 6) = Count;
        _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, "Trying to copy wide gamut properties for index maxSize = %lu (index: %d) with original image count = %zu", buf, 0x1Cu);
      }
    }

    v97 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v27 = CGImageDestinationCreateWithData(v97, a5, v99, 0);
    v28 = IMOSLoggingEnabled();
    if (!v27)
    {
      break;
    }

    if (v28)
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v103 = v99;
        v104 = 2048;
        v105[0] = v21;
        _os_log_impl(&dword_254811000, v34, OS_LOG_TYPE_INFO, " ==> Image Count = %zu, suggestedMaxLength = %zu", buf, 0x16u);
      }
    }

    v100[0] = v88;
    v100[1] = v87;
    v101[0] = MEMORY[0x277CBEC38];
    v35 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v29, v21, v30, v31, v32, v33);
    v101[1] = v35;
    v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v101, v100, 2, v37, v38);

    if (v95)
    {
      v44 = objc_msgSend__determineFrameIndexForDowngradeFromMultiFrameToSingleFrameWithMaxDimension_fromImageSource_(self, v40, v93, a3, v41, v42, v43);
      v24 = 1;
    }

    else
    {
      v44 = 0;
    }

    if (v44 < v24 + v44)
    {
      do
      {
        v45 = objc_autoreleasePoolPush();
        v46 = CGImageSourceCopyPropertiesAtIndex(a3, v44, 0);
        v53 = objc_msgSend_mutableCopy(v46, v47, v48, v49, v50, v51, v52);

        if (v99 >= 2)
        {
          ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a3, v44, v39);
        }

        else
        {
          ThumbnailAtIndex = CGImageSourceCreateImageAtIndex(a3, v44, 0);
        }

        v55 = ThumbnailAtIndex;
        if (IMOSLoggingEnabled())
        {
          v60 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            v61 = @"YES";
            if (!v55)
            {
              v61 = @"NO";
            }

            *buf = 138412290;
            v103 = v61;
            _os_log_impl(&dword_254811000, v60, OS_LOG_TYPE_INFO, "adding image properties for HEIF Images only. Created scaled image: %@", buf, 0xCu);
          }
        }

        objc_msgSend__setWideGamutProperties_scaledImage_(self, v56, v53, v55, v57, v58, v59);
        v62 = IMOSLoggingEnabled();
        if (v55)
        {
          if (v62)
          {
            v63 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v103 = v44;
              _os_log_impl(&dword_254811000, v63, OS_LOG_TYPE_INFO, "adding scaled image at index %lu", buf, 0xCu);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v64 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v103 = v53;
              _os_log_impl(&dword_254811000, v64, OS_LOG_TYPE_INFO, "  properties: %@", buf, 0xCu);
            }
          }

          CGImageDestinationAddImage(v27, v55, v53);
          objc_msgSend_copyAuxiliaryImagesFromImageSource_toDestination_fromImageAtIndex_scaleFactor_(self, v65, a3, v27, v44, v66, v67, v23);
          CGImageRelease(v55);
        }

        else if (v62)
        {
          v68 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v103 = v44;
            _os_log_impl(&dword_254811000, v68, OS_LOG_TYPE_INFO, "Failed adding scaled image at index (%zd)!", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v45);
        ++v44;
        --v24;
      }

      while (v24);
    }

    if (!CGImageDestinationFinalize(v27))
    {
      CFRelease(v27);

      objc_autoreleasePoolPop(context);
      goto LABEL_69;
    }

    LODWORD(v86) = v98;
    v75 = objc_msgSend__checkAndSaveImageData_sourceURL_inFormat_withMaxByteSize_actualSize_usedLengthIndex_currentIndex_(self, v69, v97, v91, a5, a6, a9, a11, v86);
    if (v75)
    {
      if (IMOSLoggingEnabled())
      {
        v85 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v103 = v75;
          _os_log_impl(&dword_254811000, v85, OS_LOG_TYPE_INFO, "Success writing wide gamut image out, breaking from loop with url: %@", buf, 0xCu);
        }
      }

      objc_msgSend_emitSignpostTranscodeFinalForDestinationUTI_(v90, v80, a5, v81, v82, v83, v84);
      CFRelease(v27);

      objc_autoreleasePoolPop(context);
      goto LABEL_70;
    }

    objc_msgSend_emitSignpostTranscodeStepForDestinationUTI_(v90, v70, a5, v71, v72, v73, v74);
    CFRelease(v27);

    objc_autoreleasePoolPop(context);
    ++v98;
    a7 = v93;
    if (v98 == 26)
    {
      goto LABEL_59;
    }
  }

  if (v28)
  {
    v77 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254811000, v77, OS_LOG_TYPE_INFO, "Cannot set gamut properties because imageDestination is NULL", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(context);
LABEL_69:
  v75 = 0;
LABEL_70:

  v78 = *MEMORY[0x277D85DE8];

  return v75;
}

- (unint64_t)_determineFrameIndexForDowngradeFromMultiFrameToSingleFrameWithMaxDimension:(unint64_t)a3 fromImageSource:(CGImageSource *)a4
{
  v4 = a4;
  v64 = *MEMORY[0x277D85DE8];
  Count = CGImageSourceGetCount(a4);
  v7 = Count;
  if (!Count)
  {
    v54 = 0;
    v55 = -1;
    v10 = 0;
LABEL_22:
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218752;
      v9 = v55;
      v57 = v55;
      v58 = 2048;
      v59 = v10;
      v60 = 2048;
      v61 = v54;
      v62 = 2048;
      v63 = v7;
      _os_log_impl(&dword_254811000, v8, OS_LOG_TYPE_INFO, "Using frame index %ld with dimensions (%ld x %ld) for downgrade from %ld frame image to single frame.", buf, 0x2Au);
    }

    else
    {
      v9 = v55;
    }

    goto LABEL_25;
  }

  if (Count != 1)
  {
    v10 = 0;
    v54 = 0;
    v11 = 0;
    v12 = *MEMORY[0x277CD3450];
    v53 = *MEMORY[0x277CD3448];
    v55 = -1;
    do
    {
      v13 = CGImageSourceCopyPropertiesAtIndex(v4, v11, 0);
      v19 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v12, v15, v16, v17, v18);
      v26 = objc_msgSend_unsignedIntegerValue(v19, v20, v21, v22, v23, v24, v25);

      if (v26 <= a3)
      {
        v32 = objc_msgSend_objectForKeyedSubscript_(v13, v27, v53, v28, v29, v30, v31);
        v39 = v4;
        v40 = v7;
        v41 = objc_msgSend_unsignedIntegerValue(v32, v33, v34, v35, v36, v37, v38);

        v42 = v10 < v26;
        v44 = v54;
        v43 = v55;
        v45 = v54 < v41;
        v46 = !v42 || !v45;
        if (v42 && v45)
        {
          v47 = v41;
        }

        else
        {
          v47 = v54;
        }

        if (v46)
        {
          v48 = v10;
        }

        else
        {
          v48 = v26;
        }

        if (v46)
        {
          v49 = v55;
        }

        else
        {
          v49 = v11;
        }

        v50 = v41 > a3;
        v7 = v40;
        v4 = v39;
        if (!v50)
        {
          v44 = v47;
          v10 = v48;
          v43 = v49;
        }

        v54 = v44;
        v55 = v43;
      }

      ++v11;
    }

    while (v7 != v11);
    goto LABEL_22;
  }

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_254811000, v8, OS_LOG_TYPE_INFO, "Image only contains one frame, no need to choose a best frame for downgrade from multiframe to single frame.", buf, 2u);
  }

  v9 = 0;
LABEL_25:

  v51 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unint64_t)_getImageWidth:(CGImageSource *)a3
{
  if (!a3 || !CGImageSourceGetCount(a3))
  {
    return 0;
  }

  v4 = CGImageSourceCopyPropertiesAtIndex(a3, 0, 0);
  v10 = objc_msgSend_objectForKey_(v4, v5, *MEMORY[0x277CD3450], v6, v7, v8, v9);
  v17 = objc_msgSend_unsignedIntegerValue(v10, v11, v12, v13, v14, v15, v16);

  return v17;
}

- (id)_getScaleFactorArray:(id)a3 transferURL:(id)a4 outputURLs:(id)a5
{
  v107 = *MEMORY[0x277D85DE8];
  inUTI = a3;
  url = a4;
  v93 = a5;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v102 = inUTI;
      v103 = 2112;
      v104 = url;
      v105 = 2112;
      v106 = v93;
      _os_log_impl(&dword_254811000, v8, OS_LOG_TYPE_INFO, "_getScaleFactorArray uti %@ transferURL %@ outputURLs %@", buf, 0x20u);
    }
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ((UTTypeConformsTo(inUTI, *MEMORY[0x277CC2120]) || UTTypeConformsTo(inUTI, *MEMORY[0x277CC2088]) || UTTypeConformsTo(inUTI, *MEMORY[0x277CC20C8])) && (v16 = objc_msgSend_count(v93, v10, v11, v12, v13, v14, v15), url) && v16)
  {
    cf = CGImageSourceCreateWithURL(url, 0);
    ImageWidth = objc_msgSend__getImageWidth_(self, v17, cf, v18, v19, v20, v21);
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v102 = ImageWidth;
        _os_log_impl(&dword_254811000, v23, OS_LOG_TYPE_INFO, "_getScaleFactor inImageWidth = %lu", buf, 0xCu);
      }
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v93;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v96, v100, 16, v25, v26);
    if (v27)
    {
      v28 = *v97;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v97 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = CGImageSourceCreateWithURL(*(*(&v96 + 1) + 8 * i), 0);
          v36 = objc_msgSend__getImageWidth_(self, v31, v30, v32, v33, v34, v35);
          if (IMOSLoggingEnabled())
          {
            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v102 = v36;
              _os_log_impl(&dword_254811000, v37, OS_LOG_TYPE_INFO, "_getScaleFactor outImageWidth = %lu", buf, 0xCu);
            }
          }

          if (v36)
          {
            v38 = ImageWidth == 0;
          }

          else
          {
            v38 = 1;
          }

          if (v38)
          {
            v39 = 1.0;
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_36;
            }

            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              LODWORD(v47) = 1.0;
              v48 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v41, v42, v43, v44, v45, v46, v47);
              *buf = 138412290;
              v102 = v48;
              _os_log_impl(&dword_254811000, v40, OS_LOG_TYPE_INFO, "_getScaleFactorArray resorting to default scale factor for outPutURL %@", buf, 0xCu);
            }

            goto LABEL_35;
          }

          v49 = IMOSLoggingEnabled();
          v39 = ImageWidth / v36;
          if (v49)
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *&v63 = v39;
              v64 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v57, v58, v59, v60, v61, v62, v63);
              *buf = 138412290;
              v102 = v64;
              _os_log_impl(&dword_254811000, v40, OS_LOG_TYPE_INFO, "_getScaleFactorArray scale factor for outPutURL %@", buf, 0xCu);
            }

LABEL_35:
          }

LABEL_36:
          if (v30)
          {
            CFRelease(v30);
          }

          *&v56 = v39;
          v65 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v50, v51, v52, v53, v54, v55, v56);
          objc_msgSend_addObject_(v9, v66, v65, v67, v68, v69, v70);
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v71, &v96, v100, 16, v72, v73);
      }

      while (v27);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v74 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v81 = MEMORY[0x277CCABB0];
      v82 = objc_msgSend_count(v93, v75, v76, v77, v78, v79, v80);
      v88 = objc_msgSend_numberWithUnsignedInteger_(v81, v83, v82, v84, v85, v86, v87);
      *buf = 138412802;
      v102 = v88;
      v103 = 2112;
      v104 = inUTI;
      v105 = 2112;
      v106 = url;
      _os_log_impl(&dword_254811000, v74, OS_LOG_TYPE_INFO, "Did not compute sticker scale. [outputURLs count] %@, uti %@, transferURL %@", buf, 0x20u);
    }
  }

  v89 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)transcodeFileTransfer:(id)a3 utiType:(id)a4 allowUnfilteredUTIs:(id)a5 target:(int64_t)a6 sizes:(id)a7 commonCapabilities:(id)a8 maxDimension:(unint64_t)a9 transcoderUserInfo:(id)a10 representations:(int64_t)a11 isLQMEnabled:(BOOL)a12 completionBlock:(id)a13
{
  v439 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v421 = a5;
  v20 = a7;
  v426 = a8;
  v21 = a10;
  v423 = a13;
  v22 = v20;
  if (objc_msgSend_count(v22, v23, v24, v25, v26, v27, v28) < 2)
  {
    v55 = 0;
  }

  else
  {
    v34 = 1;
    do
    {
      v35 = objc_msgSend_objectAtIndexedSubscript_(v22, v29, v34, v30, v31, v32, v33);
      v36 = v34 - 1;
      v42 = objc_msgSend_objectAtIndexedSubscript_(v22, v37, v36, v38, v39, v40, v41);
      isEqualToValue = objc_msgSend_isEqualToValue_(v35, v43, v42, v44, v45, v46, v47);

      if ((isEqualToValue & 1) == 0)
      {
        break;
      }

      v34 = v36 + 2;
    }

    while (v34 < objc_msgSend_count(v22, v49, v50, v51, v52, v53, v54));
    v55 = isEqualToValue ^ 1u;
  }

  if (v55 != a11 && IMOSLoggingEnabled())
  {
    v59 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v22;
      *&buf[12] = 1024;
      *&buf[14] = a11;
      _os_log_impl(&dword_254811000, v59, OS_LOG_TYPE_INFO, "Warning - sizes %@ do not match the number of reps requested (%d)", buf, 0x12u);
    }
  }

  shouldPreserveHEIFEncoding_target_sourceUTI = objc_msgSend_shouldPreserveHEIFEncoding_target_sourceUTI_(IMTranscoder, v56, v426, a6, v19, v57, v58);
  v66 = objc_msgSend_lastObject(v22, v60, v61, v62, v63, v64, v65);
  v73 = objc_msgSend_longValue(v66, v67, v68, v69, v70, v71, v72);
  shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities = objc_msgSend_shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities_(self, v74, v18, v21, a6, v19, v421, v73, v426);

  v76 = shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities == 2;
  isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v19, v77, @"________WBMP_________", v78, v79, v80, v81);
  v424 = objc_msgSend_objectForKey_(v21, v83, @"ImageQuality", v84, v85, v86, v87);
  if (v424)
  {
    objc_msgSend_floatValue(v424, v88, v89, v90, v91, v92, v93);
    objc_msgSend_setOverrideJPEGCompressionQuality_(self, v95, v96, v97, v98, v99, v100, v94);
  }

  v422 = isEqualToIgnoringCase | v76;
  if (IMOSLoggingEnabled())
  {
    v106 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
    {
      v107 = @"NO";
      if (v422)
      {
        v107 = @"YES";
      }

      *buf = 138412546;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v107;
      _os_log_impl(&dword_254811000, v106, OS_LOG_TYPE_INFO, "Transfer: %@   needsTranscode? %@", buf, 0x16u);
    }
  }

  if (a6 == 1)
  {
    v108 = objc_msgSend_objectForKey_(v21, v101, *MEMORY[0x277D1A7D8], v102, v103, v104, v105);
    v114 = objc_msgSend_objectForKey_(v21, v109, *MEMORY[0x277D1A7E0], v110, v111, v112, v113);
    v119 = (objc_msgSend_IMMMSMaximumMessageByteCountForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v115, v108, v114, v116, v117, v118) * 0.92);
    if (IMOSLoggingEnabled())
    {
      v120 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v119;
        _os_log_impl(&dword_254811000, v120, OS_LOG_TYPE_INFO, "       Max byte size is: %d", buf, 8u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v126 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v22;
        _os_log_impl(&dword_254811000, v126, OS_LOG_TYPE_INFO, "         Supplied sizes: %@", buf, 0xCu);
      }
    }

    v127 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v121, v119, v122, v123, v124, v125);
    v429[0] = MEMORY[0x277D85DD0];
    v429[1] = 3221225472;
    v429[2] = sub_254823284;
    v429[3] = &unk_27978AB90;
    v431 = v119;
    v128 = v127;
    v430 = v128;
    v134 = objc_msgSend___imArrayByApplyingBlock_(v22, v129, v429, v130, v131, v132, v133);

    v139 = objc_msgSend_IMMMSMaxImageDimensionForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v135, v108, v114, v136, v137, v138);
    if (IMOSLoggingEnabled())
    {
      v140 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v140, OS_LOG_TYPE_INFO, " Always transcoding MMS, setting transcoding to YES", buf, 2u);
      }
    }

    v420 = v139;
    v422 = 1;
    v22 = v134;
  }

  else
  {
    v420 = a9;
  }

  if (IMOSLoggingEnabled())
  {
    v141 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v420;
      _os_log_impl(&dword_254811000, v141, OS_LOG_TYPE_INFO, " Max image dimension is: %zd", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v142 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_impl(&dword_254811000, v142, OS_LOG_TYPE_INFO, "              Max sizes: %@", buf, 0xCu);
    }
  }

  v425 = objc_alloc_init(IMTranscoderTelemetry);
  if (v422)
  {
    objc_msgSend_emitTranscodeBeginFromUTI_(v425, v143, v19, v144, v145, v146, v147);
    if (IMOSLoggingEnabled())
    {
      v153 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v153, OS_LOG_TYPE_INFO, "This image needs to be transcoded!", buf, 2u);
      }
    }

    if (!objc_msgSend_isEqualToIgnoringCase_(v19, v148, @"________WBMP_________", v149, v150, v151, v152))
    {
      if (v18)
      {
LABEL_108:
        if (IMOSLoggingEnabled())
        {
          v220 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v220, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v18;
            _os_log_impl(&dword_254811000, v220, OS_LOG_TYPE_INFO, "Creating CGImageSource from url: %@", buf, 0xCu);
          }
        }

        if (v19)
        {
          v434 = *MEMORY[0x277CD3668];
          v435 = v19;
          v221 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v217, &v435, &v434, 1, v218, v219);
        }

        else
        {
          v221 = 0;
        }

        v203 = CGImageSourceCreateWithURL(v18, v221);
        if (IMOSLoggingEnabled())
        {
          v227 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v227, OS_LOG_TYPE_INFO))
          {
            v228 = @"good";
            if (!v203)
            {
              v228 = @"NULL";
            }

            *buf = 138412290;
            *&buf[4] = v228;
            _os_log_impl(&dword_254811000, v227, OS_LOG_TYPE_INFO, "Source ref is %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v229 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v229, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v229, OS_LOG_TYPE_INFO, "Source image properties unavailable (sourceRef is NULL)", buf, 2u);
          }
        }

        v226 = 0;
        goto LABEL_131;
      }

      v203 = 0;
LABEL_114:
      if (IMOSLoggingEnabled())
      {
        v225 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v225, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v225, OS_LOG_TYPE_INFO, "transferURL is nil, no image to transcode...", buf, 2u);
        }
      }

      v226 = 1;
LABEL_131:
      v415 = v203 == 0;
      if (!v203 && !IMIsRunningInUnitTesting())
      {
        if (IMOSLoggingEnabled())
        {
          v287 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v287, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v287, OS_LOG_TYPE_INFO, "The imageSource was NULL when trying to load original attachment file", buf, 2u);
          }
        }

        v201 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v284, @"__kIMTranscodeErrorDomain", -2, 0, v285, v286);
        v202 = 0;
        v197 = 0;
        goto LABEL_284;
      }

      loga = objc_msgSend_newEstimatorWithURL_uti_imageSource_(IMTranscoderImageSizeEstimator, v222, v18, v19, v203, v223, v224);
      if (a6 == 1)
      {
        if (v226)
        {
          v230 = 0;
          v414 = 0;
          goto LABEL_138;
        }

LABEL_137:
        v233 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v211, v212, v213, v214, v215, v216);
        v240 = objc_msgSend_path(v18, v234, v235, v236, v237, v238, v239);
        v428 = 0;
        v245 = objc_msgSend_attributesOfItemAtPath_error_(v233, v241, v240, &v428, v242, v243, v244);
        v414 = v428;
        v230 = objc_msgSend_fileSize(v245, v246, v247, v248, v249, v250, v251);

LABEL_138:
        if (IMOSLoggingEnabled())
        {
          v258 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v258, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            *&buf[4] = v18;
            *&buf[12] = 2112;
            *&buf[14] = v414;
            *&buf[22] = 2048;
            v438 = v230;
            _os_log_impl(&dword_254811000, v258, OS_LOG_TYPE_INFO, " File size of file %@ with error %@   (%llu bytes)", buf, 0x20u);
          }
        }

        v259 = objc_msgSend_firstObject(v22, v252, v253, v254, v255, v256, v257);
        v266 = v230 < objc_msgSend_longValue(v259, v260, v261, v262, v263, v264, v265);

        if (v266)
        {
          if (UTTypeConformsTo(v19, *MEMORY[0x277CC20C8]))
          {
            v267 = CGImageSourceCopyPropertiesAtIndex(v203, 0, 0);
            if (IMOSLoggingEnabled())
            {
              v273 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v273, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v267;
                _os_log_impl(&dword_254811000, v273, OS_LOG_TYPE_INFO, "  This is a JPEG, checking properties: %@", buf, 0xCu);
              }
            }

            v274 = objc_msgSend_objectForKey_(v267, v268, *MEMORY[0x277CD3410], v269, v270, v271, v272);
            v281 = objc_msgSend_intValue(v274, v275, v276, v277, v278, v279, v280);
            if (IMOSLoggingEnabled())
            {
              v282 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v282, OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *&buf[4] = v281;
                *&buf[8] = 2112;
                *&buf[10] = v274;
                _os_log_impl(&dword_254811000, v282, OS_LOG_TYPE_INFO, "  Image orientation is: %d  (%@)", buf, 0x12u);
              }
            }

            v232 = v281 != 0;
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v293 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v293, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v293, OS_LOG_TYPE_INFO, "  Image still might requiree transcoding", buf, 2u);
              }
            }

            v232 = 1;
          }

          if (IMOSLoggingEnabled())
          {
            v294 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v294, OS_LOG_TYPE_INFO))
            {
              v295 = @"NO";
              if (v232)
              {
                v295 = @"YES";
              }

              *buf = 138412290;
              *&buf[4] = v295;
              _os_log_impl(&dword_254811000, v294, OS_LOG_TYPE_INFO, " File still requires transcoding: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v283 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v283, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_254811000, v283, OS_LOG_TYPE_INFO, " File is too large, we'll need to transcode it", buf, 2u);
            }
          }

          v232 = 1;
        }

        if (IMMMSRestrictedModeEnabled())
        {
          v231 = UTTypeConformsTo(v19, *MEMORY[0x277CC2088]) != 0;
          if (!v232)
          {
            goto LABEL_187;
          }
        }

        else
        {
          v231 = 0;
          if (!v232)
          {
            goto LABEL_187;
          }
        }

LABEL_178:
        if (!v231)
        {
          if (objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v211, v21, *MEMORY[0x277D19E80], v214, v215, v216))
          {
            if (IMOSLoggingEnabled())
            {
              v297 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v297, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v19;
                _os_log_impl(&dword_254811000, v297, OS_LOG_TYPE_INFO, "Transcoding Genmoji to single frame PNG, original uti: %@", buf, 0xCu);
              }
            }

            v197 = objc_msgSend__writeRepresentationsForImage_target_sourceURL_sizes_maxDimension_srcUTI_inFormat_downgradingMultiFrameImageToSingleFrame_estimator_isLQMEnabled_telemetry_(self, v296, v203, a6, v18, v22, v420, v19, *MEMORY[0x277CC2120], 1, loga, a12, v425);
            if (objc_msgSend_count(v197, v298, v299, v300, v301, v302, v303))
            {
              if (v197)
              {
                goto LABEL_262;
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v320 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v320, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v320, OS_LOG_TYPE_INFO, "Couldn't fit genmoji image into any size of PNG", buf, 2u);
                }
              }
            }
          }

          if (a6 == 1 && (IMMMSRestrictedModeEnabled() & 1) != 0)
          {
            goto LABEL_254;
          }

          Count = CGImageSourceGetCount(v203);
          v328 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v322, v323, v324, v325, v326, v327);
          isHighQualityPhotosEnabled = objc_msgSend_isHighQualityPhotosEnabled(v328, v329, v330, v331, v332, v333, v334);

          if ((Count > 1) | isHighQualityPhotosEnabled & 1)
          {
            v336 = UTTypeConformsTo(v19, *MEMORY[0x277D1AD80]) == 0;
          }

          else
          {
            v336 = 0;
          }

          if (shouldPreserveHEIFEncoding_target_sourceUTI && !v336)
          {
            if (IMOSLoggingEnabled())
            {
              v337 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v337, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v19;
                _os_log_impl(&dword_254811000, v337, OS_LOG_TYPE_INFO, "Transcoding to HEIF, original uti: %@", buf, 0xCu);
              }
            }

            v338 = MEMORY[0x277D1AD78];
            if (Count <= 1)
            {
              v338 = MEMORY[0x277D1AD70];
            }

            v339 = *v338;
            LOBYTE(v413) = a12;
            LOBYTE(v412) = 0;
            v197 = objc_msgSend__writeRepresentationsForImage_target_sourceURL_sizes_maxDimension_srcUTI_inFormat_downgradingMultiFrameImageToSingleFrame_estimator_isLQMEnabled_telemetry_(self, v340, v203, a6, v18, v22, v420, v19, v339, v412, loga, v413, v425);
            if (!objc_msgSend_count(v197, v341, v342, v343, v344, v345, v346))
            {
              if (IMOSLoggingEnabled())
              {
                v347 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v347, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v347, OS_LOG_TYPE_INFO, "Couldn't fit this image into any size of HEIF", buf, 2u);
                }
              }

              v197 = 0;
            }

            goto LABEL_247;
          }

          v348 = *MEMORY[0x277CC2120];
          if (UTTypeConformsTo(v19, *MEMORY[0x277CC2120]))
          {
            if (a12)
            {
              if (CGImageSourceGetCount(v203) == 1)
              {
                ImageAtIndex = CGImageSourceCreateImageAtIndex(v203, 0, 0);
                v351 = objc_opt_class();
                if (objc_msgSend__canConvertPNGToJPEG_(v351, v352, ImageAtIndex, v353, v354, v355, v356))
                {
                  v357 = IMOSLoggingEnabled();
                  v348 = *MEMORY[0x277CC20C8];
                  if (v357)
                  {
                    v358 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v358, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_254811000, v358, OS_LOG_TYPE_INFO, "We've got an opaque PNG, try to reencode as a JPEG", buf, 2u);
                    }
                  }
                }

                if (ImageAtIndex)
                {
                  CFRelease(ImageAtIndex);
                }
              }
            }

            else if (IMOSLoggingEnabled())
            {
              v369 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v369, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v369, OS_LOG_TYPE_INFO, "We've got a PNG, we'll try to preserve it since LQM is not enabled.", buf, 2u);
              }
            }

            LOBYTE(v413) = a12;
            LOBYTE(v412) = 0;
            v197 = objc_msgSend__writeRepresentationsForImage_target_sourceURL_sizes_maxDimension_srcUTI_inFormat_downgradingMultiFrameImageToSingleFrame_estimator_isLQMEnabled_telemetry_(self, v349, v203, a6, v18, v22, v420, v19, v348, v412, loga, v413, v425);
            if (objc_msgSend_count(v197, v370, v371, v372, v373, v374, v375))
            {
              goto LABEL_247;
            }

            if (!IMOSLoggingEnabled())
            {
              goto LABEL_253;
            }

            v368 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v368, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_254811000, v368, OS_LOG_TYPE_INFO, "Couldn't fit this image into any size of PNG", buf, 2u);
            }

            goto LABEL_252;
          }

          v359 = *MEMORY[0x277CC2088];
          if (UTTypeConformsTo(v19, *MEMORY[0x277CC2088]))
          {
            if (IMOSLoggingEnabled())
            {
              v361 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v361, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v361, OS_LOG_TYPE_INFO, "We've got a GIF, try to reencode as a GIF", buf, 2u);
              }
            }

            LOBYTE(v413) = a12;
            LOBYTE(v412) = 0;
            v197 = objc_msgSend__writeRepresentationsForImage_target_sourceURL_sizes_maxDimension_srcUTI_inFormat_downgradingMultiFrameImageToSingleFrame_estimator_isLQMEnabled_telemetry_(self, v360, v203, a6, v18, v22, v420, v19, v359, v412, loga, v413, v425);
            if (!objc_msgSend_count(v197, v362, v363, v364, v365, v366, v367))
            {
              if (!IMOSLoggingEnabled())
              {
LABEL_253:

LABEL_254:
                v376 = UTTypeConformsTo(v19, *MEMORY[0x277D1AD80]);
                v377 = *MEMORY[0x277CC20C8];
                if (v376)
                {
                  v378 = IMIsScreenshotURL();
                  v379 = *MEMORY[0x277CC2120];
                  if (v378)
                  {
                    v377 = *MEMORY[0x277CC2120];
                  }
                }

                if (IMOSLoggingEnabled())
                {
                  v381 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v381, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    *&buf[4] = v377;
                    _os_log_impl(&dword_254811000, v381, OS_LOG_TYPE_INFO, "Default/fallback transcode for image as type %@", buf, 0xCu);
                  }
                }

                LOBYTE(v413) = a12;
                LOBYTE(v412) = 0;
                v197 = objc_msgSend__writeRepresentationsForImage_target_sourceURL_sizes_maxDimension_srcUTI_inFormat_downgradingMultiFrameImageToSingleFrame_estimator_isLQMEnabled_telemetry_(self, v380, v203, a6, v18, v22, v420, v19, v377, v412, loga, v413, v425);
                if (!v197)
                {
LABEL_263:
                  if (IMOSLoggingEnabled())
                  {
                    v388 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v388, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_254811000, v388, OS_LOG_TYPE_INFO, "Image failed to transcode; falling back to original", buf, 2u);
                    }
                  }

                  v319 = _IMTranscoderLinkFile(v18, v382, v383, v384, v385, v386, v387);
                  v389 = IMSingleObjectArray();

                  v197 = v389;
                  goto LABEL_268;
                }

LABEL_262:
                if (objc_msgSend_count(v197, v304, v305, v306, v307, v308, v309))
                {
LABEL_269:
                  if (IMOSLoggingEnabled())
                  {
                    v396 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v396, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      *&buf[4] = v197;
                      _os_log_impl(&dword_254811000, v396, OS_LOG_TYPE_INFO, "We've reached the end of the image transcode attempt. outputURL = %@", buf, 0xCu);
                    }
                  }

                  if (v197 && objc_msgSend_count(v197, v390, v391, v392, v393, v394, v395))
                  {
                    v201 = 0;
                    v202 = 1;
                  }

                  else
                  {
                    v201 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v390, @"__kIMTranscodeErrorDomain", -7, 0, v394, v395);
                    if (IMOSLoggingEnabled())
                    {
                      v397 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v397, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        *&buf[4] = v201;
                        _os_log_impl(&dword_254811000, v397, OS_LOG_TYPE_INFO, "Failed to re-encode: %@", buf, 0xCu);
                      }
                    }

                    v202 = 0;
                  }

                  if (!v415)
                  {
                    CFRelease(v203);
                  }

LABEL_284:
                  objc_msgSend_emitTranscodeEndFromUTI_(v425, v288, v19, v289, v290, v291, v292);
                  goto LABEL_285;
                }

                goto LABEL_263;
              }

              v368 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v368, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v368, OS_LOG_TYPE_INFO, "Couldn't fit this image into any size of GIF", buf, 2u);
              }

LABEL_252:

              goto LABEL_253;
            }
          }

          else
          {
            if (!UTTypeConformsTo(v19, *MEMORY[0x277D1AD88]))
            {
              goto LABEL_254;
            }

            v403 = *MEMORY[0x277CC20C8];
            if (Count > 1)
            {
              v403 = v359;
            }

            v417 = v403;
            if (IMOSLoggingEnabled())
            {
              v405 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v405, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                *&buf[4] = v417;
                *&buf[12] = 2048;
                *&buf[14] = Count;
                _os_log_impl(&dword_254811000, v405, OS_LOG_TYPE_INFO, "We've got a WebP, try to reencode as a %@ (frame count %zu)", buf, 0x16u);
              }
            }

            LOBYTE(v413) = a12;
            LOBYTE(v412) = 0;
            v197 = objc_msgSend__writeRepresentationsForImage_target_sourceURL_sizes_maxDimension_srcUTI_inFormat_downgradingMultiFrameImageToSingleFrame_estimator_isLQMEnabled_telemetry_(self, v404, v203, a6, v18, v22, v420, v19, v417, v412, loga, v413, v425);
            if (!objc_msgSend_count(v197, v406, v407, v408, v409, v410, v411))
            {
              if (!IMOSLoggingEnabled())
              {
                goto LABEL_253;
              }

              v368 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v368, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v417;
                _os_log_impl(&dword_254811000, v368, OS_LOG_TYPE_INFO, "Couldn't fit this image into any size of %@", buf, 0xCu);
              }

              goto LABEL_252;
            }
          }

LABEL_247:
          if (v197)
          {
            goto LABEL_262;
          }

          goto LABEL_254;
        }

LABEL_187:
        if (IMOSLoggingEnabled())
        {
          v316 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v316, OS_LOG_TYPE_INFO))
          {
            v317 = @"NO";
            if (v231)
            {
              v318 = @"YES";
            }

            else
            {
              v318 = @"NO";
            }

            if (v232)
            {
              v317 = @"YES";
            }

            *buf = 138412546;
            *&buf[4] = v318;
            *&buf[12] = 2112;
            *&buf[14] = v317;
            _os_log_impl(&dword_254811000, v316, OS_LOG_TYPE_INFO, "Didn't require transcode, defaulting to the original image MMSGIFCarrierTesting %@, needsTrancode %@", buf, 0x16u);
          }
        }

        v319 = _IMTranscoderLinkFile(v18, v310, v311, v312, v313, v314, v315);
        v197 = IMSingleObjectArray();
LABEL_268:

        goto LABEL_269;
      }

LABEL_136:
      v231 = 0;
      v232 = 1;
      goto LABEL_178;
    }

    if (IMOSLoggingEnabled())
    {
      v154 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v154, OS_LOG_TYPE_INFO, "This is a WBMP, converting to JPEG first", buf, 2u);
      }
    }

    v155 = objc_alloc(MEMORY[0x277CBEA90]);
    v161 = objc_msgSend_initWithContentsOfURL_(v155, v156, v18, v157, v158, v159, v160);
    if (!objc_msgSend_length(v161, v162, v163, v164, v165, v166, v167) && IMOSLoggingEnabled())
    {
      v168 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v18;
        _os_log_impl(&dword_254811000, v168, OS_LOG_TYPE_INFO, "Failing, Empty data created from URL: %@", buf, 0xCu);
      }
    }

    if (v161 && (v169 = CGImageCreateWithWBMPData()) != 0)
    {
      values[3] = 0;
      valuePtr = 0x3FF0000000000000;
      v170 = *MEMORY[0x277CD2D48];
      v438 = 0;
      *buf = v170;
      values[0] = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      *&buf[8] = *MEMORY[0x277CD2D40];
      Width = CGImageGetWidth(v169);
      Height = CGImageGetHeight(v169);
      if (Width <= Height)
      {
        objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v173, Height, v174, v175, v176, v177);
      }

      else
      {
        objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v173, Width, v174, v175, v176, v177);
      }
      v178 = ;
      values[1] = CFRetain(v178);

      *&buf[16] = *MEMORY[0x277CD2D60];
      values[2] = CFRetain(MEMORY[0x277CBEC38]);
      v179 = CFDictionaryCreate(0, buf, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v180 = 2;
      do
      {
        CFRelease(values[v180]);
        v181 = v180-- + 1;
      }

      while (v181 > 1);
      v182 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v183 = v182;
      if (v182)
      {
        v184 = CGImageDestinationCreateWithData(v182, @"public.jpeg", 1uLL, 0);
        v185 = v184;
        if (v184)
        {
          CGImageDestinationAddImage(v184, v169, v179);
          if (CGImageDestinationFinalize(v185))
          {
            CFRelease(v185);
            CFRelease(v179);
            v186 = v183;

            if (IMOSLoggingEnabled())
            {
              v187 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v187, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v187, OS_LOG_TYPE_INFO, "Created source from JPEG converted data", buf, 2u);
              }
            }

            v188 = CGImageSourceCreateWithData(v186, 0);
            CFRelease(v169);
            goto LABEL_103;
          }

          if (IMOSLoggingEnabled())
          {
            log = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *v432 = 0;
              _os_log_impl(&dword_254811000, log, OS_LOG_TYPE_INFO, "Failed finalizing image destination from WBMP", v432, 2u);
            }
          }

          CFRelease(v185);
        }

        else if (IMOSLoggingEnabled())
        {
          v206 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
          {
            *v432 = 0;
            _os_log_impl(&dword_254811000, v206, OS_LOG_TYPE_INFO, "Failed creating image destination with data", v432, 2u);
          }
        }
      }

      CFRelease(v179);

      if (!IMOSLoggingEnabled())
      {
        v188 = 0;
        v186 = v169;
        goto LABEL_103;
      }

      v205 = 0;
      v186 = v169;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v204 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v204, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v204, OS_LOG_TYPE_INFO, "Failing to create jpeg from WBMP, no image ref passed in", buf, 2u);
        }
      }

      v186 = 0;
      if ((IMOSLoggingEnabled() & 1) == 0)
      {
        v188 = 0;
        goto LABEL_104;
      }

      v205 = 1;
    }

    v207 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254811000, v207, OS_LOG_TYPE_INFO, "Failed converting WBMP to JPEG", buf, 2u);
    }

    v188 = 0;
    if (v205)
    {
LABEL_104:

      v203 = v188;
      if (v18)
      {
        if (v188)
        {
          loga = objc_msgSend_newEstimatorWithURL_uti_imageSource_(IMTranscoderImageSizeEstimator, v208, v18, v19, v188, v209, v210);
          v415 = 0;
          if (a6 == 1)
          {
            goto LABEL_137;
          }

          goto LABEL_136;
        }

        goto LABEL_108;
      }

      goto LABEL_114;
    }

LABEL_103:
    CFRelease(v186);
    goto LABEL_104;
  }

  objc_msgSend_emitSignpostTranscodeSkipSourceUTI_(v425, v143, v19, v144, v145, v146, v147);
  if (IMOSLoggingEnabled())
  {
    v195 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254811000, v195, OS_LOG_TYPE_INFO, "Image ended up not needing a transcode operation", buf, 2u);
    }
  }

  v196 = _IMTranscoderLinkFile(v18, v189, v190, v191, v192, v193, v194);
  v197 = IMSingleObjectArray();

  v201 = 0;
  v202 = 1;
LABEL_285:
  v398 = objc_msgSend__getScaleFactorArray_transferURL_outputURLs_(self, v198, v19, v18, v197, v199, v200);
  if (IMOSLoggingEnabled())
  {
    v399 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v399, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v398;
      _os_log_impl(&dword_254811000, v399, OS_LOG_TYPE_INFO, "scaleFactorArray = %@", buf, 0xCu);
    }
  }

  v400 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v401 = v398;
  if (v401)
  {
    CFDictionarySetValue(v400, *MEMORY[0x277D1A7D0], v401);
  }

  if (v423)
  {
    (*(v423 + 2))(v423, v18, v197, 0, v201, v202, v422 & 1, v400);
  }

  v402 = *MEMORY[0x277D85DE8];
}

- (void)_imMetricsCollectorForLQMQualityEstimatorModeImageTypeHEIC:(unint64_t)a3 shouldUseQualityEstimatorModel:(BOOL)a4 inputImageFeatures:(id)a5 metricsDict:(id)a6
{
  v7 = a4;
  v107 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v16 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v11, a3, v12, v13, v14, v15);
  v22 = objc_msgSend_containsObject_(&unk_28669CC60, v17, v16, v18, v19, v20, v21);

  if (v22)
  {
    v23 = !v7;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    if (IMOSLoggingEnabled())
    {
      v97 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v105 = 134217984;
        v106 = a3;
        _os_log_impl(&dword_254811000, v97, OS_LOG_TYPE_INFO, "Quality estimator model used, suggestedMaxLength: %zu", &v105, 0xCu);
      }
    }

    v98 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v92, 3, v93, v94, v95, v96);
LABEL_25:
    v86 = v98;
    objc_msgSend_setObject_forKey_(v10, v99, v98, *MEMORY[0x277D1A160], v100, v101, v102);
    goto LABEL_26;
  }

  v24 = IMOSLoggingEnabled();
  if (!v9 || ((v22 | !v7) & 1) == 0)
  {
    if (v24)
    {
      v103 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
      {
        v105 = 134217984;
        v106 = a3;
        _os_log_impl(&dword_254811000, v103, OS_LOG_TYPE_INFO, "Legacy model used without fallback, suggestedMaxLength: %zu", &v105, 0xCu);
      }
    }

    v98 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v25, 1, v26, v27, v28, v29);
    goto LABEL_25;
  }

  if (v24)
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v105 = 134217984;
      v106 = a3;
      _os_log_impl(&dword_254811000, v30, OS_LOG_TYPE_INFO, "Legacy model used with fallback, suggestedMaxLength: %zu", &v105, 0xCu);
    }
  }

  v31 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v25, 2, v26, v27, v28, v29);
  objc_msgSend_setObject_forKey_(v10, v32, v31, *MEMORY[0x277D1A160], v33, v34, v35);

  v36 = MEMORY[0x277CCABB0];
  v42 = objc_msgSend_objectForKey_(v9, v37, @"Input File Size", v38, v39, v40, v41);
  v49 = objc_msgSend_intValue(v42, v43, v44, v45, v46, v47, v48);
  v55 = v49 + 0xFFFFF;
  if (v49 >= 0)
  {
    v55 = v49;
  }

  v56 = objc_msgSend_numberWithInteger_(v36, v50, v55 >> 20, v51, v52, v53, v54);
  objc_msgSend_setObject_forKey_(v10, v57, v56, *MEMORY[0x277D1A148], v58, v59, v60);

  v66 = objc_msgSend_objectForKey_(v9, v61, @"Input Entropy", v62, v63, v64, v65);
  objc_msgSend_setObject_forKey_(v10, v67, v66, *MEMORY[0x277D1A140], v68, v69, v70);

  v76 = objc_msgSend_objectForKey_(v9, v71, @"Input Height", v72, v73, v74, v75);
  objc_msgSend_setObject_forKey_(v10, v77, v76, *MEMORY[0x277D1A138], v78, v79, v80);

  v86 = objc_msgSend_objectForKey_(v9, v81, @"Aspect Ratio", v82, v83, v84, v85);
  objc_msgSend_setObject_forKey_(v10, v87, v86, *MEMORY[0x277D1A130], v88, v89, v90);
LABEL_26:

  v104 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_canConvertPNGToJPEG:(CGImage *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend__imageContainsTranslucentPixels_(a1, a2, a3, v3, v4, v5, v6);
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"YES";
      if (v7)
      {
        v9 = @"NO";
      }

      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_254811000, v8, OS_LOG_TYPE_INFO, "PNG can be converted to JPG: %@", &v12, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7 ^ 1;
}

+ (BOOL)_imageContainsTranslucentPixels:(CGImage *)a3
{
  v41 = *MEMORY[0x277D85DE8];
  AlphaInfo = CGImageGetAlphaInfo(a3);
  if (AlphaInfo > kCGImageAlphaOnly)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_254811000, v5, OS_LOG_TYPE_INFO, "Image alpha channel unknown, translucency check may fail", &v37, 2u);
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (((1 << AlphaInfo) & 0x61) != 0)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          LOWORD(v37) = 0;
          _os_log_impl(&dword_254811000, v6, OS_LOG_TYPE_INFO, "Image has no alpha channel, assuming opaque", &v37, 2u);
        }
      }

      LOBYTE(v7) = 0;
      goto LABEL_41;
    }

    if (((1 << AlphaInfo) & 0x98) != 0)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          LOWORD(v37) = 0;
          _os_log_impl(&dword_254811000, v5, OS_LOG_TYPE_INFO, "Image has alpha channel, checking for translucent pixels", &v37, 2u);
        }

LABEL_20:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_254811000, v5, OS_LOG_TYPE_INFO, "Image has premultiplied alpha channel, checking for translucent pixels", &v37, 2u);
      }

      goto LABEL_20;
    }
  }

  BitsPerComponent = CGImageGetBitsPerComponent(a3);
  if (BitsPerComponent >= 9)
  {
    v9 = 16;
  }

  else
  {
    v9 = 8;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v37 = 134218240;
      v38 = BitsPerComponent;
      v39 = 2048;
      v40 = v9;
      _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, " ==> Image has %ld bits per component, using %ld bpc for test", &v37, 0x16u);
    }
  }

  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v13 = Height;
  if (BitsPerComponent < 9)
  {
    v14 = 1;
  }

  else
  {
    v14 = 8;
  }

  if (BitsPerComponent >= 9)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  if (!is_mul_ok(Width, Height) || (v16 = Width * Height, !is_mul_ok(Width * Height, v14)))
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_40:
      LOBYTE(v7) = 1;
      goto LABEL_41;
    }

    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v37 = 134218240;
      v38 = Width;
      v39 = 2048;
      v40 = v13;
      _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "_imageContainsTranslucentPixels overflowed with %ld width and %ld height", &v37, 0x16u);
    }

LABEL_39:

    goto LABEL_40;
  }

  v20 = v16 * v14;
  v21 = IMOSLoggingEnabled();
  if (v16 * v14 > 0x2FAF080)
  {
    if (!v21)
    {
      goto LABEL_40;
    }

    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v37 = 134217984;
      v38 = v20 / 0xF4240;
      _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "Translucency buffer size (%ld MB) exceeds maximum, cannot test pixels, assuming YES", &v37, 0xCu);
    }

    goto LABEL_39;
  }

  if (v21)
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v37 = 134218240;
      v38 = v20 / 0xF4240uLL;
      v39 = 2048;
      v40 = v20 / 0x3E8uLL;
      _os_log_impl(&dword_254811000, v22, OS_LOG_TYPE_INFO, " ==> Attempting to allocate opacity test buffer of size %ld MB (%ld KB)", &v37, 0x16u);
    }
  }

  v23 = malloc_type_calloc(Width * v13, v14, 0xBE8FF4E6uLL);
  if (!v23)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_40;
    }

    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "Failed to allocate buffer for image translucency test", &v37, 2u);
    }

    goto LABEL_39;
  }

  if (BitsPerComponent >= 9)
  {
    v24 = 1;
  }

  else
  {
    v24 = 7;
  }

  if (BitsPerComponent >= 9)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  else
  {
    DeviceRGB = 0;
  }

  v26 = CGBitmapContextCreate(v23, Width, v13, v9, Width << v15, DeviceRGB, v24);
  v27 = v26;
  if (!v26)
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_254811000, v34, OS_LOG_TYPE_INFO, "Failed to create bitmap context while checking translucency of image, returning YES", &v37, 2u);
      }
    }

    if (DeviceRGB)
    {
      CFRelease(DeviceRGB);
    }

    goto LABEL_40;
  }

  v42.size.width = Width;
  v42.size.height = v13;
  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  CGContextDrawImage(v26, v42, a3);
  if (!v13)
  {
LABEL_73:
    v7 = 0;
    goto LABEL_81;
  }

  v28 = 0;
  v29 = v23 + 3;
  v30 = v23;
  while (!Width)
  {
LABEL_72:
    ++v28;
    v29 += 4 * Width;
    v30 += Width;
    if (v28 == v13)
    {
      goto LABEL_73;
    }
  }

  v31 = v30;
  v32 = v29;
  v33 = Width;
  while (BitsPerComponent <= 8)
  {
    if (*v31 != 255)
    {
      goto LABEL_80;
    }

LABEL_71:
    v32 += 4;
    ++v31;
    if (!--v33)
    {
      goto LABEL_72;
    }
  }

  if (*v32 == -1)
  {
    goto LABEL_71;
  }

LABEL_80:
  v7 = 1;
LABEL_81:
  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = @"NO";
      if (v7)
      {
        v36 = @"YES";
      }

      v37 = 138412290;
      v38 = v36;
      _os_log_impl(&dword_254811000, v35, OS_LOG_TYPE_INFO, "Found translucent pixel(s) in image: %@", &v37, 0xCu);
    }
  }

  CFRelease(v27);
  if (DeviceRGB)
  {
    CFRelease(DeviceRGB);
  }

  free(v23);
LABEL_41:
  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

@end