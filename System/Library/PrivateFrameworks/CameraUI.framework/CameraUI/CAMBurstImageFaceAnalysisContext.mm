@interface CAMBurstImageFaceAnalysisContext
- (CAMBurstImageFaceAnalysisContext)initWithVersion:(id)version;
- (CGRect)calculateFaceCoreROI:(id)i imageStat:(id)stat needFaceCore:(BOOL *)core;
- (CGRect)padRoiRect:(CGRect)rect paddingX:(float)x paddingY:(float)y;
- (id)findOverlappingFaceStat:(CGRect)stat imageStat:(id)imageStat;
- (int)findFacesInImage:(id)image imageStat:(id)stat;
- (uint64_t)setupFaceDetector;
- (void)addFaceToArray:(id)array;
- (void)addFacesToImageStat:(id)stat imageSize:(CGSize)size;
- (void)adjustFaceIdsForImageStat:(id)stat;
- (void)calcFaceScores:(id)scores;
- (void)calculateFaceFocusInImage:(id)image imageStat:(id)stat;
- (void)dealloc;
- (void)dumpFaceInfoArray;
- (void)extractFacesFromMetadata:(id)metadata;
- (void)setupFaceDetector;
@end

@implementation CAMBurstImageFaceAnalysisContext

- (CAMBurstImageFaceAnalysisContext)initWithVersion:(id)version
{
  v8.receiver = self;
  v8.super_class = CAMBurstImageFaceAnalysisContext;
  v4 = [(CAMBurstImageFaceAnalysisContext *)&v8 init];
  if (v4)
  {
    v4->curConfig = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    v4->faceIdMapping = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    v4->renameMapping = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    v4->faceIdCounter = 1;
    v4->faceInfoArray = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v4->numFramesNoFaces = 0;
    v4->forceFaceDetectionEnable = 1;
    v4->faceDetector = 0;
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v4->latestFaceTimestamp = 0.0;
    v4->faceTimestampArray = v5;
    v4->latestImageTimestamp = 0.0;
    v4->lastFaceIndex = 0;
    if ([version isEqualToString:kCAMBurstImageSet_VersionString_2[0]])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    [(CAMBurstImageFaceAnalysisContext *)v4 setVersion:v6];
  }

  return v4;
}

- (void)dealloc
{
  curConfig = self->curConfig;
  if (curConfig)
  {

    self->curConfig = 0;
  }

  faceIdMapping = self->faceIdMapping;
  if (faceIdMapping)
  {

    self->faceIdMapping = 0;
  }

  renameMapping = self->renameMapping;
  if (renameMapping)
  {

    self->renameMapping = 0;
  }

  faceInfoArray = self->faceInfoArray;
  if (faceInfoArray)
  {

    self->faceInfoArray = 0;
  }

  faceDetector = self->faceDetector;
  if (faceDetector)
  {

    self->faceDetector = 0;
  }

  faceTimestampArray = self->faceTimestampArray;
  if (faceTimestampArray)
  {

    self->faceTimestampArray = 0;
  }

  v9.receiver = self;
  v9.super_class = CAMBurstImageFaceAnalysisContext;
  [(CAMBurstImageFaceAnalysisContext *)&v9 dealloc];
}

- (void)setupFaceDetector
{
  if (self->faceDetector || !FaceCoreLibraryCore())
  {
    return;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v4 = getFCRFastFaceDetectionParametersSymbolLoc_ptr;
  v16 = getFCRFastFaceDetectionParametersSymbolLoc_ptr;
  if (!getFCRFastFaceDetectionParametersSymbolLoc_ptr)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getFCRFastFaceDetectionParametersSymbolLoc_block_invoke;
    v21 = &unk_1E76F8100;
    v22 = &v13;
    v5 = FaceCoreLibrary();
    v6 = dlsym(v5, "FCRFastFaceDetectionParameters");
    *(*(v22 + 1) + 24) = v6;
    getFCRFastFaceDetectionParametersSymbolLoc_ptr = *(*(v22 + 1) + 24);
    v4 = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);
  if (!v4)
  {
    [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    goto LABEL_14;
  }

  [dictionary addEntriesFromDictionary:v4()];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v8 = getFCRSetupParamNumberOfAnglesSymbolLoc_ptr;
  v16 = getFCRSetupParamNumberOfAnglesSymbolLoc_ptr;
  if (!getFCRSetupParamNumberOfAnglesSymbolLoc_ptr)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getFCRSetupParamNumberOfAnglesSymbolLoc_block_invoke;
    v21 = &unk_1E76F8100;
    v22 = &v13;
    v9 = FaceCoreLibrary();
    v10 = dlsym(v9, "FCRSetupParamNumberOfAngles");
    *(*(v22 + 1) + 24) = v10;
    getFCRSetupParamNumberOfAnglesSymbolLoc_ptr = *(*(v22 + 1) + 24);
    v8 = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);
  if (!v8)
  {
LABEL_14:
    setupFaceDetector = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v18, 8);
    _Unwind_Resume(setupFaceDetector);
  }

  [dictionary setObject:v7 forKey:*v8];
  [dictionary setObject:@"true" forKey:@"FCRSetupParamLoadModelFiles"];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__2;
  v11 = getFaceCoreDetectorClass_softClass;
  v22 = __Block_byref_object_dispose__2;
  v23 = getFaceCoreDetectorClass_softClass;
  if (!getFaceCoreDetectorClass_softClass)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getFaceCoreDetectorClass_block_invoke;
    v16 = &unk_1E76F8100;
    v17 = &v18;
    __getFaceCoreDetectorClass_block_invoke(&v13);
    v11 = *(v19 + 40);
  }

  _Block_object_dispose(&v18, 8);
  self->faceDetector = [v11 faceDetectorWithOptions:dictionary];
}

- (CGRect)padRoiRect:(CGRect)rect paddingX:(float)x paddingY:(float)y
{
  v5 = 100.0 / rect.size.width + -0.5;
  if (v5 >= x)
  {
    x = 100.0 / rect.size.width + -0.5;
  }

  v6 = 100.0 / rect.size.height + -0.5;
  if (v6 >= y)
  {
    y = 100.0 / rect.size.height + -0.5;
  }

  xCopy = x;
  v8 = rect.origin.x - rect.size.width * xCopy;
  yCopy = y;
  v10 = rect.origin.y - rect.size.height * yCopy;
  v11 = rect.size.width + rect.size.width * xCopy * 2.0;
  v12 = rect.size.height + rect.size.height * yCopy * 2.0;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v8;
  return result;
}

- (CGRect)calculateFaceCoreROI:(id)i imageStat:(id)stat needFaceCore:(BOOL *)core
{
  iCopy = i;
  v153 = *MEMORY[0x1E69E9840];
  width = [i width];
  height = [iCopy height];
  [stat orientation];
  BurstLoggingMessage("    orientation = %d\n", [stat orientation]);
  if (core)
  {
    *core = 0;
  }

  [iCopy width];
  [iCopy height];
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v137 = *MEMORY[0x1E695F058];
  v138 = v11;
  r1_24 = v13;
  if ([(CAMBurstImageFaceAnalysisContext *)self version]<= 1)
  {
    width2 = [iCopy width];
    height2 = [iCopy height];
    v106 = [objc_msgSend(stat "faceStatArray")];
    v107 = v106;
    if (v106 < 1)
    {
      v118 = (width * 0.2);
      v119 = (height * 0.2);
      v120 = width * 0.599999994;
      v121 = height * 0.599999994;
    }

    else
    {
      BurstLoggingMessage("Number of HW faces = %d - calculating rect\n", v106);
      if ((v107 & 0x7FFFFFFF) != 0)
      {
        v108 = 0;
        do
        {
          [objc_msgSend(objc_msgSend(stat "faceStatArray")];
          x = v109 - v110 * 0.25;
          y = v112 - v113 * 0.25;
          width = v110 + v110 * 0.25 * 2.0;
          height = v113 + v113 * 0.25 * 2.0;
          BurstLoggingMessage("   face %d = (%.3f,%.3f,%.3f,%.3f)\n", v108, x, y, width, height);
          if (v108)
          {
            v162.origin.x = v137;
            v162.origin.y = v138;
            v162.size.width = v12;
            v162.size.height = r1_24;
            v174.origin.x = x;
            v174.origin.y = y;
            v174.size.width = width;
            v174.size.height = height;
            v163 = CGRectUnion(v162, v174);
            x = v163.origin.x;
            y = v163.origin.y;
            width = v163.size.width;
            height = v163.size.height;
          }

          ++v108;
          v137 = x;
          v138 = y;
          v12 = width;
          r1_24 = height;
        }

        while ((v107 & 0x7FFFFFFF) != v108);
      }

      else
      {
        height = v13;
        width = v12;
        y = v11;
        x = v10;
      }

      v178.origin.x = 0.0;
      v178.origin.y = 0.0;
      v167.origin.x = x;
      v167.origin.y = y;
      v167.size.width = width;
      v167.size.height = height;
      v178.size.width = width2;
      v178.size.height = height2;
      v168 = CGRectIntersection(v167, v178);
      v118 = v168.origin.x;
      v119 = v168.origin.y;
      v120 = v168.size.width;
      v121 = v168.size.height;
    }

    [stat setFacesRoiRect:{v118, v119, v120, v121}];
    [stat setNumHWFaces:v107];
    if (core)
    {
      *core = 1;
    }
  }

  else
  {
    v129 = iCopy;
    BurstLoggingMessage("Number of HW faces = %d - calculating rect\n", [objc_msgSend(stat "faceStatArray")]);
    v14 = [objc_msgSend(stat "faceStatArray")];
    v15 = v13;
    v16 = v12;
    v17 = v11;
    r1_16 = v12;
    v18 = v11;
    v19 = v10;
    if (v14)
    {
      v20 = 0;
      v21 = v137;
      v22 = v11;
      v23 = v12;
      v24 = v13;
      r1 = v137;
      v135 = v13;
      v136 = v11;
      v25 = v12;
      do
      {
        v26 = v25;
        v130 = v24;
        v131 = v23;
        v132 = v22;
        v134 = v21;
        v27 = [objc_msgSend(stat "faceStatArray")];
        [v27 faceRect];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        [v27 setHwFaceId:{objc_msgSend(v27, "faceId")}];
        [v27 faceRect];
        [v27 setHwFaceRect:?];
        BurstLoggingMessage("   hwFaceRect: (%.3f,%.3f,%.3f,%.3f), hasLeftEye = %d, hasRightEye = %d\n", v29, v31, v33, v35, [v27 hasLeftEye], objc_msgSend(v27, "hasRightEye"));
        if ([v27 hasLeftEye])
        {
          hasRightEye = [v27 hasRightEye];
        }

        else
        {
          hasRightEye = 0;
        }

        LODWORD(v36) = 0.25;
        LODWORD(v37) = 0.25;
        [(CAMBurstImageFaceAnalysisContext *)self padRoiRect:v29 paddingX:v31 paddingY:v33, v35, v36, v37];
        v19 = v39;
        v18 = v40;
        v42 = v41;
        v44 = v43;
        if ([v27 isSyncedWithImage] && (hasRightEye & 1) != 0)
        {
          v15 = v135;
          v17 = v136;
          v10 = r1;
        }

        else
        {
          v45 = v26;
          if (core)
          {
            *core = 1;
          }

          v15 = v44;
          v26 = v42;
          v17 = v18;
          v10 = v19;
          if (v45 != 0.0)
          {
            v46 = r1;
            v48 = v135;
            v47 = v136;
            v170.origin.x = v19;
            v170.origin.y = v18;
            v170.size.width = v42;
            v170.size.height = v44;
            v154 = CGRectUnion(*(&v45 - 2), v170);
            v10 = v154.origin.x;
            v17 = v154.origin.y;
            v26 = v154.size.width;
            v15 = v154.size.height;
          }
        }

        BurstLoggingMessage("   face %d = (%.3f,%.3f,%.3f,%.3f)\n", v20, v19, v18, v42, v44);
        r2 = v26;
        BurstLoggingMessage("   fcrect  = (%.3f,%.3f,%.3f,%.3f)\n", v10, v17, v26, v15);
        v12 = v42;
        if (v20)
        {
          v155.origin.y = v132;
          v155.origin.x = v134;
          v155.size.height = v130;
          v155.size.width = v131;
          v171.origin.x = v19;
          v171.origin.y = v18;
          v171.size.width = v42;
          v171.size.height = v44;
          v156 = CGRectUnion(v155, v171);
          v19 = v156.origin.x;
          v18 = v156.origin.y;
          v12 = v156.size.width;
          v13 = v156.size.height;
        }

        else
        {
          v13 = v44;
        }

        ++v20;
        v49 = [objc_msgSend(stat "faceStatArray")];
        v21 = v19;
        v22 = v18;
        v23 = v12;
        v24 = v13;
        r1 = v10;
        v135 = v15;
        v136 = v17;
        v16 = r2;
        v25 = r2;
        v11 = v138;
      }

      while (v20 < v49);
    }

    r1a = v10;
    r1_8 = v15;
    r2a = v16;
    v133.origin.x = v19;
    v133.origin.y = v18;
    v133.size.width = v12;
    temporalOrder = [stat temporalOrder];
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    faceInfoArray = self->faceInfoArray;
    v52 = [(NSMutableArray *)faceInfoArray countByEnumeratingWithState:&v148 objects:v152 count:16];
    v133.size.height = v13;
    if (v52)
    {
      v53 = v52;
      v54 = *v149;
      v55 = r1_24;
      v56 = r2a;
      v57 = v137;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v149 != v54)
          {
            objc_enumerationMutation(faceInfoArray);
          }

          v59 = *(*(&v148 + 1) + 8 * i);
          v60 = [v59 hwFaceId] != -1 && (temporalOrder - objc_msgSend(v59, "hwLastFrameSeen")) < 4;
          v61 = [v59 swFaceId] != -1 && (temporalOrder - objc_msgSend(v59, "swLastFrameSeen")) < 4;
          if (v60 || v61)
          {
            v62 = r1_16;
            v63 = v11;
            v64 = v57;
            if (v60)
            {
              [v59 hwCenter];
              v66 = v65;
              [v59 hwSize];
              v64 = v66 - v67 * 0.5;
              [v59 hwCenter];
              v69 = v68;
              [v59 hwSize];
              v63 = v69 - v70 * 0.5;
              [v59 hwSize];
              v62 = v71;
              [v59 hwSize];
              v55 = v72;
            }

            r2b = v56;
            if (v61)
            {
              [v59 swCenter];
              v74 = v73;
              [v59 swSize];
              v76 = v74 - v75 * 0.5;
              [v59 swCenter];
              v78 = v77;
              [v59 swSize];
              v80 = v78 - v79 * 0.5;
              [v59 swSize];
              v82 = v81;
              [v59 swSize];
              v84 = v83;
              if (v60)
              {
                v157.origin.x = v64;
                v157.origin.y = v63;
                v157.size.width = v62;
                v157.size.height = v55;
                v85 = v76;
                v86 = v80;
                v87 = v82;
                v158 = CGRectUnion(v157, *(&v84 - 3));
                v64 = v158.origin.x;
                v63 = v158.origin.y;
                v62 = v158.size.width;
                v55 = v158.size.height;
              }

              else
              {
                v55 = v83;
                v62 = v82;
                v63 = v80;
                v64 = v76;
              }

              v57 = v137;
              v11 = v138;
            }

            if ([objc_msgSend(stat "faceStatArray")])
            {
              v90 = 0;
              v91 = v55 * v62;
              v92 = v91 * 0.25;
              while (1)
              {
                [objc_msgSend(objc_msgSend(stat "faceStatArray")];
                v172.origin.x = v64;
                v172.origin.y = v63;
                v172.size.width = v62;
                v172.size.height = v55;
                v160 = CGRectIntersection(v159, v172);
                *&v160.origin.x = v160.size.width * v160.size.height;
                if (v92 <= *&v160.origin.x)
                {
                  break;
                }

                if (++v90 >= [objc_msgSend(stat "faceStatArray")])
                {
                  goto LABEL_43;
                }
              }

              v55 = r1_24;
              v56 = r2b;
            }

            else
            {
LABEL_43:
              LODWORD(v88) = 0.25;
              LODWORD(v89) = 0.25;
              [(CAMBurstImageFaceAnalysisContext *)self padRoiRect:v64 paddingX:v63 paddingY:v62, v55, v88, v89];
              v94 = v93;
              v96 = v95;
              v56 = v97;
              v99 = v98;
              BurstLoggingMessage("   inserting prev face (hw%d,sw=%d) = (%.3f,%.3f,%.3f,%.3f) padding=(%.3f,%.3f)\n", [v59 hwFaceId], objc_msgSend(v59, "swFaceId"), v93, v95, v97, v98, v128, *&v129);
              if (core)
              {
                *core = 1;
              }

              v100 = r2b;
              if (r2b != 0.0)
              {
                v101 = r1a;
                v102 = r1_8;
                v103 = v17;
                v173.origin.x = v94;
                v173.origin.y = v96;
                v173.size.width = v56;
                v173.size.height = v99;
                v161 = CGRectUnion(*(&v100 - 2), v173);
                v94 = v161.origin.x;
                v96 = v161.origin.y;
                v56 = v161.size.width;
                v99 = v161.size.height;
              }

              BurstLoggingMessage("   fcrect  = (%.3f,%.3f,%.3f,%.3f)\n", v94, v96, v56, v99);
              r1a = v94;
              r1_8 = v99;
              v17 = v96;
              v55 = r1_24;
            }
          }
        }

        v53 = [(NSMutableArray *)faceInfoArray countByEnumeratingWithState:&v148 objects:v152 count:16];
      }

      while (v53);
    }

    else
    {
      v56 = r2a;
    }

    iCopy = v129;
    width3 = [v129 width];
    v175.size.height = [v129 height];
    v175.origin.x = 0.0;
    v175.origin.y = 0.0;
    v164.origin.x = r1a;
    v164.size.height = r1_8;
    v164.origin.y = v17;
    v164.size.width = v56;
    v175.size.width = width3;
    v165 = CGRectIntersection(v164, v175);
    v118 = v165.origin.x;
    v119 = v165.origin.y;
    v120 = v165.size.width;
    v121 = v165.size.height;
    width4 = [v129 width];
    v176.size.height = [v129 height];
    v176.origin.x = 0.0;
    v176.origin.y = 0.0;
    v176.size.width = width4;
    v166 = CGRectIntersection(v133, v176);
    if (v120 > 0.0 && v121 > 0.0)
    {
      v177.origin.x = v118;
      v177.origin.y = v119;
      v177.size.width = v120;
      v177.size.height = v121;
      v166 = CGRectUnion(v166, v177);
    }

    [stat setFacesRoiRect:{v166.origin.x, v166.origin.y, v166.size.width, v166.size.height}];
    [stat setNumHWFaces:{objc_msgSend(objc_msgSend(stat, "faceStatArray"), "count")}];
  }

  orientation = [stat orientation];
  if (orientation > 8)
  {
    goto LABEL_76;
  }

  if (((1 << orientation) & 0x18) != 0)
  {
    v118 = [iCopy width] - v118 - v120;
    v125 = [iCopy height] - v119 - v121;
    v124 = v121;
LABEL_77:
    v119 = v118;
    goto LABEL_78;
  }

  if (((1 << orientation) & 0xC0) != 0)
  {
    v125 = [iCopy width] - v118 - v120;
    v124 = v120;
    v120 = v121;
    goto LABEL_78;
  }

  if (((1 << orientation) & 0x120) == 0)
  {
LABEL_76:
    v124 = v121;
    v125 = v119;
    goto LABEL_77;
  }

  v119 = [iCopy height] - v119 - v121;
  v124 = v120;
  v120 = v121;
  v125 = v118;
LABEL_78:
  v126 = v119;
  v127 = v120;
  result.size.height = v124;
  result.size.width = v127;
  result.origin.y = v125;
  result.origin.x = v126;
  return result;
}

- (id)findOverlappingFaceStat:(CGRect)stat imageStat:(id)imageStat
{
  height = stat.size.height;
  width = stat.size.width;
  y = stat.origin.y;
  x = stat.origin.x;
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  faceStatArray = [imageStat faceStatArray];
  v9 = [faceStatArray countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v12 = *v24;
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (*v24 != v12)
    {
      objc_enumerationMutation(faceStatArray);
    }

    v14 = *(*(&v23 + 1) + 8 * v13);
    [v14 faceRect];
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v30 = CGRectIntersection(v29, v31);
    v15 = v30.size.width * v30.size.height;
    [v14 faceRect];
    v17 = v16;
    [v14 faceRect];
    *&v19 = v15 * 4.0;
    v11 = width * height;
    if ((v15 * 4.0) < v11)
    {
      v20 = v17 * v18;
      v21 = *&v19 < v20;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      return v14;
    }

    if (v10 == ++v13)
    {
      v10 = [faceStatArray countByEnumeratingWithState:&v23 objects:v27 count:{16, v19}];
      v14 = 0;
      if (v10)
      {
        goto LABEL_3;
      }

      return v14;
    }
  }
}

- (int)findFacesInImage:(id)image imageStat:(id)stat
{
  v219 = *MEMORY[0x1E69E9840];
  width = [image width];
  height = [image height];
  selfCopy = self;
  [(CAMBurstImageFaceAnalysisContext *)self setupFaceDetector];
  width2 = [image width];
  height2 = [image height];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v209 = 0;
  statCopy = stat;
  v8 = [stat orientation] - 3;
  if (v8 > 5)
  {
    v182 = 0;
  }

  else
  {
    v182 = dword_1A3A67A78[v8];
  }

  v208 = 0;
  [(CAMBurstImageFaceAnalysisContext *)self calculateFaceCoreROI:image imageStat:stat needFaceCore:&v208];
  rect2.origin.x = v9;
  rect2.origin.y = v10;
  rect2.size.width = v11;
  rect2.size.height = v12;
  v213 = 0.0;
  *&v214 = COERCE_DOUBLE(&v213);
  *&v215 = 0x3052000000;
  *(&v215 + 1) = __Block_byref_object_copy__2;
  *&v216 = __Block_byref_object_dispose__2;
  v13 = getFaceCoreImageClass_softClass;
  *(&v216 + 1) = getFaceCoreImageClass_softClass;
  if (!getFaceCoreImageClass_softClass)
  {
    *&v210 = MEMORY[0x1E69E9820];
    *(&v210 + 1) = 3221225472;
    *&v211 = __getFaceCoreImageClass_block_invoke;
    *(&v211 + 1) = &unk_1E76F8100;
    v212 = &v213;
    __getFaceCoreImageClass_block_invoke(&v210);
    v13 = *(v214 + 40);
  }

  _Block_object_dispose(&v213, 8);
  v176 = [[v13 alloc] initWithWidth:objc_msgSend(image height:"width") bytesPerRow:objc_msgSend(image buffer:"height") freeWhenDone:{objc_msgSend(image, "bytesPerRow"), objc_msgSend(image, "Ybuffer"), 0}];
  BurstLoggingMessage("  needFaceCore = %d\n", v208);
  array = [MEMORY[0x1E695DF70] array];
  v178 = height;
  if ([(CAMBurstImageFaceAnalysisContext *)self version]>= 2)
  {
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    faceStatArray = [stat faceStatArray];
    v15 = [faceStatArray countByEnumeratingWithState:&v203 objects:v218 count:16];
    if (v15)
    {
      v16 = *v204;
      v184 = height;
      v17 = 0.5;
      v18 = MEMORY[0x1E695F058];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v204 != v16)
          {
            objc_enumerationMutation(faceStatArray);
          }

          v20 = *(*(&v203 + 1) + 8 * i);
          if ([v20 hasLeftEye] && objc_msgSend(v20, "hasRightEye"))
          {
            v213 = 0.0;
            *&v214 = COERCE_DOUBLE(&v213);
            *&v215 = 0x3052000000;
            *(&v215 + 1) = __Block_byref_object_copy__2;
            *&v216 = __Block_byref_object_dispose__2;
            v21 = getFaceCoreFaceClass_softClass;
            *(&v216 + 1) = getFaceCoreFaceClass_softClass;
            if (!getFaceCoreFaceClass_softClass)
            {
              *&v210 = MEMORY[0x1E69E9820];
              *(&v210 + 1) = 3221225472;
              *&v211 = __getFaceCoreFaceClass_block_invoke;
              *(&v211 + 1) = &unk_1E76F8100;
              v212 = &v213;
              __getFaceCoreFaceClass_block_invoke(&v210);
              v21 = *(v214 + 40);
            }

            _Block_object_dispose(&v213, 8);
            v22 = objc_alloc_init(v21);
            if ([v20 hasRollAngle])
            {
              [v20 rollAngle];
              v24 = v23;
              if (v23 > 180)
              {
                v24 = v23 - 360;
              }

              [v22 setFaceAngle:v24];
              [v22 faceAngle];
              v26 = v25 + 90.0;
            }

            else
            {
              [v22 setFaceAngle:0.0];
              v26 = (v182 + 90);
            }

            v188 = v26;
            if ([v20 hasYawAngle])
            {
              [v20 yawAngle];
              if (v27 >= 30.0)
              {
                [v20 yawAngle];
                if (v28 < 180.0)
                {
                  v29 = 1;
LABEL_29:
                  [v22 setFaceType:v29];
                  [v20 faceRect];
                  v33 = v32;
                  v35 = v34;
                  v37 = v36;
                  v39 = v38;
                  [v20 faceRect];
                  MidX = CGRectGetMidX(v220);
                  [v20 faceRect];
                  MidY = CGRectGetMidY(v221);
                  v42 = MidY;
                  if (v37 >= v39)
                  {
                    v43 = v39;
                  }

                  else
                  {
                    v43 = v37;
                  }

                  v213 = MidX;
                  *&v214 = MidY;
                  *&v215 = v33;
                  *(&v215 + 1) = v35;
                  *&v216 = v37;
                  *(&v216 + 1) = v39;
                  [v22 setFace:&v213];
                  v44 = v43 * v17;
                  v45 = v44;
                  [v22 setFaceSize:v44];
                  v210 = 0u;
                  v211 = 0u;
                  v201 = 0u;
                  v202 = 0u;
                  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                  v47 = 0.0;
                  v48 = 0.0;
                  if ([v20 hasLeftEye])
                  {
                    [v20 leftEyeRect];
                    v48 = CGRectGetMidX(v222);
                    [v20 leftEyeRect];
                    v49 = CGRectGetMidY(v223);
                    v50 = v18[1];
                    v210 = *v18;
                    v211 = v50;
                    [v20 leftEyeBlinkScore];
                    v47 = v184 - v49;
                    if (v51 >= 30.0)
                    {
                      [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), getFCRFaceExpressionLeftEyeClosed()}];
                    }
                  }

                  v52 = 0.0;
                  v53 = 0.0;
                  if ([v20 hasRightEye])
                  {
                    [v20 rightEyeRect];
                    v53 = CGRectGetMidX(v224);
                    [v20 rightEyeRect];
                    v54 = CGRectGetMidY(v225);
                    v55 = v18[1];
                    v201 = *v18;
                    v202 = v55;
                    [v20 rightEyeBlinkScore];
                    v52 = v184 - v54;
                    if (v56 >= 30.0)
                    {
                      [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), getFCRFaceExpressionRightEyeClosed()}];
                    }
                  }

                  [v20 smileScore];
                  if (v57 > 30.0)
                  {
                    [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), getFCRFaceExpressionSmile()}];
                  }

                  [v22 setExpressionFeatures:dictionary2];
                  v58 = __sincos_stret(v188 / 180.0 * 3.14159265);
                  v215 = v210;
                  v216 = v211;
                  v213 = v48;
                  *&v214 = v47;
                  [v22 setLeftEye:&v213];
                  v215 = v201;
                  v216 = v202;
                  v213 = v53;
                  *&v214 = v52;
                  [v22 setRightEye:&v213];
                  v17 = 0.5;
                  v213 = MidX + v58.__sinval * v45 * 0.5;
                  *&v214 = v42 + v58.__cosval * v45 * 0.5;
                  v59 = v18[1];
                  v215 = *v18;
                  v216 = v59;
                  [v22 setMouth:&v213];
                  [array addObject:v22];

                  continue;
                }
              }

              [v20 yawAngle];
              if (v30 <= 330.0)
              {
                [v20 yawAngle];
                if (v31 > 180.0)
                {
                  v29 = 2;
                  goto LABEL_29;
                }
              }
            }

            v29 = 0;
            goto LABEL_29;
          }
        }

        v15 = [faceStatArray countByEnumeratingWithState:&v203 objects:v218 count:16];
      }

      while (v15);
    }
  }

  v60 = v208;
  if (v208 == 1)
  {
    v226.origin.x = 0.0;
    v226.origin.y = 0.0;
    v226.size.width = width2;
    v226.size.height = height2;
    if (!CGRectEqualToRect(v226, rect2))
    {
      BurstLoggingMessage("setting faces ROI to (%.3f,%.3f,%.3f,%.3f)\n", rect2.origin.x, rect2.origin.y, rect2.size.width, rect2.size.height);
      v61 = [MEMORY[0x1E696B098] valueWithBytes:&rect2 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      *&v210 = 0;
      *(&v210 + 1) = &v210;
      *&v211 = 0x2020000000;
      v62 = getFCRDetectionParamDetectionRegionSymbolLoc_ptr;
      *(&v211 + 1) = getFCRDetectionParamDetectionRegionSymbolLoc_ptr;
      if (!getFCRDetectionParamDetectionRegionSymbolLoc_ptr)
      {
        v213 = MEMORY[0x1E69E9820];
        v214 = 3221225472;
        *&v215 = __getFCRDetectionParamDetectionRegionSymbolLoc_block_invoke;
        *(&v215 + 1) = &unk_1E76F8100;
        *&v216 = &v210;
        v63 = FaceCoreLibrary();
        v64 = dlsym(v63, "FCRDetectionParamDetectionRegion");
        *(*(v216 + 8) + 24) = v64;
        getFCRDetectionParamDetectionRegionSymbolLoc_ptr = *(*(v216 + 8) + 24);
        v62 = *(*(&v210 + 1) + 24);
      }

      _Block_object_dispose(&v210, 8);
      if (!v62)
      {
        goto LABEL_156;
      }

      [dictionary setObject:v61 forKey:*v62];
    }

    v65 = [MEMORY[0x1E696AD98] numberWithInt:v182];
    *&v210 = 0;
    *(&v210 + 1) = &v210;
    *&v211 = 0x2020000000;
    v66 = getFCRDetectionParamInitialAngleSymbolLoc_ptr;
    *(&v211 + 1) = getFCRDetectionParamInitialAngleSymbolLoc_ptr;
    if (!getFCRDetectionParamInitialAngleSymbolLoc_ptr)
    {
      v213 = MEMORY[0x1E69E9820];
      v214 = 3221225472;
      *&v215 = __getFCRDetectionParamInitialAngleSymbolLoc_block_invoke;
      *(&v215 + 1) = &unk_1E76F8100;
      *&v216 = &v210;
      v67 = FaceCoreLibrary();
      v68 = dlsym(v67, "FCRDetectionParamInitialAngle");
      *(*(v216 + 8) + 24) = v68;
      getFCRDetectionParamInitialAngleSymbolLoc_ptr = *(*(v216 + 8) + 24);
      v66 = *(*(&v210 + 1) + 24);
    }

    _Block_object_dispose(&v210, 8);
    if (v66)
    {
      [dictionary setObject:v65 forKey:*v66];
      v69 = rect2.size.width * rect2.size.height;
      if (rect2.size.width * rect2.size.height <= 0.100000001)
      {
        array2 = [MEMORY[0x1E695DEC8] array];
      }

      else
      {
        array2 = [(FCRFaceDetector *)selfCopy->faceDetector detectFacesInImage:v176 options:dictionary error:&v209, v69];
      }

      v71 = array2;
      goto LABEL_57;
    }

LABEL_156:
    [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    goto LABEL_157;
  }

  v71 = 0;
LABEL_57:
  if (-[CAMBurstImageFaceAnalysisContext version](selfCopy, "version") >= 2 && [array count])
  {
    v72 = [array arrayByAddingObjectsFromArray:v71];
  }

  else
  {
    v72 = v71;
  }

  v186 = v72;
  if ([v72 count] >= 7)
  {
    v200[0] = MEMORY[0x1E69E9820];
    v200[1] = 3221225472;
    v200[2] = __63__CAMBurstImageFaceAnalysisContext_findFacesInImage_imageStat___block_invoke;
    v200[3] = &unk_1E76F80A0;
    v200[7] = 0;
    v200[6] = 0;
    *&v200[8] = width2;
    *&v200[9] = height2;
    v200[4] = selfCopy;
    v200[5] = statCopy;
    v186 = [objc_msgSend(v186 sortedArrayUsingComparator:{v200), "subarrayWithRange:", 0, 6}];
  }

  if (v209)
  {
    BurstLoggingMessage("Face detection error\n");
  }

  selfCopy->timeFaceDetectionDone = timeElapsedSinceInit();
  if (selfCopy->faceDetector && v186 && [v186 count])
  {
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v74 = [MEMORY[0x1E696AD98] numberWithBool:1];
    *&v210 = 0;
    *(&v210 + 1) = &v210;
    *&v211 = 0x2020000000;
    v75 = getFCRExtractionParamExtractBlinkSymbolLoc_ptr;
    *(&v211 + 1) = getFCRExtractionParamExtractBlinkSymbolLoc_ptr;
    if (!getFCRExtractionParamExtractBlinkSymbolLoc_ptr)
    {
      v213 = MEMORY[0x1E69E9820];
      v214 = 3221225472;
      *&v215 = __getFCRExtractionParamExtractBlinkSymbolLoc_block_invoke;
      *(&v215 + 1) = &unk_1E76F8100;
      *&v216 = &v210;
      v76 = FaceCoreLibrary();
      v77 = dlsym(v76, "FCRExtractionParamExtractBlink");
      *(*(v216 + 8) + 24) = v77;
      getFCRExtractionParamExtractBlinkSymbolLoc_ptr = *(*(v216 + 8) + 24);
      v75 = *(*(&v210 + 1) + 24);
    }

    _Block_object_dispose(&v210, 8);
    if (v75)
    {
      [dictionary3 setObject:v74 forKey:*v75];
      v78 = [MEMORY[0x1E696AD98] numberWithBool:1];
      *&v210 = 0;
      *(&v210 + 1) = &v210;
      *&v211 = 0x2020000000;
      v79 = getFCRExtractionParamExtractSmileSymbolLoc_ptr;
      *(&v211 + 1) = getFCRExtractionParamExtractSmileSymbolLoc_ptr;
      if (!getFCRExtractionParamExtractSmileSymbolLoc_ptr)
      {
        v213 = MEMORY[0x1E69E9820];
        v214 = 3221225472;
        *&v215 = __getFCRExtractionParamExtractSmileSymbolLoc_block_invoke;
        *(&v215 + 1) = &unk_1E76F8100;
        *&v216 = &v210;
        v80 = FaceCoreLibrary();
        v81 = dlsym(v80, "FCRExtractionParamExtractSmile");
        *(*(v216 + 8) + 24) = v81;
        getFCRExtractionParamExtractSmileSymbolLoc_ptr = *(*(v216 + 8) + 24);
        v79 = *(*(&v210 + 1) + 24);
      }

      _Block_object_dispose(&v210, 8);
      if (v79)
      {
        [dictionary3 setObject:v78 forKey:*v79];
        v82 = [MEMORY[0x1E696AD98] numberWithBool:0];
        *&v210 = 0;
        *(&v210 + 1) = &v210;
        *&v211 = 0x2020000000;
        v83 = getFCRExtractionParamExtractFaceprintSymbolLoc_ptr;
        *(&v211 + 1) = getFCRExtractionParamExtractFaceprintSymbolLoc_ptr;
        if (!getFCRExtractionParamExtractFaceprintSymbolLoc_ptr)
        {
          v213 = MEMORY[0x1E69E9820];
          v214 = 3221225472;
          *&v215 = __getFCRExtractionParamExtractFaceprintSymbolLoc_block_invoke;
          *(&v215 + 1) = &unk_1E76F8100;
          *&v216 = &v210;
          v84 = FaceCoreLibrary();
          v85 = dlsym(v84, "FCRExtractionParamExtractFaceprint");
          *(*(v216 + 8) + 24) = v85;
          getFCRExtractionParamExtractFaceprintSymbolLoc_ptr = *(*(v216 + 8) + 24);
          v83 = *(*(&v210 + 1) + 24);
        }

        _Block_object_dispose(&v210, 8);
        if (v83)
        {
          [dictionary3 setObject:v82 forKey:*v83];
          v86 = [MEMORY[0x1E696AD98] numberWithBool:0];
          *&v210 = 0;
          *(&v210 + 1) = &v210;
          *&v211 = 0x2020000000;
          v87 = getFCRExtractionParamExtractLandmarkPointsSymbolLoc_ptr;
          *(&v211 + 1) = getFCRExtractionParamExtractLandmarkPointsSymbolLoc_ptr;
          if (!getFCRExtractionParamExtractLandmarkPointsSymbolLoc_ptr)
          {
            v213 = MEMORY[0x1E69E9820];
            v214 = 3221225472;
            *&v215 = __getFCRExtractionParamExtractLandmarkPointsSymbolLoc_block_invoke;
            *(&v215 + 1) = &unk_1E76F8100;
            *&v216 = &v210;
            v88 = FaceCoreLibrary();
            v89 = dlsym(v88, "FCRExtractionParamExtractLandmarkPoints");
            *(*(v216 + 8) + 24) = v89;
            getFCRExtractionParamExtractLandmarkPointsSymbolLoc_ptr = *(*(v216 + 8) + 24);
            v87 = *(*(&v210 + 1) + 24);
          }

          _Block_object_dispose(&v210, 8);
          if (v87)
          {
            [dictionary3 setObject:v86 forKey:*v87];
            v90 = [MEMORY[0x1E696AD98] numberWithBool:1];
            *&v210 = 0;
            *(&v210 + 1) = &v210;
            *&v211 = 0x2020000000;
            v91 = getFCRExtractionParamEnhancedEyesAndMouthLocalizationSymbolLoc_ptr;
            *(&v211 + 1) = getFCRExtractionParamEnhancedEyesAndMouthLocalizationSymbolLoc_ptr;
            if (!getFCRExtractionParamEnhancedEyesAndMouthLocalizationSymbolLoc_ptr)
            {
              v213 = MEMORY[0x1E69E9820];
              v214 = 3221225472;
              *&v215 = __getFCRExtractionParamEnhancedEyesAndMouthLocalizationSymbolLoc_block_invoke;
              *(&v215 + 1) = &unk_1E76F8100;
              *&v216 = &v210;
              v92 = FaceCoreLibrary();
              v93 = dlsym(v92, "FCRExtractionParamEnhancedEyesAndMouthLocalization");
              *(*(v216 + 8) + 24) = v93;
              getFCRExtractionParamEnhancedEyesAndMouthLocalizationSymbolLoc_ptr = *(*(v216 + 8) + 24);
              v91 = *(*(&v210 + 1) + 24);
            }

            _Block_object_dispose(&v210, 8);
            if (v91)
            {
              [dictionary3 setObject:v90 forKey:*v91];
              v94 = [MEMORY[0x1E696AD98] numberWithInt:v182];
              *&v210 = 0;
              *(&v210 + 1) = &v210;
              *&v211 = 0x2020000000;
              v95 = getFCRExtractionParamInitialAngleSymbolLoc_ptr;
              *(&v211 + 1) = getFCRExtractionParamInitialAngleSymbolLoc_ptr;
              if (!getFCRExtractionParamInitialAngleSymbolLoc_ptr)
              {
                v213 = MEMORY[0x1E69E9820];
                v214 = 3221225472;
                *&v215 = __getFCRExtractionParamInitialAngleSymbolLoc_block_invoke;
                *(&v215 + 1) = &unk_1E76F8100;
                *&v216 = &v210;
                v96 = FaceCoreLibrary();
                v97 = dlsym(v96, "FCRExtractionParamInitialAngle");
                *(*(v216 + 8) + 24) = v97;
                getFCRExtractionParamInitialAngleSymbolLoc_ptr = *(*(v216 + 8) + 24);
                v95 = *(*(&v210 + 1) + 24);
              }

              _Block_object_dispose(&v210, 8);
              if (v95)
              {
                [dictionary3 setObject:v94 forKey:*v95];
                if ((v60 & 1) != 0 || [(CAMBurstImageFaceAnalysisContext *)selfCopy version]<= 1)
                {
                  v186 = [(FCRFaceDetector *)selfCopy->faceDetector extractDetailsForFaces:v186 inImage:v176 options:dictionary3 error:&v209];
                }

                if (v209)
                {
                  BurstLoggingMessage("extractDetails error: %s\n", [objc_msgSend(v209 "localizedDescription")]);
                }

                goto LABEL_91;
              }
            }
          }
        }
      }
    }

    [CAMBurstImageFaceAnalysisContext setupFaceDetector];
LABEL_157:
    __break(1u);
  }

LABEL_91:
  selfCopy->timeBlinkDetectionDone = timeElapsedSinceInit();
  if ([(CAMBurstImageFaceAnalysisContext *)selfCopy version]>= 2)
  {
    if ([v186 count] || objc_msgSend(objc_msgSend(statCopy, "faceStatArray"), "count"))
    {
      selfCopy->numFramesNoFaces = 0;
    }

    else
    {
      ++selfCopy->numFramesNoFaces;
    }
  }

  if ([v186 count])
  {
    for (j = 0; j < [v186 count]; ++j)
    {
      v99 = [v186 objectAtIndex:j];
      v100 = [objc_msgSend(v99 "expressionFeatures")];
      v101 = [objc_msgSend(v99 "expressionFeatures")];
      bOOLValue = [objc_msgSend(v99 "expressionFeatures")];
      if (v100)
      {
        v103 = [v100 BOOLValue] ^ 1;
        if (v101)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v103 = 1;
        if (v101)
        {
LABEL_99:
          v104 = [v101 BOOLValue] ^ 1;
          if (!bOOLValue)
          {
            goto LABEL_100;
          }

          goto LABEL_104;
        }
      }

      v104 = 1;
      if (!bOOLValue)
      {
LABEL_100:
        if (v99)
        {
          goto LABEL_101;
        }

        goto LABEL_105;
      }

LABEL_104:
      bOOLValue = [bOOLValue BOOLValue];
      if (v99)
      {
LABEL_101:
        [v99 face];
        v106 = *(&v199 + 1);
        v105 = *&v199;
        v107 = *&v198 + 0.0;
        v108 = *(&v198 + 1) + 0.0;
        v109 = 0uLL;
        goto LABEL_106;
      }

LABEL_105:
      v109 = 0uLL;
      v198 = 0u;
      v199 = 0u;
      v106 = 0.0;
      v105 = 0.0;
      v108 = 0.0;
      v107 = 0.0;
      v197 = 0u;
LABEL_106:
      v195 = v109;
      v196 = v109;
      v193 = v109;
      v194 = v109;
      faceStatArray2 = [statCopy faceStatArray];
      v111 = [faceStatArray2 countByEnumeratingWithState:&v193 objects:v217 count:16];
      if (v111)
      {
        v113 = *v194;
        do
        {
          for (k = 0; k != v111; ++k)
          {
            if (*v194 != v113)
            {
              objc_enumerationMutation(faceStatArray2);
            }

            v115 = *(*(&v193 + 1) + 8 * k);
            [(CAMBurstFaceStat *)v115 faceRect];
            v231.origin.x = v107;
            v231.origin.y = v108;
            v231.size.width = v105;
            v231.size.height = v106;
            v228 = CGRectIntersection(v227, v231);
            width = v228.size.width;
            height = v228.size.height;
            [(CAMBurstFaceStat *)v115 faceRect:v228.origin.x];
            v119 = v118;
            [(CAMBurstFaceStat *)v115 faceRect];
            v121 = width * height;
            v122 = v121 * 4.0;
            v112 = v105 * v106;
            if (v122 < v112)
            {
              v123 = v119 * v120;
              v124 = v122 < v123;
            }

            else
            {
              v124 = 0;
            }

            if (!v124)
            {
              [(CAMBurstFaceStat *)v115 setHwFaceId:[(CAMBurstFaceStat *)v115 faceId]];
              goto LABEL_119;
            }
          }

          v111 = [faceStatArray2 countByEnumeratingWithState:&v193 objects:v217 count:16];
        }

        while (v111);
      }

      v115 = objc_alloc_init(CAMBurstFaceStat);
      [objc_msgSend(statCopy "faceStatArray")];

LABEL_119:
      [(CAMBurstFaceStat *)v115 setFaceRect:v107, v108, v105, v106];
      v125 = [(CAMBurstImageFaceAnalysisContext *)selfCopy version]> 1;
      [(CAMBurstFaceStat *)v115 faceRect];
      x = v126;
      y = v127;
      v134 = v128;
      v135 = v129;
      if (v125)
      {
        LODWORD(v130) = 0.25;
        LODWORD(v131) = 0.25;
        [(CAMBurstImageFaceAnalysisContext *)selfCopy padRoiRect:v126 paddingX:v127 paddingY:v128, v129, v130, v131];
        x = v136;
        y = v137;
        v134 = v138;
        v135 = v139;
      }

      if ([statCopy numHWFaces] || j)
      {
        [statCopy facesRoiRect];
        v232.origin.x = x;
        v232.origin.y = y;
        v232.size.width = v134;
        v232.size.height = v135;
        v230 = CGRectUnion(v229, v232);
        x = v230.origin.x;
        y = v230.origin.y;
        v134 = v230.size.width;
        v135 = v230.size.height;
      }

      [statCopy setFacesRoiRect:{x, y, v134, v135}];
      [(CAMBurstFaceStat *)v115 setNormalizedFaceRect:v107 * (1.0 / width), v108 * (1.0 / v178), v105 * (1.0 / width), v106 * (1.0 / v178)];
      [(CAMBurstFaceStat *)v115 setFoundByFaceCore:1];
      if ([(CAMBurstImageFaceAnalysisContext *)selfCopy version]<= 1)
      {
        [(CAMBurstFaceStat *)v115 setHasLeftEye:1];
        [(CAMBurstFaceStat *)v115 setHasRightEye:1];
      }

      [(CAMBurstFaceStat *)v115 setLeftEyeOpen:v103];
      [(CAMBurstFaceStat *)v115 setRightEyeOpen:v104];
      [(CAMBurstFaceStat *)v115 setSmiling:bOOLValue];
      expressionFeatures = [v99 expressionFeatures];
      *&v210 = 0;
      *(&v210 + 1) = &v210;
      *&v211 = 0x2020000000;
      v141 = getFCRFaceExpressionLeftEyeClosedScoreSymbolLoc_ptr;
      *(&v211 + 1) = getFCRFaceExpressionLeftEyeClosedScoreSymbolLoc_ptr;
      if (!getFCRFaceExpressionLeftEyeClosedScoreSymbolLoc_ptr)
      {
        v213 = MEMORY[0x1E69E9820];
        v214 = 3221225472;
        *&v215 = __getFCRFaceExpressionLeftEyeClosedScoreSymbolLoc_block_invoke;
        *(&v215 + 1) = &unk_1E76F8100;
        *&v216 = &v210;
        v142 = FaceCoreLibrary();
        v143 = dlsym(v142, "FCRFaceExpressionLeftEyeClosedScore");
        *(*(v216 + 8) + 24) = v143;
        getFCRFaceExpressionLeftEyeClosedScoreSymbolLoc_ptr = *(*(v216 + 8) + 24);
        v141 = *(*(&v210 + 1) + 24);
      }

      _Block_object_dispose(&v210, 8);
      if (!v141)
      {
        goto LABEL_150;
      }

      [objc_msgSend(expressionFeatures valueForKey:{*v141), "floatValue"}];
      [(CAMBurstFaceStat *)v115 setLeftEyeBlinkScore:?];
      expressionFeatures2 = [v99 expressionFeatures];
      *&v210 = 0;
      *(&v210 + 1) = &v210;
      *&v211 = 0x2020000000;
      v145 = getFCRFaceExpressionRightEyeClosedScoreSymbolLoc_ptr;
      *(&v211 + 1) = getFCRFaceExpressionRightEyeClosedScoreSymbolLoc_ptr;
      if (!getFCRFaceExpressionRightEyeClosedScoreSymbolLoc_ptr)
      {
        v213 = MEMORY[0x1E69E9820];
        v214 = 3221225472;
        *&v215 = __getFCRFaceExpressionRightEyeClosedScoreSymbolLoc_block_invoke;
        *(&v215 + 1) = &unk_1E76F8100;
        *&v216 = &v210;
        v146 = FaceCoreLibrary();
        v147 = dlsym(v146, "FCRFaceExpressionRightEyeClosedScore");
        *(*(v216 + 8) + 24) = v147;
        getFCRFaceExpressionRightEyeClosedScoreSymbolLoc_ptr = *(*(v216 + 8) + 24);
        v145 = *(*(&v210 + 1) + 24);
      }

      _Block_object_dispose(&v210, 8);
      if (!v145)
      {
        goto LABEL_150;
      }

      [objc_msgSend(expressionFeatures2 valueForKey:{*v145), "floatValue"}];
      [(CAMBurstFaceStat *)v115 setRightEyeBlinkScore:?];
      expressionFeatures3 = [v99 expressionFeatures];
      *&v210 = 0;
      *(&v210 + 1) = &v210;
      *&v211 = 0x2020000000;
      v149 = getFCRFaceExpressionSmileScoreSymbolLoc_ptr;
      *(&v211 + 1) = getFCRFaceExpressionSmileScoreSymbolLoc_ptr;
      if (!getFCRFaceExpressionSmileScoreSymbolLoc_ptr)
      {
        v213 = MEMORY[0x1E69E9820];
        v214 = 3221225472;
        *&v215 = __getFCRFaceExpressionSmileScoreSymbolLoc_block_invoke;
        *(&v215 + 1) = &unk_1E76F8100;
        *&v216 = &v210;
        v150 = FaceCoreLibrary();
        v151 = dlsym(v150, "FCRFaceExpressionSmileScore");
        *(*(v216 + 8) + 24) = v151;
        getFCRFaceExpressionSmileScoreSymbolLoc_ptr = *(*(v216 + 8) + 24);
        v149 = *(*(&v210 + 1) + 24);
      }

      _Block_object_dispose(&v210, 8);
      if (!v149)
      {
LABEL_150:
        [CAMBurstImageFaceAnalysisContext setupFaceDetector];
        goto LABEL_157;
      }

      [objc_msgSend(expressionFeatures3 valueForKey:{*v149), "floatValue"}];
      [(CAMBurstFaceStat *)v115 setSmileScore:?];
      [(CAMBurstImageFaceAnalysisContext *)selfCopy version];
      [(CAMBurstFaceStat *)v115 faceRect];
      v153 = v152;
      [(CAMBurstFaceStat *)v115 faceRect];
      v155 = v154;
      v156 = v153 * 0.300000012;
      if (v99)
      {
        [v99 leftEye];
        [v99 leftEye];
        v157 = -v156;
        v158 = -0.5;
        v159 = v192 + 0.0 + v156 * -0.5;
        v160 = *(&v191 + 1) + 0.0;
      }

      else
      {
        v192 = 0.0;
        v157 = -v156;
        v160 = 0.0;
        v158 = -0.5;
        v159 = v156 * -0.5 + 0.0;
        v191 = 0u;
      }

      v161 = v155 * 0.200000003;
      [(CAMBurstFaceStat *)v115 setLeftEyeRect:v159, v160 + v161 * v158, v156, v161];
      if (v99)
      {
        [v99 rightEye];
        [v99 rightEye];
        v162 = v190 + 0.0 + v157 * 0.5;
        v163 = 0.5;
        v164 = *(&v189 + 1) + 0.0;
      }

      else
      {
        v190 = 0.0;
        v164 = 0.0;
        v162 = v157 * 0.5 + 0.0;
        v163 = 0.5;
        v189 = 0u;
      }

      [(CAMBurstFaceStat *)v115 setRightEyeRect:v162, v164 + -v161 * v163, v156, v161];
      faceId = [(CAMBurstFaceStat *)v115 faceId];
      [(CAMBurstFaceStat *)v115 faceRect];
      v167 = v166;
      [(CAMBurstFaceStat *)v115 faceRect];
      v169 = v168;
      [(CAMBurstFaceStat *)v115 faceRect];
      v171 = v170;
      [(CAMBurstFaceStat *)v115 faceRect];
      BurstLoggingMessage("face %d: rect = %.3f,%.3f,%.3f,%.3f, leftOpen=%d,rightOpen=%d\n", faceId, v167, v169, v171, v172, [(CAMBurstFaceStat *)v115 leftEyeOpen], [(CAMBurstFaceStat *)v115 rightEyeOpen]);
    }
  }

  BurstLoggingMessage("  #faces = %d\n", [v186 count]);
  if (-[CAMBurstImageFaceAnalysisContext version](selfCopy, "version") <= 1 && [objc_msgSend(statCopy "faceStatArray")])
  {
    v173 = 0;
    v174 = 0;
    do
    {
      if (([objc_msgSend(objc_msgSend(statCopy "faceStatArray")] & 1) == 0)
      {
        [objc_msgSend(statCopy "faceStatArray")];
        --v174;
      }

      v173 = ++v174;
    }

    while ([objc_msgSend(statCopy "faceStatArray")] > v174);
  }

  return [v186 count];
}

uint64_t __63__CAMBurstImageFaceAnalysisContext_findFacesInImage_imageStat___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    [a2 face];
    [a2 face];
    v6 = *&v39 * *(&v36 + 1);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = 0.0;
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v11 = 0.0;
    v10 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
    goto LABEL_8;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = 0.0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  [a3 face];
  [a3 face];
  v7 = *&v33 * *(&v30 + 1);
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_4:
  [a2 face];
  v9 = *(&v26 + 1);
  v8 = *&v26;
  v11 = *(&v27 + 1);
  v10 = *&v27;
LABEL_8:
  v12 = [*(a1 + 32) findOverlappingFaceStat:*(a1 + 40) imageStat:{v8 + *(a1 + 48), v9 + *(a1 + 56), v10, v11}];
  if (a3)
  {
    [a3 face];
    v14 = *(&v23 + 1);
    v13 = *&v23;
    v16 = *(&v24 + 1);
    v15 = *&v24;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v16 = 0.0;
    v15 = 0.0;
    v14 = 0.0;
    v13 = 0.0;
  }

  v17 = [*(a1 + 32) findOverlappingFaceStat:*(a1 + 40) imageStat:{v13 + *(a1 + 48), v14 + *(a1 + 56), v15, v16, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39}];
  v18 = v17;
  if (v12 && !v17)
  {
    return -1;
  }

  if (v17 && !v12)
  {
    return 1;
  }

  if (!v12 || !v17)
  {
    goto LABEL_27;
  }

  if ([v12 hasLeftEye])
  {
    v20 = [v12 hasRightEye];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v18 hasLeftEye];
  if (v21)
  {
    v21 = [v18 hasRightEye];
  }

  if (v20 && !v21)
  {
    return -1;
  }

  if (!(v20 & 1 | ((v21 & 1) == 0)))
  {
    return 1;
  }

LABEL_27:
  if (v6 <= v7)
  {
    return 1;
  }

  return -1;
}

- (void)calculateFaceFocusInImage:(id)image imageStat:(id)stat
{
  if ([objc_msgSend(stat "faceStatArray")])
  {
    BurstLoggingMessage("calculateFaceFocus:\n");
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(stat, "faceStatArray"), "count")}];
    if ([objc_msgSend(stat "faceStatArray")])
    {
      v7 = 0;
      do
      {
        v8 = [objc_msgSend(stat "faceStatArray")];
        memset(&v60, 0, sizeof(v60));
        if ([v8 hasLeftEye] && objc_msgSend(v8, "hasRightEye"))
        {
          [v8 leftEyeRect];
          v10 = v9;
          v12 = v11;
          v14 = v13;
          v16 = v15;
          [v8 rightEyeRect];
          v64.origin.x = v17;
          v64.origin.y = v18;
          v64.size.width = v19;
          v64.size.height = v20;
          v61.origin.x = v10;
          v61.origin.y = v12;
          v61.size.width = v14;
          v61.size.height = v16;
          v62 = CGRectUnion(v61, v64);
        }

        else if ([v8 hasLeftEye])
        {
          [v8 leftEyeRect];
        }

        else if ([v8 hasRightEye])
        {
          [v8 rightEyeRect];
        }

        else
        {
          [v8 faceRect];
        }

        v60.origin.x = v62.origin.x;
        v60.origin.y = v62.origin.y;
        v60.size.width = v62.size.width;
        v60.size.height = v62.size.height;
        v21 = ([image width] - 2);
        v65.size.height = ([image height] - 2);
        v65.origin.x = 1.0;
        v65.origin.y = 1.0;
        v65.size.width = v21;
        v63 = CGRectIntersection(v60, v65);
        v60 = v63;
        BurstLoggingMessage("   adding rect: %.3f,%.3f,%.3f,%.3f\n", v63.origin.x, v63.origin.y, v63.size.width, v63.size.height);
        [v6 addObject:{objc_msgSend(MEMORY[0x1E696B098], "value:withObjCType:", &v60, "{CGRect={CGPoint=dd}{CGSize=dd}}")}];
        ++v7;
      }

      while ([objc_msgSend(stat "faceStatArray")] > v7);
    }

    height = [image height];
    bytesPerRow = [image bytesPerRow];
    v59 = height;
    v24 = malloc_type_malloc(bytesPerRow * height, 0x100004077774924uLL);
    if ([v6 count])
    {
      v25 = 0;
      do
      {
        memset(&v60, 0, sizeof(v60));
        [objc_msgSend(v6 objectAtIndex:{v25), "getValue:", &v60}];
        v60.origin.y = v59 - v60.origin.y - v60.size.height;
        ybuffer = [image Ybuffer];
        height = v60.size.height;
        if (v60.size.height >= 1)
        {
          v28 = 0;
          v29 = bytesPerRow * v60.origin.y;
          v30 = &v24[v29 + v60.origin.x];
          v31 = ybuffer + v29 + v60.origin.x;
          v32 = v60.origin.x + v29;
          v33 = ybuffer + ~bytesPerRow + v32;
          v34 = ybuffer + 1 - bytesPerRow + v32;
          v35 = ybuffer + bytesPerRow - 1 + v32;
          v36 = ybuffer + bytesPerRow + 1 + v32;
          v37 = ybuffer + -bytesPerRow + v32;
          v38 = ybuffer + bytesPerRow + v32;
          width = v60.size.width;
          do
          {
            if (width >= 1)
            {
              v40 = 0;
              do
              {
                v41 = *(v33 + v40);
                v42 = *(v34 + v40);
                v43 = *(v35 + v40);
                v44 = *(v36 + v40);
                v45 = 3 * (v43 - v44 + v41 - v42) + 10 * (*(v31 + v40 - 1) - *(v31 + v40 + 1));
                v46 = 3 * (v42 - v44 + v41 - v43) + 10 * (*(v37 + v40) - *(v38 + v40));
                v47 = (v45 * v45 + v46 * v46) >> 11;
                if (v47 >= 0xFF)
                {
                  LOBYTE(v47) = -1;
                }

                v30[v40++] = v47;
              }

              while (v40 < width);
            }

            ++v28;
            v31 += bytesPerRow;
            v30 += bytesPerRow;
            v33 += bytesPerRow;
            v34 += bytesPerRow;
            v35 += bytesPerRow;
            v36 += bytesPerRow;
            v37 += bytesPerRow;
            v38 += bytesPerRow;
          }

          while (v28 < height);
        }

        ++v25;
      }

      while ([v6 count] > v25);
    }

    if ([objc_msgSend(stat "faceStatArray")])
    {
      v48 = 0;
      v49 = bytesPerRow;
      do
      {
        v50 = [objc_msgSend(stat "faceStatArray")];
        v51 = [v6 objectAtIndex:v48];
        memset(&v60, 0, sizeof(v60));
        [v51 getValue:&v60];
        v52 = v59 - v60.origin.y - v60.size.height;
        v60.origin.y = v52;
        if (v60.size.height < 1)
        {
          v54 = 0;
        }

        else
        {
          v53 = 0;
          v54 = 0;
          v55 = &v24[v49 * v52 + v60.origin.x];
          v56 = v60.size.width;
          do
          {
            if (v56 >= 1)
            {
              v57 = 0;
              do
              {
                v54 += *(v55 + v57++);
              }

              while (v56 != v57);
            }

            ++v53;
            v55 += v49;
          }

          while (v53 != v60.size.height);
        }

        BurstLoggingMessage("   focusScore = %d, %.3f\n", v54, v60.size.height * v60.size.width);
        v58 = v54 / (v60.size.width * v60.size.height);
        *&v58 = v58;
        [v50 setFocusScore:v58];
        ++v48;
      }

      while ([objc_msgSend(stat "faceStatArray")] > v48);
    }

    free(v24);
  }
}

- (void)calcFaceScores:(id)scores
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  if ([scores count])
  {
    v5 = 0;
    do
    {
      v6 = [objc_msgSend(objc_msgSend(scores objectAtIndex:{v5), "burstImages"), "objectAtIndex:", 0}];
      if ([objc_msgSend(v6 "faceStatArray")])
      {
        v7 = 0;
        do
        {
          v8 = [objc_msgSend(v6 "faceStatArray")];
          v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "faceId")}];
          v10 = [v4 objectForKey:v9];
          if (v10)
          {
            v11 = v10;
            [v8 focusScore];
            [v11 addScore:?];
          }

          else
          {
            v12 = [CAMBurstFaceScoreEntry alloc];
            [v8 focusScore];
            v13 = [(CAMBurstFaceScoreEntry *)v12 initWithScore:?];
            [v4 setObject:v13 forKey:v9];
          }

          ++v7;
        }

        while ([objc_msgSend(v6 "faceStatArray")] > v7);
      }

      ++v5;
    }

    while ([scores count] > v5);
  }

  if ([scores count])
  {
    v14 = 0;
    do
    {
      v15 = [objc_msgSend(objc_msgSend(scores objectAtIndex:{v14), "burstImages"), "objectAtIndex:", 0}];
      if ([objc_msgSend(v15 "faceStatArray")])
      {
        v16 = 0;
        do
        {
          v17 = [objc_msgSend(v15 "faceStatArray")];
          v18 = [v4 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v17, "faceId"))}];
          [v18 computeAverage];
          v20 = v19;
          [v17 focusScore];
          *&v22 = v21 / v20;
          [v17 setNormalizedFocusScore:v22];
          [v17 focusScore];
          v24 = v23 - v20;
          [v18 computeStandardDeviation];
          *&v26 = v24 / v25;
          [v17 setNormalizedSigma:v26];
          ++v16;
        }

        while ([objc_msgSend(v15 "faceStatArray")] > v16);
      }

      ++v14;
    }

    while ([scores count] > v14);
  }
}

- (void)adjustFaceIdsForImageStat:(id)stat
{
  statCopy = stat;
  v215 = *MEMORY[0x1E69E9840];
  BurstLoggingMessage("AdjustFaceIds: Examining '%s'\n", [objc_msgSend(stat "imageId")]);
  if (![objc_msgSend(statCopy "faceStatArray")])
  {
    return;
  }

  v175 = statCopy;
  if ([(CAMBurstImageFaceAnalysisContext *)self version]>= 2)
  {
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    obj = [statCopy faceStatArray];
    v178 = [obj countByEnumeratingWithState:&v204 objects:v214 count:16];
    if (!v178)
    {
      return;
    }

    v176 = *v205;
    while (1)
    {
      for (i = 0; i != v178; i = i + 1)
      {
        if (*v205 != v176)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v204 + 1) + 8 * i);
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        faceInfoArray = self->faceInfoArray;
        v8 = [(NSMutableArray *)faceInfoArray countByEnumeratingWithState:&v200 objects:v213 count:16];
        if (!v8)
        {
          goto LABEL_20;
        }

        v9 = v8;
        v10 = *v201;
LABEL_10:
        v11 = 0;
        while (1)
        {
          if (*v201 != v10)
          {
            objc_enumerationMutation(faceInfoArray);
          }

          v12 = *(*(&v200 + 1) + 8 * v11);
          hwFaceId = [v6 hwFaceId];
          if (hwFaceId == [(CAMBurstFaceInfo *)v12 hwFaceId])
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [(NSMutableArray *)faceInfoArray countByEnumeratingWithState:&v200 objects:v213 count:16];
            if (!v9)
            {
              goto LABEL_20;
            }

            goto LABEL_10;
          }
        }

        if ([(CAMBurstFaceInfo *)v12 swFaceId]== -1)
        {
          ++self->faceIdCounter;
          [(CAMBurstFaceInfo *)v12 setSwFaceId:?];
        }

        if (v12)
        {
          goto LABEL_44;
        }

LABEL_20:
        v198 = 0u;
        v199 = 0u;
        v196 = 0u;
        v197 = 0u;
        v14 = self->faceInfoArray;
        v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v196 objects:v212 count:16];
        if (!v15)
        {
          goto LABEL_43;
        }

        v16 = v15;
        v17 = 0;
        v12 = 0;
        v18 = *v197;
        do
        {
          v19 = 0;
          do
          {
            if (*v197 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v196 + 1) + 8 * v19);
            [v6 faceRect];
            [(CAMBurstFaceInfo *)v20 overlapWithHwRect:?];
            if (v21 >= 0.25)
            {
              hwLastFrameSeen = [(CAMBurstFaceInfo *)v20 hwLastFrameSeen];
              if (!v12)
              {
                goto LABEL_31;
              }

              if (hwLastFrameSeen > v17 && ([(CAMBurstFaceInfo *)v20 hwLastFrameSeen]- v17 > 3 || [(CAMBurstFaceInfo *)v20 swFaceId]!= -1 || [(CAMBurstFaceInfo *)v12 swFaceId]== -1))
              {
                hwLastFrameSeen = [(CAMBurstFaceInfo *)v20 hwLastFrameSeen];
LABEL_31:
                v17 = hwLastFrameSeen;
                v12 = v20;
              }
            }

            [v6 faceRect];
            [(CAMBurstFaceInfo *)v20 overlapWithSwRect:?];
            if (v23 < 0.25)
            {
              goto LABEL_37;
            }

            swLastFrameSeen = [(CAMBurstFaceInfo *)v20 swLastFrameSeen];
            if (v12)
            {
              if (swLastFrameSeen <= v17)
              {
                goto LABEL_37;
              }

              swLastFrameSeen = [(CAMBurstFaceInfo *)v20 swLastFrameSeen];
            }

            v17 = swLastFrameSeen;
            v12 = v20;
LABEL_37:
            ++v19;
          }

          while (v16 != v19);
          v25 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v196 objects:v212 count:16];
          v16 = v25;
        }

        while (v25);
        statCopy = v175;
        if (!v12)
        {
LABEL_43:
          v12 = objc_alloc_init(CAMBurstFaceInfo);
          [(NSMutableArray *)self->faceInfoArray addObject:v12];
        }

LABEL_44:
        if ([(CAMBurstFaceInfo *)v12 swFaceId]== -1)
        {
          ++self->faceIdCounter;
          [(CAMBurstFaceInfo *)v12 setSwFaceId:?];
        }

        -[CAMBurstFaceInfo setSwLastFrameSeen:](v12, "setSwLastFrameSeen:", [statCopy temporalOrder]);
        [v6 faceRect];
        MidX = CGRectGetMidX(v216);
        [v6 faceRect];
        [(CAMBurstFaceInfo *)v12 setSwCenter:MidX, CGRectGetMidY(v217)];
        [v6 faceRect];
        [(CAMBurstFaceInfo *)v12 setSwSize:v27, v28];
        [v6 setFaceId:{-[CAMBurstFaceInfo swFaceId](v12, "swFaceId")}];
      }

      v178 = [obj countByEnumeratingWithState:&v204 objects:v214 count:16];
      if (!v178)
      {
        return;
      }
    }
  }

  v179 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(statCopy, "faceStatArray"), "count")}];
  v177 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(objc_msgSend(statCopy, "faceStatArray"), "count")}];
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  faceStatArray = [statCopy faceStatArray];
  v30 = [faceStatArray countByEnumeratingWithState:&v192 objects:v211 count:16];
  v31 = 0x1E696A000uLL;
  if (!v30)
  {
    goto LABEL_67;
  }

  v32 = v30;
  v33 = *v193;
  v34 = *MEMORY[0x1E695F058];
  v35 = *(MEMORY[0x1E695F058] + 8);
  v36 = *(MEMORY[0x1E695F058] + 16);
  v37 = *(MEMORY[0x1E695F058] + 24);
  do
  {
    v38 = 0;
    do
    {
      if (*v193 != v33)
      {
        objc_enumerationMutation(faceStatArray);
      }

      v39 = *(*(&v192 + 1) + 8 * v38);
      BurstLoggingMessage("faceStat.id = %d\n", [v39 faceId]);
      if (![v39 faceId])
      {
        faceIdCounter = self->faceIdCounter;
        self->faceIdCounter = faceIdCounter + 1;
        BurstLoggingMessage("    no id: assigning %d\n", faceIdCounter);
        v51 = v39;
        v52 = faceIdCounter;
        goto LABEL_60;
      }

      v40 = -[NSMutableDictionary objectForKey:](self->renameMapping, "objectForKey:", [*(v31 + 3480) numberWithInt:{objc_msgSend(v39, "faceId")}]);
      if (!v40)
      {
        goto LABEL_58;
      }

      v41 = v40;
      temporalOrder = [statCopy temporalOrder];
      if ((temporalOrder - [v41 framesSinceLast]) >= 41)
      {
        -[NSMutableDictionary removeObjectForKey:](self->renameMapping, "removeObjectForKey:", [*(v31 + 3480) numberWithInt:{objc_msgSend(v39, "faceId")}]);
LABEL_58:
        v43 = self->faceIdCounter;
        self->faceIdCounter = v43 + 1;
        BurstLoggingMessage("    new id: %d mapped to %d\n", [v39 faceId], v43);
        v44 = [[CAMBurstFaceConfigEntry alloc] initWithRect:v43 withFaceId:v34, v35, v36, v37];
        -[CAMBurstFaceConfigEntry setFramesSinceLast:](v44, "setFramesSinceLast:", [statCopy temporalOrder]);
        renameMapping = self->renameMapping;
        v46 = MEMORY[0x1E696AD98];
        faceId = [v39 faceId];
        v48 = v46;
        v31 = 0x1E696A000;
        v49 = [v48 numberWithInt:faceId];
        v50 = renameMapping;
        statCopy = v175;
        [(NSMutableDictionary *)v50 setObject:v44 forKey:v49];

        v51 = v39;
        v52 = v43;
LABEL_60:
        [v51 setFaceId:v52];
        goto LABEL_61;
      }

      BurstLoggingMessage("    rename found: %d mapped to %d\n", [v39 faceId], objc_msgSend(v41, "faceId"));
      [v39 setFaceId:{objc_msgSend(v41, "faceId")}];
      [v41 setFramesSinceLast:{objc_msgSend(statCopy, "temporalOrder")}];
LABEL_61:
      v54 = -[NSMutableDictionary objectForKey:](self->faceIdMapping, "objectForKey:", [*(v31 + 3480) numberWithInt:{objc_msgSend(v39, "faceId")}]);
      if (v54)
      {
        v55 = v54;
        BurstLoggingMessage("    map found: %d maps to %d\n", [v39 faceId], objc_msgSend(v54, "intValue"));
        [v39 setFaceId:{objc_msgSend(v55, "intValue")}];
        [v177 setObject:objc_msgSend(*(v31 + 3480) forKey:{"numberWithInt:", objc_msgSend(v39, "faceId")), objc_msgSend(*(v31 + 3480), "numberWithInt:", objc_msgSend(v39, "faceId"))}];
      }

      v56 = [CAMBurstFaceConfigEntry alloc];
      [v39 faceRect];
      v61 = -[CAMBurstFaceConfigEntry initWithRect:withFaceId:](v56, "initWithRect:withFaceId:", [v39 faceId], v57, v58, v59, v60);
      [v179 addObject:v61];

      ++v38;
    }

    while (v32 != v38);
    v62 = [faceStatArray countByEnumeratingWithState:&v192 objects:v211 count:16];
    v32 = v62;
  }

  while (v62);
LABEL_67:
  v171 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->curConfig, "count")}];
  [v171 addEntriesFromDictionary:self->curConfig];
  v63 = v179;
  if ([v179 count])
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0.0;
    v68 = 0.0;
    v69 = 0.0;
    v70 = 0.0;
    while (1)
    {
      v71 = [v63 objectAtIndex:v64];
      v72 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v71, "faceId")}];
      v73 = [v177 objectForKey:v72];
      v74 = 1.0;
      if (v73)
      {
        v75 = 1.0;
      }

      else
      {
        v76 = [v171 objectForKey:{v72, 1.0}];
        if (!v76)
        {
          statCopy = v175;
          v63 = v179;
          goto LABEL_74;
        }

        v77 = v76;
        v78 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v76, "faceId")}];
        [v177 setObject:v78 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v71, "faceId"))}];
        BurstLoggingMessage("       entry exists with same id: %d\n", [v77 faceId]);
        [v71 faceRect];
        v79 = CGRectGetMidX(v218);
        [v71 faceRect];
        MidY = CGRectGetMidY(v219);
        [v77 faceRect];
        v81 = CGRectGetMidX(v220);
        [v77 faceRect];
        v67 = v67 + v79 - v81;
        v68 = v68 + MidY - CGRectGetMidY(v221);
        [v71 faceRect];
        v83 = v82;
        [v77 faceRect];
        v75 = v83 / v84;
        [v71 faceRect];
        v86 = v85;
        [v77 faceRect];
        v74 = v86 / v87;
        statCopy = v175;
      }

      v69 = v69 + v75;
      v70 = v70 + v74;
      ++v65;
      v63 = v179;
      [v179 removeObjectAtIndex:v64];
      --v66;
      [v171 removeObjectForKey:v72];
LABEL_74:
      v64 = ++v66;
      if ([v63 count] <= v66)
      {
        goto LABEL_78;
      }
    }
  }

  v65 = 0;
  v70 = 0.0;
  v69 = 0.0;
  v68 = 0.0;
  v67 = 0.0;
LABEL_78:
  BurstLoggingMessage("%d faces so far unmatched:\n", [v63 count]);
  if ([v63 count])
  {
    v88 = 0;
    do
    {
      BurstLoggingMessage("    face %d\n", [objc_msgSend(v63 objectAtIndex:{v88++), "faceId"}]);
    }

    while ([v63 count] > v88);
  }

  v89 = 0x1E696A000;
  v90 = v171;
  if ([v63 count])
  {
    if (v65 <= 0)
    {
      if ([v179 count])
      {
        v118 = 0;
        v170 = 0;
        v119 = 0;
        while (1)
        {
          v167 = v118;
          allKeys = [v90 allKeys];
          BurstLoggingMessage("  prevConfig has %d entries\n", [allKeys count]);
          v168 = allKeys;
          if ([allKeys count])
          {
            v121 = 0;
            v169 = v119;
            v122 = v179;
            do
            {
              v172 = v121;
              v123 = [MEMORY[0x1E695DF70] arrayWithArray:v122];
              v124 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v90];
              obja = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v122, "count")}];
              if ([v123 count])
              {
                v125 = 0;
                do
                {
                  v126 = [v123 objectAtIndex:v125];
                  [v126 faceRect];
                  v128 = v127;
                  v130 = v129;
                  v132 = v131;
                  v134 = v133;
                  allKeys2 = [v124 allKeys];
                  if ([allKeys2 count])
                  {
                    v136 = 0;
                    while (1)
                    {
                      v137 = [v124 objectForKey:{objc_msgSend(allKeys2, "objectAtIndex:", v136)}];
                      [v137 faceRect];
                      v227.origin.x = v128;
                      v227.origin.y = v130;
                      v227.size.width = v132;
                      v227.size.height = v134;
                      v225 = CGRectIntersection(v224, v227);
                      v138 = v225.size.width * v225.size.height;
                      if (v225.size.width * v225.size.height >= v132 * v134 * 0.5)
                      {
                        break;
                      }

                      if ([allKeys2 count] <= ++v136)
                      {
                        goto LABEL_105;
                      }
                    }

                    v139 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v137, "faceId", v138, v225.origin.y)}];
                    [obja setObject:v139 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v126, "faceId"))}];
                    [v124 removeObjectForKey:{objc_msgSend(allKeys2, "objectAtIndex:", v136)}];
                  }

LABEL_105:
                  ++v125;
                }

                while ([v123 count] > v125);
              }

              v119 = obja;
              v90 = v171;
              v122 = v179;
              if ([obja count] > v170)
              {
                v169 = obja;
                v170 = [obja count];
                if ([objc_msgSend(v175 "faceStatArray")] == v170)
                {
                  break;
                }
              }

              v121 = v172 + 1;
              v119 = v169;
            }

            while ([v168 count] > (v172 + 1));
          }

          else
          {
            v122 = v179;
          }

          statCopy = v175;
          if ([objc_msgSend(v175 "faceStatArray")] == v170)
          {
            break;
          }

          v140 = [v122 count];
          v89 = 0x1E696A000;
          v118 = v167 + 1;
          if (v140 <= v167 + 1)
          {
            goto LABEL_115;
          }
        }

        BurstLoggingMessage("Found mapping!\n");
        v89 = 0x1E696A000uLL;
LABEL_115:
        if (v170 >= 1)
        {
          if ([v179 count])
          {
            v141 = 0;
            v142 = 0;
            do
            {
              if ([v119 objectForKey:{objc_msgSend(*(v89 + 3480), "numberWithInt:", objc_msgSend(objc_msgSend(v179, "objectAtIndex:", v141), "faceId"))}])
              {
                [v179 removeObjectAtIndex:v141];
                --v142;
              }

              v141 = ++v142;
            }

            while ([v179 count] > v142);
          }

          [v177 addEntriesFromDictionary:v119];
        }
      }

      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v143 = [v179 countByEnumeratingWithState:&v188 objects:v210 count:16];
      if (v143)
      {
        v144 = v143;
        v145 = *v189;
        do
        {
          for (j = 0; j != v144; ++j)
          {
            if (*v189 != v145)
            {
              objc_enumerationMutation(v179);
            }

            v147 = *(*(&v188 + 1) + 8 * j);
            [v177 setObject:objc_msgSend(*(v89 + 3480) forKey:{"numberWithInt:", objc_msgSend(v147, "faceId")), objc_msgSend(*(v89 + 3480), "numberWithInt:", objc_msgSend(v147, "faceId"))}];
            BurstLoggingMessage("   mapping not found for %d, mapping to itself\n", [v147 faceId]);
          }

          v144 = [v179 countByEnumeratingWithState:&v188 objects:v210 count:16];
        }

        while (v144);
      }
    }

    else
    {
      v91 = v179;
      if ([v179 count])
      {
        v92 = 0;
        v93 = (1.0 / v65);
        v94 = v67 * v93;
        v95 = v68 * v93;
        v96 = v69 * v93;
        v97 = v70 * v93;
        do
        {
          v98 = [v91 objectAtIndex:v92];
          allKeys3 = [v90 allKeys];
          if ([allKeys3 count])
          {
            v100 = 0;
            while (1)
            {
              v101 = [v90 objectForKey:{objc_msgSend(allKeys3, "objectAtIndex:", v100)}];
              [v98 faceRect];
              v103 = v94 + v102;
              v105 = v95 + v104;
              v107 = v96 * v106;
              v109 = v97 * v108;
              [v98 faceRect];
              v226.origin.x = v110;
              v226.origin.y = v111;
              v226.size.width = v112;
              v226.size.height = v113;
              v222.origin.x = v103;
              v222.origin.y = v105;
              v222.size.width = v107;
              v222.size.height = v109;
              v223 = CGRectIntersection(v222, v226);
              *&v103 = v223.size.width * v223.size.height;
              BurstLoggingMessage("    %d overlaps with %d by %.3f %% : ", [v101 faceId], objc_msgSend(v98, "faceId"), (*&v103 * 100.0) / (v107 * v109));
              v114 = *&v103;
              v115 = v107 * v109 * 0.5;
              if (v115 <= *&v103)
              {
                break;
              }

              BurstLoggingMessage("    not matched\n", v114, v115);
              if ([allKeys3 count] <= ++v100)
              {
                goto LABEL_89;
              }
            }

            BurstLoggingMessage("    matched!  mapping %d to %d\n", [v98 faceId], objc_msgSend(v101, "faceId"));
            v117 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v101, "faceId")}];
            v90 = v171;
            [v177 setObject:v117 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v98, "faceId"))}];
            [v171 removeObjectForKey:{objc_msgSend(allKeys3, "objectAtIndex:", v100)}];
          }

          else
          {
LABEL_89:
            BurstLoggingMessage("      no match found for id %d - adding face\n", [v98 faceId]);
            v116 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v98, "faceId")}];
            [v177 setObject:v116 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v98, "faceId"))}];
          }

          ++v92;
          v91 = v179;
          statCopy = v175;
        }

        while ([v179 count] > v92);
      }
    }
  }

  [(NSMutableDictionary *)self->faceIdMapping addEntriesFromDictionary:v177];
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  faceStatArray2 = [statCopy faceStatArray];
  v149 = [faceStatArray2 countByEnumeratingWithState:&v184 objects:v209 count:16];
  if (v149)
  {
    v150 = v149;
    v151 = *v185;
    do
    {
      for (k = 0; k != v150; ++k)
      {
        if (*v185 != v151)
        {
          objc_enumerationMutation(faceStatArray2);
        }

        v153 = *(*(&v184 + 1) + 8 * k);
        [v153 setFaceId:{objc_msgSend(objc_msgSend(v177, "objectForKey:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v153, "faceId"))), "intValue")}];
        v154 = [CAMBurstFaceConfigEntry alloc];
        [v153 faceRect];
        v159 = -[CAMBurstFaceConfigEntry initWithRect:withFaceId:](v154, "initWithRect:withFaceId:", [v153 faceId], v155, v156, v157, v158);
        -[NSMutableDictionary setObject:forKey:](self->curConfig, "setObject:forKey:", v159, [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v153, "faceId")}]);
      }

      v150 = [faceStatArray2 countByEnumeratingWithState:&v184 objects:v209 count:16];
    }

    while (v150);
  }

  allKeys4 = [(NSMutableDictionary *)self->curConfig allKeys];
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v161 = [allKeys4 countByEnumeratingWithState:&v180 objects:v208 count:16];
  if (v161)
  {
    v162 = v161;
    v163 = *v181;
    do
    {
      for (m = 0; m != v162; ++m)
      {
        if (*v181 != v163)
        {
          objc_enumerationMutation(allKeys4);
        }

        v165 = *(*(&v180 + 1) + 8 * m);
        v166 = [(NSMutableDictionary *)self->curConfig objectForKey:v165];
        [v166 setFramesSinceLast:{objc_msgSend(v166, "framesSinceLast") + 1}];
        if ([v166 framesSinceLast] >= 4)
        {
          BurstLoggingMessage("removing config entry: %d\n", [v166 faceId]);
          [(NSMutableDictionary *)self->curConfig removeObjectForKey:v165];
        }
      }

      v162 = [allKeys4 countByEnumeratingWithState:&v180 objects:v208 count:16];
    }

    while (v162);
  }
}

- (void)addFaceToArray:(id)array
{
  v5 = [array objectForKey:@"Timestamp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(&v27, 0, 24);
    CMTimeMakeFromDictionary(&v27, v5);
    *&time.value = v27.origin;
    time.epoch = *&v27.size.width;
    Seconds = CMTimeGetSeconds(&time);
LABEL_5:
    v7 = Seconds;
    goto LABEL_6;
  }

  objc_opt_class();
  v7 = -1.0;
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [(__CFDictionary *)v5 unsignedLongLongValue];
    Seconds = timestampToSeconds(unsignedLongLongValue, v9, v10, v11);
    goto LABEL_5;
  }

LABEL_6:
  BurstLoggingMessage("  face ID = %d, timestamp = %.6f\n", [objc_msgSend(array objectForKey:{@"FaceID", "intValue"}], v7);
  v12 = [(NSMutableArray *)self->faceTimestampArray count];
  v13 = v12 & (v12 >> 31);
  v14 = v12 - 1;
  while (1)
  {
    v15 = __OFSUB__(v12--, 1);
    if (v12 < 0 != v15)
    {
      break;
    }

    [objc_msgSend(-[NSMutableArray objectAtIndex:](self->faceTimestampArray objectAtIndex:{v14--), "objectForKey:", @"Timestamp", "doubleValue"}];
    if (v7 >= v16)
    {
      v13 = v12 + 1;
      break;
    }
  }

  v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:array];
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v7), @"Timestamp"}];
  v18 = [v17 objectForKey:@"Rect"];
  if (v18)
  {
    v19 = v18;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(&v27, 0, sizeof(v27));
      if (CGRectMakeWithDictionaryRepresentation(v19, &v27))
      {
        v20 = MEMORY[0x1E696AD98];
        MidX = CGRectGetMidX(v27);
        *&MidX = MidX;
        [v17 setObject:objc_msgSend(v20 forKey:{"numberWithFloat:", MidX), @"X"}];
        v22 = MEMORY[0x1E696AD98];
        MidY = CGRectGetMidY(v27);
        *&MidY = MidY;
        [v17 setObject:objc_msgSend(v22 forKey:{"numberWithFloat:", MidY), @"Y"}];
        HIDWORD(v24) = HIDWORD(v27.size.width);
        *&v24 = v27.size.width;
        [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v24), @"Width"}];
        HIDWORD(v25) = HIDWORD(v27.size.height);
        *&v25 = v27.size.height;
        [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v25), @"Height"}];
        [v17 removeObjectForKey:@"Rect"];
      }
    }
  }

  [(NSMutableArray *)self->faceTimestampArray insertObject:v17 atIndex:v13];
  BurstLoggingMessage("    inserting at index %d, count=%d\n", v13, [v17 count]);
  latestFaceTimestamp = self->latestFaceTimestamp;
  if (v7 >= latestFaceTimestamp)
  {
    latestFaceTimestamp = v7;
  }

  self->latestFaceTimestamp = latestFaceTimestamp;
}

- (void)extractFacesFromMetadata:(id)metadata
{
  v32 = *MEMORY[0x1E69E9840];
  BurstLoggingMessage("  extractFacesFromMetadata\n", a2);
  if (metadata)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [metadata objectForKey:@"AccumulatedFaceMetadata"];
      BurstLoggingMessage("  accumulatedFaceMetadata = %x\n", v5);
      if (v5)
      {
        BurstLoggingMessage("adding %d faces\n", [v5 count]);
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v28;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v28 != v8)
              {
                objc_enumerationMutation(v5);
              }

              [(CAMBurstImageFaceAnalysisContext *)self addFaceToArray:*(*(&v27 + 1) + 8 * i)];
            }

            v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v7);
        }

        goto LABEL_29;
      }

      v10 = [metadata objectForKey:*MEMORY[0x1E696D9B0]];
      if (v10)
      {
        v11 = v10;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v13 = *MEMORY[0x1E696D8B0];
        if (isKindOfClass)
        {
          v14 = [v11 objectForKey:*MEMORY[0x1E696D8B0]];
          if (v14)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v13 = *MEMORY[0x1E696D8B0];
      }

      v14 = [metadata objectForKey:v13];
      if (!v14)
      {
LABEL_29:
        v21 = [metadata objectForKey:*MEMORY[0x1E696DE30]];
        if (v21)
        {
          v22 = v21;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [v22 objectForKey:@"3"];
            if (v23)
            {
              memset(&v26, 0, sizeof(v26));
              CMTimeMakeFromDictionary(&v26, v23);
              time = v26;
              latestFaceTimestamp = CMTimeGetSeconds(&time) + -0.100000001;
              if (self->latestFaceTimestamp >= latestFaceTimestamp)
              {
                latestFaceTimestamp = self->latestFaceTimestamp;
              }

              self->latestFaceTimestamp = latestFaceTimestamp;
            }
          }
        }

        BurstLoggingMessage("    latestFaceTimestamp = %.6f\n", self->latestFaceTimestamp);
        return;
      }

LABEL_21:
      v15 = v14;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 objectForKey:@"Regions"];
        if (v16)
        {
          v17 = v16;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            BurstLoggingMessage("regions exist\n");
            v18 = [v17 objectForKey:@"RegionList"];
            if (v18)
            {
              v19 = v18;
              if ([v18 count])
              {
                BurstLoggingMessage("  num regions = %d\n", [v19 count]);
                if ([v19 count])
                {
                  v20 = 0;
                  do
                  {
                    -[CAMBurstImageFaceAnalysisContext addFaceToArray:](self, "addFaceToArray:", [v19 objectAtIndex:v20++]);
                  }

                  while ([v19 count] > v20);
                }
              }
            }
          }
        }
      }

      goto LABEL_29;
    }
  }

  BurstLoggingMessage("extractFaceMetadata: invalid properties\n");
}

- (void)addFacesToImageStat:(id)stat imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v138 = *MEMORY[0x1E69E9840];
  [stat timestamp];
  v9 = v8;
  BurstLoggingMessage("addFacesToImageStat: timestamp = %.6f, lastFaceIndex=%d\n", v8, self->lastFaceIndex);
  if (v9 <= self->latestFaceTimestamp)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    lastFaceIndex = self->lastFaceIndex;
    if ([(NSMutableArray *)self->faceTimestampArray count]> lastFaceIndex)
    {
      v12 = v9 + 0.0160000008;
      v13 = width;
      v14 = height;
      v15 = v13;
      v128 = v14;
      v126 = *MEMORY[0x1E695F058];
      v127 = v14;
      v124 = *(MEMORY[0x1E695F058] + 16);
      v125 = *(MEMORY[0x1E695F058] + 8);
      v123 = *(MEMORY[0x1E695F058] + 24);
      v119 = v13;
      do
      {
        v16 = [(NSMutableArray *)self->faceTimestampArray objectAtIndex:self->lastFaceIndex];
        [objc_msgSend(v16 objectForKey:{@"Timestamp", "doubleValue"}];
        if (v17 > v12)
        {
          break;
        }

        v18 = v17;
        v19 = objc_alloc_init(CAMBurstFaceStat);
        [objc_msgSend(v16 objectForKey:{@"Width", "floatValue"}];
        v21 = v20;
        [objc_msgSend(v16 objectForKey:{@"Height", "floatValue"}];
        v23 = v22;
        [objc_msgSend(v16 objectForKey:{@"X", "floatValue"}];
        v25 = v24;
        [objc_msgSend(v16 objectForKey:{@"Y", "floatValue"}];
        v27 = v26;
        -[CAMBurstFaceStat setFaceId:](v19, "setFaceId:", [objc_msgSend(v16 objectForKey:{@"FaceID", "intValue"}]);
        v131 = v27;
        v132 = v25;
        v129 = v23;
        v130 = v21;
        [(CAMBurstFaceStat *)v19 setNormalizedFaceRect:?];
        [(CAMBurstFaceStat *)v19 setTimestamp:v18];
        v28 = [v16 objectForKey:@"RollAngle"];
        v29 = [v16 objectForKey:@"YawAngle"];
        if (v28)
        {
          [(CAMBurstFaceStat *)v19 setHasRollAngle:1];
          [v28 floatValue];
          [(CAMBurstFaceStat *)v19 setRollAngle:?];
        }

        else
        {
          [(CAMBurstFaceStat *)v19 setHasRollAngle:0];
        }

        if (v29)
        {
          [(CAMBurstFaceStat *)v19 setHasYawAngle:1];
          [v29 floatValue];
          [(CAMBurstFaceStat *)v19 setYawAngle:?];
        }

        else
        {
          [(CAMBurstFaceStat *)v19 setHasYawAngle:0];
        }

        [(CAMBurstFaceStat *)v19 setFaceRect:((v25 - (v21 * 0.5)) * v15), v127 - ((v27 - (v23 * 0.5)) * v128) - (v23 * v128), (v21 * v15)];
        [v10 setObject:v19 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", -[CAMBurstFaceStat faceId](v19, "faceId"))}];

        [(CAMBurstFaceStat *)v19 setFramesSinceLast:0];
        if ([v16 objectForKey:@"LeftEyeX"])
        {
          [objc_msgSend(v16 objectForKey:{@"LeftEyeX", "floatValue"}];
          v31 = v30;
          [objc_msgSend(v16 objectForKey:{@"LeftEyeY", "floatValue"}];
          v33 = v32;
          [objc_msgSend(v16 objectForKey:{@"LeftEyeWidth", "floatValue"}];
          v35 = v34;
          [objc_msgSend(v16 objectForKey:{@"LeftEyeHeight", "floatValue"}];
          v37 = v36;
          v39 = v36 > 0.0 && v35 > 0.0;
          [(CAMBurstFaceStat *)v19 setHasLeftEye:v39];
          if ([(CAMBurstFaceStat *)v19 hasLeftEye])
          {
            [(CAMBurstFaceStat *)v19 setLeftEyeRect:((v31 - (v35 * 0.5)) * v15), ((v33 - (v37 * 0.5)) * v128), (v35 * v15), (v37 * v128)];
            [objc_msgSend(v16 objectForKey:{@"LeftEyeBlinkLevel", "floatValue"}];
            [(CAMBurstFaceStat *)v19 setLeftEyeBlinkScore:?];
          }
        }

        else
        {
          [(CAMBurstFaceStat *)v19 setLeftEyeRect:v126, v125, v124, v123];
          [(CAMBurstFaceStat *)v19 setHasLeftEye:0];
        }

        if ([v16 objectForKey:@"RightEyeX"])
        {
          [objc_msgSend(v16 objectForKey:{@"RightEyeX", "floatValue"}];
          v41 = v40;
          [objc_msgSend(v16 objectForKey:{@"RightEyeY", "floatValue"}];
          v43 = v42;
          [objc_msgSend(v16 objectForKey:{@"RightEyeWidth", "floatValue"}];
          v45 = v44;
          [objc_msgSend(v16 objectForKey:{@"RightEyeHeight", "floatValue"}];
          v47 = v46;
          v49 = v46 > 0.0 && v45 > 0.0;
          [(CAMBurstFaceStat *)v19 setHasRightEye:v49];
          if ([(CAMBurstFaceStat *)v19 hasRightEye])
          {
            [(CAMBurstFaceStat *)v19 setRightEyeRect:((v41 - (v45 * 0.5)) * v15), ((v43 - (v47 * 0.5)) * v128), (v45 * v15), (v47 * v128)];
            [objc_msgSend(v16 objectForKey:{@"RightEyeBlinkLevel", "floatValue"}];
            [(CAMBurstFaceStat *)v19 setRightEyeBlinkScore:?];
          }
        }

        else
        {
          [(CAMBurstFaceStat *)v19 setRightEyeRect:v126, v125, v124, v123];
          [(CAMBurstFaceStat *)v19 setHasRightEye:0];
        }

        if ([(CAMBurstFaceStat *)v19 hasLeftEye]&& [(CAMBurstFaceStat *)v19 hasRightEye])
        {
          [(CAMBurstFaceStat *)v19 leftEyeRect];
          MidX = CGRectGetMidX(v140);
          [(CAMBurstFaceStat *)v19 leftEyeRect];
          MidY = CGRectGetMidY(v141);
          [(CAMBurstFaceStat *)v19 rightEyeRect];
          v52 = CGRectGetMidX(v142);
          [(CAMBurstFaceStat *)v19 rightEyeRect];
          v121 = CGRectGetMidY(v143);
          v122 = v52;
          v53 = v52 - MidX;
          v54 = v121 - MidX;
          v55 = sqrt(v54 * v54 + v53 * v53);
          v56 = 0.0;
          v57 = 0.0;
          if (v55 >= 0.01)
          {
            v58 = (1.0 / v55);
            v57 = v53 * v58;
            v56 = v54 * v58;
          }

          [(CAMBurstFaceStat *)v19 faceRect];
          v60 = v59;
          [(CAMBurstFaceStat *)v19 faceRect];
          v62 = (v60 + v61) * 0.5;
          v63 = ((v62 * 0.3) * 0.5);
          v64 = ((v62 * 0.2) * 0.5);
          v65 = MidX - v63 * v57;
          v66 = v65 - v64 * v56;
          v67 = MidY - v63 * v56;
          v68 = v67 - v64 * v57;
          v69 = v65 + v64 * v56;
          v70 = v67 + v64 * v57;
          v71 = MidX + v63 * v57;
          v72 = v71 - v64 * v56;
          v73 = MidY + v63 * v56;
          v74 = v73 - v64 * v57;
          v75 = v71 + v64 * v56;
          v76 = v73 + v64 * v57;
          if (v74 >= v76)
          {
            v77 = v76;
          }

          else
          {
            v77 = v74;
          }

          if (v74 >= v76)
          {
            v76 = v74;
          }

          if (v68 >= v70)
          {
            v78 = v70;
          }

          else
          {
            v78 = v68;
          }

          if (v68 >= v70)
          {
            v70 = v68;
          }

          if (v72 >= v75)
          {
            v79 = v75;
          }

          else
          {
            v79 = v72;
          }

          if (v72 >= v75)
          {
            v75 = v72;
          }

          if (v66 >= v69)
          {
            v80 = v69;
          }

          else
          {
            v80 = v66;
          }

          if (v66 >= v69)
          {
            v69 = v66;
          }

          if (v80 >= v79)
          {
            v81 = v79;
          }

          else
          {
            v81 = v80;
          }

          if (v78 >= v77)
          {
            v82 = v77;
          }

          else
          {
            v82 = v78;
          }

          if (v69 < v75)
          {
            v69 = v75;
          }

          v120 = v69;
          if (v70 >= v76)
          {
            v83 = v70;
          }

          else
          {
            v83 = v76;
          }

          [(CAMBurstFaceStat *)v19 leftEyeRect];
          v148.size.width = v120 - v81;
          v148.size.height = v83 - v82;
          v148.origin.x = v81;
          v148.origin.y = v82;
          v145 = CGRectUnion(v144, v148);
          [(CAMBurstFaceStat *)v19 setLeftEyeRect:v145.origin.x, v145.origin.y, v145.size.width, v145.size.height];
          v84 = v122 - v63 * v57;
          v85 = v84 - v64 * v56;
          v86 = v121 - v63 * v56;
          v87 = v86 - v64 * v57;
          v88 = v84 + v64 * v56;
          v89 = v86 + v64 * v57;
          v90 = v122 + v63 * v57;
          v91 = v90 - v64 * v56;
          v92 = v121 + v63 * v56;
          v93 = v92 - v64 * v57;
          v94 = v90 + v64 * v56;
          v95 = v92 + v64 * v57;
          if (v93 >= v95)
          {
            v96 = v95;
          }

          else
          {
            v96 = v93;
          }

          if (v93 >= v95)
          {
            v95 = v93;
          }

          if (v87 >= v89)
          {
            v97 = v89;
          }

          else
          {
            v97 = v87;
          }

          if (v87 >= v89)
          {
            v89 = v87;
          }

          if (v91 >= v94)
          {
            v98 = v94;
          }

          else
          {
            v98 = v91;
          }

          if (v91 >= v94)
          {
            v94 = v91;
          }

          if (v85 >= v88)
          {
            v99 = v88;
          }

          else
          {
            v99 = v85;
          }

          if (v85 >= v88)
          {
            v88 = v85;
          }

          if (v99 >= v98)
          {
            v100 = v98;
          }

          else
          {
            v100 = v99;
          }

          if (v97 >= v96)
          {
            v101 = v96;
          }

          else
          {
            v101 = v97;
          }

          if (v88 >= v94)
          {
            v102 = v88;
          }

          else
          {
            v102 = v94;
          }

          if (v89 >= v95)
          {
            v103 = v89;
          }

          else
          {
            v103 = v95;
          }

          [(CAMBurstFaceStat *)v19 rightEyeRect];
          v149.size.width = v102 - v100;
          v149.size.height = v103 - v101;
          v149.origin.x = v100;
          v149.origin.y = v101;
          v147 = CGRectUnion(v146, v149);
          [(CAMBurstFaceStat *)v19 setRightEyeRect:v147.origin.x, v147.origin.y, v147.size.width, v147.size.height];
          v12 = v9 + 0.0160000008;
          v15 = v119;
        }

        if ([v16 objectForKey:@"SmileLevel"])
        {
          [objc_msgSend(v16 objectForKey:{@"SmileLevel", "floatValue"}];
          [(CAMBurstFaceStat *)v19 setSmileScore:?];
        }

        faceId = [(CAMBurstFaceStat *)v19 faceId];
        [(CAMBurstFaceStat *)v19 timestamp];
        BurstLoggingMessage("      found face id %d, timestamp=%.6f, x=%.3f,y=%.3f,w=%.3f,h=%.3f\n", faceId, v105, v132, v131, v130, v129);
        v106 = self->lastFaceIndex;
        self->lastFaceIndex = v106 + 1;
      }

      while ([(NSMutableArray *)self->faceTimestampArray count]> (v106 + 1));
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    allKeys = [v10 allKeys];
    v108 = [allKeys countByEnumeratingWithState:&v133 objects:v137 count:16];
    if (v108)
    {
      v109 = v108;
      v110 = *v134;
      do
      {
        for (i = 0; i != v109; ++i)
        {
          if (*v134 != v110)
          {
            objc_enumerationMutation(allKeys);
          }

          v112 = [v10 objectForKey:*(*(&v133 + 1) + 8 * i)];
          [v112 timestamp];
          *&v113 = v113 - v9;
          v114 = fabsf(*&v113);
          if (v114 <= 0.016)
          {
            faceId2 = [v112 faceId];
            [v112 timestamp];
            BurstLoggingMessage("    adding face id %d, timestamp %.6f\n", faceId2, v118);
            [v112 setIsSyncedWithImage:1];
            [objc_msgSend(stat "faceStatArray")];
          }

          else if (v114 <= 0.04)
          {
            [v112 setIsSyncedWithImage:0];
            [objc_msgSend(stat "faceStatArray")];
            faceId3 = [v112 faceId];
            [v112 timestamp];
            BurstLoggingMessage("    face id %d, timestamp %.6f - delta = %.6f, perhaps should use FaceCore\n", faceId3, v116, v114);
          }
        }

        v109 = [allKeys countByEnumeratingWithState:&v133 objects:v137 count:16];
      }

      while (v109);
    }
  }

  else
  {

    BurstLoggingMessage("    imageTimestamp > latestFaceTimestamp\n");
  }
}

- (void)dumpFaceInfoArray
{
  v33 = *MEMORY[0x1E69E9840];
  BurstLoggingMessage("FaceInfoArray:\n", a2);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  faceInfoArray = self->faceInfoArray;
  v4 = [(NSMutableArray *)faceInfoArray countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(faceInfoArray);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        hwFaceId = [v8 hwFaceId];
        hwLastFrameSeen = [v8 hwLastFrameSeen];
        [v8 hwCenter];
        v12 = v11;
        [v8 hwCenter];
        v14 = v13;
        [v8 hwSize];
        v16 = v15;
        [v8 hwSize];
        v18 = v17;
        swFaceId = [v8 swFaceId];
        swLastFrameSeen = [v8 swLastFrameSeen];
        [v8 swCenter];
        v22 = v21;
        [v8 swCenter];
        v24 = v23;
        [v8 swSize];
        v26 = v25;
        [v8 swSize];
        BurstLoggingMessage("hwId = %d (lastSeen=%d, ctr=%.3f,%.3f size=%.3f,%.3f), swId = %d (lastSeen=%d, ctr=%.3f,%.3f size=%.3f,%.3f)\n", hwFaceId, hwLastFrameSeen, v12, v14, v16, v18, swFaceId, swLastFrameSeen, v22, v24, v26, v27);
      }

      v5 = [(NSMutableArray *)faceInfoArray countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }
}

- (uint64_t)setupFaceDetector
{
  dlerror();
  abort_report_np();
  return __getFaceCoreDetectorClass_block_invoke_cold_1();
}

@end