@interface CHQuadCurvePointFIFO
- (CHQuadCurvePointFIFO)initWithFIFO:(id)o;
- (CHQuadCurvePointFIFO)initWithFIFO:(id)o drawingTarget:(id)target;
- (id).cxx_construct;
- (void)addPoint:(CHQuadCurvePointFIFO *)self;
- (void)clear;
- (void)dealloc;
- (void)flush;
@end

@implementation CHQuadCurvePointFIFO

- (CHQuadCurvePointFIFO)initWithFIFO:(id)o
{
  v6.receiver = self;
  v6.super_class = CHQuadCurvePointFIFO;
  result = [(CHPointFIFO *)&v6 initWithFIFO:o];
  if (result)
  {
    result->_unitScale = 1.0;
    result->_emitInterpolatedPoints = 1;
    drawingTarget = result->_drawingTarget;
    result->_drawingTarget = 0;
    v5 = result;

    return v5;
  }

  return result;
}

- (CHQuadCurvePointFIFO)initWithFIFO:(id)o drawingTarget:(id)target
{
  targetCopy = target;
  v12 = objc_msgSend_initWithFIFO_(self, v8, o, v9, v10, v11);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((v12 + 48), target);
  }

  return v13;
}

- (void)dealloc
{
  path = self->_path;
  if (path)
  {
    CGPathRelease(path);
  }

  v4.receiver = self;
  v4.super_class = CHQuadCurvePointFIFO;
  [(CHQuadCurvePointFIFO *)&v4 dealloc];
}

- (void)addPoint:(CHQuadCurvePointFIFO *)self
{
  v139 = v2;
  v143 = v2;
  anon_50 = self->_anon_50;
  if (*&self->_anon_50[8] == *self->_anon_50)
  {
    path = self->_path;
    if (path)
    {
      CGPathRelease(path);
    }

    self->_path = CGPathCreateMutable();
  }

  sub_1837C0350(anon_50, &v143);
  v7 = *anon_50;
  v6 = *(anon_50 + 1);
  v8 = (v6 - *anon_50) >> 4;
  if (v8 == 3)
  {
    v45 = v7[1];
    v44 = v7[2];
    v140 = v45;
    v141 = v45;
    v46.i64[0] = 0x3F0000003F000000;
    v46.i64[1] = 0x3F0000003F000000;
    v47 = vmlaq_f32(v45, v46, vsubq_f32(v44, v45));
    v48 = v45.f32[1];
    v49 = v6 - &v7[1];
    r1_8 = *self->_lastPoint;
    r1_24 = v47;
    if (v6 != &v7[1])
    {
      memmove(v7, &v7[1], v6 - &v7[1]);
      v47.i64[0] = r1_24.i64[0];
      v45.i32[0] = v140.i32[0];
    }

    *(anon_50 + 1) = v7 + v49;
    v50 = v47.f32[1];
    CGPathAddQuadCurveToPoint(self->_path, 0, v45.f32[0], v48, v47.f32[0], v47.f32[1]);
    *&self->_anon_68[8] = *self->_anon_68;
    if (self->_emitInterpolatedPoints)
    {
      v56 = vsub_f32(*v140.f32, *r1_24.f32);
      v57 = vmul_f32(v56, v56);
      v58 = *r1_8.i64;
      v59 = vsub_f32(*r1_8.f32, *v140.f32);
      v60 = vmul_f32(v59, v59);
      v61 = vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v60, v57), vzip2_s32(v60, v57)))) / self->_unitScale;
      if (v61 > 0.0)
      {
        v62 = 0.0;
        v63 = 1;
        do
        {
          *v57.i32 = v62 / v61;
          objc_msgSend_interpolateFromPoint_toPoint_controlPoint_time_(CHQuadCurvePointFIFO, v51, v52, v53, v54, v55, v58, *r1_24.i64, *v140.i64, *&v57);
          v142 = v64;
          sub_1837C0350(self->_anon_68, &v142);
          v58 = *r1_8.i64;
          v62 = v63++;
        }

        while (v61 > v62);
      }
    }

    else
    {
      objc_msgSend_interpolateFromPoint_toPoint_controlPoint_time_(CHQuadCurvePointFIFO, v51, v52, v53, v54, v55, *r1_8.i64, *r1_24.i64, *v140.i64, 0.0);
      v142 = v65;
      sub_1837C0350(self->_anon_68, &v142);
      LODWORD(v66) = 1.0;
      objc_msgSend_interpolateFromPoint_toPoint_controlPoint_time_(CHQuadCurvePointFIFO, v67, v68, v69, v70, v71, *r1_8.i64, *r1_24.i64, *v140.i64, v66);
      v142 = v72;
      sub_1837C0350(self->_anon_68, &v142);
    }

    sub_1837C0350(&self[1], &v141);
    v142 = v140;
    *self->_lastPoint = r1_24;
    if (self->_drawingTarget)
    {
      if (vmovn_s32(vcgtq_f32(v140, r1_8)).u8[0])
      {
        v73 = r1_8.f32[0];
      }

      else
      {
        v73 = v140.f32[0];
      }

      v74 = v73;
      objc_msgSend_lineWidth(self, v9, v10, v11, v12, v13);
      r1 = v74 - v80 * 0.5;
      if (r1_8.f32[1] >= v48)
      {
        v81 = v48;
      }

      else
      {
        v81 = r1_8.f32[1];
      }

      v82 = v81;
      objc_msgSend_lineWidth(self, v75, v76, v77, v78, v79);
      v84 = v82 - v83 * 0.5;
      objc_msgSend_lineWidth(self, v85, v86, v87, v88, v89);
      v91 = v90 + fabsf(vsubq_f32(v140, r1_8).f32[0]);
      objc_msgSend_lineWidth(self, v92, v93, v94, v95, v96);
      v103 = v102 + vabds_f32(v48, r1_8.f32[1]);
      if (vmovn_s32(vcgtq_f32(r1_24, v140)).u8[0])
      {
        v104 = v140.f32[0];
      }

      else
      {
        v104 = r1_24.f32[0];
      }

      v105 = v104;
      objc_msgSend_lineWidth(self, v97, v98, v99, v100, v101);
      v112 = v105 - v111 * 0.5;
      if (v48 >= v50)
      {
        v113 = v50;
      }

      else
      {
        v113 = v48;
      }

      v114 = v113;
      objc_msgSend_lineWidth(self, v106, v107, v108, v109, v110);
      v116 = v114 - v115 * 0.5;
      objc_msgSend_lineWidth(self, v117, v118, v119, v120, v121);
      v123 = v122 + fabsf(vsubq_f32(r1_24, v140).f32[0]);
      objc_msgSend_lineWidth(self, v124, v125, v126, v127, v128);
      v146.size.height = v129 + vabds_f32(v50, v48);
      v144.origin.x = r1;
      v144.origin.y = v84;
      v144.size.width = v91;
      v144.size.height = v103;
      v146.origin.x = v112;
      v146.origin.y = v116;
      v146.size.width = v123;
      v145 = CGRectUnion(v144, v146);
      objc_msgSend_setNeedsDisplayInRect_(self->_drawingTarget, v130, v131, v132, v133, v134, v145.origin.x, v145.origin.y, v145.size.width, v145.size.height);
    }

    emissionHandler = self->_emissionHandler;
    if (emissionHandler)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v8 != 1)
    {
      return;
    }

    CGPathMoveToPoint(self->_path, 0, v139.f32[0], v139.f32[1]);
    *&self->_anon_68[8] = *self->_anon_68;
    sub_1837C0350(self->_anon_68, &v143);
    *self->_lastPoint = v139;
    v142 = v139;
    if (self->_drawingTarget)
    {
      objc_msgSend_lineWidth(self, v9, v10, v11, v12, v13);
      v15 = v139.f32[0] - v14 * 0.5;
      objc_msgSend_lineWidth(self, v16, v17, v18, v19, v20);
      v22 = v139.f32[1] - v21 * 0.5;
      objc_msgSend_lineWidth(self, v23, v24, v25, v26, v27);
      v29 = v28;
      objc_msgSend_lineWidth(self, v30, v31, v32, v33, v34);
      objc_msgSend_setNeedsDisplayInRect_(self->_drawingTarget, v35, v36, v37, v38, v39, v15, v22, v29, v40);
    }

    emissionHandler = self->_emissionHandler;
    if (emissionHandler)
    {
LABEL_10:
      emissionHandler[2]();
      anon_68 = self->_anon_68;
      v43 = *self->_anon_68;
      if (*&self->_anon_68[8] == v43)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  anon_68 = self->_anon_68;
  v43 = *self->_anon_68;
  if (*&self->_anon_68[8] == v43)
  {
    return;
  }

LABEL_36:
  v135 = 0;
  do
  {
    objc_msgSend_emitPoint_(self, v9, v10, v11, v12, v13, *(v43 + 16 * v135++));
    v43 = *anon_68;
  }

  while (v135 < (*(anon_68 + 1) - *anon_68) >> 4);
}

- (void)flush
{
  v78 = 0uLL;
  anon_50 = self->_anon_50;
  v4 = *&self->_anon_50[8];
  if (v4 != *self->_anon_50)
  {
    v5 = *self->_lastPoint;
    v6 = *(v4 - 16);
    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v74 = v5;
    v71 = vsubq_f32(v6, v5);
    v72 = v6;
    v73 = vmlaq_f32(v5, v7, v71);
    v77 = v73;
    v8 = v6.f32[1];
    CGPathAddLineToPoint(self->_path, 0, v6.f32[0], v6.f32[1]);
    anon_68 = self->_anon_68;
    *&self->_anon_68[8] = *self->_anon_68;
    if (self->_emitInterpolatedPoints)
    {
      v15 = vsubq_f32(v74, v73);
      HIDWORD(v16) = v72.i32[1];
      v17 = vsubq_f32(v73, v72);
      v18 = (sqrtf(vaddv_f32(*&vmulq_f32(v15, v15))) + sqrtf(vaddv_f32(*&vmulq_f32(v17, v17)))) / self->_unitScale;
      if (v18 > 0.0)
      {
        v19 = *v74.i64;
        v20 = *v72.i64;
        v21 = 0.0;
        v22 = 1;
        do
        {
          *&v16 = v21 / v18;
          objc_msgSend_interpolateFromPoint_toPoint_controlPoint_time_(CHQuadCurvePointFIFO, v9, v10, v11, v12, v13, v19, v20, *v73.i64, v16, *&v71);
          v76 = v23;
          sub_1837C0350(anon_68, &v76);
          v20 = *v72.i64;
          v19 = *v74.i64;
          v21 = v22++;
        }

        while (v18 > v21);
      }
    }

    else
    {
      objc_msgSend_interpolateFromPoint_toPoint_controlPoint_time_(CHQuadCurvePointFIFO, v9, v10, v11, v12, v13, *v74.i64, *v72.i64, *v73.i64, 0.0);
      v76 = v24;
      sub_1837C0350(anon_68, &v76);
      LODWORD(v25) = 1.0;
      objc_msgSend_interpolateFromPoint_toPoint_controlPoint_time_(CHQuadCurvePointFIFO, v26, v27, v28, v29, v30, *v74.i64, *v72.i64, *v73.i64, v25);
      v76 = v31;
      sub_1837C0350(anon_68, &v76);
    }

    sub_1837C0350(&self[1], &v77);
    v78 = v73;
    if (self && self->_drawingTarget)
    {
      if (vmovn_s32(vcgtq_f32(v72, v74)).u8[0])
      {
        v37 = v74.f32[0];
      }

      else
      {
        v37 = v72.f32[0];
      }

      v38 = v37;
      objc_msgSend_lineWidth(self, v32, v33, v34, v35, v36, *&v71);
      v45 = v38 - v44 * 0.5;
      if (v74.f32[1] >= v8)
      {
        v46 = v8;
      }

      else
      {
        v46 = v74.f32[1];
      }

      v47 = v46;
      objc_msgSend_lineWidth(self, v39, v40, v41, v42, v43);
      v49 = v47 - v48 * 0.5;
      objc_msgSend_lineWidth(self, v50, v51, v52, v53, v54);
      v56 = v55 + fabsf(v71.f32[0]);
      objc_msgSend_lineWidth(self, v57, v58, v59, v60, v61);
      objc_msgSend_setNeedsDisplayInRect_(self->_drawingTarget, v63, v64, v65, v66, v67, v45, v49, v56, v62 + vabds_f32(v8, v74.f32[1]));
    }

    emissionHandler = self->_emissionHandler;
    if (emissionHandler)
    {
      emissionHandler[2]();
    }

    v69 = *anon_68;
    if (*&self->_anon_68[8] != *self->_anon_68)
    {
      v70 = 0;
      do
      {
        objc_msgSend_emitPoint_(self, v32, v33, v34, v35, v36, *(v69 + 16 * v70++), *&v71);
        v69 = *anon_68;
      }

      while (v70 < (*&self->_anon_68[8] - *self->_anon_68) >> 4);
    }
  }

  *(anon_50 + 1) = *anon_50;
  v75.receiver = self;
  v75.super_class = CHQuadCurvePointFIFO;
  [(CHPointFIFO *)&v75 flush];
}

- (void)clear
{
  *&self->_anon_50[8] = *self->_anon_50;
  *&self->_anon_68[8] = *self->_anon_68;
  path = self->_path;
  if (path)
  {
    CGPathRelease(path);
  }

  self->_path = CGPathCreateMutable();
  v4.receiver = self;
  v4.super_class = CHQuadCurvePointFIFO;
  [(CHPointFIFO *)&v4 clear];
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 16) = 0;
  return self;
}

@end