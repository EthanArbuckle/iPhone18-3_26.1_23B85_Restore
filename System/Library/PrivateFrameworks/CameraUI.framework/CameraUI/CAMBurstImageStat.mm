@interface CAMBurstImageStat
- (CAMBurstImageStat)initWithIdentifier:(id)a3;
- (CGRect)facesRoiRect;
- (GridROI_t)getSharpnessAndBlurLimits;
- (float)computeAEMatrixDifference:(id)a3;
- (float)computeFacialFocusScoreSum;
- (float)computeImageDistance:(id)a3;
- (float)computeRuleOfThreeDistance;
- (float)computeScore:(float)a3;
- (float)computeSmilePercentage;
- (float)computeSmoothedGridROI:(id)a3 nextStat:(id)a4;
- (int)setAEMatrix:(id)a3;
- (int64_t)compareImageOrder:(id)a3;
- (void)allocateMeanStdPingPongBuffers:(float *)a3 :(float *)a4 :(float *)a5 :(float *)a6;
- (void)assignMeanStdBuffers:(float *)a3;
- (void)collapseSharpnessGrid;
- (void)computeAEMatrix:(id)a3;
- (void)computeBlurStatsOnGrid:(id)a3;
- (void)computeImageColorHistogram:(id)a3;
- (void)computeImageData:(id)a3 faceIDCounts:(id)a4;
- (void)computeImageProjections:(id)a3;
- (void)computeImageSharpnessOnGrid:(id)a3;
- (void)dealloc;
- (void)flagAsGarbage;
- (void)performRegistration:(id)a3 deltaCol:(float *)a4 deltaRow:(float *)a5;
- (void)updateROI:(GridROI_t)a3;
- (void)writeGridROI:(id)a3;
@end

@implementation CAMBurstImageStat

- (void)allocateMeanStdPingPongBuffers:(float *)a3 :(float *)a4 :(float *)a5 :(float *)a6
{
  if (a3)
  {
    if (a4)
    {
      *a3 = 0;
      *a4 = 0;
      if (self->projectionSignature.piCol)
      {
        if (self->projectionSignature.piRow)
        {
          v10 = (4 * LODWORD(self->projectionSignature.nPiCol) + 35) & 0xFFFFFFE0;
          v11 = ((4 * LODWORD(self->projectionSignature.nPiRow) + 35) & 0xFFFFFFE0) + v10;
          v12 = malloc_type_calloc(1uLL, (5 * v11), 0x100004077774924uLL);
          if (v12)
          {
            *a3 = v12;
            v13 = (v12 + (2 * v11));
            *a4 = v13;
            v14 = (v13 + (2 * v11));
            *a5 = v14;
            *a6 = (v14 + v10);
          }
        }
      }
    }
  }
}

- (void)assignMeanStdBuffers:(float *)a3
{
  if (a3)
  {
    piCol = self->projectionSignature.piCol;
    if (piCol)
    {
      if (self->projectionSignature.piRow)
      {
        nPiCol = self->projectionSignature.nPiCol;
        v6 = (4 * LODWORD(self->projectionSignature.nPiRow) + 35) & 0xFFFFFFE0;
        self->projectionSignature.piRowTable.sumTable = a3;
        v7 = (a3 + v6);
        self->projectionSignature.piRowTable.sumSqTable = v7;
        v8 = (v7 + v6);
        self->projectionSignature.piColTable.sumTable = v8;
        self->projectionSignature.piColTable.sumSqTable = (v8 + ((4 * nPiCol + 35) & 0xFFFFFFE0));
        Projections_computeMeanStdTable(piCol, nPiCol, &self->projectionSignature.piColTable.sumTable);
        piRow = self->projectionSignature.piRow;
        nPiRow = self->projectionSignature.nPiRow;

        Projections_computeMeanStdTable(piRow, nPiRow, &self->projectionSignature.piRowTable.sumTable);
      }
    }
  }
}

- (CAMBurstImageStat)initWithIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = CAMBurstImageStat;
  v4 = [(CAMBurstImageStat *)&v6 init];
  if (v4)
  {
    v4->imageId = [MEMORY[0x1E696AEC0] stringWithString:a3];
    v4->faceStatArray = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v4->orientation = 1;
    v4->sharpnessGrid = 0;
    v4->maxSkewness = 0.0;
    v4->hasRegistrationData = 0;
    *&v4->timestamp = 0u;
    [(CAMBurstImageStat *)v4 setFullsizeJpegData:0];
  }

  return v4;
}

- (void)dealloc
{
  imageId = self->imageId;
  if (imageId)
  {

    self->imageId = 0;
  }

  faceStatArray = self->faceStatArray;
  if (faceStatArray)
  {

    self->faceStatArray = 0;
  }

  sharpnessGrid = self->sharpnessGrid;
  if (sharpnessGrid)
  {
    free(sharpnessGrid);
  }

  projectionMemoryBlock = self->projectionMemoryBlock;
  if (projectionMemoryBlock)
  {
    free(projectionMemoryBlock);
  }

  v7.receiver = self;
  v7.super_class = CAMBurstImageStat;
  [(CAMBurstImageStat *)&v7 dealloc];
}

- (void)computeImageColorHistogram:(id)a3
{
  v5 = [a3 bytesPerRow];
  v6 = [a3 width] >> 1;
  v7 = [a3 height] >> 1;
  self->numEntries = 0;
  colorHistogram = self->colorHistogram;
  bzero(self->colorHistogram, 0x1000uLL);
  v9 = (v6 * 0.05);
  v10 = [a3 Cbuffer];
  v12 = v7 - v9;
  if (v7 - v9 > v9)
  {
    v11 = v7 * 0.05;
    v13 = v11;
    v14 = v10 + v5 * v9 + 2 * v11;
    do
    {
      if (v6 - v11 > v13)
      {
        v15 = 0;
        v16 = self->numEntries + 1;
        v17 = v6 - 2 * v13;
        do
        {
          v18 = scaledBins[*(v14 + v15)] + 32 * scaledBins[*(v14 + v15 + 1)];
          colorHistogram[v18] = colorHistogram[v18] + 1.0;
          self->numEntries = v16++;
          v15 += 2;
          --v17;
        }

        while (v17);
      }

      ++v9;
      v14 += v5;
    }

    while (v9 != v12);
  }

  v19 = 0;
  *&v11 = self->numEntries;
  v20 = vdupq_lane_s32(*&v11, 0);
  do
  {
    *&colorHistogram[v19] = vdivq_f32(*&colorHistogram[v19], v20);
    v19 += 4;
  }

  while (v19 != 1024);
}

- (GridROI_t)getSharpnessAndBlurLimits
{
  v2 = *&self->gridWidth;
  v3 = 0;
  result.endX = v2;
  result.endY = HIDWORD(v2);
  result.startX = v3;
  result.startY = HIDWORD(v3);
  return result;
}

- (void)computeImageSharpnessOnGrid:(id)a3
{
  v19 = [a3 Ybuffer];
  v5 = [(CAMBurstImageStat *)self getSharpnessAndBlurLimits];
  v7 = HIDWORD(v5);
  v8 = HIDWORD(v6);
  if (SHIDWORD(v5) < SHIDWORD(v6))
  {
    v9 = v5;
    v10 = v6;
    v18 = v6 - v5;
    v11 = v5;
    do
    {
      v12 = [a3 bytesPerRow];
      if (v10 > v9)
      {
        v13 = (v19 + 32 * v7 * v12);
        sharpnessGrid = self->sharpnessGrid;
        v15 = v11;
        v16 = v18;
        do
        {
          if (!sharpnessGrid)
          {
            break;
          }

          v17 = horzDiff32x32(v13, [a3 bytesPerRow], 32);
          sharpnessGrid = self->sharpnessGrid;
          sharpnessGrid[v15 + self->gridWidth * v7].var2 = v17;
          v13 += 2;
          ++v15;
          --v16;
        }

        while (v16);
      }

      LODWORD(v7) = v7 + 1;
    }

    while (v7 != v8);
  }
}

- (void)computeBlurStatsOnGrid:(id)a3
{
  v145[124] = *MEMORY[0x1E69E9840];
  v5 = [a3 bytesPerRow];
  v133 = [a3 Ybuffer];
  v6 = [(CAMBurstImageStat *)self getSharpnessAndBlurLimits];
  v138 = v9;
  v139 = HIDWORD(v6);
  v135 = HIDWORD(v9);
  v136 = v6;
  if (SHIDWORD(v6) < SHIDWORD(v9))
  {
    v134 = 32 * v5;
    v10 = 8 * v5;
    v132 = v133 + 7 * v5;
    v137 = 32 * v5 * HIDWORD(v6);
    v130 = v133 + 5 * v5;
    v131 = v133 + 6 * v5;
    v128 = v133 + 3 * v5;
    v129 = v133 + 4 * v5;
    v126 = v133 + v5;
    v127 = v133 + 2 * v5;
    do
    {
      if (v136 < v138)
      {
        v11 = 0;
        v12 = v136;
        do
        {
          v13 = 0;
          v140 = v12;
          sharpnessGrid = self->sharpnessGrid;
          v15 = v12 + self->gridWidth * v139;
          v16 = v142;
          v141 = v11;
          do
          {
            v17 = 1;
            v18 = v11;
            v19 = v16;
            do
            {
              v20 = *(v133 + v137 + v18);
              v21 = *(v126 + v137 + v18);
              v22 = vaddl_u8(*v21.i8, *v20.i8);
              v23 = vaddl_high_u8(v21, v20);
              v24 = *(v127 + v137 + v18);
              v25 = *(v128 + v137 + v18);
              v26 = vaddl_u8(*v25.i8, *v24.i8);
              v27 = vaddl_high_u8(v25, v24);
              v28 = *(v129 + v137 + v18);
              v29 = *(v130 + v137 + v18);
              v30 = vaddl_u8(*v29.i8, *v28.i8);
              v31 = vaddl_high_u8(v29, v28);
              v32 = *(v131 + v137 + v18);
              v33 = *(v132 + v137 + v18);
              v34 = vaddl_u8(*v33.i8, *v32.i8);
              v35 = vaddl_high_u8(v33, v32);
              v36 = vsubl_u8(*v20.i8, *v21.i8);
              v37 = vsubl_high_u8(v20, v21);
              v38 = vsubl_u8(*v24.i8, *v25.i8);
              v39 = vsubl_high_u8(v24, v25);
              v40 = vsubl_u8(*v28.i8, *v29.i8);
              v41 = vsubl_high_u8(v28, v29);
              v42 = vsubl_u8(*v32.i8, *v33.i8);
              v43 = vsubl_high_u8(v32, v33);
              v44 = vaddq_s16(v26, v22);
              v45 = vaddq_s16(v27, v23);
              v46 = vaddq_s16(v34, v30);
              v47 = vaddq_s16(v35, v31);
              v48 = vsubq_s16(v22, v26);
              v49 = vsubq_s16(v23, v27);
              v50 = vsubq_s16(v30, v34);
              v51 = vsubq_s16(v31, v35);
              v52 = vaddq_s16(v46, v44);
              v53 = vaddq_s16(v47, v45);
              v54 = vsubq_s16(v44, v46);
              v55 = vsubq_s16(v45, v47);
              v56 = vuzp1q_s16(v52, v54);
              v57 = vuzp2q_s16(v52, v54);
              v58 = vuzp1q_s16(v48, v50);
              v59 = vuzp2q_s16(v48, v50);
              v60 = vpaddq_s16(v52, v54);
              v61 = vpaddq_s16(v48, v50);
              v62 = vpaddq_s16(v36, v38);
              v63 = vpaddq_s16(v40, v42);
              v64 = vsubq_s16(v56, v57);
              v65 = vsubq_s16(v58, v59);
              v66 = vuzp1q_s16(v60, v61);
              v67 = vuzp2q_s16(v60, v61);
              v68 = vuzp1q_s16(v62, v63);
              v69 = vuzp2q_s16(v62, v63);
              v70 = vpaddq_s16(v60, v61);
              v71 = vpaddq_s16(v62, v63);
              v72 = vsubq_s16(v66, v67);
              v73 = vsubq_s16(v68, v69);
              v74 = vuzp1q_s16(v70, v71);
              v75 = vuzp2q_s16(v70, v71);
              v76 = vpaddq_s16(v70, v71);
              v77 = vsubq_s16(v74, v75);
              v78 = vzip1q_s16(v76, v77);
              v79 = vzip2q_s16(v76, v77);
              v80 = vzip1q_s32(v78, v72);
              v81 = vzip2q_s32(v78, v72);
              v82 = vzip1q_s32(v79, v73);
              v83 = vzip2q_s32(v79, v73);
              v79.i64[0] = vextq_s8(v80, v80, 8uLL).u64[0];
              v72.i64[0] = v80.i64[0];
              v72.i64[1] = v64.i64[0];
              v79.i64[1] = vextq_s8(v64, v64, 8uLL).u64[0];
              v80.i64[0] = vextq_s8(v81, v81, 8uLL).u64[0];
              v64.i64[0] = v81.i64[0];
              v64.i64[1] = v65.i64[0];
              v84 = vuzp1q_s16(v53, v55);
              v85 = vuzp2q_s16(v53, v55);
              v86 = vuzp1q_s16(v49, v51);
              v87 = vuzp2q_s16(v49, v51);
              v88 = vpaddq_s16(v53, v55);
              v89 = vpaddq_s16(v49, v51);
              v90 = vpaddq_s16(v37, v39);
              v91 = vpaddq_s16(v41, v43);
              v92 = vsubq_s16(v84, v85);
              v93 = vsubq_s16(v86, v87);
              v94 = vuzp1q_s16(v88, v89);
              v95 = vuzp2q_s16(v88, v89);
              v96 = vuzp1q_s16(v90, v91);
              v97 = vuzp2q_s16(v90, v91);
              v98 = vpaddq_s16(v88, v89);
              v99 = vpaddq_s16(v90, v91);
              v100 = vsubq_s16(v94, v95);
              v101 = vuzp1q_s16(v98, v99);
              v102 = vuzp2q_s16(v98, v99);
              v103 = vpaddq_s16(v98, v99);
              v104 = vsubq_s16(v101, v102);
              v105 = vzip1q_s16(v103, v104);
              v106 = vzip1q_s32(v105, v100);
              v101.i64[0] = vextq_s8(v106, v106, 8uLL).u64[0];
              v107.i64[0] = v106.i64[0];
              v107.i64[1] = v92.i64[0];
              v108 = vsubq_s16(v96, v97);
              v106.i64[0] = vextq_s8(v82, v82, 8uLL).u64[0];
              v109 = vzip2q_s16(v103, v104);
              v103.i64[0] = vextq_s8(v83, v83, 8uLL).u64[0];
              v110 = vzip2q_s32(v105, v100);
              v111 = vzip1q_s32(v109, v108);
              v112 = vzip2q_s32(v109, v108);
              v109.i64[0] = vextq_s8(v110, v110, 8uLL).u64[0];
              *v19 = v72;
              v19[1] = v107;
              v72.i64[0] = vextq_s8(v111, v111, 8uLL).u64[0];
              v101.i64[1] = vextq_s8(v92, v92, 8uLL).u64[0];
              v92.i64[0] = vextq_s8(v112, v112, 8uLL).u64[0];
              v19[4] = v79;
              v19[5] = v101;
              v110.i64[1] = v93.i64[0];
              v19[8] = v64;
              v19[9] = v110;
              v80.i64[1] = vextq_s8(v65, v65, 8uLL).u64[0];
              v109.i64[1] = vextq_s8(v93, v93, 8uLL).u64[0];
              v19[12] = v80;
              v19[13] = v109;
              v113 = vsubq_s16(vuzp1q_s16(v36, v38), vuzp2q_s16(v36, v38));
              v82.i64[1] = v113.i64[0];
              v106.i64[1] = vextq_s8(v113, v113, 8uLL).u64[0];
              v114 = vsubq_s16(vuzp1q_s16(v37, v39), vuzp2q_s16(v37, v39));
              v111.i64[1] = v114.i64[0];
              v19[16] = v82;
              v19[17] = v111;
              v72.i64[1] = vextq_s8(v114, v114, 8uLL).u64[0];
              v19[20] = v106;
              v19[21] = v72;
              v115 = vsubq_s16(vuzp1q_s16(v40, v42), vuzp2q_s16(v40, v42));
              v83.i64[1] = v115.i64[0];
              v116 = vsubq_s16(vuzp1q_s16(v41, v43), vuzp2q_s16(v41, v43));
              v112.i64[1] = v116.i64[0];
              v19[24] = v83;
              v19[25] = v112;
              v103.i64[1] = vextq_s8(v115, v115, 8uLL).u64[0];
              v92.i64[1] = vextq_s8(v116, v116, 8uLL).u64[0];
              v117 = v17;
              v19[28] = v103;
              v19[29] = v92;
              v19 += 2;
              v18 += 16;
              v17 = 0;
            }

            while ((v117 & 1) != 0);
            v16 += 32;
            v11 += v10;
            v118 = v13 >= 0x18;
            v13 += 8;
          }

          while (!v118);
          v119 = &sharpnessGrid[v15];
          updateBlurStatsOne16x16(v142, v119, v7, v8);
          updateBlurStatsOne16x16(&v143, v119, v120, v121);
          updateBlurStatsOne16x16(&v144, v119, v122, v123);
          updateBlurStatsOne16x16(v145, v119, v124, v125);
          v12 = v140 + 1;
          v11 = v141 + 32;
        }

        while (v140 + 1 != v138);
      }

      v137 += v134;
      LODWORD(v139) = v139 + 1;
    }

    while (v139 != v135);
  }
}

- (float)computeSmoothedGridROI:(id)a3 nextStat:(id)a4
{
  if (self->doLimitedSharpnessAndBlur)
  {
    gridROI = self->gridROI;
LABEL_22:
    self->smoothedROI = gridROI;
    goto LABEL_23;
  }

  startX = self->gridROI.startX;
  if (startX == -1 || (startY = self->gridROI.startY, startY == -1) || (endX = self->gridROI.endX, endX == -1) || (endY = self->gridROI.endY, endY == -1))
  {
    startY = 0;
    startX = 0;
    *&self->gridROI.startX = 0;
    v12 = vadd_s32(*&self->gridWidth, -1);
    *&self->gridROI.endX = v12;
    endY = v12.i32[1];
    endX = v12.i32[0];
  }

  if (a4 && (*(a4 + 1184) == -1 || *(a4 + 1185) == -1 || *(a4 + 1186) == -1 || *(a4 + 1187) == -1))
  {
    *(a4 + 1184) = 0;
    *(a4 + 1186) = self->gridWidth - 1;
    *(a4 + 1185) = 0;
    *(a4 + 1187) = self->gridHeight - 1;
    startX = self->gridROI.startX;
    startY = self->gridROI.startY;
    endX = self->gridROI.endX;
    endY = self->gridROI.endY;
  }

  BurstLoggingMessage("Original ROI = %d,%d -> %d,%d\t\t", startX, startY, endX, endY);
  if (a3 && a4)
  {
    v13 = self->gridROI;
    v14 = *(a3 + 296);
    v15 = vminq_s32(v13, v14);
    gridROI = vbslq_s8(vcgtq_s32(v15, *(a4 + 296)), v15, vminq_s32(vmaxq_s32(v13, v14), *(a4 + 296)));
    goto LABEL_22;
  }

  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = a4;
  }

  if (v16)
  {
    gridROI = vshrq_n_s32(vaddq_s32(v16[296], self->gridROI), 1uLL);
    goto LABEL_22;
  }

LABEL_23:
  BurstLoggingMessage("Smoothed ROI = %d,%d -> %d,%d\n", self->smoothedROI.startX, self->smoothedROI.startY, self->smoothedROI.endX, self->smoothedROI.endY);
  v17 = vdiv_f32(vcvt_f32_s32(vsub_s32(*&self->smoothedROI.endX, *&self->smoothedROI.startX)), vcvt_f32_s32(*&self->gridWidth));
  LODWORD(result) = vmul_lane_f32(v17, v17, 1).u32[0];
  self->roiSize = result;
  return result;
}

- (void)updateROI:(GridROI_t)a3
{
  if (!self->doLimitedSharpnessAndBlur)
  {
    startY = a3.startY;
    startX = self->gridROI.startX;
    if (startX == -1 || (v5 = self->gridROI.startY, v5 == -1) || (endX = self->gridROI.endX, endX == -1) || (v7 = self->gridROI.endY, v7 == -1))
    {
      *&self->gridROI.endX = *&a3.endX;
      endY = a3.endY;
    }

    else
    {
      a3.startX = (a3.startX + startX + 1) >> 1;
      startY = (a3.startY + v5 + 1) >> 1;
      self->gridROI.endX = (a3.endX + endX + 1) >> 1;
      endY = (a3.endY + v7 + 1) >> 1;
      self->gridROI.endY = endY;
      a3.endX = (a3.endX + endX + 1) >> 1;
    }

    self->gridROI.startX = a3.startX & ~(a3.startX >> 31);
    self->gridROI.startY = startY & ~(startY >> 31);
    gridWidth = self->gridWidth;
    if (a3.endX >= gridWidth)
    {
      self->gridROI.endX = gridWidth - 1;
    }

    gridHeight = self->gridHeight;
    if (endY >= gridHeight)
    {
      self->gridROI.endY = gridHeight - 1;
    }

    BurstLoggingMessage("Sharpness ROI for %s updated to (%d,%d)->(%d,%d)\n", [(NSString *)self->imageId UTF8String], self->gridROI.startX, self->gridROI.startY, self->gridROI.endX, self->gridROI.endY);
  }
}

- (void)flagAsGarbage
{
  self->isGarbage = 1;
  self->registrationErrorX = 0.0;
  *&self->registrationErrorY = 0;
}

- (void)performRegistration:(id)a3 deltaCol:(float *)a4 deltaRow:(float *)a5
{
  v105[0] = 0x7F7FFFFF7F7FFFFFLL;
  BurstLoggingMessage("%s REGISTERED AGAINST %s\n", -[NSString UTF8String](self->imageId, "UTF8String"), [objc_msgSend(a3 "imageId")]);
  p_tx = &self->tx;
  p_ty = &self->ty;
  LODWORD(v11) = 0.5;
  FastRegistration_register(&self->projectionSignature, a3 + 4656, 0, self + 4840, self + 4844, v105 + 4, v105, v12, v11, v13, v14, v15, v16, v17, v18, v19, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, 0x7F7FFFFF7F7FFFFFLL, v105[1], v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, *v116);
  v20 = [(CAMBurstImageStat *)self AEAverage]- *(a3 + 1198);
  if (v20 >= 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = -v20;
  }

  [(CAMBurstImageStat *)self setAEDelta:v21];
  if (!a4 || !a5)
  {
    return;
  }

  v103 = 0;
  v104 = 0;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v22 = (self->gridWidth - 1);
  gridHeight = self->gridHeight;
  v24 = (gridHeight - 1);
  FastRegistration_compareSignatures(&self->projectionSignature, a3 + 582, a4, &v100, a5, &v99, gridHeight, self->tx, self->ty);
  BurstLoggingMessage("Registration result: tx = %d, ty = %d\n", self->tx, self->ty);
  *&v26 = computeRegistrationErrorStats(&v103, a5, v99, v25);
  *&v27 = computeRegistrationErrorStats(&v101, a4, v100, v26);
  [(CAMBurstImageStat *)self maxSkewness];
  if (v28 < *&v103)
  {
    [(CAMBurstImageStat *)self setMaxSkewness:?];
  }

  v29 = v22 | (v24 << 32);
  [(CAMBurstImageStat *)self maxSkewness];
  if (*&v30 < *&v101)
  {
    [(CAMBurstImageStat *)self setMaxSkewness:?];
  }

  LODWORD(v30) = HIDWORD(v102);
  [(CAMBurstImageStat *)self setRegistrationErrorX:v30];
  LODWORD(v31) = HIDWORD(v104);
  [(CAMBurstImageStat *)self setRegistrationErrorY:v31];
  [(CAMBurstImageStat *)self setHasRegistrationData:1];
  if (fmaxf(*(&v104 + 1), *(&v102 + 1)) <= 5000.0 || (*(&v103 + 1) + *(&v101 + 1)) <= 1600.0)
  {
    [(CAMBurstImageStat *)self setRegistrationErrorIntegral:0.0];
    [(CAMBurstImageStat *)self registrationErrorIntegral];
    BurstLoggingMessage("----------REGISTRATION ERROR INTEGRAL \t\t= \t\t\t%f\n", v91);
    BurstLoggingMessage("Registration rejected due to insufficient local motion.\n");
LABEL_57:
    if (self->doLimitedSharpnessAndBlur)
    {
      return;
    }

    [(CAMBurstImageStat *)self updateROI:0, v29];
    v89 = a3;
    v88 = 0;
    v90 = v29;
    goto LABEL_59;
  }

  v97 = 0;
  v98 = 0;
  computeForegroundInterval(&v103, a5, v99, &v98 + 1, &v98);
  computeForegroundInterval(&v101, a4, v100, &v97 + 1, &v97);
  v32 = v98;
  v33 = HIDWORD(v98);
  v34 = v97;
  v35 = HIDWORD(v97);
  v36 = HIDWORD(v98) + ((v98 - HIDWORD(v98)) >> 1);
  v37 = v36 - 49;
  v38 = v36 + 49;
  if (v98 - HIDWORD(v98) < 97)
  {
    v32 = v38;
    v33 = v37;
  }

  v39 = HIDWORD(v97) + ((v97 - HIDWORD(v97)) >> 1);
  v40 = v39 - 49;
  v41 = v39 + 49;
  if (v97 - HIDWORD(v97) < 97)
  {
    v34 = v41;
    v35 = v40;
  }

  v42 = v34 - v35;
  v43 = v32 - v33;
  if ((v34 - v35) * (v32 - v33) <= 20480)
  {
    v44 = v43 / v42;
    v45 = (v33 + (v43 >> 1));
    v46 = (v44 * 144.0) * 0.5;
    v33 = (v45 - v46);
    v32 = (v46 + v45);
    v47 = (v35 + (v42 >> 1));
    v48 = (144.0 / v44) * 0.5;
    v35 = (v47 - v48);
    v34 = (v48 + v47);
  }

  v49 = v33 & ~(v33 >> 31);
  HIDWORD(v97) = v35 & ~(v35 >> 31);
  if (v99 - 1 < v32)
  {
    v32 = v99 - 1;
  }

  v98 = __PAIR64__(v49, v32);
  if (v100 - 1 < v34)
  {
    v34 = v100 - 1;
  }

  LODWORD(v97) = v34;
  v50 = &a5[v49];
  qsort(v50, v32 - v49, 4uLL, compareFloats);
  v51 = ((v98 - HIDWORD(v98)) * 0.2);
  v52 = 0.0;
  v53 = 0.0;
  if (v51 >= 1)
  {
    v54 = ((v98 - HIDWORD(v98)) * 0.2);
    do
    {
      v55 = *v50++;
      v53 = v53 + v55;
      --v54;
    }

    while (v54);
  }

  v56 = v53 / v51;
  if (v51)
  {
    *&v52 = v56;
  }

  [(CAMBurstImageStat *)self setRegistrationErrorIntegral:v52];
  v57 = &a4[SHIDWORD(v97)];
  qsort(v57, v97 - SHIDWORD(v97), 4uLL, compareFloats);
  v58 = ((v97 - HIDWORD(v97)) * 0.2);
  v59 = 0.0;
  v60 = 0.0;
  if (v58 >= 1)
  {
    v61 = ((v97 - HIDWORD(v97)) * 0.2);
    do
    {
      v62 = *v57++;
      *&v60 = *&v60 + v62;
      --v61;
    }

    while (v61);
  }

  if (v58)
  {
    v59 = *&v60 / v58;
  }

  [(CAMBurstImageStat *)self registrationErrorIntegral];
  *&v64 = v59 + v63;
  [(CAMBurstImageStat *)self setRegistrationErrorIntegral:v64];
  [(CAMBurstImageStat *)self registrationErrorIntegral];
  BurstLoggingMessage("----------REGISTRATION ERROR INTEGRAL \t\t= \t\t\t%f\n", v65);
  [(CAMBurstImageStat *)self registrationErrorIntegral];
  [(CAMBurstImageStat *)self setActionClusteringScore:?];
  if (*&v103 <= 0.5 || *(&v104 + 1) <= 5000.0)
  {
    LODWORD(v66) = v101;
    if (*&v101 <= 0.5 || *(&v102 + 1) <= 5000.0)
    {
      [(CAMBurstImageStat *)self setRegistrationErrorIntegral:0.0, v66];
      BurstLoggingMessage("Registration rejected due to skewness, which can indicate a bad registration result.\n");
      goto LABEL_57;
    }
  }

  BurstLoggingMessage("Row interval: (%d->%d)\n", HIDWORD(v98), v98);
  BurstLoggingMessage("Column interval: (%d->%d)\n", HIDWORD(v97), v97);
  v67 = v98;
  v68 = HIDWORD(v98);
  if (v98 - HIDWORD(v98) >= 64)
  {
    v69 = v97;
    v70 = HIDWORD(v97);
    if (v97 - HIDWORD(v97) > 63)
    {
      if (!self->doLimitedSharpnessAndBlur)
      {
        v71 = (*p_tx + SHIDWORD(v97));
        v72 = (*p_tx + v97);
        if (*p_tx <= 0.0)
        {
          v71 = HIDWORD(v97);
          v72 = v97;
          v70 = (SHIDWORD(v97) - *p_tx);
          v69 = (v97 - *p_tx);
        }

        v73 = (*p_ty + SHIDWORD(v98));
        v74 = (*p_ty + v98);
        if (*p_ty <= 0.0)
        {
          v73 = HIDWORD(v98);
          v74 = v98;
          v68 = (SHIDWORD(v98) - *p_ty);
          v67 = (v98 - *p_ty);
        }

        v75 = (v70 >> 5);
        v76 = v69 >> 5;
        v77 = self->gridWidth - 1;
        if (v76 < v77)
        {
          v78 = (v76 + 1);
        }

        else
        {
          v78 = v77;
        }

        v79 = (v68 >> 5);
        v80 = v67 >> 5;
        v81 = self->gridHeight - 1;
        if (v80 < v81)
        {
          v82 = (v80 + 1);
        }

        else
        {
          v82 = v81;
        }

        v83 = v78 | (v82 << 32);
        v84 = (v71 >> 5);
        if (v72 >> 5 < v77)
        {
          v85 = ((v72 >> 5) + 1);
        }

        else
        {
          v85 = v77;
        }

        v86 = (v73 >> 5);
        if (v74 >> 5 < v81)
        {
          v87 = ((v74 >> 5) + 1);
        }

        else
        {
          v87 = v81;
        }

        BurstLoggingMessage("sensedROI = (%d,%d)->(%d,%d)\n", v75, v79, v78, v82);
        [(CAMBurstImageStat *)self updateROI:v84 | (v86 << 32), v85 | (v87 << 32)];
        BurstLoggingMessage("referenceROI = (%d,%d)->(%d,%d)\n", v84, v86, v85, v87);
        v88 = v75 | (v79 << 32);
        v89 = a3;
        v90 = v83;
LABEL_59:
        [v89 updateROI:{v88, v90}];
        return;
      }

      goto LABEL_61;
    }
  }

  if (self->doLimitedSharpnessAndBlur)
  {
LABEL_61:
    BurstLoggingMessage("Registration in favor of face detection ROI.\n");
    return;
  }

  BurstLoggingMessage("Registration rejected due to ROI too large or too small.\n");
  [(CAMBurstImageStat *)self updateROI:0, v29];
  [a3 updateROI:{0, v29}];
  [(CAMBurstImageStat *)self setRegistrationErrorIntegral:0.0];
}

- (void)computeImageProjections:(id)a3
{
  v6[2] = ([a3 width] & 0xFFFFFFE0);
  v6[1] = [a3 height];
  v6[3] = [a3 bytesPerRow];
  SignatureBuffers = allocateSignatureBuffers(&self->projectionSignature, v6, 0);
  self->projectionMemoryBlock = SignatureBuffers;
  if (SignatureBuffers)
  {
    FastRegistration_computeSignatures(v6, 0, 0, &self->projectionSignature);
  }
}

- (void)writeGridROI:(id)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->gridROI.startX];
  [a3 setObject:v5 forKey:kCAMBurstImageProperty_ImageROIGridStartX];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->gridROI.startY];
  [a3 setObject:v6 forKey:kCAMBurstImageProperty_ImageROIGridStartY];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->gridROI.endX];
  [a3 setObject:v7 forKey:kCAMBurstImageProperty_ImageROIGridEndX];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->gridROI.endY];
  v9 = kCAMBurstImageProperty_ImageROIGridEndY;

  [a3 setObject:v8 forKey:v9];
}

- (void)computeImageData:(id)a3 faceIDCounts:(id)a4
{
  [(CAMBurstImageStat *)self computeImageColorHistogram:a3, a4];
  self->gridWidth = [a3 width] >> 5;
  self->gridHeight = [a3 height] >> 5;
  *&self->gridROI.startX = -1;
  *&self->gridROI.endX = -1;
  self->doLimitedSharpnessAndBlur = 0;
  BurstLoggingMessage("\t\t----------------------- facecore count = %d, numHWFaces = %d\n", [(NSMutableArray *)self->faceStatArray count], self->numHWFaces);
  if ([(NSMutableArray *)self->faceStatArray count]|| self->numHWFaces >= 1)
  {
    self->gridROI.startX = self->facesRoiRect.origin.x >> 5;
    self->gridROI.startY = ([a3 height] - self->facesRoiRect.origin.y - self->facesRoiRect.size.height) >> 5;
    self->gridROI.endX = ((self->facesRoiRect.size.width + self->facesRoiRect.origin.x) >> 5) + 1;
    v6 = (([a3 height] - self->facesRoiRect.origin.y) >> 5) + 1;
    self->gridROI.endY = v6;
    v7 = vmax_s32(*&self->gridROI.startX, 0);
    *&self->gridROI.startX = v7;
    endX = self->gridROI.endX;
    gridWidth = self->gridWidth;
    if (endX >= gridWidth)
    {
      endX = gridWidth - 1;
      self->gridROI.endX = gridWidth - 1;
    }

    gridHeight = self->gridHeight;
    if (v6 >= gridHeight)
    {
      v6 = gridHeight - 1;
      self->gridROI.endY = gridHeight - 1;
    }

    self->doLimitedSharpnessAndBlur = 1;
    BurstLoggingMessage("Limited ROI = (%d,%d)->(%d,%d)\n", v7.i32[0], v7.i32[1], endX, v6);
  }

  self->sharpnessGrid = malloc_type_calloc(1uLL, 8 * self->gridHeight * self->gridWidth, 0x1000040CE7E837CuLL);
  [(CAMBurstImageStat *)self computeImageSharpnessOnGrid:a3];
  [(CAMBurstImageStat *)self computeBlurStatsOnGrid:a3];

  [(CAMBurstImageStat *)self computeImageProjections:a3];
}

- (void)collapseSharpnessGrid
{
  self->gridROI = self->smoothedROI;
  if ([(NSMutableArray *)self->faceStatArray count]&& !self->doLimitedSharpnessAndBlur)
  {
    *&self->avgHorzDiffY = 0x3F80000000000000;
  }

  else
  {
    self->avgHorzDiffY = 0.0;
    BurstLoggingMessage("Computing sharpness over grid points (%d,%d)->(%d,%d)\n", self->gridROI.startX, self->gridROI.startY, self->gridROI.endX, self->gridROI.endY);
    v3 = vadd_s32(vsub_s32(*&self->gridROI.endX, *&self->gridROI.startX), 0x100000001);
    v33 = vmul_lane_s32(v3, v3, 1).u32[0];
    v4 = malloc_type_malloc(8 * v33, 0x1000040CE7E837CuLL);
    if (v4)
    {
      v5 = v4;
      startY = self->gridROI.startY;
      endY = self->gridROI.endY;
      if (startY <= endY)
      {
        v9 = 0;
        v8 = 0;
        v10 = 0;
        do
        {
          sharpnessGrid = self->sharpnessGrid;
          if (!sharpnessGrid)
          {
            break;
          }

          startX = self->gridROI.startX;
          if (startX <= self->gridROI.endX)
          {
            v13 = &sharpnessGrid[startX + self->gridWidth * startY];
            v14 = &v4[2 * v10];
            v15 = startX - 1;
            do
            {
              if (!self->doLimitedSharpnessAndBlur)
              {
                v9 += v13->var0;
                v8 += v13->var1;
              }

              v16 = *v13++;
              *v14 = v16;
              v14 += 8;
              ++v10;
              ++v15;
            }

            while (v15 < self->gridROI.endX);
            endY = self->gridROI.endY;
          }
        }

        while (startY++ < endY);
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      if (self->doLimitedSharpnessAndBlur)
      {
        v18 = self->sharpnessGrid;
        if (v18)
        {
          gridHeight = self->gridHeight;
          if (gridHeight >= 1)
          {
            v20 = 0;
            gridWidth = self->gridWidth;
            p_var1 = &v18->var1;
            do
            {
              v23 = self->gridWidth;
              v24 = p_var1;
              if (gridWidth >= 1)
              {
                do
                {
                  v9 += *(v24 - 1);
                  v25 = *v24;
                  v24 += 8;
                  v8 += v25;
                  --v23;
                }

                while (v23);
              }

              ++v20;
              p_var1 += 8 * gridWidth;
            }

            while (v20 != gridHeight);
          }
        }
      }

      qsort(v4, v33, 8uLL, compareGridElements);
      if (v33 >= 32)
      {
        v26 = 32;
      }

      else
      {
        v26 = v33;
      }

      avgHorzDiffY = self->avgHorzDiffY;
      if (v33 >= 1)
      {
        if (v26 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v26;
        }

        v29 = v5 + 1;
        do
        {
          v30 = *v29;
          v29 += 2;
          avgHorzDiffY = v30 + avgHorzDiffY;
          self->avgHorzDiffY = avgHorzDiffY;
          --v28;
        }

        while (v28);
      }

      v31 = avgHorzDiffY / (v26 * 1024.0);
      self->avgHorzDiffY = v31;
      v32 = v8 / v9;
      if (!v9)
      {
        v32 = 1.0;
      }

      self->blurExtent = v32;
      BurstLoggingMessage("After collapse avgHorzDiffY = %f, blurExtent = %f\n", v31, v32);

      free(v5);
    }
  }
}

- (float)computeFacialFocusScoreSum
{
  v32 = *MEMORY[0x1E69E9840];
  BurstLoggingMessage("Num HW faces = %d, facecore faces = %d\n", self->numHWFaces, [(NSMutableArray *)self->faceStatArray count]);
  numHWFaces = self->numHWFaces;
  if (numHWFaces <= [(NSMutableArray *)self->faceStatArray count])
  {
    v4 = [(NSMutableArray *)self->faceStatArray count];
  }

  else
  {
    v4 = self->numHWFaces;
  }

  if ([(CAMBurstImageStat *)self version]>= 2)
  {
    v28 = 0uLL;
    v29 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    faceStatArray = self->faceStatArray;
    v6 = [(NSMutableArray *)faceStatArray countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      v9 = 1.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(faceStatArray);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          [v11 normalizedFocusScore];
          v9 = v9 * v12;
          if (![v11 leftEyeOpen] || (objc_msgSend(v11, "rightEyeOpen") & 1) == 0)
          {
            v9 = v9 * 0.9;
          }

          if (([v11 leftEyeOpen] & 1) == 0 && !objc_msgSend(v11, "rightEyeOpen"))
          {
            v9 = v9 * 0.7;
          }

          if (![v11 smiling])
          {
            v9 = v9 * 0.5;
          }
        }

        v7 = [(NSMutableArray *)faceStatArray countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
      goto LABEL_38;
    }

LABEL_37:
    v9 = 1.0;
    goto LABEL_38;
  }

  v24 = 0uLL;
  v25 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v13 = self->faceStatArray;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (!v14)
  {
    goto LABEL_37;
  }

  v15 = v14;
  v16 = *v23;
  v9 = 1.0;
  do
  {
    for (j = 0; j != v15; ++j)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v22 + 1) + 8 * j);
      [v18 normalizedFocusScore];
      v9 = v9 * v19;
      if (![v18 leftEyeOpen] || (objc_msgSend(v18, "rightEyeOpen") & 1) == 0)
      {
        v9 = v9 * 0.9;
      }

      if (([v18 leftEyeOpen] & 1) == 0 && !objc_msgSend(v18, "rightEyeOpen"))
      {
        v9 = v9 * 0.7;
      }

      if (![v18 smiling])
      {
        v9 = v9 * 0.5;
      }
    }

    v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  }

  while (v15);
LABEL_38:
  if ([(NSMutableArray *)self->faceStatArray count])
  {
    v9 = v9 * 20.0;
  }

  BurstLoggingMessage("combined normalized focus score for face core detections = %f\n", v9);
  v20 = 0.0;
  if (self->doLimitedSharpnessAndBlur)
  {
    v20 = self->avgHorzDiffY / (self->blurExtent + 1.0);
  }

  BurstLoggingMessage("Limited sharpness score = %f, with number of faces = %d\n", v20, self->numHWFaces);
  return ((v4 * 2000.0) * v9) * (v20 + 5.0);
}

- (float)computeRuleOfThreeDistance
{
  faceStatArray = self->faceStatArray;
  v4 = 1.0;
  if (faceStatArray && [(NSMutableArray *)faceStatArray count])
  {
    if ([(NSMutableArray *)self->faceStatArray count])
    {
      v5 = 0;
      v6 = 0.0;
      do
      {
        v7 = [(NSMutableArray *)self->faceStatArray objectAtIndex:v5];
        [v7 normalizedFaceRect];
        v9 = v8;
        [v7 normalizedFaceRect];
        v11 = v9 + v10 * 0.5;
        [v7 normalizedFaceRect];
        v13 = v12;
        [v7 normalizedFaceRect];
        v14 = 0;
        v16 = v13 + v15 * 0.5;
        v17 = 100.0;
        do
        {
          v18 = v16 - *&ruleOfThirdsY[v14];
          if ((((v11 - *&ruleOfThirdsX[v14]) * (v11 - *&ruleOfThirdsX[v14])) + (v18 * v18)) < v17)
          {
            v17 = ((v11 - *&ruleOfThirdsX[v14]) * (v11 - *&ruleOfThirdsX[v14])) + (v18 * v18);
          }

          ++v14;
        }

        while (v14 != 9);
        v6 = v6 + sqrtf(v17);
        ++v5;
      }

      while ([(NSMutableArray *)self->faceStatArray count]> v5);
    }

    else
    {
      v6 = 0.0;
    }

    v4 = v6 / [(NSMutableArray *)self->faceStatArray count];
  }

  return 1.3333 - v4;
}

- (float)computeSmilePercentage
{
  faceStatArray = self->faceStatArray;
  v4 = 0.0;
  if (faceStatArray && [(NSMutableArray *)faceStatArray count])
  {
    if ([(NSMutableArray *)self->faceStatArray count])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v6 += [-[NSMutableArray objectAtIndex:](self->faceStatArray objectAtIndex:{v5++), "smiling"}];
      }

      while ([(NSMutableArray *)self->faceStatArray count]> v5);
      v4 = v6;
    }

    return v4 / [(NSMutableArray *)self->faceStatArray count];
  }

  return v4;
}

- (float)computeImageDistance:(id)a3
{
  v3 = 0;
  v4 = 0.0;
  do
  {
    v5 = vsqrtq_f64(vmulq_f64(vcvtq_f64_f32(*&self->colorHistogram[v3]), vcvtq_f64_f32(*(a3 + v3 * 4 + 16))));
    v4 = v4 + v5.f64[0] + v5.f64[1];
    v3 += 2;
  }

  while (v3 != 1024);
  return sqrt(1.0 - v4);
}

- (float)computeAEMatrixDifference:(id)a3
{
  v3 = 0;
  result = 0.0;
  do
  {
    v5 = vabdq_u16(*&self->aeMatrix[v3], *(a3 + v3 * 2 + 4116));
    v6 = vmovl_u16(*v5.i8);
    v7 = vcvtq_f32_u32(vmovl_high_u16(v5));
    v8 = vcvtq_f32_u32(v6);
    result = (((((((result + v8.f32[0]) + v8.f32[1]) + v8.f32[2]) + v8.f32[3]) + v7.f32[0]) + v7.f32[1]) + v7.f32[2]) + v7.f32[3];
    v3 += 8;
  }

  while (v3 != 256);
  return result;
}

- (int)setAEMatrix:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  aeMatrix = self->aeMatrix;
  [a3 getBytes:self->aeMatrix length:512];
  v4 = 0;
  v5 = 0uLL;
  v6 = 0uLL;
  do
  {
    v7 = *&aeMatrix[v4];
    v6 = vaddw_high_u16(v6, v7);
    v5 = vaddw_u16(v5, *v7.i8);
    v4 += 8;
  }

  while (v4 != 256);
  if (!vaddvq_s32(vaddq_s32(v5, v6)))
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (void)computeAEMatrix:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 Ybuffer];
  v5 = [a3 height];
  v6 = [a3 width];
  bzero(v14, 0x400uLL);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (v6)
      {
        for (j = 0; j != v6; ++j)
        {
          LOBYTE(v9) = *(v4 + (j + i * [a3 bytesPerRow]));
          v14[16 * (i / ((v5 + 15) >> 4)) + j / ((v6 + 15) >> 4)] = v14[16 * (i / ((v5 + 15) >> 4)) + j / ((v6 + 15) >> 4)] + v9;
        }
      }
    }
  }

  v10 = 0;
  aeMatrix = self->aeMatrix;
  v12 = vdupq_n_s32(0x44960000u);
  do
  {
    *aeMatrix++ = vuzp1q_s16(vcvtq_u32_f32(vdivq_f32(*&v14[v10], v12)), vcvtq_u32_f32(vdivq_f32(*&v14[v10 + 4], v12)));
    v10 += 8;
  }

  while (v10 != 256);
}

- (float)computeScore:(float)a3
{
  v5 = &self->colorHistogram[1020];
  BurstLoggingMessage("Thumbnail selection score computation for %s\n", [(NSString *)self->imageId UTF8String]);
  faceStatArray = self->faceStatArray;
  if (faceStatArray && [(NSMutableArray *)faceStatArray count])
  {
    v7 = 0.0;
    if ((*(v5 + 687) & 1) == 0)
    {
      [(CAMBurstImageStat *)self computeFacialFocusScoreSum];
      v7 = v8;
    }

    BurstLoggingMessage("\tAverage facial focus score = %f\n");
  }

  else
  {
    v7 = (self->avgHorzDiffY + self->avgHorzDiffY) / (self->blurExtent + 1.0);
    BurstLoggingMessage("\tInitial score (no faces) = %f (isGarbage = %d)\n");
  }

  self->actionScore = v7;
  registrationErrorIntegral = self->registrationErrorIntegral;
  if (registrationErrorIntegral > a3 && (*(v5 + 689) & 1) == 0)
  {
    v10 = (registrationErrorIntegral / 100.0) + (v7 * 4.0);
    self->actionScore = v10;
    BurstLoggingMessage("\tAction selection score = %f\n", v10);
  }

  self->imageScore = v7;
  return v7;
}

- (int64_t)compareImageOrder:(id)a3
{
  v4 = [(CAMBurstImageStat *)self temporalOrder];
  v5 = [a3 temporalOrder];
  if (v5 <= v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4 > v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (CGRect)facesRoiRect
{
  objc_copyStruct(v6, &self->facesRoiRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end