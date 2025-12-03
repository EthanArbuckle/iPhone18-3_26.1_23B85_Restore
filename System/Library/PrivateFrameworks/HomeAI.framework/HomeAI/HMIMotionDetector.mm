@interface HMIMotionDetector
- (BOOL)applyActivityZoneFilteringOnSourcePoint:(CGPoint)point destinationPoint:(CGPoint)destinationPoint frameSize:(CGSize)size activityZones:(id)zones;
- (HMIMotionDetector)init;
- (id)_computeOpticalFlow:(__CVBuffer *)flow with:(__CVBuffer *)with globalMotionScore:(float *)score activityZones:(id)zones operationMode:(unint64_t)mode;
- (id)calculateMotionDetection:(vector<unsigned)char score:(std:()vector<float :(std:()vector<cv:(std:()vector<cv:(std:(id)cv :(unint64_t)a8 allocator<cv:()vector<cv:(std:(CGSize)self0 :(float)self1 allocator<cv::Mat>> *)a9 :Mat :Point_<float>>> *)a6 :Point_<float> :allocator<cv::Point_<float>>> *)a5 :Point_<float> :allocator<float>> *)a4 allocator<unsigned char>> *)a3 srcFeatureCVPoints:dstFeatreCVPoints:activityZones:operationMode:srcPyramid:frameSize:brightnessChange:;
- (id)detectWithGlobalMotionScore:(float *)score referencePixelBuffer:(__CVBuffer *)buffer targetPixelBuffer:(__CVBuffer *)pixelBuffer activityZones:(id)zones detectorMode:(unint64_t)mode;
- (id)visualizeMotionDetections:(id)detections frameSize:(CGSize)size timeStamp:(id *)stamp;
- (void)dealloc;
@end

@implementation HMIMotionDetector

- (HMIMotionDetector)init
{
  v4.receiver = self;
  v4.super_class = HMIMotionDetector;
  v2 = [(HMIMotionDetector *)&v4 init];
  if (v2)
  {
    v2->_resizedSampleBuffers = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  }

  return v2;
}

- (void)dealloc
{
  CFArrayRemoveAllValues(self->_resizedSampleBuffers);
  CFRelease(self->_resizedSampleBuffers);
  v3.receiver = self;
  v3.super_class = HMIMotionDetector;
  [(HMIMotionDetector *)&v3 dealloc];
}

- (id)_computeOpticalFlow:(__CVBuffer *)flow with:(__CVBuffer *)with globalMotionScore:(float *)score activityZones:(id)zones operationMode:(unint64_t)mode
{
  zonesCopy = zones;
  *score = 0.0;
  Size = HMICVPixelBufferGetSize(with);
  v13 = v12;
  if (Size == HMICVPixelBufferGetSize(flow) && v13 == v14)
  {
    v69[2] = [[HMISignpost alloc] initWithName:@"Sparse Optical Flow"];
    CVPixelBufferLockBaseAddress(with, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(with, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(with, 0);
    v19 = v13;
    v20 = Size;
    v60[0] = v13;
    v60[1] = Size;
    v61 = BaseAddressOfPlane;
    v62 = 0;
    if (v13 == 1)
    {
      v21 = v20;
    }

    else
    {
      v21 = BytesPerRowOfPlane;
    }

    if (v21 == v20 || BytesPerRowOfPlane == 0)
    {
      v23 = 1124024320;
    }

    else
    {
      v23 = 1124007936;
    }

    v67 = v60;
    v68 = v69;
    if (BytesPerRowOfPlane)
    {
      v24 = v21;
    }

    else
    {
      v24 = v20;
    }

    v59[0] = v23;
    v59[1] = 2;
    v69[0] = v24;
    v69[1] = 1;
    v65 = &BaseAddressOfPlane[v24 * v19];
    v66 = 0;
    v63 = BaseAddressOfPlane;
    v64 = &v65[v20 - v24];
    memset(v58, 0, sizeof(v58));
    cv::_InputArray::_InputArray(v32, v59);
    cv::_OutputArray::_OutputArray(v47, v58);
    v36[0] = 0xA0000000ALL;
    cv::buildOpticalFlowPyramid(v32, v47, v36, 2u, 1, 4, 0, 1);
    CVPixelBufferLockBaseAddress(flow, 1uLL);
    v25 = CVPixelBufferGetBaseAddressOfPlane(flow, 0);
    v26 = CVPixelBufferGetBytesPerRowOfPlane(flow, 0);
    v48[0] = v13;
    v48[1] = Size;
    v49 = v25;
    v50 = 0;
    if (v19 == 1)
    {
      v27 = v20;
    }

    else
    {
      v27 = v26;
    }

    if (v27 == v20 || v26 == 0)
    {
      v29 = 1124024320;
    }

    else
    {
      v29 = 1124007936;
    }

    v55 = v48;
    v56 = v57;
    if (v26)
    {
      v30 = v27;
    }

    else
    {
      v30 = v20;
    }

    v47[1] = 2;
    v47[0] = v29;
    v57[0] = v30;
    v57[1] = 1;
    v54 = 0;
    v53 = &v25[v30 * v19];
    v51 = v25;
    v52 = &v53[v20 - v30];
    memset(v46, 0, sizeof(v46));
    cv::_InputArray::_InputArray(v32, v47);
    cv::_OutputArray::_OutputArray(v36, v46);
    v38 = 0xA0000000ALL;
    cv::buildOpticalFlowPyramid(v32, v36, &v38, 2u, 1, 4, 0, 1);
    memset(v45, 0, sizeof(v45));
    v43 = 0;
    v42 = 0;
    v44 = 0;
    cv::_InputArray::_InputArray(v36, v47);
    v39 = -2147287027;
    v40 = v45;
    v41 = 0;
    v38 = &unk_2840567A8;
    v33 = &v32[2];
    v34 = v35;
    v35[0] = 0;
    v35[1] = 0;
    v32[0] = 1124007936;
    memset(&v32[1], 0, 60);
    cv::_InputArray::_InputArray(&v37, v32);
    cv::goodFeaturesToTrack(v36, &v38, 0x1F4, &v37, 0.0299999993, 5.0, 5, 0, 0.04);
  }

  v16 = MEMORY[0x277CBEBF8];

  return v16;
}

- (id)calculateMotionDetection:(vector<unsigned)char score:(std:()vector<float :(std:()vector<cv:(std:()vector<cv:(std:(id)cv :(unint64_t)a8 allocator<cv:()vector<cv:(std:(CGSize)self0 :(float)self1 allocator<cv::Mat>> *)a9 :Mat :Point_<float>>> *)a6 :Point_<float> :allocator<cv::Point_<float>>> *)a5 :Point_<float> :allocator<float>> *)a4 allocator<unsigned char>> *)a3 srcFeatureCVPoints:dstFeatreCVPoints:activityZones:operationMode:srcPyramid:frameSize:brightnessChange:
{
  height = a10.height;
  width = a10.width;
  v20 = a9;
  cvCopy = cv;
  v115 = 9999.0;
  v116 = 9999.0;
  v113 = 9999.0;
  v114 = 9999.0;
  v111 = -9999.0;
  v112 = -9999.0;
  v109 = -9999.0;
  v110 = -9999.0;
  v104 = malloc_type_malloc(2 * (a5->var1 - a5->var0), 0x1000040451B5BE8uLL);
  v103 = malloc_type_malloc(2 * (a5->var1 - a5->var0), 0x1000040451B5BE8uLL);
  var0 = a3->var0;
  if (a3->var1 != a3->var0)
  {
    v23 = 0;
    v24 = 0;
    v25 = flt_22D298570[(a8 & 1) == 0];
    v26 = 0.0;
    v27 = 4;
    while (1)
    {
      if (!var0[v23] || a4->__begin_[v23] <= v25)
      {
        goto LABEL_53;
      }

      v28 = hypotf(*(a5->var0 + v27 - 4) - *(a6->var0 + v27 - 4), *(a5->var0 + v27) - *(a6->var0 + v27));
      v29 = [cvCopy count];
      height = 1;
      if ((a8 & 1) != 0 && v29)
      {
        height = [(HMIMotionDetector *)self applyActivityZoneFilteringOnSourcePoint:cvCopy destinationPoint:rint(*(a5->var0 + v27 - 4)) frameSize:rint(*(a5->var0 + v27)) activityZones:rint(*(a6->var0 + v27 - 4)), rint(*(a6->var0 + v27)), width, height];
      }

      if (v28 <= 1.0 || !height)
      {
        goto LABEL_53;
      }

      v32 = (a5->var0 + v27);
      v33 = (a6->var0 + v27);
      v34 = *(v32 - 1);
      v35 = *v32;
      v37 = *(v33 - 1);
      v36 = *v33;
      if (v34 >= v37)
      {
        v38 = *(v33 - 1);
      }

      else
      {
        v38 = *(v32 - 1);
      }

      v39 = v38;
      if (v35 >= v36)
      {
        v40 = *v33;
      }

      else
      {
        v40 = *v32;
      }

      v41 = v116;
      if (v116 <= v39)
      {
        if (v114 <= v39)
        {
          goto LABEL_25;
        }

        v42 = &v114;
      }

      else
      {
        if (v116 >= 9998.0)
        {
          v41 = v39;
        }

        v114 = v41;
        v42 = &v116;
      }

      *v42 = v39;
LABEL_25:
      v43 = v40;
      v44 = v115;
      if (v115 <= v43)
      {
        if (v113 <= v43)
        {
          goto LABEL_32;
        }

        v45 = &v113;
      }

      else
      {
        if (v115 >= 9998.0)
        {
          v44 = v43;
        }

        v113 = v44;
        v45 = &v115;
      }

      *v45 = v43;
LABEL_32:
      if (v34 >= v37)
      {
        v46 = v34;
      }

      else
      {
        v46 = v37;
      }

      v47 = v46;
      if (v35 >= v36)
      {
        v48 = v35;
      }

      else
      {
        v48 = v36;
      }

      v49 = v112;
      if (v112 >= v47)
      {
        if (v110 >= v47)
        {
          goto LABEL_45;
        }

        v50 = &v110;
      }

      else
      {
        if (v112 <= -9998.0)
        {
          v49 = v47;
        }

        v110 = v49;
        v50 = &v112;
      }

      *v50 = v47;
LABEL_45:
      v51 = v48;
      v52 = v111;
      if (v111 < v51)
      {
        if (v111 <= -9998.0)
        {
          v52 = v51;
        }

        v109 = v52;
        v53 = &v111;
        goto LABEL_51;
      }

      if (v109 < v51)
      {
        v53 = &v109;
LABEL_51:
        *v53 = v51;
      }

      v26 = v26 + sqrtf(v28);
      v54 = &v104[2 * v24];
      *v54 = rint(v34);
      v54[1] = rint(v35);
      v55 = &v103[2 * v24];
      *v55 = rint(v37);
      v55[1] = rint(v36);
      ++v24;
LABEL_53:
      ++v23;
      var0 = a3->var0;
      v27 += 8;
      if (a3->var1 - a3->var0 <= v23)
      {
        v56 = v111;
        v57 = v112;
        v58 = v113;
        v59 = v114;
        v60 = v115;
        v61 = v116;
        v62 = v109;
        v63 = v110;
        v20 = a9;
        goto LABEL_56;
      }
    }
  }

  v24 = 0;
  v60 = 9999.0;
  v62 = -9999.0;
  v63 = -9999.0;
  v58 = 9999.0;
  v26 = 0.0;
  v56 = -9999.0;
  v61 = 9999.0;
  v59 = 9999.0;
  v57 = -9999.0;
LABEL_56:
  v64 = flt_22D298598[v26 < 20.0];
  v65 = (v57 - v61 + 40.0) * v64;
  if (v57 - v59 + 40.0 >= v65)
  {
    v59 = v61;
  }

  v66 = (v56 - v60 + 40.0) * v64;
  if (v56 - v58 + 40.0 >= v66)
  {
    v58 = v60;
  }

  if (v63 - v61 + 40.0 >= v65)
  {
    v63 = v57;
  }

  if (v62 - v60 + 40.0 >= v66)
  {
    v67 = v56;
  }

  else
  {
    v67 = v62;
  }

  v68 = v63;
  v69 = v67;
  v70 = (v68 + 20.0);
  v71 = (v69 + 20.0);
  v72 = *(v20->var0 + 3) - 1;
  if (v70 <= v72)
  {
    v73 = v70;
  }

  else
  {
    v73 = v72;
  }

  v74 = *(v20->var0 + 2) - 1;
  if (v71 <= v74)
  {
    v75 = v71;
  }

  else
  {
    v75 = v74;
  }

  if (v26 == 0.0)
  {
    v73 = *MEMORY[0x277CBF348];
    v75 = *(MEMORY[0x277CBF348] + 8);
    v76 = v75;
    v77 = *MEMORY[0x277CBF348];
  }

  else
  {
    v78 = v59;
    v79 = v58;
    v77 = fmax((v78 + -20.0), 0.0);
    v76 = fmax((v79 + -20.0), 0.0);
  }

  v80 = pow((fabsf(a11) + 5.0) / 5.0, 3.0);
  v118.size.width = v73 - v77;
  v118.size.height = v75 - v76;
  v118.origin.x = v77;
  v118.origin.y = v76;
  v119 = CGRectStandardize(v118);
  x = v119.origin.x;
  y = v119.origin.y;
  v83 = v119.size.width;
  v84 = v119.size.height;
  v101 = height;
  v102 = v80;
  memset(&v108, 0, sizeof(v108));
  v100 = width;
  *&v119.origin.x = width;
  *&v119.size.width = height;
  CGAffineTransformMakeScale(&v108, (1.0 / *&v119.origin.x), (1.0 / *&v119.size.width));
  v107 = v108;
  v120.origin.x = x;
  v120.origin.y = y;
  v120.size.width = v83;
  v120.size.height = v84;
  v121 = CGRectApplyAffineTransform(v120, &v107);
  v85 = v121.origin.x;
  v86 = v121.origin.y;
  v87 = v121.size.width;
  v99 = v121.size.height;
  array = [MEMORY[0x277CBEB18] array];
  v98 = v87;
  if (v24 >= 1)
  {
    v89 = v103 + 1;
    v90 = v104 + 1;
    v91 = v24;
    do
    {
      v105 = *v90;
      v106 = *(v90 - 1);
      v92 = [[HMIMotionVector alloc] initWithOrigin:v108.tx + v105 * v108.c + v108.a * v106 motion:v108.ty + v105 * v108.d + v108.b * v106, v108.tx + *v89 * v108.c + v108.a * *(v89 - 1) - (v108.tx + v105 * v108.c + v108.a * v106), v108.ty + *v89 * v108.d + v108.b * *(v89 - 1) - (v108.ty + v105 * v108.d + v108.b * v106)];
      [array addObject:v92];

      v89 += 2;
      v90 += 2;
      --v91;
    }

    while (v91);
  }

  v93 = v26 / v102;
  free(v104);
  free(v103);
  if (v93 >= 0.001)
  {
    v95 = [HMIMotionDetection alloc];
    if (v93 <= 1000.0)
    {
      *&v96 = v26 / v102;
    }

    else
    {
      *&v96 = 1000.0;
    }

    v94 = [(HMIMotionDetection *)v95 initWithBoundingBox:array size:a8 motionVectors:v85 motionScore:v86 motionMode:v98, v99, v100, v101, v96, *&v98, *&v86, *&v85];
  }

  else
  {
    v94 = 0;
  }

  return v94;
}

- (BOOL)applyActivityZoneFilteringOnSourcePoint:(CGPoint)point destinationPoint:(CGPoint)destinationPoint frameSize:(CGSize)size activityZones:(id)zones
{
  height = size.height;
  width = size.width;
  y = destinationPoint.y;
  x = destinationPoint.x;
  v10 = point.y;
  v11 = point.x;
  v46 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  firstObject = [zonesCopy firstObject];
  isInclusion = [firstObject isInclusion];

  v15 = HMICGPointClampWithSize(v11, v10, width);
  v17 = v16;
  v39 = v15;
  v18 = HMICGPointClampWithSize(x, y, width);
  v37 = v19;
  v38 = v18;
  *&v18 = width;
  *&v19 = height;
  memset(&v44, 0, sizeof(v44));
  CGAffineTransformMakeScale(&v44, (1.0 / *&v18), (1.0 / *&v19));
  a = v44.a;
  b = v44.b;
  c = v44.c;
  d = v44.d;
  tx = v44.tx;
  ty = v44.ty;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = zonesCopy;
  v27 = [v26 countByEnumeratingWithState:&v40 objects:v45 count:16];
  isInclusion2 = isInclusion ^ 1;
  if (v27)
  {
    v29 = tx + v17 * c + a * v39;
    v30 = ty + v17 * d + b * v39;
    v31 = tx + v37 * c + a * v38;
    v32 = ty + v37 * d + b * v38;
    v33 = *v41;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(v26);
        }

        v35 = *(*(&v40 + 1) + 8 * i);
        if ([v35 containsVectorWithSource:v29 destination:{v30, v31, v32}])
        {
          isInclusion2 = [v35 isInclusion];
          goto LABEL_11;
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return isInclusion2;
}

- (id)detectWithGlobalMotionScore:(float *)score referencePixelBuffer:(__CVBuffer *)buffer targetPixelBuffer:(__CVBuffer *)pixelBuffer activityZones:(id)zones detectorMode:(unint64_t)mode
{
  v7 = [(HMIMotionDetector *)self _computeOpticalFlow:buffer with:pixelBuffer globalMotionScore:score activityZones:zones operationMode:mode];

  return v7;
}

- (id)visualizeMotionDetections:(id)detections frameSize:(CGSize)size timeStamp:(id *)stamp
{
  height = size.height;
  width = size.width;
  v8 = [HMIMotionDetection firstMotionDetectionInArray:detections withMode:2];
  height = [HMIVisionUtilities createPixelBufferWithSize:875704422 pixelFormat:0 useIOSurface:width, height];
  HMICVPixelBufferSetValue(height, 0);
  CVPixelBufferLockBaseAddress(height, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(height, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(height, 0);
  motionVectors = [v8 motionVectors];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__HMIMotionDetector_visualizeMotionDetections_frameSize_timeStamp___block_invoke;
  v17[3] = &__block_descriptor_64_e25_v16__0__HMIMotionVector_8l;
  *&v17[4] = width;
  *&v17[5] = height;
  v17[6] = BaseAddressOfPlane;
  v17[7] = BytesPerRowOfPlane;
  [motionVectors na_each:v17];

  CVPixelBufferUnlockBaseAddress(height, 0);
  v13 = [HMIVideoFrame alloc];
  v16 = *stamp;
  v14 = [(HMIVideoFrame *)v13 initWithPixelBuffer:height presentationTimeStamp:&v16];
  CVPixelBufferRelease(height);

  return v14;
}

void __67__HMIMotionDetector_visualizeMotionDetections_frameSize_timeStamp___block_invoke(uint64_t a1, void *a2)
{
  v31 = a2;
  [v31 origin];
  v4 = v3;
  v5 = *(a1 + 32);
  [v31 origin];
  v7 = v6;
  v8 = *(a1 + 40);
  [v31 target];
  v10 = v9;
  v11 = *(a1 + 32);
  [v31 target];
  v12 = v4 * v5;
  v13 = v7 * v8;
  v14 = v10 * v11;
  v16 = v15 * *(a1 + 40);
  if (v4 * v5 >= v10 * v11)
  {
    v17 = v10 * v11;
  }

  else
  {
    v17 = v4 * v5;
  }

  if (v4 * v5 >= v10 * v11)
  {
    v18 = v16;
  }

  else
  {
    v18 = v7 * v8;
  }

  v19 = 0.0;
  v20 = v14 - v12;
  v21 = (v16 - v13) / (v14 - v12);
  if (v14 == v12)
  {
    v21 = 0.0;
  }

  for (; (v17 - v12) * (v17 - v14) <= 0.0; v18 = v21 + v18)
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40) + -1.0;
    if (v23 >= v18)
    {
      v23 = v18;
    }

    v24 = fmax(v23, 0.0);
    v25 = v22 + -1.0;
    if (v22 + -1.0 >= v17)
    {
      v25 = v17;
    }

    *(*(a1 + 48) + *(a1 + 56) * v24 + fmax(v25, 0.0)) = -1;
    v17 = v17 + 1.0;
  }

  if (v13 < v16)
  {
    v26 = v7 * v8;
  }

  else
  {
    v12 = v10 * v11;
    v26 = v16;
  }

  if (v16 != v13)
  {
    v19 = v20 / (v16 - v13);
  }

  for (; (v26 - v13) * (v26 - v16) <= 0.0; v26 = v26 + 1.0)
  {
    v27 = *(a1 + 32);
    v28 = *(a1 + 40) + -1.0;
    if (v28 >= v26)
    {
      v28 = v26;
    }

    v29 = fmax(v28, 0.0);
    v30 = v27 + -1.0;
    if (v27 + -1.0 >= v12)
    {
      v30 = v12;
    }

    *(*(a1 + 48) + *(a1 + 56) * v29 + fmax(v30, 0.0)) = -1;
    v12 = v19 + v12;
  }
}

@end