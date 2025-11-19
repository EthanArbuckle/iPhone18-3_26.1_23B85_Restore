@interface JFXOverlayEffectAnimationView
- (JFXOverlayEffectAnimationView)initWithEffectFrame:(id)a3 toEffectFrame:(id)a4;
- (JFXOverlayEffectTransforms)currentEffectTransforms;
- (double)fractionComplete;
- (void)animate:(id)a3 completion:(id)a4;
@end

@implementation JFXOverlayEffectAnimationView

- (JFXOverlayEffectAnimationView)initWithEffectFrame:(id)a3 toEffectFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 effectSize];
  v9 = v8;
  [v6 effectSize];
  v92.receiver = self;
  v92.super_class = JFXOverlayEffectAnimationView;
  v11 = [(JFXOverlayEffectAnimationView *)&v92 initWithFrame:0.0, 0.0, v9, v10];
  if (v11)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(JFXOverlayEffectAnimationView *)v11 setFromEffectFrame:v6];
    [(JFXOverlayEffectAnimationView *)v11 setToEffectFrame:v7];
    v12 = [(JFXOverlayEffectAnimationView *)v11 fromEffectFrame];
    v13 = [v12 transforms];

    v14 = [(JFXOverlayEffectAnimationView *)v11 toEffectFrame];
    v15 = [v14 transforms];

    v16 = objc_opt_new();
    [(JFXOverlayEffectAnimationView *)v11 setAnimationDelegate:v16];

    v17 = [(JFXOverlayEffectAnimationView *)v11 layer];
    [v17 setOpacity:0.0];

    v18 = [v13 transform];
    if (v18)
    {
      v19 = v18;
      v20 = [v15 transform];

      if (v20)
      {
        v21 = [(JFXOverlayEffectAnimationView *)v11 layer];
        v22 = [v13 transform];
        v23 = v22;
        if (v22)
        {
          [v22 SIMDDouble4x4];
          v64 = v106;
          v65 = v107;
          v66 = v108;
          v67 = v109;
          v68 = v110;
          vars0 = *&STACK[0x520];
          v74 = *&STACK[0x540];
          v77 = *&STACK[0x530];
        }

        else
        {
          v74 = 0u;
          v77 = 0u;
          v68 = 0u;
          vars0 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
        }

        v24 = MEMORY[0x277CD9ED0];
        v25 = v21;
        v26 = [v24 layer];
        [v25 bounds];
        [v26 setFrame:?];
        v106 = v64;
        v107 = v65;
        v108 = v66;
        v109 = v67;
        v110 = v68;
        *&STACK[0x520] = vars0;
        *&STACK[0x530] = v77;
        *&STACK[0x540] = v74;
        [v26 setTransform:&v106];
        [v25 addSublayer:v26];

        [(JFXOverlayEffectAnimationView *)v11 setTransformLayer:v26];
      }
    }

    v27 = [v13 transformAnimation];
    if (v27)
    {
      v28 = v27;
      v29 = [v15 transformAnimation];

      if (v29)
      {
        v30 = [v13 transformAnimation];
        if (v6)
        {
          [v6 time];
        }

        else
        {
          v80 = 0uLL;
          v81 = 0.0;
        }

        v103 = 0;
        *v102 = 0u;
        *&v102[16] = 0u;
        v101 = 0u;
        if (v30)
        {
          v106 = v80;
          v107.f64[0] = v81;
          [v30 transformInfoAtTime:&v106];
          v31 = *&v102[24];
        }

        else
        {
          v31 = 0.0;
        }

        v32.f64[0] = 0.0;
        v32.f64[1] = v31;
        v82 = *&v31;
        v85 = v32;
        v110 = 0u;
        *&STACK[0x520] = xmmword_242B5B860;
        *&STACK[0x530] = 0u;
        *&STACK[0x540] = xmmword_242B5B850;
        v106 = *&v31;
        v107 = 0u;
        v108 = v32;
        v109 = 0u;
        __asm { FMOV            V1.2D, #1.0 }

        v93 = 0u;
        v94 = _Q1;
        pv_simd_matrix_rotate();
        v38 = *&v102[8];
        v110 = 0u;
        *&STACK[0x520] = xmmword_242B5B860;
        *&STACK[0x530] = 0u;
        *&STACK[0x540] = xmmword_242B5B850;
        v106 = v82;
        v107 = 0u;
        v108 = v85;
        v109 = 0u;
        v104 = v38;
        v105 = 0u;
        pv_simd_matrix_translate();
        v88 = v97;
        v89 = v98;
        v90 = v99;
        v91 = v100;
        v83 = v93;
        v84 = v94;
        v86 = v95;
        v87 = v96;

        v39 = [(JFXOverlayEffectAnimationView *)v11 layer];
        v40 = [MEMORY[0x277CD9ED0] layer];
        [v39 bounds];
        [v40 setFrame:?];
        v106 = v83;
        v107 = v84;
        v108 = v86;
        v109 = v87;
        v110 = v88;
        *&STACK[0x520] = v89;
        *&STACK[0x530] = v90;
        *&STACK[0x540] = v91;
        [v40 setTransform:&v106];
        [v39 addSublayer:v40];
        [(JFXOverlayEffectAnimationView *)v11 setAdditionalTransformLayer:v40];
      }
    }

    v41 = [v13 faceTrackingTransform];
    if (v41)
    {
      v42 = v41;
      v43 = [v15 faceTrackingTransform];

      if (v43)
      {
        v44 = [(JFXOverlayEffectAnimationView *)v11 layer];
        v45 = [v13 faceTrackingTransform];
        v46 = [(JFXOverlayEffectAnimationView *)v11 fromEffectFrame];
        [v45 transformForTrackingType:{objc_msgSend(v46, "trackingType")}];
        v69 = v47;
        vars0a = v48;
        v75 = v49;
        v78 = v50;
        v51 = MEMORY[0x277CD9ED0];
        v52 = v44;
        v53 = [v51 layer];
        [v52 bounds];
        [v53 setFrame:?];
        v106 = vcvtq_f64_f32(*v69.f32);
        v107 = vcvt_hight_f64_f32(v69);
        v108 = vcvtq_f64_f32(*vars0a.f32);
        v109 = vcvt_hight_f64_f32(vars0a);
        v110 = vcvtq_f64_f32(*v75.f32);
        *&STACK[0x520] = vcvt_hight_f64_f32(v75);
        *&STACK[0x530] = vcvtq_f64_f32(*v78.f32);
        *&STACK[0x540] = vcvt_hight_f64_f32(v78);
        [v53 setTransform:&v106];
        [v52 addSublayer:v53];

        [(JFXOverlayEffectAnimationView *)v11 setTrackingTransformLayer:v53];
        v54 = [(JFXOverlayEffectAnimationView *)v11 layer];
        v55 = [v13 faceTrackingTransform];
        [v55 cameraTransform];
        v70 = v56;
        vars0b = v57;
        v76 = v58;
        v79 = v59;
        v60 = MEMORY[0x277CD9ED0];
        v61 = v54;
        v62 = [v60 layer];
        [v61 bounds];
        [v62 setFrame:?];
        v106 = vcvtq_f64_f32(*v70.f32);
        v107 = vcvt_hight_f64_f32(v70);
        v108 = vcvtq_f64_f32(*vars0b.f32);
        v109 = vcvt_hight_f64_f32(vars0b);
        v110 = vcvtq_f64_f32(*v76.f32);
        *&STACK[0x520] = vcvt_hight_f64_f32(v76);
        *&STACK[0x530] = vcvtq_f64_f32(*v79.f32);
        *&STACK[0x540] = vcvt_hight_f64_f32(v79);
        [v62 setTransform:&v106];
        [v61 addSublayer:v62];

        [(JFXOverlayEffectAnimationView *)v11 setCameraTransformLayer:v62];
      }
    }

    [MEMORY[0x277CD9FF0] commit];
  }

  return v11;
}

- (void)animate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(JFXOverlayEffectAnimationView *)self fromEffectFrame];
  v9 = [v8 transforms];

  v10 = [(JFXOverlayEffectAnimationView *)self toEffectFrame];
  v11 = [v10 transforms];

  v12 = [(JFXOverlayEffectAnimationView *)self animationDelegate];
  [v12 animateWithCompletion:v7];

  v13 = [(JFXOverlayEffectAnimationView *)self layer];
  v14 = [v6 copy];
  v15 = [(JFXOverlayEffectAnimationView *)self animationDelegate];
  v16 = v13;
  v17 = v14;
  [v17 setKeyPath:@"opacity"];
  [v17 setDelegate:v15];
  v135 = *MEMORY[0x277CDA230];
  [v17 setFillMode:?];
  [v17 setRemovedOnCompletion:0];
  [v17 setFromValue:&unk_28556D410];
  [v17 setToValue:&unk_28556D428];
  [v16 addAnimation:v17 forKey:@"opacityAnimation"];

  v18 = [v9 transform];
  if (v18)
  {
    v19 = v18;
    v20 = [v11 transform];

    if (v20)
    {
      v21 = [(JFXOverlayEffectAnimationView *)self transformLayer];
      v22 = [v6 copy];
      v23 = [v9 transform];
      v24 = v23;
      if (v23)
      {
        [v23 SIMDDouble4x4];
        v112 = *&STACK[0x6C0];
        v115 = *&STACK[0x6D0];
        v118 = *&STACK[0x6E0];
        v121 = *&STACK[0x6F0];
        v124 = *&STACK[0x700];
        v127 = *&STACK[0x710];
        v130 = *&STACK[0x720];
        v133 = *&STACK[0x730];
      }

      else
      {
        v130 = 0u;
        v133 = 0u;
        v124 = 0u;
        v127 = 0u;
        v118 = 0u;
        v121 = 0u;
        v112 = 0u;
        v115 = 0u;
      }

      v25 = [v11 transform];
      v26 = v25;
      if (v25)
      {
        [v25 SIMDDouble4x4];
        v101 = *&STACK[0x6C0];
        v102 = *&STACK[0x6D0];
        v103 = *&STACK[0x6E0];
        vars0 = *&STACK[0x6F0];
        v105 = *&STACK[0x700];
        v106 = *&STACK[0x710];
        v27 = *&STACK[0x720];
        v109 = *&STACK[0x730];
      }

      else
      {
        v27 = 0uLL;
        v106 = 0u;
        v109 = 0u;
        vars0 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
      }

      v100 = v27;
      v28 = v21;
      v29 = v22;
      [v29 setKeyPath:@"transform"];
      [v29 setFillMode:v135];
      [v29 setRemovedOnCompletion:0];
      v30 = MEMORY[0x277CCAE60];
      *&STACK[0x6C0] = v112;
      *&STACK[0x6D0] = v115;
      *&STACK[0x6E0] = v118;
      *&STACK[0x6F0] = v121;
      *&STACK[0x700] = v124;
      *&STACK[0x710] = v127;
      *&STACK[0x720] = v130;
      *&STACK[0x730] = v133;
      v31 = [v30 valueWithCATransform3D:&STACK[0x6C0]];
      [v29 setFromValue:v31];

      v32 = MEMORY[0x277CCAE60];
      *&STACK[0x6C0] = v101;
      *&STACK[0x6D0] = v102;
      *&STACK[0x6E0] = v103;
      *&STACK[0x6F0] = vars0;
      *&STACK[0x700] = v105;
      *&STACK[0x710] = v106;
      *&STACK[0x720] = v100;
      *&STACK[0x730] = v109;
      v33 = [v32 valueWithCATransform3D:&STACK[0x6C0]];
      [v29 setToValue:v33];

      [v28 addAnimation:v29 forKey:@"transformAnimation"];
    }
  }

  v34 = [v9 transformAnimation];
  if (v34)
  {
    v35 = v34;
    v36 = [v11 transformAnimation];

    if (v36)
    {
      v37 = [v9 transformAnimation];
      v38 = [(JFXOverlayEffectAnimationView *)self fromEffectFrame];
      v39 = v38;
      if (v38)
      {
        [v38 time];
      }

      else
      {
        STACK[0x6A8] = 0;
        STACK[0x6A0] = 0;
        STACK[0x6B0] = 0;
      }

      *v139 = 0u;
      *&v139[16] = 0;
      if (v37)
      {
        *&STACK[0x6C0] = *&STACK[0x6A0];
        STACK[0x6D0] = STACK[0x6B0];
        [v37 transformInfoAtTime:&STACK[0x6C0]];
      }

      *&STACK[0x700] = 0u;
      *&STACK[0x710] = xmmword_242B5B860;
      *&STACK[0x720] = 0u;
      *&STACK[0x730] = xmmword_242B5B850;
      *&STACK[0x6C0] = 0uLL;
      *&STACK[0x6D0] = 0u;
      *&STACK[0x6E0] = 0uLL;
      *&STACK[0x6F0] = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      v131 = _Q1;
      v153 = _Q1;
      pv_simd_matrix_rotate();
      *&STACK[0x700] = 0u;
      *&STACK[0x710] = xmmword_242B5B860;
      *&STACK[0x720] = 0u;
      *&STACK[0x730] = xmmword_242B5B850;
      *&STACK[0x6C0] = 0uLL;
      *&STACK[0x6D0] = 0u;
      *&STACK[0x6E0] = 0uLL;
      *&STACK[0x6F0] = 0u;
      *&STACK[0x660] = *&v139[8];
      *&STACK[0x670] = 0u;
      pv_simd_matrix_translate();
      v149 = *&STACK[0x620];
      v150 = *&STACK[0x630];
      v151 = *&STACK[0x640];
      v152 = *&STACK[0x650];
      v147 = *&STACK[0x600];
      v148 = *&STACK[0x610];

      v45 = [v11 transformAnimation];
      v46 = [(JFXOverlayEffectAnimationView *)self fromEffectFrame];
      v47 = v46;
      if (v46)
      {
        [v46 time];
      }

      else
      {
        v136 = 0uLL;
        v137 = 0;
      }

      STACK[0x690] = 0;
      *&STACK[0x670] = 0u;
      *&STACK[0x680] = 0u;
      *&STACK[0x660] = 0u;
      if (v45)
      {
        *&STACK[0x6C0] = v136;
        STACK[0x6D0] = v137;
        [v45 transformInfoAtTime:&STACK[0x6C0]];
        v48 = STACK[0x688];
      }

      else
      {
        v48 = 0;
      }

      *&v49 = 0;
      *(&v49 + 1) = v48;
      v138 = v48;
      v140 = v49;
      *&STACK[0x700] = 0u;
      *&STACK[0x710] = xmmword_242B5B860;
      *&STACK[0x720] = 0u;
      *&STACK[0x730] = xmmword_242B5B850;
      *&STACK[0x6C0] = v48;
      *&STACK[0x6D0] = 0u;
      *&STACK[0x6E0] = v49;
      *&STACK[0x6F0] = 0u;
      pv_simd_matrix_rotate();
      v50 = *&STACK[0x678];
      *&STACK[0x700] = 0u;
      *&STACK[0x710] = xmmword_242B5B860;
      *&STACK[0x720] = 0u;
      *&STACK[0x730] = xmmword_242B5B850;
      *&STACK[0x6C0] = v138;
      *&STACK[0x6D0] = 0u;
      *&STACK[0x6E0] = v140;
      *&STACK[0x6F0] = 0u;
      *&STACK[0x6A0] = v50;
      *&STACK[0x6B0] = 0u;
      pv_simd_matrix_translate();
      v143 = *&STACK[0x620];
      v144 = *&STACK[0x630];
      v145 = *&STACK[0x640];
      v146 = *&STACK[0x650];
      v141 = *&STACK[0x600];
      v142 = *&STACK[0x610];

      v51 = [(JFXOverlayEffectAnimationView *)self additionalTransformLayer];
      v52 = [v6 copy];
      v53 = v51;
      v54 = v52;
      [v54 setKeyPath:@"transform"];
      [v54 setFillMode:v135];
      [v54 setRemovedOnCompletion:0];
      v55 = MEMORY[0x277CCAE60];
      *&STACK[0x6C0] = 0u;
      *&STACK[0x6D0] = v153;
      *&STACK[0x6E0] = v147;
      *&STACK[0x6F0] = v148;
      *&STACK[0x700] = v149;
      *&STACK[0x710] = v150;
      *&STACK[0x720] = v151;
      *&STACK[0x730] = v152;
      v56 = [v55 valueWithCATransform3D:&STACK[0x6C0]];
      [v54 setFromValue:v56];

      v57 = MEMORY[0x277CCAE60];
      *&STACK[0x6C0] = 0u;
      *&STACK[0x6D0] = v131;
      *&STACK[0x6E0] = v141;
      *&STACK[0x6F0] = v142;
      *&STACK[0x700] = v143;
      *&STACK[0x710] = v144;
      *&STACK[0x720] = v145;
      *&STACK[0x730] = v146;
      v58 = [v57 valueWithCATransform3D:&STACK[0x6C0]];
      [v54 setToValue:v58];

      [v53 addAnimation:v54 forKey:@"transformAnimation"];
    }
  }

  v59 = [v9 faceTrackingTransform];
  if (v59)
  {
    v60 = v59;
    v61 = [v11 faceTrackingTransform];

    if (v61)
    {
      v62 = [(JFXOverlayEffectAnimationView *)self trackingTransformLayer];
      v63 = [v6 copy];
      v64 = [v9 faceTrackingTransform];
      [(JFXOverlayEffectAnimationView *)self fromEffectFrame];
      v65 = v134 = v9;
      [v64 transformForTrackingType:{objc_msgSend(v65, "trackingType")}];
      v107 = v66;
      v110 = v67;
      v113 = v68;
      v116 = v69;
      [v11 faceTrackingTransform];
      v70 = v132 = v6;
      v71 = [(JFXOverlayEffectAnimationView *)self toEffectFrame];
      [v70 transformForTrackingType:{objc_msgSend(v71, "trackingType")}];
      v119 = v72;
      v122 = v73;
      v125 = v74;
      v128 = v75;
      v76 = v62;
      v77 = v63;
      [v77 setKeyPath:@"transform"];
      [v77 setFillMode:v135];
      [v77 setRemovedOnCompletion:0];
      v78 = MEMORY[0x277CCAE60];
      *&STACK[0x6C0] = vcvtq_f64_f32(*v107.f32);
      *&STACK[0x6D0] = vcvt_hight_f64_f32(v107);
      *&STACK[0x6E0] = vcvtq_f64_f32(*v110.f32);
      *&STACK[0x6F0] = vcvt_hight_f64_f32(v110);
      *&STACK[0x700] = vcvtq_f64_f32(*v113.f32);
      *&STACK[0x710] = vcvt_hight_f64_f32(v113);
      *&STACK[0x720] = vcvtq_f64_f32(*v116.f32);
      *&STACK[0x730] = vcvt_hight_f64_f32(v116);
      v79 = [v78 valueWithCATransform3D:&STACK[0x6C0]];
      [v77 setFromValue:v79];

      v80 = MEMORY[0x277CCAE60];
      *&STACK[0x6C0] = vcvtq_f64_f32(*v119.f32);
      *&STACK[0x6D0] = vcvt_hight_f64_f32(v119);
      *&STACK[0x6E0] = vcvtq_f64_f32(*v122.f32);
      *&STACK[0x6F0] = vcvt_hight_f64_f32(v122);
      *&STACK[0x700] = vcvtq_f64_f32(*v125.f32);
      *&STACK[0x710] = vcvt_hight_f64_f32(v125);
      *&STACK[0x720] = vcvtq_f64_f32(*v128.f32);
      *&STACK[0x730] = vcvt_hight_f64_f32(v128);
      v81 = [v80 valueWithCATransform3D:&STACK[0x6C0]];
      [v77 setToValue:v81];

      [v76 addAnimation:v77 forKey:@"transformAnimation"];
      v6 = v132;

      v9 = v134;
      v82 = [(JFXOverlayEffectAnimationView *)self cameraTransformLayer];
      v83 = [v132 copy];
      v84 = [v134 faceTrackingTransform];
      [v84 cameraTransform];
      v108 = v85;
      v111 = v86;
      v114 = v87;
      v117 = v88;
      v89 = [v11 faceTrackingTransform];
      [v89 cameraTransform];
      v120 = v90;
      v123 = v91;
      v126 = v92;
      v129 = v93;
      v94 = v82;
      v95 = v83;
      [v95 setKeyPath:@"transform"];
      [v95 setFillMode:v135];
      [v95 setRemovedOnCompletion:0];
      v96 = MEMORY[0x277CCAE60];
      *&STACK[0x6C0] = vcvtq_f64_f32(*v108.f32);
      *&STACK[0x6D0] = vcvt_hight_f64_f32(v108);
      *&STACK[0x6E0] = vcvtq_f64_f32(*v111.f32);
      *&STACK[0x6F0] = vcvt_hight_f64_f32(v111);
      *&STACK[0x700] = vcvtq_f64_f32(*v114.f32);
      *&STACK[0x710] = vcvt_hight_f64_f32(v114);
      *&STACK[0x720] = vcvtq_f64_f32(*v117.f32);
      *&STACK[0x730] = vcvt_hight_f64_f32(v117);
      v97 = [v96 valueWithCATransform3D:&STACK[0x6C0]];
      [v95 setFromValue:v97];

      v98 = MEMORY[0x277CCAE60];
      *&STACK[0x6C0] = vcvtq_f64_f32(*v120.f32);
      *&STACK[0x6D0] = vcvt_hight_f64_f32(v120);
      *&STACK[0x6E0] = vcvtq_f64_f32(*v123.f32);
      *&STACK[0x6F0] = vcvt_hight_f64_f32(v123);
      *&STACK[0x700] = vcvtq_f64_f32(*v126.f32);
      *&STACK[0x710] = vcvt_hight_f64_f32(v126);
      *&STACK[0x720] = vcvtq_f64_f32(*v129.f32);
      *&STACK[0x730] = vcvt_hight_f64_f32(v129);
      v99 = [v98 valueWithCATransform3D:&STACK[0x6C0]];
      [v95 setToValue:v99];

      [v94 addAnimation:v95 forKey:@"transformAnimation"];
    }
  }
}

- (JFXOverlayEffectTransforms)currentEffectTransforms
{
  v3 = [(JFXOverlayEffectAnimationView *)self fromEffectFrame];
  v4 = [v3 transforms];

  v5 = [(JFXOverlayEffectAnimationView *)self toEffectFrame];
  v6 = [v5 transforms];

  v7 = [(JFXOverlayEffectAnimationView *)self animationDelegate];
  v8 = [v7 animationDidBegin];

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = [(JFXOverlayEffectAnimationView *)self animationDelegate];
  v10 = [v9 animationDidEnd];

  if (v10)
  {
    v11 = v6;
LABEL_10:
    v28 = v11;
    goto LABEL_11;
  }

  v12 = [(JFXOverlayEffectAnimationView *)self layer];
  v13 = [v12 presentationLayer];

  if (!v13)
  {
LABEL_9:
    v11 = v4;
    goto LABEL_10;
  }

  v14 = [v4 transform];
  if (v14)
  {
    v15 = [v6 transform];

    if (v15)
    {
      v16 = MEMORY[0x277D41690];
      v17 = [(JFXOverlayEffectAnimationView *)self transformLayer];
      v18 = [v17 presentationLayer];
      v19 = v18;
      if (v18)
      {
        [v18 transform];
        v21 = v93;
        v20 = v94;
        v23 = v91;
        v22 = v92;
        v25 = v89;
        v24 = v90;
        v26 = v85;
        v27 = v87;
      }

      else
      {
        v26 = 0uLL;
        v27 = 0uLL;
        v25 = 0uLL;
        v24 = 0uLL;
        v23 = 0uLL;
        v22 = 0uLL;
        v21 = 0uLL;
        v20 = 0uLL;
      }

      v95 = v26;
      v96 = v27;
      v97 = v25;
      v98 = v24;
      v99 = v23;
      v100 = v22;
      v101 = v21;
      v102 = v20;
      v14 = [v16 matrixWithSIMDDouble4x4:&v95];
    }

    else
    {
      v14 = 0;
    }
  }

  v30 = [v4 transformAnimation];
  if (v30)
  {
    v31 = [v6 transformAnimation];

    if (v31)
    {
      v32 = [(JFXOverlayEffectAnimationView *)self additionalTransformLayer];
      v33 = [v32 presentationLayer];
      v34 = v33;
      if (v33)
      {
        [v33 transform];
      }

      v35 = *(MEMORY[0x277D41B90] + 80);
      v99 = *(MEMORY[0x277D41B90] + 64);
      v100 = v35;
      v36 = *(MEMORY[0x277D41B90] + 112);
      v101 = *(MEMORY[0x277D41B90] + 96);
      v102 = v36;
      v37 = *(MEMORY[0x277D41B90] + 16);
      v95 = *MEMORY[0x277D41B90];
      v96 = v37;
      v38 = *(MEMORY[0x277D41B90] + 48);
      v97 = *(MEMORY[0x277D41B90] + 32);
      v98 = v38;
      pv_transform_info_make();
      pv_simd_quaternion_get_euler_angles();
      PVTransformAnimationInfoIdentity();
      v86 = *MEMORY[0x277CC08F0];
      *v88 = *(MEMORY[0x277CC08F0] + 16);
      *&v88[8] = v95;
      *&v88[24] = *&v99.f64[0];

      v39 = objc_alloc(MEMORY[0x277D416B0]);
      v95 = v86;
      v96 = *v88;
      v97 = *&v88[16];
      v98.f64[0] = *&v88[32];
      v30 = [v39 initWithAnimationInfo:&v95];
      v40 = [v6 transformAnimation];
      [v40 aspectRatio];
      [v30 setAspectRatio:?];
    }

    else
    {
      v30 = 0;
    }
  }

  v41 = [v4 faceTrackingTransform];
  if (v41)
  {
    v42 = [v6 faceTrackingTransform];

    if (v42)
    {
      v43 = [v4 faceTrackingTransform];
      [v43 cameraProjection];
      v79 = v45;
      v80 = v44;
      v77 = v47;
      v78 = v46;

      v48 = [(JFXOverlayEffectAnimationView *)self cameraTransformLayer];
      v49 = [v48 presentationLayer];
      v50 = v49;
      if (v49)
      {
        [v49 transform];
        *&v75 = vcvt_hight_f32_f64(vcvt_f32_f64(v99), v100).u64[0];
        *&v76 = vcvt_hight_f32_f64(vcvt_f32_f64(v101), v102).u64[0];
        *&v73 = vcvt_hight_f32_f64(vcvt_f32_f64(v95), v96).u64[0];
        *&v74 = vcvt_hight_f32_f64(vcvt_f32_f64(v97), v98).u64[0];
      }

      else
      {
        v73 = 0.0;
        v74 = 0.0;
        v75 = 0.0;
        v76 = 0.0;
      }

      v51 = [(JFXOverlayEffectAnimationView *)self trackingTransformLayer];
      v52 = [v51 presentationLayer];
      v53 = v52;
      if (v52)
      {
        [v52 transform];
        v82 = vcvt_hight_f32_f64(vcvt_f32_f64(v99), v100);
        v83 = vcvt_hight_f32_f64(vcvt_f32_f64(v101), v102);
        v81 = vcvt_hight_f32_f64(vcvt_f32_f64(v97), v98);
        v84 = vcvt_hight_f32_f64(vcvt_f32_f64(v95), v96);
      }

      else
      {
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
      }

      v54 = [(JFXOverlayEffectAnimationView *)self toEffectFrame];
      v55 = [v54 trackingType];

      if (v55 == 1)
      {
        v58 = 2;
      }

      else
      {
        v58 = 1;
      }

      v56.i64[0] = 1;
      v57.i64[0] = v55;
      v68 = vdupq_lane_s64(vceqq_s64(v57, v56).i64[0], 0);
      v59 = [v6 faceTrackingTransform];
      [v59 transformForTrackingType:v58];
      v64 = v61;
      v65 = v60;
      v72 = vbslq_s8(v68, v83, v61);
      v71 = vbslq_s8(v68, v82, v60);
      v66 = v63;
      v67 = v62;
      v70 = vbslq_s8(v68, v81, v63);
      v69 = vbslq_s8(v68, v84, v62);

      if (v55 != 2)
      {
        v82 = v65;
        v83 = v64;
        v81 = v66;
        v84 = v67;
      }

      v41 = [[JFXFaceTrackedEffectTransform alloc] initWithCameraProjection:v80 cameraTransform:v79 onFaceTransform:v78 billboardTransform:v77, v73, v74, v75, v76, *&v69, *&v70, *&v71, *&v72, *&v84, *&v81, *&v82, *&v83];
    }

    else
    {
      v41 = 0;
    }
  }

  v28 = [JFXOverlayEffectTransforms transformsWithTransform:v14 transformAnimation:v30 faceTrackingTransform:v41];

LABEL_11:

  return v28;
}

- (double)fractionComplete
{
  v3 = [(JFXOverlayEffectAnimationView *)self animationDelegate];
  v4 = [v3 animationDidBegin];

  v5 = 0.0;
  if (v4)
  {
    v6 = [(JFXOverlayEffectAnimationView *)self animationDelegate];
    v7 = [v6 animationDidEnd];

    v5 = 1.0;
    if ((v7 & 1) == 0)
    {
      v8 = [(JFXOverlayEffectAnimationView *)self layer];
      v9 = [v8 presentationLayer];

      v5 = 0.0;
      if (v9)
      {
        v10 = [(JFXOverlayEffectAnimationView *)self layer];
        v11 = [v10 presentationLayer];
        [v11 opacity];
        v5 = v12;
      }
    }
  }

  return v5;
}

@end