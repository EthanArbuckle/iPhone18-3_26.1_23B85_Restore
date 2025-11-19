uint64_t *re::DynamicArray<re::anonymous namespace::PiecewiseBezierCurve>::~DynamicArray(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = a1[2];
      if (v4)
      {
        v5 = 176 * v4;
        v6 = v3 + 128;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          re::DynamicArray<unsigned long>::deinit(v6 - 40);
          re::DynamicArray<unsigned long>::deinit(v6 - 80);
          v6 += 176;
          v5 -= 176;
        }

        while (v5);
        v2 = *a1;
        v3 = a1[4];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[4] = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    ++*(a1 + 6);
  }

  return a1;
}

void *re::anonymous namespace::extractControlPointsCallback(void *this, uint64_t a2, const CGPathElement *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!this || !a2)
  {
    return this;
  }

  v4 = this;
  v5 = *a2;
  if (*a2 <= 1)
  {
    if (!v5)
    {
      v14[0] = 1;
      v8.i64[0] = 0x7F0000007FLL;
      v8.i64[1] = 0x7F0000007FLL;
      v15 = vnegq_f32(v8);
      v16 = v8;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      v20 = 0;
      v27 = 0;
      v21 = 0u;
      v22 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0;
      v26 = 0;
      v13 = vcvt_f32_f64(**(a2 + 8));
      re::DynamicArray<unsigned long>::add(&v24 + 1, &v13);
      v9 = **(a2 + 8);
      *v9.f32 = vcvt_f32_f64(v9);
      v10 = v15;
      v11 = v16;
      v10.i32[3] = 0;
      v11.i32[3] = 0;
      v15 = vminnmq_f32(v10, v9);
      v16 = vmaxnmq_f32(v11, v9);
      if (*(&v24 + 1))
      {
        if (v27)
        {
          (*(**(&v24 + 1) + 40))(v12);
        }

        v27 = 0;
        v25 = 0uLL;
        *(&v24 + 1) = 0;
        ++v26;
      }

      if (*(&v21 + 1))
      {
        if (v24)
        {
          (*(**(&v21 + 1) + 40))(v12);
        }

        *&v24 = 0;
        v22 = 0uLL;
        *(&v21 + 1) = 0;
        ++v23;
      }

      this = v17;
      if (v17 && v21)
      {
        return (*(*v17 + 40))(v12);
      }

      return this;
    }

    if (v5 != 1)
    {
LABEL_28:
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unknown element type!", "!Unreachable code", "extractControlPointsCallback", 155);
      this = _os_crash();
      __break(1u);
      return this;
    }

    v6 = (this[4] + 176 * this[2] - 176);
    v7 = 1;
LABEL_13:
  }

  if (v5 == 2)
  {
    v6 = (this[4] + 176 * this[2] - 176);
    v7 = 2;
    goto LABEL_13;
  }

  if (v5 == 3)
  {
    v6 = (this[4] + 176 * this[2] - 176);
    v7 = 3;
    goto LABEL_13;
  }

  if (v5 != 4)
  {
    goto LABEL_28;
  }

  return this;
}

__n128 re::DynamicArray<re::anonymous namespace::PiecewiseBezierCurve>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v20 = 2 * v4;
      v21 = v4 == 0;
      v22 = 8;
      if (!v21)
      {
        v22 = v20;
      }

      if (v22 <= v6)
      {
        v23 = v6;
      }

      else
      {
        v23 = v22;
      }
    }

    else
    {
      ++*(a1 + 24);
    }
  }

  v8 = *(a1 + 32) + 176 * *(a1 + 16);
  result = *a2;
  v10 = *(a2 + 32);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 32) = v10;
  *v8 = result;
  *(v8 + 80) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = 0;
  *(v8 + 72) = 0;
  v11 = *(a2 + 56);
  *(v8 + 48) = *(a2 + 48);
  *(v8 + 56) = v11;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v12 = *(v8 + 64);
  *(v8 + 64) = *(a2 + 64);
  *(a2 + 64) = v12;
  v13 = *(v8 + 80);
  *(v8 + 80) = *(a2 + 80);
  *(a2 + 80) = v13;
  ++*(a2 + 72);
  ++*(v8 + 72);
  *(v8 + 120) = 0;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 88) = 0;
  *(v8 + 112) = 0;
  v14 = *(a2 + 96);
  *(v8 + 88) = *(a2 + 88);
  *(v8 + 96) = v14;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v15 = *(v8 + 104);
  *(v8 + 104) = *(a2 + 104);
  *(a2 + 104) = v15;
  v16 = *(v8 + 120);
  *(v8 + 120) = *(a2 + 120);
  *(a2 + 120) = v16;
  ++*(a2 + 112);
  ++*(v8 + 112);
  *(v8 + 160) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 128) = 0;
  *(v8 + 152) = 0;
  v17 = *(a2 + 136);
  *(v8 + 128) = *(a2 + 128);
  *(v8 + 136) = v17;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v18 = *(v8 + 144);
  *(v8 + 144) = *(a2 + 144);
  *(a2 + 144) = v18;
  v19 = *(v8 + 160);
  *(v8 + 160) = *(a2 + 160);
  *(a2 + 160) = v19;
  ++*(a2 + 152);
  ++*(v8 + 152);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void *re::anonymous namespace::addCGElementToBoundaryHelper(unsigned int a1, float32x4_t *a2, uint64_t a3)
{
  v5 = a1;
  v14 = a1;
  if (a2->u8[0] < a1)
  {
    a2->i8[0] = a1;
  }

  v6 = 0;
  if (a1 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a1;
  }

  v8 = 16 * v7;
  do
  {
    v13 = vcvt_f32_f64(*(*(a3 + 8) + v6));
    re::DynamicArray<unsigned long>::add(a2[8].i64, &v13);
    v9 = *(*(a3 + 8) + v6);
    *v9.f32 = vcvt_f32_f64(v9);
    v10 = a2[1];
    v11 = a2[2];
    v10.i32[3] = 0;
    v11.i32[3] = 0;
    a2[1] = vminnmq_f32(v10, v9);
    a2[2] = vmaxnmq_f32(v11, v9);
    v6 += 16;
  }

  while (v8 != v6);
  v13 = (a2[9].i64[0] + ~v5);
  re::DynamicArray<unsigned long>::add(&a2[5].i64[1], &v13);
  return re::DynamicArray<unsigned char>::add(a2[3].i64, &v14);
}

void *re::DynamicArray<re::anonymous namespace::PiecewiseBezierCurve>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB0uLL))
        {
          v2 = 176 * a2;
          result = (*(*result + 32))(result, 176 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 176, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 176 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          v13 = *(v8 + 32);
          *(v11 + 1) = *(v8 + 16);
          *(v11 + 2) = v13;
          *v11 = v12;
          v11[10] = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          *(v11 + 18) = 0;
          v14 = v8 + 48;
          v15 = *(v8 + 56);
          v11[6] = *(v8 + 48);
          *(v8 + 48) = 0;
          v11[7] = v15;
          *(v8 + 56) = 0;
          v16 = v11[8];
          v11[8] = *(v8 + 64);
          *(v8 + 64) = v16;
          v17 = v11[10];
          v11[10] = *(v8 + 80);
          *(v8 + 80) = v17;
          ++*(v8 + 72);
          ++*(v11 + 18);
          v11[15] = 0;
          v11[12] = 0;
          v11[13] = 0;
          v11[11] = 0;
          *(v11 + 28) = 0;
          v18 = v8 + 88;
          v19 = *(v8 + 96);
          v11[11] = *(v8 + 88);
          *(v8 + 88) = 0;
          v11[12] = v19;
          *(v8 + 96) = 0;
          v20 = v11[13];
          v11[13] = *(v8 + 104);
          *(v8 + 104) = v20;
          v21 = v11[15];
          v11[15] = *(v8 + 120);
          *(v8 + 120) = v21;
          ++*(v8 + 112);
          ++*(v11 + 28);
          v11[20] = 0;
          v11[17] = 0;
          v11[18] = 0;
          v11[16] = 0;
          *(v11 + 38) = 0;
          v22 = *(v8 + 128);
          v23 = *(v8 + 136);
          v24 = v8 + 128;
          v11[16] = v22;
          v11[17] = v23;
          *v24 = 0;
          *(v24 + 8) = 0;
          v25 = v11[18];
          v11[18] = *(v24 + 16);
          *(v24 + 16) = v25;
          v26 = v11[20];
          v11[20] = *(v24 + 32);
          *(v24 + 32) = v26;
          ++*(v24 + 24);
          ++*(v11 + 38);
          re::DynamicArray<unsigned long>::deinit(v24);
          re::DynamicArray<unsigned long>::deinit(v18);
          re::DynamicArray<unsigned long>::deinit(v14);
          v11 += 22;
          v8 = v24 + 48;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::anonymous namespace::loadControlHullFromCoreText(__CTFont const*,unsigned short)::$_0 &,re::anonymous namespace::PiecewiseBezierCurve *,false>(uint64_t result, float32x4_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  v319 = *MEMORY[0x1E69E9840];
  v7 = 0uLL;
  while (2)
  {
    v286 = &a2[-21];
    v287 = &a2[-11];
    v284 = &a2[-32];
    v285 = &a2[-20];
    v283 = &a2[-31];
    v8 = v6;
    while (1)
    {
      while (1)
      {
        v6 = v8;
        v9 = a2 - v8;
        v10 = 0x2E8BA2E8BA2E8BA3 * ((a2 - v8) >> 4);
        v11 = v10 - 2;
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v139 = vsubq_f32(*(v8 + 32), *(v8 + 16));
            v139.i32[3] = 0;
            v140 = vmaxnmq_f32(v139, 0).u64[0];
            v141 = vmuls_lane_f32(v140.f32[0], v140, 1);
            v142 = vmaxnm_f32(vsub_f32(*(v8 + 208), *(v8 + 192)), 0);
            *v139.f32 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
            v143 = vmul_f32(vzip1_s32(*v139.f32, v142), vzip2_s32(*v139.f32, v142));
            if (v143.f32[1] > v141)
            {
              if (v143.f32[0] > v143.f32[1])
              {
                goto LABEL_132;
              }

              v268 = vmaxnm_f32(vsub_f32(*(v8 + 208), *(v8 + 192)), 0);
              v269 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
              v270 = vmul_f32(vzip1_s32(v269, v268), vzip2_s32(v269, v268));
              if ((vcgt_f32(v270, vdup_lane_s32(v270, 1)).u32[0] & 1) == 0)
              {
                return result;
              }

              v144 = (v8 + 176);
LABEL_133:
              v145 = &a2[-11];
            }

            if (v143.f32[0] <= v143.f32[1])
            {
              return result;
            }

            v244 = (v8 + 176);
            v245 = &a2[-11];
LABEL_258:
            v280 = vmaxnm_f32(vsub_f32(*(v8 + 32), *(v8 + 16)), 0);
            v281 = vmaxnm_f32(vsub_f32(*(v8 + 208), *(v8 + 192)), 0);
            v282 = vmul_f32(vzip1_s32(v281, v280), vzip2_s32(v281, v280));
            if ((vcgt_f32(v282, vdup_lane_s32(v282, 1)).u32[0] & 1) == 0)
            {
              return result;
            }

            v145 = (v8 + 176);
            v144 = v8;
          }

          if (v10 != 4)
          {
            if (v10 == 5)
            {
            }

            goto LABEL_10;
          }

          v146 = vsubq_f32(*(v8 + 32), *(v8 + 16));
          v146.i32[3] = 0;
          v147 = vmaxnmq_f32(v146, 0).u64[0];
          v148 = vmuls_lane_f32(v147.f32[0], v147, 1);
          v149 = vmaxnm_f32(vsub_f32(*(v8 + 208), *(v8 + 192)), 0);
          *v146.f32 = vmaxnm_f32(vsub_f32(*(v8 + 384), *(v8 + 368)), 0);
          v150 = vmul_f32(vzip1_s32(*v146.f32, v149), vzip2_s32(*v146.f32, v149));
          if (v150.f32[1] <= v148)
          {
            if (v150.f32[0] <= v150.f32[1])
            {
              goto LABEL_255;
            }

            v246 = vmaxnm_f32(vsub_f32(*(v8 + 32), *(v8 + 16)), 0);
            v247 = vmaxnm_f32(vsub_f32(*(v8 + 208), *(v8 + 192)), 0);
            v248 = vmul_f32(vzip1_s32(v247, v246), vzip2_s32(v247, v246));
            if ((vcgt_f32(v248, vdup_lane_s32(v248, 1)).u8[0] & 1) == 0)
            {
              goto LABEL_255;
            }

            v151 = (v8 + 176);
          }

          else
          {
            if (v150.f32[0] <= v150.f32[1])
            {
              v271 = vmaxnm_f32(vsub_f32(*(v8 + 208), *(v8 + 192)), 0);
              v272 = vmaxnm_f32(vsub_f32(*(v8 + 384), *(v8 + 368)), 0);
              v273 = vmul_f32(vzip1_s32(v272, v271), vzip2_s32(v272, v271));
              if ((vcgt_f32(v273, vdup_lane_s32(v273, 1)).u8[0] & 1) == 0)
              {
                goto LABEL_255;
              }

              v249 = (v8 + 176);
              v151 = (v8 + 352);
LABEL_254:
LABEL_255:
              v274 = vmaxnm_f32(vsub_f32(*(v8 + 384), *(v8 + 368)), 0);
              v275 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
              v276 = vmul_f32(vzip1_s32(v275, v274), vzip2_s32(v275, v274));
              if ((vcgt_f32(v276, vdup_lane_s32(v276, 1)).u32[0] & 1) == 0)
              {
                return result;
              }

              v277 = vmaxnm_f32(vsub_f32(*(v8 + 208), *(v8 + 192)), 0);
              v278 = vmaxnm_f32(vsub_f32(*(v8 + 384), *(v8 + 368)), 0);
              v279 = vmul_f32(vzip1_s32(v278, v277), vzip2_s32(v278, v277));
              if ((vcgt_f32(v279, vdup_lane_s32(v279, 1)).u32[0] & 1) == 0)
              {
                return result;
              }

              v244 = (v8 + 176);
              v245 = (v8 + 352);
              goto LABEL_258;
            }

            v151 = (v8 + 352);
          }

          v249 = v8;
          goto LABEL_254;
        }

        if (v10 < 2)
        {
          return result;
        }

        if (v10 == 2)
        {
          v136 = vmaxnm_f32(vsub_f32(*(v8 + 32), *(v8 + 16)), 0);
          v137 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
          v138 = vmul_f32(vzip1_s32(v137, v136), vzip2_s32(v137, v136));
          if ((vcgt_f32(v138, vdup_lane_s32(v138, 1)).u32[0] & 1) == 0)
          {
            return result;
          }

LABEL_132:
          v144 = v8;
          goto LABEL_133;
        }

LABEL_10:
        if (v9 <= 4223)
        {
          if (a4)
          {
            if (v8 != a2)
            {
              v152 = v8 + 176;
              if ((v8 + 176) != a2)
              {
                v153 = 0;
                v154 = v8;
                do
                {
                  v155 = v152;
                  v156 = vmaxnm_f32(vsub_f32(*(v154 + 32), *(v154 + 16)), 0);
                  v157 = vmaxnm_f32(vsub_f32(*(v154 + 208), *(v154 + 192)), 0);
                  v158 = vmul_f32(vzip1_s32(v157, v156), vzip2_s32(v157, v156));
                  if (vcgt_f32(v158, vdup_lane_s32(v158, 1)).u32[0])
                  {
                    v159 = *v152;
                    v160 = *(v152 + 32);
                    v307 = *(v152 + 16);
                    v308 = v160;
                    v306 = v159;
                    v309 = *(v154 + 224);
                    *(v154 + 224) = 0;
                    v310 = *(v154 + 232);
                    *(v154 + 232) = 0u;
                    ++*(v154 + 248);
                    v311 = 1;
                    v161 = *(v154 + 272);
                    v312 = *(v154 + 256);
                    v313 = v161;
                    *(v154 + 256) = 0u;
                    *(v154 + 272) = 0u;
                    ++*(v154 + 288);
                    v314 = 1;
                    v162 = *(v154 + 296);
                    *(v154 + 296) = 0u;
                    v315 = v162;
                    v163 = *(v154 + 312);
                    *(v154 + 312) = 0u;
                    v316 = v163;
                    v318 = *(v154 + 336);
                    *(v154 + 336) = 0;
                    ++*(v154 + 328);
                    v164 = v153;
                    v317 = 1;
                    while (1)
                    {
                      v165 = (v8 + v164);
                      v166 = *(v8 + v164 + 16);
                      v165[11] = *(v8 + v164);
                      v165[12] = v166;
                      v165[13] = *(v8 + v164 + 32);
                      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v8 + v164 + 224, v8 + v164 + 48);
                      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v165 + 264, v165 + 88);
                      re::DynamicArray<re::RigComponentConstraint>::operator=((v165 + 19), (v165 + 8));
                      if (!v164)
                      {
                        break;
                      }

                      v167 = vmaxnm_f32(vsub_f32(*(v165 - 9), *(v165 - 10)), 0);
                      v168 = vmaxnm_f32(vsub_f32(*v308.f32, *v307.f32), 0);
                      v169 = vmul_f32(vzip1_s32(v168, v167), vzip2_s32(v168, v167));
                      v164 -= 176;
                      if ((vcgt_f32(v169, vdup_lane_s32(v169, 1)).u8[0] & 1) == 0)
                      {
                        v170 = v8 + v164 + 176;
                        goto LABEL_147;
                      }
                    }

                    v170 = v8;
LABEL_147:
                    v171 = v306;
                    v172 = v308;
                    *(v170 + 16) = v307;
                    *(v170 + 32) = v172;
                    *v170 = v171;
                    re::DynamicArray<re::internal::DeferredUnregister *>::operator=((v165 + 3), &v309);
                    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v165 + 88, &v312 + 8);
                    re::DynamicArray<re::RigComponentConstraint>::operator=((v165 + 8), &v315 + 8);
                    if (*(&v315 + 1))
                    {
                      if (v318)
                      {
                        (*(**(&v315 + 1) + 40))();
                      }

                      v318 = 0;
                      v316 = 0uLL;
                      *(&v315 + 1) = 0;
                      ++v317;
                    }

                    if (*(&v312 + 1))
                    {
                      if (v315)
                      {
                        (*(**(&v312 + 1) + 40))();
                      }

                      *&v315 = 0;
                      v313 = 0uLL;
                      *(&v312 + 1) = 0;
                      ++v314;
                    }

                    result = v309;
                    if (v309 && v312)
                    {
                      result = (*(*v309 + 40))();
                    }
                  }

                  v152 = &v155[11];
                  v153 += 176;
                  v154 = v155;
                }

                while (&v155[11] != a2);
              }
            }
          }

          else if (v8 != a2)
          {
            v250 = v8 + 176;
            if ((v8 + 176) != a2)
            {
              v251 = v8 - 160;
              do
              {
                v252 = v250;
                v253 = vmaxnm_f32(vsub_f32(*(v6 + 32), *(v6 + 16)), 0);
                v254 = vmaxnm_f32(vsub_f32(*(v6 + 208), *(v6 + 192)), 0);
                v255 = vmul_f32(vzip1_s32(v254, v253), vzip2_s32(v254, v253));
                if (vcgt_f32(v255, vdup_lane_s32(v255, 1)).u32[0])
                {
                  v256 = *v250;
                  v257 = *(v250 + 32);
                  v307 = *(v250 + 16);
                  v308 = v257;
                  v306 = v256;
                  v309 = *(v6 + 224);
                  *(v6 + 224) = 0;
                  v310 = *(v6 + 232);
                  *(v6 + 232) = 0u;
                  ++*(v6 + 248);
                  v311 = 1;
                  v258 = *(v6 + 272);
                  v312 = *(v6 + 256);
                  v313 = v258;
                  *(v6 + 256) = 0u;
                  *(v6 + 272) = 0u;
                  ++*(v6 + 288);
                  v314 = 1;
                  v259 = *(v6 + 296);
                  *(v6 + 296) = 0u;
                  v315 = v259;
                  v260 = *(v6 + 312);
                  *(v6 + 312) = 0u;
                  v316 = v260;
                  v318 = *(v6 + 336);
                  *(v6 + 336) = 0;
                  ++*(v6 + 328);
                  v261 = v251;
                  v317 = 1;
                  do
                  {
                    v262 = *(v261 + 176);
                    *(v261 + 336) = *(v261 + 160);
                    *(v261 + 352) = v262;
                    *(v261 + 368) = *(v261 + 192);
                    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v261 + 384, v261 + 208);
                    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v261 + 424, v261 + 248);
                    re::DynamicArray<re::RigComponentConstraint>::operator=(v261 + 464, v261 + 288);
                    v263 = vmaxnm_f32(vsub_f32(*(v261 + 16), *v261), 0);
                    v264 = vmaxnm_f32(vsub_f32(*v308.f32, *v307.f32), 0);
                    v265 = vmul_f32(vzip1_s32(v264, v263), vzip2_s32(v264, v263));
                    v261 -= 176;
                  }

                  while ((vcgt_f32(v265, vdup_lane_s32(v265, 1)).u8[0] & 1) != 0);
                  v266 = v306;
                  v267 = v308;
                  *(v261 + 352) = v307;
                  *(v261 + 368) = v267;
                  *(v261 + 336) = v266;
                  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v261 + 384, &v309);
                  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v261 + 424, &v312 + 8);
                  re::DynamicArray<re::RigComponentConstraint>::operator=(v261 + 464, &v315 + 8);
                  if (*(&v315 + 1))
                  {
                    if (v318)
                    {
                      (*(**(&v315 + 1) + 40))();
                    }

                    v318 = 0;
                    v316 = 0uLL;
                    *(&v315 + 1) = 0;
                    ++v317;
                  }

                  if (*(&v312 + 1))
                  {
                    if (v315)
                    {
                      (*(**(&v312 + 1) + 40))();
                    }

                    *&v315 = 0;
                    v313 = 0uLL;
                    *(&v312 + 1) = 0;
                    ++v314;
                  }

                  result = v309;
                  if (v309 && v312)
                  {
                    result = (*(*v309 + 40))();
                  }
                }

                v250 = v252 + 176;
                v251 += 176;
                v6 = v252;
              }

              while ((v252 + 176) != a2);
            }
          }

          return result;
        }

        if (!a3)
        {
          if (v8 != a2)
          {
            v173 = v11 >> 1;
            v174 = v11 >> 1;
            do
            {
              v175 = v174;
              if (v173 >= v174)
              {
                v176 = (2 * v174) | 1;
                v177 = v6 + 176 * v176;
                if (2 * v175 + 2 < v10)
                {
                  v178 = vmaxnm_f32(vsub_f32(*(v177 + 208), *(v177 + 192)), 0);
                  v179 = vmaxnm_f32(vsub_f32(*(v177 + 32), *(v177 + 16)), 0);
                  v180 = vmul_f32(vzip1_s32(v179, v178), vzip2_s32(v179, v178));
                  if (vcgt_f32(v180, vdup_lane_s32(v180, 1)).u8[0])
                  {
                    v177 += 176;
                    v176 = 2 * v175 + 2;
                  }
                }

                v181 = v6 + 176 * v175;
                v182 = vmaxnm_f32(vsub_f32(*(v181 + 32), *(v181 + 16)), 0);
                v183 = vmaxnm_f32(vsub_f32(*(v177 + 32), *(v177 + 16)), 0);
                v184 = vmul_f32(vzip1_s32(v183, v182), vzip2_s32(v183, v182));
                if ((vcgt_f32(v184, vdup_lane_s32(v184, 1)).u8[0] & 1) == 0)
                {
                  v185 = *v181;
                  v186 = *(v181 + 32);
                  v307 = *(v181 + 16);
                  v308 = v186;
                  v306 = v185;
                  v309 = *(v181 + 48);
                  *(v181 + 48) = 0;
                  *&v310 = *(v181 + 56);
                  *(v181 + 56) = 0;
                  *(&v310 + 1) = *(v181 + 64);
                  *(v181 + 64) = 0;
                  *&v312 = *(v181 + 80);
                  *(v181 + 80) = 0;
                  ++*(v181 + 72);
                  v311 = 1;
                  *(&v312 + 1) = *(v181 + 88);
                  *(v181 + 88) = 0;
                  *&v313 = *(v181 + 96);
                  *(v181 + 96) = 0;
                  *(&v313 + 1) = *(v181 + 104);
                  *(v181 + 104) = 0;
                  *&v315 = *(v181 + 120);
                  *(v181 + 120) = 0;
                  ++*(v181 + 112);
                  v314 = 1;
                  *(&v315 + 1) = *(v181 + 128);
                  *(v181 + 128) = 0;
                  *&v316 = *(v181 + 136);
                  *(v181 + 136) = 0;
                  *(&v316 + 1) = *(v181 + 144);
                  *(v181 + 144) = 0;
                  v318 = *(v181 + 160);
                  *(v181 + 160) = 0;
                  ++*(v181 + 152);
                  v317 = 1;
                  v187 = vmaxnm_f32(*&vsubq_f32(v308, v307), 0);
                  do
                  {
                    v188 = v177;
                    v189 = *v177;
                    v190 = *(v177 + 32);
                    *(v181 + 16) = *(v177 + 16);
                    *(v181 + 32) = v190;
                    *v181 = v189;
                    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v181 + 48, v177 + 48);
                    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v181 + 88, v188 + 88);
                    re::DynamicArray<re::RigComponentConstraint>::operator=(v181 + 128, v188 + 128);
                    if (v173 < v176)
                    {
                      break;
                    }

                    v191 = (2 * v176) | 1;
                    v177 = v6 + 176 * v191;
                    if (2 * v176 + 2 < v10)
                    {
                      v192 = vmaxnm_f32(vsub_f32(*(v177 + 208), *(v177 + 192)), 0);
                      v193 = vmaxnm_f32(vsub_f32(*(v177 + 32), *(v177 + 16)), 0);
                      v194 = vmul_f32(vzip1_s32(v193, v192), vzip2_s32(v193, v192));
                      if (vcgt_f32(v194, vdup_lane_s32(v194, 1)).u8[0])
                      {
                        v177 += 176;
                        v191 = 2 * v176 + 2;
                      }
                    }

                    v195 = vmaxnm_f32(vsub_f32(*(v177 + 32), *(v177 + 16)), 0);
                    v196 = vmul_f32(vzip1_s32(v195, v187), vzip2_s32(v195, v187));
                    v181 = v188;
                    v176 = v191;
                  }

                  while ((vcgt_f32(v196, vdup_lane_s32(v196, 1)).u8[0] & 1) == 0);
                  v197 = v306;
                  v198 = v308;
                  *(v188 + 16) = v307;
                  *(v188 + 32) = v198;
                  *v188 = v197;
                  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v188 + 48, &v309);
                  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v188 + 88, &v312 + 8);
                  re::DynamicArray<re::RigComponentConstraint>::operator=(v188 + 128, &v315 + 8);
                  if (*(&v315 + 1))
                  {
                    if (v318)
                    {
                      (*(**(&v315 + 1) + 40))();
                    }

                    v318 = 0;
                    v316 = 0uLL;
                    *(&v315 + 1) = 0;
                    ++v317;
                  }

                  if (*(&v312 + 1))
                  {
                    if (v315)
                    {
                      (*(**(&v312 + 1) + 40))();
                    }

                    *&v315 = 0;
                    v313 = 0uLL;
                    *(&v312 + 1) = 0;
                    ++v314;
                  }

                  if (v309 && v312)
                  {
                    (*(*v309 + 40))();
                  }
                }
              }

              v174 = v175 - 1;
            }

            while (v175);
            v199 = 0x2E8BA2E8BA2E8BA3 * (v9 >> 4);
            do
            {
              v200 = 0;
              v201 = a2;
              v291 = *(v6 + 16);
              v292 = *(v6 + 32);
              v290 = *v6;
              v202 = *(v6 + 56);
              v293[0] = *(v6 + 48);
              *(v6 + 48) = 0;
              v293[1] = v202;
              *(v6 + 56) = 0;
              v293[2] = *(v6 + 64);
              *(v6 + 64) = 0;
              v203 = *(v6 + 88);
              v295 = *(v6 + 80);
              *(v6 + 80) = 0;
              ++*(v6 + 72);
              v294 = 1;
              v296 = v203;
              *(v6 + 88) = 0;
              v204 = *(v6 + 104);
              v297 = *(v6 + 96);
              *(v6 + 96) = 0;
              v298 = v204;
              *(v6 + 104) = 0;
              v205 = *(v6 + 128);
              v300 = *(v6 + 120);
              *(v6 + 120) = 0;
              ++*(v6 + 112);
              v299 = 1;
              v301 = v205;
              *(v6 + 128) = 0;
              v206 = *(v6 + 144);
              v302 = *(v6 + 136);
              *(v6 + 136) = 0;
              v303 = v206;
              *(v6 + 144) = 0;
              v305 = *(v6 + 160);
              *(v6 + 160) = 0;
              ++*(v6 + 152);
              v207 = v6;
              v304 = 1;
              do
              {
                v208 = &v207[11 * v200];
                v209 = v208 + 22;
                if (2 * v200 + 2 >= v199)
                {
                  v200 = (2 * v200) | 1;
                }

                else
                {
                  v210 = vmaxnm_f32(vsub_f32(v208[48], v208[46]), 0);
                  v211 = vmaxnm_f32(vsub_f32(v208[26], v208[24]), 0);
                  v212 = vmul_f32(vzip1_s32(v211, v210), vzip2_s32(v211, v210));
                  v213 = v208 + 44;
                  if (vcgt_f32(v212, vdup_lane_s32(v212, 1)).u8[0])
                  {
                    v209 = v213;
                    v200 = 2 * v200 + 2;
                  }

                  else
                  {
                    v200 = (2 * v200) | 1;
                  }
                }

                v214 = *v209->f32;
                v215 = *v209[4].f32;
                v207[1] = *v209[2].f32;
                v207[2] = v215;
                *v207 = v214;
                re::DynamicArray<re::internal::DeferredUnregister *>::operator=((v207 + 3), &v209[6]);
                re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v207 + 88, &v209[11]);
                re::DynamicArray<re::RigComponentConstraint>::operator=((v207 + 8), &v209[16]);
                v207 = v209;
              }

              while (v200 <= ((v199 - 2) >> 1));
              a2 = v201 - 11;
              if (v209 == &v201[-11])
              {
                *v209[2].f32 = v291;
                *v209[4].f32 = v292;
                *v209->f32 = v290;
                re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v209[6], v293);
                re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v209[11], &v296);
                re::DynamicArray<re::RigComponentConstraint>::operator=(&v209[16], &v301);
              }

              else
              {
                v216 = *a2;
                v217 = v201[-9];
                *v209[2].f32 = v201[-10];
                *v209[4].f32 = v217;
                *v209->f32 = v216;
                v218 = &v201[-8];
                re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v209[6], &v201[-8]);
                v219 = &v201[-6].i64[1];
                re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v209[11], &v201[-6].i64[1]);
                v220 = &v201[-3];
                re::DynamicArray<re::RigComponentConstraint>::operator=(&v209[16], v220);
                *a2 = v290;
                a2[1] = v291;
                a2[2] = v292;
                re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v218, v293);
                re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v219, &v296);
                re::DynamicArray<re::RigComponentConstraint>::operator=(v220, &v301);
                v221 = &v209[22] - v6;
                if (v221 >= 177)
                {
                  v222 = (0x2E8BA2E8BA2E8BA3 * (v221 >> 4) - 2) >> 1;
                  v223 = v6 + 176 * v222;
                  v224 = vmaxnm_f32(vsub_f32(*(v223 + 32), *(v223 + 16)), 0);
                  v225 = vmaxnm_f32(vsub_f32(v209[4], v209[2]), 0);
                  v226 = vmul_f32(vzip1_s32(v224, v225), vzip2_s32(v224, v225));
                  if (vcgt_f32(v226, vdup_lane_s32(v226, 1)).u32[0])
                  {
                    v227 = *v209->f32;
                    v228 = *v209[2].f32;
                    v229 = *v209[4].f32;
                    v230 = v209[7];
                    v309 = v209[6];
                    v209[6] = 0;
                    *&v310 = v230;
                    v209[7] = 0;
                    *(&v310 + 1) = v209[8];
                    v209[8] = 0;
                    v231 = v209[11];
                    *&v312 = v209[10];
                    v209[10] = 0;
                    ++v209[9].i32[0];
                    *(&v312 + 1) = v231;
                    v209[11] = 0;
                    v232 = v209[13];
                    *&v313 = v209[12];
                    v209[12] = 0;
                    *(&v313 + 1) = v232;
                    v209[13] = 0;
                    v233 = v209[16];
                    *&v315 = v209[15];
                    v209[15] = 0;
                    ++v209[14].i32[0];
                    *(&v315 + 1) = v233;
                    v209[16] = 0;
                    v234 = v209[18];
                    *&v316 = v209[17];
                    v307 = v228;
                    v308 = v229;
                    v306 = v227;
                    v311 = 1;
                    v314 = 1;
                    v209[17] = 0;
                    *(&v316 + 1) = v234;
                    v209[18] = 0;
                    v318 = v209[20];
                    v209[20] = 0;
                    ++v209[19].i32[0];
                    v235 = vmaxnm_f32(*&vsubq_f32(v308, v307), 0);
                    v317 = 1;
                    do
                    {
                      v236 = v223;
                      v237 = *v223;
                      v238 = *(v223 + 32);
                      *v209[2].f32 = *(v223 + 16);
                      *v209[4].f32 = v238;
                      *v209->f32 = v237;
                      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v209[6], v223 + 48);
                      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v209[11], v236 + 88);
                      re::DynamicArray<re::RigComponentConstraint>::operator=(&v209[16], v236 + 128);
                      if (!v222)
                      {
                        break;
                      }

                      v222 = (v222 - 1) >> 1;
                      v223 = v6 + 176 * v222;
                      v239 = vmaxnm_f32(vsub_f32(*(v223 + 32), *(v223 + 16)), 0);
                      v240 = vmul_f32(vzip1_s32(v239, v235), vzip2_s32(v239, v235));
                      v209 = v236;
                    }

                    while ((vcgt_f32(v240, vdup_lane_s32(v240, 1)).u8[0] & 1) != 0);
                    v241 = v306;
                    v242 = v308;
                    *(v236 + 16) = v307;
                    *(v236 + 32) = v242;
                    *v236 = v241;
                    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v236 + 48, &v309);
                    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v236 + 88, &v312 + 8);
                    re::DynamicArray<re::RigComponentConstraint>::operator=(v236 + 128, &v315 + 8);
                    if (*(&v315 + 1))
                    {
                      if (v318)
                      {
                        (*(**(&v315 + 1) + 40))();
                      }

                      v318 = 0;
                      v316 = 0uLL;
                      *(&v315 + 1) = 0;
                      ++v317;
                    }

                    if (*(&v312 + 1))
                    {
                      if (v315)
                      {
                        (*(**(&v312 + 1) + 40))();
                      }

                      *&v315 = 0;
                      v313 = 0uLL;
                      *(&v312 + 1) = 0;
                      ++v314;
                    }

                    if (v309 && v312)
                    {
                      (*(*v309 + 40))();
                    }
                  }
                }
              }

              if (v301)
              {
                if (v305)
                {
                  (*(*v301 + 40))();
                }

                v305 = 0;
                v302 = 0;
                v303 = 0;
                v301 = 0;
                ++v304;
              }

              if (v296)
              {
                if (v300)
                {
                  (*(*v296 + 40))();
                }

                v300 = 0;
                v297 = 0;
                v298 = 0;
                v296 = 0;
                ++v299;
              }

              result = v293[0];
              if (v293[0] && v295)
              {
                result = (*(*v293[0] + 40))();
              }
            }

            while (v199-- > 2);
          }

          return result;
        }

        v12 = v10 >> 1;
        v13 = v8 + 176 * (v10 >> 1);
        if (v9 >= 0x5801)
        {
          v14 = vsubq_f32(*(v6 + 32), *(v6 + 16));
          v14.i32[3] = 0;
          v14.i64[0] = vmaxnmq_f32(v14, v7).u64[0];
          v15 = vmuls_lane_f32(v14.f32[0], *v14.f32, 1);
          *v14.f32 = vmaxnm_f32(vsub_f32(*(v13 + 32), *(v13 + 16)), 0);
          v16 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
          v17 = vmul_f32(vzip1_s32(v16, *v14.f32), vzip2_s32(v16, *v14.f32));
          if (v17.f32[1] <= v15)
          {
            {
LABEL_27:
              v35 = v6 + 176 * v12;
              v36 = v35 - 176;
              v37 = vsubq_f32(*(v6 + 208), *(v6 + 192));
              v37.i32[3] = 0;
              v37.i64[0] = vmaxnmq_f32(v37, 0).u64[0];
              v38 = vmuls_lane_f32(v37.f32[0], *v37.f32, 1);
              *v37.f32 = vmaxnm_f32(vsub_f32(*(v35 - 144), *(v35 - 160)), 0);
              v39 = vmaxnm_f32(vsub_f32(*v285, *v286), 0);
              v40 = vmul_f32(vzip1_s32(v39, *v37.f32), vzip2_s32(v39, *v37.f32));
              if (v40.f32[1] <= v38)
              {
                {
LABEL_39:
                  v52 = v6 + 176 * v12;
                  v53 = vsubq_f32(*(v6 + 384), *(v6 + 368));
                  v53.i32[3] = 0;
                  v53.i64[0] = vmaxnmq_f32(v53, 0).u64[0];
                  v54 = vmuls_lane_f32(v53.f32[0], *v53.f32, 1);
                  *v53.f32 = vmaxnm_f32(vsub_f32(*(v52 + 208), *(v52 + 192)), 0);
                  v55 = vmaxnm_f32(vsub_f32(*v283, *v284), 0);
                  v56 = vmul_f32(vzip1_s32(v55, *v53.f32), vzip2_s32(v55, *v53.f32));
                  if (v56.f32[1] <= v54)
                  {
                    {
LABEL_48:
                      v65 = vsubq_f32(*(v36 + 32), *(v36 + 16));
                      v65.i32[3] = 0;
                      v65.i64[0] = vmaxnmq_f32(v65, 0).u64[0];
                      v66 = vmuls_lane_f32(v65.f32[0], *v65.f32, 1);
                      *v65.f32 = vmaxnm_f32(vsub_f32(*(v13 + 32), *(v13 + 16)), 0);
                      v67 = vmaxnm_f32(vsub_f32(*(v52 + 208), *(v52 + 192)), 0);
                      v68 = vmul_f32(vzip1_s32(v67, *v65.f32), vzip2_s32(v67, *v65.f32));
                      if (v68.f32[1] <= v66)
                      {
                        if (v68.f32[0] <= v68.f32[1])
                        {
                          goto LABEL_57;
                        }

                        v71 = vmaxnm_f32(vsub_f32(*(v36 + 32), *(v36 + 16)), 0);
                        v72 = vmaxnm_f32(vsub_f32(*(v13 + 32), *(v13 + 16)), 0);
                        v73 = vmul_f32(vzip1_s32(v72, v71), vzip2_s32(v72, v71));
                        if ((vcgt_f32(v73, vdup_lane_s32(v73, 1)).u8[0] & 1) == 0)
                        {
                          goto LABEL_57;
                        }

                        v70 = v36;
                        v69 = v13;
                      }

                      else if (v68.f32[0] <= v68.f32[1])
                      {
                        v74 = vmaxnm_f32(vsub_f32(*(v13 + 32), *(v13 + 16)), 0);
                        v75 = vmaxnm_f32(vsub_f32(*(v52 + 208), *(v52 + 192)), 0);
                        v76 = vmul_f32(vzip1_s32(v75, v74), vzip2_s32(v75, v74));
                        if ((vcgt_f32(v76, vdup_lane_s32(v76, 1)).u8[0] & 1) == 0)
                        {
LABEL_57:
                          v27 = v6;
                          v31 = v13;
                          goto LABEL_58;
                        }

                        v69 = (v52 + 176);
                        v70 = v13;
                      }

                      else
                      {
                        v69 = (v52 + 176);
                        v70 = v36;
                      }

                      goto LABEL_57;
                    }

                    v57 = (v6 + 352);
                    v61 = (v52 + 176);
                  }

                  else
                  {
                    v57 = (v6 + 352);
                    if (v56.f32[0] <= v56.f32[1])
                    {
                      v58 = vmaxnm_f32(vsub_f32(*(v52 + 208), *(v52 + 192)), 0);
                      v59 = vmaxnm_f32(vsub_f32(*v283, *v284), 0);
                      v60 = vmul_f32(vzip1_s32(v59, v58), vzip2_s32(v59, v58));
                      if ((vcgt_f32(v60, vdup_lane_s32(v60, 1)).u8[0] & 1) == 0)
                      {
                        goto LABEL_48;
                      }

                      v57 = (v52 + 176);
                    }

                    v61 = &a2[-33];
                  }

                  goto LABEL_48;
                }

                v41 = (v6 + 176);
                v45 = v36;
              }

              else
              {
                v41 = (v6 + 176);
                if (v40.f32[0] <= v40.f32[1])
                {
                  v42 = vmaxnm_f32(vsub_f32(*(v36 + 32), *(v36 + 16)), 0);
                  v43 = vmaxnm_f32(vsub_f32(*v285, *v286), 0);
                  v44 = vmul_f32(vzip1_s32(v43, v42), vzip2_s32(v43, v42));
                  if ((vcgt_f32(v44, vdup_lane_s32(v44, 1)).u8[0] & 1) == 0)
                  {
                    goto LABEL_39;
                  }

                  v41 = v36;
                }

                v45 = &a2[-22];
              }

              goto LABEL_39;
            }

            v18 = v6;
            v22 = (v6 + 176 * (v10 >> 1));
          }

          else
          {
            v18 = v6;
            if (v17.f32[0] <= v17.f32[1])
            {
              v19 = vmaxnm_f32(vsub_f32(*(v13 + 32), *(v13 + 16)), 0);
              v20 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
              v21 = vmul_f32(vzip1_s32(v20, v19), vzip2_s32(v20, v19));
              if ((vcgt_f32(v21, vdup_lane_s32(v21, 1)).u8[0] & 1) == 0)
              {
                goto LABEL_27;
              }

              v18 = (v6 + 176 * (v10 >> 1));
            }

            v22 = &a2[-11];
          }

          goto LABEL_27;
        }

        v23 = vsubq_f32(*(v13 + 32), *(v13 + 16));
        v23.i32[3] = 0;
        v23.i64[0] = vmaxnmq_f32(v23, v7).u64[0];
        v24 = vmuls_lane_f32(v23.f32[0], *v23.f32, 1);
        *v23.f32 = vmaxnm_f32(vsub_f32(*(v6 + 32), *(v6 + 16)), 0);
        v25 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
        v26 = vmul_f32(vzip1_s32(v25, *v23.f32), vzip2_s32(v25, *v23.f32));
        if (v26.f32[1] <= v24)
        {
          if (v26.f32[0] > v26.f32[1])
          {
            v46 = vmaxnm_f32(vsub_f32(*(v13 + 32), *(v13 + 16)), 0);
            v47 = vmaxnm_f32(vsub_f32(*(v6 + 32), *(v6 + 16)), 0);
            v48 = vmul_f32(vzip1_s32(v47, v46), vzip2_s32(v47, v46));
            if (vcgt_f32(v48, vdup_lane_s32(v48, 1)).u8[0])
            {
              v27 = (v6 + 176 * (v10 >> 1));
              v31 = v6;
              goto LABEL_58;
            }
          }
        }

        else
        {
          v27 = (v6 + 176 * (v10 >> 1));
          if (v26.f32[0] > v26.f32[1])
          {
            goto LABEL_22;
          }

          v28 = vmaxnm_f32(vsub_f32(*(v6 + 32), *(v6 + 16)), 0);
          v29 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
          v30 = vmul_f32(vzip1_s32(v29, v28), vzip2_s32(v29, v28));
          if (vcgt_f32(v30, vdup_lane_s32(v30, 1)).u8[0])
          {
            v27 = v6;
LABEL_22:
            v31 = &a2[-11];
LABEL_58:
          }
        }

        --a3;
        if (a4)
        {
          break;
        }

        v77 = vmaxnm_f32(vsub_f32(*(v6 + 32), *(v6 + 16)), 0);
        v78 = vmaxnm_f32(vsub_f32(*(v6 - 144), *(v6 - 160)), 0);
        v79 = vmul_f32(vzip1_s32(v78, v77), vzip2_s32(v78, v77));
        if (vcgt_f32(v79, vdup_lane_s32(v79, 1)).u8[0])
        {
          break;
        }

        v109 = *v6;
        v110 = *(v6 + 16);
        v111 = *(v6 + 32);
        v309 = *(v6 + 48);
        *(v6 + 48) = 0;
        v112 = *(v6 + 64);
        *&v310 = *(v6 + 56);
        *(v6 + 56) = 0;
        *(&v310 + 1) = v112;
        *(v6 + 64) = 0;
        *&v312 = *(v6 + 80);
        *(v6 + 80) = 0;
        ++*(v6 + 72);
        *(&v312 + 1) = *(v6 + 88);
        *(v6 + 88) = 0;
        v113 = *(v6 + 104);
        *&v313 = *(v6 + 96);
        *(v6 + 96) = 0;
        *(&v313 + 1) = v113;
        *(v6 + 104) = 0;
        *&v315 = *(v6 + 120);
        *(v6 + 120) = 0;
        v114 = *(v6 + 128);
        ++*(v6 + 112);
        *(&v315 + 1) = v114;
        *(v6 + 128) = 0;
        v115 = *(v6 + 144);
        *&v316 = *(v6 + 136);
        v307 = v110;
        v308 = v111;
        v306 = v109;
        v311 = 1;
        v314 = 1;
        *(v6 + 136) = 0;
        *(&v316 + 1) = v115;
        *(v6 + 144) = 0;
        v318 = *(v6 + 160);
        *(v6 + 160) = 0;
        ++*(v6 + 152);
        v317 = 1;
        *&v109 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
        *v110.f32 = vmaxnm_f32(vsub_f32(*v308.f32, *v307.f32), 0);
        v116 = vmul_f32(vzip1_s32(*v110.f32, *&v109), vzip2_s32(*v110.f32, *&v109));
        if (vcgt_f32(v116, vdup_lane_s32(v116, 1)).u8[0])
        {
          v117 = v6;
          v118 = 0uLL;
          do
          {
            v8 = &v117[11];
            v119 = vsubq_f32(v117[13], v117[12]);
            v119.i32[3] = 0;
            v119.i64[0] = vmaxnmq_f32(v119, 0).u64[0];
            v117 += 11;
          }

          while (v116.f32[0] <= vmuls_lane_f32(v119.f32[0], *v119.f32, 1));
        }

        else
        {
          v120 = (v6 + 176);
          v118 = 0uLL;
          do
          {
            v8 = v120;
            if (v120 >= a2)
            {
              break;
            }

            v121 = vsubq_f32(v120[2], v120[1]);
            v121.i32[3] = 0;
            v121.i64[0] = vmaxnmq_f32(v121, 0).u64[0];
            v120 += 11;
          }

          while (v116.f32[0] <= vmuls_lane_f32(v121.f32[0], *v121.f32, 1));
        }

        v122 = a2;
        if (v8 < a2)
        {
          v123 = a2;
          do
          {
            v122 = &v123[-11];
            v124 = vsubq_f32(v123[-9], v123[-10]);
            v124.i32[3] = 0;
            v124.i64[0] = vmaxnmq_f32(v124, v118).u64[0];
            v123 -= 11;
          }

          while (v116.f32[0] > vmuls_lane_f32(v124.f32[0], *v124.f32, 1));
        }

        if (v8 < v122)
        {
          v289 = v116.f32[0];
          do
          {
            do
            {
              v126 = *(v8 + 192);
              v125 = *(v8 + 208);
              v8 += 176;
              v127 = vsubq_f32(v125, v126);
              v127.i32[3] = 0;
              v127.i64[0] = vmaxnmq_f32(v127, 0).u64[0];
            }

            while (v289 <= vmuls_lane_f32(v127.f32[0], *v127.f32, 1));
            do
            {
              v129 = *(v122 - 10);
              v128 = *(v122 - 9);
              v122 -= 11;
              v130 = vsubq_f32(v128, v129);
              v130.i32[3] = 0;
              v130.i64[0] = vmaxnmq_f32(v130, 0).u64[0];
            }

            while (v289 > vmuls_lane_f32(v130.f32[0], *v130.f32, 1));
          }

          while (v8 < v122);
        }

        v131 = (v8 - 176);
        if (v8 - 176 != v6)
        {
          v132 = *v131;
          v133 = *(v8 - 144);
          *(v6 + 16) = *(v8 - 160);
          *(v6 + 32) = v133;
          *v6 = v132;
          re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v6 + 48, v8 - 128);
          re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v6 + 88, v8 - 88);
          re::DynamicArray<re::RigComponentConstraint>::operator=(v6 + 128, v8 - 48);
        }

        v134 = v306;
        v135 = v308;
        *(v8 - 160) = v307;
        *(v8 - 144) = v135;
        *v131 = v134;
        re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v8 - 128, &v309);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v8 - 88, &v312 + 8);
        re::DynamicArray<re::RigComponentConstraint>::operator=(v8 - 48, &v315 + 8);
        if (*(&v315 + 1))
        {
          if (v318)
          {
            (*(**(&v315 + 1) + 40))();
          }

          v318 = 0;
          v316 = 0uLL;
          *(&v315 + 1) = 0;
          ++v317;
        }

        v7 = 0uLL;
        if (*(&v312 + 1))
        {
          if (v315)
          {
            (*(**(&v312 + 1) + 40))();
            v7 = 0uLL;
          }

          *&v315 = 0;
          v313 = 0uLL;
          *(&v312 + 1) = 0;
          ++v314;
        }

        result = v309;
        if (v309 && v312)
        {
          result = (*(*v309 + 40))();
          goto LABEL_94;
        }

LABEL_95:
        a4 = 0;
      }

      v80 = 0;
      v81 = *v6;
      v82 = *(v6 + 16);
      v83 = *(v6 + 32);
      v309 = *(v6 + 48);
      *(v6 + 48) = 0;
      v84 = *(v6 + 64);
      *&v310 = *(v6 + 56);
      *(v6 + 56) = 0;
      *(&v310 + 1) = v84;
      *(v6 + 64) = 0;
      *&v312 = *(v6 + 80);
      *(v6 + 80) = 0;
      ++*(v6 + 72);
      *(&v312 + 1) = *(v6 + 88);
      *(v6 + 88) = 0;
      v85 = *(v6 + 104);
      *&v313 = *(v6 + 96);
      *(v6 + 96) = 0;
      *(&v313 + 1) = v85;
      *(v6 + 104) = 0;
      *&v315 = *(v6 + 120);
      *(v6 + 120) = 0;
      ++*(v6 + 112);
      *(&v315 + 1) = *(v6 + 128);
      *(v6 + 128) = 0;
      v86 = *(v6 + 144);
      *&v316 = *(v6 + 136);
      *(v6 + 136) = 0;
      *(&v316 + 1) = v86;
      *(v6 + 144) = 0;
      v318 = *(v6 + 160);
      ++*(v6 + 152);
      v307 = v82;
      v308 = v83;
      v306 = v81;
      v311 = 1;
      v314 = 1;
      *(v6 + 160) = 0;
      v87 = vsubq_f32(v308, v307);
      v87.i32[3] = 0;
      v87.i64[0] = vmaxnmq_f32(v87, 0).u64[0];
      v88 = vmuls_lane_f32(v87.f32[0], *v87.f32, 1);
      v317 = 1;
      do
      {
        v89 = vsubq_f32(*(v6 + v80 + 208), *(v6 + v80 + 192));
        v89.i32[3] = 0;
        v89.i64[0] = vmaxnmq_f32(v89, 0).u64[0];
        v80 += 176;
      }

      while (vmuls_lane_f32(v89.f32[0], *v89.f32, 1) > v88);
      v90 = v6 + v80;
      v91 = a2;
      if (v80 == 176)
      {
        v94 = a2;
        while (v90 < v94)
        {
          v92 = &v94[-11];
          v95 = vsubq_f32(v94[-9], v94[-10]);
          v95.i32[3] = 0;
          v95.i64[0] = vmaxnmq_f32(v95, 0).u64[0];
          v94 -= 11;
          if (vmuls_lane_f32(v95.f32[0], *v95.f32, 1) > v88)
          {
            goto LABEL_71;
          }
        }

        v92 = v94;
      }

      else
      {
        do
        {
          v92 = &v91[-11];
          v93 = vsubq_f32(v91[-9], v91[-10]);
          v93.i32[3] = 0;
          v93.i64[0] = vmaxnmq_f32(v93, 0).u64[0];
          v91 -= 11;
        }

        while (vmuls_lane_f32(v93.f32[0], *v93.f32, 1) <= v88);
      }

LABEL_71:
      v8 = v90;
      if (v90 < v92)
      {
        v96 = v92;
        do
        {
          do
          {
            v98 = *(v8 + 192);
            v97 = *(v8 + 208);
            v8 += 176;
            v99 = vsubq_f32(v97, v98);
            v99.i32[3] = 0;
            v99.i64[0] = vmaxnmq_f32(v99, 0).u64[0];
          }

          while (vmuls_lane_f32(v99.f32[0], *v99.f32, 1) > v88);
          do
          {
            v101 = *(v96 - 10);
            v100 = *(v96 - 9);
            v96 -= 11;
            v102 = vsubq_f32(v100, v101);
            v102.i32[3] = 0;
            v102.i64[0] = vmaxnmq_f32(v102, 0).u64[0];
          }

          while (vmuls_lane_f32(v102.f32[0], *v102.f32, 1) <= v88);
        }

        while (v8 < v96);
      }

      v103 = (v8 - 176);
      if (v8 - 176 != v6)
      {
        v104 = *v103;
        v105 = *(v8 - 144);
        *(v6 + 16) = *(v8 - 160);
        *(v6 + 32) = v105;
        *v6 = v104;
        re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v6 + 48, v8 - 128);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v6 + 88, v8 - 88);
        re::DynamicArray<re::RigComponentConstraint>::operator=(v6 + 128, v8 - 48);
      }

      v106 = v306;
      v107 = v308;
      *(v8 - 160) = v307;
      *(v8 - 144) = v107;
      *v103 = v106;
      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v8 - 128, &v309);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v8 - 88, &v312 + 8);
      re::DynamicArray<re::RigComponentConstraint>::operator=(v8 - 48, &v315 + 8);
      if (*(&v315 + 1))
      {
        if (v318)
        {
          (*(**(&v315 + 1) + 40))();
        }

        v318 = 0;
        v316 = 0uLL;
        *(&v315 + 1) = 0;
        ++v317;
      }

      if (*(&v312 + 1))
      {
        if (v315)
        {
          (*(**(&v312 + 1) + 40))();
        }

        *&v315 = 0;
        v313 = 0uLL;
        *(&v312 + 1) = 0;
        ++v314;
      }

      if (v309)
      {
        if (v312)
        {
          (*(*v309 + 40))();
        }
      }

      if (v90 < v92)
      {
LABEL_93:
LABEL_94:
        v7 = 0uLL;
        goto LABEL_95;
      }

      if (result)
      {
        break;
      }

      v7 = 0uLL;
      if (!v108)
      {
        goto LABEL_93;
      }
    }

    a2 = (v8 - 176);
    v7 = 0uLL;
    if (!v108)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::loadControlHullFromCoreText(__CTFont const*,unsigned short)::$_0 &,re::anonymous namespace::PiecewiseBezierCurve *,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v10 = vsubq_f32(*(result + 32), *(result + 16));
  v10.i32[3] = 0;
  v11 = vmaxnmq_f32(v10, 0).u64[0];
  v12 = vmuls_lane_f32(v11.f32[0], v11, 1);
  v13 = vmaxnm_f32(vsub_f32(*(a2 + 32), *(a2 + 16)), 0);
  *v10.f32 = vmaxnm_f32(vsub_f32(*(a3 + 32), *(a3 + 16)), 0);
  v14 = vmul_f32(vzip1_s32(*v10.f32, v13), vzip2_s32(*v10.f32, v13));
  if (v14.f32[1] <= v12)
  {
    if (v14.f32[0] > v14.f32[1])
    {
      v19 = vmaxnm_f32(vsub_f32(*(v9 + 32), *(v9 + 16)), 0);
      v20 = vmaxnm_f32(vsub_f32(*(a2 + 32), *(a2 + 16)), 0);
      v21 = vmul_f32(vzip1_s32(v20, v19), vzip2_s32(v20, v19));
      if (vcgt_f32(v21, vdup_lane_s32(v21, 1)).u8[0])
      {
        result = v9;
        v18 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v14.f32[0] > v14.f32[1])
    {
LABEL_5:
      v18 = a3;
LABEL_9:
      goto LABEL_10;
    }

    v15 = vmaxnm_f32(vsub_f32(*(a2 + 32), *(a2 + 16)), 0);
    v16 = vmaxnm_f32(vsub_f32(*(a3 + 32), *(a3 + 16)), 0);
    v17 = vmul_f32(vzip1_s32(v16, v15), vzip2_s32(v16, v15));
    if (vcgt_f32(v17, vdup_lane_s32(v17, 1)).u8[0])
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  v22 = vmaxnm_f32(vsub_f32(*(a3 + 32), *(a3 + 16)), 0);
  v23 = vmaxnm_f32(vsub_f32(*(a4 + 32), *(a4 + 16)), 0);
  v24 = vmul_f32(vzip1_s32(v23, v22), vzip2_s32(v23, v22));
  if (vcgt_f32(v24, vdup_lane_s32(v24, 1)).u8[0])
  {
    v25 = vmaxnm_f32(vsub_f32(*(a2 + 32), *(a2 + 16)), 0);
    v26 = vmaxnm_f32(vsub_f32(*(a3 + 32), *(a3 + 16)), 0);
    v27 = vmul_f32(vzip1_s32(v26, v25), vzip2_s32(v26, v25));
    if (vcgt_f32(v27, vdup_lane_s32(v27, 1)).u8[0])
    {
      v28 = vmaxnm_f32(vsub_f32(*(v9 + 32), *(v9 + 16)), 0);
      v29 = vmaxnm_f32(vsub_f32(*(a2 + 32), *(a2 + 16)), 0);
      v30 = vmul_f32(vzip1_s32(v29, v28), vzip2_s32(v29, v28));
      if (vcgt_f32(v30, vdup_lane_s32(v30, 1)).u8[0])
      {
      }
    }
  }

  v31 = vmaxnm_f32(vsub_f32(*(a4 + 32), *(a4 + 16)), 0);
  v32 = vmaxnm_f32(vsub_f32(*(a5 + 32), *(a5 + 16)), 0);
  v33 = vmul_f32(vzip1_s32(v32, v31), vzip2_s32(v32, v31));
  if (vcgt_f32(v33, vdup_lane_s32(v33, 1)).u32[0])
  {
    v34 = vmaxnm_f32(vsub_f32(*(a3 + 32), *(a3 + 16)), 0);
    v35 = vmaxnm_f32(vsub_f32(*(a4 + 32), *(a4 + 16)), 0);
    v36 = vmul_f32(vzip1_s32(v35, v34), vzip2_s32(v35, v34));
    if (vcgt_f32(v36, vdup_lane_s32(v36, 1)).u32[0])
    {
      v37 = vmaxnm_f32(vsub_f32(*(a2 + 32), *(a2 + 16)), 0);
      v38 = vmaxnm_f32(vsub_f32(*(a3 + 32), *(a3 + 16)), 0);
      v39 = vmul_f32(vzip1_s32(v38, v37), vzip2_s32(v38, v37));
      if (vcgt_f32(v39, vdup_lane_s32(v39, 1)).u32[0])
      {
        v40 = vmaxnm_f32(vsub_f32(*(v9 + 32), *(v9 + 16)), 0);
        v41 = vmaxnm_f32(vsub_f32(*(a2 + 32), *(a2 + 16)), 0);
        v42 = vmul_f32(vzip1_s32(v41, v40), vzip2_s32(v41, v40));
        if (vcgt_f32(v42, vdup_lane_s32(v42, 1)).u32[0])
        {
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::loadControlHullFromCoreText(__CTFont const*,unsigned short)::$_0 &,re::anonymous namespace::PiecewiseBezierCurve *>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v83 = *MEMORY[0x1E69E9840];
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v9 = vsubq_f32(*(a1 + 32), *(a1 + 16));
      v9.i32[3] = 0;
      v10 = vmaxnmq_f32(v9, 0).u64[0];
      v11 = vmuls_lane_f32(v10.f32[0], v10, 1);
      v12 = vmaxnm_f32(vsub_f32(*(a1 + 208), *(a1 + 192)), 0);
      *v9.f32 = vmaxnm_f32(vsub_f32(*(a2 - 144), *(a2 - 160)), 0);
      v13 = vmul_f32(vzip1_s32(*v9.f32, v12), vzip2_s32(*v9.f32, v12));
      if (v13.f32[1] > v11)
      {
        if (v13.f32[0] <= v13.f32[1])
        {
          v36 = vmaxnm_f32(vsub_f32(*(v3 + 208), *(v3 + 192)), 0);
          v37 = vmaxnm_f32(vsub_f32(*(a2 - 144), *(a2 - 160)), 0);
          v38 = vmul_f32(vzip1_s32(v37, v36), vzip2_s32(v37, v36));
          if ((vcgt_f32(v38, vdup_lane_s32(v38, 1)).u32[0] & 1) == 0)
          {
            return 1;
          }

          a1 = v3 + 176;
        }

        v8 = (a2 - 176);
LABEL_66:
        return 1;
      }

      if (v13.f32[0] <= v13.f32[1])
      {
        return 1;
      }

      v26 = (a1 + 176);
      v27 = (a2 - 176);
LABEL_63:
      v66 = vmaxnm_f32(vsub_f32(*(v3 + 32), *(v3 + 16)), 0);
      v67 = vmaxnm_f32(vsub_f32(*(v3 + 208), *(v3 + 192)), 0);
      v68 = vmul_f32(vzip1_s32(v67, v66), vzip2_s32(v67, v66));
      if (vcgt_f32(v68, vdup_lane_s32(v68, 1)).u32[0])
      {
        v8 = (v3 + 176);
        goto LABEL_65;
      }

      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        return 1;
      }

      goto LABEL_13;
    }

    v20 = vsubq_f32(*(a1 + 32), *(a1 + 16));
    v20.i32[3] = 0;
    v21 = vmaxnmq_f32(v20, 0).u64[0];
    v22 = vmuls_lane_f32(v21.f32[0], v21, 1);
    v23 = vmaxnm_f32(vsub_f32(*(a1 + 208), *(a1 + 192)), 0);
    *v20.f32 = vmaxnm_f32(vsub_f32(*(a1 + 384), *(a1 + 368)), 0);
    v24 = vmul_f32(vzip1_s32(*v20.f32, v23), vzip2_s32(*v20.f32, v23));
    if (v24.f32[1] <= v22)
    {
      if (v24.f32[0] <= v24.f32[1])
      {
        goto LABEL_60;
      }

      v32 = vmaxnm_f32(vsub_f32(*(v3 + 32), *(v3 + 16)), 0);
      v33 = vmaxnm_f32(vsub_f32(*(v3 + 208), *(v3 + 192)), 0);
      v34 = vmul_f32(vzip1_s32(v33, v32), vzip2_s32(v33, v32));
      if ((vcgt_f32(v34, vdup_lane_s32(v34, 1)).u8[0] & 1) == 0)
      {
        goto LABEL_60;
      }

      v25 = (v3 + 176);
    }

    else
    {
      if (v24.f32[0] <= v24.f32[1])
      {
        v57 = vmaxnm_f32(vsub_f32(*(v3 + 208), *(v3 + 192)), 0);
        v58 = vmaxnm_f32(vsub_f32(*(v3 + 384), *(v3 + 368)), 0);
        v59 = vmul_f32(vzip1_s32(v58, v57), vzip2_s32(v58, v57));
        if ((vcgt_f32(v59, vdup_lane_s32(v59, 1)).u8[0] & 1) == 0)
        {
          goto LABEL_60;
        }

        v35 = (v3 + 176);
        v25 = (v3 + 352);
LABEL_59:
LABEL_60:
        v60 = vmaxnm_f32(vsub_f32(*(v3 + 384), *(v3 + 368)), 0);
        v61 = vmaxnm_f32(vsub_f32(*(a2 - 144), *(a2 - 160)), 0);
        v62 = vmul_f32(vzip1_s32(v61, v60), vzip2_s32(v61, v60));
        if ((vcgt_f32(v62, vdup_lane_s32(v62, 1)).u32[0] & 1) == 0)
        {
          return 1;
        }

        v63 = vmaxnm_f32(vsub_f32(*(v3 + 208), *(v3 + 192)), 0);
        v64 = vmaxnm_f32(vsub_f32(*(v3 + 384), *(v3 + 368)), 0);
        v65 = vmul_f32(vzip1_s32(v64, v63), vzip2_s32(v64, v63));
        if ((vcgt_f32(v65, vdup_lane_s32(v65, 1)).u32[0] & 1) == 0)
        {
          return 1;
        }

        v26 = (v3 + 176);
        v27 = (v3 + 352);
        goto LABEL_63;
      }

      v25 = (a1 + 352);
    }

    v35 = v3;
    goto LABEL_59;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = vmaxnm_f32(vsub_f32(*(a1 + 32), *(a1 + 16)), 0);
    v6 = vmaxnm_f32(vsub_f32(*(a2 - 144), *(a2 - 160)), 0);
    v7 = vmul_f32(vzip1_s32(v6, v5), vzip2_s32(v6, v5));
    if (vcgt_f32(v7, vdup_lane_s32(v7, 1)).u32[0])
    {
      v8 = (a2 - 176);
LABEL_65:
      a1 = v3;
      goto LABEL_66;
    }

    return 1;
  }

LABEL_13:
  v14 = (a1 + 352);
  v15 = vsubq_f32(*(a1 + 32), *(a1 + 16));
  v15.i32[3] = 0;
  v16 = vmaxnmq_f32(v15, 0).u64[0];
  v17 = vmuls_lane_f32(v16.f32[0], v16, 1);
  v18 = vmaxnm_f32(vsub_f32(*(a1 + 208), *(a1 + 192)), 0);
  *v15.f32 = vmaxnm_f32(vsub_f32(*(a1 + 384), *(a1 + 368)), 0);
  v19 = vmul_f32(vzip1_s32(*v15.f32, v18), vzip2_s32(*v15.f32, v18));
  if (v19.f32[1] > v17)
  {
    if (v19.f32[0] <= v19.f32[1])
    {
      v39 = vmaxnm_f32(vsub_f32(*(v3 + 208), *(v3 + 192)), 0);
      v40 = vmaxnm_f32(vsub_f32(*(v3 + 384), *(v3 + 368)), 0);
      v41 = vmul_f32(vzip1_s32(v40, v39), vzip2_s32(v40, v39));
      if ((vcgt_f32(v41, vdup_lane_s32(v41, 1)).u32[0] & 1) == 0)
      {
        goto LABEL_35;
      }

      a1 = v3 + 176;
    }

    v31 = (v3 + 352);
    goto LABEL_34;
  }

  if (v19.f32[0] > v19.f32[1])
  {
    v28 = vmaxnm_f32(vsub_f32(*(v3 + 32), *(v3 + 16)), 0);
    v29 = vmaxnm_f32(vsub_f32(*(v3 + 208), *(v3 + 192)), 0);
    v30 = vmul_f32(vzip1_s32(v29, v28), vzip2_s32(v29, v28));
    if (vcgt_f32(v30, vdup_lane_s32(v30, 1)).u32[0])
    {
      v31 = (v3 + 176);
      a1 = v3;
LABEL_34:
    }
  }

LABEL_35:
  v42 = v3 + 528;
  v43 = 1;
  if (v3 + 528 != a2)
  {
    v44 = 0;
    v45 = 0;
    while (1)
    {
      v46 = vmaxnm_f32(vsub_f32(v14[4], v14[2]), 0);
      v47 = vmaxnm_f32(vsub_f32(*(v42 + 32), *(v42 + 16)), 0);
      v48 = vmul_f32(vzip1_s32(v47, v46), vzip2_s32(v47, v46));
      if (vcgt_f32(v48, vdup_lane_s32(v48, 1)).u32[0])
      {
        v70 = *v42;
        v71 = *(v42 + 16);
        v72 = *(v42 + 32);
        v73 = *(v42 + 48);
        *(v42 + 48) = 0;
        v74 = *(v42 + 56);
        *(v42 + 56) = 0u;
        ++*(v42 + 72);
        v75 = 1;
        v49 = *(v42 + 96);
        v76 = *(v42 + 80);
        v77 = v49;
        *(v42 + 80) = 0u;
        *(v42 + 96) = 0u;
        ++*(v42 + 112);
        v78 = 1;
        v79 = *(v42 + 120);
        *(v42 + 120) = 0u;
        v80 = *(v42 + 136);
        *(v42 + 136) = 0u;
        v82 = *(v42 + 160);
        *(v42 + 160) = 0;
        ++*(v42 + 152);
        v50 = v44;
        v81 = 1;
        while (1)
        {
          v51 = v3 + v50;
          v52 = *(v3 + v50 + 368);
          *(v51 + 528) = *(v3 + v50 + 352);
          *(v51 + 544) = v52;
          *(v51 + 560) = *(v3 + v50 + 384);
          re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v3 + v50 + 576, v3 + v50 + 400);
          re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v51 + 616, v51 + 440);
          re::DynamicArray<re::RigComponentConstraint>::operator=(v51 + 656, v51 + 480);
          if (v50 == -352)
          {
            break;
          }

          v53 = vmaxnm_f32(vsub_f32(*(v51 + 208), *(v51 + 192)), 0);
          v54 = vmaxnm_f32(vsub_f32(*&v72, *&v71), 0);
          v55 = vmul_f32(vzip1_s32(v54, v53), vzip2_s32(v54, v53));
          v50 -= 176;
          if ((vcgt_f32(v55, vdup_lane_s32(v55, 1)).u8[0] & 1) == 0)
          {
            v56 = (v3 + v50 + 528);
            goto LABEL_43;
          }
        }

        v56 = v3;
LABEL_43:
        *v56 = v70;
        v56[1] = v71;
        v56[2] = v72;
        re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v51 + 400, &v73);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v51 + 440, &v76 + 8);
        re::DynamicArray<re::RigComponentConstraint>::operator=(v51 + 480, &v79 + 8);
        if (*(&v79 + 1))
        {
          if (v82)
          {
            (*(**(&v79 + 1) + 40))();
          }

          v82 = 0;
          v80 = 0uLL;
          *(&v79 + 1) = 0;
          ++v81;
        }

        if (*(&v76 + 1))
        {
          if (v79)
          {
            (*(**(&v76 + 1) + 40))();
          }

          *&v79 = 0;
          v77 = 0uLL;
          *(&v76 + 1) = 0;
          ++v78;
        }

        if (v73 && v76)
        {
          (*(*v73 + 40))();
        }

        if (++v45 == 8)
        {
          return v42 + 176 == a2;
        }
      }

      v14 = v42;
      v44 += 176;
      v42 += 176;
      if (v42 == a2)
      {
        return 1;
      }
    }
  }

  return v43;
}

uint64_t std::iter_swap[abi:nn200100]<re::anonymous namespace::PiecewiseBezierCurve *,re::anonymous namespace::PiecewiseBezierCurve *>(__int128 *a1, __int128 *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v5 = *(a1 + 6);
  v4 = a1 + 3;
  v13 = v5;
  *v4 = 0;
  v14 = *(a1 + 56);
  *(a1 + 56) = 0u;
  ++*(a1 + 18);
  v15 = 1;
  v6 = a1[6];
  v16 = a1[5];
  v17 = v6;
  a1[5] = 0u;
  a1[6] = 0u;
  ++*(a1 + 28);
  v18 = 1;
  v19 = *(a1 + 120);
  *(a1 + 120) = 0u;
  v20 = *(a1 + 136);
  *(a1 + 136) = 0u;
  v22 = *(a1 + 20);
  *(a1 + 20) = 0;
  ++*(a1 + 38);
  v21 = 1;
  v7 = *a2;
  v8 = a2[2];
  a1[1] = a2[1];
  a1[2] = v8;
  *a1 = v7;
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v4, (a2 + 3));
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 88, a2 + 88);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 8), (a2 + 8));
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=((a2 + 3), &v13);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 88, &v16 + 8);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a2 + 8), &v19 + 8);
  if (*(&v19 + 1))
  {
    if (v22)
    {
      (*(**(&v19 + 1) + 40))();
    }

    v22 = 0;
    v20 = 0uLL;
    *(&v19 + 1) = 0;
    ++v21;
  }

  if (*(&v16 + 1))
  {
    if (v19)
    {
      (*(**(&v16 + 1) + 40))();
    }

    *&v19 = 0;
    v17 = 0uLL;
    *(&v16 + 1) = 0;
    ++v18;
  }

  result = v13;
  if (v13)
  {
    if (v16)
    {
      return (*(*v13 + 40))();
    }
  }

  return result;
}

void *re::DynamicArray<re::anonymous namespace::Boundary>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xE0uLL))
        {
          v2 = 224 * a2;
          result = (*(*result + 32))(result, 224 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 224, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 224 * v9;
        v11 = v8 + 176;
        v12 = v7;
        do
        {
          v13 = *(v11 - 176);
          v14 = *(v11 - 144);
          *(v12 + 1) = *(v11 - 160);
          *(v12 + 2) = v14;
          *v12 = v13;
          v12[10] = 0;
          v12[7] = 0;
          v12[8] = 0;
          v12[6] = 0;
          *(v12 + 18) = 0;
          v15 = *(v11 - 120);
          v12[6] = *(v11 - 128);
          *(v11 - 128) = 0;
          v12[7] = v15;
          *(v11 - 120) = 0;
          v16 = v12[8];
          v12[8] = *(v11 - 112);
          *(v11 - 112) = v16;
          v17 = v12[10];
          v12[10] = *(v11 - 96);
          *(v11 - 96) = v17;
          ++*(v11 - 104);
          LODWORD(v17) = *(v12 + 18) + 1;
          v12[15] = 0;
          v12[12] = 0;
          v12[13] = 0;
          v12[11] = 0;
          *(v12 + 28) = 0;
          v18 = *(v11 - 88);
          *(v12 + 18) = v17;
          v19 = *(v11 - 80);
          v12[11] = v18;
          *(v11 - 88) = 0;
          v12[12] = v19;
          *(v11 - 80) = 0;
          v20 = v12[13];
          v12[13] = *(v11 - 72);
          *(v11 - 72) = v20;
          v21 = v12[15];
          v12[15] = *(v11 - 56);
          *(v11 - 56) = v21;
          ++*(v11 - 64);
          ++*(v12 + 28);
          v12[20] = 0;
          v12[17] = 0;
          v12[18] = 0;
          v12[16] = 0;
          *(v12 + 38) = 0;
          v22 = *(v11 - 40);
          v12[16] = *(v11 - 48);
          *(v11 - 48) = 0;
          v12[17] = v22;
          *(v11 - 40) = 0;
          v23 = v12[18];
          v12[18] = *(v11 - 32);
          *(v11 - 32) = v23;
          v24 = v12[20];
          v12[20] = *(v11 - 16);
          *(v11 - 16) = v24;
          ++*(v11 - 24);
          ++*(v12 + 38);
          v12[26] = 0;
          v12[23] = 0;
          v12[24] = 0;
          v12[22] = 0;
          *(v12 + 50) = 0;
          v25 = *(v11 + 8);
          v12[22] = *v11;
          v12[23] = v25;
          *v11 = 0;
          *(v11 + 8) = 0;
          v26 = v12[24];
          v12[24] = *(v11 + 16);
          *(v11 + 16) = v26;
          v27 = v12[26];
          v12[26] = *(v11 + 32);
          *(v11 + 32) = v27;
          ++*(v11 + 24);
          ++*(v12 + 50);
          re::DynamicArray<unsigned long>::deinit(v11 - 48);
          re::DynamicArray<unsigned long>::deinit(v11 - 88);
          re::DynamicArray<unsigned long>::deinit(v11 - 128);
          v12 += 28;
          v28 = v11 + 48;
          v11 += 224;
        }

        while (v28 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::anonymous namespace::makeCurveTessellationWithUniformSampling(void *result, unsigned __int8 *a2, unsigned int a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *result = vnegq_f32(v4);
  *(result + 1) = v4;
  result[4] = 0;
  v5 = result + 4;
  result[5] = 0;
  result[6] = 0;
  *(result + 14) = 0;
  result[18] = 0;
  *(result + 4) = 0u;
  *(result + 5) = 0u;
  *(result + 24) = 0;
  *(result + 13) = 0u;
  *(result + 15) = 0u;
  *(result + 34) = 0;
  v6 = *a2 - 1;
  if (!*a2)
  {
    v6 = 0;
  }

  if (v6 <= a3)
  {
    v6 = a3;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  v8 = *(a2 + 13);
  if (v8)
  {
    v10 = result;
    v11 = (v7 + 1) * v8;
    v12 = (v11 + 1);
    if (v11 == -1)
    {
      v13 = 0;
    }

    else
    {
      re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(result + 4, (v11 + 1));
      v13 = v10[5].u64[0];
    }

    if (v13 < v12)
    {
      re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v10[4].i64[1], v12);
    }

    if (!*(a2 + 8))
    {
      goto LABEL_95;
    }

    if (!*(a2 + 18))
    {
LABEL_96:
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v94 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v87 = 136315906;
      *&v87[4] = "operator[]";
      v88 = 1024;
      v89 = 797;
      v90 = 2048;
      v91 = 0;
      v92 = 2048;
      v93 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_97;
    }

    v14 = **(a2 + 10);
    v15 = *(a2 + 20);
    __asm { FMOV            V8.2S, #3.0 }

    if (v14 == 3)
    {
      v23 = vadd_f32(vmul_f32(v15[3], 0), vadd_f32(*v15, vmul_f32(vadd_f32(vmul_f32(v15[1], 0), vmul_f32(v15[2], 0)), _D8)));
    }

    else
    {
      if (v14 == 2)
      {
        v21 = vadd_f32(*v15, vmul_f32(v15[1], 0));
        v22 = v15[2];
      }

      else
      {
        if (v14 != 1)
        {
          v24 = 0;
LABEL_25:
          *&v94 = v24;
          re::DynamicArray<unsigned long>::add(v5, &v94);
          if (*(a2 + 8))
          {
            if (*(a2 + 18))
            {
              v25 = v8;
              v26 = **(a2 + 10);
              v27 = *(a2 + 20);
              switch(v26)
              {
                case 3:
                  v31 = v27[2];
                  v29 = vadd_f32(vmul_f32(vsub_f32(v27[1], *v27), _D8), vmul_f32(vsub_f32(v31, v27[1]), 0));
                  v30 = vmul_f32(vsub_f32(v27[3], v31), 0);
                  break;
                case 2:
                  v29 = vsub_f32(vadd_f32(v27[1], v27[1]), vadd_f32(*v27, *v27));
                  v30 = vmul_f32(v27[2], 0);
                  break;
                case 1:
                  v28 = vsub_f32(v27[1], *v27);
LABEL_34:
                  v32 = v28;
LABEL_36:
                  *&v94 = v32;
                  v33 = 1.0 / (v7 + 1);
                  re::DynamicArray<unsigned long>::add(&v10[4].i64[1], &v94);
                  v34 = 0;
                  v35.i64[0] = *(v10[4].i64[0] + 8 * v10[3].i64[0] - 8);
                  v36 = *v10;
                  v37 = v10[1];
                  v36.i32[3] = 0;
                  v37.i32[3] = 0;
                  *v10 = vminnmq_f32(v36, v35);
                  v10[1] = vmaxnmq_f32(v37, v35);
                  while (1)
                  {
                    v38 = *(a2 + 8);
                    if (v38 <= v34)
                    {
                      v97 = 0u;
                      v98 = 0u;
                      v95 = 0u;
                      v96 = 0u;
                      v94 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v87 = 136315906;
                      *&v87[4] = "operator[]";
                      v88 = 1024;
                      v89 = 797;
                      v90 = 2048;
                      v91 = v34;
                      v92 = 2048;
                      v93 = v38;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_93:
                      v97 = 0u;
                      v98 = 0u;
                      v95 = 0u;
                      v96 = 0u;
                      v94 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v87 = 136315906;
                      *&v87[4] = "operator[]";
                      v88 = 1024;
                      v89 = 797;
                      v90 = 2048;
                      v91 = v34;
                      v92 = 2048;
                      v93 = v38;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_94:
                      v97 = 0u;
                      v98 = 0u;
                      v95 = 0u;
                      v96 = 0u;
                      v94 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v87 = 136315906;
                      *&v87[4] = "operator[]";
                      v88 = 1024;
                      v89 = 797;
                      v90 = 2048;
                      v91 = v38;
                      v92 = 2048;
                      v93 = v3;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_95:
                      v97 = 0u;
                      v98 = 0u;
                      v95 = 0u;
                      v96 = 0u;
                      v94 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v87 = 136315906;
                      *&v87[4] = "operator[]";
                      v88 = 1024;
                      v89 = 797;
                      v90 = 2048;
                      v91 = 0;
                      v92 = 2048;
                      v93 = 0;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      goto LABEL_96;
                    }

                    v38 = *(a2 + 13);
                    if (v38 <= v34)
                    {
                      goto LABEL_93;
                    }

                    v38 = *(*(a2 + 15) + 8 * v34);
                    v3 = *(a2 + 18);
                    if (v3 <= v38)
                    {
                      goto LABEL_94;
                    }

                    v3 = *(*(a2 + 10) + v34);
                    v39 = (*(a2 + 20) + 8 * v38);
                    if (v3 == 3)
                    {
                      break;
                    }

                    if (v3 == 2)
                    {
                      v41 = vsub_f32(vadd_f32(v39[1], v39[1]), vadd_f32(*v39, *v39));
                      v42 = vmul_f32(v39[2], 0);
LABEL_46:
                      v40 = vadd_f32(v41, v42);
                      goto LABEL_47;
                    }

                    if (v3 == 1)
                    {
                      v40 = vsub_f32(v39[1], *v39);
LABEL_47:
                      v44 = v40;
                      goto LABEL_49;
                    }

                    v44 = 0;
LABEL_49:
                    *&v94 = v44;
                    v45 = v10[6].i64[1] + 8 * v10[5].i64[1];
                    v46 = *(v45 - 8);
                    if (v46 != v44.f32[0] && vabds_f32(v46, v44.f32[0]) >= (((fabsf(v44.f32[0]) + fabsf(v46)) + 1.0) * 0.00001) || (v47 = *(v45 - 4), v47 != v44.f32[1]) && vabds_f32(v47, v44.f32[1]) >= (((fabsf(v44.f32[1]) + fabsf(v47)) + 1.0) * 0.00001))
                    {
                      *v87 = v10[5].i64[1];
                      re::DynamicArray<int>::add(v10[7].i64, v87);
                      re::DynamicArray<unsigned long>::add(&v10[4].i64[1], &v94);
                    }

                    if (v7)
                    {
                      v48 = 1;
                      v49 = v7;
                      while (1)
                      {
                        v50 = v33 * v48;
                        v51 = 1.0 - v50;
                        if (v3 == 3)
                        {
                          break;
                        }

                        if (v3 == 2)
                        {
                          v84 = v33 * v48;
                          v85 = 1.0 - v50;
                          *v87 = vadd_f32(vadd_f32(vmul_n_f32(*v39, v51 * v51), vmul_n_f32(v39[1], v50 * (v51 + v51))), vmul_n_f32(v39[2], v50 * v50));
                          re::DynamicArray<unsigned long>::add(v5, v87);
                          v53 = vadd_f32(vmul_n_f32(*v39, v85 * -2.0), vmul_n_f32(v39[1], (v84 * -4.0) + 2.0));
                          v54 = v84 + v84;
                          v55 = v39[2];
LABEL_62:
                          v52 = vadd_f32(v53, vmul_n_f32(v55, v54));
                          goto LABEL_63;
                        }

                        if (v3 != 1)
                        {
                          *v87 = 0;
                          re::DynamicArray<unsigned long>::add(v5, v87);
                          v59 = 0;
                          goto LABEL_65;
                        }

                        *v87 = vadd_f32(vmul_n_f32(*v39, v51), vmul_n_f32(v39[1], v50));
                        re::DynamicArray<unsigned long>::add(v5, v87);
                        v52 = vsub_f32(v39[1], *v39);
LABEL_63:
                        v59 = v52;
LABEL_65:
                        *v87 = v59;
                        re::DynamicArray<unsigned long>::add(&v10[4].i64[1], v87);
                        v60.i64[0] = *(v10[4].i64[0] + 8 * v10[3].i64[0] - 8);
                        v61 = *v10;
                        v62 = v10[1];
                        v61.i32[3] = 0;
                        v62.i32[3] = 0;
                        *v10 = vminnmq_f32(v61, v60);
                        v10[1] = vmaxnmq_f32(v62, v60);
                        ++v48;
                        if (!--v49)
                        {
                          goto LABEL_66;
                        }
                      }

                      v56 = v51 * v51;
                      v57 = v50 * v50;
                      v86 = 1.0 - v50;
                      *v87 = vadd_f32(vmul_n_f32(v39[3], v50 * (v50 * v50)), vadd_f32(vmul_n_f32(*v39, v51 * (v51 * v51)), vmul_f32(vadd_f32(vmul_n_f32(v39[1], v50 * (v51 * v51)), vmul_n_f32(v39[2], v51 * (v50 * v50))), _D8)));
                      re::DynamicArray<unsigned long>::add(v5, v87);
                      v58 = v39[2];
                      v53 = vadd_f32(vmul_n_f32(vsub_f32(v39[1], *v39), v56 * 3.0), vmul_n_f32(vsub_f32(v58, v39[1]), (v33 * v48) * (v86 * 6.0)));
                      v54 = v57 * 3.0;
                      v55 = vsub_f32(v39[3], v58);
                      goto LABEL_62;
                    }

LABEL_66:
                    if (v3 == 3)
                    {
                      *v87 = vadd_f32(v39[3], vadd_f32(vmul_f32(*v39, 0), vmul_f32(vadd_f32(vmul_f32(v39[1], 0), vmul_f32(v39[2], 0)), _D8)));
                      re::DynamicArray<unsigned long>::add(v5, v87);
                      v66 = v39[2];
                      v64 = vadd_f32(vmul_f32(vsub_f32(v39[1], *v39), 0), vmul_f32(vsub_f32(v66, v39[1]), 0));
                      v65 = vmul_f32(vsub_f32(v39[3], v66), _D8);
                      goto LABEL_72;
                    }

                    if (v3 == 2)
                    {
                      *v87 = vadd_f32(v39[2], vadd_f32(vmul_f32(*v39, 0), vmul_f32(v39[1], 0)));
                      re::DynamicArray<unsigned long>::add(v5, v87);
                      v64 = vsub_f32(vmul_f32(*v39, 0x8000000080000000), vadd_f32(v39[1], v39[1]));
                      v65 = vadd_f32(v39[2], v39[2]);
LABEL_72:
                      v63 = vadd_f32(v64, v65);
                      goto LABEL_73;
                    }

                    if (v3 != 1)
                    {
                      *v87 = 0;
                      re::DynamicArray<unsigned long>::add(v5, v87);
                      v67 = 0;
                      goto LABEL_75;
                    }

                    *v87 = vadd_f32(vmul_f32(*v39, 0), v39[1]);
                    re::DynamicArray<unsigned long>::add(v5, v87);
                    v63 = vsub_f32(v39[1], *v39);
LABEL_73:
                    v67 = v63;
LABEL_75:
                    *v87 = v67;
                    re::DynamicArray<unsigned long>::add(&v10[4].i64[1], v87);
                    v68 = v10[4].i64[0];
                    v69 = v10[3].u64[0];
                    v70 = &v68[2 * v69];
                    v71.i64[0] = *(v70 - 1);
                    v72 = *v10;
                    v73 = v10[1];
                    v72.i32[3] = 0;
                    v73.i32[3] = 0;
                    *v10 = vminnmq_f32(v72, v71);
                    v10[1] = vmaxnmq_f32(v73, v71);
                    if (++v34 == v25)
                    {
                      v74 = v69 > 1;
                      v75 = v69 - 1;
                      if (v74 && ((v76 = *(v70 - 2), v76 == *v68) || vabds_f32(v76, *v68) < (((fabsf(v76) + fabsf(*v68)) + 1.0) * 0.00001)) && ((v77 = *(v70 - 1), v78 = v68[1], v77 == v78) || vabds_f32(v77, v78) < (((fabsf(v77) + fabsf(v78)) + 1.0) * 0.00001)))
                      {
                        v10[3].i64[0] = v75;
                        ++v10[3].i32[2];
                      }

                      else
                      {
                        v79 = *(a2 + 18);
                        if (v79 >= 2)
                        {
                          v80 = vsub_f32(**(a2 + 20), *(*(a2 + 20) + 8 * v79 - 8));
                          *&v94 = v80;
                          v81 = v10[6].i64[1] + 8 * v10[5].i64[1];
                          v82 = *(v81 - 8);
                          if (v82 != v80.f32[0] && vabds_f32(v82, v80.f32[0]) >= (((fabsf(v80.f32[0]) + fabsf(v82)) + 1.0) * 0.00001) || (v83 = *(v81 - 4), v83 != v80.f32[1]) && vabds_f32(v83, v80.f32[1]) >= (((fabsf(v80.f32[1]) + fabsf(v83)) + 1.0) * 0.00001))
                          {
                            *v87 = v10[5].i64[1];
                            re::DynamicArray<int>::add(v10[7].i64, v87);
                            re::DynamicArray<unsigned long>::add(&v10[4].i64[1], &v94);
                          }

                          re::DynamicArray<unsigned long>::add(&v10[4].i64[1], &v94);
                        }
                      }

                      LODWORD(v94) = v10[5].i64[1];
                      return re::DynamicArray<int>::add(v10[7].i64, &v94);
                    }
                  }

                  v43 = v39[2];
                  v41 = vadd_f32(vmul_f32(vsub_f32(v39[1], *v39), _D8), vmul_f32(vsub_f32(v43, v39[1]), 0));
                  v42 = vmul_f32(vsub_f32(v39[3], v43), 0);
                  goto LABEL_46;
                default:
                  v32 = 0;
                  goto LABEL_36;
              }

              v28 = vadd_f32(v29, v30);
              goto LABEL_34;
            }

LABEL_98:
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v94 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v87 = 136315906;
            *&v87[4] = "operator[]";
            v88 = 1024;
            v89 = 797;
            v90 = 2048;
            v91 = 0;
            v92 = 2048;
            v93 = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

LABEL_97:
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v94 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v87 = 136315906;
          *&v87[4] = "operator[]";
          v88 = 1024;
          v89 = 797;
          v90 = 2048;
          v91 = 0;
          v92 = 2048;
          v93 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_98;
        }

        v21 = *v15;
        v22 = v15[1];
      }

      v23 = vadd_f32(v21, vmul_f32(v22, 0));
    }

    v24 = v23;
    goto LABEL_25;
  }

  return result;
}

void *re::anonymous namespace::appendToArray<re::Vector2<float>>(void *this, uint64_t a2)
{
  v3 = this;
  v4 = *(a2 + 16);
  v5 = v4 + this[2];
  if (this[1] < v5)
  {
    this = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this, v5);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    v6 = 0;
    for (i = 0; i != v4; ++i)
    {
      if (*(a2 + 16) <= i)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      this = re::DynamicArray<unsigned long>::add(v3, (*(a2 + 32) + v6));
      v6 += 8;
    }
  }

  return this;
}

uint64_t re::buildPyramid(uint64_t a1, unsigned __int16 *a2)
{
  v126 = *MEMORY[0x1E69E9840];
  v4 = &v102;
  re::internal::GeomBaseMesh::GeomBaseMesh(&v102);
  v5 = *a2;
  if (*a2)
  {
    v91 = a1;
    v6 = v5 + 1;
    v7 = (v5 + 1) * (v5 + 2);
    v8 = v7 >> 1;
    v9 = v5 * v5;
    v10 = v6 * v6 + 4 * (v7 >> 1);
    LODWORD(v102) = v6 * v6 + 4 * (v7 >> 1);
    v106 = v102;
    if (v107)
    {
      v11 = v108;
      v12 = 8 * v107;
      do
      {
        v13 = *v11++;
        (*(*v13 + 80))(v13, v106);
        v12 -= 8;
      }

      while (v12);
    }

    re::DynamicArray<re::GeomCell4>::resize(v103, (5 * v9));
    v109 = 5 * v9;
    if (v110)
    {
      v14 = v111;
      v15 = 8 * v110;
      do
      {
        v16 = *v14++;
        (*(*v16 + 80))(v16, v109);
        v15 -= 8;
      }

      while (v15);
    }

    re::internal::GeomAttributeManager::addAttribute(v105, "vertexPosition", 1, 7);
    if (*(a2 + 16) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v105, "vertexUV", 1, 6);
    }

    if (*(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v105, "vertexNormal", 1, 7);
    }

    v18 = 4 * v8;
    v19 = 4 * v9;
    if (*(a2 + 16) == 1 && *(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v105, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v105, "vertexBitangent", 1, 7);
    }

    v20 = *(a2 + 3) * 0.5;
    v21 = vmul_f32(*(a2 + 2), 0x3F0000003F000000);
    *v17.f32 = vneg_f32(v21);
    v22 = v17;
    v22.f32[2] = v20;
    v94 = v22;
    v101 = v22;
    v23 = v17;
    v23.i32[0] = v21.i32[0];
    v24 = v23;
    v24.f32[2] = v20;
    v23.f32[2] = -v20;
    v92 = v23;
    v17.f32[2] = -v20;
    v99 = v23;
    v100 = v24;
    v98 = v17;
    LODWORD(v25) = 0;
    HIDWORD(v25) = v21.i32[1];
    v96 = v17;
    v97 = v25;
    v93 = vsubq_f32(v92, v96);
    v95 = vsubq_f32(v94, v96);
    v26 = re::internal::GeomAttributeManager::attributeByName(v105, "vertexPosition");
    v27 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v26);
    v29 = v28;
    v30 = 0;
    v31 = v5;
    v32 = v18;
    while (2)
    {
      v33 = 0;
      v34 = vaddq_f32(v96, vmulq_n_f32(v95, v30 / v31));
      v35 = v32;
      v36 = v28 - v32;
      if (v28 < v32)
      {
        v36 = 0;
      }

      v37 = v27 + 16 * v32;
      do
      {
        if (v36 == v33)
        {
          v112 = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v114 = "operator[]";
          v115 = 1024;
          v116 = 621;
          v113 = 136315906;
          v117 = 2048;
          v118 = (v35 + v33);
          v119 = 2048;
          v120 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_79:
          v112 = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v113 = 136315906;
          v114 = "operator[]";
          v115 = 1024;
          v116 = 789;
          v117 = 2048;
          v118 = v33;
          v119 = 2048;
          v120 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_80:
          v112 = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v114 = "operator[]";
          v115 = 1024;
          v116 = 621;
          v113 = 136315906;
          v117 = 2048;
          v118 = (v35 + v33);
          v119 = 2048;
          v120 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_81:
          v112 = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v113 = 136315906;
          v114 = "operator[]";
          v115 = 1024;
          v116 = 621;
          v117 = 2048;
          v118 = v33;
          v119 = 2048;
          v120 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_82:
          v112 = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v113 = 136315906;
          v114 = "operator[]";
          v115 = 1024;
          v116 = 621;
          v117 = 2048;
          v118 = v4;
          v119 = 2048;
          v120 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_83:
          v112 = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v113 = 136315906;
          v114 = "operator[]";
          v115 = 1024;
          v116 = 621;
          v117 = 2048;
          v118 = v35;
          v119 = 2048;
          v120 = v33;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(v37 + 16 * v33) = vaddq_f32(v34, vmulq_n_f32(v93, v33 / v31));
        ++v33;
      }

      while (v5 + 1 != v33);
      v32 = v35 + v33;
      v38 = v30++ == v5;
      if (!v38)
      {
        continue;
      }

      break;
    }

    v39 = re::internal::GeomAttributeManager::attributeByName(v105, "vertexUV");
    if (v39)
    {
      v40 = vmulq_f32(v93, v93);
      v41 = vmulq_f32(v95, v95);
      *v40.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v41, v41, 8uLL)), vadd_f32(vzip1_s32(*v40.i8, *v41.i8), vzip2_s32(*v40.i8, *v41.i8))));
      v42 = *v40.i32 <= *&v40.i32[1];
      v43 = *v40.i32 / *&v40.i32[1];
      v44 = *&v40.i32[1] / *v40.i32;
      if (v42)
      {
        v45 = 1.0;
      }

      else
      {
        v45 = v44;
      }

      if (v42)
      {
        v46 = v43;
      }

      else
      {
        v46 = 1.0;
      }

      v47 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v39);
      LODWORD(v29) = v48;
      v49 = 0;
      v50 = v18;
      do
      {
        v33 = 0;
        v35 = v50;
        v51 = v48 - v50;
        if (v48 < v50)
        {
          v51 = 0;
        }

        v52 = v47 + 8 * v50;
        do
        {
          if (v51 == v33)
          {
            goto LABEL_80;
          }

          *&v53 = v46 * (v33 / v31);
          *(&v53 + 1) = v45 * (v49 / v31);
          *(v52 + 8 * v33++) = v53;
        }

        while (v5 + 1 != v33);
        v50 = v35 + v33;
        v38 = v49++ == v5;
      }

      while (!v38);
    }

    v54 = re::internal::GeomAttributeManager::attributeByName(v105, "vertexNormal");
    if (v54)
    {
      v55 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v54);
      if (v10 > v18)
      {
        LODWORD(v29) = v56;
        v57 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL), vnegq_f32(v93)), v95, vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL));
        v58 = vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL);
        v59 = vmulq_f32(v57, v57);
        *&v60 = v59.f32[1] + (v59.f32[2] + v59.f32[0]);
        *v59.f32 = vrsqrte_f32(v60);
        *v59.f32 = vmul_f32(*v59.f32, vrsqrts_f32(v60, vmul_f32(*v59.f32, *v59.f32)));
        v61 = vmulq_n_f32(v58, vmul_f32(*v59.f32, vrsqrts_f32(v60, vmul_f32(*v59.f32, *v59.f32))).f32[0]);
        v62 = (v55 + 16 * v18);
        if (v18 <= v56)
        {
          v33 = v56;
        }

        else
        {
          v33 = v18;
        }

        v63 = v10 - v18;
        v64 = v33 - v18;
        while (v64)
        {
          *v62++ = v61;
          --v64;
          if (!--v63)
          {
            goto LABEL_46;
          }
        }

        goto LABEL_81;
      }
    }

LABEL_46:
    v29 = re::internal::GeomAttributeManager::attributeByName(v105, "vertexTangent");
    v65 = re::internal::GeomAttributeManager::attributeByName(v105, "vertexBitangent");
    if (v29)
    {
      v66 = v65;
      if (v65)
      {
        v35 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v29);
        LODWORD(v29) = v67;
        v68 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v66);
        if (v10 > v18)
        {
          LODWORD(v33) = v69;
          v70 = vmulq_f32(v93, v93);
          v71 = vaddv_f32(*v70.f32);
          *v70.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v70.f32[2] + v71));
          *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v70.f32[2] + v71), vmul_f32(*v70.f32, *v70.f32)));
          v70.i32[0] = vmul_f32(*v70.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v70.f32[2] + v71), vmul_f32(*v70.f32, *v70.f32))).u32[0];
          v72 = vmulq_f32(v95, v95);
          *&v73 = v72.f32[2] + vaddv_f32(*v72.f32);
          v74 = vmulq_n_f32(v93, v70.f32[0]);
          *v72.f32 = vrsqrte_f32(v73);
          *v72.f32 = vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32)));
          v75 = vmulq_n_f32(v95, vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32))).f32[0]);
          v76 = (v68 + 16 * v18);
          if (v18 <= v29)
          {
            v4 = v29;
          }

          else
          {
            v4 = v18;
          }

          v77 = v10 - v18;
          v78 = (v35 + 16 * v18);
          if (v18 <= v69)
          {
            v35 = v69;
          }

          else
          {
            v35 = v18;
          }

          v79 = v35 - v18;
          v80 = (v4 - v18);
          while (v80)
          {
            *v78 = v74;
            if (!v79)
            {
              goto LABEL_83;
            }

            *v76++ = v75;
            ++v78;
            --v79;
            --v80;
            if (!--v77)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_82;
        }
      }
    }

LABEL_59:
    v81 = 0;
    v82 = v18 + v5 + 1;
    v29 = v103[2];
    do
    {
      v83 = v104;
      v84 = v5;
      do
      {
        v33 = v19;
        if (v29 <= v19)
        {
          goto LABEL_79;
        }

        v85 = v82 + 1;
        v86 = v18 + 1;
        v87 = (v83 + 16 * v19);
        *v87 = v18;
        v87[1] = v18 + 1;
        v87[2] = v82 + 1;
        v87[3] = v82;
        ++v19;
        ++v82;
        ++v18;
        --v84;
      }

      while (v84);
      v18 = v86 + 1;
      v82 = v85 + 1;
      ++v81;
    }

    while (v81 != v5);
    v88 = re::GeomMesh::operator=(v91, &v102);
    if (*(a2 + 18) == 1)
    {
      re::internal::mergeVertexPositions(v88, v89);
    }
  }

  else
  {
    re::internal::GeomAttributeManager::addAttribute(v105, "vertexPosition", 1, 7);
    if (*(a2 + 16) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v105, "vertexUV", 1, 6);
    }

    if (*(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v105, "vertexNormal", 1, 7);
    }

    if (*(a2 + 16) == 1 && *(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v105, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v105, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v102);
  }

  re::internal::GeomAttributeManager::~GeomAttributeManager(v105);
  result = v103[0];
  if (v103[0])
  {
    if (v104)
    {
      return (*(*v103[0] + 40))();
    }
  }

  return result;
}

uint64_t re::anonymous namespace::populatePyramidSideHelper(unsigned int a1, unsigned int a2, unsigned int a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, int a7, void *a8)
{
  v110 = *a4;
  v114 = *a5;
  v108 = *a6;
  v16 = re::internal::GeomAttributeManager::attributeByName((a8 + 6), "vertexPosition");
  v17 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v16);
  v19 = a2;
  if (a1)
  {
    v20 = 0;
    v21 = vsubq_f32(*a6, *a5);
    v22 = vsubq_f32(*a6, *a4);
    v23 = vsubq_f32(*a5, *a4);
    v24 = a1 - 1;
    v19 = a2;
    do
    {
      if (v19 >= v18)
      {
        goto LABEL_69;
      }

      v25 = v20 / a1;
      v26 = vaddq_f32(*a4, vmulq_n_f32(v22, v25));
      *(v17 + 16 * v19) = v26;
      if (a1 - v20 < 2)
      {
        goto LABEL_9;
      }

      v27 = 0;
      do
      {
        if (!(1 - v18 + v19 + v27))
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_66;
        }

        v28 = v27 + 1;
        *(v17 + 16 + 16 * v19 + 16 * v27) = vaddq_f32(v26, vmulq_n_f32(v23, (1.0 - v25) * ((v27 + 1) / (a1 - v20))));
        v27 = v28;
      }

      while (v24 != v28);
      v19 += v28;
LABEL_9:
      if (v19 + 1 >= v18)
      {
        goto LABEL_70;
      }

      *(v17 + 16 * (v19 + 1)) = vaddq_f32(vmulq_n_f32(v21, v25), *a5);
      v19 += 2;
      ++v20;
      --v24;
    }

    while (v20 != a1);
  }

  if (v19 >= v18)
  {
    goto LABEL_77;
  }

  v29 = vsubq_f32(v114, v110);
  v111 = vsubq_f32(v108, v110);
  v115 = v29;
  *(v17 + 16 * v19) = *a6;
  v30 = re::internal::GeomAttributeManager::attributeByName((a8 + 6), "vertexUV");
  if (v30)
  {
    v31 = v115;
    v33 = vmulq_f32(v31, v31);
    v32 = vmulq_f32(v111, v111);
    v33.f32[0] = sqrtf(v33.f32[2] + vaddv_f32(*v33.f32));
    v34 = vmulq_f32(v111, vdivq_f32(v115, vdupq_lane_s32(*v33.f32, 0)));
    v35 = v34.f32[2] + vaddv_f32(*v34.f32);
    v36 = sqrtf((v32.f32[2] + vaddv_f32(*v32.f32)) - (v35 * v35));
    if (v33.f32[0] <= v36)
    {
      v31.f32[0] = v36;
    }

    else
    {
      v31.f32[0] = v33.f32[0];
    }

    v33.f32[1] = v36;
    v37 = vdiv_f32(*v33.f32, vdup_lane_s32(*v31.f32, 0));
    v109 = v37;
    *v38.i32 = v35 / v31.f32[0];
    v38.i32[1] = 0;
    if (a7)
    {
      v39 = -1;
    }

    else
    {
      v39 = 0;
    }

    v40 = vdup_n_s32(v39);
    *v37.i32 = v35 / v31.f32[0];
    v41 = vbsl_s8(v40, v38, v37);
    v42 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v30);
    v44 = a2;
    if (a1)
    {
      v45 = 0;
      v46.i32[1] = v109.i32[1];
      v46.i32[0] = 0;
      v47 = vbsl_s8(v40, v46, v109.u32[0]);
      v48 = vand_s8(v109, v40);
      v49 = vsub_f32(v47, v48);
      v50 = vsub_f32(v41, v48);
      v51 = vsub_f32(v41, v47);
      v52 = a1 - 1;
      v44 = a2;
      while (1)
      {
        v53 = v45 / a1;
        if (v44 >= v43)
        {
          break;
        }

        v54 = vadd_f32(v48, vmul_n_f32(v50, v53));
        *(v42 + 8 * v44) = v54;
        if (a1 - v45 >= 2)
        {
          v55 = 0;
          do
          {
            if (!(1 - v43 + v44 + v55))
            {
              goto LABEL_68;
            }

            v56 = v55 + 1;
            *(v42 + 8 + 8 * v44 + 8 * v55) = vadd_f32(v54, vmul_n_f32(v49, (1.0 - v53) * ((v55 + 1) / (a1 - v45))));
            v55 = v56;
          }

          while (v52 != v56);
          v44 += v56;
        }

        if (v44 + 1 >= v43)
        {
          goto LABEL_73;
        }

        *(v42 + 8 * (v44 + 1)) = vadd_f32(v47, vmul_n_f32(v51, v53));
        v44 += 2;
        ++v45;
        --v52;
        if (v45 == a1)
        {
          goto LABEL_29;
        }
      }

LABEL_72:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_73:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_74;
    }

LABEL_29:
    if (v44 >= v43)
    {
      goto LABEL_78;
    }

    *(v42 + 8 * v44) = v41;
  }

  v57 = a1 + 1;
  result = re::internal::GeomAttributeManager::attributeByName((a8 + 6), "vertexNormal");
  if (result)
  {
    v59 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v111, v111), v111, 0xCuLL), vnegq_f32(v115)), v111, vextq_s8(vuzp1q_s32(v115, v115), v115, 0xCuLL));
    v60 = vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL);
    v61 = vmulq_f32(v59, v59);
    *&v62 = v61.f32[1] + (v61.f32[2] + v61.f32[0]);
    *v61.f32 = vrsqrte_f32(v62);
    *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32)));
    v112 = vmulq_n_f32(v60, vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32))).f32[0]);
    v63 = ((v57 * (a1 + 2)) >> 1) + a2;
    v64 = re::GeomAttribute::modifyValues<re::Vector3<float>>(result);
    v66 = vmulq_f32(v112, v112);
    *&v67 = v66.f32[2] + vaddv_f32(*v66.f32);
    *v66.f32 = vrsqrte_f32(v67);
    *v66.f32 = vmul_f32(*v66.f32, vrsqrts_f32(v67, vmul_f32(*v66.f32, *v66.f32)));
    v68 = vmulq_n_f32(v112, vmul_f32(*v66.f32, vrsqrts_f32(v67, vmul_f32(*v66.f32, *v66.f32))).f32[0]);
    if (v63 > a2)
    {
      if (a2 <= v65)
      {
        v69 = v65;
      }

      else
      {
        v69 = a2;
      }

      v70 = (v64 + 16 * a2);
      v71 = a2 - v63;
      v72 = v69 - a2;
      while (v72)
      {
        *v70++ = v68;
        --v72;
        v73 = __CFADD__(v71++, 1);
        if (v73)
        {
          goto LABEL_40;
        }
      }

LABEL_74:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_75:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_76:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_77:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_78:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_40:
    v113 = v68;
    v74 = re::internal::GeomAttributeManager::attributeByName((a8 + 6), "vertexTangent");
    result = re::internal::GeomAttributeManager::attributeByName((a8 + 6), "vertexBitangent");
    if (v74)
    {
      v75 = result;
      if (result)
      {
        v76 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v74);
        v78 = v77;
        result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v75);
        if (v63 > a2)
        {
          v80 = vmulq_f32(v115, v115);
          v81 = vaddv_f32(*v80.f32);
          *v80.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v80.f32[2] + v81));
          *v80.f32 = vmul_f32(*v80.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v80.f32[2] + v81), vmul_f32(*v80.f32, *v80.f32)));
          v82 = vmulq_n_f32(v115, vmul_f32(*v80.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v80.f32[2] + v81), vmul_f32(*v80.f32, *v80.f32))).f32[0]);
          v83 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL), vnegq_f32(v113)), v82, vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL));
          v84 = vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL);
          v85 = vmulq_f32(v83, v83);
          *&v86 = v85.f32[1] + (v85.f32[2] + v85.f32[0]);
          *v85.f32 = vrsqrte_f32(v86);
          *v85.f32 = vmul_f32(*v85.f32, vrsqrts_f32(v86, vmul_f32(*v85.f32, *v85.f32)));
          v87 = vmulq_n_f32(v84, vmul_f32(*v85.f32, vrsqrts_f32(v86, vmul_f32(*v85.f32, *v85.f32))).f32[0]);
          v88 = (result + 16 * a2);
          if (a2 <= v78)
          {
            v89 = v78;
          }

          else
          {
            v89 = a2;
          }

          v90 = a2 - v63;
          v91 = (v76 + 16 * a2);
          if (a2 <= v79)
          {
            v92 = v79;
          }

          else
          {
            v92 = a2;
          }

          v93 = v92 - a2;
          v94 = v89 - a2;
          while (v94)
          {
            *v91 = v82;
            if (!v93)
            {
              goto LABEL_76;
            }

            *v88++ = v87;
            --v93;
            --v94;
            ++v91;
            v73 = __CFADD__(v90++, 1);
            if (v73)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_75;
        }
      }
    }
  }

LABEL_54:
  if (a1)
  {
    v95 = 0;
    v96 = v57 + a2;
    v97 = a8[3];
    v98 = a8[5];
    v99 = a1 - 1;
    while (v95 == a1 - 1)
    {
      v100 = a2;
      v101 = v96;
LABEL_62:
      if (v97 <= a3)
      {
        goto LABEL_71;
      }

      v107 = (v98 + 16 * a3);
      *v107 = v100;
      v107[1] = v100 + 1;
      v107[2] = v101;
      v107[3] = -1;
      ++a3;
      v96 = v101 + 1;
      a2 = v100 + 2;
      ++v95;
      --v99;
      if (v95 == a1)
      {
        return result;
      }
    }

    v102 = a8[5];
    v103 = v99;
    while (1)
    {
      v104 = a3;
      if (v97 <= a3)
      {
        break;
      }

      v100 = a2 + 1;
      v105 = (v102 + 16 * a3);
      *v105 = a2;
      v105[1] = a2 + 1;
      v105[2] = v96;
      v105[3] = -1;
      v106 = a3 + 1;
      if (v97 <= v106)
      {
        goto LABEL_67;
      }

      v101 = v96 + 1;
      result = v102 + 16 * v106;
      *result = v100;
      *(result + 4) = v96 + 1;
      *(result + 8) = v96;
      *(result + 12) = -1;
      a3 = v104 + 2;
      ++v96;
      ++a2;
      if (!--v103)
      {
        goto LABEL_62;
      }
    }

LABEL_66:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_67:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_68:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_69:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_70:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_71:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_72;
  }

  return result;
}

void re::buildPyramid(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 18) == 1)
  {
    v5 = *(a2 + 4);
    v4 = *a2;
    BYTE2(v5) = 0;
    re::buildPyramid(a1, &v4);
  }

  else
  {
    re::GeomMesh::GeomMesh(&v4, 0);
    re::buildPyramid(&v4, a2);
    if (*a2)
    {
    }

    else
    {
      re::DynamicArray<re::GeomMesh>::clear(a1);
      re::DynamicArray<re::GeomMesh>::resize(a1, 5uLL, &v4);
    }

    re::GeomMesh::~GeomMesh(&v4);
  }
}

uint64_t re::anonymous namespace::splitMeshIntoEqualSizedSubmeshes(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v22 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v19 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  v18 = 0;
  re::DynamicArray<re::GeomMesh>::clear(a3);
  re::DynamicArray<re::GeomMesh>::resize(a3, a2);
  v6 = *(a1 + 40);
  v7 = v6 / a2;
  re::DynamicArray<float>::resize(v16, v7);
  v8 = 0;
  if (a2 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  do
  {
    v10 = v17;
    if (a2 <= v6)
    {
      v11 = 0;
      v12 = v19;
      while (v10 != v11)
      {
        *(v12 + 4 * v11) = v7 * v8 + v11;
        if (++v11 >= v7)
        {
          goto LABEL_8;
        }
      }

      *v28 = 0;
      memset(v27, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v35[0]) = 136315906;
      *(v35 + 4) = "operator[]";
      WORD6(v35[0]) = 1024;
      *(v35 + 14) = 789;
      WORD1(v35[1]) = 2048;
      *(&v35[1] + 4) = v10;
      WORD6(v35[1]) = 2048;
      *(&v35[1] + 14) = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_21:
      v26 = 0;
      memset(v35, 0, sizeof(v35));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v28 = 136315906;
      *&v28[4] = "operator[]";
      v29 = 1024;
      v30 = 789;
      v31 = 2048;
      v32 = v8;
      v33 = 2048;
      v34 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_8:
    v15[0] = v19;
    v15[1] = v10;
    v14[0] = 0;
    v14[1] = 0;
    re::makeMeshFromFaces(a1, v15, v14, v23, v20, v27);
    v10 = *(a3 + 16);
    if (v10 <= v8)
    {
      goto LABEL_21;
    }

    re::GeomMesh::operator=((*(a3 + 32) + 736 * v8), v27);
    re::GeomMesh::~GeomMesh(v27);
    ++v8;
  }

  while (v8 != v9);
  if (v16[0] && v19)
  {
    (*(*v16[0] + 40))();
  }

  if (v20[0] && v22)
  {
    (*(*v20[0] + 40))();
  }

  result = v23[0];
  if (v23[0])
  {
    if (v25)
    {
      return (*(*v23[0] + 40))();
    }
  }

  return result;
}

uint64_t re::buildTetrahedron(re::internal *a1, unsigned __int16 *a2)
{
  re::internal::GeomBaseMesh::GeomBaseMesh(&v27);
  v4 = *a2;
  if (*a2)
  {
    v5 = v4 + 2 + (v4 + 2) * v4;
    v6 = v4 * v4;
    LODWORD(v27) = 4 * (v5 >> 1);
    v30 = v27;
    if (v31)
    {
      v7 = v32;
      v8 = 8 * v31;
      do
      {
        v9 = *v7++;
        (*(*v9 + 80))(v9, v30);
        v8 -= 8;
      }

      while (v8);
    }

    re::DynamicArray<re::GeomCell4>::resize(v28, (4 * v6));
    v33 = 4 * v6;
    if (v34)
    {
      v10 = v35;
      v11 = 8 * v34;
      do
      {
        v12 = *v10++;
        (*(*v12 + 80))(v12, v33);
        v11 -= 8;
      }

      while (v11);
    }

    re::internal::GeomAttributeManager::addAttribute(v29, "vertexPosition", 1, 7);
    if (*(a2 + 8) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexUV", 1, 6);
    }

    if (*(a2 + 9) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexNormal", 1, 7);
    }

    if (*(a2 + 8) == 1 && *(a2 + 9) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexBitangent", 1, 7);
    }

    v13.i32[0] = *(a2 + 1);
    *v14.i32 = *v13.i32 * -0.5;
    v15 = *v13.i32;
    v16 = vmulq_n_f64(xmmword_1E306DD30, *v13.i32);
    *&v16.f64[0] = vcvt_f32_f64(v16);
    *v13.i32 = *v13.i32 * 0.5;
    v25 = vextq_s8(vextq_s8(v13, v13, 4uLL), v16, 0xCuLL);
    v26 = vextq_s8(vextq_s8(v14, v14, 4uLL), v16, 0xCuLL);
    *&v17 = v15 * -0.433013;
    v18.i32[0] = 0;
    v19 = vzip1q_s32(0, v16);
    v19.i32[2] = v17;
    v24 = v19;
    v20 = v15 * 0.408248;
    *&v15 = v15 * 0.144338;
    v18.f32[1] = v20;
    v18.i64[1] = LODWORD(v15);
    v23 = v18;
    re::GeomMesh::operator=(a1, &v27);
    if (*(a2 + 10) == 1)
    {
      re::internal::mergeVertexPositions(a1, v21);
    }
  }

  else
  {
    re::internal::GeomAttributeManager::addAttribute(v29, "vertexPosition", 1, 7);
    if (*(a2 + 8) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexUV", 1, 6);
    }

    if (*(a2 + 9) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexNormal", 1, 7);
    }

    if (*(a2 + 8) == 1 && *(a2 + 9) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v27);
  }

  re::internal::GeomAttributeManager::~GeomAttributeManager(v29);
  result = v28[0];
  if (v28[0])
  {
    if (v28[4])
    {
      return (*(*v28[0] + 40))();
    }
  }

  return result;
}

void re::buildTetrahedron(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 10) == 1)
  {
    v5 = *(a2 + 8);
    v4 = *a2;
    BYTE2(v5) = 0;
    re::buildTetrahedron(a1, &v4);
  }

  else
  {
    re::GeomMesh::GeomMesh(&v4, 0);
    re::buildTetrahedron(&v4, a2);
    if (*a2)
    {
    }

    else
    {
      re::DynamicArray<re::GeomMesh>::resize(a1, 4uLL, &v4);
    }

    re::GeomMesh::~GeomMesh(&v4);
  }
}

uint64_t *re::geometryLogObjects(re *this)
{
  {
    re::geometryLogObjects(void)::logObjects = os_log_create("com.apple.re", "Geometry");
  }

  return &re::geometryLogObjects(void)::logObjects;
}

re::internal::GeomAttributeContainer *re::internal::GeomAttributeContainer::GeomAttributeContainer(re::internal::GeomAttributeContainer *this)
{
  *this = 0;
  *(this + 4) = 4;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  v2 = (this + 8);
  v3 = re::DynamicArray<float *>::setCapacity(v2, 1uLL);
  ++*(this + 8);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  return this;
}

uint64_t re::internal::GeomAttributeContainer::GeomAttributeContainer(uint64_t a1, char a2)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<float *>::setCapacity(v3, 1uLL);
  ++*(a1 + 32);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  return a1;
}

re::internal::GeomAttributeContainer *re::internal::GeomAttributeContainer::copy(re::internal::GeomAttributeContainer *this, re::internal::GeomAttributeContainer *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (this != a2)
  {
    v3 = this;
    this = re::internal::GeomAttributeContainer::clearAttributes(a2, a2);
    *a2 = *v3;
    *(a2 + 4) = *(v3 + 4);
    v5 = *(v3 + 3);
    v8 = 0;
    if (v5)
    {
      v6 = 0;
      do
      {
        v7 = *(v3 + 3);
        if (v7 <= v6)
        {
          v9 = 0;
          memset(v17, 0, sizeof(v17));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v10 = 136315906;
          *&v10[4] = "operator[]";
          v11 = 1024;
          v12 = 797;
          v13 = 2048;
          v14 = v6;
          v15 = 2048;
          v16 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *&v17[0] = re::GeomAttribute::createAttribute(*(*(v3 + 5) + 8 * v6), v4);
        re::DynamicArray<re::TransitionCondition *>::add(a2 + 1, v17);
        *v10 = *(*&v17[0] + 8);
        this = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(a2 + 6, v10, &v8);
        v6 = ++v8;
      }

      while (v5 > v8);
    }
  }

  return this;
}

void *re::internal::GeomAttributeContainer::clearAttributes(re::internal::GeomAttributeContainer *this, re::GeomAttribute *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(*(this + 5) + 8 * v4);
      if (v6)
      {
        re::GeomAttribute::freeAttribute(v6, a2);
        v3 = *(this + 3);
      }

      v4 = v5;
    }

    while (v3 > v5++);
  }

  result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(this + 6);
  *(this + 3) = 0;
  ++*(this + 8);
  return result;
}

uint64_t re::internal::GeomAttributeContainer::attributeByIndex(re::internal::GeomAttributeContainer *this, unsigned int a2)
{
  if (*(this + 3) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 5) + 8 * a2);
}

{
  if (*(this + 3) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 5) + 8 * a2);
}

uint64_t re::internal::GeomAttributeContainer::attributeByName(re::internal::GeomAttributeContainer *this, char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v7[0] = a2;
  v3 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 6, v7);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = *(*(this + 7) + 16 * v3 + 8);
  v5 = *(this + 3);
  if (v5 <= v4)
  {
    v7[1] = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v8 = 136315906;
    v9 = "operator[]";
    v10 = 1024;
    v11 = 797;
    v12 = 2048;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 5) + 8 * v4);
}

{
  v21 = *MEMORY[0x1E69E9840];
  v7[0] = a2;
  v3 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 6, v7);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = *(*(this + 7) + 16 * v3 + 8);
  v5 = *(this + 3);
  if (v5 <= v4)
  {
    v7[1] = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v8 = 136315906;
    v9 = "operator[]";
    v10 = 1024;
    v11 = 789;
    v12 = 2048;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 5) + 8 * v4);
}

uint64_t re::internal::GeomAttributeContainer::reorder(uint64_t result, uint64_t *a2)
{
  v9 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v2 = *(result + 24);
  if (v2)
  {
    v4 = *(result + 40);
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      re::DynamicArray<float>::operator=(v7, a2);
      (*(*v6 + 48))(v6, v7);
      v5 -= 8;
    }

    while (v5);
    result = v7[0];
    if (v7[0])
    {
      if (v9)
      {
        return (*(*v7[0] + 40))();
      }
    }
  }

  return result;
}

uint64_t re::internal::GeomAttributeContainer::addAttribute(uint64_t *a1, char *a2, int a3)
{
  result = re::internal::GeomAttributeContainer::attributeByName(a1, a2);
  if (result)
  {
    if (*(result + 17) != a3)
    {
      return 0;
    }
  }

  else
  {
    Attribute = re::GeomAttribute::createAttribute(a2, *(a1 + 4), a3, *a1);
    v8 = a1[3];
    re::DynamicArray<re::TransitionCondition *>::add(a1 + 1, &Attribute);
    v7 = *(Attribute + 8);
    re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(a1 + 6, &v7, &v8);
    return Attribute;
  }

  return result;
}

re::GeomAttribute *re::internal::GeomAttributeContainer::addAttribute(re::internal::GeomAttributeContainer *this, re::GeomAttribute *a2)
{
  v3 = *(a2 + 1);
  v6 = a2;
  v7 = v3;
  if (re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 6, &v7) != -1)
  {
    return 0;
  }

  v5 = *(this + 3);
  re::DynamicArray<re::TransitionCondition *>::add(this + 1, &v6);
  v7 = *(v6 + 1);
  re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(this + 6, &v7, &v5);
  return v6;
}

BOOL re::internal::GeomAttributeContainer::deleteAttribute(re::internal::GeomAttributeContainer *this, char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v4 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 6, &v13);
  v5 = v4;
  if (v4 != -1)
  {
    v6 = *(this + 7) + 16 * v4;
    re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::remove(this + 48, &v13);
    v10 = *(v6 + 8);
    v9 = (v6 + 8);
    v8 = v10;
    v11 = *(this + 3);
    if (v11 <= v10)
    {
      v14 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      v18 = 789;
      v19 = 2048;
      v20 = v8;
      v21 = 2048;
      v22 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      re::GeomAttribute::freeAttribute(*(*(this + 5) + 8 * v8), v7);
      v2 = *(this + 3);
      v11 = *v9;
      v8 = v2 - 1;
      if (v2 - 1 <= v11)
      {
LABEL_7:
        re::DynamicArray<double>::resize(this + 8, v2 - 1);
        return v5 != -1;
      }

      if (v2)
      {
        if (v2 > v11)
        {
          *(*(this + 5) + 8 * v11) = *(*(this + 5) + 8 * v8);
          *&v23 = *(*(*(this + 5) + 8 * v11) + 8);
          re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addOrReplace(this + 6, &v23, v9);
          goto LABEL_7;
        }

LABEL_11:
        v14 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v15 = 136315906;
        v16 = "operator[]";
        v17 = 1024;
        v18 = 789;
        v19 = 2048;
        v20 = v11;
        v21 = 2048;
        v22 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  return v5 != -1;
}

uint64_t re::internal::GeomAttributeContainer::operator==(re::internal::GeomAttributeContainer *this, uint64_t a2)
{
  if (this == a2)
  {
    return 1;
  }

  v11[5] = v2;
  v11[6] = v3;
  v6 = *(this + 3);
  if (v6 == *(a2 + 24) && *this == *a2)
  {
    if (!v6)
    {
      return 1;
    }

    v7 = 0;
    while (1)
    {
      v8 = re::internal::GeomAttributeContainer::attributeByIndex(this, v7);
      v11[0] = *(v8 + 8);
      if (re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find((a2 + 48), v11) == -1)
      {
        break;
      }

      v9 = re::internal::GeomAttributeContainer::attributeByName(a2, *(v8 + 8));
      if ((re::GeomAttribute::operator==(v8, v9) & 1) == 0)
      {
        break;
      }

      if (++v7 >= *(this + 6))
      {
        return 1;
      }
    }
  }

  return 0;
}

re::internal::GeomAttributeContainer *re::internal::GeomAttributeContainer::operator=(re::internal::GeomAttributeContainer *this, uint64_t a2)
{
  if (this != a2)
  {
    re::internal::GeomAttributeContainer::clearAttributes(this, a2);
    *(this + 4) = *(a2 + 4);
    *this = *a2;
    re::DynamicArray<re::GeomAttribute *>::operator=(this + 8, a2 + 8);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(this + 6, (a2 + 48));
    *(a2 + 4) = 4;
    *a2 = 0;
    *(a2 + 24) = 0;
    ++*(a2 + 32);
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear((a2 + 48));
  }

  return this;
}

BOOL re::planeOverlapsBox(float32x4_t *a1, float *a2, float *a3, float32x4_t a4)
{
  v4 = *a3;
  v5.i32[3] = 0;
  if (a1->f32[0] <= 0.0)
  {
    v5.f32[0] = v4 - *a2;
    v4 = -v4;
  }

  else
  {
    v5.f32[0] = -v4 - *a2;
  }

  a4.f32[0] = v4 - *a2;
  v6 = a3[1];
  if (a1->f32[1] <= 0.0)
  {
    v9 = a2[1];
    v5.f32[1] = v6 - v9;
    v8 = -v6 - v9;
  }

  else
  {
    v7 = a2[1];
    v5.f32[1] = -v6 - v7;
    v8 = v6 - v7;
  }

  v10 = a3[2];
  if (a1->f32[2] <= 0.0)
  {
    v13 = a2[2];
    v5.f32[2] = v10 - v13;
    v12 = -v10 - v13;
  }

  else
  {
    v11 = a2[2];
    v5.f32[2] = -v10 - v11;
    v12 = v10 - v11;
  }

  v14 = vmulq_f32(v5, *a1);
  if ((v14.f32[2] + vaddv_f32(*v14.f32)) > 0.0)
  {
    return 0;
  }

  a4.f32[1] = v8;
  a4.f32[2] = v12;
  v16 = vmulq_f32(a4, *a1);
  return (v16.f32[2] + vaddv_f32(*v16.f32)) >= 0.0;
}

BOOL re::triangleOverlapsBox(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vsubq_f32(*a5, *a4);
  v6.i32[3] = 0;
  v7 = vmulq_f32(vaddq_f32(*a4, *a5), v5);
  _Q5 = vmulq_f32(vmaxnmq_f32(v6, 0), v5);
  v85 = _Q5;
  v9 = vsubq_f32(*a1, v7);
  v84 = v9;
  v10 = vsubq_f32(*a2, v7);
  v11 = vsubq_f32(*a3, v7);
  _Q0 = vsubq_f32(v10, v9);
  _S6 = v9.i32[1];
  __asm { FMLA            S4, S6, V0.S[2] }

  _S7 = v11.i32[1];
  __asm { FMLA            S23, S7, V0.S[2] }

  if (_S4 >= _S23)
  {
    v20 = _S4;
  }

  else
  {
    v20 = _S23;
  }

  if (_S4 >= _S23)
  {
    _S4 = _S23;
  }

  _S24 = fabsf(_Q0.f32[2]);
  v22 = fabsf(_Q0.f32[1]);
  v23 = -(vmuls_lane_f32(v22, _Q5, 2) + (_S24 * _Q5.f32[1]));
  __asm { FMLA            S26, S24, V5.S[1] }

  if (_S4 > _S26 || v20 < v23)
  {
    return 0;
  }

  v26 = (v9.f32[2] * _Q0.f32[0]) - (_Q0.f32[2] * v9.f32[0]);
  v27 = (v11.f32[2] * _Q0.f32[0]) - (v11.f32[0] * _Q0.f32[2]);
  if (v26 >= v27)
  {
    v28 = (v9.f32[2] * _Q0.f32[0]) - (_Q0.f32[2] * v9.f32[0]);
  }

  else
  {
    v28 = (v11.f32[2] * _Q0.f32[0]) - (v11.f32[0] * _Q0.f32[2]);
  }

  if (v26 < v27)
  {
    v27 = (v9.f32[2] * _Q0.f32[0]) - (_Q0.f32[2] * v9.f32[0]);
  }

  v29 = fabsf(_Q0.f32[0]);
  v30 = (_Q5.f32[2] * v29) + (_S24 * _Q5.f32[0]);
  if (v27 > v30 || v28 < -v30)
  {
    return 0;
  }

  v32 = (_Q0.f32[1] * v10.f32[0]) - (v10.f32[1] * _Q0.f32[0]);
  v33 = (_Q0.f32[1] * v11.f32[0]) - (v11.f32[1] * _Q0.f32[0]);
  if (v32 >= v33)
  {
    v34 = (_Q0.f32[1] * v10.f32[0]) - (v10.f32[1] * _Q0.f32[0]);
  }

  else
  {
    v34 = (_Q0.f32[1] * v11.f32[0]) - (v11.f32[1] * _Q0.f32[0]);
  }

  if (v32 < v33)
  {
    v33 = (_Q0.f32[1] * v10.f32[0]) - (v10.f32[1] * _Q0.f32[0]);
  }

  v35 = (_Q5.f32[1] * v29) + (v22 * _Q5.f32[0]);
  if (v33 > v35 || v34 < -v35)
  {
    return 0;
  }

  _Q19 = vsubq_f32(v11, v10);
  __asm
  {
    FMLA            S24, S6, V19.S[2]
    FMLA            S22, S7, V19.S[2]
  }

  v40 = _S24 >= _S22 ? _S24 : _S22;
  v41 = _S24 >= _S22 ? _S22 : _S24;
  v42 = fabsf(_Q19.f32[2]);
  v43 = fabsf(_Q19.f32[1]);
  v44 = (_Q5.f32[2] * v43) + (v42 * _Q5.f32[1]);
  if (v41 > v44 || v40 < -v44)
  {
    return 0;
  }

  v46 = (v9.f32[2] * _Q19.f32[0]) - (_Q19.f32[2] * v9.f32[0]);
  v47 = (v11.f32[2] * _Q19.f32[0]) - (_Q19.f32[2] * v11.f32[0]);
  if (v46 >= v47)
  {
    v48 = (v9.f32[2] * _Q19.f32[0]) - (_Q19.f32[2] * v9.f32[0]);
  }

  else
  {
    v48 = (v11.f32[2] * _Q19.f32[0]) - (_Q19.f32[2] * v11.f32[0]);
  }

  if (v46 >= v47)
  {
    v46 = (v11.f32[2] * _Q19.f32[0]) - (_Q19.f32[2] * v11.f32[0]);
  }

  v49 = fabsf(_Q19.f32[0]);
  v50 = (_Q5.f32[2] * v49) + (v42 * _Q5.f32[0]);
  if (v46 > v50 || v48 < -v50)
  {
    return 0;
  }

  v52 = (_Q19.f32[1] * v9.f32[0]) - (v9.f32[1] * _Q19.f32[0]);
  v53 = (_Q19.f32[0] * -v10.f32[1]) + (_Q19.f32[1] * v10.f32[0]);
  if (v52 >= v53)
  {
    v54 = (_Q19.f32[1] * v9.f32[0]) - (v9.f32[1] * _Q19.f32[0]);
  }

  else
  {
    v54 = (_Q19.f32[0] * -v10.f32[1]) + (_Q19.f32[1] * v10.f32[0]);
  }

  if (v52 < v53)
  {
    v53 = (_Q19.f32[1] * v9.f32[0]) - (v9.f32[1] * _Q19.f32[0]);
  }

  v55 = (_Q5.f32[1] * v49) + (v43 * _Q5.f32[0]);
  if (v53 > v55 || v54 < -v55)
  {
    return 0;
  }

  v57 = vsubq_f32(v9, v11);
  v58 = (v57.f32[1] * -v9.f32[2]) + (v57.f32[2] * v9.f32[1]);
  v59 = (v57.f32[2] * v10.f32[1]) - (v10.f32[2] * v57.f32[1]);
  v60 = v58 >= v59 ? (v57.f32[1] * -v9.f32[2]) + (v57.f32[2] * v9.f32[1]) : (v57.f32[2] * v10.f32[1]) - (v10.f32[2] * v57.f32[1]);
  v61 = v58 >= v59 ? (v57.f32[2] * v10.f32[1]) - (v10.f32[2] * v57.f32[1]) : (v57.f32[1] * -v9.f32[2]) + (v57.f32[2] * v9.f32[1]);
  v62 = fabsf(v57.f32[2]);
  v63 = fabsf(v57.f32[1]);
  v64 = (_Q5.f32[2] * v63) + (v62 * _Q5.f32[1]);
  if (v61 > v64 || v60 < -v64)
  {
    return 0;
  }

  result = 0;
  v67 = (v9.f32[2] * v57.f32[0]) - (v57.f32[2] * v9.f32[0]);
  v68 = (v10.f32[2] * v57.f32[0]) - (v57.f32[2] * v10.f32[0]);
  if (v67 >= v68)
  {
    v69 = (v9.f32[2] * v57.f32[0]) - (v57.f32[2] * v9.f32[0]);
  }

  else
  {
    v69 = (v10.f32[2] * v57.f32[0]) - (v57.f32[2] * v10.f32[0]);
  }

  if (v67 >= v68)
  {
    v70 = (v10.f32[2] * v57.f32[0]) - (v57.f32[2] * v10.f32[0]);
  }

  else
  {
    v70 = (v9.f32[2] * v57.f32[0]) - (v57.f32[2] * v9.f32[0]);
  }

  v71 = fabsf(v57.f32[0]);
  if (v70 <= ((_Q5.f32[2] * v71) + (v62 * _Q5.f32[0])) && v69 >= -((_Q5.f32[2] * v71) + (v62 * _Q5.f32[0])))
  {
    result = 0;
    v72 = (v57.f32[0] * -v10.f32[1]) + (v57.f32[1] * v10.f32[0]);
    v73 = (v57.f32[0] * -v11.f32[1]) + (v57.f32[1] * v11.f32[0]);
    v74 = v72 >= v73 ? (v57.f32[0] * -v10.f32[1]) + (v57.f32[1] * v10.f32[0]) : (v57.f32[0] * -v11.f32[1]) + (v57.f32[1] * v11.f32[0]);
    v75 = v72 >= v73 ? (v57.f32[0] * -v11.f32[1]) + (v57.f32[1] * v11.f32[0]) : (v57.f32[0] * -v10.f32[1]) + (v57.f32[1] * v10.f32[0]);
    if (v75 <= ((_Q5.f32[1] * v71) + (v63 * _Q5.f32[0])) && v74 >= -((_Q5.f32[1] * v71) + (v63 * _Q5.f32[0])))
    {
      result = 0;
      if (vmovn_s32(vcgtq_f32(v9, v10)).u8[0])
      {
        v76 = v10.f32[0];
      }

      else
      {
        v76 = v9.f32[0];
      }

      v77 = vmovn_s32(vcgtq_f32(v10, v9)).u8[0];
      if (v11.f32[0] < v76)
      {
        v76 = v11.f32[0];
      }

      if (v77)
      {
        v9.f32[0] = v10.f32[0];
      }

      if (v9.f32[0] < v11.f32[0])
      {
        v9.f32[0] = v11.f32[0];
      }

      if (v76 <= _Q5.f32[0] && v9.f32[0] >= -_Q5.f32[0])
      {
        result = 0;
        if (v10.f32[1] >= v9.f32[1])
        {
          v78 = v9.f32[1];
        }

        else
        {
          v78 = v10.f32[1];
        }

        if (v11.f32[1] >= v78)
        {
          v79 = v78;
        }

        else
        {
          v79 = v11.f32[1];
        }

        if (v9.f32[1] >= v10.f32[1])
        {
          _Q5.f32[0] = v9.f32[1];
        }

        else
        {
          _Q5.f32[0] = v10.f32[1];
        }

        if (_Q5.f32[0] < v11.f32[1])
        {
          _Q5.f32[0] = v11.f32[1];
        }

        if (v79 <= _Q5.f32[1] && _Q5.f32[0] >= -_Q5.f32[1])
        {
          result = 0;
          if (v10.f32[2] >= v9.f32[2])
          {
            v80 = v9.f32[2];
          }

          else
          {
            v80 = v10.f32[2];
          }

          if (v11.f32[2] >= v80)
          {
            _Q5.f32[0] = v80;
          }

          else
          {
            _Q5.f32[0] = v11.f32[2];
          }

          if (v9.f32[2] >= v10.f32[2])
          {
            v81 = v9.f32[2];
          }

          else
          {
            v81 = v10.f32[2];
          }

          if (v81 < v11.f32[2])
          {
            v81 = v11.f32[2];
          }

          if (_Q5.f32[0] <= _Q5.f32[2] && v81 >= -_Q5.f32[2])
          {
            v82 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q19, _Q19), _Q19, 0xCuLL), vnegq_f32(_Q0)), _Q19, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
            return re::planeOverlapsBox(&v83, v84.f32, v85.f32, vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL));
          }
        }
      }
    }
  }

  return result;
}

void re::splitClusters(float32x4_t *a1, float32x4_t **a2, int a3, char a4, void *a5, unint64_t a6, float a7)
{
  v7 = a3;
  v379 = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v10 = a2[1];
  v12 = v10 >> 1;
  v13 = v10;
  v14 = *a2;
  if (a4)
  {
    goto LABEL_76;
  }

  v18 = a2 + a3;
  v19 = v18[4];
  v20 = v18[8] - v19;
  bzero(a5, 4 * a6);
  v14 = *a2;
  v13 = a2[1];
  if (v13)
  {
    v21.i64[0] = 0x3F0000003F000000;
    v21.i64[1] = 0x3F0000003F000000;
    v22 = *a2;
    while (1)
    {
      v23 = v22[1];
      v24 = vcgtq_f32(*v22, v23);
      v24.i32[3] = v24.i32[2];
      v25 = vmaxvq_u32(v24);
      v26 = vmulq_f32(vaddq_f32(*v22, v23), v21);
      v27 = v26.i64[1];
      if (v25 >= 0)
      {
        v28 = v26.i64[0];
      }

      else
      {
        v28 = 0;
      }

      if (v25 < 0)
      {
        v27 = 0;
      }

      v376.i64[0] = v28;
      v376.i64[1] = v27;
      v29 = (((v376.f32[v7] - v19) / v20) * a6);
      if (a6 - 1 < v29)
      {
        v29 = a6 - 1;
      }

      if (a6 <= v29)
      {
        break;
      }

      ++*(a5 + v29);
      v22 += 3;
      if (v22 == &v14[3 * v13])
      {
        goto LABEL_15;
      }
    }

LABEL_291:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v29, a6);
    _os_crash();
    __break(1u);
LABEL_292:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v352, v355);
    _os_crash();
    __break(1u);
LABEL_293:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v352, v355);
    _os_crash();
    __break(1u);
LABEL_294:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v34, v13);
    _os_crash();
    __break(1u);
LABEL_295:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v35, v13);
    _os_crash();
    __break(1u);
LABEL_296:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v35, v88);
    _os_crash();
    __break(1u);
LABEL_297:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v34, v13);
    _os_crash();
    __break(1u);
LABEL_298:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v35, v13);
    _os_crash();
    __break(1u);
  }

  if (a6)
  {
LABEL_15:
    v30 = 0;
    LODWORD(v31) = 0;
    v32 = 1;
    while (1)
    {
      v31 = (*(a5 + v30) + v31);
      if (v12 <= v31)
      {
        break;
      }

      v30 = v32;
      v33 = a6 > v32++;
      if (!v33)
      {
        v30 = 0;
        break;
      }
    }
  }

  else
  {
    v30 = 0;
    LODWORD(v31) = 0;
  }

  if (v31 >= ((a7 / 100.0) * v10))
  {
LABEL_76:
    v96 = &v11[3 * v12];
    v97 = &v14[3 * v13];
    v373 = v7;
    while (v97 != v96)
    {
      v98 = 0xAAAAAAAAAAAAAAABLL * (v97 - v14);
      if (v98 < 2)
      {
        break;
      }

      if (v98 == 3)
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::splitClusters(re::ClustersAABB,int,BOOL,re::MutableSlice<unsigned int>,float)::$_1 &,re::Pair<re::AABB,unsigned int,true> *,0>(v14, v14 + 3, v97 - 3, &v373);
        break;
      }

      if (v98 == 2)
      {
        v303 = v97[-3];
        v304 = v97[-2];
        v302 = v97 - 3;
        v305 = vcgtq_f32(v303, v304);
        v305.i32[3] = v305.i32[2];
        v306 = *v14;
        v307 = v14[1];
        v308 = vmaxvq_u32(v305);
        v309 = vaddq_f32(v303, v304);
        v310.i64[0] = 0x3F0000003F000000;
        v310.i64[1] = 0x3F0000003F000000;
        v311 = vmulq_f32(v309, v310);
        v312 = v311.i64[1];
        if (v308 >= 0)
        {
          v313 = v311.i64[0];
        }

        else
        {
          v313 = 0;
        }

        if (v308 < 0)
        {
          v312 = 0;
        }

        v376.i64[0] = v313;
        v376.i64[1] = v312;
        v314 = v376.f32[v7];
        v315 = vcgtq_f32(v306, v307);
        v315.i32[3] = v315.i32[2];
        v316 = vmaxvq_u32(v315);
        v317 = vmulq_f32(vaddq_f32(v306, v307), v310);
        v318 = v317.i64[1];
        v319 = v316 < 0;
        if (v316 >= 0)
        {
          v320 = v317.i64[0];
        }

        else
        {
          v320 = 0;
        }

        if (v319)
        {
          v318 = 0;
        }

        v374 = v320;
        v375 = v318;
        if (v314 < *(&v374 + v7))
        {
          v321 = *v14;
          v322 = v14[2];
          v377 = v14[1];
          v378 = v322;
          v376 = v321;
          v323 = *v302;
          v324 = v302[1];
          v14[2].i32[0] = v302[2].i32[0];
          *v14 = v323;
          v14[1] = v324;
          v325 = v376;
          v326 = v377;
          v302[2].i32[0] = v378.i32[0];
          *v302 = v325;
          v302[1] = v326;
        }

        break;
      }

      if (v97 - v14 <= 383)
      {
        if (&v97[-3] != v14)
        {
          v327.i64[0] = 0x3F0000003F000000;
          v327.i64[1] = 0x3F0000003F000000;
          do
          {
            if (v14 != v97 && &v14[3] != v97)
            {
              v328 = *v14;
              v329 = 3;
              v330 = v14;
              do
              {
                v331 = &v14[v329];
                v332 = v14[v329];
                v333 = v14[v329 + 1];
                v334 = vcgtq_f32(v332, v333);
                v334.i32[3] = v334.i32[2];
                v335 = v330[1];
                v336 = vmaxvq_u32(v334);
                v337 = vmulq_f32(vaddq_f32(v332, v333), v327);
                v338 = v337.i64[1];
                if (v336 >= 0)
                {
                  v339 = v337.i64[0];
                }

                else
                {
                  v339 = 0;
                }

                if (v336 < 0)
                {
                  v338 = 0;
                }

                v376.i64[0] = v339;
                v376.i64[1] = v338;
                v337.i32[0] = v376.i32[v7];
                v340 = vcgtq_f32(v328, v335);
                v340.i32[3] = v340.i32[2];
                v340.i32[0] = vmaxvq_u32(v340);
                v341 = vmulq_f32(vaddq_f32(v328, v335), v327);
                v342 = v341.i64[1];
                if (v340.i32[0] >= 0)
                {
                  v343 = v341.i64[0];
                }

                else
                {
                  v343 = 0;
                }

                if (v340.i32[0] < 0)
                {
                  v342 = 0;
                }

                v374 = v343;
                v375 = v342;
                v340.i32[0] = *(&v374 + v7);
                v328 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v340, v337), 0), v332, v328);
                if (v337.f32[0] < v340.f32[0])
                {
                  v330 = &v14[v329];
                }

                v329 += 3;
              }

              while (&v331[3] != v97);
              if (v330 != v14)
              {
                v344 = *v14;
                v345 = v14[2];
                v377 = v14[1];
                v378 = v345;
                v376 = v344;
                v346 = *v330;
                v347 = v330[1];
                v14[2].i32[0] = v330[2].i32[0];
                *v14 = v346;
                v14[1] = v347;
                v348 = v376;
                v349 = v377;
                v330[2].i32[0] = v378.i32[0];
                *v330 = v348;
                v330[1] = v349;
              }
            }

            v14 += 3;
          }

          while (v14 != &v97[-3]);
        }

        break;
      }

      v99 = &v14[3 * (v98 >> 1)];
      v100 = &v97[-3];
      v101 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::splitClusters(re::ClustersAABB,int,BOOL,re::MutableSlice<unsigned int>,float)::$_1 &,re::Pair<re::AABB,unsigned int,true> *,0>(v14, v99, v97 - 3, &v373);
      v102.i64[0] = 0x3F0000003F000000;
      v102.i64[1] = 0x3F0000003F000000;
      v103 = v14[1];
      v104 = *v99;
      v105 = v99[1];
      v106 = vcgtq_f32(*v14, v103);
      v106.i32[3] = v106.i32[2];
      v107 = vmaxvq_u32(v106);
      v108 = vmulq_f32(vaddq_f32(*v14, v103), v102);
      v109 = v108.i64[1];
      if (v107 >= 0)
      {
        v110 = v108.i64[0];
      }

      else
      {
        v110 = 0;
      }

      if (v107 < 0)
      {
        v109 = 0;
      }

      v376.i64[0] = v110;
      v376.i64[1] = v109;
      v7 = v373;
      v111 = v373;
      v112 = v376.f32[v373];
      v113 = vcgtq_f32(v104, v105);
      v113.i32[3] = v113.i32[2];
      v114 = vmaxvq_u32(v113);
      v115 = vmulq_f32(vaddq_f32(v104, v105), v102);
      v116 = v115.i64[1];
      if (v114 >= 0)
      {
        v117 = v115.i64[0];
      }

      else
      {
        v117 = 0;
      }

      if (v114 < 0)
      {
        v116 = 0;
      }

      v374 = v117;
      v375 = v116;
      if (v112 >= *(&v374 + v373))
      {
        v119 = &v97[-3];
        while (1)
        {
          v118 = v119 - 48;
          if ((v119 - 48) == v14)
          {
            break;
          }

          v120 = *(v119 - 48);
          v121 = *(v119 - 32);
          v122 = *v99;
          v123 = v99[1];
          v124 = vcgtq_f32(v120, v121);
          v124.i32[3] = v124.i32[2];
          v125 = vmaxvq_u32(v124);
          v126 = vmulq_f32(vaddq_f32(v120, v121), v102);
          v127 = v126.i64[1];
          if (v125 >= 0)
          {
            v128 = v126.i64[0];
          }

          else
          {
            v128 = 0;
          }

          if (v125 < 0)
          {
            v127 = 0;
          }

          v376.i64[0] = v128;
          v376.i64[1] = v127;
          v129 = v376.f32[v373];
          v130 = vcgtq_f32(v122, v123);
          v130.i32[3] = v130.i32[2];
          v131 = vmaxvq_u32(v130);
          v132 = vmulq_f32(vaddq_f32(v122, v123), v102);
          v133 = v132.i64[1];
          v134 = v131 < 0;
          if (v131 >= 0)
          {
            v135 = v132.i64[0];
          }

          else
          {
            v135 = 0;
          }

          if (v134)
          {
            v133 = 0;
          }

          v374 = v135;
          v375 = v133;
          v119 = v118;
          if (v129 < *(&v374 + v373))
          {
            v136 = *v14;
            v137 = v14[2];
            v377 = v14[1];
            v378 = v137;
            v376 = v136;
            v138 = *v118;
            v139 = *(v118 + 16);
            v14[2].i32[0] = *(v118 + 32);
            *v14 = v138;
            v14[1] = v139;
            v140 = v376;
            v141 = v377;
            *(v118 + 32) = v378.i32[0];
            *v118 = v140;
            *(v118 + 16) = v141;
            if (v101)
            {
              v101 = 2;
            }

            else
            {
              v101 = 1;
            }

            goto LABEL_109;
          }
        }

        v219 = v14 + 3;
        v220 = v97[-3];
        v221 = v97[-2];
        v222 = vcgtq_f32(*v14, v103);
        v222.i32[3] = v222.i32[2];
        v223 = vmaxvq_u32(v222);
        v224 = vmulq_f32(vaddq_f32(v103, *v14), v102);
        v225 = v224.i64[1];
        if (v223 >= 0)
        {
          v226 = v224.i64[0];
        }

        else
        {
          v226 = 0;
        }

        if (v223 < 0)
        {
          v225 = 0;
        }

        v376.i64[0] = v226;
        v376.i64[1] = v225;
        v227 = v376.f32[v373];
        v228 = vcgtq_f32(v220, v221);
        v228.i32[3] = v228.i32[2];
        v229 = vmaxvq_u32(v228);
        v230 = vmulq_f32(vaddq_f32(v220, v221), v102);
        v231 = v230.i64[1];
        if (v229 >= 0)
        {
          v232 = v230.i64[0];
        }

        else
        {
          v232 = 0;
        }

        if (v229 < 0)
        {
          v231 = 0;
        }

        v374 = v232;
        v375 = v231;
        if (v227 >= *(&v374 + v373))
        {
          while (v219 != v100)
          {
            v233 = *v219;
            v234 = v219[1];
            v235 = vcgtq_f32(*v14, v103);
            v235.i32[3] = v235.i32[2];
            v236 = vmaxvq_u32(v235);
            v237 = vmulq_f32(vaddq_f32(v103, *v14), v102);
            v238 = v237.i64[1];
            if (v236 >= 0)
            {
              v239 = v237.i64[0];
            }

            else
            {
              v239 = 0;
            }

            if (v236 < 0)
            {
              v238 = 0;
            }

            v376.i64[0] = v239;
            v376.i64[1] = v238;
            v240 = v376.f32[v373];
            v241 = vcgtq_f32(v233, v234);
            v241.i32[3] = v241.i32[2];
            v242 = vmaxvq_u32(v241);
            v243 = vmulq_f32(vaddq_f32(v233, v234), v102);
            v244 = v243.i64[1];
            if (v242 >= 0)
            {
              v245 = v243.i64[0];
            }

            else
            {
              v245 = 0;
            }

            if (v242 < 0)
            {
              v244 = 0;
            }

            v374 = v245;
            v375 = v244;
            if (v240 < *(&v374 + v373))
            {
              v262 = *v219;
              v263 = v219[2];
              v377 = v219[1];
              v378 = v263;
              v376 = v262;
              v264 = *v100;
              v265 = v97[-2];
              v219[2].i32[0] = v97[-1].i32[0];
              *v219 = v264;
              v219[1] = v265;
              v219 += 3;
              v266 = v376;
              v267 = v377;
              v97[-1].i32[0] = v378.i32[0];
              *v100 = v266;
              v97[-2] = v267;
              goto LABEL_211;
            }

            v219 += 3;
          }

          break;
        }

LABEL_211:
        if (v219 == v100)
        {
          break;
        }

        while (1)
        {
          v268 = v14[1];
          v203 = v219 - 3;
          do
          {
            v269 = v203[3];
            v270 = v203[4];
            v203 += 3;
            v271 = vcgtq_f32(*v14, v268);
            v271.i32[3] = v271.i32[2];
            v272 = vmaxvq_u32(v271);
            v273 = vmulq_f32(vaddq_f32(v268, *v14), v102);
            v274 = v273.i64[1];
            if (v272 >= 0)
            {
              v275 = v273.i64[0];
            }

            else
            {
              v275 = 0;
            }

            if (v272 < 0)
            {
              v274 = 0;
            }

            v376.i64[0] = v275;
            v376.i64[1] = v274;
            v276 = v376.f32[v111];
            v277 = vcgtq_f32(v269, v270);
            v277.i32[3] = v277.i32[2];
            v278 = vmaxvq_u32(v277);
            v279 = vmulq_f32(vaddq_f32(v269, v270), v102);
            v280 = v279.i64[1];
            if (v278 >= 0)
            {
              v281 = v279.i64[0];
            }

            else
            {
              v281 = 0;
            }

            if (v278 < 0)
            {
              v280 = 0;
            }

            v374 = v281;
            v375 = v280;
          }

          while (v276 >= *(&v374 + v111));
          v219 = v203 + 3;
          do
          {
            v282 = *(v100 - 48);
            v283 = *(v100 - 32);
            v100 -= 48;
            v284 = vcgtq_f32(*v14, v268);
            v284.i32[3] = v284.i32[2];
            v285 = vmaxvq_u32(v284);
            v286 = vmulq_f32(vaddq_f32(v268, *v14), v102);
            v287 = v286.i64[1];
            if (v285 >= 0)
            {
              v288 = v286.i64[0];
            }

            else
            {
              v288 = 0;
            }

            if (v285 < 0)
            {
              v287 = 0;
            }

            v376.i64[0] = v288;
            v376.i64[1] = v287;
            v289 = v376.f32[v111];
            v290 = vcgtq_f32(v282, v283);
            v290.i32[3] = v290.i32[2];
            v291 = vmaxvq_u32(v290);
            v292 = vmulq_f32(vaddq_f32(v282, v283), v102);
            v293 = v292.i64[1];
            if (v291 >= 0)
            {
              v294 = v292.i64[0];
            }

            else
            {
              v294 = 0;
            }

            if (v291 < 0)
            {
              v293 = 0;
            }

            v374 = v294;
            v375 = v293;
          }

          while (v289 < *(&v374 + v111));
          if (v203 >= v100)
          {
            break;
          }

          v295 = *v203;
          v296 = v203[2];
          v377 = v203[1];
          v378 = v296;
          v376 = v295;
          v297 = *v100;
          v298 = *(v100 + 16);
          v203[2].i32[0] = *(v100 + 32);
          *v203 = v297;
          v203[1] = v298;
          v299 = v376;
          v300 = v377;
          *(v100 + 32) = v378.i32[0];
          *v100 = v299;
          *(v100 + 16) = v300;
        }

        if (v203 > v96)
        {
          break;
        }
      }

      else
      {
        v118 = &v97[-3];
LABEL_109:
        v142 = v14 + 3;
        if (&v14[3] >= v118)
        {
          v145 = v14 + 3;
        }

        else
        {
          f32 = v14[3].f32;
          while (1)
          {
            v144 = v99[1];
            v145 = (f32 - 3);
            do
            {
              v146 = v145[3];
              v147 = v145[4];
              v145 += 3;
              v148 = *v99;
              v149 = vcgtq_f32(v146, v147);
              v149.i32[3] = v149.i32[2];
              v150 = vmaxvq_u32(v149);
              v151 = vmulq_f32(vaddq_f32(v146, v147), v102);
              v152 = v151.i64[1];
              if (v150 >= 0)
              {
                v153 = v151.i64[0];
              }

              else
              {
                v153 = 0;
              }

              if (v150 < 0)
              {
                v152 = 0;
              }

              v376.i64[0] = v153;
              v376.i64[1] = v152;
              v154 = v376.f32[v111];
              v155 = vcgtq_f32(v148, v144);
              v155.i32[3] = v155.i32[2];
              v156 = vmaxvq_u32(v155);
              v157 = vmulq_f32(vaddq_f32(v144, v148), v102);
              v158 = v157.i64[1];
              v159 = v156 < 0;
              if (v156 >= 0)
              {
                v160 = v157.i64[0];
              }

              else
              {
                v160 = 0;
              }

              if (v159)
              {
                v158 = 0;
              }

              v374 = v160;
              v375 = v158;
            }

            while (v154 < *(&v374 + v111));
            f32 = v145[3].f32;
            do
            {
              v161 = *(v118 - 48);
              v162 = *(v118 - 32);
              v118 -= 48;
              v163 = *v99;
              v164 = vcgtq_f32(v161, v162);
              v164.i32[3] = v164.i32[2];
              v165 = vmaxvq_u32(v164);
              v166 = vmulq_f32(vaddq_f32(v161, v162), v102);
              v167 = v166.i64[1];
              if (v165 >= 0)
              {
                v168 = v166.i64[0];
              }

              else
              {
                v168 = 0;
              }

              if (v165 < 0)
              {
                v167 = 0;
              }

              v376.i64[0] = v168;
              v376.i64[1] = v167;
              v169 = v376.f32[v111];
              v170 = vcgtq_f32(v163, v144);
              v170.i32[3] = v170.i32[2];
              v171 = vmaxvq_u32(v170);
              v172 = vmulq_f32(vaddq_f32(v144, v163), v102);
              v173 = v172.i64[1];
              v174 = v171 < 0;
              if (v171 >= 0)
              {
                v175 = v172.i64[0];
              }

              else
              {
                v175 = 0;
              }

              if (v174)
              {
                v173 = 0;
              }

              v374 = v175;
              v375 = v173;
            }

            while (v169 >= *(&v374 + v111));
            if (v145 >= v118)
            {
              break;
            }

            v176 = *v145;
            v177 = v145[2];
            v377 = v145[1];
            v378 = v177;
            v376 = v176;
            v178 = *v118;
            v179 = *(v118 + 16);
            v145[2].i32[0] = *(v118 + 32);
            *v145 = v178;
            v145[1] = v179;
            v180 = v376;
            v181 = v377;
            *(v118 + 32) = v378.i32[0];
            *v118 = v180;
            *(v118 + 16) = v181;
            ++v101;
            if (v145 == v99)
            {
              v99 = v118;
            }
          }
        }

        if (v145 != v99)
        {
          v182 = v99[1];
          v183 = *v145;
          v184 = v145[1];
          v185 = vcgtq_f32(*v99, v182);
          v185.i32[3] = v185.i32[2];
          v186 = vmaxvq_u32(v185);
          v187 = vmulq_f32(vaddq_f32(*v99, v182), v102);
          v188 = v187.i64[1];
          if (v186 >= 0)
          {
            v189 = v187.i64[0];
          }

          else
          {
            v189 = 0;
          }

          if (v186 < 0)
          {
            v188 = 0;
          }

          v376.i64[0] = v189;
          v376.i64[1] = v188;
          v190 = v376.f32[v111];
          v191 = vcgtq_f32(v183, v184);
          v191.i32[3] = v191.i32[2];
          v192 = vmaxvq_u32(v191);
          v193 = vmulq_f32(vaddq_f32(v183, v184), v102);
          v194 = v193.i64[1];
          v195 = v192 < 0;
          if (v192 >= 0)
          {
            v196 = v193.i64[0];
          }

          else
          {
            v196 = 0;
          }

          if (v195)
          {
            v194 = 0;
          }

          v374 = v196;
          v375 = v194;
          if (v190 < *(&v374 + v111))
          {
            v197 = *v145;
            v198 = v145[2];
            v377 = v145[1];
            v378 = v198;
            v376 = v197;
            v199 = *v99;
            v200 = v99[1];
            v145[2].i32[0] = v99[2].i32[0];
            *v145 = v199;
            v145[1] = v200;
            v201 = v376;
            v202 = v377;
            v99[2].i32[0] = v378.i32[0];
            *v99 = v201;
            v99[1] = v202;
            ++v101;
          }
        }

        if (v145 == v96)
        {
          break;
        }

        if (!v101)
        {
          if (v145 <= v96)
          {
            v246 = v145 + 3;
            while (v246 != v97)
            {
              v247 = v246[1];
              v248 = v246[-3];
              v249 = v246[-2];
              v250 = vcgtq_f32(*v246, v247);
              v250.i32[3] = v250.i32[2];
              v251 = vmaxvq_u32(v250);
              v252 = vmulq_f32(vaddq_f32(*v246, v247), v102);
              v253 = v252.i64[1];
              if (v251 >= 0)
              {
                v254 = v252.i64[0];
              }

              else
              {
                v254 = 0;
              }

              if (v251 < 0)
              {
                v253 = 0;
              }

              v376.i64[0] = v254;
              v376.i64[1] = v253;
              v255 = v376.f32[v111];
              v256 = vcgtq_f32(v248, v249);
              v256.i32[3] = v256.i32[2];
              v257 = vmaxvq_u32(v256);
              v258 = vmulq_f32(vaddq_f32(v248, v249), v102);
              v259 = v258.i64[1];
              v260 = v257 < 0;
              if (v257 >= 0)
              {
                v261 = v258.i64[0];
              }

              else
              {
                v261 = 0;
              }

              if (v260)
              {
                v259 = 0;
              }

              v374 = v261;
              v375 = v259;
              v246 += 3;
              if (v255 < *(&v374 + v111))
              {
                goto LABEL_155;
              }
            }
          }

          else
          {
            while (v142 != v145)
            {
              v204 = v142[1];
              v205 = v142[-3];
              v206 = v142[-2];
              v207 = vcgtq_f32(*v142, v204);
              v207.i32[3] = v207.i32[2];
              v208 = vmaxvq_u32(v207);
              v209 = vmulq_f32(vaddq_f32(*v142, v204), v102);
              v210 = v209.i64[1];
              if (v208 >= 0)
              {
                v211 = v209.i64[0];
              }

              else
              {
                v211 = 0;
              }

              if (v208 < 0)
              {
                v210 = 0;
              }

              v376.i64[0] = v211;
              v376.i64[1] = v210;
              v212 = v376.f32[v111];
              v213 = vcgtq_f32(v205, v206);
              v213.i32[3] = v213.i32[2];
              v214 = vmaxvq_u32(v213);
              v215 = vmulq_f32(vaddq_f32(v205, v206), v102);
              v216 = v215.i64[1];
              v217 = v214 < 0;
              if (v214 >= 0)
              {
                v218 = v215.i64[0];
              }

              else
              {
                v218 = 0;
              }

              if (v217)
              {
                v216 = 0;
              }

              v374 = v218;
              v375 = v216;
              v142 += 3;
              if (v212 < *(&v374 + v111))
              {
                goto LABEL_155;
              }
            }
          }

          break;
        }

LABEL_155:
        if (v145 <= v96)
        {
          v203 = v145 + 3;
        }

        else
        {
          v97 = v145;
          v203 = v14;
        }
      }

      v14 = v203;
    }

    v350 = *a2;
    v351 = 0xAAAAAAAAAAAAAAABLL * (v96 - *a2);
    if (v10)
    {
      v352 = 0;
      v353.i64[0] = 0x7F0000007FLL;
      v353.i64[1] = 0x7F0000007FLL;
      v354 = vnegq_f32(v353);
      v355 = a2[1];
      v356 = 1;
      v357.i64[0] = 0x7F0000007FLL;
      v357.i64[1] = 0x7F0000007FLL;
      v358 = v354;
      do
      {
        if (v351 >= v352)
        {
          if (v355 <= v352)
          {
            goto LABEL_293;
          }

          v362 = &v350[3 * v352];
          v354.i32[3] = 0;
          v363 = *v362;
          v364 = v362[1];
          v363.i32[3] = 0;
          v354 = vminnmq_f32(v354, v363);
          v353.i32[3] = 0;
          v364.i32[3] = 0;
          v353 = vmaxnmq_f32(v353, v364);
        }

        else
        {
          if (v355 <= v352)
          {
            goto LABEL_292;
          }

          v359 = &v350[3 * v352];
          v358.i32[3] = 0;
          v360 = *v359;
          v361 = v359[1];
          v360.i32[3] = 0;
          v358 = vminnmq_f32(v358, v360);
          v357.i32[3] = 0;
          v361.i32[3] = 0;
          v357 = vmaxnmq_f32(v357, v361);
        }

        v352 = v356;
        v33 = v10 > v356++;
      }

      while (v33);
    }

    else
    {
      v357.i64[0] = 0x7F0000007FLL;
      v357.i64[1] = 0x7F0000007FLL;
      v358 = vnegq_f32(v357);
      v354 = v358;
      v353.i64[0] = 0x7F0000007FLL;
      v353.i64[1] = 0x7F0000007FLL;
    }

    v369 = v354;
    v370 = v353;
    v371 = v358;
    v372 = v357;
    v365 = re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>::range(a2, 0, v351);
    v367 = v366;
    v368 = re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>::range(a2, v351, v10);
    v42 = v371;
    v41 = v372;
    a1->i64[0] = v365;
    a1->i64[1] = v367;
    a1[1] = v369;
    a1[2] = v370;
    a1[3].i64[0] = v368;
  }

  else
  {
    v34 = 0;
    v35 = v10 - 1;
    if (v10 != 1)
    {
      v36 = a6;
      v37.i64[0] = 0x7F0000007FLL;
      v37.i64[1] = 0x7F0000007FLL;
      v38 = vnegq_f32(v37);
      v39 = a6 - 1;
      v40.i64[0] = 0x3F0000003F000000;
      v40.i64[1] = 0x3F0000003F000000;
      v41.i64[0] = 0x7F0000007FLL;
      v41.i64[1] = 0x7F0000007FLL;
      v42 = v38;
      while (1)
      {
        if (v13 <= v34)
        {
          goto LABEL_294;
        }

        v43 = &v14[3 * v34];
        v44 = *v43;
        v45 = v43[1];
        v46 = vcgtq_f32(*v43, v45);
        v46.i32[3] = v46.i32[2];
        v47 = vmaxvq_u32(v46);
        v48 = vmulq_f32(vaddq_f32(*v43, v45), v40);
        v49 = v48.i64[1];
        if (v47 >= 0)
        {
          v50 = v48.i64[0];
        }

        else
        {
          v50 = 0;
        }

        if (v47 < 0)
        {
          v49 = 0;
        }

        v376.i64[0] = v50;
        v376.i64[1] = v49;
        v51 = (((v376.f32[v7] - v19) / v20) * v36);
        if (v39 < v51)
        {
          v51 = a6 - 1;
        }

        v52 = v34 < v35;
        if (v34 < v35 && v51 <= v30)
        {
          break;
        }

LABEL_46:
        if (!v52)
        {
          goto LABEL_242;
        }

        if (v13 <= v35)
        {
          goto LABEL_295;
        }

        v64 = &v14[3 * v35];
        v65 = *v64;
        v66 = v64[1];
        v67 = vcgtq_f32(*v64, v66);
        v67.i32[3] = v67.i32[2];
        v68 = vmaxvq_u32(v67);
        v69 = vmulq_f32(vaddq_f32(*v64, v66), v40);
        v70 = v69.i64[1];
        if (v68 >= 0)
        {
          v71 = v69.i64[0];
        }

        else
        {
          v71 = 0;
        }

        if (v68 < 0)
        {
          v70 = 0;
        }

        v376.i64[0] = v71;
        v376.i64[1] = v70;
        v72 = (((v376.f32[v7] - v19) / v20) * v36);
        if (v39 < v72)
        {
          v72 = a6 - 1;
        }

        v73 = v34 < v35;
        if (v34 < v35 && v72 > v30)
        {
          v74 = &v14[3 * v35 - 3];
          while (v13 > --v35)
          {
            v41.i32[3] = 0;
            v66.i32[3] = 0;
            v41 = vmaxnmq_f32(v41, v66);
            v42.i32[3] = 0;
            v65.i32[3] = 0;
            v42 = vminnmq_f32(v42, v65);
            v65 = *v74;
            v66 = *(v74 + 16);
            v75 = vcgtq_f32(*v74, v66);
            v75.i32[3] = v75.i32[2];
            v76 = vmaxvq_u32(v75);
            v77 = vmulq_f32(vaddq_f32(*v74, v66), v40);
            v78 = v77.i64[1];
            if (v76 >= 0)
            {
              v79 = v77.i64[0];
            }

            else
            {
              v79 = 0;
            }

            if (v76 < 0)
            {
              v78 = 0;
            }

            v376.i64[0] = v79;
            v376.i64[1] = v78;
            v80 = ((v376.f32[v7] - v19) / v20) * v36;
            if (v39 >= v80)
            {
              v81 = v80;
            }

            else
            {
              v81 = a6 - 1;
            }

            v73 = v34 < v35;
            if (v34 < v35)
            {
              v74 -= 48;
              if (v81 > v30)
              {
                continue;
              }
            }

            goto LABEL_69;
          }

          goto LABEL_290;
        }

LABEL_69:
        if (v73)
        {
          v82 = &v14[3 * v34];
          v83 = *v82;
          v84 = v82[2];
          v377 = v82[1];
          v378 = v84;
          v376 = v83;
          v85 = &v14[3 * v35];
          v86 = *v85;
          v87 = v85[1];
          v82[2].i32[0] = v85[2].i32[0];
          *v82 = v86;
          v82[1] = v87;
          v88 = a2[1];
          if (v88 <= v35)
          {
            goto LABEL_296;
          }

          v89 = &(*a2)[3 * v35];
          *v89 = v376;
          *(v89 + 16) = v377;
          *(v89 + 32) = v378.i32[0];
          v13 = a2[1];
          if (v13 <= v34)
          {
            goto LABEL_297;
          }

          if (v13 <= v35)
          {
            goto LABEL_298;
          }

          v37.i32[3] = 0;
          v14 = *a2;
          v90 = &(*a2)[3 * v34];
          v92 = *v90;
          v91 = v90[1];
          v91.i32[3] = 0;
          v37 = vmaxnmq_f32(v37, v91);
          v38.i32[3] = 0;
          v92.i32[3] = 0;
          v38 = vminnmq_f32(v38, v92);
          v93 = &(*a2)[3 * v35];
          v42.i32[3] = 0;
          v94 = *v93;
          v95 = v93[1];
          v94.i32[3] = 0;
          v41.i32[3] = 0;
          v42 = vminnmq_f32(v42, v94);
          v95.i32[3] = 0;
          v41 = vmaxnmq_f32(v41, v95);
          ++v34;
          --v35;
        }

        if (v34 >= v35)
        {
          goto LABEL_242;
        }
      }

      v53 = v34 + 1;
      v54 = &v14[3 * v34 + 4];
      while (v13 != v53)
      {
        v37.i32[3] = 0;
        v45.i32[3] = 0;
        v37 = vmaxnmq_f32(v37, v45);
        v38.i32[3] = 0;
        v44.i32[3] = 0;
        v38 = vminnmq_f32(v38, v44);
        v44 = v54[-1];
        v45 = *v54;
        v55 = vcgtq_f32(v44, *v54);
        v55.i32[3] = v55.i32[2];
        v56 = vmaxvq_u32(v55);
        v57 = vmulq_f32(vaddq_f32(v44, *v54), v40);
        v58 = v57.i64[1];
        v59 = v56 < 0;
        if (v56 >= 0)
        {
          v60 = v57.i64[0];
        }

        else
        {
          v60 = 0;
        }

        if (v59)
        {
          v58 = 0;
        }

        v376.i64[0] = v60;
        v376.i64[1] = v58;
        v61 = ((v376.f32[v7] - v19) / v20) * v36;
        if (v39 >= v61)
        {
          v62 = v61;
        }

        else
        {
          v62 = a6 - 1;
        }

        v63 = v53 >= v35;
        v52 = v53++ < v35;
        if (!v63)
        {
          v54 += 3;
          if (v62 <= v30)
          {
            continue;
          }
        }

        v34 = v53 - 1;
        goto LABEL_46;
      }

      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v13);
      _os_crash();
      __break(1u);
LABEL_290:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v35, v13);
      _os_crash();
      __break(1u);
      goto LABEL_291;
    }

    v41.i64[0] = 0x7F0000007FLL;
    v41.i64[1] = 0x7F0000007FLL;
    v42 = vnegq_f32(v41);
    v38 = v42;
    v37.i64[0] = 0x7F0000007FLL;
    v37.i64[1] = 0x7F0000007FLL;
LABEL_242:
    a1->i64[0] = v14;
    a1->i64[1] = v34;
    v301 = v10 - v34;
    a1[1] = v38;
    a1[2] = v37;
    a1[3].i64[0] = &v14[3 * v34];
  }

  a1[3].i64[1] = v301;
  a1[4] = v42;
  a1[5] = v41;
}

uint64_t re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive < size()", "range", 661, a2, v3);
    _os_crash();
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + 48 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 662, a2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::intersectAABBArrays(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v72 = v8;
  v80 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v1;
  v111 = *MEMORY[0x1E69E9840];
  re::StackScratchAllocator::StackScratchAllocator(v101);
  v109[0] = 0;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  re::FixedArray<unsigned int>::init<int>(&v98, v101, v7, v109);
  v19 = 0x3FFFFFFFFFFFF200;
  v20.i64[0] = 0x7F0000007FLL;
  v20.i64[1] = 0x7F0000007FLL;
  v21 = vnegq_f32(v20);
  do
  {
    v22 = &v109[v19];
    *(v22 + 897) = 0uLL;
    *(v22 + 896) = 0uLL;
    *(v22 + 898) = v21;
    *(v22 + 899) = v20;
    *(v22 + 900) = v21;
    *(v22 + 901) = v20;
    v19 += 28;
  }

  while (v19 * 4);
  v110 = 0;
  v23.i64[0] = 0x7F0000007FLL;
  v23.i64[1] = 0x7F0000007FLL;
  v24 = vnegq_f32(v23);
  v25.i64[0] = 0x7F0000007FLL;
  v25.i64[1] = 0x7F0000007FLL;
  v26 = v24;
  if (v17)
  {
    v26 = vnegq_f32(v25);
    v27 = v18;
    do
    {
      v26.i32[3] = 0;
      v28 = *v27;
      v29 = v27[1];
      v27 += 3;
      v28.i32[3] = 0;
      v25.i32[3] = 0;
      v26 = vminnmq_f32(v26, v28);
      v29.i32[3] = 0;
      v25 = vmaxnmq_f32(v25, v29);
    }

    while (v27 != &v18[3 * v17]);
  }

  if (v13)
  {
    v23.i64[0] = 0x7F0000007FLL;
    v23.i64[1] = 0x7F0000007FLL;
    v24 = vnegq_f32(v23);
    v30 = v15;
    do
    {
      v24.i32[3] = 0;
      v31 = *v30;
      v32 = v30[1];
      v30 += 3;
      v31.i32[3] = 0;
      v23.i32[3] = 0;
      v24 = vminnmq_f32(v24, v31);
      v32.i32[3] = 0;
      v23 = vmaxnmq_f32(v23, v32);
    }

    while (v30 != &v15[3 * v13]);
  }

  *&v102 = v18;
  *(&v102 + 1) = v17;
  v103.i64[0] = v15;
  v103.i64[1] = v13;
  v104 = v26;
  v105 = v25;
  v106 = v24;
  v107 = v23;
  v108 = 0;
  re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::push(v109, &v102);
  if (v110)
  {
    v79 = v5;
    v81 = vdupq_lane_s32(v80, 0);
    while (1)
    {
      v34 = re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::top(v109, v33);
      v35 = *v34;
      v36 = v34[1];
      v38 = re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::top(v109, v37);
      v39 = *(v38 + 16);
      v40 = *(v38 + 24);
      v42 = re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::top(v109, v41);
      v43 = *(v42 + 48);
      v96 = *(v42 + 32);
      v97 = v43;
      v45 = re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::top(v109, v44);
      v46 = *(v45 + 80);
      v94 = *(v45 + 64);
      v95 = v46;
      v48 = re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::top(v109, v47);
      if (!v110)
      {
        re::internal::assertLog(4, v33, "assertion failure: '%s' (%s:line %i) InlineStack is empty.", "m_size > 0", "pop", 68);
        _os_crash();
        __break(1u);
LABEL_44:
        std::__throw_bad_function_call[abi:nn200100]();
      }

      v49 = *(v48 + 96);
      v50 = --v110;
      if (v40 * v36 >= v79)
      {
        break;
      }

      if (v36)
      {
        v51 = 0;
        v52 = v81;
        do
        {
          if (v40)
          {
            v53 = (v35 + 48 * v51);
            v54 = v39;
            v55 = v40;
            do
            {
              if (v53[2].i32[0] != v54[2].i32[0])
              {
                v56 = vcgtq_f32(*v53, vaddq_f32(v52, v54[1]));
                v56.i32[3] = v56.i32[2];
                if ((vmaxvq_u32(v56) & 0x80000000) == 0)
                {
                  v57 = vcgtq_f32(vsubq_f32(*v54, v52), v53[1]);
                  v57.i32[3] = v57.i32[2];
                  if ((vmaxvq_u32(v57) & 0x80000000) == 0)
                  {
                    v58 = *(v11 + 24);
                    if (!v58)
                    {
                      goto LABEL_44;
                    }

                    (*(*v58 + 48))(v58, v35 + 48 * v51, v54);
                    v52 = v81;
                  }
                }
              }

              v54 += 3;
              --v55;
            }

            while (v55);
          }

          ++v51;
        }

        while (v51 != v36);
        goto LABEL_37;
      }

LABEL_38:
      if (!v50)
      {
        goto LABEL_39;
      }
    }

    *&v102 = v35;
    *(&v102 + 1) = v36;
    v103 = v96;
    v104 = v97;
    re::splitClusters(&v88, &v102, v49, v72, v100, v99, v3);
    *&v102 = v39;
    *(&v102 + 1) = v40;
    v103 = v94;
    v104 = v95;
    re::splitClusters(&v82, &v102, v49, v72, v100, v99, v3);
    v59 = (v49 + 1) % 3;
    v60 = v89;
    v61 = v84;
    v62 = vcgtq_f32(v89, v84);
    v62.i32[3] = v62.i32[2];
    if ((vmaxvq_u32(v62) & 0x80000000) == 0)
    {
      v63 = vcgtq_f32(v83, v90);
      v63.i32[3] = v63.i32[2];
      if ((vmaxvq_u32(v63) & 0x80000000) == 0)
      {
        v102 = v88;
        v73 = v89;
        v76 = v84;
        v103 = v82;
        v104 = v89;
        v105 = v90;
        v106 = v83;
        v107 = v84;
        v108 = v59;
        re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::push(v109, &v102);
        v60 = v73;
        v61 = v76;
      }
    }

    v64 = v87;
    v65 = vcgtq_f32(v60, v87);
    v65.i32[3] = v65.i32[2];
    if ((vmaxvq_u32(v65) & 0x80000000) == 0)
    {
      v66 = vcgtq_f32(v86, v90);
      v66.i32[3] = v66.i32[2];
      if ((vmaxvq_u32(v66) & 0x80000000) == 0)
      {
        v102 = v88;
        v74 = v87;
        v77 = v61;
        v103 = v85;
        v104 = v89;
        v105 = v90;
        v106 = v86;
        v107 = v87;
        v108 = v59;
        re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::push(v109, &v102);
        v64 = v74;
        v61 = v77;
      }
    }

    v67 = v92;
    v68 = vcgtq_f32(v92, v61);
    v68.i32[3] = v68.i32[2];
    if ((vmaxvq_u32(v68) & 0x80000000) == 0)
    {
      v69 = vcgtq_f32(v83, v93);
      v69.i32[3] = v69.i32[2];
      if ((vmaxvq_u32(v69) & 0x80000000) == 0)
      {
        v102 = v91;
        v103 = v82;
        v104 = v92;
        v105 = v93;
        v106 = v83;
        v107 = v84;
        v108 = v59;
        v75 = v64;
        v78 = v92;
        re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::push(v109, &v102);
        v64 = v75;
        v67 = v78;
      }
    }

    v70 = vcgtq_f32(v67, v64);
    v70.i32[3] = v70.i32[2];
    if ((vmaxvq_u32(v70) & 0x80000000) == 0)
    {
      v71 = vcgtq_f32(v86, v93);
      v71.i32[3] = v71.i32[2];
      if ((vmaxvq_u32(v71) & 0x80000000) == 0)
      {
        v102 = v91;
        v103 = v85;
        v104 = v92;
        v105 = v93;
        v106 = v86;
        v107 = v87;
        v108 = v59;
        re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::push(v109, &v102);
      }
    }

LABEL_37:
    v50 = v110;
    goto LABEL_38;
  }

LABEL_39:
  if (v98 && v99)
  {
    (*(*v98 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v101);
}

uint64_t re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::push(uint64_t result, __int128 *a2)
{
  v4 = *(result + 14336);
  if (v4 >= 0x80)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) InlineStack is full.", "m_size < N", "push", 60, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = (result + 112 * v4);
    v6 = *a2;
    v7 = a2[2];
    v5[1] = a2[1];
    v5[2] = v7;
    *v5 = v6;
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[6];
    v5[5] = a2[5];
    v5[6] = v10;
    v5[3] = v8;
    v5[4] = v9;
    ++*(result + 14336);
  }

  return result;
}

uint64_t re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::top(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 14336);
  if (v2)
  {
    if (v2 < 0x81)
    {
      return a1 + 112 * v2 - 112;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) InlineStack is empty.", "m_size > 0", "top", 77);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_size <= N", "top", 78);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::splitClusters(re::ClustersAABB,int,BOOL,re::MutableSlice<unsigned int>,float)::$_1 &,re::Pair<re::AABB,unsigned int,true> *,0>(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, int *a4)
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = vcgtq_f32(*a2, v4);
  v5.i32[3] = v5.i32[2];
  v6 = *a1;
  v7 = a1[1];
  v8 = vmaxvq_u32(v5);
  v9 = vaddq_f32(*a2, v4);
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v11 = vmulq_f32(v9, v10);
  v12 = v11.i64[1];
  if (v8 >= 0)
  {
    v13 = v11.i64[0];
  }

  else
  {
    v13 = 0;
  }

  if (v8 < 0)
  {
    v12 = 0;
  }

  v84 = v13;
  v85 = v12;
  v14 = *a4;
  v15 = *(&v84 + v14);
  v16 = vcgtq_f32(v6, v7);
  v16.i32[3] = v16.i32[2];
  v17 = vmaxvq_u32(v16);
  v18 = vmulq_f32(vaddq_f32(v6, v7), v10);
  v19 = v18.i64[1];
  v20 = v17 < 0;
  if (v17 >= 0)
  {
    v21 = v18.i64[0];
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v19 = 0;
  }

  v82 = v21;
  v83 = v19;
  v22 = a3[1];
  v23 = vcgtq_f32(*a3, v22);
  v23.i32[3] = v23.i32[2];
  v24 = vmulq_f32(vaddq_f32(*a3, v22), v10);
  v25 = v24.i64[1];
  if ((vmaxvq_u32(v23) & 0x80000000) == 0)
  {
    v26 = v24.i64[0];
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  if (v15 < *(&v82 + v14))
  {
    v84 = v26;
    v85 = v25;
    v27 = *(&v84 + v14);
    v82 = v13;
    v83 = v12;
    if (v27 >= *(&v82 + v14))
    {
      v58 = a1[1];
      v86 = a1[2];
      v59 = *a1;
      v60 = a2[2].i32[0];
      v61 = a2[1];
      *a1 = *a2;
      a1[1] = v61;
      a1[2].i32[0] = v60;
      *a2 = v59;
      a2[1] = v58;
      a2[2].i32[0] = v86.i32[0];
      v62 = a3[1];
      v63 = *a2;
      v64 = a2[1];
      v65 = vcgtq_f32(*a3, v62);
      v65.i32[3] = v65.i32[2];
      v66 = vmaxvq_u32(v65);
      v67 = vaddq_f32(*a3, v62);
      v68.i64[0] = 0x3F0000003F000000;
      v68.i64[1] = 0x3F0000003F000000;
      v69 = vmulq_f32(v67, v68);
      v70 = v69.i64[1];
      if (v66 >= 0)
      {
        v71 = v69.i64[0];
      }

      else
      {
        v71 = 0;
      }

      if (v66 < 0)
      {
        v70 = 0;
      }

      v84 = v71;
      v85 = v70;
      v72 = *a4;
      v73 = *(&v84 + v72);
      v74 = vcgtq_f32(v63, v64);
      v74.i32[3] = v74.i32[2];
      v75 = vmaxvq_u32(v74);
      v76 = vmulq_f32(vaddq_f32(v63, v64), v68);
      v77 = v76.i64[1];
      if (v75 >= 0)
      {
        v78 = v76.i64[0];
      }

      else
      {
        v78 = 0;
      }

      if (v75 < 0)
      {
        v77 = 0;
      }

      v82 = v78;
      v83 = v77;
      if (v73 >= *(&v82 + v72))
      {
        return 1;
      }

      v28 = a2[1];
      v86 = a2[2];
      v29 = *a2;
      v79 = a3[2].i32[0];
      v80 = a3[1];
      *a2 = *a3;
      a2[1] = v80;
      a2[2].i32[0] = v79;
    }

    else
    {
      v28 = a1[1];
      v86 = a1[2];
      v29 = *a1;
      v30 = a3[2].i32[0];
      v31 = a3[1];
      *a1 = *a3;
      a1[1] = v31;
      a1[2].i32[0] = v30;
    }

    *a3 = v29;
    a3[1] = v28;
    a3[2].i32[0] = v86.i32[0];
    return 1;
  }

  v84 = v26;
  v85 = v25;
  v32 = *(&v84 + v14);
  v82 = v13;
  v83 = v12;
  if (v32 < *(&v82 + v14))
  {
    v33 = a2[1];
    v86 = a2[2];
    v34 = *a2;
    v35 = a3[2].i32[0];
    v36 = a3[1];
    *a2 = *a3;
    a2[1] = v36;
    a2[2].i32[0] = v35;
    *a3 = v34;
    a3[1] = v33;
    a3[2].i32[0] = v86.i32[0];
    v37 = a2[1];
    v38 = *a1;
    v39 = a1[1];
    v40 = vcgtq_f32(*a2, v37);
    v40.i32[3] = v40.i32[2];
    v41 = vmaxvq_u32(v40);
    v42 = vaddq_f32(*a2, v37);
    v43.i64[0] = 0x3F0000003F000000;
    v43.i64[1] = 0x3F0000003F000000;
    v44 = vmulq_f32(v42, v43);
    v45 = v44.i64[1];
    if (v41 >= 0)
    {
      v46 = v44.i64[0];
    }

    else
    {
      v46 = 0;
    }

    if (v41 < 0)
    {
      v45 = 0;
    }

    v84 = v46;
    v85 = v45;
    v47 = *a4;
    v48 = *(&v84 + v47);
    v49 = vcgtq_f32(v38, v39);
    v49.i32[3] = v49.i32[2];
    v50 = vmaxvq_u32(v49);
    v51 = vmulq_f32(vaddq_f32(v38, v39), v43);
    v52 = v51.i64[1];
    if (v50 >= 0)
    {
      v53 = v51.i64[0];
    }

    else
    {
      v53 = 0;
    }

    if (v50 < 0)
    {
      v52 = 0;
    }

    v82 = v53;
    v83 = v52;
    if (v48 < *(&v82 + v47))
    {
      v54 = a1[1];
      v86 = a1[2];
      v55 = *a1;
      v56 = a2[2].i32[0];
      v57 = a2[1];
      *a1 = *a2;
      a1[1] = v57;
      a1[2].i32[0] = v56;
      *a2 = v55;
      a2[1] = v54;
      a2[2].i32[0] = v86.i32[0];
    }

    return 1;
  }

  return 0;
}

void *re::allocInfo_GeomBuildBoxOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B73A8, "GeomBuildBoxOptions");
    __cxa_guard_release(&qword_1EE1B6E18);
  }

  return &unk_1EE1B73A8;
}

void re::initInfo_GeomBuildBoxOptions(re *this, re::IntrospectionBase *a2)
{
  v47[0] = 0x8A7565098DA98CALL;
  v47[1] = "GeomBuildBoxOptions";
  if (v47[0])
  {
    if (v47[0])
    {
    }
  }

  *(this + 2) = v48;
  if ((atomic_load_explicit(&qword_1EE1B6E20, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6E20);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint16_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "widthSegmentCount";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B7270 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint16_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "heightSegmentCount";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x200000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B7278 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_uint16_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "depthSegmentCount";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x400000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B7280 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_uint16_t(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "cornerSegmentCount";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x600000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B7288 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_float(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "radius";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x800000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B7290 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_float(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "width";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0xC00000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1B7298 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_float(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "height";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x1000000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1B72A0 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_float(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "depth";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x1400000008;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE1B72A8 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = re::introspect_BOOL(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "addUVs";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x1800000009;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE1B72B0 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::introspect_BOOL(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "addNormals";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x190000000ALL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE1B72B8 = v45;
      __cxa_guard_release(&qword_1EE1B6E20);
    }
  }

  *(this + 2) = 0x1C00000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1B7270;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildBoxOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildBoxOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildBoxOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildBoxOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v46 = v48;
}

double re::internal::defaultConstruct<re::GeomBuildBoxOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0x1000100010001;
  result = 0.0078125;
  *(a3 + 8) = xmmword_1E305B4C0;
  *(a3 + 24) = 257;
  *(a3 + 26) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildBoxOptions>(uint64_t a1)
{
  *a1 = 0x1000100010001;
  result = 0.0078125;
  *(a1 + 8) = xmmword_1E305B4C0;
  *(a1 + 24) = 257;
  *(a1 + 26) = 0;
  return result;
}

void *re::allocInfo_GeomBuildBoxWithRoundedCornersOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7438, "GeomBuildBoxWithRoundedCornersOptions");
    __cxa_guard_release(&qword_1EE1B6E28);
  }

  return &unk_1EE1B7438;
}

void re::initInfo_GeomBuildBoxWithRoundedCornersOptions(re *this, re::IntrospectionBase *a2)
{
  v71[0] = 0x38926F5D37C171DCLL;
  v71[1] = "GeomBuildBoxWithRoundedCornersOptions";
  if (v71[0])
  {
    if (v71[0])
    {
    }
  }

  *(this + 2) = v72;
  if ((atomic_load_explicit(&qword_1EE1B6E30, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6E30);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint16_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "widthSegmentCount";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B7328 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint16_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "heightSegmentCount";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x200000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B7330 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_uint16_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "depthSegmentCount";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x400000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B7338 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_uint16_t(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "majorSegmentCount";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x600000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B7340 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_uint16_t(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "minorSegmentCount";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x800000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B7348 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_float(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "majorRadius";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0xC00000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1B7350 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_float(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "minorRadius";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x1000000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1B7358 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_float(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "width";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x1400000008;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE1B7360 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = re::introspect_float(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "height";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x1800000009;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE1B7368 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::introspect_float(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "depth";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x1C0000000ALL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE1B7370 = v45;
      v46 = re::introspectionAllocator(v45);
      v48 = re::introspect_BOOL(1, v47);
      v49 = (*(*v46 + 32))(v46, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "addUVs";
      *(v49 + 16) = v48;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0x200000000BLL;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1EE1B7378 = v49;
      v50 = re::introspectionAllocator(v49);
      v52 = re::introspect_BOOL(1, v51);
      v53 = (*(*v50 + 32))(v50, 72, 8);
      *v53 = 1;
      *(v53 + 8) = "addNormals";
      *(v53 + 16) = v52;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0x210000000CLL;
      *(v53 + 40) = 0;
      *(v53 + 48) = 0;
      *(v53 + 56) = 0;
      *(v53 + 64) = 0;
      qword_1EE1B7380 = v53;
      v54 = re::introspectionAllocator(v53);
      v56 = re::introspect_BOOL(1, v55);
      v57 = (*(*v54 + 32))(v54, 72, 8);
      *v57 = 1;
      *(v57 + 8) = "continuousCorners";
      *(v57 + 16) = v56;
      *(v57 + 24) = 0;
      *(v57 + 32) = 0x230000000DLL;
      *(v57 + 40) = 0;
      *(v57 + 48) = 0;
      *(v57 + 56) = 0;
      *(v57 + 64) = 0;
      qword_1EE1B7388 = v57;
      v58 = re::introspectionAllocator(v57);
      v60 = re::introspect_BOOL(1, v59);
      v61 = (*(*v58 + 32))(v58, 72, 8);
      *v61 = 1;
      *(v61 + 8) = "clampContinuousCorners";
      *(v61 + 16) = v60;
      *(v61 + 24) = 0;
      *(v61 + 32) = 0x240000000ELL;
      *(v61 + 40) = 0;
      *(v61 + 48) = 0;
      *(v61 + 56) = 0;
      *(v61 + 64) = 0;
      qword_1EE1B7390 = v61;
      v62 = re::introspectionAllocator(v61);
      v64 = re::introspect_BOOL(1, v63);
      v65 = (*(*v62 + 32))(v62, 72, 8);
      *v65 = 1;
      *(v65 + 8) = "normalizeUVs";
      *(v65 + 16) = v64;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0x250000000FLL;
      *(v65 + 40) = 0;
      *(v65 + 48) = 0;
      *(v65 + 56) = 0;
      *(v65 + 64) = 0;
      qword_1EE1B7398 = v65;
      v66 = re::introspectionAllocator(v65);
      v68 = re::introspect_BOOL(1, v67);
      v69 = (*(*v66 + 32))(v66, 72, 8);
      *v69 = 1;
      *(v69 + 8) = "reflectUVs";
      *(v69 + 16) = v68;
      *(v69 + 24) = 0;
      *(v69 + 32) = 0x2600000010;
      *(v69 + 40) = 0;
      *(v69 + 48) = 0;
      *(v69 + 56) = 0;
      *(v69 + 64) = 0;
      qword_1EE1B73A0 = v69;
      __cxa_guard_release(&qword_1EE1B6E30);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 16;
  *(this + 8) = &qword_1EE1B7328;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildBoxWithRoundedCornersOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildBoxWithRoundedCornersOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildBoxWithRoundedCornersOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildBoxWithRoundedCornersOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v70 = v72;
}

double re::internal::defaultConstruct<re::GeomBuildBoxWithRoundedCornersOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0x3000100010001;
  *(a3 + 8) = 4;
  *(a3 + 12) = xmmword_1E305B4D0;
  *(a3 + 28) = 1065353216;
  *&result = 16777473;
  *(a3 + 32) = 16777473;
  *(a3 + 36) = 1;
  *(a3 + 38) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildBoxWithRoundedCornersOptions>(uint64_t a1)
{
  *a1 = 0x3000100010001;
  *(a1 + 8) = 4;
  *(a1 + 12) = xmmword_1E305B4D0;
  *(a1 + 28) = 1065353216;
  *&result = 16777473;
  *(a1 + 32) = 16777473;
  *(a1 + 36) = 1;
  *(a1 + 38) = 0;
  return result;
}

void *re::allocInfo_GeomBuildCapsuleOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B74C8, "GeomBuildCapsuleOptions");
    __cxa_guard_release(&qword_1EE1B6E38);
  }

  return &unk_1EE1B74C8;
}

void re::initInfo_GeomBuildCapsuleOptions(re *this, re::IntrospectionBase *a2)
{
  v35[0] = 0x8C51E8B3ECDD9986;
  v35[1] = "GeomBuildCapsuleOptions";
  if (v35[0])
  {
    if (v35[0])
    {
    }
  }

  *(this + 2) = v36;
  if ((atomic_load_explicit(&qword_1EE1B6E40, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6E40);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint16_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "radialSegmentCount";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B7018 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint16_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "heightSegmentCount";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x200000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B7020 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_uint16_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "capSegmentCount";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x400000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B7028 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "capRadius";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B7030 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_float(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "height";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xC00000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B7038 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_BOOL(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "addUVs";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x1000000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1B7040 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_BOOL(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "addNormals";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x1100000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1B7048 = v33;
      __cxa_guard_release(&qword_1EE1B6E40);
    }
  }

  *(this + 2) = 0x1400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1B7018;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildCapsuleOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildCapsuleOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildCapsuleOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildCapsuleOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v34 = v36;
}

double re::internal::defaultConstruct<re::GeomBuildCapsuleOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65544;
  *(a3 + 4) = 4;
  result = 2.00000047;
  *(a3 + 8) = 0x400000003F000000;
  *(a3 + 16) = 257;
  *(a3 + 18) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildCapsuleOptions>(uint64_t a1)
{
  *a1 = 65544;
  *(a1 + 4) = 4;
  result = 2.00000047;
  *(a1 + 8) = 0x400000003F000000;
  *(a1 + 16) = 257;
  *(a1 + 18) = 0;
  return result;
}

void *re::allocInfo_GeomBuildConeOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7558, "GeomBuildConeOptions");
    __cxa_guard_release(&qword_1EE1B6E48);
  }

  return &unk_1EE1B7558;
}

void re::initInfo_GeomBuildConeOptions(re *this, re::IntrospectionBase *a2)
{
  v35[0] = 0xC49383041CB7C52;
  v35[1] = "GeomBuildConeOptions";
  if (v35[0])
  {
    if (v35[0])
    {
    }
  }

  *(this + 2) = v36;
  if ((atomic_load_explicit(&qword_1EE1B6E50, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6E50);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint16_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "radialSegmentCount";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B7050 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint16_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "heightSegmentCount";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x200000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B7058 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "height";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x400000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B7060 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "radius";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B7068 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_BOOL(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "cap";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xC00000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B7070 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_BOOL(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "addUVs";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0xD00000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1B7078 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_BOOL(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "addNormals";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0xE00000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1B7080 = v33;
      __cxa_guard_release(&qword_1EE1B6E50);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1B7050;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildConeOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildConeOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildConeOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildConeOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v34 = v36;
}

double re::internal::defaultConstruct<re::GeomBuildConeOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65544;
  *(a3 + 4) = 0x3F0000003F800000;
  *&result = 65793;
  *(a3 + 12) = 65793;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildConeOptions>(uint64_t a1)
{
  *a1 = 65544;
  *(a1 + 4) = 0x3F0000003F800000;
  *&result = 65793;
  *(a1 + 12) = 65793;
  return result;
}

void *re::allocInfo_GeomBuildCylinderOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B75E8, "GeomBuildCylinderOptions");
    __cxa_guard_release(&qword_1EE1B6E58);
  }

  return &unk_1EE1B75E8;
}

void re::initInfo_GeomBuildCylinderOptions(re *this, re::IntrospectionBase *a2)
{
  v43[0] = 0x289B3F5B491A3E2CLL;
  v43[1] = "GeomBuildCylinderOptions";
  if (v43[0])
  {
    if (v43[0])
    {
    }
  }

  *(this + 2) = v44;
  if ((atomic_load_explicit(&qword_1EE1B6E60, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6E60);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint16_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "radialSegmentCount";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B70C0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint16_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "heightSegmentCount";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x200000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B70C8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "height";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x400000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B70D0 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "topRadius";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B70D8 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_float(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "bottomRadius";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xC00000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B70E0 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_BOOL(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "capTop";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x1000000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1B70E8 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_BOOL(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "capBottom";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x1100000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1B70F0 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_BOOL(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "addUVs";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x1200000008;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE1B70F8 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = re::introspect_BOOL(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "addNormals";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x1300000009;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE1B7100 = v41;
      __cxa_guard_release(&qword_1EE1B6E60);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1B70C0;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildCylinderOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildCylinderOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildCylinderOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildCylinderOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v42 = v44;
}

double re::internal::defaultConstruct<re::GeomBuildCylinderOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65544;
  result = 0.0000305175853;
  *(a3 + 4) = 0x3F0000003F800000;
  *(a3 + 12) = 0x10101013F000000;
  *(a3 + 20) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildCylinderOptions>(uint64_t a1)
{
  *a1 = 65544;
  result = 0.0000305175853;
  *(a1 + 4) = 0x3F0000003F800000;
  *(a1 + 12) = 0x10101013F000000;
  *(a1 + 20) = 0;
  return result;
}

void re::introspect_GeomBuildPlaneOrientation(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B6E68, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B6E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E70))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B7108, "GeomBuildPlaneOrientation", 4, 4, 1, 1);
      qword_1EE1B7108 = &unk_1F5D0C658;
      qword_1EE1B7148 = &re::introspect_GeomBuildPlaneOrientation(BOOL)::enumTable;
      dword_1EE1B7118 = 9;
      __cxa_guard_release(&qword_1EE1B6E70);
    }

    if (_MergedGlobals_423)
    {
      break;
    }

    _MergedGlobals_423 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B7108, a2);
    v41 = 0xBA0BF2EDFBA4A4CCLL;
    v42 = "GeomBuildPlaneOrientation";
    v45 = 208862;
    v46 = "int";
    v4 = v44[0];
    v5 = v44[1];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B7148;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(v44, &v41, 1, 1, &v45);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v43.var0 = 2 * v11;
            v43.var1 = v10;
            re::TypeBuilder::addEnumConstant(v44, v15, &v43);
            if (*&v43.var0)
            {
              if (*&v43.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v43.var0 = 2 * v20;
              v43.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v44, v24, &v43);
              if (*&v43.var0)
              {
                if (*&v43.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v44, v26);
      xmmword_1EE1B7128 = v43;
      if (v41)
      {
        if (v41)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B6E68);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 2;
      *(v30 + 2) = "PositiveY";
      qword_1EE1B6F88 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 3;
      *(v32 + 2) = "NegativeY";
      qword_1EE1B6F90 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 0;
      *(v34 + 2) = "PositiveX";
      qword_1EE1B6F98 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 1;
      *(v36 + 2) = "NegativeX";
      qword_1EE1B6FA0 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "PositiveZ";
      qword_1EE1B6FA8 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 5;
      *(v40 + 16) = "NegativeZ";
      qword_1EE1B6FB0 = v40;
      __cxa_guard_release(&qword_1EE1B6E68);
    }
  }
}

void *re::allocInfo_GeomBuildPlaneOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7678, "GeomBuildPlaneOptions");
    __cxa_guard_release(&qword_1EE1B6E78);
  }

  return &unk_1EE1B7678;
}

void re::initInfo_GeomBuildPlaneOptions(re *this, re::IntrospectionBase *a2)
{
  v42[0] = 0x85F4F1B50A8F3C68;
  v42[1] = "GeomBuildPlaneOptions";
  if (v42[0])
  {
    if (v42[0])
    {
    }
  }

  *(this + 2) = v43;
  if ((atomic_load_explicit(&qword_1EE1B6E80, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6E80);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint16_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "widthSegmentCount";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B7150 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint16_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "depthSegmentCount";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x200000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B7158 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_uint16_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "cornerSegmentCount";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x400000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B7160 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "width";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B7168 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_float(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "depth";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xC00000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B7170 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_float(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "cornerRadius";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x1000000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1B7178 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_BOOL(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "addUVs";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x1400000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1B7180 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_BOOL(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "addNormals";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x1500000008;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE1B7188 = v37;
      v38 = re::introspectionAllocator(v37);
      re::introspect_GeomBuildPlaneOrientation(v38, v39);
      v40 = (*(*v38 + 32))(v38, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "orientation";
      *(v40 + 16) = &qword_1EE1B7108;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x1800000009;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1B7190 = v40;
      __cxa_guard_release(&qword_1EE1B6E80);
    }
  }

  *(this + 2) = 0x1C00000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1B7150;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildPlaneOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildPlaneOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildPlaneOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildPlaneOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v41 = v43;
}

double re::internal::defaultConstruct<re::GeomBuildPlaneOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65537;
  *(a3 + 4) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 20) = 257;
  *(a3 + 24) = 2;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildPlaneOptions>(uint64_t a1)
{
  *a1 = 65537;
  *(a1 + 4) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 20) = 257;
  *(a1 + 24) = 2;
  return result;
}

void *re::allocInfo_GeomBuildPyramidOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7708, "GeomBuildPyramidOptions");
    __cxa_guard_release(&qword_1EE1B6E88);
  }

  return &unk_1EE1B7708;
}

void re::initInfo_GeomBuildPyramidOptions(re *this, re::IntrospectionBase *a2)
{
  v31[0] = 0x4674A7F369EB880;
  v31[1] = "GeomBuildPyramidOptions";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1B6E90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6E90);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint16_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "segmentCount";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B6FB8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "width";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B6FC0 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "height";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B6FC8 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "depth";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xC00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B6FD0 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_BOOL(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "addUVs";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x1000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B6FD8 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_BOOL(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "addNormals";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x1100000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1B6FE0 = v29;
      __cxa_guard_release(&qword_1EE1B6E90);
    }
  }

  *(this + 2) = 0x1400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1B6FB8;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildPyramidOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildPyramidOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildPyramidOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildPyramidOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v30 = v32;
}

double re::internal::defaultConstruct<re::GeomBuildPyramidOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 4) = result;
  *(a3 + 12) = 1065353216;
  *(a3 + 16) = 257;
  *(a3 + 18) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildPyramidOptions>(uint64_t a1)
{
  *a1 = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 4) = result;
  *(a1 + 12) = 1065353216;
  *(a1 + 16) = 257;
  *(a1 + 18) = 0;
  return result;
}

void *re::allocInfo_GeomBuildSphereOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7798, "GeomBuildSphereOptions");
    __cxa_guard_release(&qword_1EE1B6E98);
  }

  return &unk_1EE1B7798;
}

void re::initInfo_GeomBuildSphereOptions(re *this, re::IntrospectionBase *a2)
{
  v23[0] = 0x7D389F564D24FD7ELL;
  v23[1] = "GeomBuildSphereOptions";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1B6EA0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6EA0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint16_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "segmentCount";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B6F20 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "radius";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B6F28 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "addUVs";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B6F30 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_BOOL(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "addNormals";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x900000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B6F38 = v21;
      __cxa_guard_release(&qword_1EE1B6EA0);
    }
  }

  *(this + 2) = 0xC00000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B6F20;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildSphereOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildSphereOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildSphereOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildSphereOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

void re::internal::defaultConstruct<re::GeomBuildSphereOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 8;
  *(a3 + 4) = 1056964608;
  *(a3 + 8) = 257;
  *(a3 + 10) = 0;
}

uint64_t re::internal::defaultConstructV2<re::GeomBuildSphereOptions>(uint64_t result)
{
  *result = 8;
  *(result + 4) = 1056964608;
  *(result + 8) = 257;
  *(result + 10) = 0;
  return result;
}

void *re::allocInfo_GeomBuildTetrahedronOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EA8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7828, "GeomBuildTetrahedronOptions");
    __cxa_guard_release(&qword_1EE1B6EA8);
  }

  return &unk_1EE1B7828;
}

void re::initInfo_GeomBuildTetrahedronOptions(re *this, re::IntrospectionBase *a2)
{
  v23[0] = 0xE0F66382351EDB28;
  v23[1] = "GeomBuildTetrahedronOptions";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1B6EB0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6EB0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint16_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "segmentCount";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B6F40 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "length";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B6F48 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "addUVs";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B6F50 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_BOOL(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "addNormals";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x900000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B6F58 = v21;
      __cxa_guard_release(&qword_1EE1B6EB0);
    }
  }

  *(this + 2) = 0xC00000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B6F40;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildTetrahedronOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildTetrahedronOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildTetrahedronOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildTetrahedronOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

void re::internal::defaultConstruct<re::GeomBuildTetrahedronOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1;
  *(a3 + 4) = 1065353216;
  *(a3 + 8) = 257;
  *(a3 + 10) = 0;
}

uint64_t re::internal::defaultConstructV2<re::GeomBuildTetrahedronOptions>(uint64_t result)
{
  *result = 1;
  *(result + 4) = 1065353216;
  *(result + 8) = 257;
  *(result + 10) = 0;
  return result;
}

void *re::allocInfo_GeomBuildTubeOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B78B8, "GeomBuildTubeOptions");
    __cxa_guard_release(&qword_1EE1B6EB8);
  }

  return &unk_1EE1B78B8;
}

void re::initInfo_GeomBuildTubeOptions(re *this, re::IntrospectionBase *a2)
{
  v35[0] = 0xCAD475995321F50;
  v35[1] = "GeomBuildTubeOptions";
  if (v35[0])
  {
    if (v35[0])
    {
    }
  }

  *(this + 2) = v36;
  if ((atomic_load_explicit(&qword_1EE1B6EC0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6EC0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint16_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "radialSegmentCount";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B7088 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint16_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "heightSegmentCount";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x200000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B7090 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "height";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x400000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B7098 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "innerRadius";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B70A0 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_float(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "outerRadius";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xC00000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B70A8 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_BOOL(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "addUVs";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x1000000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1B70B0 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_BOOL(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "addNormals";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x1100000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1B70B8 = v33;
      __cxa_guard_release(&qword_1EE1B6EC0);
    }
  }

  *(this + 2) = 0x1400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1B7088;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildTubeOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildTubeOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildTubeOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildTubeOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v34 = v36;
}

double re::internal::defaultConstruct<re::GeomBuildTubeOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65544;
  result = 0.00000190734908;
  *(a3 + 4) = 0x3EC000003F800000;
  *(a3 + 12) = 1056964608;
  *(a3 + 16) = 257;
  *(a3 + 18) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildTubeOptions>(uint64_t a1)
{
  *a1 = 65544;
  result = 0.00000190734908;
  *(a1 + 4) = 0x3EC000003F800000;
  *(a1 + 12) = 1056964608;
  *(a1 + 16) = 257;
  *(a1 + 18) = 0;
  return result;
}

void re::introspect_GeomBuildExtrudedTextHorizontalAlignment(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B6EC8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B6ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6ED0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B7198, "GeomBuildExtrudedTextHorizontalAlignment", 1, 1, 1, 1);
      qword_1EE1B7198 = &unk_1F5D0C658;
      qword_1EE1B71D8 = &re::introspect_GeomBuildExtrudedTextHorizontalAlignment(BOOL)::enumTable;
      dword_1EE1B71A8 = 9;
      __cxa_guard_release(&qword_1EE1B6ED0);
    }

    if (byte_1EE1B6E11)
    {
      break;
    }

    byte_1EE1B6E11 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B7198, a2);
    v39 = 0xF15D7D52F69102;
    v40 = "GeomBuildExtrudedTextHorizontalAlignment";
    v43 = 0x31CD534126;
    v44 = "uint8_t";
    v4 = v42[0];
    v5 = v42[1];
    if (v43)
    {
      if (v43)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B71D8;
      v43 = v4;
      v44 = v5;
      re::TypeBuilder::beginEnumType(v42, &v39, 1, 1, &v43);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v41.var0 = 2 * v11;
            v41.var1 = v10;
            re::TypeBuilder::addEnumConstant(v42, v15, &v41);
            if (*&v41.var0)
            {
              if (*&v41.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v41.var0 = 2 * v20;
              v41.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v42, v24, &v41);
              if (*&v41.var0)
              {
                if (*&v41.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v42, v26);
      xmmword_1EE1B71B8 = v41;
      if (v39)
      {
        if (v39)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v40);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B6EC8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Left";
      qword_1EE1B6F60 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Right";
      qword_1EE1B6F68 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Center";
      qword_1EE1B6F70 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "Justified";
      qword_1EE1B6F78 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 8) = 4;
      *(v38 + 16) = "Natural";
      qword_1EE1B6F80 = v38;
      __cxa_guard_release(&qword_1EE1B6EC8);
    }
  }
}

void re::introspect_GeomBuildExtrudedTextVerticalAlignment(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B6ED8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B6EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EE0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B71E0, "GeomBuildExtrudedTextVerticalAlignment", 1, 1, 1, 1);
      qword_1EE1B71E0 = &unk_1F5D0C658;
      qword_1EE1B7220 = &re::introspect_GeomBuildExtrudedTextVerticalAlignment(BOOL)::enumTable;
      dword_1EE1B71F0 = 9;
      __cxa_guard_release(&qword_1EE1B6EE0);
    }

    if (byte_1EE1B6E12)
    {
      break;
    }

    byte_1EE1B6E12 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B71E0, a2);
    v35 = 0xC42D07F67E9873DELL;
    v36 = "GeomBuildExtrudedTextVerticalAlignment";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B7220;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1B7200 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B6ED8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Top";
      qword_1EE1B6F08 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Bottom";
      qword_1EE1B6F10 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Center";
      qword_1EE1B6F18 = v34;
      __cxa_guard_release(&qword_1EE1B6ED8);
    }
  }
}

void re::introspect_GeomBuildExtrudedTextLineBreakMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B6EE8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B6EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EF0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B7228, "GeomBuildExtrudedTextLineBreakMode", 1, 1, 1, 1);
      qword_1EE1B7228 = &unk_1F5D0C658;
      qword_1EE1B7268 = &re::introspect_GeomBuildExtrudedTextLineBreakMode(BOOL)::enumTable;
      dword_1EE1B7238 = 9;
      __cxa_guard_release(&qword_1EE1B6EF0);
    }

    if (byte_1EE1B6E13)
    {
      break;
    }

    byte_1EE1B6E13 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B7228, a2);
    v41 = 0x54FFABE001BC5B20;
    v42 = "GeomBuildExtrudedTextLineBreakMode";
    v45 = 0x31CD534126;
    v46 = "uint8_t";
    v4 = v44[0];
    v5 = v44[1];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B7268;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(v44, &v41, 1, 1, &v45);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v43.var0 = 2 * v11;
            v43.var1 = v10;
            re::TypeBuilder::addEnumConstant(v44, v15, &v43);
            if (*&v43.var0)
            {
              if (*&v43.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v43.var0 = 2 * v20;
              v43.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v44, v24, &v43);
              if (*&v43.var0)
              {
                if (*&v43.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v44, v26);
      xmmword_1EE1B7248 = v43;
      if (v41)
      {
        if (v41)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B6EE8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "WordWrapping";
      qword_1EE1B6FE8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "CharWrapping";
      qword_1EE1B6FF0 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Clipping";
      qword_1EE1B6FF8 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "TruncatingHead";
      qword_1EE1B7000 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "TruncatingTail";
      qword_1EE1B7008 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 5;
      *(v40 + 16) = "TruncatingMiddle";
      qword_1EE1B7010 = v40;
      __cxa_guard_release(&qword_1EE1B6EE8);
    }
  }
}