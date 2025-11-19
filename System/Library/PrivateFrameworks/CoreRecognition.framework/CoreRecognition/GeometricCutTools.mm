@interface GeometricCutTools
+ (BOOL)derotateContentsOf:(id)a3 inImage:(vImage_Buffer *)a4 andOutputTo:(vImage_Buffer *)a5 withPadding:(CGPoint)a6 networkInputSize:(CGSize)a7;
+ (BOOL)isPointArrayARectangle:(uint64_t)a1;
+ (BOOL)lineThroughPoint:(double)a3 andPoint:(double)a4 andRectangle:(double)a5 intersectAtPoint:(double)a6 andPoint:(double)a7;
+ (id)boxInNormalizedSpace:(id)a3 toImageSpaceWithSize:(CGSize)a4 plusPadding:(CGPoint)a5 destSize:(CGSize *)a6 networkInputSize:(CGSize)a7;
+ (id)cleanTextDetectorOutput:(id)a3;
+ (id)findCorrectedBoundingBoxOfTextFeature:(id)a3 inImageWithSize:(CGSize)a4;
+ (id)geometricRecognitionOf:(id)a3 inDerotatedRegion:(vImage_Buffer *)a4 withPadding:(CGPoint)a5 fromCorrectedBoundingBox:(id)a6 inImageWithSize:(CGSize)a7 withCodeMap:(const int *)a8 activations:()vector<std:(std:(BOOL)a10 :(CGSize)a11 allocator<std:(unsigned __int16)a12 :vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:networkInputSize:garbageSymbol:;
+ (id)geometricRecognitionOf:(id)a3 inDerotatedRegion:(vImage_Buffer *)a4 withPadding:(CGPoint)a5 fromCorrectedBoundingBox:(id)a6 inImageWithSize:(CGSize)a7 withCodeMap:(const int *)a8 activations:()vector<std:(std:(BOOL)a10 :(CGSize)a11 allocator<std::vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:networkInputSize:;
+ (id)geometricRecognitionOf:(id)a3 inDerotatedRegion:(vImage_Buffer *)a4 withPadding:(CGPoint)a5 fromCorrectedBoundingBox:(id)a6 inImageWithSize:(CGSize)a7 withNetwork:(void *)a8 activations:()vector<std:(std:(BOOL)a10 :(unsigned __int16)a11 allocator<std::vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:garbageSymbol:;
+ (id)geometricRecognitionOf:(id)a3 inDerotatedRegion:(vImage_Buffer *)a4 withPadding:(CGPoint)a5 fromCorrectedBoundingBox:(id)a6 inImageWithSize:(CGSize)a7 withNetwork:(void *)a8 activations:()vector<std:(std:(BOOL)a10 :allocator<std::vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:;
+ (id)stringByInjectingSpaces:(id)a3 textFeatures:(id)a4 improved:(BOOL)a5;
@end

@implementation GeometricCutTools

+ (id)cleanTextDetectorOutput:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v33 = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v29;
  v32 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v32)
  {
    v31 = *v45;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v44 + 1) + 8 * i);
        v35 = [MEMORY[0x277CBEB18] array];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v4 = [v3 subFeatures];
        v5 = [v4 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v5)
        {
          v6 = *v41;
          do
          {
            for (j = 0; j != v5; ++j)
            {
              if (*v41 != v6)
              {
                objc_enumerationMutation(v4);
              }

              v8 = *(*(&v40 + 1) + 8 * j);
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v9 = [v3 subFeatures];
              v10 = [v9 countByEnumeratingWithState:&v36 objects:v48 count:16];
              if (v10)
              {
                v11 = *v37;
                while (2)
                {
                  for (k = 0; k != v10; ++k)
                  {
                    if (*v37 != v11)
                    {
                      objc_enumerationMutation(v9);
                    }

                    v13 = *(*(&v36 + 1) + 8 * k);
                    if (v13 != v8)
                    {
                      [v13 bounds];
                      v15 = v14;
                      v17 = v16;
                      v19 = v18;
                      v21 = v20;
                      [v8 bounds];
                      v54.origin.x = v22;
                      v54.origin.y = v23;
                      v54.size.width = v24;
                      v54.size.height = v25;
                      v53.origin.x = v15;
                      v53.origin.y = v17;
                      v53.size.width = v19;
                      v53.size.height = v21;
                      if (CGRectContainsRect(v53, v54))
                      {

                        goto LABEL_22;
                      }
                    }
                  }

                  v10 = [v9 countByEnumeratingWithState:&v36 objects:v48 count:16];
                  if (v10)
                  {
                    continue;
                  }

                  break;
                }
              }

              [v35 addObject:v8];
LABEL_22:
              ;
            }

            v5 = [v4 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v5);
        }

        v26 = objc_alloc_init(MEMORY[0x277D700A8]);
        [v3 bounds];
        [v26 setBounds:?];
        [v3 topRight];
        [v26 setTopRight:?];
        [v3 topLeft];
        [v26 setTopLeft:?];
        [v3 bottomRight];
        [v26 setBottomRight:?];
        [v3 bottomLeft];
        [v26 setBottomLeft:?];
        [v26 setSubFeatures:v35];
        [v33 addObject:v26];
      }

      v32 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v32);
  }

  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v33];

  return v27;
}

+ (id)findCorrectedBoundingBoxOfTextFeature:(id)a3 inImageWithSize:(CGSize)a4
{
  v165 = *MEMORY[0x277D85DE8];
  v115 = a3;
  v4 = [v115 subFeatures];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v116 = objc_alloc_init(MEMORY[0x277D700A8]);
    v130 = [MEMORY[0x277CBEB18] array];
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v7 = [v115 subFeatures];
    v8 = [v7 countByEnumeratingWithState:&v157 objects:v164 count:16];
    if (v8)
    {
      v9 = *v158;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v158 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v157 + 1) + 8 * i);
          v12 = objc_alloc_init(MEMORY[0x277D700A8]);
          [v11 bounds];
          v14 = v13;
          [v11 bounds];
          v16 = v15;
          [v11 bounds];
          v18 = v17;
          [v11 bounds];
          [v12 setBounds:{a4.width * v14, a4.height * v16, a4.width * v18, a4.height * v19}];
          [v130 addObject:v12];
        }

        v8 = [v7 countByEnumeratingWithState:&v157 objects:v164 count:16];
      }

      while (v8);
    }

    [v116 setSubFeatures:v130];
    v20 = [v116 subFeatures];
    std::vector<double>::vector[abi:ne200100](&v155, [v20 count]);

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v21 = [v116 subFeatures];
    v22 = [v21 countByEnumeratingWithState:&v151 objects:v163 count:16];
    if (v22)
    {
      v23 = 0;
      v24 = *v152;
      do
      {
        v25 = 0;
        v26 = v23;
        do
        {
          if (*v152 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v151 + 1) + 8 * v25) bounds];
          v23 = v26 + 1;
          *(v155 + v26) = v27;
          ++v25;
          ++v26;
        }

        while (v22 != v25);
        v22 = [v21 countByEnumeratingWithState:&v151 objects:v163 count:16];
      }

      while (v22);
    }

    std::__sort<std::__less<double,double> &,double *>();
    v28 = *(v155 + (((v156 - v155) >> 1) & 0xFFFFFFFFFFFFFFF8));
    v148 = 0;
    v149 = 0;
    v150 = 0;
    __p = 0;
    v146 = 0;
    v147 = 0;
    v144[0] = 0;
    v144[1] = 0;
    v143 = v144;
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v29 = [v116 subFeatures];
    v30 = [v29 countByEnumeratingWithState:&v139 objects:v162 count:16];
    if (v30)
    {
      v31 = *v140;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v140 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v139 + 1) + 8 * j);
          [v33 bounds];
          if (vabdd_f64(v34, v28) < v28 * 0.1)
          {
            v35 = v33;
            v36 = v35;
            v37 = v144[0];
            if (!v144[0])
            {
LABEL_29:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v38 = v37;
                v39 = v37[4];
                if (v39 <= v35)
                {
                  break;
                }

                v37 = *v38;
                if (!*v38)
                {
                  goto LABEL_29;
                }
              }

              if (v39 >= v35)
              {
                break;
              }

              v37 = v38[1];
              if (!v37)
              {
                goto LABEL_29;
              }
            }

            [v36 bounds];
            v135 = v40;
            v136 = v41;
            v137 = v42;
            v138 = v43;
            std::vector<double>::push_back[abi:ne200100](&v148, &v135);
            [v36 bounds];
            v135 = v44;
            v136 = v45;
            v137 = v46;
            v138 = v47;
            std::vector<double>::push_back[abi:ne200100](&__p, &v136);
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v139 objects:v162 count:16];
      }

      while (v30);
    }

    v6 = 0;
    if (v149 != v148)
    {
      v48 = (v149 - v148) >> 3;
      if (v48 >= 2)
      {
        v49 = 0.0;
        v50 = v148;
        v51 = __p;
        v52 = (v149 - v148) >> 3;
        v53 = 0.0;
        do
        {
          v54 = *v50++;
          v55 = v54 - *v148;
          v56 = *v51++;
          v49 = v49 + v55 * (v56 - *__p);
          v53 = v53 + v55 * v55;
          --v52;
        }

        while (v52);
        v57 = v49 / v53;
        v121 = *(__p + (((v146 - __p) >> 1) & 0xFFFFFFFFFFFFFFF8));
        v122 = *(v148 + ((4 * v48) & 0xFFFFFFFFFFFFFFF8));
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        v58 = [v116 subFeatures];
        v59 = [v58 countByEnumeratingWithState:&v131 objects:v161 count:16];
        v60 = sqrt(v57 * v57 + 1.0);
        v123 = v57 / v60;
        v120 = 1.0 / v60;
        v117 = -(1.0 / v60);
        if (v59)
        {
          v61 = *v132;
          v118 = INFINITY;
          v119 = -INFINITY;
          v127 = -INFINITY;
          v128 = INFINITY;
          do
          {
            for (k = 0; k != v59; ++k)
            {
              if (*v132 != v61)
              {
                objc_enumerationMutation(v58);
              }

              v63 = *(*(&v131 + 1) + 8 * k);
              [v63 bounds];
              v126 = v64;
              [v63 bounds];
              v125 = v65;
              [v63 bounds];
              v124 = v66;
              [v63 bounds];
              v68 = v67;
              [v63 bounds];
              v70 = v69;
              [v63 bounds];
              v72 = v71;
              [v63 bounds];
              v74 = v73;
              [v63 bounds];
              v76 = v75;
              [v63 bounds];
              v78 = v77;
              [v63 bounds];
              v80 = v79;
              [v63 bounds];
              v82 = v81;
              [v63 bounds];
              v84 = v124 + v68 - v122;
              v85 = v72 + v74 - v122;
              v86 = v76 + v78 - v121;
              v87 = v82 + v83 - v121;
              v88 = v123 * (v125 - v121) + (v126 - v122) * v120;
              v89 = v123 * (v70 - v121) + v84 * v120;
              v90 = v123 * v86 + v85 * v120;
              v91 = v123 * v87 + (v80 - v122) * v120;
              v92 = v128;
              if (v88 < v128)
              {
                v92 = v123 * (v125 - v121) + (v126 - v122) * v120;
              }

              if (v89 < v92)
              {
                v92 = v123 * (v70 - v121) + v84 * v120;
              }

              if (v90 < v92)
              {
                v92 = v123 * v86 + v85 * v120;
              }

              if (v91 >= v92)
              {
                v93 = v92;
              }

              else
              {
                v93 = v123 * v87 + (v80 - v122) * v120;
              }

              if (v88 <= v127)
              {
                v88 = v127;
              }

              if (v89 > v88)
              {
                v88 = v123 * (v70 - v121) + v84 * v120;
              }

              if (v90 > v88)
              {
                v88 = v123 * v86 + v85 * v120;
              }

              if (v91 > v88)
              {
                v88 = v123 * v87 + (v80 - v122) * v120;
              }

              v127 = v88;
              v128 = v93;
              v94 = v144[0];
              if (v144[0])
              {
                v95 = v144;
                do
                {
                  v96 = v94[4];
                  v97 = v96 >= v63;
                  v98 = v96 < v63;
                  if (v97)
                  {
                    v95 = v94;
                  }

                  v94 = v94[v98];
                }

                while (v94);
                if (v95 != v144 && v63 >= v95[4])
                {
                  v99 = (v125 - v121) * v117 + (v126 - v122) * v123;
                  v100 = (v70 - v121) * v117 + v84 * v123;
                  v101 = v86 * v117 + v85 * v123;
                  v102 = v87 * v117 + (v80 - v122) * v123;
                  v103 = v118;
                  if (v99 < v118)
                  {
                    v103 = (v125 - v121) * v117 + (v126 - v122) * v123;
                  }

                  if (v100 < v103)
                  {
                    v103 = v100;
                  }

                  if (v101 < v103)
                  {
                    v103 = v101;
                  }

                  if (v102 >= v103)
                  {
                    v104 = v103;
                  }

                  else
                  {
                    v104 = v87 * v117 + (v80 - v122) * v123;
                  }

                  if (v99 <= v119)
                  {
                    v99 = v119;
                  }

                  if (v100 > v99)
                  {
                    v99 = v100;
                  }

                  if (v101 > v99)
                  {
                    v99 = v101;
                  }

                  if (v102 > v99)
                  {
                    v99 = v87 * v117 + (v80 - v122) * v123;
                  }

                  v118 = v104;
                  v119 = v99;
                }
              }
            }

            v59 = [v58 countByEnumeratingWithState:&v131 objects:v161 count:16];
          }

          while (v59);
        }

        else
        {
          v118 = INFINITY;
          v119 = -INFINITY;
          v127 = -INFINITY;
          v128 = INFINITY;
        }

        v105 = v122 + v118 * v123;
        v106 = v121 + v118 * v117;
        v167.x = (v105 + v128 * v120) / a4.width;
        v167.y = (v106 + v128 * v123) / a4.height;
        v107 = MEMORY[0x277CBEA60];
        v108 = NSStringFromPoint(v167);
        v168.y = (v106 + v127 * v123) / a4.height;
        v168.x = (v105 + v127 * v120) / a4.width;
        v109 = NSStringFromPoint(v168);
        v110 = v122 + v119 * v123;
        v111 = v121 + v119 * v117;
        v169.x = (v110 + v127 * v120) / a4.width;
        v169.y = (v111 + v127 * v123) / a4.height;
        v112 = NSStringFromPoint(v169);
        v170.x = (v110 + v128 * v120) / a4.width;
        v170.y = (v111 + v128 * v123) / a4.height;
        v113 = NSStringFromPoint(v170);
        v6 = [v107 arrayWithObjects:{v108, v109, v112, v113, 0}];
      }
    }

    std::__tree<std::__value_type<CRTextFeature * {__strong},int>,std::__map_value_compare<CRTextFeature * {__strong},std::__value_type<CRTextFeature * {__strong},int>,std::less<CRTextFeature * {__strong}>,true>,std::allocator<std::__value_type<CRTextFeature * {__strong},int>>>::destroy(v144[0]);
    if (__p)
    {
      v146 = __p;
      operator delete(__p);
    }

    if (v148)
    {
      v149 = v148;
      operator delete(v148);
    }

    if (v155)
    {
      v156 = v155;
      operator delete(v155);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isPointArrayARectangle:(uint64_t)a1
{
  v2 = a2;
  v20 = [v2 count] == 4 && (objc_msgSend(v2, "objectAtIndexedSubscript:", 3), v3 = objc_opt_self();

  return v20;
}

+ (BOOL)lineThroughPoint:(double)a3 andPoint:(double)a4 andRectangle:(double)a5 intersectAtPoint:(double)a6 andPoint:(double)a7
{
  v29[7] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v21 = 0;
  v22 = 0;
  v23 = v29;
  v28 = a5;
  *v29 = a6;
  *&v29[1] = a5 + a7;
  *&v29[2] = a6;
  *&v29[3] = a5 + a7;
  *&v29[4] = a6 + a8;
  *&v29[5] = a5;
  *&v29[6] = a6 + a8;
  v24 = 1;
  while (1)
  {
    v25 = v21 + 1;
    if ([MEMORY[0x277D70080] checkIntersectionForLineThroughPoint:&v27 andPoint:a1 andSegmentStartingAt:a2 andEndingAt:a3 intersectAt:{a4, *(v23 - 1), *v23, *&v29[2 * ((v21 + 1) & 3) - 1], *&v29[2 * ((v21 + 1) & 3)]}])
    {
      break;
    }

LABEL_7:
    v24 = v21 < 3;
    v23 += 2;
    ++v21;
    if (v25 == 4)
    {
      return 0;
    }
  }

  if (!v22)
  {
    if (a10)
    {
      *a10 = v27;
    }

    v22 = 1;
    goto LABEL_7;
  }

  if (a11)
  {
    *a11 = v27;
  }

  return v24;
}

+ (id)boxInNormalizedSpace:(id)a3 toImageSpaceWithSize:(CGSize)a4 plusPadding:(CGPoint)a5 destSize:(CGSize *)a6 networkInputSize:(CGSize)a7
{
  height = a7.height;
  v10 = a3;
  v11 = [v10 objectAtIndexedSubscript:3];
  v12 = NSPointFromString(v11);

  v13 = [v10 objectAtIndexedSubscript:2];
  v14 = NSPointFromString(v13);

  v15 = [v10 objectAtIndexedSubscript:1];
  v16 = NSPointFromString(v15);

  v17 = [v10 objectAtIndexedSubscript:0];
  v18 = NSPointFromString(v17);

  v19 = 0;
  v20 = a4.width * v12.x;
  v21 = a4.height * v12.y;
  v22 = a4.width * v14.x;
  v23 = a4.height * v14.y;
  v24 = sqrt((v21 - v23) * (v21 - v23) + (v20 - v22) * (v20 - v22));
  if (v24 != 0.0)
  {
    v25 = sqrt((v21 - a4.height * v18.y) * (v21 - a4.height * v18.y) + (v20 - a4.width * v18.x) * (v20 - a4.width * v18.x));
    if (v25 != 0.0)
    {
      a6->height = height;
      if (height - a5.y <= 0.0)
      {
        goto LABEL_15;
      }

      v103 = a4.height * v18.y;
      v105 = a4.width * v18.x;
      v26 = v25 / (height - a5.y);
      v27 = a5.y * v26;
      v28 = INFINITY;
      if (a5.x != INFINITY)
      {
        v28 = a5.x * v26;
        a6->width = a5.x + v24 / v26;
      }

      v100 = v26;
      v113 = a4.width * v16.x;
      aPoint = a4.height * v16.y;
      v110 = a4.width * v14.x;
      v29 = atan2(v23 - v21, v22 - v20);
      v30 = v27 * -0.5;
      v31 = __sincos_stret(v29);
      v108 = v27 * -0.5 * v31.__sinval;
      v32 = v27 * 0.5;
      v33 = v32 * v31.__cosval;
      v34 = __sincos_stret(v29 + 3.14159265);
      v35 = v30 * v34.__sinval;
      v36 = v32 * v34.__cosval;
      if (v28 == INFINITY)
      {
        v124.x = v20 + v35;
        v124.y = v21 + v36;
        v47 = MEMORY[0x277CBEA60];
        v48 = NSStringFromPoint(v124);
        v125.y = v23 + v32 * v34.__cosval;
        v125.x = v110 + v35;
        v49 = NSStringFromPoint(v125);
        v126.x = v113 + v108;
        v126.y = aPoint + v33;
        v50 = NSStringFromPoint(v126);
        v127.x = v105 + v108;
        v127.y = v103 + v33;
        v51 = NSStringFromPoint(v127);
        v52 = [v47 arrayWithObjects:{v48, v49, v50, v51, 0}];

        v53 = v52;
        objc_opt_self();
        v54 = [v53 objectAtIndex:0];
        v55 = NSPointFromString(v54);

        v56 = [v53 objectAtIndex:1];
        v57 = NSPointFromString(v56);

        v58 = [v53 objectAtIndex:2];
        v59 = NSPointFromString(v58);

        v60 = [v53 objectAtIndex:3];
        v61 = NSPointFromString(v60);

        v62 = objc_opt_self();
        if ([(GeometricCutTools *)v55.x lineThroughPoint:v57.x andPoint:v57.y andRectangle:1.0 intersectAtPoint:1.0 andPoint:a4.width + -2.0, a4.height + -2.0, v62, &v122, &v121]&& (v63 = objc_opt_self(), [(GeometricCutTools *)v59.x lineThroughPoint:v61.x andPoint:v61.y andRectangle:1.0 intersectAtPoint:1.0 andPoint:a4.width + -2.0, a4.height + -2.0, v63, &v120, &v119]))
        {
          v64 = *&v122;
          v109 = *&v121;
          v111 = *(&v122 + 1);
          v104 = *&v120;
          v107 = *(&v121 + 1);
          v65 = *(&v119 + 1);
          v101 = *&v119;
          v102 = *(&v120 + 1);
          std::vector<double>::vector[abi:ne200100](__p, 4uLL);
          v66 = sqrt((v57.y - v55.y) * (v57.y - v55.y) + (v57.x - v55.x) * (v57.x - v55.x));
          v67 = (v57.x - v55.x) / v66;
          v68 = (v57.y - v55.y) / v66;
          v69 = sqrt((v61.y - v55.y) * (v61.y - v55.y) + (v61.x - v55.x) * (v61.x - v55.x));
          v70 = v69 * ((v61.x - v55.x) / v69) * 0.5;
          v71 = v69 * ((v61.y - v55.y) / v69) * 0.5;
          v72 = __p[0];
          *__p[0] = v68 * (v111 - (v55.y + v71)) + (v64 - (v55.x + v70)) * v67;
          v72[1] = v68 * (v107 - (v55.y + v71)) + (v109 - (v55.x + v70)) * v67;
          v72[2] = v68 * (v102 - (v55.y + v71)) + (v104 - (v55.x + v70)) * v67;
          v72[3] = v68 * (v65 - (v55.y + v71)) + (v101 - (v55.x + v70)) * v67;
          std::__sort<std::__less<double,double> &,double *>();
          v73 = *(__p[0] + 1);
          v74 = *(__p[0] + 2);
          v75 = v55.y + v71 + v73 * v68;
          aPointb = v55.x + v70 + v73 * v67;
          v128.x = aPointb - v70;
          v128.y = v75 - v71;
          v76 = MEMORY[0x277CBEA60];
          v77 = NSStringFromPoint(v128);
          v78 = v55.x + v70 + v74 * v67;
          v79 = v55.y + v71 + v74 * v68;
          v129.y = v79 - v71;
          v129.x = v78 - v70;
          v80 = NSStringFromPoint(v129);
          v130.x = v70 + v78;
          v130.y = v71 + v79;
          v81 = NSStringFromPoint(v130);
          v131.x = v70 + aPointb;
          v131.y = v71 + v75;
          v82 = NSStringFromPoint(v131);
          v83 = [v76 arrayWithObjects:{v77, v80, v81, v82, 0}];

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          v83 = v53;
        }

        v84 = [v83 objectAtIndexedSubscript:0];
        v85 = NSPointFromString(v84);
        x = v85.x;
        y = v85.y;

        v86 = [v83 objectAtIndexedSubscript:1];
        v87 = NSPointFromString(v86);
        v43 = v87.x;
        v44 = v87.y;

        v88 = [v83 objectAtIndexedSubscript:2];
        v89 = NSPointFromString(v88);
        aPointa = v89.y;
        v42 = v89.x;

        v90 = [v83 objectAtIndexedSubscript:3];
        v91 = NSPointFromString(v90);
        v106 = v91.x;
        v41 = v91.y;

        a6->width = sqrt((v87.y - v85.y) * (v87.y - v85.y) + (v87.x - v85.x) * (v87.x - v85.x)) / v100;
      }

      else
      {
        v37 = v28 * 0.5 * v31.__cosval;
        v38 = v28 * 0.5 * v31.__sinval;
        v39 = v28 * 0.5 * v34.__cosval;
        v40 = v28 * 0.5 * v34.__sinval;
        v106 = v105 + v108 + v39;
        v41 = v103 + v33 + v40;
        v42 = v113 + v37 + v108;
        aPointa = aPoint + v38 + v33;
        v43 = v110 + v37 + v35;
        v44 = v23 + v38 + v36;
        x = v20 + v39 + v35;
        y = v21 + v40 + v36;
      }

      if (x >= 0.0)
      {
        v19 = 0;
        if (x < a4.width && y >= 0.0)
        {
          v19 = 0;
          if (y < a4.height && v43 >= 0.0)
          {
            v19 = 0;
            if (v43 < a4.width && v44 >= 0.0)
            {
              v19 = 0;
              if (v44 < a4.height && v42 >= 0.0)
              {
                v19 = 0;
                if (v42 < a4.width && aPointa >= 0.0)
                {
                  v19 = 0;
                  if (aPointa < a4.height && v106 >= 0.0)
                  {
                    v19 = 0;
                    if (v106 < a4.width && v41 >= 0.0 && v41 < a4.height)
                    {
                      v94 = MEMORY[0x277CBEA60];
                      v132.x = x;
                      v132.y = y;
                      v95 = NSStringFromPoint(v132);
                      v133.x = v43;
                      v133.y = v44;
                      v96 = NSStringFromPoint(v133);
                      v134.x = v42;
                      v134.y = aPointa;
                      v97 = NSStringFromPoint(v134);
                      v135.x = v106;
                      v135.y = v41;
                      v98 = NSStringFromPoint(v135);
                      v99 = [v94 arrayWithObjects:{v95, v96, v97, v98, 0}];

                      if ([(GeometricCutTools *)a1 isPointArrayARectangle:v99])
                      {
                        v19 = v99;
                      }

                      else
                      {
                        v19 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
LABEL_15:
        v19 = 0;
      }
    }
  }

  return v19;
}

+ (BOOL)derotateContentsOf:(id)a3 inImage:(vImage_Buffer *)a4 andOutputTo:(vImage_Buffer *)a5 withPadding:(CGPoint)a6 networkInputSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  y = a6.y;
  x = a6.x;
  v14 = a3;
  v42 = 0uLL;
  v15 = [a1 boxInNormalizedSpace:v14 toImageSpaceWithSize:&v42 plusPadding:a4->width destSize:a4->height networkInputSize:{x, y, width, height}];

  if (v15 && (v16 = v42.f64[0] * 0.125, v17 = (ceilf(v16) * 8.0) + -5.0, v42.f64[0] = v17, width <= v17) && v17 <= (4 * a4->width))
  {
    a5->data = malloc_type_malloc(v42.f64[1] * v17, 0x100004077774924uLL);
    v20 = v42.f64[0];
    v21 = vcvtq_u64_f64(v42);
    *&a5->height = vextq_s8(v21, v21, 8uLL);
    a5->rowBytes = v20;
    v22 = [v15 objectAtIndexedSubscript:0];
    v23 = NSPointFromString(v22);

    v24 = [v15 objectAtIndexedSubscript:1];
    v25 = NSPointFromString(v24);

    v26 = [v15 objectAtIndexedSubscript:3];
    v27 = NSPointFromString(v26);

    v28 = a5->height;
    if (v28)
    {
      v29 = sqrt((v23.y - v27.y) * (v23.y - v27.y) + (v23.x - v27.x) * (v23.x - v27.x));
      v30 = sqrt((v23.y - v25.y) * (v23.y - v25.y) + (v23.x - v25.x) * (v23.x - v25.x));
      v31 = atan2(v25.y - v23.y, v25.x - v23.x);
      v32 = __sincos_stret(v31 + 1.57079633);
      v33 = __sincos_stret(v31);
      v34 = 0;
      v35 = a5->width;
      do
      {
        if (v35)
        {
          v36 = 0;
          v37 = v29 * v34 / (v28 - 1);
          v38 = v23.y + v37 * v32.__sinval;
          v39 = v23.x + v37 * v32.__cosval;
          v40 = a5->data + a5->rowBytes * v34;
          do
          {
            v41 = v30 * v36 / (v35 - 1);
            v40[v36++] = *(a4->data + a4->rowBytes * (v38 + v41 * v33.__sinval) + (v39 + v41 * v33.__cosval));
            v35 = a5->width;
          }

          while (v35 > v36);
          v28 = a5->height;
        }

        ++v34;
      }

      while (v28 > v34);
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)stringByInjectingSpaces:(id)a3 textFeatures:(id)a4 improved:(BOOL)a5
{
  v137 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v115 = v7;
  v116 = [v7 mutableCopy];
  v9 = [v8 subFeatures];
  v10 = [v9 count];

  if (v10 < 3)
  {
    goto LABEL_137;
  }

  v114 = v8;
  v11 = [v8 subFeatures];
  v132[0] = 0;
  std::vector<float>::vector[abi:ne200100](__p, [v11 count] - 1);

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v12 = [v8 subFeatures];
  v13 = [v12 countByEnumeratingWithState:&v123 objects:v136 count:16];
  if (!v13)
  {

    v117 = 0;
    v14 = 0;
LABEL_17:
    v26 = 0.0;
    goto LABEL_18;
  }

  v14 = 0;
  v15 = *v124;
  v16 = 0.0;
  v17 = 0.0;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v124 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v123 + 1) + 8 * i);
      if (v17 != 0.0)
      {
        [*(*(&v123 + 1) + 8 * i) bounds];
        *&v20 = v20 - v17;
        *&v20 = fabsf(*&v20);
        *(__p[0] + v14++) = LODWORD(v20);
        v16 = v16 + *&v20;
      }

      [v19 bounds];
      v22 = v21;
      [v19 bounds];
      v17 = v22 + v23;
    }

    v13 = [v12 countByEnumeratingWithState:&v123 objects:v136 count:16];
  }

  while (v13);

  if (v14 < 1)
  {
    v117 = 0;
    goto LABEL_17;
  }

  v24 = __p[0];
  v25 = v14;
  v26 = 0.0;
  do
  {
    v27 = *v24++;
    v26 = v26 + ((v27 - (v16 / v14)) * (v27 - (v16 / v14)));
    --v25;
  }

  while (v25);
  v117 = 1;
LABEL_18:
  v113 = a5;
  for (j = 0; j != 18; j += 6)
  {
    v29 = &v132[j];
    v29[2] = 0;
    *&v132[j + 2] = 0;
    *v29 = &v132[j + 2];
  }

  v30 = *(__p[0] + v14 - 1);
  v129 = *__p[0];
  v130 = v30;
  v131 = *(__p[0] + v14 / 2);
  if (v14 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v14;
  }

  v32 = 10;
  do
  {
    v118 = v32;
    for (k = 0; k != 18; k += 6)
    {
      v34 = &v132[k];
      v35 = &v132[k + 2];
      std::__tree<int>::destroy(&v132[k], *v35);
      *v34 = v35;
      v34[2] = 0;
      *v35 = 0;
    }

    if (v117)
    {
      for (m = 0; m != v31; ++m)
      {
        v37 = 0;
        for (n = 1; n != 3; ++n)
        {
          if (((*(__p[0] + m) - *(&v129 + n)) * (*(__p[0] + m) - *(&v129 + n))) < ((*(__p[0] + m) - v129) * (*(__p[0] + m) - v129)))
          {
            v37 = n;
          }
        }

        v39 = *&v132[6 * v37 + 2];
        if (!v39)
        {
LABEL_38:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v40 = v39;
            v41 = *(v39 + 28);
            if (m >= v41)
            {
              break;
            }

            v39 = *v40;
            if (!*v40)
            {
              goto LABEL_38;
            }
          }

          if (m <= v41)
          {
            break;
          }

          v39 = v40[1];
          if (!v39)
          {
            goto LABEL_38;
          }
        }
      }
    }

    v42 = 0;
    v43 = 0;
    v44 = __p[0];
    do
    {
      v45 = &v132[6 * v42];
      v48 = *v45;
      v46 = v45 + 1;
      v47 = v48;
      v49 = 0.0;
      if (v48 != v46)
      {
        do
        {
          v50 = v47[1];
          v51 = v47;
          if (v50)
          {
            do
            {
              v52 = v50;
              v50 = *v50;
            }

            while (v50);
          }

          else
          {
            do
            {
              v52 = v51[2];
              v53 = *v52 == v51;
              v51 = v52;
            }

            while (!v53);
          }

          v49 = v49 + v44[*(v47 + 7)];
          v47 = v52;
        }

        while (v52 != v46);
      }

      v54 = v49 / *&v132[6 * v42 + 4];
      if (vabds_f32(v54, *(&v129 + v42)) > 0.00000011921)
      {
        *(&v129 + v42) = v54;
        v43 = 1;
      }

      ++v42;
    }

    while (v42 != 3);
    v32 = v118 - 1;
  }

  while ((v43 & (v118 > 1)) != 0);
  v55 = 0;
  v56 = 0.0;
  v57 = (v14 - 1);
  do
  {
    v58 = &v132[6 * v55];
    v61 = *v58;
    v59 = v58 + 1;
    v60 = v61;
    if (v61 != v59)
    {
      do
      {
        v62 = v60[1];
        v63 = v60;
        if (v62)
        {
          do
          {
            v64 = v62;
            v62 = *v62;
          }

          while (v62);
        }

        else
        {
          do
          {
            v64 = v63[2];
            v53 = *v64 == v63;
            v63 = v64;
          }

          while (!v53);
        }

        v65 = v44[*(v60 + 7)] - *(&v129 + v55);
        v56 = v56 + (v65 * v65);
        v60 = v64;
      }

      while (v64 != v59);
    }

    ++v55;
  }

  while (v55 != 3);
  v66 = v133 && v130 > v129;
  if (v135 && v131 > *(&v129 + v66))
  {
    v66 = 2;
  }

  v67 = v26 - v56;
  if (v113)
  {
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v68 = [v114 subFeatures];
    v69 = [v68 countByEnumeratingWithState:&v119 objects:v128 count:16];
    if (v69)
    {
      v70 = *v120;
      v71 = 0.0;
      do
      {
        for (ii = 0; ii != v69; ++ii)
        {
          if (*v120 != v70)
          {
            objc_enumerationMutation(v68);
          }

          [*(*(&v119 + 1) + 8 * ii) bounds];
          v71 = v73 + v71;
        }

        v69 = [v68 countByEnumeratingWithState:&v119 objects:v128 count:16];
      }

      while (v69);
    }

    else
    {
      v71 = 0.0;
    }

    v83 = [v114 subFeatures];
    v84 = [v83 count];

    v85 = v66;
    v86 = &v132[6 * v66];
    v88 = v86 + 1;
    v87 = *v86;
    v89 = 0.0;
    v90 = 0.0;
    if (*v86 != v86 + 1)
    {
      do
      {
        v91 = v87[1];
        v92 = v87;
        if (v91)
        {
          do
          {
            v93 = v91;
            v91 = *v91;
          }

          while (v91);
        }

        else
        {
          do
          {
            v93 = v92[2];
            v53 = *v93 == v92;
            v92 = v93;
          }

          while (!v53);
        }

        v90 = v90 + *(__p[0] + *(v87 + 7));
        v87 = v93;
      }

      while (v93 != v88);
    }

    v94 = 0;
    v95 = 0;
    v96 = v86[2];
    do
    {
      if (v94 != v85)
      {
        v97 = &v132[6 * v94];
        v100 = *v97;
        v98 = v97 + 1;
        v99 = v100;
        if (v100 != v98)
        {
          do
          {
            v101 = v99[1];
            v102 = v99;
            if (v101)
            {
              do
              {
                v103 = v101;
                v101 = *v101;
              }

              while (v101);
            }

            else
            {
              do
              {
                v103 = v102[2];
                v53 = *v103 == v102;
                v102 = v103;
              }

              while (!v53);
            }

            v89 = v89 + *(__p[0] + *(v99 + 7));
            ++v95;
            v99 = v103;
          }

          while (v103 != v98);
        }
      }

      ++v94;
    }

    while (v94 != 3);
    v104 = v90 / v96;
    if (v104 >= ((v89 / v95) + (v89 / v95)) && (v71 / v84) * 0.3 < v104)
    {
      v105 = (v67 / v26) <= 0.5 || v96 >= v14;
      v106 = v117;
      if (v105)
      {
        v106 = 0;
      }

      if (v106 == 1)
      {
        do
        {
          v107 = *v88;
          if (*v88)
          {
            v108 = v88;
            do
            {
              v109 = *(v107 + 28);
              v81 = v57 <= v109;
              v110 = v57 > v109;
              if (v81)
              {
                v108 = v107;
              }

              v107 = *(v107 + 8 * v110);
            }

            while (v107);
            if (v108 != v88 && v57 >= *(v108 + 7))
            {
              [v116 insertString:@" " atIndex:v57 + 1];
            }
          }

          v81 = v57-- <= 0;
        }

        while (!v81);
      }
    }
  }

  else
  {
    v74 = &v132[6 * v66];
    v75 = v67 <= 0.0001 || *(v74 + 2) >= v14;
    v76 = v117;
    if (v75)
    {
      v76 = 0;
    }

    if (v76 == 1)
    {
      v77 = v74 + 2;
      do
      {
        v78 = *v77;
        if (*v77)
        {
          v79 = v77;
          do
          {
            v80 = *(v78 + 28);
            v81 = v57 <= v80;
            v82 = v57 > v80;
            if (v81)
            {
              v79 = v78;
            }

            v78 = *(v78 + 8 * v82);
          }

          while (v78);
          if (v79 != v77 && v57 >= *(v79 + 7))
          {
            [v116 insertString:@" " atIndex:v57 + 1];
          }
        }

        v81 = v57-- <= 0;
      }

      while (!v81);
    }
  }

  for (jj = 0; jj != -72; jj -= 24)
  {
    std::__tree<int>::destroy(&v134[jj], *&v134[jj + 8]);
  }

  v8 = v114;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_137:

  return v116;
}

+ (id)geometricRecognitionOf:(id)a3 inDerotatedRegion:(vImage_Buffer *)a4 withPadding:(CGPoint)a5 fromCorrectedBoundingBox:(id)a6 inImageWithSize:(CGSize)a7 withNetwork:(void *)a8 activations:()vector<std:(std:(BOOL)a10 :allocator<std::vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:
{
  v10 = a10;
  height = a7.height;
  width = a7.width;
  y = a5.y;
  x = a5.x;
  v20 = a3;
  v21 = a6;
  v22 = *&a4->width;
  v27[0] = *&a4->data;
  v27[1] = v22;
  v23 = *(a8 + 21);
  memset(v26, 0, sizeof(v26));
  std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v26, a9->var0, a9->var1, 0xAAAAAAAAAAAAAAABLL * ((a9->var1 - a9->var0) >> 3));
  v24 = [a1 geometricRecognitionOf:v20 inDerotatedRegion:v27 withPadding:v21 fromCorrectedBoundingBox:v23 inImageWithSize:v26 withCodeMap:v10 activations:x invert:y networkInputSize:{width, height, *(a8 + 25), *(a8 + 26)}];
  *&v27[0] = v26;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v27);

  return v24;
}

+ (id)geometricRecognitionOf:(id)a3 inDerotatedRegion:(vImage_Buffer *)a4 withPadding:(CGPoint)a5 fromCorrectedBoundingBox:(id)a6 inImageWithSize:(CGSize)a7 withCodeMap:(const int *)a8 activations:()vector<std:(std:(BOOL)a10 :(CGSize)a11 allocator<std::vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:networkInputSize:
{
  v11 = a10;
  height = a11.height;
  width = a11.width;
  v18 = a7.height;
  v19 = a7.width;
  y = a5.y;
  x = a5.x;
  v184 = *MEMORY[0x277D85DE8];
  v138 = a3;
  v23 = a6;
  v182 = a8;
  if (width <= a4->width)
  {
    v142 = v19;
    v144 = v18;
    v137 = [a1 boxInNormalizedSpace:v23 toImageSpaceWithSize:v181 plusPadding:v19 destSize:v18 networkInputSize:{x, y, width, height}];

    if (v137)
    {
      v25 = [v137 objectAtIndexedSubscript:0];
      v26 = NSPointFromString(v25);

      v27 = [v137 objectAtIndexedSubscript:1];
      v28 = NSPointFromString(v27);

      v179 = 0;
      v180 = 0;
      v178 = 0;
      v29 = 0xAAAAAAAAAAAAAAABLL * ((a9->var1 - a9->var0) >> 3);
      v30 = *a9->var0;
      v31 = -1431655765 * ((*(a9->var0 + 1) - v30) >> 3);
      if (v29 < 2)
      {
        std::vector<std::vector<float>>::resize(&v178, v31);
        if (v31 >= 1)
        {
          v42 = 0;
          v43 = v31 & 0x7FFFFFFF;
          do
          {
            v44 = *a9->var0;
            if (v178 != v44)
            {
              std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v178[v42], v44[v42], v44[v42 + 1], (v44[v42 + 1] - v44[v42]) >> 2);
            }

            v42 += 3;
            --v43;
          }

          while (v43);
        }
      }

      else
      {
        v33 = *v30;
        v32 = v30[1];
        std::vector<std::vector<float>>::resize(&v178, v31);
        if (v31 >= 1)
        {
          v34 = 0;
          v157 = (v32 - v33) >> 2;
          v35 = v29;
          v36 = v29 & 0x7FFFFFFF;
          do
          {
            if (v157 >= 1)
            {
              v37 = 0;
              do
              {
                var0 = a9->var0;
                v39 = 0.0;
                v40 = v36;
                do
                {
                  v41 = *var0;
                  var0 += 3;
                  v39 = v39 + *(*(v41 + 24 * v34) + 4 * v37);
                  --v40;
                }

                while (v40);
                *&v172 = v39 / v35;
                std::vector<float>::push_back[abi:ne200100](&v178[3 * v34], &v172);
                ++v37;
              }

              while (v37 != (v157 & 0x7FFFFFFF));
            }

            ++v34;
          }

          while (v34 != (v31 & 0x7FFFFFFF));
        }
      }

      if (v11)
      {
        std::__reverse[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<float> *>,std::__wrap_iter<std::vector<float> *>>(v178, v179);
      }

      v154 = [MEMORY[0x277CCAB68] string];
      v153 = [MEMORY[0x277CCAB68] string];
      v152 = [MEMORY[0x277CCAB68] string];
      v45 = [MEMORY[0x277CBEB18] array];
      v155 = [MEMORY[0x277CBEB18] array];
      v158 = [MEMORY[0x277CBEB18] array];
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      obj = [v138 subFeatures];
      v46 = [obj countByEnumeratingWithState:&v174 objects:v183 count:16];
      v150 = v45;
      if (v46)
      {
        v47 = sqrt((v28.y - v26.y) * (v28.y - v26.y) + (v28.x - v26.x) * (v28.x - v26.x));
        v139 = (v28.y - v26.y) / v47;
        v140 = (v28.x - v26.x) / v47;
        v48 = *v175;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v175 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v50 = *(*(&v174 + 1) + 8 * i);
            [v50 bounds];
            v52 = v51;
            [v50 bounds];
            v54 = v53;
            [v50 bounds];
            v56 = v55;
            [v50 bounds];
            v58 = 0.0;
            if (v47 > width)
            {
              v59 = (v139 * (v144 * (v56 + v57 * 0.5) - v26.y) + (v142 * (v52 + v54 * 0.5) - v26.x) * v140 - width * 0.5) / (v47 - width);
              if (v59 >= 0.0)
              {
                v58 = (v139 * (v144 * (v56 + v57 * 0.5) - v26.y) + (v142 * (v52 + v54 * 0.5) - v26.x) * v140 - width * 0.5) / (v47 - width);
                if (v59 > 1.0)
                {
                  v58 = 1.0;
                }
              }
            }

            v61 = v178;
            v60 = v179;
            [v50 bounds];
            v63 = v62;
            v64 = 1.0;
            if (x != INFINITY)
            {
              [v138 bounds];
            }

            v65 = 0xAAAAAAAAAAAAAAABLL * (v60 - v61);
            v66 = (v58 * (v65 - 1));
            v67 = (v63 * v65 / v64);
            if (v67 <= 1)
            {
              v68 = 1;
            }

            else
            {
              v68 = v67;
            }

            v69 = (v178[3 * v66 + 1] - v178[3 * v66]) >> 2;
            v170 = 0;
            std::vector<double>::vector[abi:ne200100](&v172, v69);
            v70 = (v178[3 * v66 + 1] - v178[3 * v66]) >> 2;
            __p = 0;
            std::vector<double>::vector[abi:ne200100](&v170, v70);
            v71 = (v178[3 * v66 + 1] - v178[3 * v66]) >> 2;
            v167 = 0;
            std::vector<double>::vector[abi:ne200100](&__p, v71);
            v45 = v150;
            fieldDecoding(&v178, v68, v66, &v182, 1, &v172, v150, v11);
            fieldDecoding(&v178, v68, v66, &v182, 2, &v170, v155, v11);
            fieldDecoding(&v178, v68, v66, &v182, 3, &__p, v158, v11);
            if (v172 == v173)
            {
              v74 = v172;
            }

            else
            {
              v73 = (v172 + 8);
              v74 = v172;
              if (v172 + 8 != v173)
              {
                v72 = *v172;
                v74 = v172;
                v75 = (v172 + 8);
                do
                {
                  v76 = *v75++;
                  v77 = v76;
                  if (v72 < v76)
                  {
                    v72 = v77;
                    v74 = v73;
                  }

                  v73 = v75;
                }

                while (v75 != v173);
              }
            }

            v78 = (v170 + 8);
            v79 = v170 == v171 || v78 == v171;
            v80 = v170;
            if (!v79)
            {
              v72 = *v170;
              v80 = v170;
              v81 = (v170 + 8);
              do
              {
                v82 = *v81++;
                v83 = v82;
                if (v72 < v82)
                {
                  v72 = v83;
                  v80 = v78;
                }

                v78 = v81;
              }

              while (v81 != v171);
            }

            v84 = (__p + 8);
            v85 = __p == v169 || v84 == v169;
            v86 = __p;
            if (!v85)
            {
              v72 = *__p;
              v86 = __p;
              v87 = (__p + 8);
              do
              {
                v88 = *v87++;
                v89 = v88;
                if (v72 < v88)
                {
                  v72 = v89;
                  v86 = v84;
                }

                v84 = v87;
              }

              while (v87 != v169);
            }

            LOWORD(v167) = *(a8 + ((v74 - v172) << 29 >> 30));
            v166 = *(a8 + ((v80 - v170) << 29 >> 30));
            v165 = *(a8 + ((v86 - __p) << 29 >> 30));
            v90 = [MEMORY[0x277CCACA8] stringWithCharacters:&v167 length:{1, v72}];
            [v154 appendString:v90];

            v91 = [MEMORY[0x277CCACA8] stringWithCharacters:&v166 length:1];
            [v153 appendString:v91];

            v92 = [MEMORY[0x277CCACA8] stringWithCharacters:&v165 length:1];
            [v152 appendString:v92];

            if (__p)
            {
              v169 = __p;
              operator delete(__p);
            }

            if (v170)
            {
              v171 = v170;
              operator delete(v170);
            }

            if (v172)
            {
              v173 = v172;
              operator delete(v172);
            }
          }

          v46 = [obj countByEnumeratingWithState:&v174 objects:v183 count:16];
        }

        while (v46);
      }

      std::vector<int>::vector[abi:ne200100](&v172, 0xAAAAAAAAAAAAAAABLL * (v179 - v178));
      v93 = v178;
      if (v179 != v178)
      {
        v94 = 0;
        v95 = 0xAAAAAAAAAAAAAAABLL * (v179 - v178);
        v96 = v172;
        if (v95 <= 1)
        {
          v95 = 1;
        }

        do
        {
          v97 = &v93[3 * v94];
          v98 = *v97;
          v99 = v97[1];
          v100 = v98 + 1;
          v101 = v98 == v99 || v100 == v99;
          v102 = v98;
          if (!v101)
          {
            v103 = *v98;
            v102 = v98;
            v104 = v98 + 1;
            do
            {
              v105 = *v104++;
              v106 = v105;
              if (v103 < v105)
              {
                v103 = v106;
                v102 = v100;
              }

              v100 = v104;
            }

            while (v104 != v99);
          }

          v96[v94++] = *(a8 + ((v102 - v98) << 30 >> 30));
        }

        while (v94 != v95);
      }

      v107 = [GeometricCutTools stringByInjectingSpaces:v154 textFeatures:v138 improved:0];
      v108 = [GeometricCutTools stringByInjectingSpaces:v153 textFeatures:v138 improved:0];
      v109 = [GeometricCutTools stringByInjectingSpaces:v152 textFeatures:v138 improved:0];
      v110 = v109;
      if (v11)
      {
        v141 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(v107, "length")}];
        v145 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(v108, "length")}];
        v143 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(v110, "length")}];
        v111 = [v107 length];
        v163[0] = MEMORY[0x277D85DD0];
        v163[1] = 3221225472;
        v163[2] = __163__GeometricCutTools_geometricRecognitionOf_inDerotatedRegion_withPadding_fromCorrectedBoundingBox_inImageWithSize_withCodeMap_activations_invert_networkInputSize___block_invoke;
        v163[3] = &unk_278EAAD90;
        v112 = v141;
        v164 = v112;
        v113 = v107;
        [v107 enumerateSubstringsInRange:0 options:v111 usingBlock:{258, v163}];
        v114 = [v108 length];
        v161[0] = MEMORY[0x277D85DD0];
        v161[1] = 3221225472;
        v161[2] = __163__GeometricCutTools_geometricRecognitionOf_inDerotatedRegion_withPadding_fromCorrectedBoundingBox_inImageWithSize_withCodeMap_activations_invert_networkInputSize___block_invoke_2;
        v161[3] = &unk_278EAAD90;
        v115 = v145;
        v162 = v115;
        [v108 enumerateSubstringsInRange:0 options:v114 usingBlock:{258, v161}];
        v116 = [v110 length];
        v159[0] = MEMORY[0x277D85DD0];
        v159[1] = 3221225472;
        v159[2] = __163__GeometricCutTools_geometricRecognitionOf_inDerotatedRegion_withPadding_fromCorrectedBoundingBox_inImageWithSize_withCodeMap_activations_invert_networkInputSize___block_invoke_3;
        v159[3] = &unk_278EAAD90;
        v117 = v143;
        v160 = v117;
        [v110 enumerateSubstringsInRange:0 options:v116 usingBlock:{258, v159}];
        v107 = v112;

        v147 = v115;
        v146 = v117;

        v118 = [v45 reverseObjectEnumerator];
        v119 = [v118 allObjects];
        obja = [v119 mutableCopy];

        v120 = [v155 reverseObjectEnumerator];
        v121 = [v120 allObjects];
        v151 = [v121 mutableCopy];

        v122 = [v158 reverseObjectEnumerator];
        v123 = [v122 allObjects];
        v124 = [v123 mutableCopy];

        v158 = v124;
      }

      else
      {
        obja = v45;
        v151 = v155;
        v146 = v109;
        v147 = v108;
      }

      v125 = MEMORY[0x277CBEAC0];
      v126 = MEMORY[0x277CBEA60];
      v156 = [MEMORY[0x277CCACA8] _newZStringWithString:v107];
      v127 = [MEMORY[0x277CCABB0] numberWithInteger:0xAAAAAAAAAAAAAAABLL * (v179 - v178)];
      v128 = [v126 arrayWithObjects:{v156, obja, v127, 0}];
      v129 = MEMORY[0x277CBEA60];
      v130 = [MEMORY[0x277CCACA8] _newZStringWithString:v147];
      v131 = [MEMORY[0x277CCABB0] numberWithInteger:0xAAAAAAAAAAAAAAABLL * (v179 - v178)];
      v132 = [v129 arrayWithObjects:{v130, v151, v131, 0}];
      v133 = MEMORY[0x277CBEA60];
      v134 = [MEMORY[0x277CCABB0] numberWithInteger:0xAAAAAAAAAAAAAAABLL * (v179 - v178)];
      v135 = [v133 arrayWithObjects:{v146, v158, v134, 0}];
      v24 = [v125 dictionaryWithObjectsAndKeys:{v128, @"CardNumber", v132, @"Cardholder", v135, @"Expiration", 0}];

      if (v172)
      {
        v173 = v172;
        operator delete(v172);
      }

      v172 = &v178;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v172);
    }

    else
    {
      v24 = 0;
    }

    v23 = v137;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)geometricRecognitionOf:(id)a3 inDerotatedRegion:(vImage_Buffer *)a4 withPadding:(CGPoint)a5 fromCorrectedBoundingBox:(id)a6 inImageWithSize:(CGSize)a7 withNetwork:(void *)a8 activations:()vector<std:(std:(BOOL)a10 :(unsigned __int16)a11 allocator<std::vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:garbageSymbol:
{
  v11 = a10;
  height = a7.height;
  width = a7.width;
  y = a5.y;
  x = a5.x;
  v21 = a3;
  v22 = a6;
  v23 = *&a4->width;
  v29[0] = *&a4->data;
  v29[1] = v23;
  v24 = *(a8 + 21);
  memset(v28, 0, sizeof(v28));
  std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v28, a9->var0, a9->var1, 0xAAAAAAAAAAAAAAABLL * ((a9->var1 - a9->var0) >> 3));
  LOWORD(v27) = a11;
  v25 = [a1 geometricRecognitionOf:v21 inDerotatedRegion:v29 withPadding:v22 fromCorrectedBoundingBox:v24 inImageWithSize:v28 withCodeMap:v11 activations:x invert:y networkInputSize:width garbageSymbol:{height, *(a8 + 25), *(a8 + 26), v27}];
  *&v29[0] = v28;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v29);

  return v25;
}

+ (id)geometricRecognitionOf:(id)a3 inDerotatedRegion:(vImage_Buffer *)a4 withPadding:(CGPoint)a5 fromCorrectedBoundingBox:(id)a6 inImageWithSize:(CGSize)a7 withCodeMap:(const int *)a8 activations:()vector<std:(std:(BOOL)a10 :(CGSize)a11 allocator<std:(unsigned __int16)a12 :vector<std::vector<float>>>> *)a9 :vector<std::vector<float>> invert:networkInputSize:garbageSymbol:
{
  v117 = a10;
  height = a11.height;
  width = a11.width;
  v18 = a7.height;
  v19 = a7.width;
  y = a5.y;
  x = a5.x;
  v143 = *MEMORY[0x277D85DE8];
  v119 = a3;
  v23 = a6;
  if (width <= a4->width)
  {
    v122 = v19;
    v123 = v18;
    v118 = [a1 boxInNormalizedSpace:v23 toImageSpaceWithSize:v141 plusPadding:v19 destSize:v18 networkInputSize:{x, y, width, height}];

    if (v118)
    {
      v25 = [v118 objectAtIndexedSubscript:0];
      v26 = NSPointFromString(v25);

      v27 = [v118 objectAtIndexedSubscript:1];
      v28 = NSPointFromString(v27);

      v139 = 0;
      v140 = 0;
      v138 = 0;
      v29 = 0xAAAAAAAAAAAAAAABLL * ((a9->var1 - a9->var0) >> 3);
      v30 = *a9->var0;
      v31 = -1431655765 * ((*(a9->var0 + 1) - v30) >> 3);
      if (v29 < 2)
      {
        std::vector<std::vector<float>>::resize(&v138, v31);
        if (v31 >= 1)
        {
          v42 = 0;
          v43 = v31 & 0x7FFFFFFF;
          do
          {
            v44 = *a9->var0;
            if (v138 != v44)
            {
              std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v138[v42], v44[v42], v44[v42 + 1], (v44[v42 + 1] - v44[v42]) >> 2);
            }

            v42 += 3;
            --v43;
          }

          while (v43);
        }
      }

      else
      {
        v33 = *v30;
        v32 = v30[1];
        std::vector<std::vector<float>>::resize(&v138, v31);
        if (v31 >= 1)
        {
          v34 = 0;
          v127 = (v32 - v33) >> 2;
          v35 = v29;
          v36 = v29 & 0x7FFFFFFF;
          do
          {
            if (v127 >= 1)
            {
              v37 = 0;
              do
              {
                var0 = a9->var0;
                v39 = 0.0;
                v40 = v36;
                do
                {
                  v41 = *var0;
                  var0 += 3;
                  v39 = v39 + *(*(v41 + 24 * v34) + 4 * v37);
                  --v40;
                }

                while (v40);
                *&__p = v39 / v35;
                std::vector<float>::push_back[abi:ne200100](&v138[3 * v34], &__p);
                ++v37;
              }

              while (v37 != (v127 & 0x7FFFFFFF));
            }

            ++v34;
          }

          while (v34 != (v31 & 0x7FFFFFFF));
        }
      }

      if (v117)
      {
        std::__reverse[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<float> *>,std::__wrap_iter<std::vector<float> *>>(v138, v139);
      }

      v125 = [MEMORY[0x277CCAB68] string];
      v128 = [MEMORY[0x277CBEB18] array];
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v45 = [v119 subFeatures];
      v46 = [v45 countByEnumeratingWithState:&v134 objects:v142 count:16];
      if (v46)
      {
        v47 = sqrt((v28.y - v26.y) * (v28.y - v26.y) + (v28.x - v26.x) * (v28.x - v26.x));
        v120 = (v28.y - v26.y) / v47;
        v121 = (v28.x - v26.x) / v47;
        v124 = *v135;
        v48 = v45;
        do
        {
          v126 = v46;
          for (i = 0; i != v126; ++i)
          {
            if (*v135 != v124)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v134 + 1) + 8 * i);
            [v50 bounds];
            v52 = v51;
            [v50 bounds];
            v54 = v53;
            [v50 bounds];
            v56 = v55;
            [v50 bounds];
            v58 = 0.0;
            if (v47 > width)
            {
              v59 = (v120 * (v123 * (v56 + v57 * 0.5) - v26.y) + (v122 * (v52 + v54 * 0.5) - v26.x) * v121 - width * 0.5) / (v47 - width);
              if (v59 >= 0.0)
              {
                v58 = (v120 * (v123 * (v56 + v57 * 0.5) - v26.y) + (v122 * (v52 + v54 * 0.5) - v26.x) * v121 - width * 0.5) / (v47 - width);
                if (v59 > 1.0)
                {
                  v58 = 1.0;
                }
              }
            }

            v61 = v138;
            v60 = v139;
            [v50 bounds];
            v63 = v62;
            v64 = 1.0;
            if (x != INFINITY)
            {
              [v119 bounds];
            }

            v65 = 0xAAAAAAAAAAAAAAABLL * (v60 - v61);
            v66 = (v58 * (v65 - 1));
            v67 = (v63 * v65 / v64);
            if (v67 <= 1)
            {
              v68 = 1;
            }

            else
            {
              v68 = v67;
            }

            v69 = 0xAAAAAAAAAAAAAAABLL * (v139 - v138);
            v70 = v69 - 1;
            v71 = v69 - 1;
            if (v70 >= (v66 + (v68 >> 1)))
            {
              v72 = v66 + (v68 >> 1);
            }

            else
            {
              v72 = v71;
            }

            v73 = (v138[3 * v66 + 1] - v138[3 * v66]) >> 2;
            v131 = 0;
            std::vector<double>::vector[abi:ne200100](&__p, v73);
            v74 = [MEMORY[0x277CCAB68] string];
            v76 = (v66 - (v68 >> 1)) & ~((v66 - (v68 >> 1)) >> 31);
            if (v76 <= v72)
            {
              do
              {
                v77 = &v138[3 * v76];
                v78 = *v77;
                v79 = v77[1] - *v77;
                if (v79)
                {
                  v80 = 0;
                  v81 = v79 >> 2;
                  if (v81 <= 1)
                  {
                    v82 = 1;
                  }

                  else
                  {
                    v82 = v81;
                  }

                  v83 = -1;
                  LODWORD(v75) = -8388608;
                  do
                  {
                    if (a8[v80] != a12 && *(v78 + 4 * v80) > *&v75)
                    {
                      LODWORD(v75) = *(v78 + 4 * v80);
                      v83 = v80;
                    }

                    ++v80;
                  }

                  while (v82 != v80);
                  if ((v83 & 0x80000000) == 0)
                  {
                    v75 = *(__p + v83) + *&v75;
                    *(__p + v83) = v75;
                  }
                }

                else
                {
                  v83 = -1;
                }

                LOWORD(v131) = a8[v83];
                v84 = [MEMORY[0x277CCACA8] stringWithCharacters:&v131 length:{1, v75}];
                [v74 appendString:v84];

                v85 = [MEMORY[0x277CCABB0] numberWithInteger:v76];
                [v128 addObject:v85];

                ++v76;
              }

              while (v76 != v72 + 1);
            }

            if (__p == v133)
            {
              v87 = __p;
            }

            else
            {
              v86 = (__p + 8);
              v87 = __p;
              if (__p + 8 != v133)
              {
                v75 = *__p;
                v87 = __p;
                v88 = (__p + 8);
                do
                {
                  v89 = *v88++;
                  v90 = v89;
                  if (v75 < v89)
                  {
                    v75 = v90;
                    v87 = v86;
                  }

                  v86 = v88;
                }

                while (v88 != v133);
              }
            }

            LOWORD(v131) = *(a8 + ((v87 - __p) << 29 >> 30));
            v45 = v48;
            v91 = [MEMORY[0x277CCACA8] stringWithCharacters:&v131 length:{1, v75}];
            [v125 appendString:v91];

            if (__p)
            {
              v133 = __p;
              operator delete(__p);
            }
          }

          v46 = [v48 countByEnumeratingWithState:&v134 objects:v142 count:16];
        }

        while (v46);
      }

      std::vector<int>::vector[abi:ne200100](&__p, 0xAAAAAAAAAAAAAAABLL * (v139 - v138));
      v92 = v138;
      if (v139 != v138)
      {
        v93 = 0;
        v94 = 0xAAAAAAAAAAAAAAABLL * (v139 - v138);
        v95 = __p;
        if (v94 <= 1)
        {
          v94 = 1;
        }

        do
        {
          v96 = &v92[3 * v93];
          v97 = *v96;
          v98 = v96[1];
          v99 = v97 + 1;
          v100 = v97 == v98 || v99 == v98;
          v101 = v97;
          if (!v100)
          {
            v102 = *v97;
            v101 = v97;
            v103 = v97 + 1;
            do
            {
              v104 = *v103++;
              v105 = v104;
              if (v102 < v104)
              {
                v102 = v105;
                v101 = v99;
              }

              v99 = v103;
            }

            while (v103 != v98);
          }

          v95[v93++] = *(a8 + ((v101 - v97) << 30 >> 30));
        }

        while (v93 != v94);
      }

      v106 = [MEMORY[0x277CCAB68] string];
      v107 = __p;
      if (v133 != __p)
      {
        v108 = 0;
        do
        {
          LOWORD(v131) = v107[v108];
          v109 = [MEMORY[0x277CCACA8] stringWithCharacters:&v131 length:1];
          [v106 appendString:v109];

          ++v108;
          v107 = __p;
        }

        while (v108 < (v133 - __p) >> 2);
      }

      v110 = [GeometricCutTools stringByInjectingSpaces:v125 textFeatures:v119 improved:1];
      v111 = v110;
      if (v117)
      {
        v112 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(v110, "length")}];
        v113 = [v111 length];
        v129[0] = MEMORY[0x277D85DD0];
        v129[1] = 3221225472;
        v129[2] = __177__GeometricCutTools_geometricRecognitionOf_inDerotatedRegion_withPadding_fromCorrectedBoundingBox_inImageWithSize_withCodeMap_activations_invert_networkInputSize_garbageSymbol___block_invoke;
        v129[3] = &unk_278EAAD90;
        v114 = v112;
        v130 = v114;
        [v111 enumerateSubstringsInRange:0 options:v113 usingBlock:{258, v129}];
        v115 = v114;
      }

      else
      {
        v115 = v110;
      }

      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:{v115, v128, 0}];

      if (__p)
      {
        v133 = __p;
        operator delete(__p);
      }

      __p = &v138;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
    }

    else
    {
      v24 = 0;
    }

    v23 = v118;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end