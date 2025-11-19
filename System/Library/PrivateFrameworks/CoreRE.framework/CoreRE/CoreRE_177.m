uint64_t MetalEmulation::computeMip(uint64_t result, double *a2)
{
  v2 = *(a2 + 3);
  v6[0] = result;
  v6[1] = a2;
  v3 = *(result + 4) * *(result + 8);
  if ((*(result + 16) - 5) < 2)
  {
    v3 *= 6;
  }

  v4 = *a2;
  if (v2 > 69)
  {
    switch(v2)
    {
      case '}':
        break;
      case 's':
        break;
      case 'F':
        break;
      default:
        return result;
    }
  }

  else if (v2 != 10)
  {
    if (v2 == 25)
    {
    }

    else
    {
      if (v2 != 55)
      {
        return result;
      }
    }
  }

  WORD2(v4) = v3;
  return MetalEmulation::internal::_executeShader(v5, v6, v4);
}

int32x2_t **MetalEmulation::anonymous namespace::powerOfTwoComputeMip_uchar(int32x2_t **result, uint16x4_t a2)
{
  v2 = vmovl_u16(a2).u64[0];
  v3 = vadd_s32(v2, v2);
  v4 = result[1];
  v5 = vand_s8(vext_s8(v3, vdup_lane_s32(a2, 1), 4uLL), 0xFFFF0000FFFFLL);
  v6 = vmul_s32((*result)[4], v5);
  v7 = v6.i32[1] + (v3.i16[0] & 0xFFFEu) + v6.i32[0];
  v8 = v7 + *&(*result)[4];
  *(*&v4[26] + v4[4].i32[1] * v5.i32[1] + a2.u16[0] + v4[4].i32[0] * a2.u16[1]) = (*(*&(*result)[26] + v7 + 1) + *(*&(*result)[26] + v7) + *(*&(*result)[26] + v8) + *(*&(*result)[26] + v8 + 1)) >> 2;
  return result;
}

int8x8_t MetalEmulation::anonymous namespace::powerOfTwoComputeMip_uchar4(int32x2_t **a1, uint16x4_t a2)
{
  v2 = vmovl_u16(a2).u64[0];
  v3 = vadd_s32(v2, v2);
  v4 = a1[1];
  v5 = (*a1)[4];
  v6 = vand_s8(vext_s8(v3, vdup_lane_s32(a2, 1), 4uLL), 0xFFFF0000FFFFLL);
  v7 = vmul_s32(v5, v6);
  v8 = v7.i32[1] + 4 * (v3.i16[0] & 0xFFFEu) + v7.i32[0];
  v9 = (v8 + v5.i32[0]);
  v10 = (*a1)[26];
  v11 = (*&v10 + v8);
  v12 = (*&v10 + v9);
  v3.i32[0] = *v11;
  v5.i32[0] = v11[1];
  v13 = vaddl_u8(v5, v3);
  v5.i32[0] = *v12;
  v7.i32[0] = v12[1];
  LODWORD(v12) = v4[4].i32[1] * v6.i32[1] + 4 * a2.u16[0] + v4[4].i32[0] * a2.u16[1];
  result = vuzp1_s8(vshr_n_u16(*&vaddw_u8(vaddw_u8(v13, v5), v7), 2uLL), a2);
  *(*&v4[26] + v12) = result.i32[0];
  return result;
}

int32x2_t **MetalEmulation::anonymous namespace::powerOfTwoComputeMip_half(int32x2_t **result, uint16x4_t a2)
{
  v2 = vmovl_u16(a2).u64[0];
  _D1 = vadd_s32(v2, v2);
  v4 = vand_s8(vext_s8(_D1, vdup_lane_s32(a2, 1), 4uLL), 0xFFFF0000FFFFLL);
  v5 = vmul_s32((*result)[4], v4);
  v6 = v5.i32[1] + 2 * (_D1.i16[0] & 0xFFFEu) + v5.i32[0];
  v7 = v6 + *&(*result)[4];
  v8 = (*result)[26];
  v9 = (*&v8 + v6);
  v10 = (*&v8 + v7);
  _D1.i16[0] = *v9;
  __asm { FCVT            S1, H1 }

  _H3 = v9[1];
  __asm { FCVT            S3, H3 }

  *_D1.i32 = *_D1.i32 + _S3;
  LOWORD(_S3) = *v10;
  __asm { FCVT            S3, H3 }

  *_D1.i32 = *_D1.i32 + _S3;
  LOWORD(_S3) = v10[1];
  __asm { FCVT            S3, H3 }

  *_D1.i32 = (*_D1.i32 + _S3) * 0.25;
  __asm { FCVT            H1, S1 }

  *(*&result[1][26] + result[1][4].i32[1] * v4.i32[1] + 2 * a2.u16[0] + result[1][4].i32[0] * a2.u16[1]) = _D1.i16[0];
  return result;
}

int32x2_t **MetalEmulation::anonymous namespace::powerOfTwoComputeMip_half4(int32x2_t **result, uint16x4_t a2)
{
  v2 = vmovl_u16(a2).u64[0];
  v3 = vadd_s32(v2, v2);
  v4 = vand_s8(vext_s8(v3, vdup_lane_s32(a2, 1), 4uLL), 0xFFFF0000FFFFLL);
  v5 = vmul_s32((*result)[4], v4);
  v6 = v5.i32[1] + 8 * (v3.i16[0] & 0xFFFEu) + v5.i32[0];
  v7 = v6 + *&(*result)[4];
  __asm { FMOV            V3.4S, #0.25 }

  *(*&result[1][26] + result[1][4].i32[1] * v4.i32[1] + 8 * a2.u16[0] + result[1][4].i32[0] * a2.u16[1]) = vcvt_f16_f32(vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_f16(*(*&(*result)[26] + v6)), vcvtq_f32_f16(*(*&(*result)[26] + v6 + 8))), vcvtq_f32_f16(*(*&(*result)[26] + v7))), vcvtq_f32_f16(*(*&(*result)[26] + v7 + 8))), _Q3));
  return result;
}

int32x2_t **MetalEmulation::anonymous namespace::powerOfTwoComputeMip_float(int32x2_t **result, uint16x4_t a2)
{
  v2 = vmovl_u16(a2).u64[0];
  v3 = vadd_s32(v2, v2);
  v4 = vand_s8(vext_s8(v3, vdup_lane_s32(a2, 1), 4uLL), 0xFFFF0000FFFFLL);
  v5 = vmul_s32((*result)[4], v4);
  v6 = v5.i32[1] + 4 * (v3.i16[0] & 0xFFFEu) + v5.i32[0];
  v7 = v6 + *&(*result)[4];
  *(*&result[1][26] + result[1][4].i32[1] * v4.i32[1] + 4 * a2.u16[0] + result[1][4].i32[0] * a2.u16[1]) = (((*(*&(*result)[26] + v6) + *(*&(*result)[26] + v6 + 4)) + *(*&(*result)[26] + v7)) + *(*&(*result)[26] + v7 + 4)) * 0.25;
  return result;
}

int32x2_t **MetalEmulation::anonymous namespace::powerOfTwoComputeMip_float4(int32x2_t **result, uint16x4_t a2)
{
  v2 = vmovl_u16(a2).u64[0];
  v3 = vadd_s32(v2, v2);
  v4 = vand_s8(vext_s8(v3, vdup_lane_s32(a2, 1), 4uLL), 0xFFFF0000FFFFLL);
  v5 = vmul_s32((*result)[4], v4);
  v6 = v5.i32[1] + 16 * (v3.i16[0] & 0xFFFEu) + v5.i32[0];
  v7 = v6 + *&(*result)[4];
  __asm { FMOV            V3.4S, #0.25 }

  *(*&result[1][26] + result[1][4].i32[1] * v4.i32[1] + 16 * a2.u16[0] + result[1][4].i32[0] * a2.u16[1]) = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*(*&(*result)[26] + v6), *(*&(*result)[26] + v6 + 16)), *(*&(*result)[26] + v7)), *(*&(*result)[26] + v7 + 16)), _Q3);
  return result;
}

uint64_t MetalEmulation::copyMip(void *a1, double a2)
{
  v2 = a1[1];
  v3 = WORD2(a2);
  v4 = LODWORD(a2);
  (*(*a1 + 200))();
  v5 = *(v2 + 168);

  return v5(v2, v4, v3);
}

void *MetalEmulation::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4) * *(a1 + 8);
  if ((*(a1 + 16) - 5) < 2)
  {
    v4 *= 6;
  }

  if (*(a1 + 24) == *(a2 + 24))
  {
    v5 = *(a1 + 36) * v4;
    v6 = *(a2 + 176);
    v7 = *(a1 + 208);

    return memcpy(v6, v7, v5);
  }

  else
  {
    v10[2] = v2;
    v10[3] = v3;
    v10[0] = a1;
    v10[1] = a2;
    v9 = *a1;
    WORD2(v9) = v4;
    return MetalEmulation::internal::_executeShader(MetalEmulation::copyMip, v10, v9);
  }
}

uint64_t re::RenderGraphContext::RenderGraphContext(uint64_t a1, uint64_t *a2, re::DrawCallRecorder *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a5;
  *(a1 + 24) = a4;
  *(a1 + 32) = a7;
  *(a1 + 52) = a11;
  v16.i64[0] = 0x7F0000007FLL;
  v16.i64[1] = 0x7F0000007FLL;
  *(a1 + 64) = vnegq_f32(v16);
  *(a1 + 80) = v16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v62 = (a1 + 112);
  *(a1 + 120) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 1060) = 0x7FFFFFFFLL;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1108) = 0x7FFFFFFFLL;
  *(a1 + 1120) = 0;
  *(a1 + 1160) = 0;
  *(a1 + 1144) = 0;
  *(a1 + 1152) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1168) = a6;
  *(a1 + 1176) = a8;
  *(a1 + 1184) = 4;
  *(a1 + 1192) = 0;
  *(a1 + 1208) = 1;
  *(a1 + 1216) = -1;
  v17 = re::globalAllocators(a1);
  v18 = (*(*v17[2] + 32))(v17[2], 16, 8);
  *v18 = 0;
  v19 = re::globalAllocators(v18);
  v20 = (*(*v19[2] + 32))(v19[2], 272, 8);
  *v20 = 0u;
  v20[1] = 0u;
  v20[2] = 0u;
  v20[3] = 0u;
  v20[4] = 0u;
  v20[5] = 0u;
  v20[6] = 0u;
  v20[7] = 0u;
  v20[8] = 0u;
  v20[9] = 0u;
  v20[10] = 0u;
  v20[11] = 0u;
  v20[12] = 0u;
  v20[13] = 0u;
  v20[14] = 0u;
  v20[15] = 0u;
  v20[16] = 0u;
  *(v18 + 1) = v20;
  *(a1 + 1200) = v18;
  *(a1 + 1224) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1317) = 0;
  *(a1 + 1332) = 134217472;
  *(a1 + 1340) = 134217472;
  re::DrawCallRecorder::DrawCallRecorder(a1 + 1352, (a2 + 5), a3, a2[4]);
  *(a1 + 1536) = a9;
  *(a1 + 1544) = a10;
  *(a1 + 1552) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1576) = 0;
  *(a1 + 1568) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1608) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0;
  *(a1 + 1644) = 0x7FFFFFFFLL;
  if (*a12)
  {
    v21 = *(a12 + 28) <= 3u ? 3 : *(a12 + 28);
    re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(a1 + 1608, *a12, v21);
    if (*(a12 + 32))
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(a12 + 16);
        if ((*(v24 + v22) & 0x80000000) != 0)
        {
          v25 = re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1 + 1608, *(v24 + v22 + 8) % *(a1 + 1632), *(v24 + v22 + 8));
          v26 = *(a12 + 16) + v22;
          *(v25 + 8) = *(v26 + 8);
          v27 = *(v26 + 16);
          *(v25 + 16) = v27;
          if (v27)
          {
            v28 = (v27 + 8);
          }
        }

        ++v23;
        v22 += 24;
      }

      while (v23 < *(a12 + 32));
    }
  }

  v29 = a2[55];
  *(a1 + 1688) = 0;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1692) = 0x7FFFFFFFLL;
  re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(a1 + 1656, v29, 3);
  v30 = a2[55];
  *(a1 + 1712) = 0;
  *(a1 + 1720) = 1;
  *(a1 + 1728) = 0u;
  *(a1 + 1704) = v30;
  v31 = re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity((a1 + 1704), 0);
  *(a1 + 1720) += 2;
  v32 = *(a8 + 168);
  v33 = *(v32 + 352);
  v34 = v62;
  if (!v33)
  {
LABEL_43:
    if ((atomic_load_explicit(&qword_1EE1B9928, memory_order_acquire) & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_44;
  }

  v35 = *(v32 + 368);
  v63 = v35 + 200 * v33;
  while (1)
  {
    v64 = v35;
    v36 = *(v35 + 56);
    if (v36)
    {
      break;
    }

LABEL_42:
    v35 = v64 + 200;
    if (v64 + 200 == v63)
    {
      goto LABEL_43;
    }
  }

  v37 = *(v35 + 72);
  v38 = v37 + (v36 << 6);
  while (*(v37 + 4) != 12)
  {
LABEL_41:
    v37 += 64;
    if (v37 == v38)
    {
      goto LABEL_42;
    }
  }

  v65[0] = 0;
  v65[1] = 0;
  v66 = 1;
  v67 = 0;
  v68 = 0;
  if (*(a1 + 1052))
  {
LABEL_17:
    re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::add(a1 + 1024, (v37 + 52), v65);
LABEL_38:
    v31 = v65[0];
    if (v65[0] && (v66 & 1) == 0)
    {
      v31 = (*(*v65[0] + 40))();
    }

    goto LABEL_41;
  }

  v39 = *v34;
  if (*v34)
  {
    v40 = 112 * v39;
    v41 = 112 * v39;
    v42 = (a1 + 128);
    do
    {
      if (*v42 == *(v37 + 52))
      {
        goto LABEL_38;
      }

      v42 += 28;
      v41 -= 112;
    }

    while (v41);
    if ((v39 & 0xFFFFFFF8) == 0)
    {
      goto LABEL_33;
    }

    if (!*(a1 + 1024))
    {
      v43 = *(a1 + 96);
      if (!v43)
      {
      }

      re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::init(a1 + 1024, v43, 16);
      if (!*v34)
      {
        goto LABEL_32;
      }

      v40 = 112 * *v34;
    }

    v44 = (a1 + 128);
    do
    {
      v69 = 0;
      v70 = 0;
      v71[0] = 0;
      v45 = 0xBF58476D1CE4E5B9 * (*v44 ^ (*v44 >> 30));
      re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::findEntry<unsigned int>(a1 + 1024, v44, (0x94D049BB133111EBLL * (v45 ^ (v45 >> 27))) ^ ((0x94D049BB133111EBLL * (v45 ^ (v45 >> 27))) >> 31), &v69);
      if (HIDWORD(v70) == 0x7FFFFFFF)
      {
        v46 = re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::allocEntry(a1 + 1024, v70, v69);
        *(v46 + 4) = *v44;
        re::DynamicOverflowArray<re::AABB,2ul>::DynamicOverflowArray(v46 + 16, (v44 + 4));
        ++*(a1 + 1064);
      }

      v44 += 28;
      v40 -= 112;
    }

    while (v40);
LABEL_32:
    v34 = v62;
    re::DynamicInlineArray<re::KeyValuePair<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>>,8ul>::clear(v62);
    goto LABEL_17;
  }

LABEL_33:
  LODWORD(v69) = *(v37 + 52);
  re::DynamicOverflowArray<re::AABB,2ul>::DynamicOverflowArray(v71, v65);
  if (*v34 >= 8)
  {
    goto LABEL_57;
  }

  v48 = (a1 + 128 + 112 * *v34);
  *v48 = v69;
  re::DynamicOverflowArray<re::AABB,2ul>::DynamicOverflowArray((v48 + 4), v71);
  v50 = *(a1 + 112) + 1;
  *(a1 + 112) = v50;
  ++*(a1 + 120);
  if (v71[0] && (v72 & 1) == 0)
  {
    (*(*v71[0] + 40))();
    v50 = *v34;
  }

  if (v50)
  {
    goto LABEL_38;
  }

  re::internal::assertLog(6, v49, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
  _os_crash();
  __break(1u);
LABEL_57:
  re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
  _os_crash();
  __break(1u);
LABEL_58:
  if (__cxa_guard_acquire(&qword_1EE1B9928))
  {
    qword_1EE1B9920 = re::hashString("InplaceTonemappingData", v61);
    __cxa_guard_release(&qword_1EE1B9928);
  }

LABEL_44:
  v51 = *(a1 + 1168);
  v52 = "N2re22InplaceTonemappingDataE";
  if (("N2re22InplaceTonemappingDataE" & 0x8000000000000000) != 0)
  {
    v53 = ("N2re22InplaceTonemappingDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v54 = 5381;
    do
    {
      v52 = v54;
      v55 = *v53++;
      v54 = (33 * v54) ^ v55;
    }

    while (v55);
  }

  if (*(v51 + 64))
  {
    v56 = (qword_1EE1B9920 + (v52 << 6) + (v52 >> 2) - 0x61C8864680B583E9) ^ v52;
    v57 = *(*(v51 + 72) + 4 * (v56 % *(v51 + 88)));
    if (v57 != 0x7FFFFFFF)
    {
      v58 = *(v51 + 80);
      while (*(v58 + 24 * v57 + 8) != v56)
      {
        v57 = *(v58 + 24 * v57) & 0x7FFFFFFF;
        if (v57 == 0x7FFFFFFF)
        {
          return a1;
        }
      }

      v59 = *(v58 + 24 * v57 + 16);
      if (v59)
      {
        *(a1 + 1552) = *(v59 + 8);
      }
    }
  }

  return a1;
}

void re::RenderGraphContext::~RenderGraphContext(re::RenderGraphContext *this)
{
  re::DynamicOverflowArray<re::PatchTransform,5ul>::deinit(this + 1704);
  re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 207);
  re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 1608);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 1560);
  re::DrawCallRecorder::~DrawCallRecorder((this + 1352));
  v2 = *(this + 159);
  if (v2)
  {

    *(this + 159) = 0;
  }

  v3 = *(this + 158);
  if (v3)
  {

    *(this + 158) = 0;
  }

  re::DynamicArray<re::mtl::RenderCommandEncoder>::deinit(this + 1224);
  re::internal::destroyPersistent<re::mtl::RenderCommandEncoder>("~CommandEncoder", 562, *(this + 150));
  *(this + 150) = 0;
  re::DynamicArray<unsigned long>::deinit(this + 1128);
  re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 1072);
  re::SmallHashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,8ul,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false>::~SmallHashTable(this + 96);
}

void re::RenderGraphContext::selectViewport(unint64_t a1, uint64_t a2, uint64_t a3, _anonymous_namespace_ *a4, unint64_t a5)
{
  v66 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(a3 + 8))
    {
      v10 = *(a3 + 16);
      v11 = *(a2 + 8);
      *(v10 + 16) = *(a2 + 24);
      *v10 = v11;
      if (*(a4 + 1))
      {
        **(a4 + 2) = xmmword_1E3063230;
        return;
      }

      goto LABEL_54;
    }

LABEL_53:
    v51[0] = 0;
    v65 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 468;
    v57 = 2048;
    v58 = 0;
    v59 = 2048;
    v60 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_54:
    v51[0] = 0;
    v65 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 468;
    v57 = 2048;
    v58 = 0;
    v59 = 2048;
    v60 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  v12 = a1;
  v13 = *(*(a1 + 1176) + 168);
  v6 = *(v12 + 48);
  v7 = v13[44];
  if (v7 <= v6)
  {
LABEL_55:
    v51[0] = 0;
    v65 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 789;
    v57 = 2048;
    v58 = v6;
    v59 = 2048;
    v60 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v52 = 0;
    v65 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 468;
    v57 = 2048;
    v58 = 0;
    v59 = 2048;
    v60 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

  v14 = v13[46] + 200 * v6;
  v15 = *(v14 + 56);
  if (!v15)
  {
    return;
  }

  v5 = a5;
  v16 = v13[37];
  v17 = v15 << 6;
  v6 = *(v16 + 16);
  for (i = (*(v14 + 72) + 52); ; i += 16)
  {
    v7 = *i;
    if (v6 <= v7)
    {
      v51[0] = 0;
      v65 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      v56 = 789;
      v57 = 2048;
      v58 = v7;
      v59 = 2048;
      v60 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_51:
      v52 = 0;
      v65 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      v56 = 468;
      v57 = 2048;
      v58 = v5;
      v59 = 2048;
      v60 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_52:
      v52 = 0;
      v65 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      v56 = 468;
      v57 = 2048;
      v58 = v5;
      v59 = 2048;
      v60 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_53;
    }

    v19 = *(v16 + 32) + 48 * v7;
    if (*v19 != 1)
    {
      v20 = *(i - 12);
      v21 = v20 > 8;
      v22 = (1 << v20) & 0x1CE;
      if (!v21 && v22 != 0)
      {
        break;
      }
    }

    v17 -= 64;
    if (!v17)
    {
      return;
    }
  }

  v61.i64[0] = *(v19 + 8) >> 1;
  v61.i64[1] = *(v19 + 24);
  re::RenderGraphResourceDescriptions::targetDescriptionSource(v13, &v61, v51);
  v7 = re::RenderGraphExecutable::targetDescription(*(v12 + 1176), v51);
  v6 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(v12 + 1168), *(*(v12 + 40) + 48));
  v24 = re::RenderGraphDataStore::tryGet<re::VRRData>(*(v12 + 1168), *(*(v12 + 40) + 48));
  v26 = *(v7 + 12);
  v27.i64[0] = v26;
  v27.i64[1] = HIDWORD(v26);
  v28 = v27;
  if (!v24 || *(v24 + 12) != 1 || *(v14 + 171) != 1)
  {
    goto LABEL_24;
  }

  v48 = v28;
  v29 = *(v12 + 1176);
  v30 = *(v24 + 8);
  v31 = *(v29 + 104);
  if (v31 <= v30)
  {
LABEL_66:
    re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v30, v31);
    _os_crash();
    __break(1u);
  }

  v32 = *(*(v29 + 96) + 8 * v30);
  v28 = v48;
  if (v32)
  {
    v33 = v32;
    v61 = 0uLL;
    *&v62 = 0;
    [v32 screenSize];
    v49 = v61;

    v28 = v49;
  }

LABEL_24:
  v34 = *(a3 + 8);
  if (v34 < 2 || (v5 & 1) != 0)
  {
    if (v6 && !v5)
    {
      if (v6[1].i64[0])
      {
        if (*(a4 + 1))
        {
          **(a4 + 2) = v6[2];
          if (v6[1].i64[0])
          {
            if (*(a3 + 8))
            {
              v36 = *(a3 + 16);
              v37 = vcvtq_f64_u64(v28);
              *v36 = vrndaq_f32(vmulq_f32(v6[2], vcvt_hight_f32_f64(vcvt_f32_f64(v37), v37)));
              v36[1].i32[0] = 0;
              v38 = &v36[1].i32[1];
              goto LABEL_49;
            }

            goto LABEL_63;
          }

LABEL_62:
          re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
          _os_crash();
          __break(1u);
LABEL_63:
          v52 = 0;
          v65 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v53 = 136315906;
          v54 = "operator[]";
          v55 = 1024;
          v56 = 468;
          v57 = 2048;
          v58 = 0;
          v59 = 2048;
          v60 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_64:
          v52 = 0;
          v65 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v53 = 136315906;
          v54 = "operator[]";
          v55 = 1024;
          v56 = 468;
          v57 = 2048;
          v58 = 0;
          v59 = 2048;
          v60 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_65;
        }

LABEL_61:
        v52 = 0;
        v65 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        v56 = 468;
        v57 = 2048;
        v58 = 0;
        v59 = 2048;
        v60 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_62;
      }

LABEL_60:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
      _os_crash();
      __break(1u);
      goto LABEL_61;
    }

    if (!v34)
    {
      return;
    }

    v39 = 0;
    v5 = 0;
    v40 = vcvt_f32_f64(vcvtq_f64_u64(v28));
    while (1)
    {
      v12 = *(a4 + 1);
      if (v12 <= v5)
      {
        goto LABEL_51;
      }

      *(*(a4 + 2) + 16 * v5) = xmmword_1E3063230;
      v12 = *(a3 + 8);
      if (v12 <= v5)
      {
        goto LABEL_52;
      }

      v41 = (*(a3 + 16) + v39);
      *v41 = 0;
      v41[1] = v40;
      v41[2] = 0x3F80000000000000;
      ++v5;
      v39 += 24;
      if (v12 <= v5)
      {
        return;
      }
    }
  }

  if (v6)
  {
    v35 = v6[1].i64[0];
    v61.i64[0] = &v6[2];
    v61.i64[1] = v35;
    v50 = v28;
    re::FixedArray<re::Vector4<float>>::operator=(a4, &v61);
    v28 = v50;
    goto LABEL_44;
  }

  if (!*(a4 + 1))
  {
    goto LABEL_64;
  }

  **(a4 + 2) = xmmword_1E3063230;
  v5 = *(a4 + 1);
  if (v5 <= 1)
  {
LABEL_65:
    v52 = 0;
    v65 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 468;
    v57 = 2048;
    v58 = 1;
    v59 = 2048;
    v60 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  *(*(a4 + 2) + 16) = xmmword_1E3063230;
LABEL_44:
  v42 = *(a4 + 1);
  if (!v42)
  {
    goto LABEL_56;
  }

  v43 = *(a3 + 8);
  if (!v43)
  {
LABEL_57:
    v52 = 0;
    v65 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 468;
    v57 = 2048;
    v58 = 0;
    v59 = 2048;
    v60 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v44 = vcvtq_f64_u64(v28);
  v45 = vcvt_hight_f32_f64(vcvt_f32_f64(v44), v44);
  v46 = *(a4 + 2);
  v47 = *(a3 + 16);
  *v47 = vrndaq_f32(vmulq_f32(*v46, v45));
  *(v47 + 16) = 0x3F80000000000000;
  if (v42 == 1)
  {
LABEL_58:
    v52 = 0;
    v65 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 468;
    v57 = 2048;
    v58 = 1;
    v59 = 2048;
    v60 = 1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_59;
  }

  if (v43 == 1)
  {
LABEL_59:
    v52 = 0;
    v65 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 468;
    v57 = 2048;
    v58 = 1;
    v59 = 2048;
    v60 = 1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_60;
  }

  *(v47 + 24) = vrndaq_f32(vmulq_f32(v46[1], v45));
  *(v47 + 40) = 0;
  v38 = (v47 + 44);
LABEL_49:
  *v38 = 1065353216;
}

uint64_t re::RenderGraphContext::getRateMap(re::RenderGraphContext *this, unint64_t a2)
{
  v4 = *(this + 147);
  v5 = *(v4 + 104);
  if (v5 > a2)
  {
    return *(v4 + 96) + 8 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v5, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs@<X0>(re::RenderGraphContext *this@<X0>, uint64_t *a2@<X8>)
{
  PipelineCompilationData = re::RenderGraphContext::tryGetPipelineCompilationData(this, *(*(this + 5) + 48));
  v4 = re::RenderGraphDataStore::tryGet<re::SceneScope>(*(this + 146), *(*(this + 5) + 48));
  v5 = re::RenderGraphDataStore::tryGet<re::SceneIndexData>(*(this + 146), *(*(this + 5) + 48));
  v6 = re::RenderGraphDataStore::tryGet<re::StencilInfoData>(*(this + 146), *(*(this + 5) + 48));
  v7 = re::RenderGraphDataStore::tryGet<re::ViewportData>(*(this + 146), *(*(this + 5) + 48));
  v8 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(this + 146), *(*(this + 5) + 48));
  v9 = re::RenderGraphDataStore::tryGet<re::TintContextData>(*(this + 146), *(*(this + 5) + 48));
  v10 = re::RenderGraphDataStore::tryGet<re::VRRData>(*(this + 146), *(*(this + 5) + 48));
  v11 = re::RenderGraphDataStore::tryGet<re::TriangleFillModeData>(*(this + 146), *(*(this + 5) + 48));
  result = re::RenderGraphDataStore::tryGet<re::PortalViewData>(*(this + 146), *(*(this + 5) + 48));
  *a2 = PipelineCompilationData;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v11;
  a2[9] = result;
  return result;
}

uint64_t re::RenderGraphContext::tryGetPipelineCompilationData(re::RenderGraphContext *this, uint64_t a2)
{
  result = re::RenderGraphDataStore::tryGet<re::PipelineCompilationData>(*(this + 146), a2);
  if (!result)
  {
    v4 = &qword_1EE1C5000;
    {
      v4 = &qword_1EE1C5000;
      if (v7)
      {
        re::RenderGraphContext::tryGetPipelineCompilationData(unsigned long long)const::kPipelineCompilationDataScopeHash = re::hashString("PipelineCompilationData", v8);
        v4 = &qword_1EE1C5000;
      }
    }

    v5 = v4[227];
    v6 = *(this + 146);

    return re::RenderGraphDataStore::tryGet<re::PipelineCompilationData>(v6, v5);
  }

  return result;
}

const char *re::RenderGraphContext::initOccupancyGridIfNecessary(re::RenderGraphContext *this, const char *a2)
{
  v31 = a2;
  result = re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(&v13, this + 1072, &v31);
  if (v15 == 0x7FFFFFFF)
  {
    v31 = 0;
    v32 = 0;
    v33 = 1;
    v5 = &v34;
    v34 = 0;
    v35 = 0;
    re::RenderGraphContext::rtAttachmentHandles(this, *(this + 5), &v31);
    if ((v33 & 1) == 0)
    {
      v5 = v35;
    }

    if (v32)
    {
      v6 = &v5[2 * v32];
      while (1)
      {
        v30[0] = *v5;
        v30[1] = v5[1];
        if (*(re::RenderGraphResourceDescriptions::targetDescription(*(*(this + 147) + 168), v30) + 104) == 1)
        {
          break;
        }

        v5 += 2;
        if (v5 == v6)
        {
          goto LABEL_14;
        }
      }

      v7 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(this + 146), *(*(this + 5) + 48));
      if (v7)
      {
        v9 = *(v7 + 912);
      }

      else
      {
        v9 = 1;
      }

      re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(0, v8);
      v19 = 0u;
      v18 = 0u;
      v17 = 0u;
      v16 = 0u;
      v20 = 0x1600000017;
      v21 = v9;
      v22 = 0;
      re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(1uLL, v10);
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v27 = 0x1600000017;
      v28 = v9;
      v29 = 0;
      v13 = 2;
      v14 = 2;
      v38 = 0;
      v39 = a2;
      v36 = 0;
      v37 = 0;
      re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(&v36, this + 1072, &v39);
      if (HIDWORD(v37) == 0x7FFFFFFF)
      {
        v11 = re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(this + 1072, v37, v36);
        v12 = v39;
        v11[5] = 0;
        v11 += 5;
        *(v11 + 2) = 0;
        re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>::move(v11, &v13);
        ++*(this + 278);
      }
    }

LABEL_14:
    result = v31;
    if (v31)
    {
      if ((v33 & 1) == 0)
      {
        return (*(*v31 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::RenderGraphContext::rtResolution(re::RenderGraphContext *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = *(this + 5);
  v2 = *(*(this + 147) + 168);
  v3 = *re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](v2 + 656, &v13);
  i = *(v2 + 352);
  if (i <= v3)
  {
LABEL_11:
    v14 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v15 = 136315906;
    *&v15[4] = "operator[]";
    *&v15[12] = 1024;
    *&v15[14] = 789;
    v16 = 2048;
    v17 = v3;
    v18 = 2048;
    v19 = i;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(v2 + 368) + 200 * v3;
  v6 = *(v5 + 56);
  if (!v6)
  {
    return 0x100000001;
  }

  v3 = v6 << 6;
  for (i = (*(v5 + 72) + 52); ; i += 16)
  {
    v7 = *(*(this + 147) + 168);
    v8 = *(v7 + 296);
    v9 = *i;
    v10 = *(v8 + 16);
    if (v10 <= v9)
    {
      v14 = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v15 = 136315906;
      *&v15[4] = "operator[]";
      *&v15[12] = 1024;
      *&v15[14] = 789;
      v16 = 2048;
      v17 = v9;
      v18 = 2048;
      v19 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_11;
    }

    v11 = *(v8 + 32) + 48 * v9;
    if (!*v11)
    {
      *v15 = *(v11 + 8) >> 1;
      *&v15[8] = *(v11 + 24);
      re::RenderGraphResourceDescriptions::targetDescriptionSource(v7, v15, &v20);
      if (*(i - 12) - 1 <= 2)
      {
        break;
      }
    }

    v3 -= 64;
    if (!v3)
    {
      return 0x100000001;
    }
  }

  return *(re::RenderGraphExecutable::targetDescription(*(this + 147), &v20) + 12);
}

uint64_t re::MeshStats::setCurrentCategory(uint64_t result, int a2)
{
  if (*(result + 120) != a2)
  {
    *(result + 120) = a2;
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        *(result + 96) = result + 32;
        *(result + 104) = result + 36;
        v2 = result + 40;
        goto LABEL_13;
      }

      if (a2 == 2)
      {
        *(result + 96) = result + 44;
        *(result + 104) = result + 48;
        v2 = result + 52;
        goto LABEL_13;
      }
    }

    else
    {
      switch(a2)
      {
        case 3:
          *(result + 96) = result + 56;
          *(result + 104) = result + 60;
          v2 = result + 64;
          goto LABEL_13;
        case 4:
          *(result + 96) = result + 68;
          *(result + 104) = result + 72;
          v2 = result + 76;
          goto LABEL_13;
        case 5:
          *(result + 96) = result + 80;
          *(result + 104) = result + 84;
          v2 = result + 88;
LABEL_13:
          *(result + 112) = v2;
          return result;
      }
    }

    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 120) = 0;
    *(result + 112) = 0;
  }

  return result;
}

uint64_t re::RenderGraphContext::acquireManagedRenderCommandEncoder(re::RenderGraphContext *this, unint64_t *a2)
{
  v4 = re::RenderFrameBox::get((*(*(this + 1) + 112) + 328), *(*this + 40));
  v5 = re::RenderFrame::currentCommandBuffer(v4);

  return re::RenderGraphContext::acquireManagedRenderEncoder(this, v5, a2);
}

void re::RenderGraphContext::acquireManagedBlitCommandEncoder(re::RenderGraphContext *this@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = re::RenderFrameBox::get((*(*(this + 1) + 112) + 328), *(*this + 40));
  v7 = re::RenderFrame::currentCommandBuffer(v6);
  v8 = *(this + 5);

  re::RenderGraphContext::acquireManagedBlitEncoder(this, v7, v8, a2, a3);
}

void re::RenderGraphContext::acquireManagedBlitEncoder(uint64_t a1@<X0>, uint64_t a2@<X1>, re::RenderGraphNodeBase *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v9 = *(a2 + 16);
  v36[0] = v9;
  v10 = *(a1 + 1184);
  if (v10 == 1)
  {
    v12 = 0;
LABEL_11:
    re::RenderGraphContext::releaseManagedEncoder(a1, v12);
    goto LABEL_12;
  }

  if (v10 != 2 && v10 != 4)
  {
    re::RenderGraphExecutable::addError(*(a1 + 1176), &v44);
    if (v44 && (BYTE8(v44) & 1) != 0)
    {
      (*(*v44 + 40))();
    }

    v12 = 1;
    goto LABEL_11;
  }

LABEL_12:
  v13 = re::RenderGraphContext::setupUsesCustomEncoders(a1);
  if (v13)
  {
    re::RenderGraphExecutable::addError(*(a1 + 1176), &v44);
    if (v44)
    {
      if (BYTE8(v44))
      {
        (*(*v44 + 40))();
      }
    }
  }

  if (*(a1 + 1184) == 4)
  {
    if (re::RenderManager::splitCommandBuffersForDebugging(*(a1 + 8)))
    {
      v14 = re::RenderFrameBox::get((*(*(a1 + 8) + 112) + 328), *(*a1 + 40));
      QueuedCommandBuffer = re::RenderFrame::createQueuedCommandBuffer(v14);
      re::ObjCObject::operator=(v36, (QueuedCommandBuffer + 16));
      EncoderLabel = re::RenderGraphNodeBase::getEncoderLabel(a3);
      [v36[0] setLabel:*EncoderLabel];
      [v36[0] addCompletedHandler:&__block_literal_global_43_0];
    }

    *(a1 + 1184) = 2;
    v17 = *(*(a1 + 1176) + 168);
    v18 = *re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](v17 + 656, &v37);
    v19 = *(v17 + 352);
    if (v19 <= v18)
    {
LABEL_42:
      v38 = 0;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v39 = 136315906;
      *&v39[4] = "operator[]";
      *&v39[12] = 1024;
      *&v39[14] = 789;
      v40 = 2048;
      v41 = v18;
      v42 = 2048;
      v43 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v35 = a5;
    v20 = *(v17 + 368) + 200 * v18;
    v21 = *(v20 + 56);
    if (v21)
    {
      v18 = 0;
      v22 = v21 << 6;
      v23 = (*(v20 + 72) + 52);
      v19 = 1;
      while (1)
      {
        if (*(v23 - 12) == 4)
        {
          v24 = *(*(a1 + 1176) + 168);
          v25 = *(v24 + 296);
          v26 = *v23;
          v27 = *(v25 + 16);
          if (v27 <= v26)
          {
            v38 = 0;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v44 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v39 = 136315906;
            *&v39[4] = "operator[]";
            *&v39[12] = 1024;
            *&v39[14] = 789;
            v40 = 2048;
            v41 = v26;
            v42 = 2048;
            v43 = v27;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_42;
          }

          v28 = *(v25 + 32) + 48 * v26;
          if (*v28 == 1)
          {
            *v39 = *(v28 + 8) >> 1;
            *&v39[8] = *(v28 + 24);
            re::RenderGraphResourceDescriptions::bufferDescriptionSource(v24, v39, &v44);
            v30 = re::RenderGraphContext::metalBuffer(a1, &v44);
            v18 |= [*re::BufferSlice::buffer(v30 v31)];
          }

          else if (!*v28)
          {
            *v39 = *(v28 + 8) >> 1;
            *&v39[8] = *(v28 + 24);
            re::RenderGraphResourceDescriptions::targetDescriptionSource(v24, v39, &v44);
            *(re::RenderGraphExecutable::targetDescription(*(a1 + 1176), &v44) + 64) = 1;
            re::RenderGraphContext::metalTexture(a1, &v44, 0, 0, v39);
            v29 = [*v39 protectionOptions];
            if (*v39)
            {
            }

            v18 |= v29;
          }
        }

        v23 += 16;
        v22 -= 64;
        if (!v22)
        {
          goto LABEL_33;
        }
      }
    }

    v18 = 0;
LABEL_33:
    if ([v36[0] protectionOptions] != v18)
    {
      [v36[0] setProtectionOptions:v18];
    }

    re::mtl::CommandBuffer::makeBlitCommandEncoder(v36, &v44);
    v32 = *(a1 + 1200);
    a5 = v35;
    if (v32 != &v44)
    {
      v33 = v44;
      *&v44 = 0;
      v34 = *v32;
      *v32 = v33;
    }

    [**(a1 + 1200) setLabel:*re::RenderGraphNodeBase::getEncoderLabel(v37)];
    *(a1 + 1192) = v18;
    *(a1 + 1208) = 1;
    *(a1 + 1216) = -1;
    re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::BlitCommandEncoder>(*(a1 + 32), *(a1 + 1200));
  }

  if (a4)
  {
    *a4 = *(a1 + 1192);
  }

  *a5 = **(a1 + 1200);
}

void re::RenderGraphContext::acquireManagedComputeCommandEncoder(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = re::RenderFrameBox::get((*(a1[1] + 112) + 328), *(*a1 + 40));
  v9 = re::RenderFrame::currentCommandBuffer(v8);
  v10 = a1[5];

  re::RenderGraphContext::acquireManagedComputeEncoder(a1, v9, v10, a2, a3, a4);
}

void re::RenderGraphContext::acquireManagedComputeEncoder(uint64_t a1@<X0>, id *a2@<X1>, re::RenderGraphNodeBase *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v45 = *a2;
  v10 = a2[2];
  v11 = v10;
  v46 = v10;
  v12 = *(a1 + 1184);
  if (v12 != 1 && v12 != 4)
  {
    re::RenderGraphExecutable::addError(*(a1 + 1176), &v54);
    if (v54 && (BYTE8(v54) & 1) != 0)
    {
      (*(*v54 + 40))();
    }

    re::RenderGraphContext::releaseManagedEncoder(a1, 1);
    v12 = *(a1 + 1184);
  }

  if (v12 == 1 && ([**(a1 + 1200) dispatchType] == 1) != a4)
  {
    re::RenderGraphContext::releaseManagedEncoder(a1, 0);
  }

  v40 = *(*(a1 + 8) + 374);
  if ((v40 & 1) == 0 && *(a1 + 1184) == 1)
  {
    v14 = [**(a1 + 1200) dispatchType];
    if (a4 == 1 && v14 == 1)
    {
      re::RenderGraphContext::releaseManagedEncoder(a1, 0);
    }
  }

  v15 = re::RenderGraphContext::setupUsesCustomEncoders(a1);
  if (v15)
  {
    re::RenderGraphExecutable::addError(*(a1 + 1176), &v54);
    if (v54)
    {
      if (BYTE8(v54))
      {
        (*(*v54 + 40))();
      }
    }
  }

  v41 = a4;
  v16 = &v54;
  v17 = *(*(a1 + 1176) + 168);
  v18 = *re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](v17 + 656, &v47);
  v19 = *(v17 + 352);
  if (v19 <= v18)
  {
LABEL_53:
    v48 = 0;
    v16[3] = 0u;
    v16[4] = 0u;
    v16[2] = 0u;
    v54 = 0u;
    v55 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v49 = 136315906;
    *&v49[4] = "operator[]";
    *&v49[12] = 1024;
    *&v49[14] = 789;
    v50 = 2048;
    v51 = v18;
    v52 = 2048;
    v53 = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v42 = a5;
  v43 = a6;
  v20 = *(v17 + 368) + 200 * v18;
  v21 = *(v20 + 56);
  if (v21)
  {
    v22 = 0;
    v23 = v21 << 6;
    v24 = (*(v20 + 72) + 52);
    v18 = &selRef_isLimitedRenderAsset;
    v19 = 1;
    while (1)
    {
      if (*(v24 - 12) == 5)
      {
        v25 = *(*(a1 + 1176) + 168);
        v26 = *(v25 + 296);
        v27 = *v24;
        v16 = *(v26 + 16);
        if (v16 <= v27)
        {
          v48 = 0;
          v57 = 0u;
          v58 = 0u;
          v56 = 0u;
          v54 = 0u;
          v55 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v49 = 136315906;
          *&v49[4] = "operator[]";
          *&v49[12] = 1024;
          *&v49[14] = 789;
          v50 = 2048;
          v51 = v27;
          v52 = 2048;
          v53 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_53;
        }

        v28 = *(v26 + 32) + 48 * v27;
        if (*v28 == 1)
        {
          *v49 = *(v28 + 8) >> 1;
          *&v49[8] = *(v28 + 24);
          re::RenderGraphResourceDescriptions::bufferDescriptionSource(v25, v49, &v54);
          v30 = re::RenderGraphContext::metalBuffer(a1, &v54);
          v22 |= [*re::BufferSlice::buffer(v30 v31)];
        }

        else if (!*v28)
        {
          *v49 = *(v28 + 8) >> 1;
          *&v49[8] = *(v28 + 24);
          re::RenderGraphResourceDescriptions::targetDescriptionSource(v25, v49, &v54);
          *(re::RenderGraphExecutable::targetDescription(*(a1 + 1176), &v54) + 64) = 1;
          re::RenderGraphContext::metalTexture(a1, &v54, 0, 0, v49);
          v29 = [*v49 protectionOptions];
          if (*v49)
          {
          }

          v22 |= v29;
        }
      }

      v24 += 16;
      v23 -= 64;
      if (!v23)
      {
        goto LABEL_35;
      }
    }
  }

  v22 = 0;
LABEL_35:
  if ([v11 protectionOptions] != v22)
  {
    if (*(a1 + 1184) != 4)
    {
      re::RenderGraphContext::releaseManagedEncoder(a1, 0);
    }

    [v11 setProtectionOptions:v22];
  }

  if (*(a1 + 1184) == 4)
  {
    if (re::RenderManager::splitCommandBuffersForDebugging(*(a1 + 8)))
    {
      v32 = [v11 protectionOptions];
      v33 = re::RenderFrameBox::get((*(*(a1 + 8) + 112) + 328), *(*a1 + 40));
      QueuedCommandBuffer = re::RenderFrame::createQueuedCommandBuffer(v33);
      v45 = *QueuedCommandBuffer;
      re::ObjCObject::operator=(&v46, (QueuedCommandBuffer + 16));
      EncoderLabel = re::RenderGraphNodeBase::getEncoderLabel(v47);
      [v46 setLabel:*EncoderLabel];
      [v46 addCompletedHandler:&__block_literal_global_43_0];
      [v46 setProtectionOptions:v32];
      v11 = v46;
    }

    *(a1 + 1184) = 1;
    v36 = *(a1 + 8);
    v44 = v11;
    re::RenderManager::makeComputeCommandEncoderWithMTLCounterSampling(v36, &v44, 1u, v41, &v54);
    v37 = *(a1 + 1200);
    if (v37 != &v54)
    {
      v38 = v54;
      *&v54 = 0;
      v39 = *v37;
      *v37 = v38;
    }

    [**(a1 + 1200) setLabel:*re::RenderGraphNodeBase::getEncoderLabel(v47)];
    *(a1 + 1192) = v22;
    *(a1 + 1208) = 1;
    *(a1 + 1216) = -1;
    re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::ComputeCommandEncoder>(*(a1 + 32), *(a1 + 1200));
  }

  else
  {
    re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::ComputeCommandEncoder>(*(a1 + 32), *(a1 + 1200));
    if (v40 && *(a1 + 1184) == 1 && [**(a1 + 1200) dispatchType] == 1)
    {
      [**(a1 + 1200) memoryBarrierWithScope:2];
      [**(a1 + 1200) memoryBarrierWithScope:1];
    }
  }

  if (v42)
  {
    *v42 = *(a1 + 1192);
  }

  *v43 = **(a1 + 1200);
}

void re::RenderGraphContext::metalTexture(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, id *a5@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1176);
  v7 = *(a2 + 12);
  if (*(v6 + 56) <= v7)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *v12 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(*(v6 + 64) + 8 * v7);
  *a5 = v10;
  if (a3)
  {
    if ([v10 pixelFormat] == 260)
    {
      v11 = [*a5 newTextureViewWithPixelFormat_];
    }

    else
    {
      if ([*a5 pixelFormat] != 255)
      {
        goto LABEL_9;
      }

      v11 = [*a5 newTextureViewWithPixelFormat_];
    }

    v12[0] = v11;
    NS::SharedPtr<MTL::Texture>::operator=(a5, v12);
    if (v12[0])
    {
    }
  }

LABEL_9:
  if (!a4)
  {
    return;
  }

  if ([*a5 textureType])
  {
    if ([*a5 textureType] == 2)
    {
      re::makeView2DTo2DArray(a5, v12);
    }

    else
    {
      if ([*a5 textureType] != 4)
      {
        return;
      }

      re::makeView2DMultisampleTo2DMultisampleArray(a5, v12);
    }
  }

  else
  {
    re::makeView1DTo1DArray(a5, v12);
  }

  NS::SharedPtr<MTL::Texture>::operator=(a5, v12);
  if (v12[0])
  {
  }
}

uint64_t re::RenderGraphContext::metalBuffer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1176);
  v3 = *(a2 + 12);
  if (*(v2 + 80) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v2 + 88) + 40 * v3;
}

uint64_t re::RenderGraphContext::isSetupParallel(re::RenderGraphContext *this)
{
  v1 = *(*(this + 147) + 168);
  v2 = *(this + 12);
  if (*(v1 + 352) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v1 + 368) + 200 * v2 + 170);
}

void re::RenderGraphContext::rtAttachmentHandles(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v31 = a2;
  *(a3 + 8) = 0;
  *(a3 + 16) += 2;
  v5 = *(*(a1 + 1176) + 168);
  v6 = *re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](v5 + 656, &v31);
  v7 = *(v5 + 352);
  if (v7 <= v6)
  {
LABEL_28:
    v32 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v33 = 136315906;
    *&v33[4] = "operator[]";
    *&v33[12] = 1024;
    *&v33[14] = 789;
    v34 = 2048;
    v35 = v6;
    v36 = 2048;
    v37 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(v5 + 368) + 200 * v6;
  v9 = *(v8 + 56);
  if (v9)
  {
    v6 = (a3 + 24);
    v7 = v9 << 6;
    for (i = (*(v8 + 72) + 52); ; i += 16)
    {
      v11 = *(*(a1 + 1176) + 168);
      v12 = *(v11 + 296);
      v13 = *i;
      v14 = *(v12 + 16);
      if (v14 <= v13)
      {
        v32 = 0;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v33 = 136315906;
        *&v33[4] = "operator[]";
        *&v33[12] = 1024;
        *&v33[14] = 789;
        v34 = 2048;
        v35 = v13;
        v36 = 2048;
        v37 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_28;
      }

      v15 = *(v12 + 32) + 48 * v13;
      if (!*v15)
      {
        v16 = *(i - 12);
        v17 = v16 > 6;
        v18 = (1 << v16) & 0x4E;
        if (!v17 && v18 != 0)
        {
          break;
        }
      }

LABEL_25:
      v7 -= 64;
      if (!v7)
      {
        return;
      }
    }

    *v33 = *(v15 + 8) >> 1;
    *&v33[8] = *(v15 + 24);
    re::RenderGraphResourceDescriptions::targetDescriptionSource(v11, v33, &v38);
    if (*a3)
    {
      v21 = *(a3 + 8);
      v22 = *(a3 + 16);
      if (v22)
      {
        if (v21 - 8 < 0xFFFFFFFFFFFFFFF7)
        {
          v24 = v21 + 1;
          v25 = 16;
          goto LABEL_18;
        }
      }

      else
      {
        v23 = *v6;
        if (v21 >= *v6)
        {
          v24 = v21 + 1;
          if (v23 < v24)
          {
            v25 = 2 * v23;
LABEL_18:
            if (v25 <= v24)
            {
              v27 = v24;
            }

            else
            {
              v27 = v25;
            }

            re::DynamicOverflowArray<re::RenderGraphTargetHandle,8ul>::setCapacity(a3, v27);
            v22 = *(a3 + 16);
          }
        }
      }
    }

    else
    {
      v26 = *(a3 + 8);
      re::DynamicOverflowArray<re::RenderGraphTargetHandle,8ul>::setCapacity(a3, v26 + 1);
      v22 = *(a3 + 16) + 2;
      *(a3 + 16) = v22;
    }

    v28 = a3 + 24;
    if ((v22 & 1) == 0)
    {
      v28 = *(a3 + 32);
    }

    v29 = *(a3 + 8);
    v30 = (v28 + 16 * v29);
    *v30 = 0;
    v30[1] = -1;
    *v30 = v38;
    *(a3 + 8) = v29 + 1;
    *(a3 + 16) += 2;
    goto LABEL_25;
  }
}

uint64_t re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 32 * v6 + 16;
}

void re::RenderGraphContext::rtInfo(re::RenderGraphContext *this@<X0>, re::RenderGraphNodeBase *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v5 = *(*(this + 147) + 168);
  v6 = *re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](v5 + 656, &v21);
  v7 = *(v5 + 352);
  if (v7 <= v6)
  {
    goto LABEL_36;
  }

  v8 = *(v5 + 368) + 200 * v6;
  *(a3 + 4) = 0u;
  *(a3 + 20) = 0u;
  *(a3 + 29) = 0u;
  v9 = *(v8 + 56);
  v20 = v8;
  if (v9)
  {
    v6 = 0;
    v7 = 0;
    v10 = *(v8 + 72);
    v11 = v9 << 6;
    while (1)
    {
      v12 = *(*(this + 147) + 168);
      v13 = *(v12 + 296);
      v14 = v10[13];
      v15 = *(v13 + 16);
      if (v15 <= v14)
      {
        break;
      }

      v16 = *(v13 + 32) + 48 * v14;
      if (!*v16)
      {
        *v23 = *(v16 + 8) >> 1;
        *&v23[8] = *(v16 + 24);
        re::RenderGraphResourceDescriptions::targetDescriptionSource(v12, v23, &v28);
        v17 = v10[1];
        switch(v17)
        {
          case 3u:
            v6 = *(re::RenderGraphExecutable::targetDescription(*(this + 147), &v28) + 20);
            if (v6 == -1)
            {
              re::RenderGraphContext::metalTexture(this, &v28, 0, 0, v23);
              v6 = [*v23 sampleCount];
              if (*v23)
              {
              }
            }

            *(a3 + 40) = *(re::RenderGraphExecutable::targetDescription(*(this + 147), &v28) + 4);
            break;
          case 2u:
            v6 = *(re::RenderGraphExecutable::targetDescription(*(this + 147), &v28) + 20);
            if (v6 == -1)
            {
              re::RenderGraphContext::metalTexture(this, &v28, 0, 0, v23);
              v6 = [*v23 sampleCount];
              if (*v23)
              {
              }
            }

            *(a3 + 36) = *(re::RenderGraphExecutable::targetDescription(*(this + 147), &v28) + 4);
            break;
          case 1u:
            v18 = re::RenderGraphExecutable::targetDescription(*(this + 147), &v28);
            v6 = *(v18 + 20);
            if (v6 == -1)
            {
              re::RenderGraphContext::metalTexture(this, &v28, 0, 0, v23);
              v6 = [*v23 sampleCount];
              if (*v23)
              {
              }
            }

            re::RenderGraphContext::metalTexture(this, &v28, 0, 0, v23);
            *(a3 + 4 + 4 * *v10) = [*v23 pixelFormat];
            if (*v23)
            {
            }

            v7 = *(v18 + 32);
            if ((*(this + 1552) & 1) == 0)
            {
              if (v7 && *(*(*(this + 1) + 160) + 112) != 1)
              {
                v7 = 1;
              }

              else
              {
                v7 = *(*(this + 2) + 114);
              }
            }

            break;
        }
      }

      v10 += 16;
      v11 -= 64;
      if (!v11)
      {
        goto LABEL_30;
      }
    }

    *a3 = v6;
    *(a3 + 48) = v7;
    v22 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v23 = 136315906;
    *&v23[4] = "operator[]";
    *&v23[12] = 1024;
    *&v23[14] = 789;
    v24 = 2048;
    v25 = v14;
    v26 = 2048;
    v27 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_36:
    v22 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v23 = 136315906;
    *&v23[4] = "operator[]";
    *&v23[12] = 1024;
    *&v23[14] = 789;
    v24 = 2048;
    v25 = v6;
    v26 = 2048;
    v27 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  LODWORD(v7) = 0;
  LODWORD(v6) = 0;
LABEL_30:
  *a3 = v6;
  *(a3 + 48) = v7;
  if (*(v20 + 171))
  {
    v19 = re::RenderGraphDataStore::tryGet<re::VRRData>(*(this + 146), *(v21 + 6));
    if (v19)
    {
      if (*(v19 + 12) == 1)
      {
        *(a3 + 44) = 1;
      }
    }
  }
}

void re::RenderGraphContext::allocateRenderTargetsBeforeSetup(re::RenderGraphContext *this)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(*(this + 147) + 168);
  v5 = *(this + 12);
  v6 = *(v4 + 352);
  if (v6 <= v5)
  {
LABEL_48:
    *v44 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    *v49 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    v38 = 1024;
    v39 = 789;
    v40 = 2048;
    v41 = v5;
    v42 = 2048;
    *v43 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_49:
    v32[0] = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    *v49 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    v38 = 1024;
    v39 = 468;
    v40 = 2048;
    v41 = v6;
    v42 = 2048;
    *v43 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_50:
    v32[0] = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    *v49 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    v38 = 1024;
    v39 = 468;
    v40 = 2048;
    v41 = v6;
    v42 = 2048;
    *v43 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_51:
    v32[0] = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    *v49 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    v38 = 1024;
    v39 = 468;
    v40 = 2048;
    v41 = v6;
    v42 = 2048;
    *v43 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v32[0] = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    *v49 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    v38 = 1024;
    v39 = 468;
    v40 = 2048;
    v41 = v6;
    v42 = 2048;
    *v43 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v4 + 368) + 200 * v5;
  if (*(v7 + 56))
  {
    v9 = 0;
    v10 = 52;
    do
    {
      v11 = *(this + 147);
      v12 = *(v11 + 168);
      v13 = *(v12 + 296);
      v6 = *(*(v7 + 72) + v10);
      v1 = *(v13 + 16);
      if (v1 <= v6)
      {
        *v44 = 0;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        *v49 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v37 = 136315906;
        *&v37[4] = "operator[]";
        v38 = 1024;
        v39 = 789;
        v40 = 2048;
        v41 = v6;
        v42 = 2048;
        *v43 = v1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_46:
        v32[0] = 0;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        *v49 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v37 = 136315906;
        *&v37[4] = "operator[]";
        v38 = 1024;
        v39 = 468;
        v40 = 2048;
        v41 = v2;
        v42 = 2048;
        *v43 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_47:
        v36 = 0;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        *v49 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v44 = 136315906;
        *&v44[4] = "operator[]";
        *&v44[12] = 1024;
        *&v44[14] = 468;
        v45 = 2048;
        v46 = v2;
        v47 = 2048;
        v48 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_48;
      }

      v14 = *(v13 + 32) + 48 * v6;
      if (*(v14 + 32) == *(this + 12))
      {
        if (*v14 == 1)
        {
          v17 = *(v14 + 8);
          v6 = v14 + 8;
          v34 = v17 >> 1;
          v35 = *(v6 + 16);
          v1 = re::RenderGraphExecutable::bufferDescription(v11, &v34);
          v18 = re::RenderGraphContext::metalBuffer(this, &v34);
          if (*re::BufferSlice::buffer(v18, v19))
          {
            if (*v1 != 2 || *(v1 + 16) != 1)
            {
              goto LABEL_43;
            }

            v2 = *this;
            re::StringID::StringID(v44, v6);
            v36 = (*v44 >> 1);
            v20 = *(this + 147);
            v6 = HIDWORD(v35);
            v1 = *(v20 + 80);
            if (v1 <= HIDWORD(v35))
            {
              goto LABEL_51;
            }
          }

          else
          {
            v27 = *(this + 4);
            v28 = HIDWORD(v35);
            re::StringID::StringID(v32, v6);
            re::RenderGraphResourceAllocationManager::makeBuffer(v27, v1, v32, v28, &v33);
            *v37 = v33;
            HIDWORD(v41) = 0;
            *&v43[2] = 0;
            *&v43[6] = [v33 length];
            v29 = *(this + 147);
            v2 = HIDWORD(v35);
            v3 = *(v29 + 80);
            if (v3 <= HIDWORD(v35))
            {
              goto LABEL_47;
            }

            v2 = *(v29 + 88) + 40 * HIDWORD(v35);
            std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v2, v37);
            *(v2 + 32) = *&v43[2];
            if (HIDWORD(v41) != -1)
            {
              (off_1F5D06320[HIDWORD(v41)])(v49, v37);
            }

            HIDWORD(v41) = -1;
            v30 = v33;
            if (v33)
            {

              v33 = 0;
            }

            if (v32[0])
            {
              if (v32[0])
              {
              }
            }

            if (*(v1 + 16) != 1)
            {
              goto LABEL_43;
            }

            v2 = *this;
            re::StringID::StringID(v44, v6);
            v36 = (*v44 >> 1);
            v20 = *(this + 147);
            v6 = HIDWORD(v35);
            v1 = *(v20 + 80);
            if (v1 <= HIDWORD(v35))
            {
              goto LABEL_50;
            }
          }

          v31 = re::BufferTable::setBuffer((v2 + 480), &v36, (*(v20 + 88) + 40 * v6));
          v36 = 0;
          if (v44[0])
          {
            if (v44[0])
            {
              v26 = *&v44[8];
              goto LABEL_42;
            }
          }
        }

        else if (!*v14)
        {
          v15 = *(v14 + 8);
          v6 = v14 + 8;
          v49[0] = (v15 >> 1);
          v49[1] = *(v6 + 16);
          re::RenderGraphResourceDescriptions::targetDescriptionSource(v12, v49, v44);
          v1 = re::RenderGraphExecutable::targetDescription(*(this + 147), v44);
          re::RenderGraphContext::metalTexture(this, v44, 0, 0, v49);
          if (v49[0])
          {

            if (*v1 != 2 || *(v1 + 40) != 1)
            {
              goto LABEL_43;
            }

            v2 = *this;
            re::StringID::StringID(&v34, v6);
            v36 = (v34 >> 1);
            v16 = *(this + 147);
            v6 = *&v44[12];
            v1 = *(v16 + 56);
            if (v1 <= *&v44[12])
            {
              goto LABEL_52;
            }
          }

          else
          {
            v21 = *(this + 4);
            v22 = *&v44[12];
            re::StringID::StringID(&v34, v6);
            re::RenderGraphResourceAllocationManager::makeTexture(v21, v1, &v34, v22, &v36);
            v23 = *(this + 147);
            v2 = *&v44[12];
            v3 = *(v23 + 56);
            if (v3 <= *&v44[12])
            {
              goto LABEL_46;
            }

            NS::SharedPtr<MTL::Texture>::operator=((*(v23 + 64) + 8 * *&v44[12]), &v36);
            v24 = v36;
            if (v36)
            {

              v36 = 0;
            }

            if (v34)
            {
              if (v34)
              {
              }
            }

            if (*(v1 + 40) != 1)
            {
              goto LABEL_43;
            }

            v2 = *this;
            re::StringID::StringID(&v34, v6);
            v36 = (v34 >> 1);
            v16 = *(this + 147);
            v6 = *&v44[12];
            v1 = *(v16 + 56);
            if (v1 <= *&v44[12])
            {
              goto LABEL_49;
            }
          }

          re::DynamicTextureTableAdd((v2 + 368), &v36, (*(v16 + 64) + 8 * v6));
          v36 = 0;
          if (v34)
          {
            if (v34)
            {
              v26 = v35;
LABEL_42:
            }
          }
        }
      }

LABEL_43:
      ++v9;
      v10 += 64;
    }

    while (*(v7 + 56) > v9);
  }
}

_anonymous_namespace_ *re::RenderGraphContext::checkForReadAfterWriteDependenciesWait(re::RenderGraphContext *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(*(this + 147) + 168);
  v2 = *(this + 12);
  if (*(v1 + 352) <= v2)
  {
LABEL_24:
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(v1 + 368) + 200 * v2;
  if (*(v4 + 56))
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = *(v4 + 72);
      v8 = *(*(*(this + 147) + 168) + 296);
      v9 = *(v7 + v5 + 52);
      if (*(v8 + 16) <= v9)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_24;
      }

      v10 = (*(v8 + 32) + 48 * v9);
      v11 = *(v7 + v5 + 4);
      if ((v11 - 1) >= 8 && v11 != 11)
      {
        if (!v11)
        {
          if (*v10 == 1)
          {
            v18 = *(this + 4);
            v19 = *(v7 + v5 + 44);
            LODWORD(v21) = v10[7];
            DWORD1(v21) = v19;
            re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add((v18 + 1368), &v21);
          }

          else if (!*v10)
          {
            v16 = *(this + 4);
            v17 = *(v7 + v5 + 44);
            LODWORD(v21) = v10[7];
            DWORD1(v21) = v17;
            re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add((v16 + 1328), &v21);
          }
        }

        goto LABEL_15;
      }

      if (*v10 == 1)
      {
        break;
      }

      if (!*v10)
      {
        v13 = *(this + 4);
        LODWORD(v21) = v10[7];
        v14 = (v13 + 1408);
LABEL_14:
        re::DynamicArray<int>::add(v14, &v21);
      }

LABEL_15:
      ++v6;
      v5 += 64;
      if (*(v4 + 56) <= v6)
      {
        return re::RenderGraphResourceAllocationManager::processResourceHazards(*(this + 4));
      }
    }

    v15 = *(this + 4);
    LODWORD(v21) = v10[7];
    v14 = (v15 + 1448);
    goto LABEL_14;
  }

  return re::RenderGraphResourceAllocationManager::processResourceHazards(*(this + 4));
}

void re::RenderGraphContext::handleManagedForceClear(re::RenderGraphContext *this)
{
  v1 = &v25;
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 147) + 168);
  v3 = *(this + 12);
  v4 = *(v2 + 352);
  if (v4 <= v3)
  {
LABEL_22:
    v19 = 0;
    v1[4] = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v20 = 136315906;
    *&v20[4] = "operator[]";
    *&v20[12] = 1024;
    *&v20[14] = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(v2 + 368);
  if ((re::RenderGraphContext::setupUsesCustomEncoders(this) & 1) == 0)
  {
    v3 = v6 + 200 * v3;
    v7 = *(v3 + 56);
    if (v7)
    {
      v4 = 0;
      v8 = 0;
      while (1)
      {
        v9 = *(v3 + 72);
        v10 = *(*(this + 147) + 168);
        v11 = *(v10 + 296);
        v12 = *(v9 + v4 + 52);
        v13 = *(v11 + 16);
        if (v13 <= v12)
        {
          v19 = 0;
          v29 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v20 = 136315906;
          *&v20[4] = "operator[]";
          *&v20[12] = 1024;
          *&v20[14] = 789;
          v21 = 2048;
          v22 = v12;
          v23 = 2048;
          v24 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_22;
        }

        v14 = *(v11 + 32) + 48 * v12;
        if (!*v14)
        {
          break;
        }

LABEL_17:
        ++v8;
        v4 += 64;
        if (v7 <= v8)
        {
          return;
        }
      }

      *v20 = *(v14 + 8) >> 1;
      *&v20[8] = *(v14 + 24);
      re::RenderGraphResourceDescriptions::targetDescriptionSource(v10, v20, &v25);
      v15 = re::RenderGraphExecutable::targetDescription(*(this + 147), &v25);
      v16 = *(v9 + v4 + 4);
      if (v16 == 3)
      {
        if ((*(v15 + 4) - 253) <= 9 && ((1 << (*(v15 + 4) + 3)) & 0x385) != 0)
        {
LABEL_15:
          if (*(v9 + v4 + 32))
          {
            re::RenderGraphContext::acquireManagedRenderCommandEncoder(v18, this, 0);
            re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v18);
            return;
          }
        }
      }

      else if ((v16 - 1) <= 1)
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 56);
      goto LABEL_17;
    }
  }
}

uint64_t re::RenderGraphContext::setupUsesCustomEncoders(re::RenderGraphContext *this)
{
  v1 = *(*(this + 147) + 168);
  v2 = *(this + 12);
  if (*(v1 + 352) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v1 + 368) + 200 * v2 + 169);
}

uint64_t re::RenderGraphContext::encodeDrawBasedClear(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, uint64_t a38, uint64_t a39, int a40, uint64_t a41, uint64_t a42, int a43, uint64_t a44, id a45, int a46, uint64_t a47, id a48, int a49, uint64_t a50, __int128 a51, __int128 a52, __int128 a53, __int128 a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unint64_t a61, uint64_t a62, __int128 a63)
{
  v65 = a3;
  STACK[0xA88] = *MEMORY[0x1E69E9840];
  *&STACK[0xA60] = 0u;
  *&STACK[0xA70] = 0u;
  *&STACK[0xA40] = 0u;
  *&STACK[0xA50] = 0u;
  *&STACK[0xA20] = 0u;
  *&STACK[0xA30] = 0u;
  *&STACK[0xA00] = 0u;
  *&STACK[0xA10] = 0u;
  (*(*(a3 + 8) + 160))(**(a3 + 8), sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"Clear" encoding:4]);
  v68 = *(*a1 + 32);
  a61 = 0;
  a60 = 0;
  a62 = 0;
  a58 = 0;
  a57 = 0;
  a59 = 0;
  v69 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(a1[146], *(a1[5] + 48));
  if (v69)
  {
    v158 = *(v69 + 65);
    v70 = *(v69 + 64);
  }

  else
  {
    v158 = 0;
    v70 = 1;
  }

  v164 = v70;
  v71 = v70;
  re::FixedArray<re::mtl::Viewport>::init<>(&a60, v68, v70);
  re::FixedArray<re::Vector4<float>>::init<>(&a57, v68, v71);
  v72 = re::RenderGraphDataStore::tryGet<re::ViewportData>(a1[146], *(a1[5] + 48));
  re::RenderGraphContext::selectViewport(a1, v72, &a60, &a57, 0);
  STACK[0x9F8] = 0;
  *&STACK[0x9D0] = 0u;
  *&STACK[0x9E0] = 0u;
  *&STACK[0x9B0] = 0u;
  *&STACK[0x9C0] = 0u;
  *&STACK[0x990] = 0u;
  *&STACK[0x9A0] = 0u;
  LOBYTE(STACK[0x830]) = 0;
  *&STACK[0x858] = 0u;
  *&STACK[0x868] = 0u;
  v74 = re::DynamicString::setCapacity(&STACK[0x858], 0);
  *&STACK[0x888] = 0u;
  *&STACK[0x878] = 0u;
  re::DynamicString::setCapacity(&STACK[0x878], 0);
  LOBYTE(STACK[0x898]) = 0;
  LOBYTE(STACK[0x8C0]) = 0;
  STACK[0x8F8] = 0;
  STACK[0x8E8] = 0;
  STACK[0x8F0] = 0;
  LODWORD(STACK[0x900]) = 0;
  STACK[0x910] = 0;
  STACK[0x908] = 0;
  LOBYTE(STACK[0x918]) = 0;
  v75 = 264;
  LOBYTE(STACK[0x928]) = 0;
  do
  {
    *(&STACK[0x830] + v75) = 0;
    v75 += 8;
  }

  while (v75 != 328);
  LOBYTE(STACK[0x978]) = 0;
  LOBYTE(STACK[0x980]) = 0;
  LOBYTE(a51) = 0;
  *(&a53 + 1) = 0x700000007;
  LOBYTE(a54) = 7;
  *(&a54 + 1) = -1;
  WORD3(a54) = 0;
  v76 = *(a2 + 56);
  if (v76)
  {
    v156 = v68;
    v159 = v65;
    v162 = 0;
    v171 = 0;
    v175 = 0;
    v166 = 0;
    v168 = 0;
    v77 = *(a2 + 72);
    v78 = v76 << 6;
    v173 = 0;
    while (1)
    {
      v79 = v77[1];
      v80 = v79 > 0xB;
      v81 = (1 << v79) & 0xE31;
      if (v80 || v81 == 0)
      {
        break;
      }

LABEL_12:
      v77 += 16;
      v78 -= 64;
      if (!v78)
      {
        v169 = v166 | v168;
        v65 = v159;
        v68 = v156;
        goto LABEL_128;
      }
    }

    a45 = 0;
    v83 = *(*(a1[147] + 168) + 296);
    v84 = v77[13];
    v85 = *(v83 + 16);
    if (v85 <= v84)
    {
      a48 = 0;
      *&STACK[0x7F0] = 0u;
      *&STACK[0x800] = 0u;
      *&STACK[0x7D0] = 0u;
      *&STACK[0x7E0] = 0u;
      *&STACK[0x7C0] = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(a63) = 136315906;
      *(&a63 + 4) = "operator[]";
      WORD6(a63) = 1024;
      *(&a63 + 14) = 789;
      WORD1(a64) = 2048;
      *(&a64 + 4) = v84;
      WORD6(a64) = 2048;
      *(&a64 + 14) = v85;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v86 = *(v83 + 32) + 48 * v84;
    STACK[0x7C0] = *(v86 + 8) >> 1;
    STACK[0x7C8] = *(v86 + 24);
    re::RenderGraphContext::metalTexture(a1, &STACK[0x7C0], 0, 0, &a63);
    NS::SharedPtr<MTL::Texture>::operator=(&a45, &a63);
    if (a63)
    {
    }

    v87 = re::RenderGraphCompiled::targetDescription(*(a1[147] + 168), &STACK[0x7C0]);
    v89 = v87[5];
    v88 = v87[6];
    v90 = v87[21];
    *&a63 = 0;
    v91 = v77[1];
    if ((v91 - 6) <= 2)
    {
      v92 = *(*(a1[147] + 168) + 296);
      if (*(v92 + 16) > v90)
      {
        v93 = *(v92 + 32) + 48 * v90;
        STACK[0x7C0] = *(v93 + 8) >> 1;
        STACK[0x7C8] = *(v93 + 24);
        re::RenderGraphContext::metalTexture(a1, &STACK[0x7C0], 0, 0, &a48);
        NS::SharedPtr<MTL::Texture>::operator=(&a63, &a48);
        if (a48)
        {
        }

        re::RenderGraphCompiled::targetDescription(*(a1[147] + 168), &STACK[0x7C0]);
        v91 = v77[1];
      }
    }

    if ((v91 - 6) < 3)
    {
      v94 = a63;
      if (!a63)
      {
        v89 = 4;
        goto LABEL_29;
      }
    }

    else
    {
      if ((v91 - 1) > 2)
      {
        goto LABEL_30;
      }

      v94 = a45;
      if (!a45)
      {
LABEL_29:
        STACK[0x920] = v89;
        v91 = v77[1];
LABEL_30:
        if ((v91 - 1) <= 2)
        {
          if (a45)
          {
            v175 = [a45 arrayLength];
            v91 = v77[1];
          }

          else
          {
            v175 = v88;
          }
        }

        if (v91 > 5)
        {
          if (v91 != 6)
          {
            if (v91 != 7)
            {
              if (v91 == 8)
              {
                v95 = a63;
                if (!a63)
                {
                  v95 = a45;
                }

                goto LABEL_45;
              }

LABEL_123:
              if (a63)
              {
              }

              if (a45)
              {
              }

              goto LABEL_12;
            }

            v101 = a63;
            if (!a63)
            {
              v101 = a45;
            }

            goto LABEL_75;
          }

          v96 = a63;
          if (!a63)
          {
            v96 = a45;
          }
        }

        else
        {
          if (v91 != 1)
          {
            if (v91 != 2)
            {
              if (v91 == 3)
              {
                v162 = v77[4];
                v95 = a45;
                if (!a45)
                {
LABEL_46:
                  if ((STACK[0x980] & 1) == 0)
                  {
                    LOBYTE(STACK[0x980]) = 1;
                  }

                  LODWORD(STACK[0x984]) = v95;
                  *(&a53 + 1) = 0x200000702000007;
                  v171 = *(v77 + 48);
                  v168 = 1;
                  goto LABEL_123;
                }

LABEL_45:
                LODWORD(v95) = [v95 pixelFormat];
                goto LABEL_46;
              }

              goto LABEL_123;
            }

            v173 = v77[4];
            v101 = a45;
            if (!a45)
            {
LABEL_76:
              if ((STACK[0x978] & 1) == 0)
              {
                LOBYTE(STACK[0x978]) = 1;
              }

              LODWORD(STACK[0x97C]) = v101;
              BYTE5(a54) = ((v101 - 250) < 0xB) & (0x425u >> (v101 + 6));
              LOBYTE(a54) = 7;
              v166 = 1;
              goto LABEL_123;
            }

LABEL_75:
            LODWORD(v101) = [v101 pixelFormat];
            goto LABEL_76;
          }

          *(&STACK[0xA00] + *v77) = *(v77 + 1);
          v96 = a45;
          if (!a45)
          {
LABEL_54:
            v97 = &STACK[0x938] + *v77;
            if ((*v97 & 1) == 0)
            {
              *v97 = 1;
            }

            *(v97 + 1) = v96;
            v98 = *(v77 + 48);
            v99 = *v77;
            *(&STACK[0x9F8] + v99) = v98;
            if (v96 <= 53)
            {
              if (v96 > 22)
              {
                if (v96 > 29)
                {
                  if (v96 >= 33)
                  {
                    if (v96 != 33)
                    {
                      if (v96 != 34)
                      {
                        v100 = 88;
                        if (v96 != 53)
                        {
                          goto LABEL_122;
                        }

                        goto LABEL_103;
                      }

LABEL_107:
                      v100 = 8;
                      goto LABEL_122;
                    }

LABEL_108:
                    v100 = 40;
                    goto LABEL_122;
                  }

LABEL_121:
                  v100 = 72;
                  goto LABEL_122;
                }

                if (v96 != 23)
                {
                  if (v96 != 24)
                  {
                    v100 = 88;
                    if (v96 != 25)
                    {
                      goto LABEL_122;
                    }

                    goto LABEL_117;
                  }

LABEL_104:
                  v100 = 0;
                  goto LABEL_122;
                }

LABEL_103:
                v100 = 32;
LABEL_122:
                *(&STACK[0x990] + v100 + v99) = v98;
                goto LABEL_123;
              }

              if (v96 > 12)
              {
                if (v96 <= 19)
                {
                  if (v96 != 13)
                  {
                    v100 = 88;
                    if (v96 != 14)
                    {
                      goto LABEL_122;
                    }

                    goto LABEL_104;
                  }

                  goto LABEL_103;
                }

                if (v96 != 20)
                {
                  v100 = 88;
                  if (v96 != 22)
                  {
                    goto LABEL_122;
                  }
                }
              }

              else if ((v96 - 10) >= 3)
              {
                v100 = 88;
                if (v96 != 1)
                {
                  goto LABEL_122;
                }
              }

LABEL_117:
              v100 = 64;
              goto LABEL_122;
            }

            if (v96 > 73)
            {
              if (v96 <= 104)
              {
                if (v96 > 102)
                {
                  if (v96 != 103)
                  {
                    goto LABEL_107;
                  }

                  goto LABEL_108;
                }

                if (v96 != 74)
                {
                  v100 = 88;
                  if (v96 != 91)
                  {
                    goto LABEL_122;
                  }

                  goto LABEL_120;
                }
              }

              else
              {
                if (v96 <= 113)
                {
                  if (v96 == 105)
                  {
                    goto LABEL_121;
                  }

                  v100 = 88;
                  if (v96 != 113)
                  {
                    goto LABEL_122;
                  }

                  goto LABEL_120;
                }

                if (v96 != 114)
                {
                  if (v96 != 123)
                  {
                    v100 = 88;
                    if (v96 != 124)
                    {
                      goto LABEL_122;
                    }

                    goto LABEL_105;
                  }

LABEL_120:
                  v100 = 56;
                  goto LABEL_122;
                }
              }

LABEL_105:
              v100 = 24;
              goto LABEL_122;
            }

            if (v96 <= 62)
            {
              if (v96 > 59)
              {
                if (v96 != 60)
                {
                  v100 = 88;
                  if (v96 != 62)
                  {
                    goto LABEL_122;
                  }
                }

                goto LABEL_121;
              }

              if (v96 != 54)
              {
                v100 = 88;
                if (v96 != 55)
                {
                  goto LABEL_122;
                }

                goto LABEL_117;
              }

              goto LABEL_104;
            }

            if (v96 <= 64)
            {
              if (v96 != 63)
              {
                goto LABEL_107;
              }

              goto LABEL_108;
            }

            if (v96 == 65)
            {
              goto LABEL_121;
            }

            v100 = 88;
            if (v96 != 73)
            {
              goto LABEL_122;
            }

            goto LABEL_120;
          }
        }

        LODWORD(v96) = [v96 pixelFormat];
        goto LABEL_54;
      }
    }

    v89 = [v94 sampleCount];
    goto LABEL_29;
  }

  v169 = 0;
  v175 = 0;
  v171 = 0;
  v162 = 0;
  v173 = 0;
LABEL_128:
  v102 = v68;
  STACK[0x8E8] = v68;
  v103 = re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(&STACK[0x8E8], 0x60uLL);
  v104 = 0;
  ++LODWORD(STACK[0x900]);
  do
  {
    *&STACK[0x7C0] = 0u;
    *&STACK[0x7D0] = 0u;
    re::DynamicString::setCapacity(&STACK[0x7C0], 0);
    *&STACK[0x814] = 0u;
    *&STACK[0x804] = 0u;
    *&STACK[0x7F4] = 0u;
    *&STACK[0x7E4] = 0u;
    LOBYTE(STACK[0x7E4]) = *(&STACK[0x990] + v104);
    LOWORD(STACK[0x7E0]) = 53;
    LOWORD(STACK[0x7E2]) = v104;
    v105 = re::DynamicArray<re::TechniqueFunctionConstant>::add(&STACK[0x8E8], &STACK[0x7C0]);
    v103 = STACK[0x7C0];
    if (STACK[0x7C0] && (STACK[0x7C8] & 1) != 0)
    {
      v103 = (*(*v103 + 40))(v103, STACK[0x7D0], v105);
    }

    ++v104;
  }

  while (v104 != 96);
  if (*(a1[1] + 366))
  {
    if ((STACK[0x928] & 1) == 0)
    {
      LOBYTE(STACK[0x928]) = 1;
    }

    STACK[0x930] = 2;
  }

  STACK[0x858] = v102;
  re::DynamicString::setCapacity(&STACK[0x858], 0);
  STACK[0x7C0] = "vertexShaderClearAll";
  STACK[0x7C8] = 20;
  re::DynamicString::operator=(&STACK[0x858], &STACK[0x7C0]);
  v106 = 0;
  while (*(&STACK[0x9F8] + v106) != 1)
  {
    if (++v106 == 8)
    {
      goto LABEL_142;
    }
  }

  STACK[0x878] = v102;
  re::DynamicString::setCapacity(&STACK[0x878], 0);
  STACK[0x7C0] = "fragmentShaderClearAll";
  STACK[0x7C8] = 22;
  re::DynamicString::operator=(&STACK[0x878], &STACK[0x7C0]);
LABEL_142:
  LOBYTE(STACK[0x918]) = 1;
  RenderPipelineState = re::getOrCreateRenderPipelineState(a1[1], &STACK[0x830]);
  (*(*(v65 + 8) + 56))(**(v65 + 8), sel_setRenderPipelineState_, *RenderPipelineState);
  if (v169)
  {
    DepthStencilState = re::getOrCreateDepthStencilState(a1[1], a1[3], &a51);
    (*(*(v65 + 8) + 112))(**(v65 + 8), sel_setDepthStencilState_, *DepthStencilState);
    if (v171)
    {
      (*(*(v65 + 8) + 120))(**(v65 + 8), sel_setStencilReferenceValue_, v162);
    }
  }

  if (a51 == 1 && *(&a51 + 1) && (a52 & 1) != 0)
  {
    (*(**(&a51 + 1) + 40))();
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&STACK[0x8E8]);
  if (LOBYTE(STACK[0x8C0]) == 1 && STACK[0x8C8])
  {
    if (STACK[0x8D0])
    {
      (*(*STACK[0x8C8] + 40))(STACK[0x8C8], STACK[0x8D8]);
    }

    *&STACK[0x8D8] = 0u;
    *&STACK[0x8C8] = 0u;
  }

  if (LOBYTE(STACK[0x898]) == 1 && STACK[0x8A0])
  {
    if (STACK[0x8A8])
    {
      (*(*STACK[0x8A0] + 40))(STACK[0x8A0], STACK[0x8B0]);
    }

    *&STACK[0x8A0] = 0u;
    *&STACK[0x8B0] = 0u;
  }

  if (STACK[0x878])
  {
    if (STACK[0x880])
    {
      (*(*STACK[0x878] + 40))(STACK[0x878], STACK[0x888]);
    }

    *&STACK[0x888] = 0u;
    *&STACK[0x878] = 0u;
  }

  if (STACK[0x858])
  {
    if (STACK[0x860])
    {
      (*(*STACK[0x858] + 40))(STACK[0x858], STACK[0x868]);
    }

    *&STACK[0x868] = 0u;
    *&STACK[0x858] = 0u;
  }

  if (LOBYTE(STACK[0x830]) == 1 && STACK[0x838] && (STACK[0x840] & 1) != 0)
  {
    (*(*STACK[0x838] + 40))(STACK[0x838], STACK[0x848]);
  }

  (*(*(v65 + 8) + 64))(**(v65 + 8), sel_setCullMode_, 2);
  (*(*(v65 + 8) + 136))(**(v65 + 8), sel_setFrontFacingWinding_, 1);
  re::mtl::RenderCommandEncoder::setViewports(v65);
  re::setVertexAmplificationCount(*(a1[1] + 366), v158 & 1, a61, 0xFFFF, v65, v109);
  *&v110 = __PAIR64__(1.0, -1.0);
  LODWORD(v111) = -1.0;
  *(&v110 + 1) = __PAIR64__(1.0, v173);
  *&v112 = __PAIR64__(-1.0, 1.0);
  DWORD1(v111) = -1.0;
  *(&v111 + 1) = __PAIR64__(1.0, v173);
  *&STACK[0x7C0] = v110;
  *&STACK[0x7D0] = v111;
  *(&v112 + 1) = __PAIR64__(1.0, v173);
  __asm { FMOV            V0.4S, #1.0 }

  DWORD2(_Q0) = v173;
  *&STACK[0x7E0] = v112;
  *&STACK[0x7F0] = _Q0;
  (*(*(v65 + 8) + 8))(**(v65 + 8), sel_setVertexBytes_length_atIndex_, &STACK[0x7C0], 64, 0);
  a53 = 0u;
  a54 = 0u;
  a52 = 0u;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a1 + 16), 0xA0uLL, 0x20uLL, &STACK[0x830]);
  v117 = STACK[0x840];
  v118 = STACK[0x830] + LODWORD(STACK[0x838]);
  *(v118 + 16) = 0;
  *(v118 + 28) = 1;
  *(v118 + 32) = a51;
  *(v118 + 48) = a52;
  *(v118 + 64) = a53;
  *(v118 + 80) = a54;
  (*(*(v65 + 8) + 16))(**(v65 + 8), sel_setVertexBuffer_offset_atIndex_, v117);
  a64 = 0u;
  a65 = 0u;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a1 + 16), 0x400uLL, 0x100uLL, &STACK[0x830]);
  v119 = STACK[0x840];
  v120 = STACK[0x830] + LODWORD(STACK[0x838]);
  *v120 = xmmword_1E3047670;
  *(v120 + 16) = xmmword_1E3047680;
  *(v120 + 32) = xmmword_1E30476A0;
  *(v120 + 48) = xmmword_1E30474D0;
  *(v120 + 64) = xmmword_1E3047670;
  *(v120 + 80) = xmmword_1E3047680;
  *(v120 + 96) = xmmword_1E30476A0;
  *(v120 + 112) = xmmword_1E30474D0;
  *(v120 + 128) = xmmword_1E3047670;
  *(v120 + 144) = xmmword_1E3047680;
  *(v120 + 160) = xmmword_1E30476A0;
  *(v120 + 176) = xmmword_1E30474D0;
  *(v120 + 192) = xmmword_1E3047670;
  *(v120 + 208) = xmmword_1E3047680;
  *(v120 + 224) = xmmword_1E30476A0;
  *(v120 + 240) = xmmword_1E30474D0;
  *(v120 + 256) = xmmword_1E3047670;
  *(v120 + 272) = xmmword_1E3047680;
  *(v120 + 288) = xmmword_1E30476A0;
  *(v120 + 304) = xmmword_1E30474D0;
  *(v120 + 320) = xmmword_1E3047670;
  *(v120 + 336) = xmmword_1E3047680;
  *(v120 + 352) = xmmword_1E30476A0;
  *(v120 + 368) = xmmword_1E30474D0;
  *(v120 + 384) = xmmword_1E3047670;
  *(v120 + 400) = xmmword_1E3047680;
  *(v120 + 416) = xmmword_1E30476A0;
  *(v120 + 432) = xmmword_1E30474D0;
  *(v120 + 448) = xmmword_1E3047670;
  *(v120 + 464) = xmmword_1E3047680;
  *(v120 + 480) = xmmword_1E30476A0;
  *(v120 + 496) = xmmword_1E30474D0;
  *(v120 + 512) = xmmword_1E3047670;
  *(v120 + 528) = xmmword_1E3047680;
  *(v120 + 544) = xmmword_1E30476A0;
  *(v120 + 560) = xmmword_1E30474D0;
  *(v120 + 576) = xmmword_1E3047670;
  *(v120 + 592) = xmmword_1E3047680;
  *(v120 + 608) = xmmword_1E30476A0;
  *(v120 + 624) = xmmword_1E30474D0;
  *(v120 + 640) = xmmword_1E3047670;
  *(v120 + 656) = xmmword_1E3047680;
  *(v120 + 672) = xmmword_1E30476A0;
  *(v120 + 688) = xmmword_1E30474D0;
  *(v120 + 704) = xmmword_1E3047670;
  *(v120 + 720) = xmmword_1E3047680;
  *(v120 + 736) = xmmword_1E30476A0;
  *(v120 + 752) = xmmword_1E30474D0;
  *(v120 + 880) = 0u;
  *(v120 + 896) = 0u;
  *(v120 + 848) = 0u;
  *(v120 + 864) = 0u;
  *(v120 + 816) = 0u;
  *(v120 + 832) = 0u;
  *(v120 + 784) = 0u;
  *(v120 + 800) = 0u;
  *(v120 + 768) = 0u;
  *(v120 + 940) = v164;
  *(v120 + 944) = v158 & 1;
  *(v120 + 960) = 0u;
  *(v120 + 1008) = a65;
  *(v120 + 976) = a63;
  *(v120 + 992) = a64;
  (*(*(v65 + 8) + 16))(**(v65 + 8), sel_setVertexBuffer_offset_atIndex_, v119);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a1 + 16), 0xCuLL, 0x10uLL, &a48);
  v121 = a49;
  *&v122 = STACK[0xA00];
  *&v123 = STACK[0xA10];
  v172 = STACK[0xA10];
  v174 = STACK[0xA00];
  *&v124 = STACK[0xA20];
  *&v125 = STACK[0xA30];
  v167 = STACK[0xA30];
  v170 = STACK[0xA20];
  *&v126 = STACK[0xA40];
  *&v127 = STACK[0xA50];
  v163 = STACK[0xA50];
  v165 = STACK[0xA40];
  DWORD2(v122) = STACK[0xA08];
  v157 = v122;
  v128 = v123;
  DWORD2(v128) = STACK[0xA18];
  v155 = v128;
  v129 = v124;
  DWORD2(v129) = STACK[0xA28];
  v154 = v129;
  v130 = v125;
  DWORD2(v130) = STACK[0xA38];
  v153 = v130;
  v131 = v126;
  DWORD2(v131) = STACK[0xA48];
  vars0 = v131;
  v132 = a48 + a49;
  v133 = v127;
  DWORD2(v133) = STACK[0xA58];
  v151 = v133;
  *&v133 = STACK[0xA60];
  *&v125 = STACK[0xA70];
  v160 = STACK[0xA70];
  v161 = STACK[0xA60];
  DWORD2(v133) = STACK[0xA68];
  v150 = v133;
  *v132 = 0x200010000;
  v134 = v125;
  DWORD2(v134) = STACK[0xA78];
  v149 = v134;
  *(v132 + 2) = 196610;
  v135 = *&STACK[0xA10];
  *&STACK[0x830] = *&STACK[0xA00];
  *&STACK[0x840] = v135;
  v136 = *&STACK[0xA30];
  *&STACK[0x850] = *&STACK[0xA20];
  *&STACK[0x860] = v136;
  v137 = *&STACK[0xA50];
  *&STACK[0x870] = *&STACK[0xA40];
  *&STACK[0x880] = v137;
  v138 = *&STACK[0xA70];
  *&STACK[0x890] = *&STACK[0xA60];
  *&STACK[0x8A0] = v138;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a1 + 16), 0x20uLL, 0x10uLL, &a45);
  v139.i64[0] = v170;
  v139.i64[1] = v167;
  v140.i64[0] = v174;
  v140.i64[1] = v172;
  v141 = vuzp1q_s32(v140, v139);
  v140.i64[0] = v161;
  v140.i64[1] = v160;
  v142.i64[0] = v165;
  v142.i64[1] = v163;
  v143 = (a45 + a46);
  *v143 = v141;
  v143[1] = vuzp1q_s32(v142, v140);
  (*(*(v65 + 8) + 88))(**(v65 + 8), sel_setFragmentBuffer_offset_atIndex_, a47);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a1 + 16), 0x40uLL, 0x10uLL, &a42);
  v144 = (a42 + a43);
  *v144 = v174;
  v144[1] = v172;
  v144[2] = v170;
  v144[3] = v167;
  v144[4] = v165;
  v144[5] = v163;
  v144[6] = v161;
  v144[7] = v160;
  (*(*(v65 + 8) + 88))(**(v65 + 8), sel_setFragmentBuffer_offset_atIndex_, a44);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a1 + 16), 0x80uLL, 0x10uLL, &a39);
  v145 = (a39 + a40);
  *v145 = v157;
  v145[1] = v155;
  v145[2] = v154;
  v145[3] = v153;
  v145[4] = vars0;
  v145[5] = v151;
  v145[6] = v150;
  v145[7] = v149;
  (*(*(v65 + 8) + 88))(**(v65 + 8), sel_setFragmentBuffer_offset_atIndex_, a41);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a1 + 16), 0x80uLL, 0x10uLL, &a36);
  v146 = (a36 + a37);
  v146[3] = *&STACK[0x860];
  v146[2] = *&STACK[0x850];
  v146[1] = *&STACK[0x840];
  *v146 = *&STACK[0x830];
  v146[7] = *&STACK[0x8A0];
  v146[6] = *&STACK[0x890];
  v146[5] = *&STACK[0x880];
  v146[4] = *&STACK[0x870];
  (*(*(v65 + 8) + 88))(**(v65 + 8), sel_setFragmentBuffer_offset_atIndex_, a38);
  if (v158)
  {
    if (v175 / a61 <= 1)
    {
      v147 = 1;
    }

    else
    {
      v147 = v175 / a61;
    }
  }

  else
  {
    v147 = v175;
  }

  (*(*(v65 + 8) + 240))(**(v65 + 8), sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance_, 3, 6, 0, a50, v121, v147);
  (*(*(v65 + 8) + 168))(**(v65 + 8), sel_popDebugGroup);
  if (a57 && a58)
  {
    (*(*a57 + 40))();
  }

  result = a60;
  if (a60)
  {
    if (a61)
    {
      return (*(*a60 + 40))();
    }
  }

  return result;
}

void *re::FixedArray<re::mtl::Viewport>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 24 * a3, 4);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      result[1] = 0;
      result[2] = 0x3F80000000000000;
      result += 3;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0x3F80000000000000;
  return result;
}

__n128 re::DynamicArray<re::TechniqueFunctionConstant>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TechniqueFunctionConstant>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 104 * v4;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v6 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v7 = *(a2 + 16);
  *(a2 + 24) = 0;
  v9 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 64) = v11;
  *(v5 + 80) = v12;
  *(v5 + 48) = v10;
  result = *(a2 + 32);
  *(v5 + 32) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::RenderGraphContext::releaseRenderTargetsAfterSetup(re::RenderGraphContext *this)
{
  v2 = v36;
  v41 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 147) + 168);
  v4 = *(this + 12);
  v5 = *(v3 + 352);
  if (v5 <= v4)
  {
    goto LABEL_30;
  }

  v6 = *(v3 + 368) + 200 * v4;
  if (*(v6 + 56))
  {
    v8 = 0;
    v9 = 52;
    do
    {
      v10 = *(this + 147);
      v11 = *(v10 + 168);
      v12 = *(v11 + 296);
      v4 = *(*(v6 + 72) + v9);
      v5 = *(v12 + 16);
      if (v5 <= v4)
      {
        v26 = 0;
        v40 = 0u;
        v38 = 0u;
        v39 = 0u;
        *v36 = 0u;
        v37 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v29 = 136315906;
        *&v29[4] = "operator[]";
        v30 = 1024;
        v31 = 789;
        v32 = 2048;
        v33 = v4;
        v34 = 2048;
        v35 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_28:
        v28 = 0;
        v40 = 0u;
        v38 = 0u;
        v39 = 0u;
        *v36 = 0u;
        v37 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v29 = 136315906;
        *&v29[4] = "operator[]";
        v30 = 1024;
        v31 = 468;
        v32 = 2048;
        v33 = v5;
        v34 = 2048;
        v35 = v1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_29:
        v28 = 0;
        v40 = 0u;
        v38 = 0u;
        v39 = 0u;
        *v36 = 0u;
        v37 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v29 = 136315906;
        *&v29[4] = "operator[]";
        v30 = 1024;
        v31 = 468;
        v32 = 2048;
        v33 = v5;
        v34 = 2048;
        v35 = v1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_30:
        v26 = 0;
        *(v2 + 4) = 0u;
        v38 = 0u;
        v39 = 0u;
        *v36 = 0u;
        v37 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v29 = 136315906;
        *&v29[4] = "operator[]";
        v30 = 1024;
        v31 = 789;
        v32 = 2048;
        v33 = v4;
        v34 = 2048;
        v35 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v13 = *(v12 + 32) + 48 * v4;
      if (*(v13 + 36) == *(this + 12))
      {
        if (*v13 == 1)
        {
          v4 = (v13 + 8);
          v26 = *(v13 + 8) >> 1;
          v27 = *(v13 + 24);
          v21 = re::RenderGraphExecutable::bufferDescription(v10, &v26);
          v1 = *(this + 4);
          v22 = HIDWORD(v27);
          re::StringID::StringID(v36, (v13 + 8));
          v23 = re::RenderGraphResourceAllocationManager::releaseBuffer(v1, v22, v36[1]);
          if (v36[0])
          {
            if (v36[0])
            {
            }
          }

          if (*v21 == 2)
          {
            goto LABEL_25;
          }

          v24 = *(this + 147);
          v5 = *(v13 + 28);
          v1 = *(v24 + 80);
          if (v1 <= v5)
          {
            goto LABEL_29;
          }

          re::BufferSlice::deinit((*(v24 + 88) + 40 * v5));
          if (*(v21 + 16) != 1)
          {
            goto LABEL_25;
          }

          v25 = *this;
          re::StringID::StringID(v36, v4);
          *v29 = v36[0] >> 1;
          v20 = re::BufferTable::removeBuffer((v25 + 480), v29);
        }

        else
        {
          if (*v13)
          {
            goto LABEL_25;
          }

          v4 = (v13 + 8);
          v36[0] = (*(v13 + 8) >> 1);
          v36[1] = *(v13 + 24);
          re::RenderGraphResourceDescriptions::targetDescriptionSource(v11, v36, &v26);
          v14 = re::RenderGraphExecutable::targetDescription(*(this + 147), &v26);
          v1 = *(this + 4);
          v15 = HIDWORD(v27);
          re::StringID::StringID(v36, (v13 + 8));
          v16 = re::RenderGraphResourceAllocationManager::releaseTexture(v1, v15, v36[1]);
          if (v36[0])
          {
            if (v36[0])
            {
            }
          }

          if (*v14 == 2)
          {
            goto LABEL_25;
          }

          v17 = *(this + 147);
          v5 = *(v13 + 28);
          v1 = *(v17 + 56);
          if (v1 <= v5)
          {
            goto LABEL_28;
          }

          v1 = *(v17 + 64);

          *(v1 + v5) = 0;
          if (*(v14 + 40) != 1)
          {
            goto LABEL_25;
          }

          v18 = *this;
          re::StringID::StringID(v36, v4);
          *v29 = v36[0] >> 1;
          v20 = re::DynamicTextureTableRemove((v18 + 368), v29, v19);
        }

        *v29 = 0;
        if (v36[0])
        {
          if (v36[0])
          {
          }
        }
      }

LABEL_25:
      ++v8;
      v9 += 64;
    }

    while (*(v6 + 56) > v8);
  }
}

void re::RenderGraphContext::renderPassDescriptor(id *this, unint64_t *a2, unint64_t *a3)
{
  v153 = *MEMORY[0x1E69E9840];
  v3 = *(a2[147] + 168);
  v4 = *(a2 + 12);
  v5 = *(v3 + 352);
  if (v5 <= v4)
  {
LABEL_258:
    *v143 = 0;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v148 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    *&buf[14] = 789;
    *&buf[18] = 2048;
    *&buf[20] = v4;
    *&buf[28] = 2048;
    *&buf[30] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_259:
    *v143 = 0;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v148 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    *&buf[14] = 789;
    *&buf[18] = 2048;
    *&buf[20] = v4;
    *&buf[28] = 2048;
    *&buf[30] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_260;
  }

  v8 = *(v3 + 368) + 200 * v4;
  v9 = [objc_msgSend(MEMORY[0x1E6974128] alloc)];
  *this = v9;
  if (*(v8 + 194) == 1)
  {
    [v9 setSkipEmptyTilesOnClearEnabled_];
  }

  v10 = *(v8 + 56);
  v133 = v8;
  v135 = this;
  v11 = 0;
  if (!v10)
  {
    goto LABEL_240;
  }

  v12 = (v10 << 6);
  v5 = 48;
  v132 = *(a2[1] + 368);
  v134 = *(a2 + 12);
  v4 = *(v8 + 72);
  v13 = 0x1FB023000;
  do
  {
    v14 = *(a2[147] + 168);
    v15 = *(v14 + 296);
    v16 = v4[13];
    v17 = *(v15 + 16);
    if (v17 <= v16)
    {
      *v143 = 0;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 789;
      *&buf[18] = 2048;
      *&buf[20] = v16;
      *&buf[28] = 2048;
      *&buf[30] = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_254:
      *v143 = 0;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 789;
      *&buf[18] = 2048;
      *&buf[20] = v16;
      *&buf[28] = 2048;
      *&buf[30] = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_255:
      v140 = 0;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v143 = 136315906;
      *&v143[4] = "operator[]";
      *&v143[12] = 1024;
      *&v143[14] = 789;
      v144 = 2048;
      v145 = v12;
      v146 = 2048;
      v147 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_256:
      v140 = 0;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v143 = 136315906;
      *&v143[4] = "operator[]";
      *&v143[12] = 1024;
      *&v143[14] = 789;
      v144 = 2048;
      v145 = v12;
      v146 = 2048;
      v147 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_257:
      v140 = 0;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v143 = 136315906;
      *&v143[4] = "operator[]";
      *&v143[12] = 1024;
      *&v143[14] = 789;
      v144 = 2048;
      v145 = v12;
      v146 = 2048;
      v147 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_258;
    }

    v18 = *(v15 + 32) + 48 * v16;
    if (*v18 == 1)
    {
      if (v4[1] == 9)
      {
        *&v148 = *(v18 + 8) >> 1;
        *(&v148 + 1) = *(v18 + 24);
        v19 = re::RenderGraphContext::metalBuffer(a2, &v148);
        v21 = *re::BufferSlice::buffer(v19, v20);
        [*this v13[137]];
        if (v21)
        {
        }
      }

      goto LABEL_95;
    }

    *&v148 = *(v18 + 8) >> 1;
    *(&v148 + 1) = *(v18 + 24);
    re::RenderGraphResourceDescriptions::targetDescriptionSource(v14, &v148, v143);
    v22 = re::RenderGraphExecutable::targetDescription(a2[147], v143);
    v23 = v22;
    v24 = v4[1];
    if (v24 == 3)
    {
      v36 = (*(v22 + 4) - 253) > 9 || ((1 << (*(v22 + 4) + 3)) & 0x385) == 0;
      if (v36 && (*(v4 + 33) & 1) != 0)
      {
        goto LABEL_95;
      }

      v25 = *this;
      v37 = [*this stencilAttachment];
      re::RenderGraphContext::metalTexture(a2, v143, 0, 0, &v148);
      [v37 setTexture_];
      if (v148)
      {
      }

      re::RenderGraphContext::metalTexture(a2, v143, 0, 0, &v148);
      v38 = [v148 protectionOptions];
      if (v148)
      {
      }

      v11 |= v38;
      if (*v23 == 4 || *v23 == 3)
      {
        goto LABEL_51;
      }

      v44 = *(v18 + 36);
      if (*(v4 + 32))
      {
        v45 = 2;
      }

      else
      {
        v45 = v23[16];
      }

      [objc_msgSend(v25 stencilAttachment)];
      if ((v23[18] & 0x70) == 0x30)
      {
        v46 = [v25 stencilAttachment];
      }

      else
      {
        v47 = *v23;
        v46 = [v25 stencilAttachment];
        if (v134 != v44 || v47 == 2)
        {
          v49 = 1;
          goto LABEL_81;
        }
      }

      v49 = 0;
LABEL_81:
      [v46 setStoreAction_];
      this = v135;
      v13 = &selRef_iosurface;
      [objc_msgSend(v25 stencilAttachment)];
      v50 = v23[6];
      if (v132)
      {
        goto LABEL_93;
      }

      if (v50 == 1)
      {
        goto LABEL_94;
      }

      if (!v50)
      {
        [v25 setRenderTargetArrayLength_];
LABEL_94:
        v5 = 48;
        goto LABEL_95;
      }

      v64 = [v25 setRenderTargetArrayLength_];
      if (atomic_exchange(&unk_1EE1B991B, 1u))
      {
        goto LABEL_94;
      }

      v65 = *re::graphicsLogObjects(v64);
      v5 = 48;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        re::RenderGraphContext::resourceFromIndex(a2, *&v143[8], &v148);
        re::StringID::StringID(&v138, (&v148 + 8));
        v66 = v23[6];
        *buf = 136315394;
        *&buf[4] = v139;
        *&buf[12] = 1024;
        *&buf[14] = v66;
        v57 = v65;
        v58 = "Stencil target (%s) has arrayLength of %d, but device does not support Layered Rendering.";
        goto LABEL_120;
      }

      goto LABEL_95;
    }

    if (v24 == 2)
    {
      v30 = (*(v22 + 4) - 250) > 0xA || ((1 << (*(v22 + 4) + 6)) & 0x425) == 0;
      if (v30 && (*(v4 + 33) & 1) != 0)
      {
        goto LABEL_95;
      }

      v25 = *this;
      v31 = [*this depthAttachment];
      re::RenderGraphContext::metalTexture(a2, v143, 0, 0, &v148);
      [v31 setTexture_];
      if (v148)
      {
      }

      re::RenderGraphContext::metalTexture(a2, v143, 0, 0, &v148);
      v32 = [v148 protectionOptions];
      if (v148)
      {
      }

      v11 |= v32;
      if (*v23 == 4 || *v23 == 3)
      {
        goto LABEL_51;
      }

      v33 = *(v18 + 36);
      if (*(v4 + 32))
      {
        v34 = 2;
      }

      else
      {
        v34 = v23[16];
      }

      [objc_msgSend(v25 depthAttachment)];
      if ((v23[18] & 0x70) == 0x30)
      {
        v35 = [v25 depthAttachment];
      }

      else
      {
        v51 = *v23;
        v35 = [v25 depthAttachment];
        if (v134 != v33 || v51 == 2)
        {
          v53 = 1;
          goto LABEL_92;
        }
      }

      v53 = 0;
LABEL_92:
      [v35 setStoreAction_];
      this = v135;
      v13 = &selRef_iosurface;
      [objc_msgSend(v25 depthAttachment)];
      v50 = v23[6];
      if (v132)
      {
LABEL_93:
        [v25 setRenderTargetArrayLength_];
        goto LABEL_94;
      }

      if (v50 == 1)
      {
        goto LABEL_94;
      }

      v5 = 48;
      if (!v50)
      {
LABEL_113:
        [v25 setRenderTargetArrayLength_];
        goto LABEL_95;
      }

      v54 = [v25 setRenderTargetArrayLength_];
      if ((atomic_exchange(&unk_1EE1B991A, 1u) & 1) == 0)
      {
        v55 = *re::graphicsLogObjects(v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          re::RenderGraphContext::resourceFromIndex(a2, *&v143[8], &v148);
          re::StringID::StringID(&v138, (&v148 + 8));
          v56 = v23[6];
          *buf = 136315394;
          *&buf[4] = v139;
          *&buf[12] = 1024;
          *&buf[14] = v56;
          v57 = v55;
          v58 = "Depth target (%s) has arrayLength of %d, but device does not support Layered Rendering.";
          goto LABEL_120;
        }
      }

      goto LABEL_95;
    }

    if (v24 != 1)
    {
      goto LABEL_95;
    }

    re::RenderGraphContext::metalTexture(a2, v143, 0, 0, &v148);
    if (!v148)
    {
      v42 = a2[147];
      re::RenderGraphContext::resourceFromIndex(a2, *&v143[8], &v148);
      re::StringID::StringID(&v138, (&v148 + 8));
      re::DynamicString::format("Target (%s) used to create renderPassDescriptor is not valid.", buf, v139);
      re::RenderGraphExecutable::addError(v42, buf);
      v43 = *buf;
      if (*buf)
      {
        if (buf[8])
        {
          v43 = (*(**buf + 40))();
        }

        memset(buf, 0, 32);
      }

      goto LABEL_59;
    }

    v25 = *this;
    v26 = [objc_msgSend(*this colorAttachments)];
    re::RenderGraphContext::metalTexture(a2, v143, 0, 0, &v148);
    [v26 setTexture_];
    if (v148)
    {
    }

    re::RenderGraphContext::metalTexture(a2, v143, 0, 0, &v148);
    v27 = [v148 protectionOptions];
    if (v148)
    {
    }

    v11 |= v27;
    if (*v23 == 4 || *v23 == 3)
    {
LABEL_51:
      v39 = a2[147];
      re::DynamicString::format("TargetHandle in use reached the end of the frame without being specified.", &v148);
      re::RenderGraphExecutable::addError(v39, &v148);
      v40 = v148;
      this = v135;
      if (v148 && (BYTE8(v148) & 1) != 0)
      {
        v41 = v149;
LABEL_54:
        (*(*v40 + 40))(v40, v41);
        goto LABEL_95;
      }

      goto LABEL_95;
    }

    v28 = *(v18 + 36);
    if (*(v4 + 32))
    {
      v29 = 2;
    }

    else
    {
      v29 = v23[16];
    }

    [objc_msgSend(objc_msgSend(v25 colorAttachments)];
    if ((v23[18] & 0x70) == 0x30)
    {
      [objc_msgSend(objc_msgSend(v25 colorAttachments)];
      this = v135;
    }

    else
    {
      v59 = *v23;
      v60 = [objc_msgSend(v25 colorAttachments)];
      v62 = v134 != v28 || v59 == 2;
      [v60 setStoreAction_];
      this = v135;
      v13 = &selRef_iosurface;
    }

    [objc_msgSend(objc_msgSend(v25 colorAttachments)];
    v63 = v23[6];
    if (v132)
    {
      [v25 setRenderTargetArrayLength_];
      v5 = 48;
      goto LABEL_95;
    }

    v5 = 48;
    if (v63 != 1)
    {
      if (!v63)
      {
        goto LABEL_113;
      }

      v67 = [v25 setRenderTargetArrayLength_];
      if ((atomic_exchange(&unk_1EE1B9919, 1u) & 1) == 0)
      {
        v68 = *re::graphicsLogObjects(v67);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          re::RenderGraphContext::resourceFromIndex(a2, *&v143[8], &v148);
          re::StringID::StringID(&v138, (&v148 + 8));
          v69 = v23[6];
          *buf = 136315394;
          *&buf[4] = v139;
          *&buf[12] = 1024;
          *&buf[14] = v69;
          v57 = v68;
          v58 = "Color target (%s) has arrayLength of %d, but device does not support Layered Rendering.";
LABEL_120:
          _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, v58, buf, 0x12u);
LABEL_59:
          if (v138)
          {
            if (v138)
            {
            }
          }

          v138 = 0;
          v139 = &str_67;
          if (BYTE8(v148))
          {
            if (BYTE8(v148))
            {
              v41 = v149;
              goto LABEL_54;
            }
          }
        }
      }
    }

LABEL_95:
    v4 += 16;
    v12 -= 8;
  }

  while (v12);
  v70 = *(v133 + 56);
  if (v70)
  {
    v4 = *(v133 + 72);
    v5 = &v4[16 * v70];
    while (1)
    {
      v71 = *(*(a2[147] + 168) + 296);
      v16 = v4[13];
      v17 = *(v71 + 16);
      if (v17 <= v16)
      {
        goto LABEL_254;
      }

      v13 = (*(v71 + 32) + 48 * v16);
      if (!*v13)
      {
        break;
      }

LABEL_227:
      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_240;
      }
    }

    *buf = 0;
    re::StringID::StringID(&buf[8], (v13 + 1));
    v72 = *(v13 + 3);
    v142 = v13[5];
    *&buf[24] = v72;
    *&v148 = *&buf[8] >> 1;
    *(&v148 + 1) = v72;
    re::RenderGraphResourceDescriptions::targetDescriptionSource(*(a2[147] + 168), &v148, &v138);
    v73 = re::RenderGraphExecutable::targetDescription(a2[147], &v138);
    v74 = v73;
    v75 = v4[1];
    switch(v75)
    {
      case 8u:
        v91 = (v73[1] - 253) > 9 || ((1 << (*(v73 + 4) + 3)) & 0x385) == 0;
        if (v91 && (*(v4 + 33) & 1) != 0)
        {
          goto LABEL_224;
        }

        re::RenderGraphContext::metalTexture(a2, &v138, 0, 0, &v137);
        if (!v137)
        {
          v104 = a2[147];
          v105 = *(v104 + 168);
          if (v105[54])
          {
            v106 = 0;
            do
            {
              v12 = v4[13];
              if (v12 == *(v105[56] + 4 * v106))
              {
                v107 = v105[37];
                v13 = *(v107 + 16);
                if (v13 <= v12)
                {
                  goto LABEL_256;
                }

                re::StringID::StringID(v143, (*(v107 + 32) + 48 * v12 + 8));
                re::DynamicString::format("Invalid texture (%s) set to resolve stencil", &v148, *&v143[8]);
                re::RenderGraphExecutable::addError(v104, &v148);
                v108 = v148;
                if (v148)
                {
                  if (BYTE8(v148))
                  {
                    v108 = (*(*v148 + 40))(v148, v149);
                  }

                  v148 = 0u;
                  v149 = 0u;
                }

                if (v143[0])
                {
                  if (v143[0])
                  {
                  }
                }

                v104 = a2[147];
              }

              ++v106;
              v105 = *(v104 + 168);
            }

            while (v105[54] > v106);
          }

          break;
        }

        v93 = v134 == *&buf[36] && *v74 != 2;
        if ((v74[18] & 0x70) != 0x30 && !v93)
        {
          if ([*(a2[1] + 208) supportsFamily:1005] & 1) != 0 || (v94 = objc_msgSend(*(a2[1] + 208), "supportsFamily:", 2002), (v94))
          {
            v95 = *v135;
            v96 = [*v135 stencilAttachment];
            [v96 setResolveTexture_];
            v13 = ([v137 protectionOptions] | v11);
            v12 = [objc_msgSend(v95 &selRef:sel_storeAction setCounterSet:? + 7)];
            v97 = [v95 &selRef_setCounterSet_ + 7];
            if (v12)
            {
              v98 = 3;
            }

            else
            {
              v98 = 2;
            }

            [v97 setStoreAction_];
            v11 = v13;
            v80 = [v95 &selRef_setCounterSet_ + 7];
            v82 = v4[10];
            v81 = sel_setStencilResolveFilter_;
            goto LABEL_180;
          }

          if ((atomic_exchange(byte_1EE1B991D, 1u) & 1) == 0)
          {
            v114 = *re::graphicsLogObjects(v94);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v148) = 0;
              v115 = v114;
              v116 = "Tried to resolve multisampled stencil, but device does not support Stencil Resolve.";
LABEL_239:
              _os_log_impl(&dword_1E1C61000, v115, OS_LOG_TYPE_DEFAULT, v116, &v148, 2u);
            }
          }
        }

        break;
      case 7u:
        v83 = (v73[1] - 250) > 0xA || ((1 << (*(v73 + 4) + 6)) & 0x425) == 0;
        if (v83 && (*(v4 + 33) & 1) != 0)
        {
          goto LABEL_224;
        }

        re::RenderGraphContext::metalTexture(a2, &v138, 0, 0, &v137);
        if (!v137)
        {
          v109 = a2[147];
          v110 = *(v109 + 168);
          if (v110[54])
          {
            v111 = 0;
            do
            {
              v12 = v4[13];
              if (v12 == *(v110[56] + 4 * v111))
              {
                v112 = v110[37];
                v13 = *(v112 + 16);
                if (v13 <= v12)
                {
                  goto LABEL_257;
                }

                re::StringID::StringID(v143, (*(v112 + 32) + 48 * v12 + 8));
                re::DynamicString::format("Invalid texture (%s) set to resolve depth", &v148, *&v143[8]);
                re::RenderGraphExecutable::addError(v109, &v148);
                v113 = v148;
                if (v148)
                {
                  if (BYTE8(v148))
                  {
                    v113 = (*(*v148 + 40))(v148, v149);
                  }

                  v148 = 0u;
                  v149 = 0u;
                }

                if (v143[0])
                {
                  if (v143[0])
                  {
                  }
                }

                v109 = a2[147];
              }

              ++v111;
              v110 = *(v109 + 168);
            }

            while (v110[54] > v111);
          }

          break;
        }

        v85 = v134 == *&buf[36] && *v74 != 2;
        if ((v74[18] & 0x70) == 0x30 || v85)
        {
          break;
        }

        if ([*(a2[1] + 208) supportsFamily:1003] & 1) != 0 || (v86 = objc_msgSend(*(a2[1] + 208), "supportsFamily:", 2002), (v86))
        {
          v87 = *v135;
          v13 = &selRef_iosurface;
          v88 = [*v135 depthAttachment];
          [v88 setResolveTexture_];
          v11 |= [v137 protectionOptions];
          v12 = [objc_msgSend(v87 depthAttachment)];
          v89 = [v87 depthAttachment];
          if (v12)
          {
            v90 = 3;
          }

          else
          {
            v90 = 2;
          }

          [v89 setStoreAction_];
          [objc_msgSend(v87 depthAttachment)];
          break;
        }

        if ((atomic_exchange(&unk_1EE1B991C, 1u) & 1) == 0)
        {
          v117 = *re::graphicsLogObjects(v86);
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v148) = 0;
            v115 = v117;
            v116 = "Tried to resolve multisampled depth, but device does not support Depth Resolve.";
            goto LABEL_239;
          }
        }

        break;
      case 6u:
        re::RenderGraphContext::metalTexture(a2, &v138, 0, 0, &v137);
        if (v137)
        {
          v77 = v134 == *&buf[36] && *v74 != 2;
          if ((v74[18] & 0x70) != 0x30 && !v77)
          {
            v78 = *v135;
            v79 = [objc_msgSend(*v135 colorAttachments)];
            re::RenderGraphContext::metalTexture(a2, &v138, 0, 0, &v148);
            [v79 setResolveTexture_];
            if (v148)
            {
            }

            v11 |= [v137 protectionOptions];
            v13 = &selRef_childNodes;
            v12 = [objc_msgSend(objc_msgSend(v78 colorAttachments)];
            v80 = [objc_msgSend(v78 colorAttachments)];
            v81 = sel_setStoreAction_;
            if (v12)
            {
              v82 = 3;
            }

            else
            {
              v82 = 2;
            }

LABEL_180:
            [v80 v81];
          }
        }

        else
        {
          v99 = a2[147];
          v100 = *(v99 + 168);
          if (v100[54])
          {
            v101 = 0;
            do
            {
              v12 = v4[13];
              if (v12 == *(v100[56] + 4 * v101))
              {
                v102 = v100[37];
                v13 = *(v102 + 16);
                if (v13 <= v12)
                {
                  goto LABEL_255;
                }

                re::StringID::StringID(v143, (*(v102 + 32) + 48 * v12 + 8));
                re::DynamicString::format("Invalid texture (%s) set to resolve color attachment %d", &v148, *&v143[8], *v4);
                re::RenderGraphExecutable::addError(v99, &v148);
                v103 = v148;
                if (v148)
                {
                  if (BYTE8(v148))
                  {
                    v103 = (*(*v148 + 40))(v148, v149);
                  }

                  v148 = 0u;
                  v149 = 0u;
                }

                if (v143[0])
                {
                  if (v143[0])
                  {
                  }
                }

                v99 = a2[147];
              }

              ++v101;
              v100 = *(v99 + 168);
            }

            while (v100[54] > v101);
          }
        }

        break;
      default:
LABEL_224:
        if (buf[8])
        {
          if (buf[8])
          {
          }
        }

        goto LABEL_227;
    }

    v73 = v137;
    if (v137)
    {
    }

    goto LABEL_224;
  }

LABEL_240:
  v118 = *v135;
  v119 = v133;
  [*v135 setThreadgroupMemoryLength_];
  if (*(v133 + 192) - 1 < 3)
  {
    v120 = (*(v133 + 192) - 1);
    v121 = qword_1E30B5A90[v120];
    [v118 setTileWidth_];
    v122 = v121;
    v119 = v133;
    [v118 setTileHeight_];
  }

  if (*(v119 + 184))
  {
    [v118 setImageblockSampleLength_];
  }

  v123 = *(a2[147] + 168);
  v4 = *(a2 + 12);
  v5 = *(v123 + 352);
  if (v5 <= v4)
  {
    goto LABEL_259;
  }

  if (*(*(v123 + 368) + 200 * v4 + 171) == 1)
  {
    v124 = re::RenderGraphDataStore::tryGet<re::VRRData>(a2[146], *(a2[5] + 48));
    if (v124)
    {
      if (*(v124 + 12) == 1)
      {
        v126 = a2[147];
        v127 = *(v124 + 8);
        v128 = *(v126 + 104);
        if (v128 > v127)
        {
          [v118 setRasterizationRateMap_];
          goto LABEL_250;
        }

LABEL_260:
        re::internal::assertLog(6, v125, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v127, v128);
        _os_crash();
        __break(1u);
      }
    }
  }

LABEL_250:
  v129 = a2[1];
  v130 = v118;
  v136 = v130;
  re::RenderManager::enableMTLCounterSamplingOnRenderPassDescriptor(v129, &v136, 1u);
  if (v130)
  {
  }

  *a3 = v11;
}

uint64_t re::RenderGraphExecutable::addError(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 160);
  v5.n128_u64[0] = 2000;
  v5.n128_u64[1] = &re::GraphicsErrorCategory(void)::instance;
  v6 = *a2;
  v8 = *(a2 + 24);
  v7 = *(a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = re::DynamicArray<re::DetailedError>::add(v2, &v5);
  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))(v3);
    }
  }

  return result;
}

__n128 re::RenderGraphContext::resourceFromIndex@<Q0>(re::RenderGraphContext *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(*(*(this + 147) + 168) + 296);
  if (*(v4 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(v4 + 32) + 48 * a2;
  *a3 = *v5;
  re::StringID::StringID((a3 + 8), (v5 + 8));
  result = *(v5 + 24);
  *(a3 + 40) = *(v5 + 40);
  *(a3 + 24) = result;
  return result;
}

uint64_t re::RenderGraphContext::getMaterialTableForAsset(re::RenderGraphContext *this, unint64_t a2)
{
  if (!*(this + 201))
  {
    return 0;
  }

  v2 = *(*(this + 202) + 4 * (a2 % *(this + 408)));
  if (v2 == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = *(this + 203);
  while (*(v3 + 24 * v2 + 8) != a2)
  {
    v2 = *(v3 + 24 * v2) & 0x7FFFFFFF;
    if (v2 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v3 + 24 * v2 + 16);
}

_BYTE *re::DynamicOverflowArray<re::PatchTransform,5ul>::add(uint64_t a1, uint64_t a2)
{
  re::DynamicOverflowArray<re::PatchTransform,5ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4 + (*(a1 + 8) << 9);
  *v5 = *a2;
  *(v5 + 504) = 1;
  result = re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=((v5 + 8), (a2 + 8));
  ++*(a1 + 8);
  *(a1 + 16) += 2;
  return result;
}

void re::RenderGraphContext::encodeWaitsForFencesIfNeeded(re::RenderGraphContext *this, const RenderCommandEncoder *a2)
{
  if ((*(this + 1600) & 1) == 0)
  {
    v3 = *(this + 197);
    if (v3)
    {
      v5 = *(this + 199);
      v6 = 8 * v3;
      do
      {
        v7 = *v5;
        [(m_impCache *)a2->m_object waitForFence:v7 beforeStages:1];
        if (v7)
        {
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    *(this + 1600) = 1;
  }
}

void re::RenderGraphContext::releaseManagedEncoder(re::RenderGraphContext *this, int a2)
{
  if (a2 && !re::RenderGraphContext::isLastNodeAccessingEncoder(this, *(this + 5)))
  {
    v3 = *(*(this + 1) + 112);
    v4 = v3 ? re::RenderFrameBox::get((v3 + 328), *(*this + 40)) : 0;
    re::DynamicString::format("Node %s attempting to release encoder before all nodes have finished encoding", &v8, *(*(this + 5) + 16));
    re::RenderFrame::addError(v4, &v8);
    if (v8)
    {
      if (v9)
      {
        (*(*v8 + 40))();
      }
    }
  }

  v5 = *(this + 296);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      re::RenderGraphContext::finishEncoding<re::mtl::BlitCommandEncoder &>(this, *(this + 150), 1);
    }

    else if (v5 == 3)
    {
      v6 = *(this + 150);
      if (*v6)
      {
        [*v6 endEncoding];
        v7 = *v6;
        *v6 = 0;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      re::RenderGraphContext::finishEncoding<re::mtl::ComputeCommandEncoder &>(this, *(this + 150), 1);
    }
  }

  else
  {
    re::RenderGraphContext::finishEncoding<re::mtl::RenderCommandEncoder &>(this, *(this + 150), *(this + 1208));
  }

  *(this + 296) = 4;
}

uint64_t re::MutableSlice<NS::SharedPtr<MTL::RenderPassDescriptor>>::operator[](void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    return *a1 + 8 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v4, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::RenderGraphContext::makeComputeCommandEncoder(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, id *a4@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = re::RenderFrameBox::get((*(*(a1 + 8) + 112) + 328), *(*a1 + 40));
  [*(re::RenderFrame::currentCommandBuffer(v8) + 2) setProtectionOptions:a3];
  v9 = re::RenderFrameBox::get((*(*(a1 + 8) + 112) + 328), *(*a1 + 40));
  v10 = re::RenderFrame::currentCommandBuffer(v9);
  ++*(v10 + 1);
  v11 = [objc_msgSend(MEMORY[0x1E6974028] alloc)];
  [v11 setDispatchType_];
  re::mtl::CommandBuffer::makeComputeCommandEncoder(v10 + 2, v11, a4);
  if (v11)
  {
  }

  [*a4 setLabel:*re::RenderGraphNodeBase::getEncoderLabel(*(a1 + 40))];
  v12 = *(*(a1 + 1176) + 168);
  v13 = *(a1 + 48);
  v14 = *(v12 + 352);
  if (v14 <= v13)
  {
LABEL_13:
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v22 = 136315906;
    *&v22[4] = "operator[]";
    *&v22[12] = 1024;
    *&v22[14] = 789;
    v23 = 2048;
    v24 = v13;
    v25 = 2048;
    v26 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v15 = *(v12 + 368) + 200 * v13;
  v16 = *(v15 + 56);
  if (v16)
  {
    v13 = v16 << 6;
    v14 = (*(v15 + 72) + 52);
    do
    {
      if (*(v14 - 12) == 5)
      {
        v17 = *(*(a1 + 1176) + 168);
        v18 = *(v17 + 296);
        v19 = *v14;
        v20 = *(v18 + 16);
        if (v20 <= v19)
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v27 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v22 = 136315906;
          *&v22[4] = "operator[]";
          *&v22[12] = 1024;
          *&v22[14] = 789;
          v23 = 2048;
          v24 = v19;
          v25 = 2048;
          v26 = v20;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_13;
        }

        v21 = *(v18 + 32) + 48 * v19;
        if (!*v21)
        {
          *v22 = *(v21 + 8) >> 1;
          *&v22[8] = *(v21 + 24);
          re::RenderGraphResourceDescriptions::targetDescriptionSource(v17, v22, &v27);
          *(re::RenderGraphExecutable::targetDescription(*(a1 + 1176), &v27) + 64) = 1;
        }
      }

      v14 += 16;
      v13 -= 64;
    }

    while (v13);
  }

  re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::ComputeCommandEncoder>(*(a1 + 32), a4);
}

void re::RenderGraphContext::makeBlitCommandEncoder(re::RenderGraphContext *this@<X0>, uint64_t a2@<X1>, id *a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = re::RenderFrameBox::get((*(*(this + 1) + 112) + 328), *(*this + 40));
  [*(re::RenderFrame::currentCommandBuffer(v6) + 2) setProtectionOptions:a2];
  v7 = re::RenderFrameBox::get((*(*(this + 1) + 112) + 328), *(*this + 40));
  v8 = re::RenderFrame::currentCommandBuffer(v7);
  ++*(v8 + 1);
  re::mtl::CommandBuffer::makeBlitCommandEncoder(v8 + 2, a3);
  [*a3 setLabel:*re::RenderGraphNodeBase::getEncoderLabel(*(this + 5))];
  v9 = *(*(this + 147) + 168);
  v10 = *(this + 12);
  v11 = *(v9 + 352);
  if (v11 <= v10)
  {
LABEL_11:
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v19 = 136315906;
    *&v19[4] = "operator[]";
    *&v19[12] = 1024;
    *&v19[14] = 789;
    v20 = 2048;
    v21 = v10;
    v22 = 2048;
    v23 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(v9 + 368) + 200 * v10;
  v13 = *(v12 + 56);
  if (v13)
  {
    v10 = v13 << 6;
    v11 = (*(v12 + 72) + 52);
    do
    {
      if (*(v11 - 12) == 4)
      {
        v14 = *(*(this + 147) + 168);
        v15 = *(v14 + 296);
        v16 = *v11;
        v17 = *(v15 + 16);
        if (v17 <= v16)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v24 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v19 = 136315906;
          *&v19[4] = "operator[]";
          *&v19[12] = 1024;
          *&v19[14] = 789;
          v20 = 2048;
          v21 = v16;
          v22 = 2048;
          v23 = v17;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_11;
        }

        v18 = *(v15 + 32) + 48 * v16;
        if (!*v18)
        {
          *v19 = *(v18 + 8) >> 1;
          *&v19[8] = *(v18 + 24);
          re::RenderGraphResourceDescriptions::targetDescriptionSource(v14, v19, &v24);
          *(re::RenderGraphExecutable::targetDescription(*(this + 147), &v24) + 64) = 1;
        }
      }

      v11 += 16;
      v10 -= 64;
    }

    while (v10);
  }

  re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::BlitCommandEncoder>(*(this + 4), a3);
}

BOOL re::RenderGraphContext::isLastNodeAccessingEncoder(re::RenderGraphContext *this, re::RenderGraphNodeBase *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v8[0] = a2;
  v3 = re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](*(*(this + 147) + 168) + 656, v8);
  v4 = *v3;
  v5 = *(*(this + 147) + 168);
  v6 = *(v5 + 352);
  if (v6 <= v4)
  {
    v8[1] = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    v12 = 789;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v5 + 368) + 200 * v4 + 16) - 1 == v3[1];
}

uint64_t re::RenderGraphContext::releaseManagedRenderEncodersFromParallelEncoder(re::RenderGraphContext *this)
{
  result = re::RenderGraphContext::isSetupParallel(this);
  if (result)
  {
    if (*(this + 296) == 3)
    {
      v3 = *(this + 155);
      if (v3)
      {
        v4 = *(this + 157);
        v5 = 16 * v3;
        do
        {
          re::RenderGraphContext::finishEncoding<re::mtl::RenderCommandEncoder &>(this, v4, 1);
          v4 += 16;
          v5 -= 16;
        }

        while (v5);
      }

      return re::DynamicArray<re::mtl::RenderCommandEncoder>::clear((this + 1224));
    }
  }

  else
  {
    v6 = *(*(this + 1) + 112);
    if (v6)
    {
      v7 = re::RenderFrameBox::get((v6 + 328), *(*this + 40));
    }

    else
    {
      v7 = 0;
    }

    re::DynamicString::format("Node %s called releaseManagedRenderEncodersFromParallelEncoder(). This function is only meant to be called on nodes marked as parallel (e.g. RenderGraphBuilder::setNodeIsParallel(true)) after their execute() function. ", &v8, *(*(this + 5) + 16));
    re::RenderFrame::addError(v7, &v8);
    result = v8;
    if (v8 && (v9 & 1) != 0)
    {
      return (*(*v8 + 40))();
    }
  }

  return result;
}

void re::RenderGraphContext::finishEncoding<re::mtl::RenderCommandEncoder &>(uint64_t a1, uint64_t a2, int a3)
{
  if (*a2)
  {
    re::RenderGraphResourceAllocationManager::onReleaseEncoder<re::mtl::RenderCommandEncoder>(*(a1 + 32), a2);
    if (a3)
    {
      (*(*(a2 + 8) + 264))(**(a2 + 8), sel_endEncoding);
    }

    v5 = *a2;
    *a2 = 0;
  }
}

re::mtl::RenderCommandEncoder *re::DynamicArray<re::mtl::RenderCommandEncoder>::clear(re::mtl::RenderCommandEncoder *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 16 * v2;
    do
    {
      re::mtl::RenderCommandEncoder::~RenderCommandEncoder(result);
      result = (v4 + 16);
      v3 -= 16;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

void re::RenderGraphContext::finishEncoding<re::mtl::ComputeCommandEncoder &>(uint64_t a1, id *a2, int a3)
{
  if (*a2)
  {
    re::RenderGraphResourceAllocationManager::onReleaseEncoder<re::mtl::ComputeCommandEncoder>(*(a1 + 32), a2);
    if (a3)
    {
      [*a2 endEncoding];
    }

    v5 = *a2;
    *a2 = 0;
  }
}

void re::RenderGraphContext::finishEncoding<re::mtl::BlitCommandEncoder &>(uint64_t a1, id *a2, int a3)
{
  if (*a2)
  {
    re::RenderGraphResourceAllocationManager::onReleaseEncoder<re::mtl::BlitCommandEncoder>(*(a1 + 32), a2);
    if (a3)
    {
      [*a2 endEncoding];
    }

    v5 = *a2;
    *a2 = 0;
  }
}

void re::RenderGraphContext::makeFullscreenDrawCall(re *a1@<X0>, uint64_t a2@<X1>, int32x2_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int32x2_t *a8@<X7>, int32x2_t *a9@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  re::globalAllocators(a1);
  v16 = *(*a1 + 32);
  v17 = (*(*v16 + 32))(v16, 336, 16);
  v18 = *(*a1 + 32);
  *(v17 + 48) = 0;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *v17 = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0u;
  *(v17 + 120) = 0;
  *(v17 + 192) = 0;
  *(v17 + 200) = 0;
  *(v17 + 208) = 0;
  *(v17 + 224) = 0;
  *(v17 + 128) = 0u;
  *(v17 + 144) = 0u;
  *(v17 + 160) = 0u;
  *(v17 + 176) = 0;
  *(v17 + 184) = v18;
  *(v17 + 232) = xmmword_1E304F3C0;
  *(v17 + 248) = 0;
  *(v17 + 252) = 10854;
  __asm { FMOV            V0.2S, #1.0 }

  *(v17 + 256) = _D0;
  *(v17 + 264) = 0;
  *(v17 + 272) = 0;
  *(v17 + 320) = 0;
  v24 = re::globalAllocators(v17)[2];
  *&v32[0] = &unk_1F5D06340;
  *(&v32[1] + 1) = v24;
  *&v32[2] = v32;
  v25 = (*(*v16 + 16))(v16, v17, v32);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v32);
  re::DrawCall::DrawCall(a9);
  a9[9] = v25;
  if (!a8)
  {
    a8 = *(a1 + 192);
  }

  v26 = a9->i16[0] & 0xFFF0 | 7;
  a9->i16[0] = v26;
  a9[13] = a3;
  a9[2] = vrev64_s32(a8[56]);
  a9->i8[2] = a8[57].i8[4];
  a9[8] = a8;
  a9->i16[0] = v26 & 0xEF77;
  *(v25 + 56) = a2;
  *(v25 + 64) = a4;
  *(v25 + 72) = a5;
  *(v25 + 88) = a6;
  *&v32[0] = 0;
  *(&v32[0] + 1) = a7;
  memset(&v32[1], 0, 74);
  *(v25 + 104) = v32[0];
  *(v25 + 120) = *&v32[1];
  if ((v25 + 104) != v32)
  {
    v27 = *(v25 + 144);
    *(&v32[1] + 8) = *(v25 + 128);
    *(&v32[2] + 8) = v27;
    v28 = *(v25 + 184);
    *(&v32[4] + 1) = *(v25 + 176);
    *&v32[5] = v28;
    *(v25 + 128) = 0u;
    *(v25 + 144) = 0u;
    v29 = *(v25 + 160);
    *(v25 + 160) = 0u;
    *(v25 + 176) = 0u;
    *(&v32[3] + 8) = v29;
  }

  *(v25 + 192) = 0;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v32[1] + 8);
  a9[10].i32[1] = 0;
}

re *re::internal::destroyPersistent<re::mtl::RenderCommandEncoder>(re *result, uint64_t a2, re::mtl::RenderCommandEncoder *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::DynamicArray<re::ViewConstantsLateLatch::LegacyPatchCommand>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 16 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::ViewConstantsLateLatch::LegacyPatchCommand>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 32 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 57)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 128, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 7;
          result = (*(*result + 32))(result, a2 << 7, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], v5[2] << 7);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::internal::Callable<re::RenderGraphContext::makeFullscreenDrawCall(re::MaterialInstance const*,char const*,re::MaterialParameterTable const*,re::MaterialParameterTable const*,re::MaterialParameterTable const*,re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false> const*,re::MeshPart const*)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D06340;
  return result;
}

void *re::internal::Callable<re::RenderGraphContext::makeFullscreenDrawCall(re::MaterialInstance const*,char const*,re::MaterialParameterTable const*,re::MaterialParameterTable const*,re::MaterialParameterTable const*,re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false> const*,re::MeshPart const*)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D06340;
  return result;
}

double re::DrawCall::DrawCall(re::DrawCall *this)
{
  *this = *this & 0xFCB0 | 0x107;
  *(this + 2) = 0x1000000;
  *(this + 6) = 0xFFFF0000FFFFLL;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0xFFFFFFFF00000000;
  *(this + 48) = 0;
  *(this + 7) = 0;
  *(this + 9) = 0;
  *(this + 80) = 0;
  *(this + 28) = 0;
  *(this + 72) = 0;
  *(this + 50) = 0;
  *(this + 84) = 0;
  *(this + 92) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  result = -5.48612423e303;
  *(this + 147) = 0xFF00000007FFFFFFLL;
  *(this + 156) = 0;
  *(this + 41) = 0;
  *(this + 176) = 0;
  return result;
}

void re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

void re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, v9);
      re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v4, *(v7 + v5 + 8) % *(v4 + 24));
        v7 = *(a2 + 16);
        v8 = *(v7 + v5 + 16);
        *(result + 8) = *(v7 + v5 + 8);
        *(result + 16) = v8;
        *(v7 + v5 + 16) = 0;
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 24;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,8ul,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false>::~SmallHashTable(uint64_t a1)
{
  re::DynamicInlineArray<re::KeyValuePair<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>>,8ul>::clear((a1 + 16));
  re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::deinit((a1 + 928));
  *a1 = 0;
  *(a1 + 8) = 0;
  re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::deinit((a1 + 928));
  re::DynamicInlineArray<re::KeyValuePair<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>>,8ul>::clear((a1 + 16));
  return a1;
}

void *re::DynamicInlineArray<re::KeyValuePair<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>>,8ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 112 * *result;
    v3 = (result + 4);
    do
    {
      v3 += 112;
      v2 -= 112;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

double re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v3 = *(a1 + 8);
        }

        v4 += 112;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::DynamicArray<re::mtl::RenderCommandEncoder>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 16 * v4;
        do
        {
          re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v3);
          v3 = (v3 + 16);
          v5 -= 16;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::add(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::allocEntry(a1, v10, v9);
    *(v8 + 4) = *a2;
    result = re::DynamicOverflowArray<re::AABB,2ul>::DynamicOverflowArray(v8 + 16, a3);
    ++*(a1 + 40);
  }

  return result;
}

void re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 112 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::findEntry<unsigned int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 112 * v6 + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 112 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 112 * v8 + 4) == *a2)
      {
        break;
      }

      v8 = *(v7 + 112 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * (*(v18 - 12) ^ (*(v18 - 12) >> 30));
                v20 = re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31)) % *(a1 + 24));
                *(v20 + 4) = *(v18 - 12);
                re::DynamicOverflowArray<re::AABB,2ul>::DynamicOverflowArray(v20 + 16, v18);
              }

              ++v17;
              v18 += 112;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 112 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 112 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 112 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 112 * v4;
}

uint64_t re::DynamicOverflowArray<re::AABB,2ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 40) = 0;
  if ((*(a2 + 16) & 1) == 0)
  {
    *(a1 + 16) = 3;
    v5 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v5;
    *a2 = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = v6;
    *(a2 + 16) = *(a2 + 16) & 0xFFFFFFFE | *(a1 + 16) & 1;
    *(a1 + 16) &= ~1u;
    v7 = *(a1 + 32);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = v7;
LABEL_18:
    v14 = 2;
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (!v8)
  {
    *a1 = *a2;
    goto LABEL_18;
  }

  *a1 = *a2;
  re::DynamicOverflowArray<re::AABB,2ul>::setCapacity(a1, v8);
  if (*(a2 + 16))
  {
    v9 = (a2 + 32);
  }

  else
  {
    v9 = *(a2 + 40);
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = v4;
  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 40);
  }

  if (v10)
  {
    memmove(v12, v9, 32 * v10);
    v11 = *(a1 + 16);
  }

  if ((v11 & 1) == 0)
  {
    v4 = *(a1 + 40);
  }

  if (*(a2 + 16))
  {
    v13 = a2 + 32;
  }

  else
  {
    v13 = *(a2 + 40);
  }

  memcpy(&v4[32 * *(a1 + 8)], (v13 + 32 * *(a1 + 8)), 32 * (v8 - *(a1 + 8)));
  *(a1 + 8) = v8;
  *(a2 + 8) = 0;
  v14 = 4;
LABEL_19:
  *(a2 + 16) = ((*(a2 + 16) & 0xFFFFFFFE) + v14) | *(a2 + 16) & 1;
  *(a1 + 16) += 2;
  return a1;
}

void *re::DynamicOverflowArray<re::AABB,2ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::AABB,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = result[4];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = result + 4;
        v15 = v4[5];
        if (v7)
        {
          v16 = v4 + 4;
        }

        else
        {
          v16 = v4[5];
        }

        memcpy(v14, v16, 32 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 59)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 32, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 32 * a2;
        v10 = (*(*v5 + 32))(*result, 32 * a2, 16);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 4;
          }

          else
          {
            v13 = v4[5];
          }

          result = memcpy(v10, v13, 32 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[5]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[4] = a2;
          v4[5] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re19ViewportPercentDataE";
  if (("N2re19ViewportPercentDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re19ViewportPercentDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::VRRData>(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::VRRData>(BOOL)::info = re::introspect_VRRData(0);
  }

  v4 = strlen(*(re::introspect<re::VRRData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::VRRData>(BOOL)::info + 6), v4, 0, v10);
    v5 = (v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0];
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::SceneScope>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re10SceneScopeE";
  if (("N2re10SceneScopeE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re10SceneScopeE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::SceneIndexData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re14SceneIndexDataE";
  if (("N2re14SceneIndexDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re14SceneIndexDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::StencilInfoData>(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::StencilInfoData>(BOOL)::info = re::introspect_StencilInfoData(0);
  }

  v4 = strlen(*(re::introspect<re::StencilInfoData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::StencilInfoData>(BOOL)::info + 6), v4, 0, v10);
    v5 = (v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0];
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::ViewportData>(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::ViewportData>(BOOL)::info = re::introspect_ViewportData(0);
  }

  v4 = strlen(*(re::introspect<re::ViewportData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::ViewportData>(BOOL)::info + 6), v4, 0, v10);
    v5 = (v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0];
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::TintContextData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re15TintContextDataE";
  if (("N2re15TintContextDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re15TintContextDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::TriangleFillModeData>(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::TriangleFillModeData>(BOOL)::info = re::introspect_TriangleFillModeData(0);
  }

  v4 = strlen(*(re::introspect<re::TriangleFillModeData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::TriangleFillModeData>(BOOL)::info + 6), v4, 0, v10);
    v5 = (v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0];
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::PortalViewData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re14PortalViewDataE";
  if (("N2re14PortalViewDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re14PortalViewDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::PipelineCompilationData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re23PipelineCompilationDataE";
  if (("N2re23PipelineCompilationDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re23PipelineCompilationDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)79>::end(uint64_t result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[640].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[640].i64[0] = v5;
      v6 = v3[640].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[640].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[641] = vaddq_s64(v3[641], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::RenderGraphTargetHandle,8ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<re::RenderGraphTargetHandle,8ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 8 || (v7 & 1) == 0))
    {
      if (a2 < 9)
      {
        v14 = a1 + 3;
        if (v7)
        {
          v15 = a1 + 3;
        }

        else
        {
          v15 = a1[4];
        }

        if (v9)
        {
          v16 = &v15[2 * v9];
          do
          {
            *v14 = 0;
            v14[1] = -1;
            *v14 = *v15;
            v14[1] = v15[1];
            v15 += 2;
            v14 += 2;
          }

          while (v15 != v16);
        }

        result = (*(*result + 40))(result);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 60)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 16, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 16 * a2;
        result = (*(*result + 32))(result, 16 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = a1 + 3;
          }

          else
          {
            v13 = a1[4];
          }

          v17 = a1[1];
          if (v17)
          {
            v18 = &v13[2 * v17];
            v19 = result;
            do
            {
              *v19 = 0;
              v19[1] = -1;
              *v19 = *v13;
              v19[1] = v13[1];
              v13 += 2;
              v19 += 2;
            }

            while (v13 != v18);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(uint64_t a1, uint64_t a2, const char **a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = strlen(*a3);
  if (v7)
  {
    MurmurHash3_x64_128(v6, v7, 0, v10);
    v8 = (v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0];
  }

  else
  {
    v8 = 0;
  }

  return re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a2, a3, v8, a1);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_17;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_17:
    v8 = 0x7FFFFFFF;
    goto LABEL_18;
  }

  v9 = *(result + 16);
  v10 = *a2;
  v11 = v9 + 224 * v8;
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = (v11 + 17);
  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = strcmp(v15, *a2);
  if (!result)
  {
    v6 = v8;
    goto LABEL_17;
  }

  v16 = *(v9 + 224 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v16 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v17 = v16;
      v18 = v9 + 224 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = v18 + 17;
      v22 = ((v19 & 1) != 0 ? v20 : v21);
      result = strcmp(v22, v10);
      if (!result)
      {
        break;
      }

      v16 = *(v9 + 224 * v17) & 0x7FFFFFFF;
      v8 = v17;
      if (v16 == 0x7FFFFFFF)
      {
        v8 = v17;
        goto LABEL_18;
      }
    }

    v6 = v17;
  }

LABEL_18:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 2304 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 2304 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 2304 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 2304 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::DynamicOverflowArray<re::PatchTransform,5ul>::ensureCapacity(uint64_t result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 8);
    if (*(result + 16))
    {
      v3 = 5;
    }

    else
    {
      v3 = *(result + 24);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::PatchTransform,5ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 8);
    result = re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity(v1, v4 + 1);
    *(v1 + 16) += 2;
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::PatchTransform,5ul>::growCapacity(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity(v3, v2);
    *(v3 + 16) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 5)
    {
      return result;
    }

    v5 = 10;
  }

  else
  {
    v4 = *(result + 24);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity(result, a2);
}

void *re::DynamicArray<re::mtl::RenderCommandEncoder>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::mtl::RenderCommandEncoder>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
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
        v10 = (v8 + 16 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v8 = 0;
          *v11++ = v12;
          *(v8 + 1) = 0;
          re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v8);
          v8 = (v8 + 16);
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

double re::unpackHalf3Data(re *this, const void *a2, float16x4_t a3)
{
  v3 = this + 8 * a2;
  a3.i32[0] = *v3;
  *&result = vcvtq_f32_f16(a3).u64[0];
  _H1 = *(v3 + 2);
  __asm { FCVT            S1, H1 }

  return result;
}

{
  v3 = this + 8 * a2;
  a3.i32[0] = *v3;
  *&result = vcvtq_f32_f16(a3).u64[0];
  _H1 = *(v3 + 2);
  __asm { FCVT            S1, H1 }

  return result;
}

int8x8_t re::unpackChar3NormalizedData(re *this, const void *a2)
{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  v4 = vdiv_f32(vcvt_f32_s32(v3), vdup_n_s32(0x42FE0000u));
  __asm { FMOV            V1.2S, #1.0 }

  return vbsl_s8(vcgt_f32(v4, _D1), _D1, v4);
}

{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  v4 = vdiv_f32(vcvt_f32_s32(v3), vdup_n_s32(0x42FE0000u));
  __asm { FMOV            V1.2S, #1.0 }

  return vbsl_s8(vcgt_f32(v4, _D1), _D1, v4);
}

float32x2_t re::unpackUChar3NormalizedData(re *this, const void *a2)
{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  return vdiv_f32(vcvt_f32_u32(v3), vdup_n_s32(0x437F0000u));
}

{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  return vdiv_f32(vcvt_f32_u32(v3), vdup_n_s32(0x437F0000u));
}

uint64_t re::unpackFloat3Data(re *this, const void *a2)
{
  return *(this + 12 * a2);
}

{
  return *(this + 12 * a2);
}

uint64_t re::RenormalizationDeformer::init(uint64_t result, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(result + 8) & 1) == 0)
  {
    *(result + 8) = 1;
    v3 = *(a2 + 16);
    *(result + 16) = *(v3 + 32);
    if (*(v3 + 208))
    {
      if (*(v3 + 306) == 1)
      {
        v4 = 0;
        v10 = result;
        v5 = result + 24;
        do
        {
          v7 = 0;
          v13 = 0;
          v16 = 0;
          memset(v19, 0, sizeof(v19));
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          do
          {
            memset(v26, 0, sizeof(v26));
            re::DynamicString::setCapacity(v26, 0);
            v32 = 0u;
            v31 = 0u;
            v30 = 0u;
            v29 = 0u;
            LOBYTE(v29) = (v4 >> v7) & 1;
            v27 = 53;
            v28 = v7;
            v8 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v19, v26);
            v6 = v26[0];
            if (v26[0] && (v26[1] & 1) != 0)
            {
              v6 = (*(*v26[0] + 40))(v8);
            }

            ++v7;
          }

          while (v7 != 4);
          ComputePipelineState = re::getOrCreateComputePipelineState(*(a2 + 16), &v11);
          NS::SharedPtr<MTL::Buffer>::operator=((v5 + 8 * v4), ComputePipelineState);
          if (v24)
          {

            v24 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v19);
          if (v16 == 1 && v17)
          {
            if (BYTE8(v17))
            {
              (*(*v17 + 40))();
            }

            v17 = 0u;
            v18 = 0u;
          }

          if (v13 == 1 && v14)
          {
            if (BYTE8(v14))
            {
              (*(*v14 + 40))();
            }

            v15 = 0u;
            v14 = 0u;
          }

          result = v11;
          if (v11)
          {
            if (v12)
            {
              result = (*(*v11 + 40))();
            }
          }

          ++v4;
        }

        while (v4 != 16);
        *(v10 + 9) = 1;
      }
    }
  }

  return result;
}

uint64_t re::RenormalizationDeformer::addDeformationInstance@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if ((*a2 & 1) != 0 || *(result + 8) == 1 && *(result + 9) != 1)
  {
    v4 = 0;
    v5 = 4;
  }

  else
  {
    v4 = 1;
    v5 = 28;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = 3;
  *(a4 + 16) = v5;
  LODWORD(v5) = *a3;
  if (v5 == 255)
  {
    v5 = *(a3 + 2);
    if (v5)
    {
      if (*(v5 + 208))
      {
        LOBYTE(v5) = v4;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  *(a4 + 24) = v5;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t re::RenormalizationDeformer::allocateBuffers(re *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, uint64_t a4, uint64_t *a5)
{
  v87 = *MEMORY[0x1E69E9840];
  v8 = *a5;
  v9 = *(*a5 + 48);
  re::globalAllocators(a1);
  v10 = (*(*a2 + 32))(a2, 24, 8);
  v12 = v10;
  v10[1] = v9;
  v10[2] = 0;
  *v10 = a2;
  if (v9)
  {
    if (v9 >= 0x492492492492493)
    {
LABEL_49:
      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 56, v9);
      _os_crash();
      __break(1u);
      goto LABEL_50;
    }

    v5 = 56 * v9;
    v10 = (*(*a2 + 32))(a2, 56 * v9, 8);
    v12[2] = v10;
    if (!v10)
    {
LABEL_50:
      re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_51:
      re::internal::assertLog(5, v44, "assertion failure: '%s' (%s:line %i) Invalid deformation execution mode: %u.", "!Unreachable code", "allocateBuffers", 228, a4);
      _os_crash();
      __break(1u);
    }

    v14 = v10;
    if (v9 != 1)
    {
      v5 -= 56;
      bzero(v10, v5);
      v14 = (v14 + v5);
    }

    v14[6] = 0;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
  }

  v15 = re::globalAllocators(v10)[2];
  *&v82 = &unk_1F5D06408;
  *(&v83 + 1) = v15;
  *&v84 = &v82;
  v16 = (*(*a2 + 16))(a2, v12, &v82);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v82);
  if (v9)
  {
    v17 = 0;
    v71 = v8;
    v72 = v9;
    v70 = v16;
    while (1)
    {
      v18 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v8 + 8, v17);
      v19 = *(v18 + 8);
      v20 = a5[6];
      if (v20 <= v19)
      {
        break;
      }

      v21 = v18;
      v22 = a5[5] + 312 * v19;
      v23 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a5[1], v19);
      if ((*v22 & 4) != 0)
      {
        v24 = v23;
        v25 = *(a1 + 2);
        v8 = WORD1(*(*(v23 + 368) + 16));
        v5 = *(v25 + 24);
        if (v5 <= v8)
        {
          goto LABEL_43;
        }

        v26 = *(*(v25 + 40) + 16 * WORD1(*(*(v23 + 368) + 16))) + 864 * *(*(v23 + 368) + 16);
        v8 = *(v23 + 392);
        v5 = *(v26 + 56);
        if (v5 <= v8)
        {
          goto LABEL_44;
        }

        v5 = *(v16 + 8);
        if (v5 <= v17)
        {
          goto LABEL_45;
        }

        v27 = *(v26 + 64) + 544 * *(v23 + 392);
        v28 = (*(v16 + 16) + 56 * v17);
        v29 = v27;
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29 && !v30[8]);
        *&v82 = 0x66739F42610D3BC2;
        v31 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v30 + 5, &v82);
        if (v31 == -1)
        {
          v5 = 0;
        }

        else
        {
          v5 = v30[6] + 16 * v31 + 8;
        }

        v32 = v27;
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32 && !v33[8]);
        *&v82 = 0x535FC835C0260B06;
        v34 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v33 + 5, &v82);
        if (v34 != -1 && v5)
        {
          v9 = v34;
          v35 = v33[6];
          v28[3] = *(v27 + 448);
          v36 = re::AttributeTable::buffers(v27);
          v38 = *v5;
          if (v37 <= v38)
          {
            goto LABEL_46;
          }

          v39 = v35 + 16 * v9;
          v9 = 24;
          v28[4] = v36 + 24 * v38;
          v40 = re::AttributeTable::buffers(v27);
          v42 = *(v39 + 8);
          if (v41 <= v42)
          {
            goto LABEL_47;
          }

          v28[5] = v40 + 24 * *(v39 + 8);
          LOBYTE(v82) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v22, 1u);
          v43 = *(*(v22 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v22 + 56), &v82) + 20);
          LOBYTE(v82) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v22, 1u);
          v5 = v43 / *(*(v22 + 128) + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v22 + 120), &v82) + 4);
          v9 = 12 * v5;
          if (a4)
          {
            v45 = v27;
            if (a4 != 1)
            {
              goto LABEL_51;
            }

            do
            {
              v46 = v45;
              v45 = *v45;
            }

            while (v45 && !v46[8]);
            *&v82 = 0x30989BAE345;
            v47 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v46 + 5, &v82);
            if (v47 == -1)
            {
              v48 = 0;
            }

            else
            {
              v48 = (v46[6] + 16 * v47 + 8);
            }

            v66 = v66 & 0xFFFF000000000000 | 0x1010001000CLL;
            v67 = v67 & 0xFFFFFF0000000000 | 0x1E00000000;
            v49 = re::DeformationBufferAllocator::alloc(*(v24 + 360), a5[2], 2, v66, v67, *(v21 + 16), 12 * v5);
            v50 = re::DeformationBufferAllocator::allocationData(*(v24 + 360), *(v21 + 16), v49);
            WORD2(v82) = 257;
            LODWORD(v82) = 65548;
            BYTE12(v82) = 30;
            DWORD2(v82) = 0;
            re::DeformationVertexBufferState::setOutputBuffer(v22, 2, 1, (v50 + 24), &v82);
            if (v48)
            {
              v51 = re::AttributeTable::buffers(v27);
              v53 = *v48;
              if (v52 <= v53)
              {
                goto LABEL_48;
              }

              v28[6] = v51 + 24 * *v48;
              v64 = v64 & 0xFFFF000000000000 | 0x1010001000CLL;
              v65 = v65 & 0xFFFFFF0000000000 | 0x1E00000000;
              v54 = re::DeformationBufferAllocator::alloc(*(v24 + 360), a5[2], 3, v64, v65, *(v21 + 16), 12 * v5);
              v62 = v62 & 0xFFFF000000000000 | 0x1010001000CLL;
              v63 = v63 & 0xFFFFFF0000000000 | 0x1E00000000;
              v55 = re::DeformationBufferAllocator::alloc(*(v24 + 360), a5[2], 4, v62, v63, *(v21 + 16), 12 * v5);
              v56 = re::DeformationBufferAllocator::allocationData(*(v24 + 360), *(v21 + 16), v54);
              v57 = re::DeformationBufferAllocator::allocationData(*(v24 + 360), *(v21 + 16), v55);
              WORD2(v82) = 257;
              LODWORD(v82) = 65548;
              BYTE12(v82) = 30;
              DWORD2(v82) = 0;
              re::DeformationVertexBufferState::setOutputBuffer(v22, 3, 1, (v56 + 24), &v82);
              WORD2(v82) = 257;
              LODWORD(v82) = 65548;
              BYTE12(v82) = 30;
              DWORD2(v82) = 0;
              re::DeformationVertexBufferState::setOutputBuffer(v22, 4, 1, (v57 + 24), &v82);
            }

            re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 4uLL, 4uLL, &v82);
            v58 = v82;
            v59 = v83;
            v60 = *(&v82 + 1);
            *(v82 + DWORD2(v82)) = v5;
            *v28 = v58;
            v28[1] = v60;
            v28[2] = v59;
          }

          else
          {
            re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 12 * v5, 0x10uLL, &v82);
            LOWORD(v75) = 257;
            v74 = 65548;
            LOBYTE(v76) = 30;
            HIDWORD(v75) = 0;
            re::DeformationVertexBufferState::setOutputBuffer(v22, 2u, 0, &v82, &v74);
          }
        }

        v8 = v71;
        v9 = v72;
        v16 = v70;
      }

      if (++v17 == v9)
      {
        return v16;
      }
    }

    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *(v18 + 8), v20);
    _os_crash();
    __break(1u);
LABEL_43:
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v74 = 136315906;
    v75 = "operator[]";
    v76 = 1024;
    v77 = 797;
    v78 = 2048;
    v79 = v8;
    v80 = 2048;
    v81 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v74 = 136315906;
    v75 = "operator[]";
    v76 = 1024;
    v77 = 476;
    v78 = 2048;
    v79 = v8;
    v80 = 2048;
    v81 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_45:
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v74 = 136315906;
    v75 = "operator[]";
    v76 = 1024;
    v77 = 468;
    v78 = 2048;
    v79 = v17;
    v80 = 2048;
    v81 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_46:
    re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v38, v37);
    _os_crash();
    __break(1u);
LABEL_47:
    re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v42, v41);
    _os_crash();
    __break(1u);
LABEL_48:
    re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v53, v52);
    _os_crash();
    __break(1u);
    goto LABEL_49;
  }

  return v16;
}

unint64_t re::DeformationBufferAllocator::allocationData(re::DeformationBufferAllocator *this, unsigned int a2, unsigned int a3)
{
  if (*(this + 1) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(this + 2) + 72 * a2 + 16;

  return re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](v3, a3);
}

uint64_t re::RenormalizationDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, void *a4)
{
  v4 = a4;
  v52 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Renormalization");
  v8 = *(v7 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v45 = a2;
    v46 = v4;
    v43 = *(v7 + 48);
    v44 = v7;
    do
    {
      v11 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v7 + 8, v10);
      v13 = *(a2 + 8);
      if (v13 <= v10)
      {
        memset(v51, 0, sizeof(v51));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        *&v48[14] = 468;
        *&v48[18] = 2048;
        *&v48[20] = v10;
        v49 = 2048;
        v50 = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_20:
        re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v16, v17);
        _os_crash();
        __break(1u);
      }

      v14 = *(a2 + 16);
      v15 = v14 + v9;
      if (*(v14 + v9 + 32) && *(v15 + 40))
      {
        v16 = *(v11 + 8);
        v17 = v4[6];
        if (v17 <= v16)
        {
          goto LABEL_20;
        }

        v18 = (v4[5] + 312 * v16);
        LOBYTE(v51[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v19 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v51) + 20);
        LOBYTE(v51[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v20 = v14 + v9;
        v21 = v19 / *(v18[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 15, v51) + 4) - 1;
        if (*(v14 + v9 + 48))
        {
          LOBYTE(v51[0]) = 0;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
          if (*(v18[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 15, v51) + 16) == 36)
          {
            v22 = 144;
          }

          else
          {
            v22 = 80;
          }

          v23 = [*(a1 + v22) maxTotalThreadsPerThreadgroup];
          v24 = *(a1 + v22);
          v25 = (v21 + v23) / v23;
          [*this setComputePipelineState:v24];
          LOBYTE(v51[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 2u);
          v26 = *(v18[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 23, v51) + 24);
          LOBYTE(v51[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 2u);
          [*this setBuffer:v26 offset:*(v18[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 23, v51) + 16), 0}];
          LOBYTE(v51[0]) = 3;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 3u);
          v27 = *(v18[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 23, v51) + 24);
          LOBYTE(v51[0]) = 3;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 3u);
          [*this setBuffer:v27 offset:*(v18[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 23, v51) + 16), 1}];
          LOBYTE(v51[0]) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 4u);
          v28 = *(v18[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 23, v51) + 24);
          LOBYTE(v51[0]) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 4u);
          [*this setBuffer:v28 offset:*(v18[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 23, v51) + 16), 2}];
          LOBYTE(v51[0]) = 0;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
          v29 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v51) + 24);
          LOBYTE(v51[0]) = 0;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
          [*this setBuffer:v29 offset:*(v18[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 7, v51) + 16), 3}];
          LOBYTE(v51[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
          v30 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v51) + 24);
          LOBYTE(v51[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
          [*this setBuffer:v30 offset:*(v18[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 7, v51) + 16), 4}];
          v31 = *(v20 + 48);
          v32 = *v31;
          v33 = *(v31 + 4);
          v34 = *this;
          v35 = 5;
        }

        else
        {
          LOBYTE(v51[0]) = 0;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
          if (*(v18[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 15, v51) + 16) == 36)
          {
            v36 = 96;
          }

          else
          {
            v36 = 32;
          }

          v23 = [*(a1 + v36) maxTotalThreadsPerThreadgroup];
          v37 = *(a1 + v36);
          v25 = (v21 + v23) / v23;
          [*this setComputePipelineState:v37];
          LOBYTE(v51[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 2u);
          v38 = *(v18[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 23, v51) + 24);
          LOBYTE(v51[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 2u);
          [*this setBuffer:v38 offset:*(v18[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 23, v51) + 16), 0}];
          LOBYTE(v51[0]) = 0;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
          v39 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v51) + 24);
          LOBYTE(v51[0]) = 0;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
          [*this setBuffer:v39 offset:*(v18[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 7, v51) + 16), 3}];
          LOBYTE(v51[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
          v40 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v51) + 24);
          LOBYTE(v51[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
          v33 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v51) + 16);
          v34 = *this;
          v32 = v40;
          v35 = 4;
        }

        [v34 setBuffer:v32 offset:v33 atIndex:v35];
        [*this setBuffer:**(v15 + 32) offset:*(*(v15 + 32) + 16) atIndex:6];
        [*this setBuffer:**(v15 + 40) offset:*(*(v15 + 40) + 16) atIndex:7];
        [*this setBuffer:*(v20 + 16) offset:*(v20 + 8) atIndex:8];
        v41 = *this;
        *&v51[0] = v25;
        *(v51 + 8) = vdupq_n_s64(1uLL);
        *v48 = v23;
        *&v48[8] = *(v51 + 8);
        [v41 dispatchThreadgroups:v51 threadsPerThreadgroup:v48];
        a2 = v45;
        v4 = v46;
        v8 = v43;
        v7 = v44;
      }

      ++v10;
      v9 += 56;
    }

    while (v8 != v10);
  }

  return [*this popDebugGroup];
}

void re::RenormalizationDeformer::deformCPU(uint64_t a1, uint64_t a2, void *a3)
{
  v111 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v96 = 0;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  v95 = 0;
  v86 = *(v3 + 48);
  if (!v86)
  {
    return;
  }

  v4 = a3;
  v5 = a2;
  v6 = 0;
  v79 = v3;
  do
  {
    v7 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v3 + 8, v6);
    v9 = *(v5 + 8);
    if (v9 <= v6)
    {
      goto LABEL_56;
    }

    v10 = (*(v5 + 16) + 56 * v6);
    if (!v10[4] || !v10[5])
    {
      goto LABEL_43;
    }

    v11 = *(v7 + 8);
    v12 = v4[6];
    if (v12 <= v11)
    {
      goto LABEL_57;
    }

    v13 = (v4[5] + 312 * v11);
    v85 = *(v5 + 16) + 56 * v6;
    v14 = v10[3];
    LOBYTE(v106) = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
    v84 = *(v13[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, &v106) + 20);
    LOBYTE(v106) = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
    v83 = *(v13[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 15, &v106) + 4);
    LOBYTE(v106) = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
    v87 = v13;
    v16 = *(v13[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 15, &v106) + 16);
    if (v16 <= 0x19)
    {
      if (v16 == 8)
      {
        v17 = re::unpackUChar3NormalizedData;
      }

      else
      {
        if (v16 != 11)
        {
          goto LABEL_58;
        }

        v17 = re::unpackChar3NormalizedData;
      }

LABEL_15:
      v18 = v17;
      goto LABEL_16;
    }

    v18 = re::unpackHalf3Data;
    if (v16 != 26)
    {
      if (v16 != 30)
      {
        goto LABEL_58;
      }

      v17 = re::unpackFloat3Data;
      goto LABEL_15;
    }

LABEL_16:
    v82 = v6;
    v94 = 0;
    ++v95;
    if (v93 < v14 / 3)
    {
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(&v92, v14 / 3);
    }

    LOBYTE(v106) = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
    v19 = v13[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, &v106);
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    LOBYTE(v106) = 0;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 0);
    if (*(v13[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 15, &v106) + 16) == 36)
    {
      LOBYTE(v106) = 0;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 0);
      v22 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, &v106);
      if (v14)
      {
        v24 = 0;
        v25 = v13[8] + 32 * v22;
        v9 = *(v25 + 20) >> 2;
        v6 = *(v25 + 8) + *(v25 + 16) + 4;
        while (v24 < v9)
        {
          v26 = (v18)(v20 + v21, *(v6 - 4));
          v28 = v24 + 1;
          if (v24 + 1 >= v9)
          {
            goto LABEL_53;
          }

          v29 = v26;
          v30 = v27;
          v31 = (v18)(v20 + v21, *v6);
          v33 = v24 + 2;
          if (v24 + 2 >= v9)
          {
            goto LABEL_55;
          }

          v34.i64[0] = v29;
          v34.i64[1] = v30;
          v90 = v34;
          v34.i64[0] = v31;
          v34.i64[1] = v32;
          v88 = v34;
          v35.i64[0] = (v18)(v20 + v21, *(v6 + 4));
          v35.i64[1] = v36;
          v37 = vsubq_f32(v88, v90);
          v38 = vsubq_f32(v35, v90);
          v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), vnegq_f32(v37)), v38, vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL));
          v38.i32[0] = vextq_s8(v39, v39, 8uLL).u32[0];
          v38.i32[1] = v39.i32[0];
          *&v106 = v38.i64[0];
          DWORD2(v106) = v39.i32[1];
          re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add(&v92, &v106);
          v24 += 3;
          v6 += 12;
          if (v24 >= v14)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_50;
      }
    }

    else
    {
      LOBYTE(v106) = 0;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 0);
      v40 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, &v106);
      if (v14)
      {
        v24 = 0;
        v42 = v13[8] + 32 * v40;
        v9 = *(v42 + 20) >> 1;
        v6 = *(v42 + 8) + *(v42 + 16) + 4;
        while (v24 < v9)
        {
          v43 = (v18)(v20 + v21, *(v6 - 4));
          v45 = v24 + 1;
          if (v24 + 1 >= v9)
          {
            goto LABEL_52;
          }

          v46 = v43;
          v47 = v44;
          v48 = (v18)(v20 + v21, *(v6 - 2));
          v50 = v24 + 2;
          if (v24 + 2 >= v9)
          {
            goto LABEL_54;
          }

          v51.i64[0] = v46;
          v51.i64[1] = v47;
          v91 = v51;
          v51.i64[0] = v48;
          v51.i64[1] = v49;
          v89 = v51;
          v52 = *v6;
          v6 += 6;
          v53.i64[0] = (v18)(v20 + v21, v52);
          v53.i64[1] = v54;
          v55 = vsubq_f32(v89, v91);
          v56 = vsubq_f32(v53, v91);
          v57 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL), vnegq_f32(v55)), v56, vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL));
          v56.i32[0] = vextq_s8(v57, v57, 8uLL).u32[0];
          v56.i32[1] = v57.i32[0];
          *&v106 = v56.i64[0];
          DWORD2(v106) = v57.i32[1];
          re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add(&v92, &v106);
          v24 += 3;
          if (v24 >= v14)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_51;
      }
    }

LABEL_32:
    v58 = re::BufferView::contents(*(v85 + 32));
    v59 = re::BufferView::contents(*(v85 + 40));
    LOBYTE(v106) = 2;
    v9 = v87;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v87, 2u);
    v60 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v87 + 184), &v106);
    v4 = a3;
    v6 = v82;
    v3 = v79;
    v5 = a2;
    if (v84 >= v83)
    {
      v63 = 0;
      v64 = *(v87 + 192) + 32 * v60;
      v65 = *(v64 + 8) + *(v64 + 16);
      v66 = *(v64 + 20) / 0xCuLL;
      v24 = v94;
      v67 = v96;
      while (1)
      {
        v68 = v63 ? *(v59 - 4 + 4 * v63) : 0;
        v69 = *(v59 + 4 * v63);
        v70 = 0uLL;
        if (v68 < v69)
        {
          break;
        }

LABEL_41:
        if (v63 == v66)
        {
          goto LABEL_49;
        }

        v62 = vmulq_f32(v70, v70);
        *&v76 = v62.f32[2] + vaddv_f32(*v62.f32);
        *v62.f32 = vrsqrte_f32(v76);
        *v62.f32 = vmul_f32(*v62.f32, vrsqrts_f32(v76, vmul_f32(*v62.f32, *v62.f32)));
        v77 = vmulq_n_f32(v70, vmul_f32(*v62.f32, vrsqrts_f32(v76, vmul_f32(*v62.f32, *v62.f32))).f32[0]);
        v78 = v65 + 12 * v63;
        *v78 = v77.i64[0];
        *(v78 + 8) = v77.i32[2];
        if (++v63 >= (v84 / v83))
        {
          goto LABEL_43;
        }
      }

      v71 = v69 - v68;
      v72 = (v58 + 4 * v68);
      while (1)
      {
        v74 = *v72++;
        v73 = v74;
        if (v24 <= v74)
        {
          break;
        }

        v75 = v67 + 12 * v73;
        v62.i64[0] = *v75;
        v62.i32[2] = *(v75 + 8);
        v70 = vaddq_f32(v70, v62);
        if (!--v71)
        {
          goto LABEL_41;
        }
      }

      v97 = 0;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v106 = 0u;
      v9 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v98 = 136315906;
      v99 = "operator[]";
      v100 = 1024;
      v101 = 789;
      v102 = 2048;
      v103 = v73;
      v104 = 2048;
      v105 = v24;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_49:
      re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v66, v66);
      _os_crash();
      __break(1u);
LABEL_50:
      re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v24, v9);
      _os_crash();
      __break(1u);
LABEL_51:
      re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v24, v9);
      _os_crash();
      __break(1u);
LABEL_52:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v45, v9);
      _os_crash();
      __break(1u);
LABEL_53:
      re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v28, v9);
      _os_crash();
      __break(1u);
LABEL_54:
      re::internal::assertLog(6, v49, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v50, v9);
      _os_crash();
      __break(1u);
LABEL_55:
      re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v33, v9);
      _os_crash();
      __break(1u);
LABEL_56:
      v97 = 0;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v106 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v98 = 136315906;
      v99 = "operator[]";
      v100 = 1024;
      v101 = 468;
      v102 = 2048;
      v103 = v6;
      v104 = 2048;
      v105 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_57:
      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v11, v12);
      _os_crash();
      __break(1u);
LABEL_58:
      re::internal::assertLog(5, v15, "assertion failure: '%s' (%s:line %i) Unsupported packed vertex format: %u.", "!Unreachable code", "vertexUnpackFunctionForFormat", 45, v16);
      _os_crash();
      __break(1u);
    }

LABEL_43:
    ++v6;
  }

  while (v6 != v86);
  if (v92)
  {
    if (v96)
    {
      (*(*v92 + 40))();
    }
  }
}

void re::RenormalizationDeformer::~RenormalizationDeformer(re::RenormalizationDeformer *this)
{
  for (i = 144; i != 16; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }
}

{
  v2 = 144;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (v2 == 16)
    {

      JUMPOUT(0x1E6906520);
    }
  }
}

uint64_t re::internal::Callable<re::RenormalizationDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  result = **a2;
  if (result)
  {
    if (v2[1])
    {
      result = (*(*result + 40))(result, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }

  return result;
}

void *re::internal::Callable<re::RenormalizationDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D06408;
  return result;
}

void *re::internal::Callable<re::RenormalizationDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D06408;
  return result;
}

void re::TextManager::~TextManager(re::TextManager *this)
{
  re::GrowableLinearAllocator::deinit((this + 120));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 26);
  re::Allocator::~Allocator((this + 120));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 7);
  re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::deinit(this + 1);
}

double re::TextManager::deinit(re::TextManager *this)
{
  *(this + 112) = 0;
  v2 = *(this + 13);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::deinit(v2 + 320);
    v4 = *(v2 + 312);
    if (v4)
    {

      *(v2 + 312) = 0;
    }

    if (*(v2 + 256) == 1)
    {
      re::DynamicString::deinit((v2 + 264));
    }

    if (*(v2 + 200) == 1)
    {
      re::DynamicString::deinit((v2 + 208));
    }

    re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v2 + 152));
    re::TextRenderGroupData::~TextRenderGroupData((v2 + 8));
    if (*v2)
    {

      *v2 = 0;
    }

    (*(*v3 + 40))(v3, v2);
    *(this + 13) = 0;
  }

  v5 = *(this + 22);
  if (v5)
  {
    v6 = 0;
    v7 = *(this + 9);
    while (1)
    {
      v8 = *v7;
      v7 += 10;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(this + 22);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 != v5)
  {
    do
    {
      re::internal::destroyPersistent<re::FontAssetInternal>("deinit", 170, *(*(this + 9) + 40 * v6 + 24));
      v9 = *(this + 22);
      if (v9 <= v6 + 1)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = *(this + 22);
      }

      while (v10 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(*(this + 9) + 40 * v6) & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      LODWORD(v6) = v10;
LABEL_25:
      ;
    }

    while (v6 != v9);
  }

  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 7);
  re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::deinit(this + 1);
  *this = 0;

  return re::GrowableLinearAllocator::deinit((this + 120));
}

re *re::internal::destroyPersistent<re::FontAssetInternal>(re *result, uint64_t a2, id *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    if (*a3)
    {

      *a3 = 0;
    }

    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

double re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 8;
      do
      {
        v6 = a1[2];
        v7 = *(v6 + v5);
        if (v7 < 0)
        {
          *(v6 + v5) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v5 + 8));
          v3 = *(a1 + 8);
        }

        ++v4;
        v5 += 32;
      }

      while (v4 < v3);
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

BOOL re::TextManager::isFontLoaded(re::TextManager *this, const re::FontID *a2)
{
  result = re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::contains(this + 8, a2);
  if (result)
  {
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a2, *a2 >> 1, v5);
    return v6 != 0x7FFFFFFF;
  }

  return result;
}

BOOL re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::contains(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = *(*(a1 + 8) + 4 * ((*a2 >> 1) % v2));
  if (v4 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  do
  {
    v7 = v6 + 32 * v4;
    result = re::StringID::operator==((v7 + 16), a2);
    if (result)
    {
      break;
    }

    v4 = *(v7 + 8) & 0x7FFFFFFF;
  }

  while (v4 != 0x7FFFFFFF);
  return result;
}

void re::TextManager::addFont(uint64_t a1, StringID *a2, void **a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 16, 8);
  *v9 = 0;
  *(v9 + 8) = 0;
  NS::SharedPtr<MTL::Buffer>::operator=(v9, a3);
  *(v9 + 8) = a4;
  v10 = *&a2->var0 >> 1;
  v11 = *(a1 + 32);
  if (!v11)
  {
    LODWORD(v12) = 0;
    goto LABEL_8;
  }

  v12 = v10 % v11;
  v13 = *(*(a1 + 16) + 4 * (v10 % v11));
  if (v13 == 0x7FFFFFFF)
  {
LABEL_8:
    v16 = *(a1 + 44);
    if (v16 == 0x7FFFFFFF)
    {
      v16 = *(a1 + 40);
      v17 = v16;
      if (v16 == v11)
      {
        re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::setCapacity(a1 + 8, 2 * *(a1 + 36));
        LODWORD(v12) = v10 % *(a1 + 32);
        v17 = *(a1 + 40);
      }

      *(a1 + 40) = v17 + 1;
      v18 = *(a1 + 24);
      v19 = *(v18 + 32 * v16 + 8);
    }

    else
    {
      v18 = *(a1 + 24);
      v19 = *(v18 + 32 * v16 + 8);
      *(a1 + 44) = v19 & 0x7FFFFFFF;
    }

    *(v18 + 32 * v16 + 8) = v19 | 0x80000000;
    *(*(a1 + 24) + 32 * v16 + 8) = *(*(a1 + 24) + 32 * v16 + 8) & 0x80000000 | *(*(a1 + 16) + 4 * v12);
    *(*(a1 + 24) + 32 * v16) = v10;
    re::StringID::StringID((*(a1 + 24) + 32 * v16 + 16), a2);
    *(*(a1 + 16) + 4 * v12) = v16;
    ++*(a1 + 36);
    ++*(a1 + 48);
    v10 = *&a2->var0 >> 1;
    goto LABEL_14;
  }

  v14 = *(a1 + 24);
  while (1)
  {
    v15 = v14 + 32 * v13;
    if (re::StringID::operator==((v15 + 16), a2))
    {
      break;
    }

    v13 = *(v15 + 8) & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

LABEL_14:
  v20 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 56, a2, v10, &v24);
  if (HIDWORD(v24) == 0x7FFFFFFF)
  {
    v24 = 0uLL;
    v25 = 0;
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 56, a2, *&a2->var0 >> 1, &v24);
    if (HIDWORD(v24) == 0x7FFFFFFF)
    {
      v21 = re::HashTable<re::FontID,re::FontAssetInternal *,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::allocEntry(a1 + 56, DWORD2(v24), v24);
      re::StringID::StringID((v21 + 8), a2);
      *(v21 + 24) = v9;
      ++*(a1 + 96);
    }
  }

  else
  {
    v22 = *re::graphicsLogObjects(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      var1 = a2->var1;
      LODWORD(v24) = 136315138;
      *(&v24 + 4) = var1;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "%s font already added to TextManager. Why is this being added again?", &v24, 0xCu);
    }
  }
}

BOOL re::TextManager::removeFont(re::TextManager *this, const re::FontID *a2)
{
  result = re::TextManager::isFontLoaded(this, a2);
  if (result)
  {
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a2, *a2 >> 1, v5);
    re::internal::destroyPersistent<re::FontAssetInternal>("removeFont", 210, *(*(this + 9) + 40 * v5[3] + 24));
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a2, *a2 >> 1, v5);
    return re::HashTable<re::FontID,re::FontAssetInternal *,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::removeInternal(this + 56, v5);
  }

  return result;
}

uint64_t re::TextManager::addStringToGroup(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a2 + 80) >= 0x400uLL)
  {
    v5 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a2 + 8);
      *buf = 134218240;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v6;
      v7 = "String count of text group %p exceeds maximum (%lu).";
LABEL_9:
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0x16u);
      return 0;
    }

    return 0;
  }

  if (*(a2 + 88) >= 0x4000uLL)
  {
    v5 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 23;
      if (*(a2 + 56))
      {
        v8 = *(a2 + 72);
      }

      *buf = 134218240;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      v7 = "Glyph count of text group %p exceeds maximum (%lu).";
      goto LABEL_9;
    }

    return 0;
  }

  v12 = *(a3 + 8);
  if (v12)
  {
    v13 = *(a3 + 16);
  }

  else
  {
    v13 = (a3 + 9);
  }

  v14 = v12 >> 1;
  v15 = v12 >> 1;
  if (*(a3 + 8))
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  re::DynamicString::append((a2 + 48), v13, v16);
  v17 = *(a2 + 80);
  if (*(a2 + 8) <= v17)
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_27:
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v18 = re::StringID::operator=((*(a2 + 16) + 144 * v17), a4);
  v19 = *(a4 + 16);
  v20 = *(a4 + 32);
  v21 = *(a4 + 64);
  *(v18 + 3) = *(a4 + 48);
  *(v18 + 4) = v21;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  v22 = *(a4 + 80);
  v23 = *(a4 + 96);
  v24 = *(a4 + 112);
  v18[16] = *(a4 + 128);
  *(v18 + 6) = v23;
  *(v18 + 7) = v24;
  *(v18 + 5) = v22;
  v25 = *(a2 + 80);
  if (*(a2 + 8) <= v25)
  {
    goto LABEL_27;
  }

  v26 = (*(a2 + 16) + 144 * v25);
  v26[13] = *(a2 + 88);
  v27 = *(a3 + 8);
  if (v27)
  {
    v28 = v27 >> 1;
  }

  else
  {
    v28 = v27 >> 1;
  }

  v26[14] = v28;
  result = *(a2 + 96);
  *(a2 + 96) = result + 1;
  v29 = *(a2 + 136);
  v26[15] = result;
  v26[16] = v29;
  v30 = *(a2 + 88);
  ++*(a2 + 80);
  v31 = *(a3 + 8);
  v32 = v31 >> 1;
  v33 = v31 >> 1;
  if (*(a3 + 8))
  {
    v33 = v32;
  }

  *(a2 + 88) = v33 + v30;
  *(a2 + 128) = 1;
  return result;
}

uint64_t re::TextManager::addStaticText(re::TextManager *a1, uint64_t a2, uint64_t a3)
{
  v6 = re::TextManager::renderData(a1);
  v7 = re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v6 + 152, (a3 + 96));
  v8 = v7;
  if (!v7)
  {
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    re::DynamicString::setCapacity(v13, 0);
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    v21 = -1;
    v9 = re::TextManager::renderData(a1);
    re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v9 + 152, (a3 + 96), v12);
    v10 = re::TextManager::renderData(a1);
    v8 = re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v10 + 152, (a3 + 96));
    *(v8 + 17) = *(a3 + 96);
    re::TextRenderGroupData::~TextRenderGroupData(v12);
  }

  return re::TextManager::addStringToGroup(v7, v8, a2, a3);
}

uint64_t re::TextManager::renderData(re::TextManager *this)
{
  result = *(this + 13);
  if (!result)
  {
    v3 = re::globalAllocators(0);
    v4 = (*(*v3[2] + 32))(v3[2], 368, 8);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0;
    re::DynamicString::setCapacity((v4 + 56), 0);
    *(v4 + 88) = 0u;
    *(v4 + 104) = 1;
    *(v4 + 112) = 0;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0;
    *(v4 + 144) = -1;
    *(v4 + 152) = 0u;
    *(v4 + 168) = 0u;
    *(v4 + 184) = 0;
    *(v4 + 188) = 0x7FFFFFFFLL;
    *(v4 + 200) = 0;
    *(v4 + 240) = 0x700000007;
    *(v4 + 248) = 7;
    *(v4 + 249) = -1;
    *(v4 + 254) = 0;
    *(v4 + 256) = 0;
    *(v4 + 296) = 0x700000007;
    *(v4 + 304) = 7;
    *(v4 + 305) = -1;
    *(v4 + 340) = 0u;
    *(v4 + 310) = 0u;
    *(v4 + 326) = 0u;
    *(v4 + 356) = 0x7FFFFFFFLL;
    *(this + 13) = v4;
    v5 = *(*this + 208);
    v6 = *(*this + 48);
    v14 = [v5 newBufferWithLength:192 options:0];
    NS::SharedPtr<MTL::Texture>::operator=(*(this + 13), &v14);
    if (v14)
    {
    }

    re::ShaderManager::makeFunction(v6, v6[46], "fsSdfFont", 0, &v14);
    re::ShaderManager::makeFunction(v6, v6[46], "vsSdfFont", 0, &v13);
    v7 = [objc_msgSend(MEMORY[0x1E69741E0] alloc)];
    [objc_msgSend(objc_msgSend(v7 attributes)];
    [objc_msgSend(objc_msgSend(v7 attributes)];
    [objc_msgSend(objc_msgSend(v7 attributes)];
    [objc_msgSend(objc_msgSend(v7 attributes)];
    [objc_msgSend(objc_msgSend(v7 attributes)];
    [objc_msgSend(objc_msgSend(v7 attributes)];
    [objc_msgSend(objc_msgSend(v7 layouts)];
    [objc_msgSend(objc_msgSend(v7 layouts)];
    re::ShaderManager::makeRenderPipelineDescriptor(v6, &v12);
    v8 = *(this + 13);
    v9 = *(v8 + 312);
    v10 = v12;
    if (v9 == v12)
    {
    }

    else
    {
      if (v9)
      {

        v10 = v12;
      }

      *(v8 + 312) = v10;
    }

    [*(*(this + 13) + 312) setLabel_];
    [*(*(this + 13) + 312) setVertexFunction_];
    [*(*(this + 13) + 312) setFragmentFunction_];
    [*(*(this + 13) + 312) setVertexDescriptor_];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    [objc_msgSend(objc_msgSend(*(*(this + 13) + 312) colorAttachments)];
    v11 = *(this + 13);
    v11[248] = 4;
    v11[253] = 1;
    v11[304] = 7;
    v11[309] = 0;
    if (v7)
    {
    }

    if (v13)
    {
    }

    if (v14)
    {
    }

    return *(this + 13);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 168 * v6 + 16;
  }
}

uint64_t re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::TextRenderGroupData const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 168 * HIDWORD(v9) + 16;
  }
}

void *anonymous namespace::initTextRenderGroup(_anonymous_namespace_ *this, re::TextRenderGroupData *a2, unint64_t a3)
{
  v5 = this;
  v5 = (v5 + 48);
  result = re::DynamicString::setCapacity(v5, a2);
  *(v5 + 4) = 0;
  *(v5 + 11) = -1;
  return result;
}

uint64_t re::TextManager::findStaticTextParam(re::TextManager *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v14[0] = a3;
  v7 = re::TextManager::renderData(a1);
  result = re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v7 + 152, v14);
  if (result)
  {
    v9 = *(result + 80);
    if (v9)
    {
      v10 = 0;
      v11 = *(result + 8);
      for (i = 120; ; i += 144)
      {
        if (v11 == v10)
        {
          v14[1] = 0;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v23 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v15 = 136315906;
          v16 = "operator[]";
          v17 = 1024;
          v18 = 468;
          v19 = 2048;
          v20 = v11;
          v21 = 2048;
          v22 = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        if (*(*(result + 16) + i) == a2)
        {
          break;
        }

        if (v9 == ++v10)
        {
          return 0;
        }
      }

      *a4 = result;
      *a5 = v10;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::TextManager::staticTextParam(re::TextManager *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8[0] = 0;
  StaticTextParam = re::TextManager::findStaticTextParam(a1, a2, a3, v8, &v7);
  result = 0;
  if (StaticTextParam)
  {
    v5 = v7;
    v6 = *(v8[0] + 8);
    if (v6 <= v7)
    {
      v8[1] = 0;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v9 = 136315906;
      v10 = "operator[]";
      v11 = 1024;
      v12 = 468;
      v13 = 2048;
      v14 = v5;
      v15 = 2048;
      v16 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return *(v8[0] + 16) + 144 * v7;
  }

  return result;
}

uint64_t re::TextManager::removeStaticText(re::TextManager *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v36 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  result = re::TextManager::findStaticTextParam(a1, a2, a3, &v21, &v20);
  if ((result & 1) == 0)
  {
LABEL_15:
    re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Invalid string render handle %llu:%lu.", "!Unreachable code", "removeStaticText", 303, v3, v4);
    _os_crash();
    __break(1u);
  }

  v4 = v20;
  v7 = v21;
  v8 = *(v21 + 8);
  if (v8 <= v20)
  {
LABEL_14:
    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v3 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 468;
    v27 = 2048;
    v28 = v4;
    v29 = 2048;
    v30 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(v21 + 16) + 144 * v20;
  v8 = *(v9 + 112);
  if (v8)
  {
    v10 = *(v9 + 104);
    v11 = *(v9 + 112);
    do
    {
      result = re::DynamicString::removeAt((v7 + 48), v10);
      --v11;
    }

    while (v11);
  }

  v12 = *(v7 + 80);
  *(v7 + 88) -= v8;
  if (v4 + 1 < v12)
  {
    v13 = 144 * v4;
    while (1)
    {
      v14 = *(v7 + 8);
      if (v14 <= v4 + 1)
      {
        break;
      }

      v15 = (*(v7 + 16) + v13);
      v15[31] -= v8;
      if (v14 <= v4)
      {
        goto LABEL_13;
      }

      result = re::StringID::operator=(v15, v15 + 18);
      v16 = *(result + 176);
      *(result + 16) = *(result + 160);
      *(result + 32) = v16;
      v17 = *(result + 208);
      *(result + 48) = *(result + 192);
      *(result + 64) = v17;
      *(result + 128) = *(result + 272);
      v18 = *(result + 256);
      *(result + 96) = *(result + 240);
      *(result + 112) = v18;
      *(result + 80) = *(result + 224);
      v12 = *(v7 + 80);
      v19 = v4 + 2;
      ++v4;
      v13 += 144;
      if (v19 >= v12)
      {
        goto LABEL_11;
      }
    }

    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 468;
    v27 = 2048;
    v28 = v4 + 1;
    v29 = 2048;
    v30 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 468;
    v27 = 2048;
    v28 = v4;
    v29 = 2048;
    v30 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

LABEL_11:
  *(v7 + 80) = v12 - 1;
  *(v7 + 128) = 1;
  return result;
}

uint64_t re::TextManager::modifyStaticTextColor(re::TextManager *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = re::TextManager::staticTextParam(a1, a2, a3);
  if (result)
  {
    *(result + 16) = a4;
    *(result + 24) = a5;
  }

  else
  {
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Invalid string render handle %llu:%lu.", "!Unreachable code", "modifyStaticTextColor", 335, a3, a2);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

_OWORD *re::TextManager::modifyStaticTextWorldMatrix(re::TextManager *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  result = re::TextManager::staticTextParam(a1, a2, a3);
  if (result)
  {
    v9 = *a4;
    v10 = a4[1];
    v11 = a4[3];
    result[4] = a4[2];
    result[5] = v11;
    result[2] = v9;
    result[3] = v10;
  }

  else
  {
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Invalid string render handle %llu:%lu.", "!Unreachable code", "modifyStaticTextWorldMatrix", 345, a3, a2);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TextManager::computeSize(re::TextManager *this, const re::DynamicString *a2, const re::FontID *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a3, *a3 >> 1, buf);
  v8 = *(*(this + 9) + 40 * *&buf[12] + 24);
  if (!v8)
  {
    v33 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a3 + 1);
      *buf = 136315138;
      *&buf[4] = v34;
      _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "Invalid font %s, returning empty bound", buf, 0xCu);
    }

    return 0;
  }

  v9 = *(a2 + 1);
  if (v9)
  {
    v10 = v9 >> 1;
  }

  else
  {
    v10 = v9 >> 1;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0.0;
  v15 = 1;
  v16 = MEMORY[0x1E69E9830];
  *&v7 = 0;
  v17 = 1;
  do
  {
    v35 = v7;
    v18 = re::DynamicString::operator[](a2, v11);
    v19 = *v18;
    if (*v18)
    {
      if (v19 == 10)
      {
        v20 = *(v8 + 8);
        if (v17)
        {
          v7 = v35;
        }

        else
        {
          v7 = v35;
          if (*(v20 + 24) <= v12)
          {
            goto LABEL_42;
          }

          *&v7 = *&v35 + (*(*(v20 + 40) + 16 * v12 + 8) - *(*(v20 + 40) + 16 * v12));
        }

        if (v14 < *&v7)
        {
          v14 = *&v7;
        }

        LODWORD(v7) = 0;
        *(&v7 + 1) = *(&v7 + 1) - *v20;
        ++v13;
        v17 = 1;
      }

      else
      {
        v21 = v19;
        if (v19 < 0)
        {
          v22 = __maskrune(v19, 0x40000uLL);
        }

        else
        {
          v22 = *(v16 + 4 * v19 + 60) & 0x40000;
        }

        v7 = v35;
        if (v22)
        {
          v23 = v21 - 32;
          v24 = *(v8 + 8);
          if (v24[3] <= v23)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_42:
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_43:
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_44;
          }

          if (v17)
          {
            v17 = 0;
            v25 = *(v24[5] + 16 * v23);
          }

          else
          {
            v26 = v23 + 95 * v12;
            if (v24[8] <= v26)
            {
              goto LABEL_43;
            }

            v17 = 0;
            v25 = *(v24[10] + 8 * v26);
          }

          *&v7 = vadd_f32(*&v35, v25);
          v12 = v23;
        }
      }
    }

    else
    {
      v7 = v35;
    }

    v11 = v15;
    v27 = *(a2 + 1);
    if (v27)
    {
      v28 = v27 >> 1;
    }

    else
    {
      v28 = v27 >> 1;
    }
  }

  while (v28 > v15++);
  v30 = *(v8 + 8);
  if (v17)
  {
    goto LABEL_34;
  }

  if (*(v30 + 24) <= v12)
  {
LABEL_44:
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *&v7 = *&v7 + (*(*(v30 + 40) + 16 * v12 + 8) - *(*(v30 + 40) + 16 * v12));
LABEL_34:
  if (v14 >= *&v7)
  {
    *&v31 = v14;
  }

  else
  {
    *&v31 = *&v7;
  }

  *(&v31 + 1) = *v30 * (v13 + 1);
  return v31;
}