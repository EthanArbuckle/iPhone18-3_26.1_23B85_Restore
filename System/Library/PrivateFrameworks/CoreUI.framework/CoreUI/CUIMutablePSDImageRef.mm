@interface CUIMutablePSDImageRef
- (BOOL)saveToURL:(id)l completionHandler:(id)handler;
- (BOOL)saveWithCompletionHandler:(id)handler;
- (CUIMutablePSDImageRef)initWithPixelWidth:(unint64_t)width pixelHeight:(unint64_t)height;
- (__CFData)copyDefaultICCProfileData;
- (unsigned)newSliceRectsArray:(PSDRect *)array withSliceRects:(id)rects;
- (unsigned)newSliceRectsArray:(PSDRect *)array withXCutPositions:(id)positions yCutPositions:(id)cutPositions;
- (unsigned)newUInt32CArray:(unsigned int *)array withNSArray:(id)sArray prependNumber:(id)number appendNumber:(id)appendNumber;
- (unsigned)psdLayerBlendModeForCGBlendMode:(int)mode;
- (void)addLayer:(id)layer;
- (void)addLayoutMetricsChannel:(id)channel;
- (void)addOrUpdateSlicesWithSliceRects:(id)rects;
- (void)addOrUpdateSlicesWithXCutPositions:(id)positions yCutPositions:(id)cutPositions;
- (void)newPSDGradientFromCUIPSDGradient:(id)gradient;
- (void)setFileURL:(id)l;
- (void)updateSliceName:(id)name atIndex:(unsigned int)index;
@end

@implementation CUIMutablePSDImageRef

- (__CFData)copyDefaultICCProfileData
{
  v2 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  v3 = CGColorSpaceCopyICCData(v2);
  CGColorSpaceRelease(v2);
  return v3;
}

- (CUIMutablePSDImageRef)initWithPixelWidth:(unint64_t)width pixelHeight:(unint64_t)height
{
  heightCopy = height;
  widthCopy = width;
  v14.receiver = self;
  v14.super_class = CUIMutablePSDImageRef;
  v6 = [(CUIMutablePSDImageRef *)&v14 init];
  v7 = v6;
  if (v6)
  {
    [(CUIPSDImageRef *)v6 setFile:0xFFFFFFFFLL];
    v8 = operator new();
    CPSDFile::CPSDFile(v8);
    [(CUIPSDImageRef *)v7 setPsd:v8];
    copyDefaultICCProfileData = [(CUIMutablePSDImageRef *)v7 copyDefaultICCProfileData];
    if (copyDefaultICCProfileData)
    {
      v10 = copyDefaultICCProfileData;
      BytePtr = CFDataGetBytePtr(copyDefaultICCProfileData);
      Length = CFDataGetLength(v10);
      CPSDFile::Init([(CUIPSDImageRef *)v7 psd], widthCopy, heightCopy, BytePtr, Length);
      CFRelease(v10);
    }

    else
    {
      CPSDFile::Init([(CUIPSDImageRef *)v7 psd], widthCopy, heightCopy, 0, 0);
    }
  }

  return v7;
}

- (void)addLayoutMetricsChannel:(id)channel
{
  v5 = NewCPSDStringFromNSString([channel name]);
  v6 = *([(CUIPSDImageRef *)self psd]+ 36);
  v7 = *([(CUIPSDImageRef *)self psd]+ 37);
  v8 = v7 * v6;
  v9 = malloc_type_calloc(v7 * v6, 1uLL, 0x100004077774924uLL);
  [channel edgeInsets];
  v11 = v10;
  [channel edgeInsets];
  v13 = v12;
  [channel edgeInsets];
  v15 = (v6 - v14 - v11);
  [channel edgeInsets];
  if (v15)
  {
    v17 = v13;
    v18 = (v7 - v16 - v17);
    v19 = &v9[v17];
    v20 = v11 * v7;
    do
    {
      memset(&v19[v20], 255, v18);
      v20 += v7;
      --v15;
    }

    while (v15);
  }

  CPSDFile::AddExtraAlphaChannel([(CUIPSDImageRef *)self psd], v9, v8, v5);
}

- (void)newPSDGradientFromCUIPSDGradient:(id)gradient
{
  v4 = operator new();
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 15) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  *(v4 + 3) = 0;
  *(v4 + 12) = 1282306592;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  [gradient drawingAngle];
  *v4 = v5;
  gradientStyle = [gradient gradientStyle];
  if (gradientStyle == 1382312992)
  {
    v7 = 1382312992;
  }

  else
  {
    v7 = 1282306592;
  }

  if (gradientStyle == 1382444131)
  {
    v8 = 1382444131;
  }

  else
  {
    v8 = v7;
  }

  if (gradientStyle == 1148022372)
  {
    v9 = 1148022372;
  }

  else
  {
    v9 = 1282306592;
  }

  if (gradientStyle == 1097754476)
  {
    v10 = 1097754476;
  }

  else
  {
    v10 = v9;
  }

  if (gradientStyle <= 1382312991)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  *(v4 + 12) = v11;
  evaluator = [gradient evaluator];
  if (evaluator)
  {
    [evaluator smoothingCoefficient];
    *(v4 + 1) = v12 * 4096.0;
    v4[17] = [evaluator isDithered];
    [evaluator fillColor];
    objb = v13;
    [evaluator fillColor];
    v84 = v14;
    [evaluator fillColor];
    v83 = v15;
    [evaluator fillColor];
    v16.f64[0] = objb;
    v16.f64[1] = v84;
    v17.f64[0] = v83;
    v17.f64[1] = v18;
    v19 = vdupq_n_s64(0x406FE00000000000uLL);
    *(v4 + 56) = vmulq_f64(v16, v19);
    *(v4 + 72) = vmulq_f64(v17, v19);
    v4[18] = 1;
    v20 = [objc_msgSend(evaluator "colorMidpointLocations")];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = [evaluator colorStops];
    v21 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
    if (v21)
    {
      v22 = 0;
      v23 = *v94;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v94 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v93 + 1) + 8 * i);
          [v25 gradientColor];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          if (v22 >= v20)
          {
            v33 = 50;
          }

          else
          {
            [objc_msgSend(objc_msgSend(evaluator "colorMidpointLocations")];
            v33 = (v32 * 100.0);
          }

          [v25 location];
          v34 = v27 * 255.0;
          v35 = v29 * 255.0;
          v36 = v31 * 255.0;
          v38 = vcvtd_n_u64_f64(v37, 0xCuLL);
          v39 = *(v4 + 12);
          v40 = *(v4 + 13);
          if (v39 >= v40)
          {
            v42 = *(v4 + 11);
            v43 = v39 - v42;
            v44 = (v39 - v42) >> 5;
            v45 = v44 + 1;
            if ((v44 + 1) >> 59)
            {
              std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
            }

            v46 = v40 - v42;
            if (v46 >> 4 > v45)
            {
              v45 = v46 >> 4;
            }

            if (v46 >= 0x7FFFFFFFFFFFFFE0)
            {
              v45 = 0x7FFFFFFFFFFFFFFLL;
            }

            if (v45)
            {
              v47 = std::__allocate_at_least[abi:ne200100]<std::allocator<PSDGradientColorStop>>((v4 + 88), v45);
              v45 = v48;
              v42 = *(v4 + 11);
              v43 = *(v4 + 12) - v42;
              v49 = v43 >> 5;
            }

            else
            {
              v47 = 0;
              v49 = v44;
            }

            v50 = v47 + 32 * v44;
            v51 = v47 + 32 * v45;
            *v50 = v34;
            *(v50 + 8) = v35;
            *(v50 + 16) = v36;
            *(v50 + 24) = v38;
            *(v50 + 28) = v33;
            v41 = v50 + 32;
            v52 = (v50 - 32 * v49);
            memcpy(v52, v42, v43);
            v53 = *(v4 + 11);
            *(v4 + 11) = v52;
            *(v4 + 12) = v41;
            *(v4 + 13) = v51;
            if (v53)
            {
              operator delete(v53);
            }
          }

          else
          {
            *v39 = v34;
            *(v39 + 8) = v35;
            *(v39 + 16) = v36;
            v41 = v39 + 32;
            *(v39 + 24) = v38;
            *(v39 + 28) = v33;
          }

          *(v4 + 12) = v41;
          ++v22;
        }

        v21 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
      }

      while (v21);
    }

    v54 = [objc_msgSend(evaluator "opacityMidpointLocations")];
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    obja = [evaluator opacityStops];
    v55 = [obja countByEnumeratingWithState:&v89 objects:v97 count:16];
    if (v55)
    {
      v56 = 0;
      v57 = *v90;
      do
      {
        for (j = 0; j != v55; j = j + 1)
        {
          if (*v90 != v57)
          {
            objc_enumerationMutation(obja);
          }

          v59 = *(*(&v89 + 1) + 8 * j);
          if (v56 >= v54)
          {
            v61 = 50;
          }

          else
          {
            [objc_msgSend(objc_msgSend(evaluator "opacityMidpointLocations")];
            v61 = (v60 * 100.0);
          }

          [v59 opacity];
          v63 = v62;
          [v59 location];
          v64 = v63 * 100.0;
          v66 = vcvtd_n_u64_f64(v65, 0xCuLL);
          v67 = *(v4 + 15);
          v68 = *(v4 + 16);
          if (v67 >= v68)
          {
            v70 = *(v4 + 14);
            v71 = v67 - v70;
            v72 = (v67 - v70) >> 4;
            v73 = v72 + 1;
            if ((v72 + 1) >> 60)
            {
              std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
            }

            v74 = v68 - v70;
            if (v74 >> 3 > v73)
            {
              v73 = v74 >> 3;
            }

            if (v74 >= 0x7FFFFFFFFFFFFFF0)
            {
              v73 = 0xFFFFFFFFFFFFFFFLL;
            }

            if (v73)
            {
              v75 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>((v4 + 112), v73);
              v73 = v76;
              v70 = *(v4 + 14);
              v71 = *(v4 + 15) - v70;
              v77 = v71 >> 4;
            }

            else
            {
              v75 = 0;
              v77 = v72;
            }

            v78 = v75 + 16 * v72;
            v79 = v75 + 16 * v73;
            *v78 = v64;
            *(v78 + 8) = v66;
            *(v78 + 12) = v61;
            v69 = v78 + 16;
            v80 = (v78 - 16 * v77);
            memcpy(v80, v70, v71);
            v81 = *(v4 + 14);
            *(v4 + 14) = v80;
            *(v4 + 15) = v69;
            *(v4 + 16) = v79;
            if (v81)
            {
              operator delete(v81);
            }
          }

          else
          {
            *v67 = v64;
            v69 = v67 + 16;
            *(v67 + 8) = v66;
            *(v67 + 12) = v61;
          }

          *(v4 + 15) = v69;
          ++v56;
        }

        v55 = [obja countByEnumeratingWithState:&v89 objects:v97 count:16];
      }

      while (v55);
    }
  }

  return v4;
}

- (unsigned)psdLayerBlendModeForCGBlendMode:(int)mode
{
  if ((mode - 1) > 0xE)
  {
    return 1852797549;
  }

  else
  {
    return *&aLumnrcsrevokra[4 * (mode - 1)];
  }
}

- (void)addLayer:(id)layer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [layer opacity];
    v7 = (v6 * 255.0);
    v8 = -[CUIMutablePSDImageRef psdLayerBlendModeForCGBlendMode:](self, "psdLayerBlendModeForCGBlendMode:", [layer blendMode]);
    v9 = NewCPSDStringFromNSString([layer name]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *v19 = 0u;
      v20 = 0u;
      cgImageRef = [layer cgImageRef];
      LODWORD(v11) = *([(CUIPSDImageRef *)self psd]+ 37);
      v12 = v11;
      LODWORD(v13) = *([(CUIPSDImageRef *)self psd]+ 36);
      LODWORD(cgImageRef) = CUIGetChannelDataForImage(cgImageRef, v19, v12, v13);
      CPSDFile::AddLayer([(CUIPSDImageRef *)self psd], v19, cgImageRef, v9, v7, v8);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = -[CUIMutablePSDImageRef newPSDGradientFromCUIPSDGradient:](self, "newPSDGradientFromCUIPSDGradient:", [layer gradient]);
        CPSDFile::AddLayer([(CUIPSDImageRef *)self psd], v14, v9, v7, v8);
        if (v14)
        {
          v15 = v14[14];
          if (v15)
          {
            v14[15] = v15;
            operator delete(v15);
          }

          v16 = v14[11];
          if (v16)
          {
            v14[12] = v16;
            operator delete(v16);
          }

          MEMORY[0x193AC64C0](v14, 0x1020C40E61DAC95);
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CPSDFile::AddLayerGroupStart([(CUIPSDImageRef *)self psd]);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = 0;
            if (!v9)
            {
              goto LABEL_19;
            }

            goto LABEL_16;
          }

          CPSDFile::AddLayerGroupEnd([(CUIPSDImageRef *)self psd], v9, v7, 1885434739);
        }
      }
    }

    v17 = 1;
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_16:
    v18 = *(v9 + 1);
    if (v18)
    {
      MEMORY[0x193AC64A0](v18, 0x1000C80BDFB0063);
      *(v9 + 1) = 0;
    }

    MEMORY[0x193AC64C0](v9, 0x1010C4082113244);
LABEL_19:
    if (v17)
    {
      return;
    }
  }

  -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"CUIMutablePSDImageRef.mm", 434, @"AddLayer called with object of unexpected class:%@", [layer description]);
}

- (unsigned)newUInt32CArray:(unsigned int *)array withNSArray:(id)sArray prependNumber:(id)number appendNumber:(id)appendNumber
{
  v10 = [sArray count];
  v11 = v10;
  if (number)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v10;
  }

  if (appendNumber)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
  v15 = v14;
  if (v14)
  {
    v16 = v11;
    if (v11)
    {
      v17 = 0;
      v18 = &v14[number != 0];
      do
      {
        v18[v17] = [objc_msgSend(sArray objectAtIndex:{v17), "unsignedIntegerValue"}];
        ++v17;
      }

      while (v16 != v17);
    }

    if (number)
    {
      *v15 = [number unsignedIntegerValue];
    }

    if (appendNumber)
    {
      v15[v12++] = [appendNumber unsignedIntegerValue];
    }
  }

  else
  {
    v12 = 0;
  }

  *array = v15;
  return v12;
}

- (unsigned)newSliceRectsArray:(PSDRect *)array withSliceRects:(id)rects
{
  v6 = [rects count];
  if (v6)
  {
    v7 = operator new[]();
    bzero(v7, 16 * v6);
    v8 = 0;
    v9 = (v7 + 8);
    do
    {
      CGRectMakeWithDictionaryRepresentation([rects objectAtIndex:v8], &v11);
      *(v9 - 1) = CGRectGetMinX(v11);
      v9[1] = CGRectGetMaxX(v11);
      *(v9 - 2) = CGRectGetMinY(v11);
      *v9 = CGRectGetMaxY(v11);
      v9 += 4;
      ++v8;
    }

    while (v6 != v8);
  }

  else
  {
    v7 = 0;
  }

  *array = v7;
  return v6;
}

- (unsigned)newSliceRectsArray:(PSDRect *)array withXCutPositions:(id)positions yCutPositions:(id)cutPositions
{
  v30 = 0;
  v8 = [(CUIMutablePSDImageRef *)self newUInt32CArray:&v30 withNSArray:positions prependNumber:[NSNumber appendNumber:"numberWithInteger:" numberWithInteger:?], [NSNumber numberWithInteger:*([(CUIPSDImageRef *)self psd]+ 37)]];
  if (v30)
  {
    v9 = v8;
    v29 = 0;
    v10 = [(CUIMutablePSDImageRef *)self newUInt32CArray:&v29 withNSArray:cutPositions prependNumber:[NSNumber appendNumber:"numberWithInteger:" numberWithInteger:?], [NSNumber numberWithInteger:*([(CUIPSDImageRef *)self psd]+ 37)]];
    if (v29)
    {
      v11 = v10;
      v12 = v10 - 1;
      v13 = v12 * (v9 - 1);
      if (v13 <= 0)
      {
        v14 = 0;
        v15 = v30;
      }

      else
      {
        v14 = operator new[]();
        bzero(v14, 16 * v12 * (v9 - 1));
        v15 = v30;
        if ((v11 - 2) >= 0)
        {
          v16 = 0;
          v17 = 0;
          v18 = v29;
          do
          {
            if (((v9 - 2) & 0x80000000) == 0)
            {
              v19 = (v18 + 4 * v16);
              v20 = *v15;
              v21 = *v19;
              v22 = v19[1];
              v23 = v15 + 1;
              v24 = v9 - 1;
              do
              {
                v25 = (v14 + 16 * v17);
                v25[1] = v20;
                v26 = *v23++;
                v20 = v26;
                *v25 = v21;
                v25[2] = v22;
                v25[3] = v26;
                ++v17;
                --v24;
              }

              while (v24);
            }

            ++v16;
          }

          while (v16 != v12);
        }
      }

      free(v15);
      v27 = &v29;
    }

    else
    {
      v14 = 0;
      v13 = 0;
      v27 = &v30;
    }

    free(*v27);
    *array = v14;
  }

  else
  {
    v13 = 0;
    *array = 0;
  }

  return v13;
}

- (void)addOrUpdateSlicesWithSliceRects:(id)rects
{
  v6 = 0;
  v4 = [(CUIMutablePSDImageRef *)self newSliceRectsArray:&v6 withSliceRects:rects];
  v5 = [(CUIPSDImageRef *)self psd];
  CPSDFile::AddOrUpdateSlices(v5, v6, v4);
  if (v6)
  {
    MEMORY[0x193AC64A0](v6, 0x1000C80451B5BE8);
  }
}

- (void)addOrUpdateSlicesWithXCutPositions:(id)positions yCutPositions:(id)cutPositions
{
  v7 = 0;
  v5 = [(CUIMutablePSDImageRef *)self newSliceRectsArray:&v7 withXCutPositions:positions yCutPositions:cutPositions];
  v6 = [(CUIPSDImageRef *)self psd];
  CPSDFile::AddOrUpdateSlices(v6, v7, v5);
  if (v7)
  {
    MEMORY[0x193AC64A0](v7, 0x1000C80451B5BE8);
  }
}

- (void)updateSliceName:(id)name atIndex:(unsigned int)index
{
  v8 = 0;
  v6 = NSStringToUTF16LEBytes(name, &v8);
  v7 = [(CUIPSDImageRef *)self psd];
  CPSDFile::UpdateSliceNameAtIndex(v7, v6, v8, index);
}

- (void)setFileURL:(id)l
{
  if (([l isFileURL] & 1) == 0)
  {
    objc_exception_throw([NSException exceptionWithName:@"Bad URL" reason:@"CUIMutablePSDImageRef setFileURL called with non-file URL" userInfo:0]);
  }

  path = [l path];

  [(CUIPSDImageRef *)self setPath:path];
}

- (BOOL)saveWithCompletionHandler:(id)handler
{
  File = CreateFile([+[NSFileManager fileSystemRepresentationWithPath:"fileSystemRepresentationWithPath:"];
  v6 = [(CUIPSDImageRef *)self psd];
  (*(*v6 + 56))(v6, File);
  CloseHandle(File);
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }

  return 1;
}

- (BOOL)saveToURL:(id)l completionHandler:(id)handler
{
  [(CUIMutablePSDImageRef *)self setFileURL:l];

  return [(CUIMutablePSDImageRef *)self saveWithCompletionHandler:handler];
}

- (uint64_t)saveWithCompletionHandler:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSError **a4)
{
  v7 = *(__cxa_get_exception_ptr(a1) + 1);
  v10 = &unk_1F00D3C88;
  v11 = v7;
  __cxa_begin_catch(a1);
  CStdException::~CStdException(&v10);
  __cxa_end_catch();
  if (!a3)
  {
    return 1;
  }

  v8 = [NSError errorWithDomain:@"CUIMutablePSDImageRef" code:0 userInfo:0, v10, v11];
  result = 0;
  *a4 = v8;
  return result;
}

@end