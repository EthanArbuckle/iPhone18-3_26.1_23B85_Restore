@interface DOCTransitionUtils
+ (void)performZoomTransitionInContainer:(id)a3 withSourceView:(id)a4 destinationView:(id)a5 duration:(double)a6 alterativeView:(id)a7 thumbnail:(id)a8 thumbnailStyle:(unint64_t)a9 location:(CGRect)a10 presenting:(BOOL)a11 fadingSource:(BOOL)a12 completion:(id)a13;
@end

@implementation DOCTransitionUtils

+ (void)performZoomTransitionInContainer:(id)a3 withSourceView:(id)a4 destinationView:(id)a5 duration:(double)a6 alterativeView:(id)a7 thumbnail:(id)a8 thumbnailStyle:(unint64_t)a9 location:(CGRect)a10 presenting:(BOOL)a11 fadingSource:(BOOL)a12 completion:(id)a13
{
  height = a10.size.height;
  width = a10.size.width;
  y = a10.origin.y;
  x = a10.origin.x;
  v18 = a9;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a7;
  v27 = a8;
  v216 = a13;
  if (!v27)
  {
    [v23 center];
    x = v28 + -20.0;
    [v23 center];
    y = v29 + -20.0;
    height = 40.0;
    width = 40.0;
  }

  v30 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v27];
  [v30 setContentMode:1];
  [v30 setFrame:{x, y, width, height}];
  [v30 setAccessibilityIgnoresInvertColors:1];
  if (v18)
  {
    if ((v18 & 2) != 0)
    {
      v13 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v13 scale];
      v31 = 1.0 / v32;
    }

    else
    {
      v31 = 1.0;
    }

    v33 = [v30 layer];
    [v33 setBorderWidth:v31];

    if ((v18 & 2) != 0)
    {
    }

    [v30 frame];
    v36 = DOCScaledThumbnailCornerRadius(v34, v35);
    v37 = [v30 layer];
    [v37 setCornerRadius:v36];

    v38 = *MEMORY[0x1E69796E8];
    v39 = [v30 layer];
    [v39 setCornerCurve:v38];

    v40 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.121568627];
    v41 = [v40 CGColor];
    v42 = [v30 layer];
    [v42 setBorderColor:v41];

    [v30 setClipsToBounds:1];
  }

  [v23 addSubview:v30];
  if (v26)
  {
    v43 = [v26 snapshotViewAfterScreenUpdates:1];
    [v26 bounds];
    [v26 convertRect:v23 toView:?];
    [v43 setFrame:?];
    [v23 addSubview:v43];
    [v26 setAlpha:0.0];
  }

  else
  {
    v43 = 0;
  }

  v44 = *(MEMORY[0x1E695EFD0] + 16);
  v289 = *MEMORY[0x1E695EFD0];
  v290 = v44;
  v291 = *(MEMORY[0x1E695EFD0] + 32);
  *&v288.a = v289;
  *&v288.c = v44;
  *&v288.tx = v291;
  *&v287.a = v289;
  *&v287.c = v44;
  *&v287.tx = v291;
  v284 = v289;
  v285 = v44;
  v286 = v291;
  *&v283.a = v289;
  *&v283.c = v44;
  *&v283.tx = v291;
  v222 = v44;
  v225 = v289;
  *&v282.a = v289;
  *&v282.c = v44;
  v220 = v291;
  *&v282.tx = v291;
  v45 = [v23 traitCollection];
  [v45 displayScale];
  v47 = v46;

  v219 = v27;
  if (a11)
  {
    if (v43)
    {
      [v43 frame];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;
      [v30 frame];
      v58 = DOCAdaptSizeToRect(0, v49, v51, v53, v55, v56, v57, v47);
      v60 = v59;
      v62 = v61;
      [v43 frame];
      v215 = v63;
      v210 = v64;
      [v30 frame];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v208 = v71;
      v214 = 0.0;
      if (a12)
      {
        v72 = 0.0;
      }

      else
      {
        v72 = 1.0;
      }

      v212 = 1.0;
      v213 = v72;
      [v30 center];
      v74 = v73;
      [v43 center];
      v76 = v74 - v75;
      [v30 center];
      v78 = v77;
      [v43 center];
      *&v281.a = v289;
      *&v281.c = v222;
      *&v281.tx = v291;
      CGAffineTransformTranslate(&v282, &v281, v76, v78 - v79);
      v280 = v282;
      v80 = v62;
      CGAffineTransformScale(&v281, &v280, v70 / v60, v70 / v60);
      v282 = v281;
      [v43 frame];
      v209 = v60;
      v82 = v81 - v60;
      v83 = v68;
      v84 = v66;
      v85 = v82 * 0.5;
      [v43 frame];
      v280 = v282;
      CGAffineTransformTranslate(&v281, &v280, v85, (v86 - v62) * 0.5);
      v282 = v281;
    }

    else
    {
      [v24 frame];
      v120 = v119;
      v122 = v121;
      v124 = v123;
      v126 = v125;
      [v30 frame];
      v129 = DOCAdaptSizeToRect(0, v120, v122, v124, v126, v127, v128, v47);
      v131 = v130;
      v133 = v132;
      [v24 frame];
      v215 = v134;
      v210 = v135;
      [v30 frame];
      v137 = v136;
      v139 = v138;
      v70 = v140;
      v208 = v141;
      v214 = 0.0;
      if (a12)
      {
        v142 = 0.0;
      }

      else
      {
        v142 = 1.0;
      }

      v212 = 1.0;
      v213 = v142;
      [v30 center];
      v144 = v143;
      [v25 center];
      v146 = v144 - v145;
      [v30 center];
      v148 = v147;
      [v25 center];
      *&v281.a = v289;
      *&v281.c = v222;
      *&v281.tx = v291;
      v150 = v146;
      v80 = v133;
      CGAffineTransformTranslate(&v288, &v281, v150, v148 - v149);
      v280 = v288;
      CGAffineTransformScale(&v281, &v280, v70 / v131, v70 / v131);
      v288 = v281;
      [v25 frame];
      v209 = v131;
      v152 = v151 - v131;
      v83 = v139;
      v84 = v137;
      v153 = v152 * 0.5;
      [v25 frame];
      v280 = v288;
      CGAffineTransformTranslate(&v281, &v280, v153, (v154 - v133) * 0.5);
      v288 = v281;
    }

    v211 = 0.0;
  }

  else
  {
    [v30 frame];
    v215 = v87;
    v209 = v89;
    v210 = v88;
    v90 = v89;
    v207 = v91;
    if (v43)
    {
      [v43 frame];
      v93 = v92;
      v95 = v94;
      v97 = v96;
      v99 = v98;
      [v30 frame];
      v102 = DOCAdaptSizeToRect(0, v93, v95, v97, v99, v100, v101, v47);
      v70 = v103;
      v105 = v104;
      [v43 frame];
      v84 = v106;
      v83 = v107;
      v213 = 0.0;
      v211 = 1.0;
      if (a12)
      {
        v108 = 0.0;
      }

      else
      {
        v108 = 1.0;
      }

      v214 = v108;
      [v30 center];
      v110 = v109;
      [v43 center];
      v112 = v110 - v111;
      [v30 center];
      v114 = v113;
      [v43 center];
      *&v281.a = v289;
      *&v281.c = v222;
      *&v281.tx = v291;
      CGAffineTransformTranslate(&v283, &v281, v112, v114 - v115);
      v280 = v283;
      CGAffineTransformScale(&v281, &v280, v90 / v70, v90 / v70);
      v283 = v281;
      [v43 frame];
      v117 = (v116 - v70) * 0.5;
      [v43 frame];
      v208 = v105;
      v280 = v283;
      CGAffineTransformTranslate(&v281, &v280, v117, (v118 - v105) * 0.5);
      v283 = v281;
    }

    else
    {
      [v25 frame];
      v156 = v155;
      v158 = v157;
      v160 = v159;
      v162 = v161;
      [v30 frame];
      v165 = DOCAdaptSizeToRect(0, v156, v158, v160, v162, v163, v164, v47);
      v70 = v166;
      v168 = v167;
      [v25 frame];
      v84 = v169;
      v83 = v170;
      v213 = 0.0;
      v211 = 1.0;
      if (a12)
      {
        v171 = 0.0;
      }

      else
      {
        v171 = 1.0;
      }

      v214 = v171;
      [v30 center];
      v173 = v172;
      [v25 center];
      v175 = v173 - v174;
      [v30 center];
      v177 = v176;
      [v25 center];
      *&v281.a = v289;
      *&v281.c = v222;
      *&v281.tx = v291;
      CGAffineTransformTranslate(&v287, &v281, v175, v177 - v178);
      v280 = v287;
      CGAffineTransformScale(&v281, &v280, v90 / v70, v90 / v70);
      v287 = v281;
      [v25 frame];
      v180 = (v179 - v70) * 0.5;
      [v25 frame];
      v208 = v168;
      v280 = v287;
      CGAffineTransformTranslate(&v281, &v280, v180, (v181 - v168) * 0.5);
      v287 = v281;
    }

    v212 = 0.0;
    v80 = v207;
  }

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v183 = IsReduceMotionEnabled;
  v217 = v26;
  if (IsReduceMotionEnabled)
  {
    v284 = v225;
    v285 = v222;
    v286 = v220;
    *&v287.a = v225;
    *&v287.c = v222;
    *&v287.tx = v220;
    *&v288.a = v225;
    *&v288.c = v222;
    *&v288.tx = v220;
    v289 = v225;
    v290 = v222;
    v291 = v220;
    v184 = v215;
    if (a11)
    {
      v282 = v283;
      v80 = v208;
      v185 = v208;
      v223 = v70;
      v186 = v83;
      v184 = v84;
    }

    else
    {
      v283 = v282;
      v185 = v80;
      v70 = v209;
      v83 = v210;
      v223 = v209;
      v186 = v210;
      v84 = v215;
    }
  }

  else
  {
    v184 = v215;
    v185 = v80;
    v186 = v83;
    v83 = v210;
    v223 = v70;
    v80 = v208;
    v70 = v209;
  }

  v260[0] = MEMORY[0x1E69E9820];
  v260[1] = 3221225472;
  v260[2] = __179__DOCTransitionUtils_performZoomTransitionInContainer_withSourceView_destinationView_duration_alterativeView_thumbnail_thumbnailStyle_location_presenting_fadingSource_completion___block_invoke;
  v260[3] = &unk_1E87832C0;
  v279 = a11;
  v187 = v30;
  v261 = v187;
  v226 = v23;
  v262 = v226;
  v266 = v184;
  v267 = v83;
  v268 = v70;
  v269 = v185;
  v188 = v24;
  v263 = v188;
  v270 = 0x3FF0000000000000;
  v189 = v25;
  v264 = v189;
  v271 = v213;
  v272 = v211;
  v190 = v43;
  v274 = v289;
  v275 = v290;
  v276 = v291;
  v277 = v287;
  v278 = v283;
  v265 = v190;
  v273 = v212;
  v191 = MEMORY[0x1E692E2E0](v260);
  v242[0] = MEMORY[0x1E69E9820];
  v242[1] = 3221225472;
  v242[2] = __179__DOCTransitionUtils_performZoomTransitionInContainer_withSourceView_destinationView_duration_alterativeView_thumbnail_thumbnailStyle_location_presenting_fadingSource_completion___block_invoke_2;
  v242[3] = &unk_1E87832E8;
  v192 = v187;
  v243 = v192;
  v247 = v84;
  v248 = v186;
  v249 = v223;
  v250 = v80;
  v193 = v190;
  v244 = v193;
  v251 = v211;
  v194 = v188;
  v245 = v194;
  v252 = v214;
  v195 = v189;
  v246 = v195;
  v253 = 0x3FF0000000000000;
  v254 = v212;
  v255 = v282;
  v256 = v288;
  v258 = v285;
  v259 = v286;
  v257 = v284;
  v196 = MEMORY[0x1E692E2E0](v242);
  v235[0] = MEMORY[0x1E69E9820];
  v235[1] = 3221225472;
  v235[2] = __179__DOCTransitionUtils_performZoomTransitionInContainer_withSourceView_destinationView_duration_alterativeView_thumbnail_thumbnailStyle_location_presenting_fadingSource_completion___block_invoke_3;
  v235[3] = &unk_1E8783310;
  v224 = v194;
  v236 = v224;
  v197 = v192;
  v237 = v197;
  v198 = v193;
  v238 = v198;
  v221 = v195;
  v239 = v221;
  v199 = v217;
  v240 = v199;
  v200 = v216;
  v241 = v200;
  v201 = MEMORY[0x1E692E2E0](v235);
  v191[2](v191);
  v202 = MEMORY[0x1E69DD250];
  if (v183)
  {
    v229[0] = MEMORY[0x1E69E9820];
    v229[1] = 3221225472;
    v229[2] = __179__DOCTransitionUtils_performZoomTransitionInContainer_withSourceView_destinationView_duration_alterativeView_thumbnail_thumbnailStyle_location_presenting_fadingSource_completion___block_invoke_6;
    v229[3] = &unk_1E87823C0;
    v203 = &v230;
    v230 = v196;
    v227[0] = MEMORY[0x1E69E9820];
    v227[1] = 3221225472;
    v227[2] = __179__DOCTransitionUtils_performZoomTransitionInContainer_withSourceView_destinationView_duration_alterativeView_thumbnail_thumbnailStyle_location_presenting_fadingSource_completion___block_invoke_7;
    v227[3] = &unk_1E8783338;
    v204 = &v228;
    v228 = v201;
    v205 = v201;
    [v202 animateWithDuration:v229 animations:v227 completion:a6];
  }

  else
  {
    v233[0] = MEMORY[0x1E69E9820];
    v233[1] = 3221225472;
    v233[2] = __179__DOCTransitionUtils_performZoomTransitionInContainer_withSourceView_destinationView_duration_alterativeView_thumbnail_thumbnailStyle_location_presenting_fadingSource_completion___block_invoke_4;
    v233[3] = &unk_1E87823C0;
    v203 = &v234;
    v234 = v196;
    v231[0] = MEMORY[0x1E69E9820];
    v231[1] = 3221225472;
    v231[2] = __179__DOCTransitionUtils_performZoomTransitionInContainer_withSourceView_destinationView_duration_alterativeView_thumbnail_thumbnailStyle_location_presenting_fadingSource_completion___block_invoke_5;
    v231[3] = &unk_1E8783338;
    v204 = &v232;
    v232 = v201;
    v206 = v201;
    [v202 _animateUsingSpringWithDuration:0 delay:v233 options:v231 mass:a6 stiffness:0.0 damping:3.0 initialVelocity:1000.0 animations:500.0 completion:0.0];
  }
}

uint64_t __179__DOCTransitionUtils_performZoomTransitionInContainer_withSourceView_destinationView_duration_alterativeView_thumbnail_thumbnailStyle_location_presenting_fadingSource_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 280) == 1)
  {
    [*(a1 + 40) center];
    [*(a1 + 32) setCenter:?];
  }

  [*(a1 + 32) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  [*(a1 + 48) setAlpha:*(a1 + 104)];
  [*(a1 + 56) setAlpha:*(a1 + 112)];
  [*(a1 + 32) setAlpha:*(a1 + 120)];
  [*(a1 + 64) setAlpha:*(a1 + 128)];
  v2 = *(a1 + 152);
  v6 = *(a1 + 136);
  v7 = v2;
  v8 = *(a1 + 168);
  [*(a1 + 48) setTransform:&v6];
  v3 = *(a1 + 200);
  v6 = *(a1 + 184);
  v7 = v3;
  v8 = *(a1 + 216);
  [*(a1 + 56) setTransform:&v6];
  v4 = *(a1 + 248);
  v6 = *(a1 + 232);
  v7 = v4;
  v8 = *(a1 + 264);
  return [*(a1 + 64) setTransform:&v6];
}

uint64_t __179__DOCTransitionUtils_performZoomTransitionInContainer_withSourceView_destinationView_duration_alterativeView_thumbnail_thumbnailStyle_location_presenting_fadingSource_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  [*(a1 + 40) setAlpha:*(a1 + 96)];
  [*(a1 + 48) setAlpha:*(a1 + 104)];
  [*(a1 + 56) setAlpha:*(a1 + 112)];
  [*(a1 + 32) setAlpha:*(a1 + 120)];
  v2 = *(a1 + 144);
  v6 = *(a1 + 128);
  v7 = v2;
  v8 = *(a1 + 160);
  [*(a1 + 40) setTransform:&v6];
  v3 = *(a1 + 192);
  v6 = *(a1 + 176);
  v7 = v3;
  v8 = *(a1 + 208);
  [*(a1 + 48) setTransform:&v6];
  v4 = *(a1 + 240);
  v6 = *(a1 + 224);
  v7 = v4;
  v8 = *(a1 + 256);
  return [*(a1 + 56) setTransform:&v6];
}

uint64_t __179__DOCTransitionUtils_performZoomTransitionInContainer_withSourceView_destinationView_duration_alterativeView_thumbnail_thumbnailStyle_location_presenting_fadingSource_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  v2 = *(a1 + 32);
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8 = *MEMORY[0x1E695EFD0];
  v7 = v8;
  v9 = v6;
  v10 = *(MEMORY[0x1E695EFD0] + 32);
  v5 = v10;
  [v2 setTransform:&v8];
  v3 = *(a1 + 56);
  v8 = v7;
  v9 = v6;
  v10 = v5;
  [v3 setTransform:&v8];
  [*(a1 + 64) setAlpha:1.0];
  return (*(*(a1 + 72) + 16))();
}

@end