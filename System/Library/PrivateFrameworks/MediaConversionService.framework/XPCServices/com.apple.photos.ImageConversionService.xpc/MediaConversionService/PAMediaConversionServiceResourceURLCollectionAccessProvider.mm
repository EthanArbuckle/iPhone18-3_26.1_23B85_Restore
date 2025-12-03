@interface PAMediaConversionServiceResourceURLCollectionAccessProvider
- (NSURL)blastDoorSourceURL;
- (PAMediaConversionServiceResourceURLCollectionAccessProvider)initWithOptions:(id)options;
- (id)_blastDoorConvertImageMetadata:(id)metadata;
- (id)_blastDoorMetadataWithSourceURL:(id)l;
- (id)_blastDoorStoreTemporarySourceImageWithImageRef:(CGImage *)ref sourceURL:(id)l error:(id *)error;
- (id)_blastDoorURLWithImageSourceURL:(id)l properties:(id *)properties;
- (id)_blastDoorURLWithVideoSourceURL:(id)l sourceMetadata:(id)metadata;
- (id)propertiesForVideoComplementURL:(id)l;
- (id)validateAccessForURL:(id)l role:(id)role;
@end

@implementation PAMediaConversionServiceResourceURLCollectionAccessProvider

- (id)_blastDoorConvertImageMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = kPFMediaPropertyCreationDate;
  imageDate = [metadataCopy imageDate];
  v7 = imageDate;
  if (v5)
  {
    v8 = imageDate == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [v4 setObject:imageDate forKey:v5];
  }

  if ([metadataCopy has_timezoneOffset])
  {
    v9 = kPFMediaPropertyTimeZoneOffsetSeconds;
    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy timezoneOffset]);
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

  if ([metadataCopy has_subsecTimeOriginal])
  {
    [metadataCopy subsecTimeOriginal];
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

  if ([metadataCopy has_rawOrientation])
  {
    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy rawOrientation]);
    v17 = v16;
    if (kCGImagePropertyOrientation && v16)
    {
      [v4 setObject:v16 forKey:kCGImagePropertyOrientation];
    }
  }

  if ([metadataCopy has_rawPixelWidth])
  {
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [metadataCopy rawPixelWidth]);
    v19 = v18;
    if (kCGImagePropertyPixelWidth && v18)
    {
      [v4 setObject:v18 forKey:kCGImagePropertyPixelWidth];
    }
  }

  if ([metadataCopy has_rawPixelHeight])
  {
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [metadataCopy rawPixelHeight]);
    v21 = v20;
    if (kCGImagePropertyPixelHeight && v20)
    {
      [v4 setObject:v20 forKey:kCGImagePropertyPixelHeight];
    }
  }

  lensModel = [metadataCopy lensModel];
  v23 = lensModel;
  if (kCGImagePropertyExifLensModel && lensModel)
  {
    [v4 setObject:lensModel forKey:kCGImagePropertyExifLensModel];
  }

  lensMake = [metadataCopy lensMake];
  v25 = lensMake;
  if (kCGImagePropertyExifLensMake && lensMake)
  {
    [v4 setObject:lensMake forKey:kCGImagePropertyExifLensMake];
  }

  profileName = [metadataCopy profileName];
  v27 = profileName;
  if (kCGImagePropertyProfileName && profileName)
  {
    [v4 setObject:profileName forKey:kCGImagePropertyProfileName];
  }

  if ([metadataCopy has_processingFlags])
  {
    v28 = kPFImagePropertyCustomPhotoProcessingFlags;
    v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [metadataCopy processingFlags]);
    v30 = v29;
    if (v28 && v29)
    {
      [v4 setObject:v29 forKey:v28];
    }
  }

  if ([metadataCopy has_isCustomRendered])
  {
    v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy isCustomRendered]);
    v32 = v31;
    if (kCGImagePropertyExifCustomRendered && v31)
    {
      [v4 setObject:v31 forKey:kCGImagePropertyExifCustomRendered];
    }
  }

  if ([metadataCopy has_apertureValue])
  {
    [metadataCopy apertureValue];
    v33 = [NSNumber numberWithDouble:?];
    v34 = v33;
    if (kCGImagePropertyExifFNumber && v33)
    {
      [v4 setObject:v33 forKey:kCGImagePropertyExifFNumber];
    }
  }

  if ([metadataCopy has_exposureBiasValue])
  {
    v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy exposureBiasValue]);
    v36 = v35;
    if (kCGImagePropertyExifExposureBiasValue && v35)
    {
      [v4 setObject:v35 forKey:kCGImagePropertyExifExposureBiasValue];
    }
  }

  if ([metadataCopy has_flash])
  {
    v37 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy flash]);
    v38 = v37;
    if (kCGImagePropertyExifFlash && v37)
    {
      [v4 setObject:v37 forKey:kCGImagePropertyExifFlash];
    }
  }

  if ([metadataCopy has_focalLength])
  {
    [metadataCopy focalLength];
    v39 = [NSNumber numberWithDouble:?];
    v40 = v39;
    if (kCGImagePropertyExifFocalLength && v39)
    {
      [v4 setObject:v39 forKey:kCGImagePropertyExifFocalLength];
    }
  }

  if ([metadataCopy has_focalLenIn35mmFilm])
  {
    [metadataCopy focalLenIn35mmFilm];
    v41 = [NSNumber numberWithDouble:?];
    v42 = v41;
    if (kCGImagePropertyExifFocalLenIn35mmFilm && v41)
    {
      [v4 setObject:v41 forKey:kCGImagePropertyExifFocalLenIn35mmFilm];
    }
  }

  if ([metadataCopy has_isoRatingValue])
  {
    v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy isoRatingValue]);
    v44 = v43;
    if (kCGImagePropertyExifISOSpeed && v43)
    {
      [v4 setObject:v43 forKey:kCGImagePropertyExifISOSpeed];
    }
  }

  if ([metadataCopy has_meteringMode])
  {
    v45 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy meteringMode]);
    v46 = v45;
    if (kCGImagePropertyExifMeteringMode && v45)
    {
      [v4 setObject:v45 forKey:kCGImagePropertyExifMeteringMode];
    }
  }

  if ([metadataCopy has_shutterSpeed])
  {
    [metadataCopy shutterSpeed];
    v47 = [NSNumber numberWithDouble:?];
    v48 = v47;
    if (kCGImagePropertyExifExposureTime && v47)
    {
      [v4 setObject:v47 forKey:kCGImagePropertyExifExposureTime];
    }
  }

  model = [metadataCopy model];
  v50 = model;
  if (kCGImagePropertyTIFFModel && model)
  {
    [v4 setObject:model forKey:kCGImagePropertyTIFFModel];
  }

  make = [metadataCopy make];
  v52 = make;
  if (kCGImagePropertyTIFFMake && make)
  {
    [v4 setObject:make forKey:kCGImagePropertyTIFFMake];
  }

  if ([metadataCopy has_whiteBalance])
  {
    v53 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy whiteBalance]);
    v54 = v53;
    if (kCGImagePropertyExifWhiteBalance && v53)
    {
      [v4 setObject:v53 forKey:kCGImagePropertyExifWhiteBalance];
    }
  }

  if ([metadataCopy has_lightSource])
  {
    v55 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy lightSource]);
    v56 = v55;
    if (kCGImagePropertyExifLightSource && v55)
    {
      [v4 setObject:v55 forKey:kCGImagePropertyExifLightSource];
    }
  }

  if ([metadataCopy has_ciffWhiteBalanceIndex])
  {
    v57 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy ciffWhiteBalanceIndex]);
    v58 = v57;
    if (kCGImagePropertyCIFFWhiteBalanceIndex && v57)
    {
      [v4 setObject:v57 forKey:kCGImagePropertyCIFFWhiteBalanceIndex];
    }
  }

  if ([metadataCopy has_hdrGain])
  {
    v59 = kPFImagePropertyHDRGain;
    [metadataCopy hdrGain];
    v60 = [NSNumber numberWithDouble:?];
    v61 = v60;
    if (v59 && v60)
    {
      [v4 setObject:v60 forKey:v59];
    }
  }

  if ([metadataCopy has_hasHDRGainMap])
  {
    v62 = kPFImagePropertyHasHDRGainMap;
    v63 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy hasHDRGainMap]);
    v64 = v63;
    if (v62 && v63)
    {
      [v4 setObject:v63 forKey:v62];
    }
  }

  if ([metadataCopy has_videoDynamicRange])
  {
    v65 = kPFVideoPropertyVideoDynamicRange;
    v66 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy videoDynamicRange]);
    v67 = v66;
    if (v65 && v66)
    {
      [v4 setObject:v66 forKey:v65];
    }
  }

  if ([metadataCopy has_videoContainsCinematicData])
  {
    v68 = kPFVideoPropertyVideoContainsCinematicData;
    v69 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy videoContainsCinematicData]);
    v70 = v69;
    if (v68 && v69)
    {
      [v4 setObject:v69 forKey:v68];
    }
  }

  v71 = kPFMediaPropertyLivePhotoPairingIdentifier;
  videoComplementMediaGroupId = [metadataCopy videoComplementMediaGroupId];
  v73 = videoComplementMediaGroupId;
  if (v71 && videoComplementMediaGroupId)
  {
    [v4 setObject:videoComplementMediaGroupId forKey:v71];
  }

  if ([metadataCopy has_gifDelayTime])
  {
    [metadataCopy gifDelayTime];
    v74 = [NSNumber numberWithDouble:?];
    v75 = v74;
    if (kCGImagePropertyGIFDelayTime && v74)
    {
      [v4 setObject:v74 forKey:kCGImagePropertyGIFDelayTime];
    }
  }

  if ([metadataCopy has_variationIdentifier])
  {
    v76 = kPFVideoPropertyPlaybackVariationIdentifier;
    v77 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [metadataCopy variationIdentifier]);
    v78 = v77;
    if (v76 && v77)
    {
      [v4 setObject:v77 forKey:v76];
    }
  }

  if ([metadataCopy has_videoComplementDurationValue])
  {
    v79 = kPFVideoPropertyVideoComplVideoDurationValue;
    [metadataCopy videoComplementDurationValue];
    v80 = [NSNumber numberWithDouble:?];
    v81 = v80;
    if (v79 && v80)
    {
      [v4 setObject:v80 forKey:v79];
    }
  }

  if ([metadataCopy has_videoComplementDurationTimescale])
  {
    v82 = kPFVideoPropertyVideoComplVideoDurationTimescale;
    [metadataCopy videoComplementDurationTimescale];
    v83 = [NSNumber numberWithDouble:?];
    v84 = v83;
    if (v82 && v83)
    {
      [v4 setObject:v83 forKey:v82];
    }
  }

  if ([metadataCopy has_videoComplementImageDisplayValue])
  {
    v85 = kPFVideoPropertyVideoComplVideoImageDisplayValue;
    [metadataCopy videoComplementImageDisplayValue];
    v86 = [NSNumber numberWithDouble:?];
    v87 = v86;
    if (v85 && v86)
    {
      [v4 setObject:v86 forKey:v85];
    }
  }

  if ([metadataCopy has_videoComplementImageDisplayTimescale])
  {
    v88 = kPFVideoPropertyVideoComplVideoImageDisplayTimescale;
    [metadataCopy videoComplementImageDisplayTimescale];
    v89 = [NSNumber numberWithDouble:?];
    v90 = v89;
    if (v88 && v89)
    {
      [v4 setObject:v89 forKey:v88];
    }
  }

  if ([metadataCopy has_videoDurationValue])
  {
    v91 = kPFVideoPropertyVideoDurationValue;
    [metadataCopy videoDurationValue];
    v92 = [NSNumber numberWithDouble:?];
    v93 = v92;
    if (v91 && v92)
    {
      [v4 setObject:v92 forKey:v91];
    }
  }

  if ([metadataCopy has_videoDurationTimescale])
  {
    v94 = kPFVideoPropertyVideoDurationTimescale;
    [metadataCopy videoDurationTimescale];
    v95 = [NSNumber numberWithDouble:?];
    v96 = v95;
    if (v94 && v95)
    {
      [v4 setObject:v95 forKey:v94];
    }
  }

  if ([metadataCopy has_avFPS])
  {
    v97 = kPFVideoPropertyAVFPS;
    [metadataCopy avFPS];
    v98 = [NSNumber numberWithDouble:?];
    v99 = v98;
    if (v97 && v98)
    {
      [v4 setObject:v98 forKey:v97];
    }
  }

  v100 = kPFVideoPropertyCustomCodecFourCharCode;
  codecFourCharCode = [metadataCopy codecFourCharCode];
  v102 = codecFourCharCode;
  if (v100 && codecFourCharCode)
  {
    [v4 setObject:codecFourCharCode forKey:v100];
  }

  v103 = kPFVideoPropertyCaptureMode;
  captureMode = [metadataCopy captureMode];
  v105 = captureMode;
  if (v103 && captureMode)
  {
    [v4 setObject:captureMode forKey:v103];
  }

  v106 = kPFVideoPropertyVideoIsMontage;
  isVideoMontage = [metadataCopy isVideoMontage];
  v108 = isVideoMontage;
  if (v106 && isVideoMontage)
  {
    [v4 setObject:isVideoMontage forKey:v106];
  }

  if ([metadataCopy has_isProRes])
  {
    v109 = kPFVideoPropertyIsProRes;
    v110 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy isProRes]);
    v111 = v110;
    if (v109 && v110)
    {
      [v4 setObject:v110 forKey:v109];
    }
  }

  v112 = kPFMediaPropertyOriginatingAssetIdentifier;
  originatingAssetIdentifier = [metadataCopy originatingAssetIdentifier];
  v114 = originatingAssetIdentifier;
  if (v112 && originatingAssetIdentifier)
  {
    [v4 setObject:originatingAssetIdentifier forKey:v112];
  }

  if ([metadataCopy has_longitude])
  {
    [metadataCopy longitude];
    v115 = [NSNumber numberWithDouble:?];
    v116 = v115;
    if (kCGImagePropertyGPSLongitude && v115)
    {
      [v4 setObject:v115 forKey:kCGImagePropertyGPSLongitude];
    }
  }

  if ([metadataCopy has_latitude])
  {
    [metadataCopy latitude];
    v117 = [NSNumber numberWithDouble:?];
    v118 = v117;
    if (kCGImagePropertyGPSLatitude && v117)
    {
      [v4 setObject:v117 forKey:kCGImagePropertyGPSLatitude];
    }
  }

  if ([metadataCopy has_gpsSpeed])
  {
    [metadataCopy gpsSpeed];
    v119 = [NSNumber numberWithDouble:?];
    v120 = v119;
    if (kCGImagePropertyGPSSpeed && v119)
    {
      [v4 setObject:v119 forKey:kCGImagePropertyGPSSpeed];
    }
  }

  gpsSpeedRef = [metadataCopy gpsSpeedRef];
  v122 = gpsSpeedRef;
  if (kCGImagePropertyGPSSpeedRef && gpsSpeedRef)
  {
    [v4 setObject:gpsSpeedRef forKey:kCGImagePropertyGPSSpeedRef];
  }

  v123 = kPFImagePropertyExifGPSDateTime;
  gpsTimestamp = [metadataCopy gpsTimestamp];
  v125 = gpsTimestamp;
  if (v123 && gpsTimestamp)
  {
    [v4 setObject:gpsTimestamp forKey:v123];
  }

  if ([metadataCopy has_gpsHPositioningError])
  {
    [metadataCopy gpsHPositioningError];
    v126 = [NSNumber numberWithDouble:?];
    v127 = v126;
    if (kCGImagePropertyGPSHPositioningError && v126)
    {
      [v4 setObject:v126 forKey:kCGImagePropertyGPSHPositioningError];
    }
  }

  if ([metadataCopy has_altitude])
  {
    [metadataCopy altitude];
    v128 = [NSNumber numberWithDouble:?];
    v129 = v128;
    if (kCGImagePropertyGPSAltitude && v128)
    {
      [v4 setObject:v128 forKey:kCGImagePropertyGPSAltitude];
    }
  }

  if ([metadataCopy has_imageDirection])
  {
    [metadataCopy imageDirection];
    v130 = [NSNumber numberWithDouble:?];
    v131 = v130;
    if (kCGImagePropertyGPSImgDirection && v130)
    {
      [v4 setObject:v130 forKey:kCGImagePropertyGPSImgDirection];
    }
  }

  imageDirectionRef = [metadataCopy imageDirectionRef];
  v133 = imageDirectionRef;
  if (kCGImagePropertyGPSImgDirectionRef && imageDirectionRef)
  {
    [v4 setObject:imageDirectionRef forKey:kCGImagePropertyGPSImgDirectionRef];
  }

  if ([metadataCopy has_isPhotoBooth])
  {
    v134 = kPFImagePropertyIsPhotoBooth;
    v135 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy isPhotoBooth]);
    v136 = v135;
    if (v134 && v135)
    {
      [v4 setObject:v135 forKey:v134];
    }
  }

  userComment = [metadataCopy userComment];
  v138 = userComment;
  if (kCGImagePropertyExifUserComment && userComment)
  {
    [v4 setObject:userComment forKey:kCGImagePropertyExifUserComment];
  }

  v139 = kPFImagePropertyBurstUuid;
  burstUuid = [metadataCopy burstUuid];
  v141 = burstUuid;
  if (v139 && burstUuid)
  {
    [v4 setObject:burstUuid forKey:v139];
  }

  if ([metadataCopy has_isFrontFacingCamera])
  {
    v142 = kPFImagePropertyFrontFacingCamera;
    v143 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy isFrontFacingCamera]);
    v144 = v143;
    if (v142 && v143)
    {
      [v4 setObject:v143 forKey:v142];
    }
  }

  v145 = kPFImagePropertySpatialOverCaptureIdentifier;
  spatialOverCaptureIdentifier = [metadataCopy spatialOverCaptureIdentifier];
  v147 = spatialOverCaptureIdentifier;
  if (v145 && spatialOverCaptureIdentifier)
  {
    [v4 setObject:spatialOverCaptureIdentifier forKey:v145];
  }

  if ([metadataCopy has_hasSpatialAudio])
  {
    v148 = kPFImagePropertyHasSpatialAudio;
    v149 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy hasSpatialAudio]);
    v150 = v149;
    if (v148 && v149)
    {
      [v4 setObject:v149 forKey:v148];
    }
  }

  if ([metadataCopy has_fileSize])
  {
    v151 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [metadataCopy fileSize]);
    v152 = v151;
    if (NSFileSize && v151)
    {
      [v4 setObject:v151 forKey:NSFileSize];
    }
  }

  v153 = kPFFilePropertyOriginalFilename;
  originalFileName = [metadataCopy originalFileName];
  v155 = originalFileName;
  if (v153 && originalFileName)
  {
    [v4 setObject:originalFileName forKey:v153];
  }

  if ([metadataCopy has_semanticStyleSceneBias])
  {
    v156 = kPFImagePropertySemanticStyleSceneBias;
    [metadataCopy semanticStyleSceneBias];
    v157 = [NSNumber numberWithDouble:?];
    v158 = v157;
    if (v156 && v157)
    {
      [v4 setObject:v157 forKey:v156];
    }
  }

  if ([metadataCopy has_semanticStyleWarmthBias])
  {
    v159 = kPFImagePropertySemanticStyleWarmthBias;
    [metadataCopy semanticStyleWarmthBias];
    v160 = [NSNumber numberWithDouble:?];
    v161 = v160;
    if (v159 && v160)
    {
      [v4 setObject:v160 forKey:v159];
    }
  }

  if ([metadataCopy has_semanticStyleRenderingVersion])
  {
    v162 = kPFImagePropertySemanticStyleRenderingVersion;
    v163 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy semanticStyleRenderingVersion]);
    v164 = v163;
    if (v162 && v163)
    {
      [v4 setObject:v163 forKey:v162];
    }
  }

  if ([metadataCopy has_semanticStylePreset])
  {
    v165 = kPFImagePropertySemanticStylePreset;
    v166 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy semanticStylePreset]);
    v167 = v166;
    if (v165 && v166)
    {
      [v4 setObject:v166 forKey:v165];
    }
  }

  if ([metadataCopy has_smartStyleToneBias])
  {
    v168 = kPFImagePropertySmartStyleToneBias;
    [metadataCopy smartStyleToneBias];
    v169 = [NSNumber numberWithDouble:?];
    v170 = v169;
    if (v168 && v169)
    {
      [v4 setObject:v169 forKey:v168];
    }
  }

  if ([metadataCopy has_smartStyleColorBias])
  {
    v171 = kPFImagePropertySmartStyleColorBias;
    [metadataCopy smartStyleColorBias];
    v172 = [NSNumber numberWithDouble:?];
    v173 = v172;
    if (v171 && v172)
    {
      [v4 setObject:v172 forKey:v171];
    }
  }

  if ([metadataCopy has_smartStyleIntensity])
  {
    v174 = kPFImagePropertySmartStyleIntensity;
    [metadataCopy smartStyleIntensity];
    v175 = [NSNumber numberWithDouble:?];
    v176 = v175;
    if (v174 && v175)
    {
      [v4 setObject:v175 forKey:v174];
    }
  }

  if ([metadataCopy has_smartStyleCast])
  {
    v177 = kPFImagePropertySmartStyleCast;
    [metadataCopy smartStyleCast];
    v178 = [NSNumber numberWithDouble:?];
    v179 = v178;
    if (v177 && v178)
    {
      [v4 setObject:v178 forKey:v177];
    }
  }

  if ([metadataCopy has_smartStyleRenderingVersion])
  {
    v180 = kPFImagePropertySmartStyleRenderingVersion;
    v181 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy smartStyleRenderingVersion]);
    v182 = v181;
    if (v180 && v181)
    {
      [v4 setObject:v181 forKey:v180];
    }
  }

  if ([metadataCopy has_smartStyleIsReversible])
  {
    v183 = kPFImagePropertySmartStyleIsReversible;
    v184 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy smartStyleIsReversible]);
    v185 = v184;
    if (v183 && v184)
    {
      [v4 setObject:v184 forKey:v183];
    }
  }

  v186 = kPFImagePropertyIsHDR;
  v187 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy isHDR]);
  v188 = v187;
  if (v186 && v187)
  {
    [v4 setObject:v187 forKey:v186];
  }

  v189 = kPFImagePropertyHasISOGainMap;
  v190 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy hasISOGainMap]);
  v191 = v190;
  if (v189 && v190)
  {
    [v4 setObject:v190 forKey:v189];
  }

  v192 = kPFImagePropertyIsAnimatedImage;
  v193 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy isAnimatedImage]);
  v194 = v193;
  if (v192 && v193)
  {
    [v4 setObject:v193 forKey:v192];
  }

  v195 = kPFImagePropertyStillImageCaptureFlags;
  v196 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [metadataCopy stillImageCaptureFlags]);
  v197 = v196;
  if (v195 && v196)
  {
    [v4 setObject:v196 forKey:v195];
  }

  v198 = kPFImagePropertyExifFlashFired;
  v199 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy exifFlashFired]);
  v200 = v199;
  if (v198 && v199)
  {
    [v4 setObject:v199 forKey:v198];
  }

  v201 = kPFImagePropertyIsAlchemist;
  v202 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy isAlchemist]);
  v203 = v202;
  if (v201 && v202)
  {
    [v4 setObject:v202 forKey:v201];
  }

  [metadataCopy exifAuxFlashCompensation];
  v204 = [NSNumber numberWithDouble:?];
  v205 = v204;
  if (kCGImagePropertyExifAuxFlashCompensation && v204)
  {
    [v4 setObject:v204 forKey:kCGImagePropertyExifAuxFlashCompensation];
  }

  iPTCCredit = [metadataCopy IPTCCredit];
  v207 = iPTCCredit;
  if (kCGImagePropertyIPTCCredit && iPTCCredit)
  {
    [v4 setObject:iPTCCredit forKey:kCGImagePropertyIPTCCredit];
  }

  v208 = kPFVideoPropertyCaptureModeTimelapse;
  v209 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy captureModeTimelapse]);
  v210 = v209;
  if (v208 && v209)
  {
    [v4 setObject:v209 forKey:v208];
  }

  v211 = kPFImagePropertyIsThreeImageStereoHEIC;
  v212 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy isThreeImageStereoHEIC]);
  v213 = v212;
  if (v211 && v212)
  {
    [v4 setObject:v212 forKey:v211];
  }

  v214 = kPFImagePropertyGenerativeAIImageType;
  [metadataCopy generativeAIImageType];
  v215 = [NSNumber numberWithDouble:?];
  v216 = v215;
  if (v214 && v215)
  {
    [v4 setObject:v215 forKey:v214];
  }

  uniformTypeIdentifier = [metadataCopy uniformTypeIdentifier];
  if (!uniformTypeIdentifier)
  {
    originalFileName2 = [metadataCopy originalFileName];
    pathExtension = [originalFileName2 pathExtension];
    v220 = [PFUniformTypeUtilities typeWithFilenameExtension:pathExtension];

    uniformTypeIdentifier = [v220 identifier];
  }

  if (uniformTypeIdentifier && kPFFilePropertyUniformTypeIdentifier)
  {
    [v4 setObject:uniformTypeIdentifier forKey:?];
  }

  v221 = v4;

  return v4;
}

- (id)_blastDoorStoreTemporarySourceImageWithImageRef:(CGImage *)ref sourceURL:(id)l error:(id *)error
{
  lCopy = l;
  v8 = lCopy;
  if (!ref)
  {
    v31 = NSDebugDescriptionErrorKey;
    lCopy = [NSString stringWithFormat:@"Invalid image access for the blast door reference. Source: %@", lCopy];
    v32 = lCopy;
    v16 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v22 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v16];
    goto LABEL_12;
  }

  stringByDeletingPathExtension = [lCopy stringByDeletingPathExtension];
  v10 = [PFUniformTypeUtilities preferredOrFallbackFilenameExtensionForType:UTTypeJPEG];
  lCopy = [stringByDeletingPathExtension stringByAppendingPathExtension:v10];

  v12 = NSTemporaryDirectory();
  v39[0] = v12;
  v13 = +[NSUUID UUID];
  uUIDString = [v13 UUIDString];
  v39[1] = uUIDString;
  v39[2] = lCopy;
  v15 = [NSArray arrayWithObjects:v39 count:3];
  v16 = [NSURL fileURLWithPathComponents:v15];

  v17 = +[NSFileManager defaultManager];
  uRLByDeletingLastPathComponent = [v16 URLByDeletingLastPathComponent];
  v30 = 0;
  LOBYTE(v15) = [v17 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v30];
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

  identifier = [UTTypeJPEG identifier];
  v21 = CGImageDestinationCreateWithURL(v16, identifier, 1uLL, 0);

  if (!v21)
  {
LABEL_9:
    v33 = NSDebugDescriptionErrorKey;
    v23 = [NSString stringWithFormat:@"Failed to access temporary destination location for the blast door reference to %@. Source: %@", v16, v8];
    v34 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v22 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v24];

    ref = 0;
    goto LABEL_12;
  }

  CGImageDestinationAddImage(v21, ref, 0);
  if (CGImageDestinationFinalize(v21))
  {
    ref = v16;
  }

  else
  {
    v35 = NSDebugDescriptionErrorKey;
    v25 = [NSString stringWithFormat:@"Failed to write temporary image from blast door reference to %@. Source: %@", v16, v8];
    v36 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v27 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:v26];

    ref = 0;
    v19 = v27;
  }

  CFRelease(v21);
  v22 = v19;
LABEL_12:

  if (!v22 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *buf = 138543362;
  v38 = v22;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Failed to process blast door temporary source. Error: %{public}@", buf, 0xCu);
  if (error)
  {
LABEL_15:
    v28 = v22;
    *error = v22;
  }

LABEL_16:

  return ref;
}

- (id)_blastDoorURLWithVideoSourceURL:(id)l sourceMetadata:(id)metadata
{
  lCopy = l;
  metadataCopy = metadata;
  v8 = metadataCopy;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1000095B4;
  v35 = sub_1000095C4;
  v36 = 0;
  if (metadataCopy)
  {
    v9 = [metadataCopy objectForKeyedSubscript:kCGImagePropertyPixelWidth];
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
  v21 = lCopy;
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

- (id)_blastDoorURLWithImageSourceURL:(id)l properties:(id *)properties
{
  lCopy = l;
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
  v9 = lCopy;
  v14 = v9;
  v17 = &v18;
  v10 = v7;
  v15 = v10;
  [(IMMessagesBlastDoorInterface *)blastdoorInterface generatePreviewforAttachmentWithfileURL:v9 resultHandler:v13];
  dispatch_block_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (properties)
  {
    *properties = v19[5];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (id)_blastDoorMetadataWithSourceURL:(id)l
{
  lCopy = l;
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
  v7 = lCopy;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  [(IMMessagesBlastDoorInterface *)blastdoorInterface generateMetadataforAttachmentWithfileURL:v7 resultHandler:v11];
  dispatch_block_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)propertiesForVideoComplementURL:(id)l
{
  if (l)
  {
    v4 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)self _blastDoorMetadataWithSourceURL:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)validateAccessForURL:(id)l role:(id)role
{
  lCopy = l;
  roleCopy = role;
  v8 = lCopy;
  v9 = v8;
  if ([(PAMediaConversionServiceResourceURLCollectionAccessProvider *)self isBlastDoorAccessRequired])
  {
    v9 = v8;
    if ([roleCopy isEqualToString:@"PAMediaConversionResourceRoleMainResource"])
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (!selfCopy->_blastDoorSourceURL)
      {
        if (selfCopy->_isImageMedia)
        {
          v18 = 0;
          v11 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)selfCopy _blastDoorURLWithImageSourceURL:v8 properties:&v18];
          blastDoorMainSourceProperties = v18;
          blastDoorSourceURL = selfCopy->_blastDoorSourceURL;
          selfCopy->_blastDoorSourceURL = v11;

          [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)selfCopy setBlastDoorMainSourceProperties:blastDoorMainSourceProperties];
        }

        else
        {
          v14 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)selfCopy _blastDoorMetadataWithSourceURL:v8];
          [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)selfCopy setBlastDoorMainSourceProperties:v14];

          blastDoorMainSourceProperties = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)selfCopy blastDoorMainSourceProperties];
          v15 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)selfCopy _blastDoorURLWithVideoSourceURL:v8 sourceMetadata:blastDoorMainSourceProperties];
          v16 = selfCopy->_blastDoorSourceURL;
          selfCopy->_blastDoorSourceURL = v15;
        }
      }

      v9 = selfCopy->_blastDoorSourceURL;

      objc_sync_exit(selfCopy);
    }
  }

  return v9;
}

- (NSURL)blastDoorSourceURL
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_blastDoorSourceURL;
  objc_sync_exit(selfCopy);

  return v3;
}

- (PAMediaConversionServiceResourceURLCollectionAccessProvider)initWithOptions:(id)options
{
  optionsCopy = options;
  v21.receiver = self;
  v21.super_class = PAMediaConversionServiceResourceURLCollectionAccessProvider;
  v5 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)&v21 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionBlastDoorMediaIsImageKey"];
  if (v6)
  {
    v7 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionBlastDoorMediaIsImageKey"];
    v5->_isImageMedia = [v7 BOOLValue];
  }

  else
  {
    v5->_isImageMedia = 1;
  }

  v8 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionRequiresBlastDoorAccessKey"];
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