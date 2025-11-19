@interface MTLSPath
- (MTLSPath)init;
- (MTLSPath)initWithPoints:(MTLSPath *)self colors:(SEL)a2 count:strokeWeight:pattern:rotation:scale:translation:;
- (MTLSPath)initWithPoints:(MTLSPath *)self count:(SEL)a2 strokeWeight:pattern:rotation:scale:translation:;
- (double)interpolateTangentWithPoints:(uint64_t)a3 t:(float32x4_t *)a4;
- (double)interpolateWithPoints:(uint64_t)a3 t:(float32x4_t *)a4;
- (id).cxx_construct;
- (void)appendControlPoints:(ControlPoint *)a3 count:(unint64_t)a4;
- (void)appendIndices:(unsigned __int16 *)a3 count:(unint64_t)a4;
- (void)appendInstances:(InstanceInfo *)a3 count:(unint64_t)a4;
- (void)appendPatchInfo:(PatchInfo *)a3 count:(unint64_t)a4;
- (void)collapseTransform:(float32x4_t)a3;
- (void)genIndicesWithPattern:(unint64_t)a3;
- (void)genRightCapWithWidth:(float)a3;
@end

@implementation MTLSPath

- (MTLSPath)init
{
  v15.receiver = self;
  v15.super_class = MTLSPath;
  v2 = [(MTLSPath *)&v15 init];
  v3 = v2;
  if (v2)
  {
    p_controlPointsVector = &v2->_controlPointsVector;
    begin = v2->_controlPointsVector.__begin_;
    if (begin)
    {
      v3->_controlPointsVector.__end_ = begin;
      operator delete(begin);
      p_controlPointsVector->__begin_ = 0;
      v3->_controlPointsVector.__end_ = 0;
      v3->_controlPointsVector.__cap_ = 0;
    }

    p_patchInfoVector = &v3->_patchInfoVector;
    v6 = v3->_patchInfoVector.__begin_;
    p_controlPointsVector->__begin_ = 0;
    v3->_controlPointsVector.__end_ = 0;
    v3->_controlPointsVector.__cap_ = 0;
    if (v6)
    {
      v3->_patchInfoVector.__end_ = v6;
      operator delete(v6);
      p_patchInfoVector->__begin_ = 0;
      v3->_patchInfoVector.__end_ = 0;
      v3->_patchInfoVector.__cap_ = 0;
    }

    p_indicesVector = &v3->_indicesVector;
    v8 = v3->_indicesVector.__begin_;
    p_patchInfoVector->__begin_ = 0;
    v3->_patchInfoVector.__end_ = 0;
    v3->_patchInfoVector.__cap_ = 0;
    if (v8)
    {
      v3->_indicesVector.__end_ = v8;
      operator delete(v8);
      p_indicesVector->__begin_ = 0;
      v3->_indicesVector.__end_ = 0;
      v3->_indicesVector.__cap_ = 0;
    }

    p_instancesVector = &v3->_instancesVector;
    v10 = v3->_instancesVector.__begin_;
    p_indicesVector->__begin_ = 0;
    v3->_indicesVector.__end_ = 0;
    v3->_indicesVector.__cap_ = 0;
    if (v10)
    {
      v3->_instancesVector.__end_ = v10;
      operator delete(v10);
      p_instancesVector->__begin_ = 0;
      v3->_instancesVector.__end_ = 0;
      v3->_instancesVector.__cap_ = 0;
    }

    p_collapsedTransforms = &v3->_collapsedTransforms;
    v12 = v3->_collapsedTransforms.__begin_;
    p_instancesVector->__begin_ = 0;
    v3->_instancesVector.__end_ = 0;
    v3->_instancesVector.__cap_ = 0;
    if (v12)
    {
      v3->_collapsedTransforms.__end_ = v12;
      operator delete(v12);
      p_collapsedTransforms->__begin_ = 0;
      v3->_collapsedTransforms.__end_ = 0;
      v3->_collapsedTransforms.__cap_ = 0;
    }

    p_collapsedTransforms->__begin_ = 0;
    v3->_collapsedTransforms.__end_ = 0;
    v3->_collapsedTransforms.__cap_ = 0;
  }

  return v3;
}

- (MTLSPath)initWithPoints:(MTLSPath *)self count:(SEL)a2 strokeWeight:pattern:rotation:scale:translation:
{
  v23 = v7;
  v24 = v8;
  v9 = v5;
  v10 = v4;
  v11 = v6;
  v12 = v3;
  v13 = v2;
  __asm { FMOV            V0.4S, #1.0 }

  v25[0] = _Q0;
  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEEC2B8ne200100EmRKS1_(__p, v3);
  v20 = v9[1];
  v25[0] = *v9;
  v25[1] = v20;
  v21 = [(MTLSPath *)self initWithPoints:v13 colors:__p[0] count:v12 strokeWeight:v10 pattern:v25 rotation:COERCE_DOUBLE(__PAIR64__(DWORD1(v25[0]) scale:v11)) translation:v23, v24];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v21;
}

- (MTLSPath)initWithPoints:(MTLSPath *)self colors:(SEL)a2 count:strokeWeight:pattern:rotation:scale:translation:
{
  v87 = v8;
  v9 = v6;
  v10 = v5;
  v11 = v7;
  v12 = v4;
  v13 = v3;
  v14 = v2;
  v101 = *MEMORY[0x277D85DE8];
  v15 = [(MTLSPath *)self init];
  v16 = v15;
  v17 = v15;
  if (v15)
  {
    v86 = v9;
    v15->_strokeWeight = v11;
    if (v12)
    {
      end = v15->_controlPointsVector.__end_;
      v19 = v15;
      do
      {
        v20 = *v14;
        HIDWORD(v20) = 1.0;
        v21 = *v13;
        strokeWeight = v17->_strokeWeight;
        cap = v17->_controlPointsVector.__cap_;
        if (end >= cap)
        {
          v90 = *v13;
          begin = v16->_controlPointsVector.__begin_;
          v25 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4);
          v26 = v25 + 1;
          if (v25 + 1 > 0x555555555555555)
          {
            _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
          }

          v27 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 4);
          if (2 * v27 > v26)
          {
            v26 = 2 * v27;
          }

          if (v27 >= 0x2AAAAAAAAAAAAAALL)
          {
            v28 = 0x555555555555555;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ControlPoint>>(&v16->_controlPointsVector, v28);
          }

          v29 = 48 * v25;
          *v29 = v20;
          *(v29 + 16) = v90;
          *(v29 + 32) = strokeWeight;
          *(v29 + 36) = 0;
          *(v29 + 44) = 0;
          end = 48 * v25 + 48;
          v30 = v17->_controlPointsVector.__begin_;
          v31 = v17->_controlPointsVector.__end_ - v30;
          v32 = v29 - v31;
          memcpy((v29 - v31), v30, v31);
          v33 = v17->_controlPointsVector.__begin_;
          v17->_controlPointsVector.__begin_ = v32;
          v17->_controlPointsVector.__end_ = end;
          v17->_controlPointsVector.__cap_ = 0;
          if (v33)
          {
            operator delete(v33);
          }

          v16 = v19;
        }

        else
        {
          *end = v20;
          *(end + 16) = v21;
          *(end + 32) = strokeWeight;
          *(end + 36) = 0;
          *(end + 44) = 0;
          end += 48;
        }

        v17->_controlPointsVector.__end_ = end;
        ++v13;
        ++v14;
        --v12;
      }

      while (v12);
    }

    [(MTLSPath *)v17 genIndicesWithPattern:v10];
    if (v10 != 2)
    {
      *&v34 = v17->_strokeWeight;
      [(MTLSPath *)v17 genLeftCapWithWidth:v34];
      *&v35 = v17->_strokeWeight;
      [(MTLSPath *)v17 genRightCapWithWidth:v35];
    }

    matrix4x4_scale();
    v91 = v37;
    v92 = v36;
    v89 = v38;
    v85 = v39;
    *&v40 = matrix4x4_translation(*&v87, *(&v87 + 1), *(&v87 + 2));
    v82 = v41;
    v83 = v40;
    v88 = v42;
    v84 = v43;
    *&v44 = matrix4x4_rotation(v86[1].f32[0], *v86);
    v48 = 0;
    v93 = v83;
    v94 = v82;
    v95 = v88;
    v96 = v84;
    do
    {
      *(&v97 + v48) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, COERCE_FLOAT(*(&v93 + v48))), v91, *(&v93 + v48), 1), v89, *(&v93 + v48), 2), v85, *(&v93 + v48), 3);
      v48 += 16;
    }

    while (v48 != 64);
    v49 = 0;
    v50 = v97;
    v51 = v98;
    v52 = v99;
    v53 = v100;
    v93 = v44;
    v94 = v45;
    v95 = v46;
    v96 = v47;
    do
    {
      *(&v97 + v49) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, COERCE_FLOAT(*(&v93 + v49))), v51, *(&v93 + v49), 1), v52, *(&v93 + v49), 2), v53, *(&v93 + v49), 3);
      v49 += 16;
    }

    while (v49 != 64);
    [(MTLSPath *)v17 collapseTransform:*v97.i64, *v98.i64, *v99.i64, *v100.i64];
    v54 = *(MEMORY[0x277D860B8] + 16);
    v97 = *MEMORY[0x277D860B8];
    v98 = v54;
    v55 = *(MEMORY[0x277D860B8] + 48);
    v99 = *(MEMORY[0x277D860B8] + 32);
    v100 = v55;
    v56 = v17->_instancesVector.__end_;
    v57 = v17->_instancesVector.__cap_;
    if (v56 >= v57)
    {
      v67 = v16->_instancesVector.__begin_;
      v68 = 0xCCCCCCCCCCCCCCCDLL * ((v56 - v67) >> 4);
      v69 = v68 + 1;
      if (v68 + 1 > 0x333333333333333)
      {
        _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
      }

      v70 = 0xCCCCCCCCCCCCCCCDLL * ((v57 - v67) >> 4);
      if (2 * v70 > v69)
      {
        v69 = 2 * v70;
      }

      if (v70 >= 0x199999999999999)
      {
        v71 = 0x333333333333333;
      }

      else
      {
        v71 = v69;
      }

      if (v71)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<InstanceInfo>>(&v16->_instancesVector, v71);
      }

      v72 = 80 * v68;
      v73 = v98;
      *v72 = v97;
      *(v72 + 16) = v73;
      v74 = v100;
      *(v72 + 32) = v99;
      *(v72 + 48) = v74;
      __asm { FMOV            V0.4S, #1.0 }

      *(v72 + 64) = _Q0;
      v66 = 80 * v68 + 80;
      v76 = v17->_instancesVector.__begin_;
      v77 = v17->_instancesVector.__end_ - v76;
      v78 = v72 - v77;
      memcpy((v72 - v77), v76, v77);
      v79 = v17->_instancesVector.__begin_;
      v17->_instancesVector.__begin_ = v78;
      v17->_instancesVector.__end_ = v66;
      v17->_instancesVector.__cap_ = 0;
      if (v79)
      {
        operator delete(v79);
      }
    }

    else
    {
      v58 = *MEMORY[0x277D860B8];
      v59 = *(MEMORY[0x277D860B8] + 16);
      v60 = *(MEMORY[0x277D860B8] + 48);
      *(v56 + 2) = *(MEMORY[0x277D860B8] + 32);
      *(v56 + 3) = v60;
      *v56 = v58;
      *(v56 + 1) = v59;
      __asm { FMOV            V0.4S, #1.0 }

      *(v56 + 4) = _Q0;
      v66 = v56 + 80;
    }

    v17->_instancesVector.__end_ = v66;
  }

  v80 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)genRightCapWithWidth:(float)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = [(MTLSPath *)self controlPointsVectorCount];
  v5 = [(MTLSPath *)self controlPointsVectorCount];
  v6 = [(MTLSPath *)self controlPointsVectorCount];
  v7 = [(MTLSPath *)self controlPointsVectorCount];
  begin = self->_controlPointsVector.__begin_;
  v49[0] = *&begin[12 * v4 - 48].var0;
  v49[1] = *&begin[12 * v5 - 36].var0;
  v49[2] = *&begin[12 * v6 - 24].var0;
  v9 = &begin[12 * v7];
  v49[3] = *&v9[-12].var0;
  v10 = *&v9[-8].var0;
  v25 = v10;
  LODWORD(v10) = 1.0;
  [(MTLSPath *)self interpolateWithPoints:v49 t:*&v10];
  v24 = v11;
  v11.i32[0] = 1.0;
  [(MTLSPath *)self interpolateTangentWithPoints:v49 t:*v11.i64];
  v13 = vmulq_f32(v12, v12);
  *v13.i8 = vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
  v13.i32[0] = vadd_f32(*v13.i8, vdup_lane_s32(*v13.i8, 1)).u32[0];
  v14 = vrsqrte_f32(v13.u32[0]);
  v15 = vmul_f32(v14, vrsqrts_f32(v13.u32[0], vmul_f32(v14, v14)));
  v16 = vmulq_n_f32(vmulq_n_f32(v12, vmul_f32(v15, vrsqrts_f32(v13.u32[0], vmul_f32(v15, v15))).f32[0]), a3);
  __asm { FMOV            V1.4S, #-0.25 }

  v38[0] = vmlaq_f32(v24, _Q1, v16);
  v38[1] = v25;
  _Q1.i32[0] = LODWORD(self->_strokeWeight);
  v40 = v38[0];
  v41 = v25;
  v39 = _Q1.i32[0];
  v42 = _Q1.i32[0];
  v43 = vmlaq_f32(v24, vdupq_n_s32(0x3F7FBE77u), v16);
  v44 = v25;
  v45 = _Q1.i32[0];
  v46 = vmlaq_f32(v43, vdupq_n_s32(0x3DCCCCCDu), v16);
  v47 = v25;
  v48 = 0;
  v37 = xmmword_241BAACB0;
  v22 = vaddq_s16(vdupq_n_s16(*([(MTLSPath *)self indices]+ 2 * [(MTLSPath *)self indicesCount]- 2) + 1), xmmword_241BAACB0);
  v36 = xmmword_241BAACC0;
  v37 = v22;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<ControlPoint>::__init_with_size[abi:ne200100]<ControlPoint const*,ControlPoint const*>(&v33, v38, v49, 4uLL);
  std::vector<ControlPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ControlPoint*>,std::__wrap_iter<ControlPoint*>>(&self->_controlPointsVector, self->_controlPointsVector.__end_, v33, v34, 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 4));
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&v30, &v37, v38, 8);
  std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(&self->_indicesVector, self->_indicesVector.__end_, v30, v31, (v31 - v30) >> 1);
  __p = 0;
  v28 = 0;
  v29 = 0;
  std::vector<PatchInfo>::__init_with_size[abi:ne200100]<PatchInfo const*,PatchInfo const*>(&__p, &v36, &v37, 2uLL);
  std::vector<PatchInfo>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PatchInfo*>,std::__wrap_iter<PatchInfo*>>(&self->_patchInfoVector, self->_patchInfoVector.__end_, __p, v28, (v28 - __p) >> 3);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)genIndicesWithPattern:(unint64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      LOWORD(v14) = 0;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
      LOWORD(v14) = 1;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
      LOWORD(v14) = 2;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
      LOWORD(v14) = 3;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
      __asm { FMOV            V8.2S, #1.0 }

      v14 = _D8;
      std::vector<PatchInfo>::push_back[abi:ne200100](&self->_patchInfoVector, &v14);
      if ([(MTLSPath *)self controlPointsVectorCount]!= 3)
      {
        v11 = 0;
        do
        {
          LOWORD(v14) = v11;
          std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
          LOWORD(v14) = v11 + 1;
          std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
          LOWORD(v14) = v11 + 2;
          std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
          LOWORD(v14) = v11 + 3;
          std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
          v14 = _D8;
          std::vector<PatchInfo>::push_back[abi:ne200100](&self->_patchInfoVector, &v14);
          ++v11;
        }

        while ([(MTLSPath *)self controlPointsVectorCount]- 3 > v11);
      }

      LOWORD(v14) = [(MTLSPath *)self controlPointsVectorCount]- 3;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
      LOWORD(v14) = [(MTLSPath *)self controlPointsVectorCount]- 2;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
      LOWORD(v14) = [(MTLSPath *)self controlPointsVectorCount]- 1;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
      LOWORD(v14) = [(MTLSPath *)self controlPointsVectorCount];
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
      v14 = _D8;
      std::vector<PatchInfo>::push_back[abi:ne200100](&self->_patchInfoVector, &v14);
    }

    else if (a3 == 2 && [(MTLSPath *)self controlPointsVectorCount])
    {
      v4 = 0;
      __asm { FMOV            V8.2S, #1.0 }

      do
      {
        LOWORD(v14) = v4 % ([(MTLSPath *)self controlPointsVectorCount]- 1);
        std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
        LOWORD(v14) = (v4 + 1) % ([(MTLSPath *)self controlPointsVectorCount]- 1);
        std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
        LOWORD(v14) = (v4 + 2) % ([(MTLSPath *)self controlPointsVectorCount]- 1);
        std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
        LOWORD(v14) = (v4 + 3) % ([(MTLSPath *)self controlPointsVectorCount]- 1);
        std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
        v14 = _D8;
        std::vector<PatchInfo>::push_back[abi:ne200100](&self->_patchInfoVector, &v14);
        ++v4;
      }

      while ([(MTLSPath *)self controlPointsVectorCount]> v4);
    }
  }

  else if ([(MTLSPath *)self controlPointsVectorCount]!= 3)
  {
    v12 = 0;
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      LOWORD(v14) = v12;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
      LOWORD(v14) = v12 + 1;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
      LOWORD(v14) = v12 + 2;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
      LOWORD(v14) = v12 + 3;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indicesVector.__begin_, &v14);
      v14 = _D8;
      std::vector<PatchInfo>::push_back[abi:ne200100](&self->_patchInfoVector, &v14);
      ++v12;
    }

    while ([(MTLSPath *)self controlPointsVectorCount]- 3 > v12);
  }
}

- (double)interpolateWithPoints:(uint64_t)a3 t:(float32x4_t *)a4
{
  v4 = a4[2];
  __asm { FMOV            V3.4S, #3.0 }

  v10 = a4[1];
  v11 = vsubq_f32(vmlaq_f32(vmlsq_f32(a4[3], _Q3, v4), _Q3, v10), *a4);
  __asm { FMOV            V6.4S, #-6.0 }

  v13 = vmlaq_f32(vmlaq_f32(vmulq_f32(v10, _Q6), _Q3, v4), _Q3, *a4);
  __asm { FMOV            V7.4S, #-3.0 }

  v15 = vmlaq_f32(vmulq_f32(*a4, _Q7), _Q3, v4);
  __asm { FMOV            V3.4S, #4.0 }

  v17 = vmlaq_n_f32(vaddq_f32(vmlaq_f32(v4, _Q3, v10), *a4), vmlaq_n_f32(v15, vmlaq_n_f32(v13, v11, a1), a1), a1);
  __asm { FMOV            V0.4S, #6.0 }

  *&result = vdivq_f32(v17, _Q0).u64[0];
  return result;
}

- (double)interpolateTangentWithPoints:(uint64_t)a3 t:(float32x4_t *)a4
{
  v4 = a4[2];
  __asm { FMOV            V3.4S, #3.0 }

  v10 = a4[1];
  v11 = vsubq_f32(vmlaq_f32(vmlsq_f32(a4[3], _Q3, v4), _Q3, v10), *a4);
  __asm { FMOV            V6.4S, #-6.0 }

  v13 = vmlaq_f32(vmlaq_f32(vmulq_f32(v10, _Q6), _Q3, v4), _Q3, *a4);
  __asm { FMOV            V6.4S, #-3.0 }

  v15 = vaddq_f32(vmlaq_f32(vmulq_f32(*a4, _Q6), _Q3, v4), vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(v13, v11, a1), a1), vmlaq_n_f32(v13, vaddq_f32(v11, v11), a1), a1));
  __asm { FMOV            V1.4S, #6.0 }

  *&result = vdivq_f32(v15, _Q1).u64[0];
  return result;
}

- (void)collapseTransform:(float32x4_t)a3
{
  v6 = a1[2];
  if (a1[3] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = vaddq_f32(a5, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(v6 + v7))), a3, *(v6 + v7), 1), a4, *(v6 + v7), 2));
      v9.i32[3] = 1.0;
      *(v6 + v7) = v9;
      ++v8;
      v6 = a1[2];
      v7 += 48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[3] - v6) >> 4) > v8);
  }

  v10 = a1[15];
  v11 = a1[16];
  if (v10 >= v11)
  {
    v13 = a1[14];
    v14 = (v10 - v13) >> 6;
    v15 = v14 + 1;
    if ((v14 + 1) >> 58)
    {
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v16 = v11 - v13;
    if (v16 >> 5 > v15)
    {
      v15 = v16 >> 5;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFC0)
    {
      v17 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<simd_float4x4>>((a1 + 14), v17);
    }

    v18 = (v14 << 6);
    *v18 = a2;
    v18[1] = a3;
    v18[2] = a4;
    v18[3] = a5;
    v12 = (v14 << 6) + 64;
    v19 = a1[14];
    v20 = a1[15] - v19;
    v21 = (v14 << 6) - v20;
    memcpy(v18 - v20, v19, v20);
    v22 = a1[14];
    a1[14] = v21;
    a1[15] = v12;
    a1[16] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v10 = a2;
    v10[1] = a3;
    v12 = &v10[4];
    v10[2] = a4;
    v10[3] = a5;
  }

  a1[15] = v12;
}

- (void)appendControlPoints:(ControlPoint *)a3 count:(unint64_t)a4
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<ControlPoint>::__init_with_size[abi:ne200100]<ControlPoint*,ControlPoint*>(&__p, a3, &a3[12 * a4], a4);
  std::vector<ControlPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ControlPoint*>,std::__wrap_iter<ControlPoint*>>(&self->_controlPointsVector, self->_controlPointsVector.__end_, __p, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - __p) >> 4));
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

- (void)appendPatchInfo:(PatchInfo *)a3 count:(unint64_t)a4
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<PatchInfo>::__init_with_size[abi:ne200100]<PatchInfo*,PatchInfo*>(&__p, a3, a3 + 8 * a4, a4);
  std::vector<PatchInfo>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PatchInfo*>,std::__wrap_iter<PatchInfo*>>(&self->_patchInfoVector, self->_patchInfoVector.__end_, __p, v6, (v6 - __p) >> 3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

- (void)appendIndices:(unsigned __int16 *)a3 count:(unint64_t)a4
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&__p, a3, &a3[a4], a4);
  std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(&self->_indicesVector, self->_indicesVector.__end_, __p, v6, (v6 - __p) >> 1);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

- (void)appendInstances:(InstanceInfo *)a3 count:(unint64_t)a4
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<InstanceInfo>::__init_with_size[abi:ne200100]<InstanceInfo*,InstanceInfo*>(&__p, a3, a3 + 80 * a4, a4);
  std::vector<InstanceInfo>::__insert_with_size[abi:ne200100]<std::__wrap_iter<InstanceInfo*>,std::__wrap_iter<InstanceInfo*>>(&self->_instancesVector, self->_instancesVector.__end_, __p, v6, 0xCCCCCCCCCCCCCCCDLL * ((v6 - __p) >> 4));
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

@end