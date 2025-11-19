@interface OU3DObjectMerger
- (vector<OUBox3d,)crossClassNMS:(OU3DObjectMerger *)self;
- (vector<OUBox3d,)mergeCabinets:(OU3DObjectMerger *)self iou_mat:(SEL)a3;
- (vector<OUBox3d,)mergeOtherObjects:(OU3DObjectMerger *)self;
- (vector<OUBox3d,)removeLowHeightStairObjects:(OU3DObjectMerger *)self;
@end

@implementation OU3DObjectMerger

- (vector<OUBox3d,)mergeCabinets:(OU3DObjectMerger *)self iou_mat:(SEL)a3
{
  v263[2] = *MEMORY[0x277D85DE8];
  v7 = @"Cabinet";
  v263[0] = v7;
  v8 = @"Shelf";
  v263[1] = v8;
  std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](&v259, v263, 2);
  for (i = 1; i != -1; --i)
  {
  }

  v200 = v7;
  v262[0] = v200;
  v262[1] = v8;
  v10 = @"Oven";
  v262[2] = v10;
  v262[3] = @"Dishwasher";
  v11 = @"Stove";
  v262[4] = v11;
  v12 = @"Sink";
  v262[5] = v12;
  std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](&v257, v262, 6);
  for (j = 5; j != -1; --j)
  {
  }

  v261[0] = v10;
  v194 = v11;
  v261[1] = v194;
  v196 = v12;
  v261[2] = v196;
  std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](&v255, v261, 3);
  for (k = 2; k != -1; --k)
  {
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  memset(v254, 0, sizeof(v254));
  memset(v253, 0, sizeof(v253));
  v15 = *a4;
  v190 = retstr;
  if (*(a4 + 1) == *a4)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    do
    {
      box3dToCentroidSizeAngle((v15 + v16), __p);
      std::vector<std::vector<float>>::push_back[abi:ne200100](v254, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      std::vector<std::vector<float>>::push_back[abi:ne200100](v253, (*a4 + v16 + 160));
      ++v17;
      v15 = *a4;
      v18 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
      v16 += 224;
    }

    while (v17 < v18);
  }

  v19 = *a4;
  v20 = &off_25D277000;
  if (*(a4 + 1) == *a4)
  {
    v240 = 0;
    v239 = 0;
    v238 = &v239;
LABEL_69:
    v237 = 0;
    v236 = 0;
    v235 = &v236;
    v47 = &v239;
    goto LABEL_70;
  }

  v21 = 0;
  v22 = 24;
  v23 = 224;
  do
  {
    v24 = std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(&v257, (v19 + 224 * v21 + 128));
    v19 = *a4;
    v25 = v21 + 1;
    v26 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
    if (v258 != v24 && v25 < v26)
    {
      v197 = v22;
      v195 = v23;
      do
      {
        if (v258 != std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(&v257, (v19 + v23 + 128)))
        {
          v28 = *a4 + 224 * v21;
          v29 = *(v28 + 8);
          v30 = *(*a4 + v23 + 8);
          if (![*(v28 + 128) isEqualToString:v200] || ((v31 = objc_msgSend(*(*a4 + v23 + 128), "isEqualToString:", v200), vabds_f32(v29, v30) >= 0.4) ? (v32 = v31) : (v32 = 0), (v32 & 1) == 0))
          {
            v33 = *(v254[0] + v22);
            v34 = *(v33 + 24);
            v35 = *(v254[0] + 24 * v21);
            v36 = *(v35 + 24);
            v38 = vabds_f32(v34, v36) >= 0.3 && (v37 = (v34 - v36), fabs(v37 + -3.14159265) >= 0.300000012) && fabs(v37 + 3.14159265) >= 0.300000012;
            v39 = *(v35 + 16);
            v40 = *(v33 + 16);
            v41 = *a4 + 224 * v21;
            v42 = vabds_f32(*(v41 + 104), *(*a4 + v23 + 104)) < 0.2;
            if (v256 == std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(&v257, (v41 + 128)) || v256 == std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(&v257, (*a4 + v23 + 128)))
            {
              v42 = vabds_f32(*(*a4 + 224 * v21 + 104), *(*a4 + v23 + 104)) < 0.4;
            }

            if (!v38 && v42 && vabds_f32(v39, v40) < 0.1)
            {
              v219 = 0u;
              v220 = 0u;
              v217 = 0u;
              v218 = 0u;
              v215 = 0u;
              v216 = 0u;
              *__p = 0u;
              v214 = 0u;
              box3dEnlarge((*a4 + 224 * v21), 1053609165, 0.0, 0.0, __p);
              v247 = 0u;
              v248 = 0u;
              v245 = 0u;
              v246 = 0u;
              v243 = 0u;
              v244 = 0u;
              v241 = 0u;
              v242 = 0u;
              box3dEnlarge((*a4 + v23), 1053609165, 0.0, 0.0, &v241);
              v203 = 0u;
              v204 = 0u;
              v202 = 0u;
              box3dIou(__p, &v241, 0, &v202);
              if (*&v202 > 0.0)
              {
              }
            }
          }
        }

        ++v25;
        v19 = *a4;
        v26 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
        v23 += 224;
        v22 += 24;
      }

      while (v25 < v26);
      v22 = v197;
      v23 = v195;
      v25 = v21 + 1;
    }

    v23 += 224;
    v22 += 24;
    v21 = v25;
  }

  while (v25 < v26);
  v240 = 0;
  v239 = 0;
  v238 = &v239;
  LODWORD(__p[0]) = 0;
  if (v26 < 1)
  {
    v20 = &off_25D277000;
    goto LABEL_69;
  }

  LODWORD(v43) = 0;
  do
  {
    v44 = v249;
    if (v43 >= ((v250 - v249) >> 2))
    {
      LODWORD(v43) = -1;
    }

    else
    {
      for (m = v249 + 4 * v43; *m != v43; m = &v44[4 * v43])
      {
        v43 = *&v44[4 * *m];
        *m = v43;
      }
    }

    LODWORD(v202) = v43;
    v241.i64[0] = &v202;
    v46 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v238, &v202);
    std::vector<int>::push_back[abi:ne200100](v46 + 5, __p);
    LODWORD(v43) = LODWORD(__p[0]) + 1;
    LODWORD(__p[0]) = v43;
  }

  while (v43 < (-1227133513 * ((*(a4 + 1) - *a4) >> 5)));
  v47 = v238;
  v237 = 0;
  v236 = 0;
  v235 = &v236;
  if (v238 != &v239)
  {
    do
    {
      LODWORD(__p[0]) = *(v47 + 8);
      v48 = v47[5];
      v49 = v47[6];
      if (v48 == v49)
      {
LABEL_58:
        std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v235, __p);
      }

      else if (v49 - v48 == 4)
      {
        std::vector<OUBox3d>::push_back[abi:ne200100](retstr, (*a4 + 224 * *v48));
        std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v235, __p);
      }

      else
      {
        while (v260 == std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(&v259, (*a4 + 224 * *v48 + 128)))
        {
          if (++v48 == v49)
          {
            v50 = v47[5];
            v51 = v47[6];
            while (v50 != v51)
            {
              std::vector<OUBox3d>::push_back[abi:ne200100](retstr, (*a4 + 224 * *v50++));
            }

            goto LABEL_58;
          }
        }
      }

      v52 = v47[1];
      if (v52)
      {
        do
        {
          v53 = v52;
          v52 = *v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v53 = v47[2];
          v54 = *v53 == v47;
          v47 = v53;
        }

        while (!v54);
      }

      v47 = v53;
    }

    while (v53 != &v239);
    v47 = v238;
  }

  v20 = &off_25D277000;
LABEL_70:
  if (v47 != &v239)
  {
    v55 = *(v20 + 804);
    v56.i64[0] = 0x80000000800000;
    v56.i64[1] = 0x80000000800000;
    v198 = vnegq_f32(v56);
    while (1)
    {
      v57 = v236;
      if (v236)
      {
        v58 = *(v47 + 8);
        do
        {
          v59 = *(v57 + 7);
          if (v58 >= v59)
          {
            if (v59 >= v58)
            {
              goto LABEL_174;
            }

            ++v57;
          }

          v57 = *v57;
        }

        while (v57);
      }

      v60 = v47[5];
      v61 = v47[6] - v60;
      if ((v61 >> 2) < 1)
      {
        v64 = 3.4028e38;
        v63 = -3.4028e38;
      }

      else
      {
        v62 = (v61 >> 2) & 0x7FFFFFFF;
        v63 = -3.4028e38;
        v64 = 3.4028e38;
        do
        {
          v65 = *v60;
          v60 += 4;
          v66 = *(*(v254[0] + 24 * v65) + 24);
          v64 = fminf(v64, v66);
          v63 = fmaxf(v63, v66);
          --v62;
        }

        while (v62);
      }

      v188 = (((v63 - v64) / v55) + 1.0);
      if (v188 >= 1)
      {
        break;
      }

LABEL_174:
      v184 = v47[1];
      if (v184)
      {
        do
        {
          v185 = v184;
          v184 = *v184;
        }

        while (v184);
      }

      else
      {
        do
        {
          v185 = v47[2];
          v54 = *v185 == v47;
          v47 = v185;
        }

        while (!v54);
      }

      v47 = v185;
      if (v185 == &v239)
      {
        goto LABEL_180;
      }
    }

    v67 = 0;
LABEL_85:
    v68 = v67 + 1;
    v233 = 0;
    v232 = 0;
    v234 = 0;
    v70 = v47[5];
    v69 = v47[6];
    if (((v69 - v70) >> 2) < 1)
    {
      goto LABEL_173;
    }

    v71 = 0;
    v189 = v67 + 1;
    v72 = v64 + (v68 * v55);
    v73 = v64 + (v67 * v55);
    v74 = -1;
    v75 = -3.4028e38;
    do
    {
      v76 = *&v70[4 * v71];
      LODWORD(__p[0]) = v76;
      v77 = *(v254[0] + 24 * v76);
      v78 = v77[6];
      if (v73 <= v78 && v78 <= v72)
      {
        v81 = v77[3];
        v80 = v77[4];
        std::vector<int>::push_back[abi:ne200100](&v232, __p);
        if ((v80 * v81) > v75)
        {
          v75 = v80 * v81;
          v74 = v76;
        }

        v70 = v47[5];
        v69 = v47[6];
      }

      ++v71;
    }

    while (v71 < ((v69 - v70) >> 2));
    v82 = v232;
    if (v232 == v233)
    {
      v68 = v189;
      if (v232)
      {
        goto LABEL_172;
      }

      goto LABEL_173;
    }

    std::vector<float>::vector[abi:ne200100](&v230, (*(v253[0] + 8) - *v253[0]) >> 2);
    v83 = v232;
    v84 = v233;
    v85 = v231;
    v86 = v230;
    v87 = (v231 - v230) >> 2;
    if (v232 == v233)
    {
      v91 = 0.0;
    }

    else
    {
      v88 = v253[0];
      v89 = v254[0];
      if (v87 <= 1)
      {
        v90 = 1;
      }

      else
      {
        v90 = (v231 - v230) >> 2;
      }

      v91 = 0.0;
      v92 = v232;
      do
      {
        v93 = *v92;
        if (v85 != v86)
        {
          v94 = *(v88 + 24 * v93);
          v95 = v90;
          v96 = v86;
          do
          {
            v97 = *v94++;
            *v96 = v97 + *v96;
            ++v96;
            --v95;
          }

          while (v95);
        }

        v91 = v91 + *(*(v89 + 24 * v93) + 16);
        v92 += 4;
      }

      while (v92 != v84);
    }

    v98 = ((v84 - v83) >> 2);
    if (v85 != v86)
    {
      if (v87 <= 1)
      {
        v87 = 1;
      }

      do
      {
        *v86 = *v86 / v98;
        ++v86;
        --v87;
      }

      while (v87);
    }

    v99 = *(*(v254[0] + 24 * v74) + 24);
    *v100.i64 = rotationZMatrix(v99);
    v103 = v232;
    v104 = v233;
    if (v232 == v233)
    {
      v113.i64[0] = 0x80000000800000;
      v113.i64[1] = 0x80000000800000;
      v114.i64[0] = 0x80000000800000;
      v114.i64[1] = 0x80000000800000;
      v199 = vnegq_f32(v113);
      v201 = v114;
    }

    else
    {
      v105.i64[0] = 0x80000000800000;
      v105.i64[1] = 0x80000000800000;
      v106.i64[0] = 0x80000000800000;
      v106.i64[1] = 0x80000000800000;
      v199 = vnegq_f32(v105);
      v201 = v106;
      v192 = v101;
      v193 = v100;
      v191 = v102;
      do
      {
        v107 = *v103;
        if ([*(*a4 + 224 * *v103 + 128) isEqualToString:v196] & 1) != 0 || (objc_msgSend(*(*a4 + 224 * v107 + 128), "isEqualToString:", v194))
        {
          v108 = v199;
          v109 = v201;
        }

        else
        {
          v110 = 0;
          v108 = v199;
          v109 = v201;
          do
          {
            v111 = *(*a4 + 224 * v107 + v110);
            v112 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v193, v111.f32[0]), v192, *v111.f32, 1), v191, v111, 2);
            v108.i32[3] = 0;
            v112.i32[3] = 0;
            v108 = vminnmq_f32(v108, v112);
            v109.i32[3] = 0;
            v109 = vmaxnmq_f32(v109, v112);
            v110 += 16;
          }

          while (v110 != 128);
        }

        v199 = v108;
        v201 = v109;
        ++v103;
      }

      while (v103 != v104);
    }

    LODWORD(__p[0]) = 0;
    std::vector<float>::vector[abi:ne200100](v229, 7uLL);
    v115 = vabdq_f32(v201, v199);
    v116.i64[0] = 0x3F0000003F000000;
    v116.i64[1] = 0x3F0000003F000000;
    v117 = vmulq_f32(vaddq_f32(v199, v201), v116);
    v118 = v229[0];
    v117.i32[3] = v115.i32[0];
    *v229[0] = v117;
    v118[4] = v91 / v98;
    v118[5] = v115.f32[2];
    v118[6] = v99;
    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    centroidSizeAngleToBox3d(v229, 0, &v241);
    v119 = [MEMORY[0x277CCAD78] UUID];
    OUBox3d::OUBox3d(__p, &v241, &OU3DObjectTypeCabinet, v119, &v230, @"online", 1.0);
    end = retstr->__end_;
    if (end >= retstr->__cap_)
    {
      v130 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(retstr, __p);
    }

    else
    {
      v121 = *__p;
      v122 = v214;
      v123 = v216;
      *&end->var5.var0 = v215;
      *&end->var5.var2 = v123;
      *&end->var1 = v121;
      *&end->var3 = v122;
      v124 = v217;
      v125 = v218;
      v126 = v220;
      *&end[1].var1 = v219;
      *&end[1].var3 = v126;
      *&end->var6.var1 = v124;
      *&end->var7 = v125;
      v127 = v221;
      v221 = 0;
      end[1].var5.var0 = v127;
      LODWORD(end[1].var5.var1) = v222;
      v128 = v223;
      v223 = 0u;
      end[1].var7 = 0;
      *&end[1].var5.var2 = v128;
      *&end[1].var6.var1 = 0u;
      *&end[1].var6.var1 = *v224;
      end[1].var7 = v225;
      *v224 = 0u;
      v225 = 0;
      *&end[1].var8 = v226[0];
      *&end[2].var1 = *&v226[1];
      memset(v226, 0, sizeof(v226));
      v129 = v227;
      v227 = 0;
      end[2].var3 = v129;
      LOWORD(end[2].var4) = v228;
      v130 = (end + 224);
    }

    retstr->__end_ = v130;

    if (v226[0])
    {
      operator delete(v226[0]);
    }

    if (v224[0])
    {
      v224[1] = v224[0];
      operator delete(v224[0]);
    }

    v131 = v232;
    v132 = v233;
    while (1)
    {
      if (v131 == v132)
      {
        if (v229[0])
        {
          v229[1] = v229[0];
          operator delete(v229[0]);
        }

        v68 = v189;
        if (v230)
        {
          v231 = v230;
          operator delete(v230);
        }

        v82 = v232;
        retstr = v190;
        if (v232)
        {
LABEL_172:
          v233 = v82;
          operator delete(v82);
        }

LABEL_173:
        v67 = v68;
        if (v68 == v188)
        {
          goto LABEL_174;
        }

        goto LABEL_85;
      }

      v133 = *v131;
      if (v260 == std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(&v259, (*a4 + 224 * *v131 + 128)))
      {
        break;
      }

LABEL_166:
      ++v131;
    }

    v211 = 0;
    v212 = 0;
    v210 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v210, *(v254[0] + 24 * v133), *(v254[0] + 24 * v133 + 8), (*(v254[0] + 24 * v133 + 8) - *(v254[0] + 24 * v133)) >> 2);
    *(v210 + 6) = v99;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    centroidSizeAngleToBox3d(&v210, 1, &v202);
    v134 = v202;
    v135 = v203;
    v136 = v241;
    v137 = v244;
    v134.i32[2] = 1.0;
    v135.i32[2] = 1.0;
    v136.i32[2] = 1.0;
    v137.i32[2] = 1.0;
    v138 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v135, v135), v135, 0xCuLL), vnegq_f32(v134)), v135, vextq_s8(vuzp1q_s32(v134, v134), v134, 0xCuLL));
    v139 = vextq_s8(vuzp1q_s32(v138, v138), v138, 0xCuLL);
    v140 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v137, v137), v137, 0xCuLL), vnegq_f32(v136)), v137, vextq_s8(vuzp1q_s32(v136, v136), v136, 0xCuLL));
    v141 = vextq_s8(vuzp1q_s32(v140, v140), v140, 0xCuLL);
    v142 = vnegq_f32(v139);
    v143 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v141, v141), v141, 0xCuLL), v142), v141, vextq_s8(vuzp1q_s32(v139, v139), v139, 0xCuLL));
    v144 = v198;
    if (fabsf(v143.f32[1]) >= 0.000001)
    {
      *&v144 = v143.f32[2] / v143.f32[1];
      *(&v144 + 1) = v143.f32[0] / v143.f32[1];
      DWORD2(v144) = v143.i32[1];
    }

    v145 = vextq_s8(vextq_s8(v138, v138, 0xCuLL), v138, 8uLL);
    v146 = v242;
    v147 = v243;
    v146.i32[2] = 1.0;
    v147.i32[2] = 1.0;
    v148 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v147, v147), v147, 0xCuLL), vnegq_f32(v146)), v147, vextq_s8(vuzp1q_s32(v146, v146), v146, 0xCuLL));
    v149 = vextq_s8(vuzp1q_s32(v148, v148), v148, 0xCuLL);
    v150 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v149, v149), v149, 0xCuLL), v142), v149, v145);
    v151 = v198;
    if (fabsf(v150.f32[1]) >= 0.000001)
    {
      v151.f32[0] = v150.f32[2] / v150.f32[1];
      v151.f32[1] = v150.f32[0] / v150.f32[1];
      v151.i32[2] = v150.i32[1];
    }

    v152 = vextq_s8(vextq_s8(v148, v148, 0xCuLL), v148, 8uLL);
    v153 = v204;
    v154 = v205;
    v153.i32[2] = 1.0;
    v154.i32[2] = 1.0;
    v155 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v154, v154), v154, 0xCuLL), vnegq_f32(v153)), v154, vextq_s8(vuzp1q_s32(v153, v153), v153, 0xCuLL));
    v156 = vextq_s8(vuzp1q_s32(v155, v155), v155, 0xCuLL);
    v157 = vextq_s8(vuzp1q_s32(v156, v156), v156, 0xCuLL);
    v158 = vnegq_f32(v156);
    v159 = vmlaq_f32(vmulq_f32(v152, v158), v149, v157);
    v160 = v198;
    if (fabsf(v159.f32[1]) >= 0.000001)
    {
      v160.f32[0] = v159.f32[2] / v159.f32[1];
      v160.f32[1] = v159.f32[0] / v159.f32[1];
      v160.i32[2] = v159.i32[1];
    }

    v161 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v140, v140, 0xCuLL), v140, 8uLL), v158), v141, vextq_s8(vextq_s8(v155, v155, 0xCuLL), v155, 8uLL));
    v162 = v198;
    if (fabsf(v161.f32[1]) >= 0.000001)
    {
      v162.f32[0] = v161.f32[2] / v161.f32[1];
      v162.f32[1] = v161.f32[0] / v161.f32[1];
      v162.i32[2] = v161.i32[1];
    }

    v163 = 0;
    v202 = v144;
    v203 = v151;
    v204 = v160;
    v205 = v162;
    v206 = v144;
    v207 = v151;
    v208 = v160;
    v209 = v162;
    v164 = *a4;
    v165 = *a4 + 224 * v133;
    do
    {
      *(&v202 + v163 + 8) = *(v165 + v163 + 8);
      v163 += 16;
    }

    while (v163 != 128);
    v166 = [*(v164 + 224 * v133 + 128) isEqualToString:v196];
    if (((v166 | [*(*a4 + 224 * v133 + 128) isEqualToString:v194]) & 1) == 0)
    {
LABEL_157:
      OUBox3d::OUBox3d(__p, &v202, (*a4 + 224 * v133 + 128), *(*a4 + 224 * v133 + 144), (*a4 + 224 * v133 + 160), @"online", *(*a4 + 224 * v133 + 136));
      v173 = v190->__end_;
      if (v173 >= v190->__cap_)
      {
        p_var5 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(v190, __p);
      }

      else
      {
        v174 = *__p;
        v175 = v214;
        v176 = v216;
        *&v173->var5.var0 = v215;
        *&v173->var5.var2 = v176;
        *&v173->var1 = v174;
        *&v173->var3 = v175;
        v177 = v217;
        v178 = v218;
        v179 = v220;
        *&v173[1].var1 = v219;
        *&v173[1].var3 = v179;
        *&v173->var6.var1 = v177;
        *&v173->var7 = v178;
        v180 = v221;
        v221 = 0;
        v173[1].var5.var0 = v180;
        LODWORD(v173[1].var5.var1) = v222;
        v181 = v223;
        v223 = 0u;
        v173[1].var7 = 0;
        *&v173[1].var5.var2 = v181;
        *&v173[1].var6.var1 = 0u;
        *&v173[1].var6.var1 = *v224;
        v173[1].var7 = v225;
        *v224 = 0u;
        v225 = 0;
        *&v173[1].var8 = v226[0];
        *&v173[2].var1 = *&v226[1];
        memset(v226, 0, sizeof(v226));
        v182 = v227;
        v227 = 0;
        v173[2].var3 = v182;
        LOWORD(v173[2].var4) = v228;
        p_var5 = &v173[2].var5;
      }

      v190->__end_ = p_var5;

      if (v226[0])
      {
        operator delete(v226[0]);
      }

      if (v224[0])
      {
        v224[1] = v224[0];
        operator delete(v224[0]);
      }

      if (v210)
      {
        v211 = v210;
        operator delete(v210);
      }

      goto LABEL_166;
    }

    if ((*(&v245 + 2) - v241.f32[2]) < 1.2)
    {
      if (!v166)
      {
        DWORD2(v202) = DWORD2(v245);
        v203.i32[2] = DWORD2(v246);
        v204.i32[2] = DWORD2(v247);
        v205.i32[2] = DWORD2(v248);
LABEL_155:
        v171 = 4;
        v172 = &v206 + 2;
        do
        {
          *v172 = *(v172 - 16) + 0.1;
          v172 += 4;
          --v171;
        }

        while (v171);
        goto LABEL_157;
      }

      for (n = 0; n != 64; n += 16)
      {
        *(&v206 + n + 8) = *(&v245 + n + 8);
      }
    }

    if (v166)
    {
      for (ii = 0; ii != 64; ii += 16)
      {
        *(&v206 + ii + 8) = *(&v206 + ii + 8) + 0.01;
      }

      v169 = 4;
      v170 = &v206 + 2;
      do
      {
        *(v170 - 16) = *v170 + -0.3;
        v170 += 4;
        --v169;
      }

      while (v169);
      goto LABEL_157;
    }

    goto LABEL_155;
  }

LABEL_180:
  std::__tree<int>::destroy(&v235, v236);
  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(&v238, v239);
  if (v251)
  {
    v252 = v251;
    operator delete(v251);
  }

  if (v249)
  {
    v250 = v249;
    operator delete(v249);
  }

  __p[0] = v253;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v254;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&v255, v256[0]);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&v257, v258[0]);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&v259, v260[0]);
  v187 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<OUBox3d,)removeLowHeightStairObjects:(OU3DObjectMerger *)self
{
  v19 = *MEMORY[0x277D85DE8];
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v6 = -1227133513 * ((*(a4 + 1) - *a4) >> 5);
  result = std::vector<OUBox3d>::reserve(retstr, v6);
  if (v6 >= 1)
  {
    v9 = 0;
    v10 = v6 & 0x7FFFFFFF;
    *&v8 = 134217984;
    v16 = v8;
    do
    {
      v11 = *a4;
      v12 = (*a4 + v9);
      result = [v12[1].var5.var0 isEqualToString:{@"Stairs", v16}];
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }

      v13 = *(v11 + v9 + 72) - *(v11 + v9 + 8);
      if (v13 < 0.0)
      {
        v14 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = v16;
          v18 = v13;
          _os_log_debug_impl(&dword_25D1DB000, v14, OS_LOG_TYPE_DEBUG, "[3DOD Error] box height shouldn't be a negative value: %f", buf, 0xCu);
        }
      }

      if (v13 > 0.5)
      {
LABEL_9:
        result = std::vector<OUBox3d>::push_back[abi:ne200100](retstr, v12);
      }

      v9 += 224;
      --v10;
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<OUBox3d,)mergeOtherObjects:(OU3DObjectMerger *)self
{
  v201[7] = *MEMORY[0x277D85DE8];
  v201[0] = @"Shelf";
  v149 = @"Sink";
  v201[1] = v149;
  v143 = @"Table";
  v201[2] = v143;
  v201[3] = @"Sofa";
  v150 = @"Stairs";
  v201[4] = v150;
  v148 = @"Washer";
  v201[5] = v148;
  v142 = @"Oven";
  v201[6] = v142;
  std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](&v190, v201, 7);
  for (i = 6; i != -1; --i)
  {
  }

  v188 = 0;
  v187 = 0;
  v189 = 0;
  v185 = 0;
  v184 = 0;
  v186 = 0;
  v8 = *a4;
  v7 = *(a4 + 1);
  v9 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a4) >> 5);
  if (v9 < 1)
  {
    v13 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a4) >> 5);
  }

  else
  {
    v10 = 0;
    v11 = v9 & 0x7FFFFFFF;
    do
    {
      v6.i32[0] = 1058642330;
      box3dEnlarge((*a4 + v10), v6, 0.6, 0.6, &__p);
      std::vector<box3d>::push_back[abi:ne200100](&v187, &__p);
      v12.i32[0] = 1050253722;
      box3dEnlarge((*a4 + v10), v12, 0.3, 0.3, &__p);
      std::vector<box3d>::push_back[abi:ne200100](&v184, &__p);
      v10 += 224;
      --v11;
    }

    while (v11);
    v8 = *a4;
    v7 = *(a4 + 1);
    v13 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a4) >> 5);
  }

  memset(v183, 0, sizeof(v183));
  if (v7 != v8)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      box3dToCentroidSizeAngle((v8 + v14), &__p);
      std::vector<std::vector<float>>::push_back[abi:ne200100](v183, &__p);
      if (__p.var1)
      {
        *&__p.var2 = __p.var1;
        operator delete(__p.var1);
      }

      ++v15;
      v8 = *a4;
      v13 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
      v14 += 224;
    }

    while (v15 < v13);
  }

  v16 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
  LODWORD(v197.var1) = -1082130432;
  std::vector<float>::vector[abi:ne200100](&__p, v16);
  std::vector<std::vector<float>>::vector[abi:ne200100](v178, v16);
  if (__p.var1)
  {
    *&__p.var2 = __p.var1;
    operator delete(__p.var1);
  }

  if (v9 >= 1)
  {
    v17 = 0;
    v18 = v9 & 0x7FFFFFFF;
    v147 = 1;
    v146 = 128;
    v145 = 224;
    v19 = 24;
    while (1)
    {
      v144 = v17 + 1;
      v20 = v191 == std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(&v190, (*a4 + 224 * v17 + 128)) || v17 + 1 >= v18;
      if (!v20)
      {
        break;
      }

LABEL_47:
      v19 += 24;
      v146 += 128;
      ++v147;
      v145 += 224;
      ++v17;
      if (v144 == v18)
      {
        goto LABEL_48;
      }
    }

    v21 = v145;
    v22 = v146;
    v23 = v19;
    v24 = v147;
    while (1)
    {
      if (v191 == std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(&v190, (*a4 + v21 + 128)) || ([*(*a4 + 224 * v17 + 128) isEqualToString:*(*a4 + v21 + 128)] & 1) == 0)
      {
        goto LABEL_46;
      }

      v25 = *(*(v183[0] + 24 * v17) + 24);
      v26 = *(*(v183[0] + v23) + 24);
      if ([*(*a4 + 224 * v17 + 128) isEqualToString:v150])
      {
        box3dIou(v187 + 8 * v17, (v187 + v22), 0, &__p);
      }

      else if ([*(*a4 + 224 * v17 + 128) isEqualToString:v148])
      {
        box3dIou(v184 + 8 * v17, (v184 + v22), 0, &__p);
      }

      else
      {
        box3dIou((*a4 + 224 * v17), (*a4 + v21), 0, &__p);
      }

      v27 = *&__p.var4;
      v28 = fabsf(v25 - v26);
      if (*&__p.var4 <= 0.0 || ([*(*a4 + 224 * v17 + 128) isEqualToString:v149] & 1) == 0 && (objc_msgSend(*(*a4 + 224 * v17 + 128), "isEqualToString:", v142) & 1) == 0 && (v28 >= 0.26 || (objc_msgSend(*(*a4 + 224 * v17 + 128), "isEqualToString:", v148) & 1) == 0))
      {
        if (v27 <= 0.1)
        {
          if (v27 <= 0.0 || v28 >= 0.4 || ![*(*a4 + 224 * v17 + 128) isEqualToString:{v150, v28}])
          {
            goto LABEL_45;
          }
        }

        else if (([*(*a4 + 224 * v17 + 128) isEqualToString:v143] & 1) == 0)
        {
          v29 = [*(*a4 + 224 * v17 + 128) isEqualToString:v149];
          v30 = v28 < 0.26;
          if (v28 > 6.02)
          {
            v30 = 1;
          }

          if (((v29 | v30) & 1) == 0)
          {
            goto LABEL_45;
          }
        }
      }

LABEL_45:
      v31 = v178[0];
      *(*(v178[0] + v23) + 4 * v17) = v27;
      *(*(v31 + 24 * v17) + 4 * v24) = v27;
LABEL_46:
      ++v24;
      v23 += 24;
      v22 += 128;
      v21 += 224;
      if (v18 == v24)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_48:
  v177[0] = 0;
  v177[1] = 0;
  v176 = v177;
  LODWORD(v197.var1) = 0;
  if (*(a4 + 1) == *a4)
  {
    v173 = 0;
    v174 = 0;
    v175 = 0;
LABEL_182:
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    goto LABEL_183;
  }

  v32 = 0;
  LODWORD(v33) = 0;
  do
  {
    v34 = v179;
    if (v32 >= (v180 - v179) >> 2)
    {
      LODWORD(v33) = -1;
    }

    else
    {
      for (j = v179 + 4 * v32; *j != v33; j = &v34[4 * v33])
      {
        v33 = *&v34[4 * *j];
        *j = v33;
      }
    }

    v196[0].i32[0] = v33;
    __p.var1 = v196;
    v36 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v176, v196);
    std::vector<int>::push_back[abi:ne200100](v36 + 5, &v197);
    v32 = SLODWORD(v197.var1) + 1;
    ++LODWORD(v197.var1);
    LODWORD(v33) = v32;
  }

  while (0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5) > v32);
  v37 = v176;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  if (v176 == v177)
  {
    goto LABEL_182;
  }

  do
  {
    v38 = v37[5];
    v39 = v37[6];
    v40 = v37 + 5;
    if (v38 == v39)
    {
      goto LABEL_74;
    }

    if (v39 - v38 == 4)
    {
      std::vector<OUBox3d>::push_back[abi:ne200100](&v173, (*a4 + 224 * *v38));
      goto LABEL_74;
    }

    if (v200 & 1) != 0 || ([*(*a4 + 224 * **v40 + 128) isEqualToString:v150] & 1) != 0 || (objc_msgSend(*(*a4 + 224 * **v40 + 128), "isEqualToString:", v149) & 1) != 0 || (objc_msgSend(*(*a4 + 224 * **v40 + 128), "isEqualToString:", v148) & 1) != 0 || (objc_msgSend(*(*a4 + 224 * **v40 + 128), "isEqualToString:", v142))
    {
      v41 = **v40;
      v42 = *a4;
      v43 = [MEMORY[0x277CCAD78] UUID];
      OUBox3d::OUBox3d(&__p, &v197, (v42 + 224 * v41 + 128), v43, v196, @"online", 1.0);
      v44 = v174;
      if (v174 >= v175)
      {
        v54 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(&v173, &__p);
      }

      else
      {
        v45 = *&__p.var1;
        v46 = *&__p.var3;
        v47 = *&__p.var5.var2;
        *&v174->var5.var0 = *&__p.var5.var0;
        *&v44->var5.var2 = v47;
        *&v44->var1 = v45;
        *&v44->var3 = v46;
        v48 = *&__p.var6.var1;
        v49 = *&__p.var7;
        v50 = v164;
        *&v44[1].var1 = v163;
        *&v44[1].var3 = v50;
        *&v44->var6.var1 = v48;
        *&v44->var7 = v49;
        v51 = v165;
        v165 = 0;
        v44[1].var5.var0 = v51;
        LODWORD(v44[1].var5.var1) = v166;
        v52 = v167;
        v167 = 0u;
        v44[1].var7 = 0;
        *&v44[1].var5.var2 = v52;
        *&v44[1].var6.var1 = 0u;
        *&v44[1].var6.var1 = *v168;
        v44[1].var7 = v169;
        *v168 = 0u;
        v169 = 0;
        *&v44[1].var8 = v170[0];
        *&v44[2].var1 = *&v170[1];
        memset(v170, 0, sizeof(v170));
        v53 = v171;
        v171 = 0;
        v44[2].var3 = v53;
        LOWORD(v44[2].var4) = v172;
        v54 = (v44 + 224);
      }

      v174 = v54;

      if (v170[0])
      {
        operator delete(v170[0]);
      }

      if (v168[0])
      {
        v168[1] = v168[0];
        operator delete(v168[0]);
      }

      if (v196[0].i64[0])
      {
        v196[0].i64[1] = v196[0].i64[0];
        operator delete(v196[0].i64[0]);
      }

      goto LABEL_74;
    }

    v57 = v37[5];
    v58 = v37[6] - v57;
    if (v58)
    {
      v59 = v58 >> 2;
      if ((v58 >> 2) <= 1)
      {
        v59 = 1;
      }

      v60 = -3.4028e38;
      v61 = 3.4028e38;
      do
      {
        v62 = *v57;
        v57 += 4;
        v63 = *(*(v183[0] + 24 * v62) + 24);
        if (v61 >= v63)
        {
          v61 = v63;
        }

        if (v63 >= v60)
        {
          v60 = v63;
        }

        --v59;
      }

      while (v59);
    }

    else
    {
      v61 = 3.4028e38;
      v60 = -3.4028e38;
    }

    std::vector<std::vector<int>>::vector[abi:ne200100](&v160, (floorf((v60 - v61) / 0.3) + 1.0));
    v64 = v37[5];
    if (v37[6] != v64)
    {
      v65 = 0;
      v66 = 0;
      do
      {
        std::vector<int>::push_back[abi:ne200100]((v160 + 24 * vcvtms_s32_f32((*(*(v183[0] + 24 * v64[v65]) + 24) - v61) / 0.3)), &v64[v65]);
        ++v66;
        v64 = v37[5];
        ++v65;
      }

      while (v66 < v37[6] - v64);
    }

    v157 = 0;
    v158 = 0;
    v159 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
    v68 = v160;
    v67 = v161;
    if (v160 == v161)
    {
      v83 = 0;
      __src = 0;
      v152 = 0;
      v153 = 0;
    }

    else
    {
      do
      {
        if (*v68 != *(v68 + 8))
        {
          box3dToCentroidSizeAngle(v196, &v192);
          v69 = **v40;
          v70 = *a4;
          v71 = [MEMORY[0x277CCAD78] UUID];
          OUBox3d::OUBox3d(&__p, v196, (v70 + 224 * v69 + 128), v71, &__src, @"online", 1.0);
          v72 = v158;
          if (v158 >= v159)
          {
            v82 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(&v157, &__p);
          }

          else
          {
            v73 = *&__p.var1;
            v74 = *&__p.var3;
            v75 = *&__p.var5.var2;
            *(v158 + 32) = *&__p.var5.var0;
            *(v72 + 48) = v75;
            *v72 = v73;
            *(v72 + 16) = v74;
            v76 = *&__p.var6.var1;
            v77 = *&__p.var7;
            v78 = v164;
            *(v72 + 96) = v163;
            *(v72 + 112) = v78;
            *(v72 + 64) = v76;
            *(v72 + 80) = v77;
            v79 = v165;
            v165 = 0;
            *(v72 + 128) = v79;
            *(v72 + 136) = v166;
            v80 = v167;
            v167 = 0u;
            *(v72 + 176) = 0;
            *(v72 + 144) = v80;
            *(v72 + 160) = 0u;
            *(v72 + 160) = *v168;
            *(v72 + 176) = v169;
            *v168 = 0u;
            v169 = 0;
            *(v72 + 184) = v170[0];
            *(v72 + 192) = *&v170[1];
            memset(v170, 0, sizeof(v170));
            v81 = v171;
            v171 = 0;
            *(v72 + 208) = v81;
            *(v72 + 216) = v172;
            v82 = v72 + 224;
          }

          v158 = v82;

          if (v170[0])
          {
            operator delete(v170[0]);
          }

          if (v168[0])
          {
            v168[1] = v168[0];
            operator delete(v168[0]);
          }

          *&__p.var1 = (*(v192 + 3) * *(v192 + 4)) * ((*(v68 + 8) - *v68) >> 2);
          std::vector<float>::push_back[abi:ne200100](&v154, &__p);
          if (__src)
          {
            v152 = __src;
            operator delete(__src);
          }

          if (v192)
          {
            v193 = v192;
            operator delete(v192);
          }
        }

        v68 += 24;
      }

      while (v68 != v67);
      v83 = 0x6DB6DB6DB6DB6DB7 * ((v158 - v157) >> 5);
      __src = 0;
      v152 = 0;
      v153 = 0;
      if (v83 != (v155 - v154) >> 2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "AddPositiveIntegers arguments must be positive");
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
      }
    }

    v195 = -1082130432;
    std::vector<float>::vector[abi:ne200100](&__p, v83);
    std::vector<std::vector<float>>::vector[abi:ne200100](v196, v83);
    if (__p.var1)
    {
      *&__p.var2 = __p.var1;
      operator delete(__p.var1);
    }

    v85 = v157;
    v84 = v158;
    if (v158 != v157)
    {
      v86 = 0;
      v87 = 224;
      v88 = 24;
      do
      {
        v89 = v86++;
        v90 = 0x6DB6DB6DB6DB6DB7 * ((v84 - v85) >> 5);
        if (v86 < v90)
        {
          v91 = v87;
          v92 = v88;
          v93 = v86;
          do
          {
            memset(&__p, 0, 48);
            box3dIou((v85 + 224 * v89), (v85 + v91), 0, &__p);
            v94 = v196[0].i64[0];
            var4 = __p.var4;
            *(*(v196[0].i64[0] + v92) + 4 * v89) = __p.var4;
            *(*(v94 + 24 * v89) + 4 * v93++) = var4;
            v85 = v157;
            v84 = v158;
            v90 = 0x6DB6DB6DB6DB6DB7 * ((v158 - v157) >> 5);
            v92 += 24;
            v91 += 224;
          }

          while (v93 < v90);
        }

        v88 += 24;
        v87 += 224;
      }

      while (v86 < v90);
    }

    v152 = __src;
    var1 = __p.var1;
    for (k = __p.var1 == *&__p.var2; !k; k = v192 == v112)
    {
      v98 = *var1;
      v99 = v152;
      if (v152 >= v153)
      {
        v101 = __src;
        v102 = v152 - __src;
        v103 = (v152 - __src) >> 2;
        v104 = v103 + 1;
        if ((v103 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v105 = v153 - __src;
        if ((v153 - __src) >> 1 > v104)
        {
          v104 = v105 >> 1;
        }

        v20 = v105 >= 0x7FFFFFFFFFFFFFFCLL;
        v106 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v106 = v104;
        }

        if (v106)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v106);
        }

        v107 = (4 * v103);
        v108 = &v107[-((v152 - __src) >> 2)];
        *v107 = v98;
        v100 = (v107 + 1);
        memcpy(v108, v101, v102);
        v109 = __src;
        __src = v108;
        v152 = v100;
        v153 = 0;
        if (v109)
        {
          operator delete(v109);
        }
      }

      else
      {
        *v152 = v98;
        v100 = v99 + 4;
      }

      v152 = v100;
      v193 = 0;
      v192 = 0;
      v194 = 0;
      v110 = __p.var1;
      v111 = *&__p.var2;
      if (*&__p.var2 - __p.var1 < 9)
      {
        v112 = 0;
        if (__p.var1)
        {
          goto LABEL_150;
        }
      }

      else
      {
        v112 = 0;
        v113 = 24 * v98;
        v114 = 1;
        do
        {
          v115 = v110[v114];
          if (*(*(v196[0].i64[0] + v113) + 4 * v115) <= 0.3)
          {
            if (v112 >= v194)
            {
              v116 = v192;
              v117 = v112 - v192;
              v118 = (v112 - v192) >> 3;
              v119 = v118 + 1;
              if ((v118 + 1) >> 61)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v120 = v194 - v192;
              if ((v194 - v192) >> 2 > v119)
              {
                v119 = v120 >> 2;
              }

              v20 = v120 >= 0x7FFFFFFFFFFFFFF8;
              v121 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v20)
              {
                v121 = v119;
              }

              if (v121)
              {
                _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&v192, v121);
              }

              v122 = v118;
              v123 = (8 * v118);
              v124 = &v123[-v122];
              *v123 = v115;
              v112 = (v123 + 1);
              memcpy(v124, v116, v117);
              v125 = v192;
              v192 = v124;
              v193 = v112;
              v194 = 0;
              if (v125)
              {
                operator delete(v125);
              }
            }

            else
            {
              *v112 = v115;
              v112 += 8;
            }

            v193 = v112;
            v110 = __p.var1;
            v111 = *&__p.var2;
          }

          ++v114;
        }

        while (v114 < (v111 - v110) >> 3);
        if (v110)
        {
LABEL_150:
          *&__p.var2 = v110;
          operator delete(v110);
          v112 = v193;
        }
      }

      var1 = v192;
      __p.var1 = v192;
      *&__p.var2 = v112;
      __p.var3 = v194;
    }

    if (var1)
    {
      *&__p.var2 = var1;
      operator delete(var1);
    }

    __p.var1 = v196;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
    v127 = __src;
    v126 = v152;
    if (__src != v152)
    {
      v128 = v174;
      do
      {
        v129 = (v157 + 224 * *v127);
        if (v128 >= v175)
        {
          v128 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d&>(&v173, v129);
        }

        else
        {
          OUBox3d::OUBox3d(v128, v129);
          v128 = (v128 + 224);
        }

        v174 = v128;
        ++v127;
      }

      while (v127 != v126);
      v127 = __src;
    }

    if (v127)
    {
      v152 = v127;
      operator delete(v127);
    }

    if (v154)
    {
      v155 = v154;
      operator delete(v154);
    }

    __p.var1 = &v157;
    std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&__p);
    __p.var1 = &v160;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
LABEL_74:
    v55 = v37[1];
    if (v55)
    {
      do
      {
        v56 = v55;
        v55 = *v55;
      }

      while (v55);
    }

    else
    {
      do
      {
        v56 = v37[2];
        k = *v56 == v37;
        v37 = v56;
      }

      while (!k);
    }

    v37 = v56;
  }

  while (v56 != v177);
  v130 = v173;
  v131 = v174;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  if (v131 != v130)
  {
    v132 = 0;
    v133 = 0;
    do
    {
      OUBox3d::OUBox3d(&__p, (v130 + v132));
      if ([*(v173 + v132 + 128) isEqualToString:v143])
      {
        box3dToCentroidSizeAngle((v173 + v132), v196);
        v134 = v196[0].i64[0];
        v135 = *(v196[0].i64[0] + 12);
        v136 = *(v196[0].i64[0] + 16);
        if (v135 < v136)
        {
          v137 = *(v196[0].i64[0] + 24) + 1.57079633;
          *(v196[0].i64[0] + 24) = v137;
          *(v134 + 12) = v136;
          *(v134 + 16) = v135;
        }

        centroidSizeAngleToBox3d(v196, 1, &v197);
        __p = v197;
        v163 = v198;
        v164 = v199;
        if (v196[0].i64[0])
        {
          v196[0].i64[1] = v196[0].i64[0];
          operator delete(v196[0].i64[0]);
        }
      }

      std::vector<OUBox3d>::push_back[abi:ne200100](retstr, &__p);

      if (v170[0])
      {
        operator delete(v170[0]);
      }

      if (v168[0])
      {
        v168[1] = v168[0];
        operator delete(v168[0]);
      }

      ++v133;
      v130 = v173;
      v132 += 224;
    }

    while (v133 < 0x6DB6DB6DB6DB6DB7 * ((v174 - v173) >> 5));
  }

LABEL_183:
  __p.var1 = &v173;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(&v176, v177[0]);
  __p.var1 = v178;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }

  if (v179)
  {
    v180 = v179;
    operator delete(v179);
  }

  __p.var1 = v183;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v184)
  {
    v185 = v184;
    operator delete(v184);
  }

  if (v187)
  {
    v188 = v187;
    operator delete(v187);
  }

  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&v190, v191[0]);
  v139 = *MEMORY[0x277D85DE8];
  return result;
}

- (vector<OUBox3d,)crossClassNMS:(OU3DObjectMerger *)self
{
  v100[0] = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 1);
  v7 = *a4;
  v8 = (v6 - *a4) >> 5;
  v9 = 0x6DB6DB6DB6DB6DB7 * v8;
  if ((0x6DB6DB6DB6DB6DB7 * v8) > 1)
  {
    std::vector<float>::vector[abi:ne200100](__p, 0x6DB6DB6DB6DB6DB7 * v8);
    std::vector<std::vector<float>>::vector[abi:ne200100](v84, v9);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
    std::vector<float>::vector[abi:ne200100](__p, v12);
    std::vector<std::vector<float>>::vector[abi:ne200100](v83, v12);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v13 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
    std::vector<float>::vector[abi:ne200100](__p, v13);
    std::vector<std::vector<float>>::vector[abi:ne200100](v82, v13);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v14 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
    std::vector<float>::vector[abi:ne200100](__p, v14);
    std::vector<std::vector<float>>::vector[abi:ne200100](v81, v14);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v64 = retstr;
    v16 = *a4;
    v15 = *(a4 + 1);
    if (v15 == *a4)
    {
      v21 = 0x6DB6DB6DB6DB6DB7 * ((v15 - *a4) >> 5);
    }

    else
    {
      v17 = 0;
      v18 = 24;
      v19 = 224;
      do
      {
        v20 = v17++;
        v21 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v16) >> 5);
        if (v17 < v21)
        {
          v22 = v18;
          v23 = v19;
          v65 = v17;
          do
          {
            v79 = 0u;
            v80 = 0u;
            *__p = 0u;
            box3dIou((v16 + 224 * v20), (v16 + v23), 0, __p);
            v24 = __p[0];
            v25 = v82[0];
            *(*(v82[0] + 24 * v20) + 4 * v17) = __p[0];
            *(*(v25 + v22) + 4 * v20) = v24;
            v26 = HIDWORD(__p[1]);
            v27 = v81[0];
            *(*(v81[0] + 24 * v20) + 4 * v17) = HIDWORD(__p[1]);
            *(*(v27 + v22) + 4 * v20) = v26;
            v28 = DWORD2(v79);
            v29 = v84[0];
            *(*(v84[0] + 24 * v20) + 4 * v17) = DWORD2(v79);
            *(*(v29 + v22) + 4 * v20) = v28;
            v30 = DWORD1(v80);
            v31 = v83[0];
            *(*(v83[0] + 24 * v20) + 4 * v17) = DWORD1(v80);
            *(*(v31 + v22) + 4 * v20) = v30;
            ++v17;
            v16 = *a4;
            v15 = *(a4 + 1);
            v21 = 0x6DB6DB6DB6DB6DB7 * ((v15 - *a4) >> 5);
            v23 += 224;
            v22 += 24;
          }

          while (v17 < v21);
          v17 = v65;
        }

        v19 += 224;
        v18 += 24;
      }

      while (v17 < v21);
    }

    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::vector(v77, v21);
    v32 = a4;
    RemoveFPCabinetFromRefridge(a4, v77);
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v33 = *a4;
    if (v32[1] != *v32)
    {
      v34 = 0;
      v35 = 136;
      do
      {
        if (fabsf(*(v33 + v35) + -1.0) >= 0.00000011921)
        {
          std::vector<float>::push_back[abi:ne200100](&v74, (v33 + v35));
        }

        else
        {
          box3dToCentroidSizeAngle((v33 + v35 - 136), __p);
          *&v71 = (*(__p[0] + 3) * *(__p[0] + 4)) + 1.0;
          std::vector<float>::push_back[abi:ne200100](&v74, &v71);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        ++v34;
        v33 = *a4;
        v35 += 224;
      }

      while (v34 < 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5));
    }

    v36 = @"Sofa";
    v99 = v36;
    v72 = 0;
    v73 = 0;
    v71 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v71, &v99, v100, 1uLL);
    v69 = &v71;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v69);

    v37 = @"Table";
    v98 = v37;
    v72 = 0;
    v73 = 0;
    v71 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v71, &v98, &v99, 1uLL);
    v69 = &v71;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v69);

    v38 = @"Bed";
    v97[0] = v38;
    v39 = @"Chair";
    v97[1] = v39;
    v72 = 0;
    v73 = 0;
    v71 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v71, v97, &v98, 2uLL);
    v69 = &v71;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v69);
    for (i = 1; i != -1; --i)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v71, "cross_class_nms_sofa");
    if (SHIBYTE(v73) < 0)
    {
      operator delete(v71);
    }

    v41 = v36;
    v96[0] = v41;
    v42 = v39;
    v96[1] = v42;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v66, v96, v97, 2uLL);
    v85 = &v66;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v85);
    for (j = 1; j != -1; --j)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v66, "cross_class_nms_sofa_chair");
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    v44 = v37;
    v95[0] = v44;
    v45 = v42;
    v95[1] = v45;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v66, v95, v96, 2uLL);
    v85 = &v66;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v85);
    for (k = 1; k != -1; --k)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v66, "cross_class_nms_table_chair");
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    v94[0] = v41;
    v47 = v38;
    v94[1] = v47;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v66, v94, v95, 2uLL);
    v85 = &v66;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v85);
    for (m = 1; m != -1; --m)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v66, "cross_class_nms_sofa_bed");
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    v93[0] = @"Dishwasher";
    v49 = @"Sink";
    v93[1] = v49;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v66, v93, v94, 2uLL);
    v85 = &v66;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v85);
    for (n = 1; n != -1; --n)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v66, "cross_class_nms_dish_sink");
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    v92[0] = @"Bathtub";
    v92[1] = v49;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v66, v92, v93, 2uLL);
    v85 = &v66;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v85);
    for (ii = 1; ii != -1; --ii)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v66, "cross_class_nms_bath_sink");
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    v52 = @"Cabinet";
    v91 = v52;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v66, &v91, v92, 1uLL);
    v85 = &v66;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v85);

    std::string::basic_string[abi:ne200100]<0>(&v66, "cross_class_nms_cabinet");
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    v90 = v47;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v66, &v90, &v91, 1uLL);
    v85 = &v66;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v85);

    std::string::basic_string[abi:ne200100]<0>(&v66, "cross_class_nms_bed.json");
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    v53 = @"Shelf";
    v89 = v53;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v66, &v89, &v90, 1uLL);
    v85 = &v66;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v85);

    std::string::basic_string[abi:ne200100]<0>(&v66, "cross_class_nms_shelf_iou3ds_inner");
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    v54 = v52;
    v88[0] = v54;
    v55 = v44;
    v88[1] = v55;
    v56 = v53;
    v88[2] = v56;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v66, v88, &v89, 3uLL);
    v85 = &v66;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v85);
    for (jj = 2; jj != -1; --jj)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v66, "cross_class_nms_cab_tab_shelf_iou3ds");
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    v87[0] = v54;
    v87[1] = v55;
    v87[2] = v56;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v66, v87, v88, 3uLL);
    v85 = &v66;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v85);
    for (kk = 2; kk != -1; --kk)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v66, "cross_class_nms_cab_tab_shelf_iou3ds_inner");
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    v86 = v45;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v66, &v86, v87, 1uLL);
    v85 = &v66;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v85);

    std::string::basic_string[abi:ne200100]<0>(&v66, "cross_class_nms_chair");
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    *v64 = 0;
    v64[1] = 0;
    v64[2] = 0;
    v59 = *a4;
    v60 = *(a4 + 1);
    if (v60 != *a4)
    {
      v61 = 0;
      v62 = 0;
      do
      {
        if (((*(v77[0] + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
        {
          std::vector<OUBox3d>::push_back[abi:ne200100](v64, (v59 + v61));
          v59 = *v32;
          v60 = v32[1];
        }

        ++v62;
        v61 += 224;
      }

      while (v62 < 0x6DB6DB6DB6DB6DB7 * ((v60 - v59) >> 5));
    }

    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v77[0])
    {
      operator delete(v77[0]);
    }

    __p[0] = v81;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v82;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v83;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v84;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
    v63 = *MEMORY[0x277D85DE8];
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    v10 = *MEMORY[0x277D85DE8];

    return std::vector<OUBox3d>::__init_with_size[abi:ne200100]<OUBox3d*,OUBox3d*>(retstr, v7, v6, v9);
  }

  return result;
}

@end