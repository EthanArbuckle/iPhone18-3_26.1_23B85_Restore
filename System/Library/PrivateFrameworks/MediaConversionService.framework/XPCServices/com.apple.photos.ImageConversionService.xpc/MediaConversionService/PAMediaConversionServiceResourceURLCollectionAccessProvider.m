@interface PAMediaConversionServiceResourceURLCollectionAccessProvider
- (NSURL)blastDoorSourceURL;
- (PAMediaConversionServiceResourceURLCollectionAccessProvider)initWithOptions:(id)a3;
- (id)_blastDoorConvertImageMetadata:(id)a3;
- (id)_blastDoorMetadataWithSourceURL:(id)a3;
- (id)_blastDoorStoreTemporarySourceImageWithImageRef:(CGImage *)a3 sourceURL:(id)a4 error:(id *)a5;
- (id)_blastDoorURLWithImageSourceURL:(id)a3 properties:(id *)a4;
- (id)_blastDoorURLWithVideoSourceURL:(id)a3 sourceMetadata:(id)a4;
- (id)propertiesForVideoComplementURL:(id)a3;
- (id)validateAccessForURL:(id)a3 role:(id)a4;
@end

@implementation PAMediaConversionServiceResourceURLCollectionAccessProvider

- (id)_blastDoorConvertImageMetadata:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = kPFMediaPropertyCreationDate;
  v6 = [v3 imageDate];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [v4 setObject:v6 forKey:v5];
  }

  if ([v3 has_timezoneOffset])
  {
    v9 = kPFMediaPropertyTimeZoneOffsetSeconds;
    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 timezoneOffset]);
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      [v4 setObject:v10 forKey:v9];
    }
  }

  if ([v3 has_subsecTimeOriginal])
  {
    [v3 subsecTimeOriginal];
    v13 = [NSNumber numberWithDouble:?];
    v14 = v13;
    if (kCGImagePropertyExifSubsecTimeOriginal)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      [v4 setObject:v13 forKey:kCGImagePropertyExifSubsecTimeOriginal];
    }
  }

  if ([v3 has_rawOrientation])
  {
    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 rawOrientation]);
    v17 = v16;
    if (kCGImagePropertyOrientation && v16)
    {
      [v4 setObject:v16 forKey:kCGImagePropertyOrientation];
    }
  }

  if ([v3 has_rawPixelWidth])
  {
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 rawPixelWidth]);
    v19 = v18;
    if (kCGImagePropertyPixelWidth && v18)
    {
      [v4 setObject:v18 forKey:kCGImagePropertyPixelWidth];
    }
  }

  if ([v3 has_rawPixelHeight])
  {
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 rawPixelHeight]);
    v21 = v20;
    if (kCGImagePropertyPixelHeight && v20)
    {
      [v4 setObject:v20 forKey:kCGImagePropertyPixelHeight];
    }
  }

  v22 = [v3 lensModel];
  v23 = v22;
  if (kCGImagePropertyExifLensModel && v22)
  {
    [v4 setObject:v22 forKey:kCGImagePropertyExifLensModel];
  }

  v24 = [v3 lensMake];
  v25 = v24;
  if (kCGImagePropertyExifLensMake && v24)
  {
    [v4 setObject:v24 forKey:kCGImagePropertyExifLensMake];
  }

  v26 = [v3 profileName];
  v27 = v26;
  if (kCGImagePropertyProfileName && v26)
  {
    [v4 setObject:v26 forKey:kCGImagePropertyProfileName];
  }

  if ([v3 has_processingFlags])
  {
    v28 = kPFImagePropertyCustomPhotoProcessingFlags;
    v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 processingFlags]);
    v30 = v29;
    if (v28 && v29)
    {
      [v4 setObject:v29 forKey:v28];
    }
  }

  if ([v3 has_isCustomRendered])
  {
    v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isCustomRendered]);
    v32 = v31;
    if (kCGImagePropertyExifCustomRendered && v31)
    {
      [v4 setObject:v31 forKey:kCGImagePropertyExifCustomRendered];
    }
  }

  if ([v3 has_apertureValue])
  {
    [v3 apertureValue];
    v33 = [NSNumber numberWithDouble:?];
    v34 = v33;
    if (kCGImagePropertyExifFNumber && v33)
    {
      [v4 setObject:v33 forKey:kCGImagePropertyExifFNumber];
    }
  }

  if ([v3 has_exposureBiasValue])
  {
    v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 exposureBiasValue]);
    v36 = v35;
    if (kCGImagePropertyExifExposureBiasValue && v35)
    {
      [v4 setObject:v35 forKey:kCGImagePropertyExifExposureBiasValue];
    }
  }

  if ([v3 has_flash])
  {
    v37 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 flash]);
    v38 = v37;
    if (kCGImagePropertyExifFlash && v37)
    {
      [v4 setObject:v37 forKey:kCGImagePropertyExifFlash];
    }
  }

  if ([v3 has_focalLength])
  {
    [v3 focalLength];
    v39 = [NSNumber numberWithDouble:?];
    v40 = v39;
    if (kCGImagePropertyExifFocalLength && v39)
    {
      [v4 setObject:v39 forKey:kCGImagePropertyExifFocalLength];
    }
  }

  if ([v3 has_focalLenIn35mmFilm])
  {
    [v3 focalLenIn35mmFilm];
    v41 = [NSNumber numberWithDouble:?];
    v42 = v41;
    if (kCGImagePropertyExifFocalLenIn35mmFilm && v41)
    {
      [v4 setObject:v41 forKey:kCGImagePropertyExifFocalLenIn35mmFilm];
    }
  }

  if ([v3 has_isoRatingValue])
  {
    v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 isoRatingValue]);
    v44 = v43;
    if (kCGImagePropertyExifISOSpeed && v43)
    {
      [v4 setObject:v43 forKey:kCGImagePropertyExifISOSpeed];
    }
  }

  if ([v3 has_meteringMode])
  {
    v45 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 meteringMode]);
    v46 = v45;
    if (kCGImagePropertyExifMeteringMode && v45)
    {
      [v4 setObject:v45 forKey:kCGImagePropertyExifMeteringMode];
    }
  }

  if ([v3 has_shutterSpeed])
  {
    [v3 shutterSpeed];
    v47 = [NSNumber numberWithDouble:?];
    v48 = v47;
    if (kCGImagePropertyExifExposureTime && v47)
    {
      [v4 setObject:v47 forKey:kCGImagePropertyExifExposureTime];
    }
  }

  v49 = [v3 model];
  v50 = v49;
  if (kCGImagePropertyTIFFModel && v49)
  {
    [v4 setObject:v49 forKey:kCGImagePropertyTIFFModel];
  }

  v51 = [v3 make];
  v52 = v51;
  if (kCGImagePropertyTIFFMake && v51)
  {
    [v4 setObject:v51 forKey:kCGImagePropertyTIFFMake];
  }

  if ([v3 has_whiteBalance])
  {
    v53 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 whiteBalance]);
    v54 = v53;
    if (kCGImagePropertyExifWhiteBalance && v53)
    {
      [v4 setObject:v53 forKey:kCGImagePropertyExifWhiteBalance];
    }
  }

  if ([v3 has_lightSource])
  {
    v55 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 lightSource]);
    v56 = v55;
    if (kCGImagePropertyExifLightSource && v55)
    {
      [v4 setObject:v55 forKey:kCGImagePropertyExifLightSource];
    }
  }

  if ([v3 has_ciffWhiteBalanceIndex])
  {
    v57 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 ciffWhiteBalanceIndex]);
    v58 = v57;
    if (kCGImagePropertyCIFFWhiteBalanceIndex && v57)
    {
      [v4 setObject:v57 forKey:kCGImagePropertyCIFFWhiteBalanceIndex];
    }
  }

  if ([v3 has_hdrGain])
  {
    v59 = kPFImagePropertyHDRGain;
    [v3 hdrGain];
    v60 = [NSNumber numberWithDouble:?];
    v61 = v60;
    if (v59 && v60)
    {
      [v4 setObject:v60 forKey:v59];
    }
  }

  if ([v3 has_hasHDRGainMap])
  {
    v62 = kPFImagePropertyHasHDRGainMap;
    v63 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 hasHDRGainMap]);
    v64 = v63;
    if (v62 && v63)
    {
      [v4 setObject:v63 forKey:v62];
    }
  }

  if ([v3 has_videoDynamicRange])
  {
    v65 = kPFVideoPropertyVideoDynamicRange;
    v66 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 videoDynamicRange]);
    v67 = v66;
    if (v65 && v66)
    {
      [v4 setObject:v66 forKey:v65];
    }
  }

  if ([v3 has_videoContainsCinematicData])
  {
    v68 = kPFVideoPropertyVideoContainsCinematicData;
    v69 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 videoContainsCinematicData]);
    v70 = v69;
    if (v68 && v69)
    {
      [v4 setObject:v69 forKey:v68];
    }
  }

  v71 = kPFMediaPropertyLivePhotoPairingIdentifier;
  v72 = [v3 videoComplementMediaGroupId];
  v73 = v72;
  if (v71 && v72)
  {
    [v4 setObject:v72 forKey:v71];
  }

  if ([v3 has_gifDelayTime])
  {
    [v3 gifDelayTime];
    v74 = [NSNumber numberWithDouble:?];
    v75 = v74;
    if (kCGImagePropertyGIFDelayTime && v74)
    {
      [v4 setObject:v74 forKey:kCGImagePropertyGIFDelayTime];
    }
  }

  if ([v3 has_variationIdentifier])
  {
    v76 = kPFVideoPropertyPlaybackVariationIdentifier;
    v77 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 variationIdentifier]);
    v78 = v77;
    if (v76 && v77)
    {
      [v4 setObject:v77 forKey:v76];
    }
  }

  if ([v3 has_videoComplementDurationValue])
  {
    v79 = kPFVideoPropertyVideoComplVideoDurationValue;
    [v3 videoComplementDurationValue];
    v80 = [NSNumber numberWithDouble:?];
    v81 = v80;
    if (v79 && v80)
    {
      [v4 setObject:v80 forKey:v79];
    }
  }

  if ([v3 has_videoComplementDurationTimescale])
  {
    v82 = kPFVideoPropertyVideoComplVideoDurationTimescale;
    [v3 videoComplementDurationTimescale];
    v83 = [NSNumber numberWithDouble:?];
    v84 = v83;
    if (v82 && v83)
    {
      [v4 setObject:v83 forKey:v82];
    }
  }

  if ([v3 has_videoComplementImageDisplayValue])
  {
    v85 = kPFVideoPropertyVideoComplVideoImageDisplayValue;
    [v3 videoComplementImageDisplayValue];
    v86 = [NSNumber numberWithDouble:?];
    v87 = v86;
    if (v85 && v86)
    {
      [v4 setObject:v86 forKey:v85];
    }
  }

  if ([v3 has_videoComplementImageDisplayTimescale])
  {
    v88 = kPFVideoPropertyVideoComplVideoImageDisplayTimescale;
    [v3 videoComplementImageDisplayTimescale];
    v89 = [NSNumber numberWithDouble:?];
    v90 = v89;
    if (v88 && v89)
    {
      [v4 setObject:v89 forKey:v88];
    }
  }

  if ([v3 has_videoDurationValue])
  {
    v91 = kPFVideoPropertyVideoDurationValue;
    [v3 videoDurationValue];
    v92 = [NSNumber numberWithDouble:?];
    v93 = v92;
    if (v91 && v92)
    {
      [v4 setObject:v92 forKey:v91];
    }
  }

  if ([v3 has_videoDurationTimescale])
  {
    v94 = kPFVideoPropertyVideoDurationTimescale;
    [v3 videoDurationTimescale];
    v95 = [NSNumber numberWithDouble:?];
    v96 = v95;
    if (v94 && v95)
    {
      [v4 setObject:v95 forKey:v94];
    }
  }

  if ([v3 has_avFPS])
  {
    v97 = kPFVideoPropertyAVFPS;
    [v3 avFPS];
    v98 = [NSNumber numberWithDouble:?];
    v99 = v98;
    if (v97 && v98)
    {
      [v4 setObject:v98 forKey:v97];
    }
  }

  v100 = kPFVideoPropertyCustomCodecFourCharCode;
  v101 = [v3 codecFourCharCode];
  v102 = v101;
  if (v100 && v101)
  {
    [v4 setObject:v101 forKey:v100];
  }

  v103 = kPFVideoPropertyCaptureMode;
  v104 = [v3 captureMode];
  v105 = v104;
  if (v103 && v104)
  {
    [v4 setObject:v104 forKey:v103];
  }

  v106 = kPFVideoPropertyVideoIsMontage;
  v107 = [v3 isVideoMontage];
  v108 = v107;
  if (v106 && v107)
  {
    [v4 setObject:v107 forKey:v106];
  }

  if ([v3 has_isProRes])
  {
    v109 = kPFVideoPropertyIsProRes;
    v110 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isProRes]);
    v111 = v110;
    if (v109 && v110)
    {
      [v4 setObject:v110 forKey:v109];
    }
  }

  v112 = kPFMediaPropertyOriginatingAssetIdentifier;
  v113 = [v3 originatingAssetIdentifier];
  v114 = v113;
  if (v112 && v113)
  {
    [v4 setObject:v113 forKey:v112];
  }

  if ([v3 has_longitude])
  {
    [v3 longitude];
    v115 = [NSNumber numberWithDouble:?];
    v116 = v115;
    if (kCGImagePropertyGPSLongitude && v115)
    {
      [v4 setObject:v115 forKey:kCGImagePropertyGPSLongitude];
    }
  }

  if ([v3 has_latitude])
  {
    [v3 latitude];
    v117 = [NSNumber numberWithDouble:?];
    v118 = v117;
    if (kCGImagePropertyGPSLatitude && v117)
    {
      [v4 setObject:v117 forKey:kCGImagePropertyGPSLatitude];
    }
  }

  if ([v3 has_gpsSpeed])
  {
    [v3 gpsSpeed];
    v119 = [NSNumber numberWithDouble:?];
    v120 = v119;
    if (kCGImagePropertyGPSSpeed && v119)
    {
      [v4 setObject:v119 forKey:kCGImagePropertyGPSSpeed];
    }
  }

  v121 = [v3 gpsSpeedRef];
  v122 = v121;
  if (kCGImagePropertyGPSSpeedRef && v121)
  {
    [v4 setObject:v121 forKey:kCGImagePropertyGPSSpeedRef];
  }

  v123 = kPFImagePropertyExifGPSDateTime;
  v124 = [v3 gpsTimestamp];
  v125 = v124;
  if (v123 && v124)
  {
    [v4 setObject:v124 forKey:v123];
  }

  if ([v3 has_gpsHPositioningError])
  {
    [v3 gpsHPositioningError];
    v126 = [NSNumber numberWithDouble:?];
    v127 = v126;
    if (kCGImagePropertyGPSHPositioningError && v126)
    {
      [v4 setObject:v126 forKey:kCGImagePropertyGPSHPositioningError];
    }
  }

  if ([v3 has_altitude])
  {
    [v3 altitude];
    v128 = [NSNumber numberWithDouble:?];
    v129 = v128;
    if (kCGImagePropertyGPSAltitude && v128)
    {
      [v4 setObject:v128 forKey:kCGImagePropertyGPSAltitude];
    }
  }

  if ([v3 has_imageDirection])
  {
    [v3 imageDirection];
    v130 = [NSNumber numberWithDouble:?];
    v131 = v130;
    if (kCGImagePropertyGPSImgDirection && v130)
    {
      [v4 setObject:v130 forKey:kCGImagePropertyGPSImgDirection];
    }
  }

  v132 = [v3 imageDirectionRef];
  v133 = v132;
  if (kCGImagePropertyGPSImgDirectionRef && v132)
  {
    [v4 setObject:v132 forKey:kCGImagePropertyGPSImgDirectionRef];
  }

  if ([v3 has_isPhotoBooth])
  {
    v134 = kPFImagePropertyIsPhotoBooth;
    v135 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isPhotoBooth]);
    v136 = v135;
    if (v134 && v135)
    {
      [v4 setObject:v135 forKey:v134];
    }
  }

  v137 = [v3 userComment];
  v138 = v137;
  if (kCGImagePropertyExifUserComment && v137)
  {
    [v4 setObject:v137 forKey:kCGImagePropertyExifUserComment];
  }

  v139 = kPFImagePropertyBurstUuid;
  v140 = [v3 burstUuid];
  v141 = v140;
  if (v139 && v140)
  {
    [v4 setObject:v140 forKey:v139];
  }

  if ([v3 has_isFrontFacingCamera])
  {
    v142 = kPFImagePropertyFrontFacingCamera;
    v143 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isFrontFacingCamera]);
    v144 = v143;
    if (v142 && v143)
    {
      [v4 setObject:v143 forKey:v142];
    }
  }

  v145 = kPFImagePropertySpatialOverCaptureIdentifier;
  v146 = [v3 spatialOverCaptureIdentifier];
  v147 = v146;
  if (v145 && v146)
  {
    [v4 setObject:v146 forKey:v145];
  }

  if ([v3 has_hasSpatialAudio])
  {
    v148 = kPFImagePropertyHasSpatialAudio;
    v149 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 hasSpatialAudio]);
    v150 = v149;
    if (v148 && v149)
    {
      [v4 setObject:v149 forKey:v148];
    }
  }

  if ([v3 has_fileSize])
  {
    v151 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 fileSize]);
    v152 = v151;
    if (NSFileSize && v151)
    {
      [v4 setObject:v151 forKey:NSFileSize];
    }
  }

  v153 = kPFFilePropertyOriginalFilename;
  v154 = [v3 originalFileName];
  v155 = v154;
  if (v153 && v154)
  {
    [v4 setObject:v154 forKey:v153];
  }

  if ([v3 has_semanticStyleSceneBias])
  {
    v156 = kPFImagePropertySemanticStyleSceneBias;
    [v3 semanticStyleSceneBias];
    v157 = [NSNumber numberWithDouble:?];
    v158 = v157;
    if (v156 && v157)
    {
      [v4 setObject:v157 forKey:v156];
    }
  }

  if ([v3 has_semanticStyleWarmthBias])
  {
    v159 = kPFImagePropertySemanticStyleWarmthBias;
    [v3 semanticStyleWarmthBias];
    v160 = [NSNumber numberWithDouble:?];
    v161 = v160;
    if (v159 && v160)
    {
      [v4 setObject:v160 forKey:v159];
    }
  }

  if ([v3 has_semanticStyleRenderingVersion])
  {
    v162 = kPFImagePropertySemanticStyleRenderingVersion;
    v163 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 semanticStyleRenderingVersion]);
    v164 = v163;
    if (v162 && v163)
    {
      [v4 setObject:v163 forKey:v162];
    }
  }

  if ([v3 has_semanticStylePreset])
  {
    v165 = kPFImagePropertySemanticStylePreset;
    v166 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 semanticStylePreset]);
    v167 = v166;
    if (v165 && v166)
    {
      [v4 setObject:v166 forKey:v165];
    }
  }

  if ([v3 has_smartStyleToneBias])
  {
    v168 = kPFImagePropertySmartStyleToneBias;
    [v3 smartStyleToneBias];
    v169 = [NSNumber numberWithDouble:?];
    v170 = v169;
    if (v168 && v169)
    {
      [v4 setObject:v169 forKey:v168];
    }
  }

  if ([v3 has_smartStyleColorBias])
  {
    v171 = kPFImagePropertySmartStyleColorBias;
    [v3 smartStyleColorBias];
    v172 = [NSNumber numberWithDouble:?];
    v173 = v172;
    if (v171 && v172)
    {
      [v4 setObject:v172 forKey:v171];
    }
  }

  if ([v3 has_smartStyleIntensity])
  {
    v174 = kPFImagePropertySmartStyleIntensity;
    [v3 smartStyleIntensity];
    v175 = [NSNumber numberWithDouble:?];
    v176 = v175;
    if (v174 && v175)
    {
      [v4 setObject:v175 forKey:v174];
    }
  }

  if ([v3 has_smartStyleCast])
  {
    v177 = kPFImagePropertySmartStyleCast;
    [v3 smartStyleCast];
    v178 = [NSNumber numberWithDouble:?];
    v179 = v178;
    if (v177 && v178)
    {
      [v4 setObject:v178 forKey:v177];
    }
  }

  if ([v3 has_smartStyleRenderingVersion])
  {
    v180 = kPFImagePropertySmartStyleRenderingVersion;
    v181 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 smartStyleRenderingVersion]);
    v182 = v181;
    if (v180 && v181)
    {
      [v4 setObject:v181 forKey:v180];
    }
  }

  if ([v3 has_smartStyleIsReversible])
  {
    v183 = kPFImagePropertySmartStyleIsReversible;
    v184 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 smartStyleIsReversible]);
    v185 = v184;
    if (v183 && v184)
    {
      [v4 setObject:v184 forKey:v183];
    }
  }

  v186 = kPFImagePropertyIsHDR;
  v187 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isHDR]);
  v188 = v187;
  if (v186 && v187)
  {
    [v4 setObject:v187 forKey:v186];
  }

  v189 = kPFImagePropertyHasISOGainMap;
  v190 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 hasISOGainMap]);
  v191 = v190;
  if (v189 && v190)
  {
    [v4 setObject:v190 forKey:v189];
  }

  v192 = kPFImagePropertyIsAnimatedImage;
  v193 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isAnimatedImage]);
  v194 = v193;
  if (v192 && v193)
  {
    [v4 setObject:v193 forKey:v192];
  }

  v195 = kPFImagePropertyStillImageCaptureFlags;
  v196 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 stillImageCaptureFlags]);
  v197 = v196;
  if (v195 && v196)
  {
    [v4 setObject:v196 forKey:v195];
  }

  v198 = kPFImagePropertyExifFlashFired;
  v199 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 exifFlashFired]);
  v200 = v199;
  if (v198 && v199)
  {
    [v4 setObject:v199 forKey:v198];
  }

  v201 = kPFImagePropertyIsAlchemist;
  v202 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isAlchemist]);
  v203 = v202;
  if (v201 && v202)
  {
    [v4 setObject:v202 forKey:v201];
  }

  [v3 exifAuxFlashCompensation];
  v204 = [NSNumber numberWithDouble:?];
  v205 = v204;
  if (kCGImagePropertyExifAuxFlashCompensation && v204)
  {
    [v4 setObject:v204 forKey:kCGImagePropertyExifAuxFlashCompensation];
  }

  v206 = [v3 IPTCCredit];
  v207 = v206;
  if (kCGImagePropertyIPTCCredit && v206)
  {
    [v4 setObject:v206 forKey:kCGImagePropertyIPTCCredit];
  }

  v208 = kPFVideoPropertyCaptureModeTimelapse;
  v209 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 captureModeTimelapse]);
  v210 = v209;
  if (v208 && v209)
  {
    [v4 setObject:v209 forKey:v208];
  }

  v211 = kPFImagePropertyIsThreeImageStereoHEIC;
  v212 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isThreeImageStereoHEIC]);
  v213 = v212;
  if (v211 && v212)
  {
    [v4 setObject:v212 forKey:v211];
  }

  v214 = kPFImagePropertyGenerativeAIImageType;
  [v3 generativeAIImageType];
  v215 = [NSNumber numberWithDouble:?];
  v216 = v215;
  if (v214 && v215)
  {
    [v4 setObject:v215 forKey:v214];
  }

  v217 = [v3 uniformTypeIdentifier];
  if (!v217)
  {
    v218 = [v3 originalFileName];
    v219 = [v218 pathExtension];
    v220 = [PFUniformTypeUtilities typeWithFilenameExtension:v219];

    v217 = [v220 identifier];
  }

  if (v217 && kPFFilePropertyUniformTypeIdentifier)
  {
    [v4 setObject:v217 forKey:?];
  }

  v221 = v4;

  return v4;
}

- (id)_blastDoorStoreTemporarySourceImageWithImageRef:(CGImage *)a3 sourceURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = v7;
  if (!a3)
  {
    v31 = NSDebugDescriptionErrorKey;
    v11 = [NSString stringWithFormat:@"Invalid image access for the blast door reference. Source: %@", v7];
    v32 = v11;
    v16 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v22 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v16];
    goto LABEL_12;
  }

  v9 = [v7 stringByDeletingPathExtension];
  v10 = [PFUniformTypeUtilities preferredOrFallbackFilenameExtensionForType:UTTypeJPEG];
  v11 = [v9 stringByAppendingPathExtension:v10];

  v12 = NSTemporaryDirectory();
  v39[0] = v12;
  v13 = +[NSUUID UUID];
  v14 = [v13 UUIDString];
  v39[1] = v14;
  v39[2] = v11;
  v15 = [NSArray arrayWithObjects:v39 count:3];
  v16 = [NSURL fileURLWithPathComponents:v15];

  v17 = +[NSFileManager defaultManager];
  v18 = [v16 URLByDeletingLastPathComponent];
  v30 = 0;
  LOBYTE(v15) = [v17 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v30];
  v19 = v30;

  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v19;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Failed to create tempory source location for blast door reference. Error: %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v20 = [UTTypeJPEG identifier];
  v21 = CGImageDestinationCreateWithURL(v16, v20, 1uLL, 0);

  if (!v21)
  {
LABEL_9:
    v33 = NSDebugDescriptionErrorKey;
    v23 = [NSString stringWithFormat:@"Failed to access temporary destination location for the blast door reference to %@. Source: %@", v16, v8];
    v34 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v22 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v24];

    a3 = 0;
    goto LABEL_12;
  }

  CGImageDestinationAddImage(v21, a3, 0);
  if (CGImageDestinationFinalize(v21))
  {
    a3 = v16;
  }

  else
  {
    v35 = NSDebugDescriptionErrorKey;
    v25 = [NSString stringWithFormat:@"Failed to write temporary image from blast door reference to %@. Source: %@", v16, v8];
    v36 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v27 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v26];

    a3 = 0;
    v19 = v27;
  }

  CFRelease(v21);
  v22 = v19;
LABEL_12:

  if (!v22 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    if (!a5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *buf = 138543362;
  v38 = v22;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Failed to process blast door temporary source. Error: %{public}@", buf, 0xCu);
  if (a5)
  {
LABEL_15:
    v28 = v22;
    *a5 = v22;
  }

LABEL_16:

  return a3;
}

- (id)_blastDoorURLWithVideoSourceURL:(id)a3 sourceMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1000095B4;
  v35 = sub_1000095C4;
  v36 = 0;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:kCGImagePropertyPixelWidth];
    [v9 floatValue];
    v11 = v10;

    v12 = [v8 objectForKeyedSubscript:kCGImagePropertyPixelHeight];
    [v12 floatValue];
    v14 = v13;

    if (v11 >= v14)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    v16 = fabsf(v15);
    if (v15 != 0.0 && v16 <= 1200.0)
    {
      v18 = v16;
    }

    else
    {
      v18 = 1200.0;
    }
  }

  else
  {
    v18 = 1200.0;
  }

  v19 = dispatch_block_create(0, &stru_10003D3D0);
  blastdoorInterface = self->_blastdoorInterface;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000095CC;
  v27[3] = &unk_10003D368;
  v30 = &v31;
  v27[4] = self;
  v21 = v6;
  v28 = v21;
  v22 = v19;
  v29 = v22;
  LODWORD(v23) = 1.0;
  *&v24 = v18;
  [(IMMessagesBlastDoorInterface *)blastdoorInterface generateMoviePreviewForAttachmentWithFileURL:v21 maxPixelDimension:v27 minThumbnailPxSize:v24 scale:0.0 resultHandler:0.0, v23];
  dispatch_block_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  v25 = v32[5];

  _Block_object_dispose(&v31, 8);

  return v25;
}

- (id)_blastDoorURLWithImageSourceURL:(id)a3 properties:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000095B4;
  v28 = sub_1000095C4;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000095B4;
  v22 = sub_1000095C4;
  v23 = 0;
  v7 = dispatch_block_create(0, &stru_10003D388);
  blastdoorInterface = self->_blastdoorInterface;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009D18;
  v13[3] = &unk_10003D3B0;
  v16 = &v24;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v17 = &v18;
  v10 = v7;
  v15 = v10;
  [(IMMessagesBlastDoorInterface *)blastdoorInterface generatePreviewforAttachmentWithfileURL:v9 resultHandler:v13];
  dispatch_block_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    *a4 = v19[5];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (id)_blastDoorMetadataWithSourceURL:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000095B4;
  v19 = sub_1000095C4;
  v20 = 0;
  v5 = dispatch_block_create(0, &stru_10003D340);
  blastdoorInterface = self->_blastdoorInterface;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A324;
  v11[3] = &unk_10003D368;
  v14 = &v15;
  v11[4] = self;
  v7 = v4;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  [(IMMessagesBlastDoorInterface *)blastdoorInterface generateMetadataforAttachmentWithfileURL:v7 resultHandler:v11];
  dispatch_block_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)propertiesForVideoComplementURL:(id)a3
{
  if (a3)
  {
    v4 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)self _blastDoorMetadataWithSourceURL:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)validateAccessForURL:(id)a3 role:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if ([(PAMediaConversionServiceResourceURLCollectionAccessProvider *)self isBlastDoorAccessRequired])
  {
    v9 = v8;
    if ([v7 isEqualToString:@"PAMediaConversionResourceRoleMainResource"])
    {
      v10 = self;
      objc_sync_enter(v10);
      if (!v10->_blastDoorSourceURL)
      {
        if (v10->_isImageMedia)
        {
          v18 = 0;
          v11 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)v10 _blastDoorURLWithImageSourceURL:v8 properties:&v18];
          v12 = v18;
          blastDoorSourceURL = v10->_blastDoorSourceURL;
          v10->_blastDoorSourceURL = v11;

          [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)v10 setBlastDoorMainSourceProperties:v12];
        }

        else
        {
          v14 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)v10 _blastDoorMetadataWithSourceURL:v8];
          [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)v10 setBlastDoorMainSourceProperties:v14];

          v12 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)v10 blastDoorMainSourceProperties];
          v15 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)v10 _blastDoorURLWithVideoSourceURL:v8 sourceMetadata:v12];
          v16 = v10->_blastDoorSourceURL;
          v10->_blastDoorSourceURL = v15;
        }
      }

      v9 = v10->_blastDoorSourceURL;

      objc_sync_exit(v10);
    }
  }

  return v9;
}

- (NSURL)blastDoorSourceURL
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_blastDoorSourceURL;
  objc_sync_exit(v2);

  return v3;
}

- (PAMediaConversionServiceResourceURLCollectionAccessProvider)initWithOptions:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PAMediaConversionServiceResourceURLCollectionAccessProvider;
  v5 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)&v21 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [v4 objectForKeyedSubscript:@"PAMediaConversionServiceOptionBlastDoorMediaIsImageKey"];
  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"PAMediaConversionServiceOptionBlastDoorMediaIsImageKey"];
    v5->_isImageMedia = [v7 BOOLValue];
  }

  else
  {
    v5->_isImageMedia = 1;
  }

  v8 = [v4 objectForKeyedSubscript:@"PAMediaConversionServiceOptionRequiresBlastDoorAccessKey"];
  v5->_blastDoorAccessRequired = [v8 BOOLValue];

  if (!v5->_blastDoorAccessRequired)
  {
    goto LABEL_12;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v9 = qword_100045B08;
  v30 = qword_100045B08;
  if (!qword_100045B08)
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10000AAD0;
    v25 = &unk_10003D3F8;
    v26 = &v27;
    sub_10000AAD0(&v22);
    v9 = v28[3];
  }

  v10 = v9;
  _Block_object_dispose(&v27, 8);
  v11 = [v9 alloc];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v12 = qword_100045B18;
  v30 = qword_100045B18;
  if (!qword_100045B18)
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10000ACBC;
    v25 = &unk_10003D3F8;
    v26 = &v27;
    v13 = sub_100009958();
    v14 = dlsym(v13, "BlastDoorInstanceTypeHubble");
    *(v26[1] + 24) = v14;
    qword_100045B18 = *(v26[1] + 24);
    v12 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (v12)
  {
    v15 = *v12;
    v16 = [v11 initWithBlastDoorInstanceType:v15];
    blastdoorInterface = v5->_blastdoorInterface;
    v5->_blastdoorInterface = v16;

LABEL_12:
    return v5;
  }

  v19 = +[NSAssertionHandler currentHandler];
  v20 = [NSString stringWithUTF8String:"BlastDoorInstanceType getBlastDoorInstanceTypeHubble(void)"];
  [v19 handleFailureInFunction:v20 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

@end