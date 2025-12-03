@interface OUKeyframeExtended
- (OUKeyframeExtended)initWithDictionary:(id)dictionary withGroupId:(unsigned int)id;
- (OUKeyframeExtended)initWithKeyframe:(id)keyframe voxelize:(BOOL)voxelize resample:(BOOL)resample outlierRemove:(BOOL)remove;
- (__n128)cameraPose;
- (__n128)setCameraPose:(__n128)pose;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (void)filterOutPointsBeyondDistance:(float)distance;
- (void)rotateAlongZAxis:(float)axis;
- (void)select:(unint64_t)select indices:(const unint64_t *)indices from:(id)from;
- (void)translateBy:(OUKeyframeExtended *)self;
@end

@implementation OUKeyframeExtended

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(OUKeyframeExtended);
  [(OUKeyframeExtended *)v4 setIdentifier:self->identifier];
  [(OUKeyframeExtended *)v4 setCameraPose:*&self[1].super.isa, *&self[1]._anon_8[8], *self[1]._anon_20, *&self[1]._anon_20[16]];
  [(OUKeyframeExtended *)v4 setGroupId:self->groupId];
  if (v4 != self)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v4->_anon_8, *self->_anon_8, *&self->_anon_8[8], (*&self->_anon_8[8] - *self->_anon_8) >> 4);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v4->_anon_20, *self->_anon_20, *&self->_anon_20[8], (*&self->_anon_20[8] - *self->_anon_20) >> 4);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v4->_anon_38, *self->_anon_38, *&self->_anon_38[8], (*&self->_anon_38[8] - *self->_anon_38) >> 2);
    _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v4->_anon_50, *self->_anon_50, *&self->_anon_50[8], (*&self->_anon_50[8] - *self->_anon_50) >> 3);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v4->_anon_68, *self->_anon_68, *&self->_anon_68[8], (*&self->_anon_68[8] - *self->_anon_68) >> 4);
  }

  return v4;
}

- (OUKeyframeExtended)initWithDictionary:(id)dictionary withGroupId:(unsigned int)id
{
  dictionaryCopy = dictionary;
  v93.receiver = self;
  v93.super_class = OUKeyframeExtended;
  v7 = [(OUKeyframeExtended *)&v93 init];
  v86 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v86];
  v9 = *(v7 + 17);
  *(v7 + 17) = v8;

  v10 = [dictionaryCopy objectForKeyedSubscript:@"cameraPose"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v85 = v11;
  bytes = [v11 bytes];
  v13 = *bytes;
  v14 = bytes[1];
  v15 = bytes[3];
  *(v7 + 12) = bytes[2];
  *(v7 + 13) = v15;
  *(v7 + 10) = v13;
  *(v7 + 11) = v14;
  v16 = [dictionaryCopy objectForKeyedSubscript:@"count"];
  integerValue = [v16 integerValue];

  v18 = [dictionaryCopy objectForKeyedSubscript:@"points"];
  objc_opt_class();
  idCopy = id;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  bytes2 = [v20 bytes];
  v22 = [v20 length];
  __p = 0;
  v88 = 0;
  v89 = 0;
  std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&__p, bytes2, &bytes2[v22 & 0xFFFFFFFFFFFFFFFCLL], v22 >> 2);

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v90, ((v88 - __p) >> 2) / 3uLL);
  v23 = v90;
  v24 = v91;
  if (v91 != v90)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = v23 + v25;
      v29 = *(__p + v26);
      *(v28 + 8) = *(__p + v26 + 8);
      *v28 = v29;
      ++v27;
      v23 = v90;
      v24 = v91;
      v26 += 12;
      v25 += 16;
    }

    while (v27 < (v91 - v90) >> 4);
  }

  v30 = *(v7 + 1);
  if (v30)
  {
    *(v7 + 2) = v30;
    operator delete(v30);
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    v23 = v90;
    v24 = v91;
  }

  *(v7 + 1) = v23;
  *(v7 + 2) = v24;
  *(v7 + 3) = v92;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  v31 = [dictionaryCopy objectForKeyedSubscript:@"pointsToWorld"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32)
  {
    v33 = v32;
    bytes3 = [v33 bytes];
    v35 = [v33 length];
    __p = 0;
    v88 = 0;
    v89 = 0;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&__p, bytes3, &bytes3[v35 & 0xFFFFFFFFFFFFFFFCLL], v35 >> 2);

    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v90, ((v88 - __p) >> 2) / 3uLL);
    v36 = v90;
    v37 = v91;
    if (v91 != v90)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      do
      {
        v41 = v36 + v38;
        v42 = *(__p + v39);
        *(v41 + 8) = *(__p + v39 + 8);
        *v41 = v42;
        ++v40;
        v36 = v90;
        v37 = v91;
        v39 += 12;
        v38 += 16;
      }

      while (v40 < (v91 - v90) >> 4);
    }

    v43 = *(v7 + 4);
    if (v43)
    {
      *(v7 + 5) = v43;
      operator delete(v43);
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      v36 = v90;
      v37 = v91;
    }

    *(v7 + 4) = v36;
    *(v7 + 5) = v37;
    *(v7 + 6) = v92;
    v91 = 0;
    v92 = 0;
    v90 = 0;
    if (__p)
    {
      v88 = __p;
      operator delete(__p);
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v7 + 4, (*(v7 + 2) - *(v7 + 1)) >> 4);
    v44 = *(v7 + 1);
    v45 = *(v7 + 2);
    if (v44 != v45)
    {
      v46 = *(v7 + 4);
      do
      {
        v47 = *v44++;
        *v46++ = vaddq_f32(*(v7 + 13), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(v7 + 10), v47.f32[0]), *(v7 + 11), *v47.f32, 1), *(v7 + 12), v47, 2));
      }

      while (v44 != v45);
    }
  }

  v48 = [dictionaryCopy objectForKeyedSubscript:@"semanticLabels"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;
  bytes4 = [v50 bytes];
  v52 = [v50 length];
  __p = 0;
  v88 = 0;
  v89 = 0;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, bytes4, &bytes4[v52], v52);

  _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEEC2B8ne200100Em(&v90, (v88 - __p) >> 2);
  v53 = v90;
  v54 = v91;
  if (v91 != v90)
  {
    v55 = 0;
    do
    {
      *(v53 + 4 * v55) = *(__p + v55);
      ++v55;
      v53 = v90;
      v54 = v91;
    }

    while (v55 < (v91 - v90) >> 2);
  }

  v56 = *(v7 + 7);
  if (v56)
  {
    *(v7 + 8) = v56;
    operator delete(v56);
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    *(v7 + 9) = 0;
    v53 = v90;
    v54 = v91;
  }

  *(v7 + 7) = v53;
  *(v7 + 8) = v54;
  *(v7 + 9) = v92;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  v57 = [dictionaryCopy objectForKeyedSubscript:@"semanticVotes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v59 = v58;
  bytes5 = [v59 bytes];
  v61 = [v59 length];
  __p = 0;
  v88 = 0;
  v89 = 0;
  std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, bytes5, &bytes5[v61 & 0xFFFFFFFFFFFFFFFELL], v61 >> 1);

  _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEEC2B8ne200100Em(&v90, ((v88 - __p) >> 1) >> 2);
  v62 = v90;
  v63 = v91;
  if (v91 != v90)
  {
    v64 = 0;
    do
    {
      *(v62 + 8 * v64) = *(__p + v64);
      ++v64;
      v62 = v90;
      v63 = v91;
    }

    while (v64 < (v91 - v90) >> 3);
  }

  v65 = *(v7 + 10);
  if (v65)
  {
    *(v7 + 11) = v65;
    operator delete(v65);
    *(v7 + 10) = 0;
    *(v7 + 11) = 0;
    *(v7 + 12) = 0;
    v62 = v90;
    v63 = v91;
  }

  *(v7 + 10) = v62;
  *(v7 + 11) = v63;
  *(v7 + 12) = v92;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  v66 = [dictionaryCopy objectForKeyedSubscript:@"colors"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v67 = v66;
  }

  else
  {
    v67 = 0;
  }

  v68 = v67;
  bytes6 = [v68 bytes];
  v70 = [v68 length];
  __p = 0;
  v88 = 0;
  v89 = 0;
  std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&__p, bytes6, &bytes6[v70 & 0xFFFFFFFFFFFFFFFCLL], v70 >> 2);

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v90, ((v88 - __p) >> 2) / 3uLL);
  v71 = v90;
  v72 = v91;
  if (v91 != v90)
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
    do
    {
      v76 = v71 + v73;
      v77 = *(__p + v74);
      *(v76 + 8) = *(__p + v74 + 8);
      *v76 = v77;
      ++v75;
      v71 = v90;
      v72 = v91;
      v74 += 12;
      v73 += 16;
    }

    while (v75 < (v91 - v90) >> 4);
  }

  v78 = *(v7 + 13);
  if (v78)
  {
    *(v7 + 14) = v78;
    operator delete(v78);
    *(v7 + 13) = 0;
    *(v7 + 14) = 0;
    *(v7 + 15) = 0;
    v71 = v90;
    v72 = v91;
  }

  *(v7 + 13) = v71;
  *(v7 + 14) = v72;
  *(v7 + 15) = v92;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  v79 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];

  if (v79)
  {
    v80 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    [v80 doubleValue];
    *(v7 + 18) = v81;
  }

  *(v7 + 32) = idCopy;
  if (integerValue == (*(v7 + 2) - *(v7 + 1)) >> 4 && integerValue == (*(v7 + 5) - *(v7 + 4)) >> 4 && integerValue == (*(v7 + 11) - *(v7 + 10)) >> 3 && integerValue == (*(v7 + 8) - *(v7 + 7)) >> 2 && integerValue == (*(v7 + 14) - *(v7 + 13)) >> 4)
  {
    v82 = v7;
  }

  else
  {
    v82 = 0;
  }

  return v82;
}

- (void)rotateAlongZAxis:(float)axis
{
  v6 = __sincosf_stret(axis);
  *v5.i32 = v6.__cosval;
  *v4.i8 = v6;
  v7 = 0;
  *&v5.i32[1] = -v6.__sinval;
  v8 = vzip1q_s32(v5, 0);
  v9 = vzip1q_s32(v4, 0);
  v10 = vzip1q_s32(v8, v9);
  v11 = vzip2q_s32(v8, v9);
  v12 = *&self[1]._anon_8[8];
  v13 = *self[1]._anon_20;
  v14 = *&self[1]._anon_20[16];
  v18[0] = *&self[1].super.isa;
  v18[1] = v12;
  v18[2] = v13;
  v18[3] = v14;
  do
  {
    v19[v7] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v18[v7])), v11, *&v18[v7], 1), xmmword_25D277BC0, v18[v7], 2), xmmword_25D277B90, v18[v7], 3);
    ++v7;
  }

  while (v7 != 4);
  v15 = v19[1];
  v16 = v19[2];
  v17 = v19[3];
  *&self[1].super.isa = v19[0];
  *&self[1]._anon_8[8] = v15;
  *self[1]._anon_20 = v16;
  *&self[1]._anon_20[16] = v17;
}

- (void)translateBy:(OUKeyframeExtended *)self
{
  v3 = vaddq_f32(*&self[1]._anon_20[16], v2);
  v3.i32[3] = HIDWORD(*&self[1]._anon_20[16]);
  *&self[1]._anon_20[16] = v3;
}

- (void)filterOutPointsBeyondDistance:(float)distance
{
  v46 = 0uLL;
  v47 = 0;
  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v43 = 0;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  v38 = 0uLL;
  v39 = 0;
  v5 = *self->_anon_8;
  v6 = *&self->_anon_8[8];
  anon_8 = self->_anon_8;
  v8 = v6 - v5;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = distance * distance;
    v12 = v8 >> 4;
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    do
    {
      v37.i32[2] = 0;
      v37.i64[0] = 0;
      v37 = *(*anon_8 + 16 * v10);
      v14 = vmulq_f32(v37, v37);
      if ((v14.f32[2] + vaddv_f32(*v14.f32)) < v11)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&v46, &v37);
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v44, (*self->_anon_20 + v9));
        v15 = *self->_anon_38;
        v16 = __p[1];
        if (__p[1] >= v43)
        {
          v18 = (__p[1] - __p[0]) >> 2;
          if ((v18 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v19 = (v43 - __p[0]) >> 1;
          if (v19 <= v18 + 1)
          {
            v19 = v18 + 1;
          }

          if (v43 - __p[0] >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(__p, v20);
          }

          v21 = (4 * v18);
          *v21 = *(v15 + 4 * v10);
          v17 = (4 * v18 + 4);
          v22 = v21 - (__p[1] - __p[0]);
          memcpy(v22, __p[0], __p[1] - __p[0]);
          v23 = __p[0];
          __p[0] = v22;
          __p[1] = v17;
          v43 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *__p[1] = *(v15 + 4 * v10);
          v17 = v16 + 4;
        }

        __p[1] = v17;
        v24 = *self->_anon_50;
        v25 = v40[1];
        if (v40[1] >= v41)
        {
          v27 = (v40[1] - v40[0]) >> 3;
          if ((v27 + 1) >> 61)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v28 = (v41 - v40[0]) >> 2;
          if (v28 <= v27 + 1)
          {
            v28 = v27 + 1;
          }

          if (v41 - v40[0] >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v28;
          }

          if (v29)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v40, v29);
          }

          v30 = (8 * v27);
          *v30 = *(v24 + 8 * v10);
          v26 = (8 * v27 + 8);
          v31 = v30 - (v40[1] - v40[0]);
          memcpy(v31, v40[0], v40[1] - v40[0]);
          v32 = v40[0];
          v40[0] = v31;
          v40[1] = v26;
          v41 = 0;
          if (v32)
          {
            operator delete(v32);
          }
        }

        else
        {
          *v40[1] = *(v24 + 8 * v10);
          v26 = v25 + 8;
        }

        v40[1] = v26;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&v38, (*self->_anon_68 + v9));
      }

      ++v10;
      v9 += 16;
    }

    while (v13 != v10);
    v5 = *anon_8;
  }

  if (v5)
  {
    *&self->_anon_8[8] = v5;
    operator delete(v5);
    *anon_8 = 0;
    *(anon_8 + 1) = 0;
    *(anon_8 + 2) = 0;
  }

  v33 = *self->_anon_20;
  *self->_anon_8 = v46;
  *&self->_anon_8[16] = v47;
  v47 = 0;
  v46 = 0uLL;
  if (v33)
  {
    *&self->_anon_20[8] = v33;
    operator delete(v33);
    *self->_anon_20 = 0;
    *&self->_anon_20[8] = 0;
    *&self->_anon_20[16] = 0;
  }

  v34 = *self->_anon_38;
  *self->_anon_20 = *v44;
  *&self->_anon_20[16] = v45;
  v44[1] = 0;
  v45 = 0;
  v44[0] = 0;
  if (v34)
  {
    *&self->_anon_38[8] = v34;
    operator delete(v34);
    *self->_anon_38 = 0;
    *&self->_anon_38[8] = 0;
    *&self->_anon_38[16] = 0;
  }

  v35 = *self->_anon_50;
  *self->_anon_38 = *__p;
  *&self->_anon_38[16] = v43;
  __p[1] = 0;
  v43 = 0;
  __p[0] = 0;
  if (v35)
  {
    *&self->_anon_50[8] = v35;
    operator delete(v35);
    *self->_anon_50 = 0;
    *&self->_anon_50[8] = 0;
    *&self->_anon_50[16] = 0;
  }

  v36 = *self->_anon_68;
  *self->_anon_50 = *v40;
  *&self->_anon_50[16] = v41;
  v40[1] = 0;
  v41 = 0;
  v40[0] = 0;
  if (v36)
  {
    *&self->_anon_68[8] = v36;
    operator delete(v36);
    *self->_anon_68 = 0;
    *&self->_anon_68[8] = 0;
    *&self->_anon_68[16] = 0;
    v36 = v40[0];
  }

  *self->_anon_68 = v38;
  *&self->_anon_68[16] = v39;
  if (v36)
  {
    v40[1] = v36;
    operator delete(v36);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  if (v46)
  {
    *(&v46 + 1) = v46;
    operator delete(v46);
  }
}

- (void)select:(unint64_t)select indices:(const unint64_t *)indices from:(id)from
{
  fromCopy = from;
  v37 = fromCopy;
  _ZL6selectIDv3_fENSt3__16vectorIT_NS1_9allocatorIS3_EEEEPKS3_mPKm([fromCopy points], select, indices, &v39.__begin_);
  v9 = *self->_anon_8;
  if (v9)
  {
    *&self->_anon_8[8] = v9;
    operator delete(v9);
    *self->_anon_8 = 0;
    *&self->_anon_8[8] = 0;
    *&self->_anon_8[16] = 0;
  }

  *self->_anon_8 = v39;
  _ZL6selectIDv3_fENSt3__16vectorIT_NS1_9allocatorIS3_EEEEPKS3_mPKm([fromCopy pointsToWorld], select, indices, &v39.__begin_);
  v10 = *self->_anon_20;
  if (v10)
  {
    *&self->_anon_20[8] = v10;
    operator delete(v10);
    *self->_anon_20 = 0;
    *&self->_anon_20[8] = 0;
    *&self->_anon_20[16] = 0;
  }

  *self->_anon_20 = v39;
  semanticLabels = [fromCopy semanticLabels];
  memset(&v39, 0, sizeof(v39));
  std::vector<int>::reserve(&v39, select);
  v13 = 8 * select;
  selectCopy = select;
  if (select)
  {
    end = v39.__end_;
    v15 = 8 * select;
    indicesCopy = indices;
    do
    {
      v12.i32[0] = *(semanticLabels + 4 * *indicesCopy);
      v17 = vmovl_u8(v12).u64[0];
      if (end >= v39.__end_cap_.__value_)
      {
        v18 = end - v39.__begin_;
        if ((v18 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v19 = (v39.__end_cap_.__value_ - v39.__begin_) >> 1;
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if ((v39.__end_cap_.__value_ - v39.__begin_) >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v20 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v39, v20);
        }

        v21 = (4 * v18);
        *v21 = vuzp1_s8(v17, v17).u32[0];
        end = (4 * v18 + 4);
        v22 = v21 - (v39.__end_ - v39.__begin_);
        memcpy(v22, v39.__begin_, v39.__end_ - v39.__begin_);
        begin = v39.__begin_;
        v39.__begin_ = v22;
        v39.__end_ = end;
        v39.__end_cap_.__value_ = 0;
        if (begin)
        {
          operator delete(begin);
        }
      }

      else
      {
        v12 = vuzp1_s8(v17, v17);
        *end++ = v12.i32[0];
      }

      v39.__end_ = end;
      ++indicesCopy;
      v15 -= 8;
    }

    while (v15);
  }

  v24 = *self->_anon_38;
  if (v24)
  {
    *&self->_anon_38[8] = v24;
    operator delete(v24);
    *self->_anon_38 = 0;
    *&self->_anon_38[8] = 0;
    *&self->_anon_38[16] = 0;
  }

  *self->_anon_38 = v39;
  semanticVotes = [v37 semanticVotes];
  memset(&v39, 0, sizeof(v39));
  std::vector<unsigned long>::reserve(&v39, selectCopy);
  if (selectCopy)
  {
    v26 = v39.__end_;
    indicesCopy2 = indices;
    do
    {
      v28 = *(semanticVotes + 8 * *indicesCopy2);
      if (v26 >= v39.__end_cap_.__value_)
      {
        v29 = (v26 - v39.__begin_) >> 3;
        if ((v29 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v30 = v39.__end_cap_.__value_ - v39.__begin_;
        if (v30 <= v29 + 1)
        {
          v30 = v29 + 1;
        }

        if ((v39.__end_cap_.__value_ - v39.__begin_) >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (v31)
        {
          _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&v39, v31);
        }

        v32 = (8 * v29);
        *v32 = v28;
        v26 = (8 * v29 + 8);
        v33 = v32 - (v39.__end_ - v39.__begin_);
        memcpy(v33, v39.__begin_, v39.__end_ - v39.__begin_);
        v34 = v39.__begin_;
        v39.__begin_ = v33;
        v39.__end_ = v26;
        v39.__end_cap_.__value_ = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v26 = v28;
        v26 += 2;
      }

      v39.__end_ = v26;
      ++indicesCopy2;
      v13 -= 8;
    }

    while (v13);
  }

  v35 = *self->_anon_50;
  if (v35)
  {
    *&self->_anon_50[8] = v35;
    operator delete(v35);
    *self->_anon_50 = 0;
    *&self->_anon_50[8] = 0;
    *&self->_anon_50[16] = 0;
  }

  *self->_anon_50 = v39;
  _ZL6selectIDv3_fENSt3__16vectorIT_NS1_9allocatorIS3_EEEEPKS3_mPKm([v37 colors], selectCopy, indices, &v39.__begin_);
  v36 = *self->_anon_68;
  if (v36)
  {
    *&self->_anon_68[8] = v36;
    operator delete(v36);
    *self->_anon_68 = 0;
    *&self->_anon_68[8] = 0;
    *&self->_anon_68[16] = 0;
  }

  *self->_anon_68 = v39;
}

- (OUKeyframeExtended)initWithKeyframe:(id)keyframe voxelize:(BOOL)voxelize resample:(BOOL)resample outlierRemove:(BOOL)remove
{
  removeCopy = remove;
  resampleCopy = resample;
  voxelizeCopy = voxelize;
  keyframeCopy = keyframe;
  v69.receiver = self;
  v69.super_class = OUKeyframeExtended;
  v11 = [(OUKeyframeExtended *)&v69 init];
  if ([keyframeCopy count])
  {
    std::vector<unsigned long>::vector[abi:ne200100](__p, [keyframeCopy count]);
    v12 = __p[0];
    if (__p[0] != __p[1])
    {
      v13 = 0;
      v14 = (__p[1] - __p[0] - 8) >> 3;
      v15 = vdupq_n_s64(v14);
      v16 = (v14 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v17 = xmmword_25D277E60;
      v18 = vdupq_n_s64(2uLL);
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v15, v17));
        if (v19.i8[0])
        {
          v12[v13] = v13;
        }

        if (v19.i8[4])
        {
          v12[v13 + 1] = v13 + 1;
        }

        v13 += 2;
        v17 = vaddq_s64(v17, v18);
      }

      while (v16 != v13);
    }

    if (voxelizeCopy)
    {
      points = [keyframeCopy points];
      if (!points || (v21 = __p[0], v22 = __p[1], __p[0] == __p[1]))
      {
        v65 = 0uLL;
        v66 = 0;
      }

      else
      {
        v65 = 0uLL;
        v66 = 0;
        v71 = 0u;
        v72 = 0u;
        v73 = 1065353216;
        v64 = vdupq_n_s32(0x3C23D70Au);
        do
        {
          v23 = vdivq_f32(*(points + 16 * *v21), v64);
          v23.i32[3] = 0;
          v24 = _simd_round_f4(v23);
          *v24.f32 = vcvt_s32_f32(*v24.f32);
          LOWORD(v25) = 0;
          WORD1(v25) = v24.i16[0];
          WORD2(v25) = v24.i16[2];
          *(&v25 + 6) = v24.f32[2];
          v70 = v25;
          if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(&v71, &v70))
          {
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v71, &v70);
            std::vector<unsigned long>::push_back[abi:ne200100](&v65, v21);
          }

          ++v21;
        }

        while (v21 != v22);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v71);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = v65;
      v68 = v66;
    }

    if (resampleCopy)
    {
      *&v72 = 0;
      v27 = 0uLL;
      v71 = 0u;
      v28 = __p[0];
      if (__p[1] == __p[0])
      {
        v30 = 0;
      }

      else
      {
        v29 = 0;
        do
        {
          std::vector<unsigned long>::push_back[abi:ne200100](&v71, &v28[v29]);
          v29 = v29 + 3;
          v28 = __p[0];
        }

        while (v29 < (__p[1] - __p[0]) >> 3);
        v27 = v71;
        v30 = v72;
      }

      *__p = v27;
      *&v71 = v28;
      *&v72 = v68;
      v68 = v30;
      if (v28)
      {
        *(&v71 + 1) = v28;
        operator delete(v28);
      }
    }

    if (removeCopy)
    {
      points2 = [keyframeCopy points];
      v32 = points2;
      if (points2)
      {
        v33 = __p[0];
        v34 = __p[1];
        if (__p[0] != __p[1])
        {
          v71 = 0uLL;
          v35 = 0;
          v36 = __p[0];
          *&v72 = 0;
          do
          {
            v37 = *v36++;
            v38 = *(points2 + 16 * v37);
            v35 = vadd_f32(v35, v38);
          }

          while (v36 != __p[1]);
          v38.f32[0] = ((__p[1] - __p[0]) >> 3);
          v39 = vdup_lane_s32(v38, 0);
          v40 = vdiv_f32(v35, v39);
          v41 = 0;
          v42 = __p[0];
          do
          {
            v43 = *v42++;
            v44 = vsub_f32(*(points2 + 16 * v43), v40);
            v41 = vmla_f32(v41, v44, v44);
          }

          while (v42 != __p[1]);
          v45 = vsqrt_f32(vdiv_f32(v41, v39));
          __asm { FMOV            V1.2S, #3.0 }

          v51 = vmul_f32(v45, _D1);
          do
          {
            v52 = vcgt_f32(vabd_f32(*(v32 + 16 * *v33), v40), v51);
            if (((v52.i32[0] | v52.i32[1]) & 1) == 0)
            {
              std::vector<unsigned long>::push_back[abi:ne200100](&v71, v33);
            }

            ++v33;
          }

          while (v33 != v34);
          v53 = v72;
          v54 = __p[0];
          *__p = v71;
          *&v71 = v54;
          *&v72 = v68;
          v68 = v53;
          if (v54)
          {
            *(&v71 + 1) = v54;
            operator delete(v54);
          }
        }
      }
    }

    [(OUKeyframeExtended *)v11 select:(__p[1] - __p[0]) >> 3 indices:*&v64 from:?];
    identifier = [keyframeCopy identifier];
    identifier = v11->identifier;
    v11->identifier = identifier;

    [keyframeCopy cameraPose];
    *&v11[1].super.isa = v57;
    *&v11[1]._anon_8[8] = v58;
    *v11[1]._anon_20 = v59;
    *&v11[1]._anon_20[16] = v60;
    [keyframeCopy timestamp];
    v11->timestamp = v61;
    v11->groupId = 0;
    v62 = v11;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v26 = v11;
  }

  return v11;
}

- (__n128)cameraPose
{
  result = *(self + 160);
  v2 = *(self + 176);
  v3 = *(self + 192);
  v4 = *(self + 208);
  return result;
}

- (__n128)setCameraPose:(__n128)pose
{
  result[10] = a2;
  result[11] = pose;
  result[12] = a4;
  result[13] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end