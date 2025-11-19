@interface EDColorAnalyzer
- (BOOL)kmeansShouldStopWithPreviousColors:(id)a3 newColors:(id)a4 iterations:(int64_t)a5;
- (EDColorAnalyzer)init;
- (id)colorAtCenterOfHDRSurface:(__IOSurface *)a3 SDRSurface:(__IOSurface *)a4 offset:(CGPoint)a5;
- (id)colorAtCenterOfSurface:(__IOSurface *)a3 offset:(CGPoint)a4;
- (id)colorsInSurface:(__IOSurface *)a3 offset:(CGPoint)a4 clipToCircle:(BOOL)a5 clipedToRect:(CGRect)a6;
- (id)colorsSuggestionsForSurface:(__IOSurface *)a3 maxSuggestions:(int64_t)a4 clipToCircle:(BOOL)a5 clipedToRect:(CGRect)a6;
- (id)getRandomColors:(int64_t)a3 from:(id)a4;
- (id)kmeansColorsForColors:(id)a3 clusters:(int64_t)a4;
- (id)removeSimilarColors:(id)a3 minDistance:(double)a4;
@end

@implementation EDColorAnalyzer

- (EDColorAnalyzer)init
{
  v6.receiver = self;
  v6.super_class = EDColorAnalyzer;
  v2 = [(EDColorAnalyzer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)colorsSuggestionsForSurface:(__IOSurface *)a3 maxSuggestions:(int64_t)a4 clipToCircle:(BOOL)a5 clipedToRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5;
  IOSurfaceLock(a3, 1u, 0);
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [(EDColorAnalyzer *)self colorAtCenterOfSurface:a3 offset:-1.0, -1.0];
  [v14 addObject:v15];

  v16 = [(EDColorAnalyzer *)self colorsInSurface:a3 offset:v10 clipToCircle:-1.0 clipedToRect:-1.0, x, y, width, height];
  v17 = [(EDColorAnalyzer *)self kmeansForColors:v16 clusters:a4 - 1];
  [v14 addObjectsFromArray:v17];

  v18 = [(EDColorAnalyzer *)self removeSimilarColors:v14 minDistance:0.1];
  v19 = [v18 mutableCopy];

  IOSurfaceUnlock(a3, 1u, 0);

  return v19;
}

- (id)removeSimilarColors:(id)a3 minDistance:(double)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v55;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x277CCAE60] valueWithColor:ColorMakeWithColor(*(*(&v54 + 1) + 8 * i))];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v9);
  }

  v45 = v7;

  v13 = [MEMORY[0x277CBEB18] array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v51;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v51 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v50 + 1) + 8 * j);
        [v19 colorValue];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        if (![v13 count])
        {
          goto LABEL_17;
        }

        v26 = 0;
        v27 = 0;
        do
        {
          v28 = [v13 objectAtIndexedSubscript:v27];
          [v28 colorValue];
          v32 = ColorDistanceToColor(v21, v23, v25, v29, v30, v31) < a4;

          v26 |= v32;
          ++v27;
        }

        while (v27 < [v13 count]);
        if ((v26 & 1) == 0)
        {
LABEL_17:
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v16);
  }

  v33 = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v34 = v13;
  v35 = [v34 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v47;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [*(*(&v46 + 1) + 8 * k) colorValue];
        v42 = ColorUIColor(v39, v40, v41);
        [v33 addObject:v42];
      }

      v36 = [v34 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v36);
  }

  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v33];

  return v43;
}

- (id)kmeansColorsForColors:(id)a3 clusters:(int64_t)a4
{
  v144 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = 0.0;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v133 objects:v143 count:16];
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  if (v8)
  {
    v12 = v8;
    v13 = *v134;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v134 != v13)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v133 + 1) + 8 * i) colorValue];
        v11 = ColorCombineColors(v11, v10, v9, v15);
        v10 = v16;
        v9 = v17;
      }

      v12 = [v6 countByEnumeratingWithState:&v133 objects:v143 count:16];
    }

    while (v12);
  }

  v18 = ColorMake(a4, a4, a4);
  v19 = [MEMORY[0x277CCAE60] valueWithColor:{ColorCombineColors(v11, v10, v9, v18)}];
  v20 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v19];

  if (v20)
  {
    v21 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v19];
  }

  else
  {
    v101 = v19;
    v22 = [(EDColorAnalyzer *)self getRandomColors:a4 from:v6];
    v23 = [v22 mutableCopy];

    v24 = [MEMORY[0x277CBEB18] array];
    if ([(EDColorAnalyzer *)self kmeansShouldStopWithPreviousColors:v24 newColors:v23 iterations:0])
    {
      v25 = v24;
    }

    else
    {
      v26 = 0;
      v102 = v6;
      v105 = self;
      do
      {
        v103 = v26;
        v104 = [v23 mutableCopy];

        v27 = objc_opt_new();
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v28 = v23;
        v29 = [v28 countByEnumeratingWithState:&v129 objects:v142 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v130;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v130 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v129 + 1) + 8 * j);
              v34 = [MEMORY[0x277CBEB18] array];
              [v27 setObject:v34 forKeyedSubscript:v33];
            }

            v30 = [v28 countByEnumeratingWithState:&v129 objects:v142 count:16];
          }

          while (v30);
        }

        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        obj = v6;
        v35 = [obj countByEnumeratingWithState:&v125 objects:v141 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v126;
          do
          {
            for (k = 0; k != v36; ++k)
            {
              if (*v126 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v39 = *(*(&v125 + 1) + 8 * k);
              [v39 colorValue];
              v41 = v40;
              v43 = v42;
              v45 = v44;
              v121 = 0u;
              v122 = 0u;
              v123 = 0u;
              v124 = 0u;
              v46 = v28;
              v47 = [v46 countByEnumeratingWithState:&v121 objects:v140 count:16];
              v107 = 0.0;
              v108 = 0.0;
              if (v47)
              {
                v48 = v47;
                v49 = *v122;
                v50 = 1.79769313e308;
                v107 = 0.0;
                v108 = 0.0;
                v7 = 0.0;
                do
                {
                  for (m = 0; m != v48; ++m)
                  {
                    if (*v122 != v49)
                    {
                      objc_enumerationMutation(v46);
                    }

                    [*(*(&v121 + 1) + 8 * m) colorValue];
                    v53 = v52;
                    v55 = v54;
                    v57 = v56;
                    v58 = ColorDistanceToColor(v52, v54, v56, v41, v43, v45);
                    if (v58 < v50)
                    {
                      v107 = v55;
                      v108 = v57;
                      v7 = v53;
                      v50 = v58;
                    }
                  }

                  v48 = [v46 countByEnumeratingWithState:&v121 objects:v140 count:16];
                }

                while (v48);
              }

              v59 = [MEMORY[0x277CCAE60] valueWithColor:{v7, v107, v108}];
              v60 = [v27 objectForKeyedSubscript:v59];
              [v60 addObject:v39];

              v7 = 0.0;
            }

            v36 = [obj countByEnumeratingWithState:&v125 objects:v141 count:16];
          }

          while (v36);
        }

        [v28 removeAllObjects];
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v61 = [v27 allValues];
        v62 = [v61 countByEnumeratingWithState:&v117 objects:v139 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v118;
          do
          {
            for (n = 0; n != v63; ++n)
            {
              if (*v118 != v64)
              {
                objc_enumerationMutation(v61);
              }

              v66 = *(*(&v117 + 1) + 8 * n);
              v113 = 0u;
              v114 = 0u;
              v115 = 0u;
              v116 = 0u;
              v67 = v66;
              v68 = [v67 countByEnumeratingWithState:&v113 objects:v138 count:16];
              v69 = 0.0;
              v70 = 0.0;
              v71 = 0.0;
              if (v68)
              {
                v72 = v68;
                v73 = *v114;
                v69 = 0.0;
                v70 = 0.0;
                v71 = 0.0;
                do
                {
                  for (ii = 0; ii != v72; ++ii)
                  {
                    if (*v114 != v73)
                    {
                      objc_enumerationMutation(v67);
                    }

                    [*(*(&v113 + 1) + 8 * ii) colorValue];
                    v69 = ColorCombineColors(v69, v70, v71, v75);
                    v70 = v76;
                    v71 = v77;
                  }

                  v72 = [v67 countByEnumeratingWithState:&v113 objects:v138 count:16];
                }

                while (v72);
              }

              if ([v67 count])
              {
                v78 = ColorDivide(v69, v70, v71, [v67 count]);
                v80 = v79;
                v82 = v81;
              }

              else
              {
                v83 = [(EDColorAnalyzer *)v105 getRandomColors:1 from:obj];
                v84 = [v83 firstObject];
                [v84 colorValue];
                v78 = v85;
                v80 = v86;
                v82 = v87;
              }

              v88 = [MEMORY[0x277CCAE60] valueWithColor:{v78, v80, v82}];
              [v28 addObject:v88];
            }

            v63 = [v61 countByEnumeratingWithState:&v117 objects:v139 count:16];
          }

          while (v63);
        }

        v26 = v103 + 1;

        v89 = [v28 sortedArrayUsingComparator:&__block_literal_global_0];
        v23 = [v89 mutableCopy];

        v25 = v104;
        self = v105;
        v24 = v104;
        v6 = v102;
      }

      while (![(EDColorAnalyzer *)v105 kmeansShouldStopWithPreviousColors:v104 newColors:v23 iterations:v103 + 1]);
    }

    v90 = [MEMORY[0x277CBEB18] array];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v91 = v23;
    v92 = [v91 countByEnumeratingWithState:&v109 objects:v137 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v110;
      do
      {
        for (jj = 0; jj != v93; ++jj)
        {
          if (*v110 != v94)
          {
            objc_enumerationMutation(v91);
          }

          [*(*(&v109 + 1) + 8 * jj) colorValue];
          v99 = ColorUIColor(v96, v97, v98);
          [v90 addObject:v99];
        }

        v93 = [v91 countByEnumeratingWithState:&v109 objects:v137 count:16];
      }

      while (v93);
    }

    v19 = v101;
    [(NSMutableDictionary *)self->_cache setObject:v90 forKeyedSubscript:v101];
    v21 = [MEMORY[0x277CBEA60] arrayWithArray:v90];
  }

  return v21;
}

BOOL __50__EDColorAnalyzer_kmeansColorsForColors_clusters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 colorValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v4 colorValue];
  v12 = v11;
  v14 = v13;
  v16 = v15;

  return v8 * 0.7152 + v6 * 0.2126 + v10 * 0.0722 > v14 * 0.7152 + v12 * 0.2126 + v16 * 0.0722;
}

- (BOOL)kmeansShouldStopWithPreviousColors:(id)a3 newColors:(id)a4 iterations:(int64_t)a5
{
  if (a5 <= 14)
  {
    return [a3 isEqualToArray:a4];
  }

  else
  {
    return 1;
  }
}

- (id)colorsInSurface:(__IOSurface *)a3 offset:(CGPoint)a4 clipToCircle:(BOOL)a5 clipedToRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5;
  v11 = a4.y;
  v12 = a4.x;
  BaseAddress = IOSurfaceGetBaseAddress(a3);
  PixelFormat = IOSurfaceGetPixelFormat(a3);
  v16 = IOSurfaceGetWidth(a3);
  v17 = IOSurfaceGetHeight(a3);
  BytesPerRow = IOSurfaceGetBytesPerRow(a3);
  v18 = [MEMORY[0x277CBEB18] array];
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  MinY = CGRectGetMinY(v55);
  v20 = MinY;
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  v49 = v11;
  if (v11 + CGRectGetMaxY(v56) <= v20)
  {
LABEL_2:
    v21 = [v18 copy];
    goto LABEL_19;
  }

  v48 = ((v17 >> 1) - 1);
  v52 = (v16 >> 1);
  v53 = ((v16 >> 1) - 1);
  v22 = MinY;
  v23 = &BaseAddress[BytesPerRow * MinY];
  v51 = v23 + 2;
  while (1)
  {
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    MinX = CGRectGetMinX(v57);
    v25 = MinX;
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    if (v12 + CGRectGetMaxX(v58) > v25)
    {
      break;
    }

LABEL_16:
    v20 = ++v22;
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = height;
    v23 += BytesPerRow;
    v51 += BytesPerRow;
    if (v49 + CGRectGetMaxY(v60) <= v22)
    {
      goto LABEL_2;
    }
  }

  v28 = MinX;
  v29 = v48 - v20;
  v30 = v29 * v29;
  v31 = &v23[4 * v28];
  v32 = v28 + 1;
  v33 = &v51[4 * v28];
  v34 = &v23[8 * v28];
  while (1)
  {
    if (v10)
    {
      v26 = *&v52;
      v29 = floor(sqrt(v30 + (v53 - v25) * (v53 - v25)));
      if (v29 > v52)
      {
        goto LABEL_15;
      }
    }

    if (PixelFormat == 1111970369)
    {
      LOBYTE(v29) = *v33;
      _D0 = *&v29 / 255.0;
      LOBYTE(v26) = *(v33 - 1);
      _D1 = v26 / 255.0;
      LOBYTE(v27) = *v31;
      v35 = MEMORY[0x277CCAE60];
      _D2 = v27 / 255.0;
      goto LABEL_14;
    }

    if (PixelFormat == 1380411457)
    {
      _H0 = *v34;
      _H1 = *(v34 + 1);
      _H2 = *(v34 + 2);
      v35 = MEMORY[0x277CCAE60];
      __asm
      {
        FCVT            D0, H0
        FCVT            D1, H1
        FCVT            D2, H2
      }

      goto LABEL_14;
    }

    if (PixelFormat != 1999843442)
    {
      break;
    }

    v35 = MEMORY[0x277CCAE60];
    _D0 = ((((*v31 >> 20) & 0x3FF) - 384) / 510.0);
    _D1 = ((((*v31 >> 10) & 0x3FF) - 384) / 510.0);
    _D2 = (((*v31 & 0x3FF) - 384) / 510.0);
LABEL_14:
    v46 = [v35 valueWithColor:{ColorMake(_D0, _D1, _D2)}];
    [v18 addObject:v46];

LABEL_15:
    v25 = v32;
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    v29 = v12 + CGRectGetMaxX(v59);
    ++v32;
    v31 += 4;
    v33 += 4;
    v34 += 8;
    if (v29 <= v25)
    {
      goto LABEL_16;
    }
  }

  v21 = 0;
LABEL_19:

  return v21;
}

- (id)colorAtCenterOfHDRSurface:(__IOSurface *)a3 SDRSurface:(__IOSurface *)a4 offset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v29 = *MEMORY[0x277D85DE8];
  v9 = [(EDColorAnalyzer *)self colorAtCenterOfSurface:a3 offset:?];
  v10 = [(EDColorAnalyzer *)self colorAtCenterOfSurface:a4 offset:x, y];
  v11 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF428]);
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0x24C214F60](v11, 0);
    if (v13)
    {
      v14 = v13;
      memset(v28, 0, sizeof(v28));
      memset(v27, 0, sizeof(v27));
      CGColorGetColorSpace([v9 CGColor]);
      CGColorGetComponents([v9 CGColor]);
      if (CGColorTransformConvertColorComponents() && (CGColorGetColorSpace([v10 CGColor]), CGColorGetComponents(objc_msgSend(v10, "CGColor")), CGColorTransformConvertColorComponents()))
      {
        v15 = 0;
        v16 = 0;
        v17 = 0.0;
        do
        {
          v18 = *(v27 + v15);
          if (v18 > 0.00001)
          {
            if (v18 > 1.0)
            {
              v18 = 1.0;
            }

            v17 = v17 + *(v28 + v15) / v18;
            ++v16;
          }

          v15 += 8;
        }

        while (v15 != 24);
        v25 = 0.0;
        v26 = 0.0;
        v24 = 0.0;
        v19 = 0;
        if ([v10 getRed:&v26 green:&v25 blue:&v24 alpha:{0, 0.00001, 1.0}])
        {
          v21 = v25;
          v20 = v26;
          v22 = 1.0;
          if (v26 > 1.0)
          {
            v20 = 1.0;
          }

          if (v25 > 1.0)
          {
            v21 = 1.0;
          }

          if (v24 <= 1.0)
          {
            v22 = v24;
          }

          if (v16)
          {
            [MEMORY[0x277D75348] colorWithRed:v20 green:v21 blue:v22 alpha:1.0 linearExposure:v17 / v16];
          }

          else
          {
            [MEMORY[0x277D75348] colorWithRed:v20 green:v21 blue:v22 alpha:1.0];
          }
          v19 = ;
        }
      }

      else
      {
        v19 = 0;
      }

      CFRelease(v14);
    }

    else
    {
      v19 = 0;
    }

    CFRelease(v12);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)colorAtCenterOfSurface:(__IOSurface *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v41 = *MEMORY[0x277D85DE8];
  BaseAddress = IOSurfaceGetBaseAddress(a3);
  PixelFormat = IOSurfaceGetPixelFormat(a3);
  v9 = (x + (IOSurfaceGetWidth(a3) >> 1));
  v10 = (y + (IOSurfaceGetHeight(a3) >> 1));
  BytesPerRow = IOSurfaceGetBytesPerRow(a3);
  v12 = CGColorSpaceCopyFromIOSurface();
  v16 = v12;
  v17 = &BaseAddress[BytesPerRow * v10];
  switch(PixelFormat)
  {
    case 0x42475241u:
      v33 = &v17[4 * v9];
      LOBYTE(v13) = v33[2];
      v19 = v13 / 255.0;
      LOBYTE(v14) = v33[1];
      v20 = v14 / 255.0;
      LOBYTE(v15) = *v33;
      v21 = v15 / 255.0;
LABEL_12:
      v34 = ColorMake(v19, v20, v21);
      v32 = ColorUIColorWithColorSpace(v16, v34, v35, v36);
      if (!v16)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 0x52476841u:
      v22 = &v17[8 * v9];
      LODWORD(v13) = *v22;
      v38 = vcvtq_f64_f32(*&vcvtq_f32_f16(v13));
      _H0 = *(v22 + 2);
      __asm { FCVT            D0, H0 }

      v39 = _D0;
      v40 = 0x3FF0000000000000;
      if (v12)
      {
        v29 = CGColorCreate(v12, v38.f64);
        if (v29)
        {
          v30 = v29;
          v31 = objc_alloc(MEMORY[0x277D75348]);
          v32 = [v31 initWithCGColor:{v30, *&v38, v39, v40}];
          CFRelease(v30);
          if (!v16)
          {
            goto LABEL_14;
          }

LABEL_13:
          CFRelease(v16);
          goto LABEL_14;
        }
      }

      break;
    case 0x77333072u:
      v18 = *&v17[4 * v9];
      v19 = ((((v18 >> 20) & 0x3FF) - 384) / 510.0);
      v20 = ((((v18 >> 10) & 0x3FF) - 384) / 510.0);
      v21 = (((v18 & 0x3FF) - 384) / 510.0);
      goto LABEL_12;
  }

  v32 = 0;
  if (v16)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v32;
}

- (id)getRandomColors:(int64_t)a3 from:(id)a4
{
  v5 = a4;
  if ([v5 count] >= a3)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v8 = [MEMORY[0x277CBEB18] array];
    if ([v5 count])
    {
      v9 = 0;
      do
      {
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
        [v8 addObject:v10];

        ++v9;
      }

      while (v9 < [v5 count]);
    }

    while ([v8 count] && objc_msgSend(v7, "count") < a3)
    {
      v11 = arc4random();
      v12 = v11 % [v8 count];
      v13 = [v8 objectAtIndexedSubscript:v12];
      v14 = [v13 integerValue];

      [v8 removeObjectAtIndex:v12];
      v15 = [v5 objectAtIndexedSubscript:v14];
      [v7 addObject:v15];
    }

    v6 = [v7 allObjects];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

@end