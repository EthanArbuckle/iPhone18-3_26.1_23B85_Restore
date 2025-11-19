int64x2_t geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::internal_add<unsigned int>(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 32))
  {
    geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::grow_to_count(a1);
  }

  v6 = WORD1(*a2) - 0x61C8864680B583E9;
  v7 = (v6 + (*a2 << 6) + (*a2 >> 2)) ^ *a2;
  v8 = (v6 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v9 = *(a2 + 8);
  v10 = *(a1 + 16) >> 4;
  v11 = ((v9 + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583E9) ^ v8) % v10;
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = ((v9 + (v8 << 6) + (v8 >> 2) + 23) ^ v8) & 0x7F;
  v16 = *(v14 + v13);
  *(v14 + v13) = v15;
  v17 = *(a1 + 8) + 24 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 16) = a3;
  if (v16 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  result = vaddq_s64(*(a1 + 24), v19);
  *(a1 + 24) = result;
  return result;
}

uint64_t geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::compute_hash(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = WORD1(*a2) - 0x61C8864680B583E9;
  v4 = (v3 + (((v3 + (v2 << 6) + (v2 >> 2)) ^ v2) << 6) + (((v3 + (v2 << 6) + (v2 >> 2)) ^ v2) >> 2)) ^ (v3 + (v2 << 6) + (v2 >> 2)) ^ v2;
  return (*(a2 + 8) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
}

void geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::grow_to_count(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 32))
  {
LABEL_6:
    geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::do_resize(a1, v1);
  }
}

void geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::do_resize(__int128 *a1, unint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::init(&v21, a2);
  v19[0] = a1;
  v3 = *(a1 + 2);
  if (v3 >= 0x10)
  {
    v4 = 0;
    v5 = *a1;
    v6 = v3 >> 4;
    while (1)
    {
      v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v19[1] = v7 ^ 0xFFFFLL;
      if (v7 != 0xFFFFLL)
      {
        break;
      }

      v4 -= 16;
      ++v5;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    v8 = __clz(__rbit64(v7 ^ 0xFFFFLL));
    v9 = v8 - v4;
    v20 = v8 - v4;
    if (v8 + 1 != v4)
    {
      do
      {
        v10 = *(v19[0] + 8) + 24 * v9;
        v11 = *(v10 + 16);
        v17 = *v10;
        v18 = v11;
        geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::internal_add<unsigned int>(&v21, &v17);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v19);
        v9 = v20;
      }

      while (v20 != -1);
    }
  }

LABEL_10:
  if (&v21 != a1)
  {
    v12 = v22;
    v13 = *a1;
    v14 = a1[1];
    *a1 = v21;
    a1[1] = v12;
    v21 = v13;
    v22 = v14;
    v15 = *(a1 + 4);
    *(a1 + 4) = v23;
    v23 = v15;
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v21);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t geom::marching_cubes<float>::test_face(uint64_t a1, int a2, float *a3)
{
  v3 = 0.0;
  if (a2 > 0)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
LABEL_20:
        v7 = a3 + 7;
        v8 = a3 + 4;
        v9 = a3;
        a3 += 3;
        goto LABEL_24;
      }

      if (a2 == 5)
      {
        goto LABEL_22;
      }

      v4 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
      if (a2 == 6)
      {
        goto LABEL_18;
      }

      return (a2 < 1) ^ ((v6 * ((v6 * v4) - (v3 * v5))) >= 0.0);
    }

    if (a2 == 1)
    {
LABEL_14:
      v7 = a3 + 4;
      v8 = a3 + 5;
LABEL_23:
      v9 = a3 + 1;
      goto LABEL_24;
    }

    if (a2 == 2)
    {
LABEL_21:
      v7 = a3 + 5;
      v8 = a3 + 6;
      v9 = a3 + 2;
      ++a3;
      goto LABEL_24;
    }

LABEL_19:
    v7 = a3 + 6;
    v8 = a3 + 7;
    v9 = a3 + 3;
    a3 += 2;
    goto LABEL_24;
  }

  if (a2 <= -4)
  {
    if (a2 != -6)
    {
      if (a2 != -5)
      {
        v4 = 0.0;
        v5 = 0.0;
        v6 = 0.0;
        if (a2 != -4)
        {
          return (a2 < 1) ^ ((v6 * ((v6 * v4) - (v3 * v5))) >= 0.0);
        }

        goto LABEL_20;
      }

LABEL_22:
      v7 = a3 + 3;
      v8 = a3 + 2;
      goto LABEL_23;
    }

LABEL_18:
    v7 = a3 + 7;
    v8 = a3 + 6;
    v9 = a3 + 5;
    a3 += 4;
LABEL_24:
    v6 = *a3;
    v4 = *v8;
    v3 = *v7;
    v5 = *v9;
    return (a2 < 1) ^ ((v6 * ((v6 * v4) - (v3 * v5))) >= 0.0);
  }

  if (a2 == -3)
  {
    goto LABEL_19;
  }

  if (a2 == -2)
  {
    goto LABEL_21;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (a2 == -1)
  {
    goto LABEL_14;
  }

  return (a2 < 1) ^ ((v6 * ((v6 * v4) - (v3 * v5))) >= 0.0);
}

uint64_t geom::marching_cubes<float>::test_interior(uint64_t a1, int a2, float *a3, int a4)
{
  v5 = *a3;
  v4 = a3[1];
  v7 = a3[2];
  v6 = a3[3];
  v8 = a3[4] - *a3;
  v9 = a3[6] - v7;
  v10 = a3[5] - v4;
  v11 = a3[7] - v6;
  v12 = (v8 * v9) - (v10 * v11);
  if (fabsf(v12) < 0.00001)
  {
    goto LABEL_6;
  }

  v13 = -((((v5 * v9) + (v7 * v8)) - (v6 * v10)) + (-v4 * v11)) / (v12 + v12);
  if (v13 < 0.0 || v13 > 1.0)
  {
    goto LABEL_6;
  }

  LOBYTE(v15) = 0;
  v17 = v5 + (v8 * v13);
  v18 = v4 + (v10 * v13);
  v19 = v7 + (v9 * v13);
  v20 = v6 + (v11 * v13);
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return v15;
      }

      if (v12 <= 0.0)
      {
        goto LABEL_6;
      }

      if ((v17 * v19) >= (v18 * v20))
      {
        goto LABEL_6;
      }

      v21 = v6 + (v11 * v13);
      if ((LODWORD(v18) ^ LODWORD(v20)) < 0)
      {
        goto LABEL_6;
      }

      v22 = a3[3];
LABEL_29:
      v15 = a4 + ((LODWORD(v21) ^ ~LODWORD(v22)) >> 31);
      return v15;
    }

    if (v12 < 0.0 && (v17 * v19) > (v18 * v20))
    {
      v21 = v19;
      if (((LODWORD(v17) ^ LODWORD(v19)) & 0x80000000) == 0)
      {
        v22 = a3[2];
        goto LABEL_29;
      }
    }
  }

  else if (a2 == 1)
  {
    if (v12 < 0.0 && (v17 * v19) > (v18 * v20))
    {
      v21 = v17;
      if (((LODWORD(v17) ^ LODWORD(v19)) & 0x80000000) == 0)
      {
        v22 = *a3;
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      return v15;
    }

    if (v12 > 0.0 && (v17 * v19) < (v18 * v20))
    {
      v21 = v18;
      if (((LODWORD(v18) ^ LODWORD(v20)) & 0x80000000) == 0)
      {
        v22 = a3[1];
        goto LABEL_29;
      }
    }
  }

LABEL_6:
  LOBYTE(v15) = 0;
  return v15;
}

uint64_t geom::marching_cubes<double>::process_cell_33(uint64_t result, uint64_t a2)
{
  v2 = &mc_lewiner_cases + 2 * *(a2 + 64);
  v4 = result;
  v5 = v2[1];
  switch(*v2)
  {
    case 1:
      *(a2 + 72) = &mc_lewiner_tiling_1 + 3 * v5;
      v6 = 1;
      goto LABEL_93;
    case 2:
      v22 = &mc_lewiner_tiling_2;
      goto LABEL_66;
    case 3:
      result = geom::marching_cubes<double>::test_face(result, mc_lewiner_test_3[v5], a2);
      if (result)
      {
        v20 = &mc_lewiner_tiling_3_2;
        goto LABEL_49;
      }

      v22 = &mc_lewiner_tiling_3_1;
      goto LABEL_66;
    case 4:
      result = geom::marching_cubes<double>::test_interior(result, mc_lewiner_test_4[v5], a2, 0);
      if (result)
      {
        v21 = &mc_lewiner_tiling_4_2 + 18 * v5;
        goto LABEL_85;
      }

      v22 = &mc_lewiner_tiling_4_1;
LABEL_66:
      *(a2 + 72) = &v22[6 * v5];
      v6 = 2;
      goto LABEL_93;
    case 5:
      v10 = 9 * v5;
      v11 = &mc_lewiner_tiling_5;
      goto LABEL_8;
    case 6:
      v23 = &mc_lewiner_test_6 + 2 * v5;
      result = geom::marching_cubes<double>::test_face(result, *v23, a2);
      if (result)
      {
        v24 = &mc_lewiner_tiling_6_2;
        goto LABEL_36;
      }

      result = geom::marching_cubes<double>::test_interior(v4, v23[1], a2, 0);
      if (result)
      {
        v30 = 27;
        v31 = &mc_lewiner_tiling_6_1_2;
        goto LABEL_91;
      }

      v10 = 9 * v5;
      v11 = &mc_lewiner_tiling_6_1_1;
      goto LABEL_8;
    case 7:
      v26 = &mc_lewiner_test_7 + 5 * v5;
      v27 = geom::marching_cubes<double>::test_face(result, *v26, a2);
      if (geom::marching_cubes<double>::test_face(v4, v26[1], a2))
      {
        v27 |= 2u;
      }

      result = geom::marching_cubes<double>::test_face(v4, v26[2], a2);
      v28 = v27 | 4;
      if (!result)
      {
        v28 = v27;
      }

      if (v28 > 3)
      {
        if (v28 <= 5)
        {
          if (v28 == 4)
          {
            v25 = &mc_lewiner_tiling_7_2 + 45 * v5 + 30;
            goto LABEL_37;
          }

          v32 = &mc_lewiner_tiling_7_3 + 81 * v5 + 27;
          goto LABEL_92;
        }

        if (v28 == 6)
        {
          v32 = &mc_lewiner_tiling_7_3 + 81 * v5 + 54;
LABEL_92:
          *(a2 + 72) = v32;
          v6 = 9;
          goto LABEL_93;
        }

        result = geom::marching_cubes<double>::test_interior(v4, v26[3], a2, 0);
        if (!result)
        {
          v24 = &mc_lewiner_tiling_7_4_1;
LABEL_36:
          v25 = &v24[16 * v5 - v5];
          goto LABEL_37;
        }

        v30 = 27;
        v31 = &mc_lewiner_tiling_7_4_2;
      }

      else
      {
        if (v28 <= 1)
        {
          if (!v28)
          {
            v10 = 9 * v5;
            v11 = &mc_lewiner_tiling_7_1;
LABEL_8:
            *(a2 + 72) = &v11[v10];
            v6 = 3;
            goto LABEL_93;
          }

          v25 = &mc_lewiner_tiling_7_2 + 45 * v5;
LABEL_37:
          *(a2 + 72) = v25;
          v6 = 5;
          goto LABEL_93;
        }

        if (v28 == 2)
        {
          v25 = &mc_lewiner_tiling_7_2 + 45 * v5 + 15;
          goto LABEL_37;
        }

        v30 = 81;
        v31 = &mc_lewiner_tiling_7_3;
      }

LABEL_91:
      v32 = &v31[v5 * v30];
      goto LABEL_92;
    case 8:
      v22 = &mc_lewiner_tiling_8;
      goto LABEL_66;
    case 9:
      v20 = &mc_lewiner_tiling_9;
      goto LABEL_49;
    case 10:
      v18 = &mc_lewiner_test_10 + 6 * v2[1];
      v19 = geom::marching_cubes<double>::test_face(result, *v18, a2);
      result = geom::marching_cubes<double>::test_face(v4, v18[1], a2);
      if (v19)
      {
        if (!result)
        {
          v9 = &mc_lewiner_tiling_10_2;
          goto LABEL_74;
        }

        result = geom::marching_cubes<double>::test_interior(v4, v18[4], a2, 0);
        if (result || (result = geom::marching_cubes<double>::test_interior(v4, v18[5], a2, 0), result))
        {
          v9 = &mc_lewiner_tiling_10_1_2_;
          goto LABEL_74;
        }

        v20 = &mc_lewiner_tiling_10_1_1_;
      }

      else
      {
        if (result)
        {
          v9 = &mc_lewiner_tiling_10_2_;
          goto LABEL_74;
        }

        result = geom::marching_cubes<double>::test_interior(v4, v18[2], a2, 0);
        if (result || (result = geom::marching_cubes<double>::test_interior(v4, v18[3], a2, 0), result))
        {
          v9 = &mc_lewiner_tiling_10_1_2;
          goto LABEL_74;
        }

        v20 = &mc_lewiner_tiling_10_1_1;
      }

      goto LABEL_49;
    case 11:
      v20 = &mc_lewiner_tiling_11;
      goto LABEL_49;
    case 12:
      v7 = &mc_lewiner_test_12 + 4 * v5;
      v8 = geom::marching_cubes<double>::test_face(result, *v7, a2);
      result = geom::marching_cubes<double>::test_face(v4, v7[1], a2);
      if (v8)
      {
        if (!result)
        {
          v9 = &mc_lewiner_tiling_12_2;
          goto LABEL_74;
        }

        result = geom::marching_cubes<double>::test_interior(v4, v7[3], a2, 0);
        if (result)
        {
          v9 = &mc_lewiner_tiling_12_1_2_;
LABEL_74:
          *(a2 + 72) = &v9[24 * v5];
          v6 = 8;
          goto LABEL_93;
        }

        v20 = &mc_lewiner_tiling_12_1_1_;
      }

      else
      {
        if (result)
        {
          v9 = &mc_lewiner_tiling_12_2_;
          goto LABEL_74;
        }

        result = geom::marching_cubes<double>::test_interior(v4, v7[2], a2, 0);
        if (result)
        {
          v9 = &mc_lewiner_tiling_12_1_2;
          goto LABEL_74;
        }

        v20 = &mc_lewiner_tiling_12_1_1;
      }

      goto LABEL_49;
    case 13:
      v12 = &mc_lewiner_test_13 + 6 * v2[1];
      v13 = geom::marching_cubes<double>::test_face(result, *v12, a2);
      if (geom::marching_cubes<double>::test_face(v4, v12[1], a2))
      {
        v13 |= 2u;
      }

      if (geom::marching_cubes<double>::test_face(v4, v12[2], a2))
      {
        v13 |= 4u;
      }

      if (geom::marching_cubes<double>::test_face(v4, v12[3], a2))
      {
        v13 |= 8u;
      }

      if (geom::marching_cubes<double>::test_face(v4, 5, a2))
      {
        v13 += 16;
      }

      result = geom::marching_cubes<double>::test_face(v4, 6, a2);
      v14 = v13 + 32;
      if (!result)
      {
        v14 = v13;
      }

      v15 = mc_lewiner_subconfig_13[v14];
      if (v15 <= 22)
      {
        if (v15 > 6)
        {
          if ((v15 - 7) < 0xC)
          {
            v16 = (v15 - 7);
            v17 = &mc_lewiner_tiling_13_3;
LABEL_55:
            v29 = v17 + 360 * v5 + 30 * v16;
LABEL_56:
            *(a2 + 72) = v29;
            v6 = 10;
            goto LABEL_93;
          }

          v35 = v15 - 19;
          if (v35 < 4)
          {
            *(a2 + 72) = &mc_lewiner_tiling_13_4 + 144 * v5 + 36 * v35;
            v6 = 12;
            goto LABEL_93;
          }

          return result;
        }

        if ((v15 - 1) < 6)
        {
          v33 = (v15 - 1);
          v34 = &mc_lewiner_tiling_13_2;
LABEL_84:
          v21 = &v34[108 * v5 + 18 * v33];
LABEL_85:
          *(a2 + 72) = v21;
          v6 = 6;
          goto LABEL_93;
        }

        if (v15)
        {
          return result;
        }

        v20 = &mc_lewiner_tiling_13_1;
        goto LABEL_49;
      }

      if (v15 > 38)
      {
        if ((v15 - 39) < 6)
        {
          v33 = (v15 - 39);
          v34 = &mc_lewiner_tiling_13_2_;
          goto LABEL_84;
        }

        if (v15 != 45)
        {
          return result;
        }

        v20 = &mc_lewiner_tiling_13_1_;
LABEL_49:
        *(a2 + 72) = &v20[12 * v5];
        v6 = 4;
LABEL_93:
        *(a2 + 80) = v6;
        return result;
      }

      if ((v15 - 27) < 0xC)
      {
        v16 = (v15 - 27);
        v17 = &mc_lewiner_tiling_13_3_;
        goto LABEL_55;
      }

      v36 = v15 - 23;
      if (v36 < 4)
      {
        v37 = v36;
        v38 = mc_lewiner_test_sub_13[4 * v5 + v36];
        result = geom::marching_cubes<double>::test_interior(v4, v38, a2, 1);
        if (result == 2)
        {
          if (*(a2 + 8 * byte_2500D1158[v38]) > 0.0)
          {
            goto LABEL_112;
          }
        }

        else
        {
          if (result != 1)
          {
            if (!result)
            {
              v21 = &mc_lewiner_tiling_13_5_1 + 72 * v5 + 18 * v37;
              goto LABEL_85;
            }

            goto LABEL_114;
          }

          if (*(a2 + 8 * byte_2500D1158[v38]) < 0.0)
          {
LABEL_112:
            v39 = &mc_lewiner_tiling_13_5_2_;
LABEL_115:
            v29 = v39 + 120 * v5 + 30 * v37;
            goto LABEL_56;
          }
        }

LABEL_114:
        v39 = &mc_lewiner_tiling_13_5_2;
        goto LABEL_115;
      }

      return result;
    case 14:
      v20 = &mc_lewiner_tiling_14;
      goto LABEL_49;
    default:
      return result;
  }
}

float64x2_t geom::marching_cubes<double>::get_interior_vertex_position@<Q0>(int16x4_t *a1@<X2>, void *a2@<X3>, void *a3@<X4>, float64x2_t *a4@<X8>)
{
  v8 = 0;
  v16 = 0u;
  v17 = 0u;
  v9 = 192;
  v10 = &byte_2500D1168;
  do
  {
    v18 = vadd_s16(*a1, *(v10 - 8));
    v19 = *v10;
    internal = geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::find_internal(a3, &v18);
    if (internal != -1)
    {
      v12 = (*a2 + 32 * *(a3[1] + 24 * internal + 16));
      v16 = vaddq_f64(v16, v12[1]);
      v17 = vaddq_f64(v17, *v12);
      ++v8;
    }

    v10 += 16;
    v9 -= 16;
  }

  while (v9);
  v13 = vdupq_lane_s64(COERCE__INT64(v8), 0);
  v14 = vdivq_f64(v17, v13);
  result = vdivq_f64(v16, v13);
  *a4 = v14;
  a4[1] = result;
  return result;
}

void *_ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE4initEm(void *result, unint64_t a2)
{
  v2 = result;
  result[4] = 0;
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = 151 * v3;
  v5 = ((151 * v3) >> 7) + 15;
  *result = 0;
  result[1] = 0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) == 0)
  {
    goto LABEL_18;
  }

  if ((((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0) <= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = ((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0;
  }

  *result = malloc_type_aligned_alloc(0x40uLL, v6, 0x1000040451B5BE8uLL);
  if (v4 >= 0x80)
  {
    v7 = 0;
    *&v8 = -1;
    *(&v8 + 1) = -1;
    do
    {
      *(*v2 + 16 * v7++) = v8;
    }

    while (v5 >> 4 != v7);
  }

  v9 = ((96 * v2[2] + 63) & 0xFFFFFFFFFFFFFFC0) <= 0x40 ? 64 : (96 * v2[2] + 63) & 0xFFFFFFFFFFFFFFC0;
  result = malloc_type_aligned_alloc(0x40uLL, v9, 0x1050040E4FB7792uLL);
  v2[1] = result;
  if (v2[2])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v2[1] + v10;
      *(v12 + 64) = 0uLL;
      *(v12 + 80) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 76) = -1;
      ++v11;
      v13 = v2[2];
      v10 += 96;
    }

    while (v11 < v13);
  }

  else
  {
LABEL_18:
    v13 = 0;
  }

  v2[3] = 0;
  v2[4] = v13;
  return result;
}

void _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE9do_resizeEm(__int128 *a1, unint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE4initEm(&v25, a2);
  v23[0] = a1;
  v3 = *(a1 + 2);
  if (v3 >= 0x10)
  {
    v4 = 0;
    v5 = *a1;
    v6 = v3 >> 4;
    while (1)
    {
      v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v23[1] = v7 ^ 0xFFFF;
      if (v7 != 0xFFFF)
      {
        break;
      }

      v4 -= 16;
      ++v5;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    v8 = __clz(__rbit64(v7 ^ 0xFFFF));
    v9 = v8 - v4;
    v24 = v8 - v4;
    if (v8 + 1 != v4)
    {
      do
      {
        v10 = (*(v23[0] + 8) + 96 * v9);
        v11 = v10[1];
        *v22 = *v10;
        *&v22[16] = v11;
        v12 = v10[5];
        v14 = v10[2];
        v13 = v10[3];
        *&v22[64] = v10[4];
        *&v22[80] = v12;
        *&v22[32] = v14;
        *&v22[48] = v13;
        v20[2] = *&v22[40];
        v20[3] = *&v22[56];
        v20[4] = *&v22[72];
        v21 = *(&v12 + 1);
        v20[0] = *&v22[8];
        v20[1] = *&v22[24];
        _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE12internal_addIS4_EEmRKS1_T_(&v25, v22, v20);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v23);
        v9 = v24;
      }

      while (v24 != -1);
    }
  }

LABEL_10:
  if (&v25 != a1)
  {
    v15 = v26;
    v16 = *a1;
    v17 = a1[1];
    *a1 = v25;
    a1[1] = v15;
    v25 = v16;
    v26 = v17;
    v18 = *(a1 + 4);
    *(a1 + 4) = v27;
    v27 = v18;
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v25);
  v19 = *MEMORY[0x277D85DE8];
}

int64x2_t _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE12internal_addIS4_EEmRKS1_T_(uint64_t *a1, void *a2, __int128 *a3)
{
  if (!a1[4])
  {
    _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE13grow_to_countEv(a1);
  }

  v6 = WORD1(*a2) - 0x61C8864680B583E9;
  v7 = (v6 + (*a2 << 6) + (*a2 >> 2)) ^ *a2;
  v8 = (v6 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v9 = a1[2] >> 4;
  v10 = v8 % v9;
  v11 = *a1;
  v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v8 % v9))), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v12 >= 0x40)
  {
    do
    {
      if (v10 + 1 == v9)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }

      v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v10)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v12 > 0x3F);
  }

  v13 = v11 + 16 * v10;
  v14 = *(v13 + v12);
  *(v13 + v12) = v8 & 0x7F;
  v15 = a1[1] + 96 * (v12 + 16 * v10);
  *v15 = *a2;
  v16 = *a3;
  *(v15 + 24) = a3[1];
  *(v15 + 8) = v16;
  v17 = a3[2];
  v18 = a3[3];
  v19 = a3[4];
  *(v15 + 88) = *(a3 + 10);
  *(v15 + 72) = v19;
  *(v15 + 56) = v18;
  *(v15 + 40) = v17;
  if (v14 == 255)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v21.i64[1] = v20;
  result = vaddq_s64(*(a1 + 3), v21);
  *(a1 + 3) = result;
  return result;
}

void *_ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE13grow_to_countEv(void *result)
{
  v1 = result[2];
  v2 = (((151 * result[3]) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v2 != v1 || !result[4])
  {
    return _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE9do_resizeEm();
  }

  return result;
}

int64x2_t geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::internal_add<unsigned int>(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 32))
  {
    geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::grow_to_count(a1);
  }

  v6 = WORD1(*a2) - 0x61C8864680B583E9;
  v7 = (v6 + (*a2 << 6) + (*a2 >> 2)) ^ *a2;
  v8 = (v6 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v9 = *(a2 + 8);
  v10 = *(a1 + 16) >> 4;
  v11 = ((v9 + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583E9) ^ v8) % v10;
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = ((v9 + (v8 << 6) + (v8 >> 2) + 23) ^ v8) & 0x7F;
  v16 = *(v14 + v13);
  *(v14 + v13) = v15;
  v17 = *(a1 + 8) + 24 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 16) = a3;
  if (v16 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  result = vaddq_s64(*(a1 + 24), v19);
  *(a1 + 24) = result;
  return result;
}

void geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::grow_to_count(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 32))
  {
LABEL_6:
    geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::do_resize(a1, v1);
  }
}

void geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::do_resize(__int128 *a1, unint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::init(&v21, a2);
  v19[0] = a1;
  v3 = *(a1 + 2);
  if (v3 >= 0x10)
  {
    v4 = 0;
    v5 = *a1;
    v6 = v3 >> 4;
    while (1)
    {
      v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v19[1] = v7 ^ 0xFFFFLL;
      if (v7 != 0xFFFFLL)
      {
        break;
      }

      v4 -= 16;
      ++v5;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    v8 = __clz(__rbit64(v7 ^ 0xFFFFLL));
    v9 = v8 - v4;
    v20 = v8 - v4;
    if (v8 + 1 != v4)
    {
      do
      {
        v10 = *(v19[0] + 8) + 24 * v9;
        v11 = *(v10 + 16);
        v17 = *v10;
        v18 = v11;
        geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::internal_add<unsigned int>(&v21, &v17);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v19);
        v9 = v20;
      }

      while (v20 != -1);
    }
  }

LABEL_10:
  if (&v21 != a1)
  {
    v12 = v22;
    v13 = *a1;
    v14 = a1[1];
    *a1 = v21;
    a1[1] = v12;
    v21 = v13;
    v22 = v14;
    v15 = *(a1 + 4);
    *(a1 + 4) = v23;
    v23 = v15;
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v21);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t geom::marching_cubes<double>::test_face(uint64_t a1, int a2, double *a3)
{
  v3 = 0.0;
  if (a2 > 0)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
LABEL_20:
        v7 = a3 + 7;
        v8 = a3 + 4;
        v9 = a3;
        a3 += 3;
        goto LABEL_24;
      }

      if (a2 == 5)
      {
        goto LABEL_22;
      }

      v4 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
      if (a2 == 6)
      {
        goto LABEL_18;
      }

      return (a2 < 1) ^ (v6 * (v6 * v4 - v3 * v5) >= 0.0);
    }

    if (a2 == 1)
    {
LABEL_14:
      v7 = a3 + 4;
      v8 = a3 + 5;
LABEL_23:
      v9 = a3 + 1;
      goto LABEL_24;
    }

    if (a2 == 2)
    {
LABEL_21:
      v7 = a3 + 5;
      v8 = a3 + 6;
      v9 = a3 + 2;
      ++a3;
      goto LABEL_24;
    }

LABEL_19:
    v7 = a3 + 6;
    v8 = a3 + 7;
    v9 = a3 + 3;
    a3 += 2;
    goto LABEL_24;
  }

  if (a2 <= -4)
  {
    if (a2 != -6)
    {
      if (a2 != -5)
      {
        v4 = 0.0;
        v5 = 0.0;
        v6 = 0.0;
        if (a2 != -4)
        {
          return (a2 < 1) ^ (v6 * (v6 * v4 - v3 * v5) >= 0.0);
        }

        goto LABEL_20;
      }

LABEL_22:
      v7 = a3 + 3;
      v8 = a3 + 2;
      goto LABEL_23;
    }

LABEL_18:
    v7 = a3 + 7;
    v8 = a3 + 6;
    v9 = a3 + 5;
    a3 += 4;
LABEL_24:
    v6 = *a3;
    v4 = *v8;
    v3 = *v7;
    v5 = *v9;
    return (a2 < 1) ^ (v6 * (v6 * v4 - v3 * v5) >= 0.0);
  }

  if (a2 == -3)
  {
    goto LABEL_19;
  }

  if (a2 == -2)
  {
    goto LABEL_21;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (a2 == -1)
  {
    goto LABEL_14;
  }

  return (a2 < 1) ^ (v6 * (v6 * v4 - v3 * v5) >= 0.0);
}

uint64_t geom::marching_cubes<double>::test_interior(uint64_t a1, int a2, double *a3, char a4)
{
  v5 = *a3;
  v4 = a3[1];
  v7 = a3[2];
  v6 = a3[3];
  v8 = a3[4] - *a3;
  v9 = a3[6] - v7;
  v10 = a3[5] - v4;
  v11 = a3[7] - v6;
  v12 = v8 * v9 - v10 * v11;
  if (fabs(v12) < 0.000001)
  {
    return 0;
  }

  v13 = -(v5 * v9 + v7 * v8 - v6 * v10 + -v4 * v11) / (v12 + v12);
  if (v13 < 0.0 || v13 > 1.0)
  {
    return 0;
  }

  v15 = 0;
  v17 = v5 + v8 * v13;
  v18 = v4 + v10 * v13;
  v19 = v7 + v9 * v13;
  v20 = v6 + v11 * v13;
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return v15;
      }

      if (v12 <= 0.0)
      {
        return 0;
      }

      if (v17 * v19 >= v18 * v20)
      {
        return 0;
      }

      v21 = v6 + v11 * v13;
      if (((*&v18 ^ *&v20) & 0x8000000000000000) != 0)
      {
        return 0;
      }

      v22 = a3[3];
      return (((*&v21 ^ *&v22) >= 0) + a4);
    }

    if (v12 < 0.0 && v17 * v19 > v18 * v20)
    {
      v21 = v19;
      if (((*&v17 ^ *&v19) & 0x8000000000000000) == 0)
      {
        v22 = a3[2];
        return (((*&v21 ^ *&v22) >= 0) + a4);
      }
    }
  }

  else if (a2 == 1)
  {
    if (v12 < 0.0 && v17 * v19 > v18 * v20)
    {
      v21 = v17;
      if (((*&v17 ^ *&v19) & 0x8000000000000000) == 0)
      {
        v22 = *a3;
        return (((*&v21 ^ *&v22) >= 0) + a4);
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      return v15;
    }

    if (v12 > 0.0 && v17 * v19 < v18 * v20)
    {
      v21 = v18;
      if (((*&v18 ^ *&v20) & 0x8000000000000000) == 0)
      {
        v22 = a3[1];
        return (((*&v21 ^ *&v22) >= 0) + a4);
      }
    }
  }

  return 0;
}

void *geom::point_cloud_laplacian<float>::point_cloud_laplacian(void *a1, void *a2, uint64_t a3)
{
  v5 = _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(a1, a2);
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = a3;
  geom::point_cloud_laplacian<float>::compute_cotan_laplacian_stencils(v5);
  return a1;
}

void geom::point_cloud_laplacian<float>::compute_cotan_laplacian_stencils(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (v2 - *a1) >> 4;
  v5 = a1[6];
  geom::point_cloud_laplacian<float>::find_nearest_neighbors(a1, v5, &v67);
  v6 = v5 + 1;
  v61 = 0;
  v62 = &v61;
  v63 = 0x4002000000;
  v64 = __Block_byref_object_copy__3;
  v65 = __Block_byref_object_dispose__4;
  std::vector<std::vector<std::tuple<unsigned int,unsigned int,float>>>::vector[abi:nn200100](v66, v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN4geom21point_cloud_laplacianIfE32compute_cotan_laplacian_stencilsEv_block_invoke;
  block[3] = &unk_286292ED0;
  block[5] = a1;
  block[6] = (v4 + 29) / 0x1E;
  block[7] = v4;
  __p = 0;
  __dst = 0;
  v59 = 0;
  if (v68 != v67)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, (v68 - v67) >> 2);
  }

  v60 = v6;
  block[4] = &v61;
  dispatch_apply(0x1EuLL, 0, block);
  std::vector<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil>>::resize((a1 + 3), v4);
  if (v2 != v3)
  {
    v7 = 0;
    v8 = 0;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v55 = v4;
    do
    {
      v9 = a1[3];
      LODWORD(v69[0]) = v8;
      std::vector<unsigned int>::push_back[abi:nn200100]((v9 + v7), v69);
      v10 = (a1[3] + v7);
      v12 = v10[4];
      v11 = v10[5];
      if (v12 >= v11)
      {
        v14 = v10[3];
        v15 = v12 - v14;
        v16 = (v12 - v14) >> 2;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
LABEL_56:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v18 = v11 - v14;
        if (v18 >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<float>>((v10 + 3), v19);
        }

        v20 = (v12 - v14) >> 2;
        v21 = (4 * v16);
        v22 = (4 * v16 - 4 * v20);
        *v21 = 0;
        v13 = v21 + 1;
        memcpy(v22, v14, v15);
        v23 = v10[3];
        v10[3] = v22;
        v10[4] = v13;
        v10[5] = 0;
        if (v23)
        {
          operator delete(v23);
        }

        v4 = v55;
      }

      else
      {
        *v12 = 0;
        v13 = v12 + 4;
      }

      v10[4] = v13;
      ++v8;
      v7 += 48;
    }

    while (v4 != v8);
    for (i = 0; i != v55; ++i)
    {
      v25 = *(v62[5] + 24 * i + 8) - *(v62[5] + 24 * i);
      if (v25)
      {
        v26 = 0;
        v27 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 2);
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        do
        {
          v29 = *(v62[5] + 24 * i) + 12 * v26;
          v30 = *v29;
          v31 = *(v29 + 4);
          LODWORD(v69[0]) = v31;
          v32 = a1[3] + 48 * v30;
          v33 = *(v32 + 8);
          v34 = *v32;
          if (*v32 != v33)
          {
            while (*v34 != v31)
            {
              if (++v34 == v33)
              {
                v34 = *(v32 + 8);
                break;
              }
            }
          }

          v35 = *(v29 + 8);
          if (v33 == v34)
          {
            std::vector<unsigned int>::push_back[abi:nn200100]((a1[3] + 48 * v30), v69);
            v37 = *(v32 + 32);
            v36 = *(v32 + 40);
            if (v37 >= v36)
            {
              v39 = *(v32 + 24);
              v40 = v37 - v39;
              v41 = (v37 - v39) >> 2;
              v42 = v41 + 1;
              if ((v41 + 1) >> 62)
              {
                goto LABEL_56;
              }

              v43 = v36 - v39;
              if (v43 >> 1 > v42)
              {
                v42 = v43 >> 1;
              }

              v44 = v43 >= 0x7FFFFFFFFFFFFFFCLL;
              v45 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v44)
              {
                v45 = v42;
              }

              if (v45)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(v32 + 24, v45);
              }

              v46 = (v37 - v39) >> 2;
              v47 = (4 * v41);
              v48 = (4 * v41 - 4 * v46);
              *v47 = v35;
              v38 = v47 + 1;
              memcpy(v48, v39, v40);
              v49 = *(v32 + 24);
              *(v32 + 24) = v48;
              *(v32 + 32) = v38;
              *(v32 + 40) = 0;
              if (v49)
              {
                operator delete(v49);
              }
            }

            else
            {
              *v37 = v35;
              v38 = v37 + 1;
            }

            *(v32 + 32) = v38;
          }

          else
          {
            *(v34 + *(v32 + 24) - *v32) = v35 + *(v34 + *(v32 + 24) - *v32);
          }

          ++v26;
        }

        while (v26 != v28);
      }
    }

    v50 = 0;
    v51 = a1[3];
    do
    {
      v52 = v51 + 48 * v50;
      v53 = *(v52 + 24);
      v54 = *(v52 + 32);
      while (v53 != v54)
      {
        *v53 = *v53 / 3.0;
        ++v53;
      }

      ++v50;
    }

    while (v50 != v55);
  }

  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v61, 8);
  v69[0] = v66;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](v69);
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }
}

uint64_t geom::point_cloud_laplacian<float>::point_cloud_laplacian(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a4;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a1, a3);
  if (a3)
  {
    memmove(*a1, a2, 16 * a3);
  }

  geom::point_cloud_laplacian<float>::compute_cotan_laplacian_stencils(a1);
  return a1;
}

void *geom::point_cloud_laplacian<float>::get_laplacian_stencil@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = (*(a1 + 24) + 48 * a2);
  std::vector<float>::vector[abi:nn200100](a3, v4);

  return std::vector<float>::vector[abi:nn200100](a3 + 3, v4 + 3);
}

uint64_t geom::point_cloud_laplacian<float>::find_nearest_neighbors@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32[35] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = a2 + 1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x14002000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v9 = v6 - v5;
  v8 = v9 == 0;
  v10 = v9 >> 4;
  v11 = (v9 >> 4) + 29;
  if (v8)
  {
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = v5;
    v25 = v10;
  }

  v26 = 0;
  v12 = (v11 * 0x8888888888888889) >> 64;
  geom::point_tree<float,(unsigned char)3>::point_tree(v32, &v24, 5, (a2 + 1), 0);
  if (v26 == 1 && v24)
  {
    MEMORY[0x25305E3D0](v24, 0x1000C80451B5BE8);
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  geom::point_tree<float,(unsigned char)3>::precompute_cell_data(v28 + 6);
  v16 = 0;
  v17 = &v16;
  v18 = 0x4002000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__2;
  __p = 0;
  v22 = 0;
  v23 = 0;
  if (v10 * v7)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, v10 * v7);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK4geom21point_cloud_laplacianIfE22find_nearest_neighborsEm_block_invoke;
  block[3] = &unk_27969BF90;
  block[6] = a1;
  block[7] = v12 >> 4;
  block[8] = v10;
  block[9] = v7;
  block[4] = &v27;
  block[5] = &v16;
  dispatch_apply(0x1EuLL, 0, block);
  std::vector<float>::vector[abi:nn200100](a3, v17 + 5);
  _Block_object_dispose(&v16, 8);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v27, 8);
  result = geom::point_tree<float,(unsigned char)3>::~point_tree(v32);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v5;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = *(a2 + 296);
  result = *(a2 + 304);
  *(a1 + 304) = result;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  return result;
}

__n128 __Block_byref_object_copy__1(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZNK4geom21point_cloud_laplacianIfE22find_nearest_neighborsEm_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v4 >= *(a1 + 64))
  {
    v5 = *(a1 + 64);
  }

  else
  {
    v5 = v4;
  }

  if (v3 < v5)
  {
    v7 = *(a1 + 48);
    for (i = 4 * v3; ; i += 4)
    {
      v9 = *v7;
      v16 = 0;
      v17 = 0;
      __p = 0;
      geom::point_tree<float,(unsigned char)3>::find_k_nearest((*(*(a1 + 32) + 8) + 48), *(a1 + 72), &__p, *(v9 + 16 * v3));
      v10 = *(a1 + 72);
      v11 = __p;
      if (v10)
      {
        break;
      }

      if (__p)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (++v3 == v5)
      {
        return;
      }
    }

    v12 = v10 * i;
    v13 = __p;
    do
    {
      v14 = *v13++;
      *(*(*(*(a1 + 40) + 8) + 40) + v12) = v14;
      v12 += 4;
      --v10;
    }

    while (v10);
LABEL_11:
    v16 = v11;
    operator delete(v11);
    goto LABEL_12;
  }
}

__n128 __Block_byref_object_copy__3(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void *___ZN4geom21point_cloud_laplacianIfE32compute_cotan_laplacian_stencilsEv_block_invoke(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v4 >= result[7])
  {
    v4 = result[7];
  }

  if (v3 < v4)
  {
    v5 = result[5];
    std::vector<unsigned int>::vector[abi:nn200100]<std::__wrap_iter<unsigned int const*>,0>(v8, result[8] + 4 * v3 * result[11], result[8] + 4 * (v3 + 1) * result[11]);
    geom::compute_principal_component_plane_projection<float>(v5, v8[0], (v8[1] - v8[0]) >> 2, &v7);
    memset(__p, 0, sizeof(__p));
    geom::compute_constrained_delaunay_triangulation<float>(&v7, __p);
  }

  return result;
}

uint64_t geom::compute_principal_component_plane_projection<float>@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(a4, a3);
  }

  v5.i32[2] = 0;
  v5.i64[0] = 0;
  return geom::compute_principal_component_plane_projection<float>(*a1, (a1[1] - *a1) >> 4, a2, 0, a4, &v5);
}

void geom::compute_constrained_delaunay_triangulation<float>(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 4;
  a2[1] = *a2;
  std::vector<geo::math::Matrix<double,3,1>>::vector[abi:nn200100](&v21, v5);
  if (v3 != v4)
  {
    v6 = 0;
    v7 = 0;
    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    do
    {
      v9 = v21 + v6;
      *v9 = vcvtq_f64_f32(*(*a1 + 16 * v7));
      *(v9 + 16) = 0;
      ++v7;
      v6 += 24;
    }

    while (v8 != v7);
  }

  v11 = v21;
  v10 = v22;
  if (v22 == v21)
  {
    v10 = 0;
    v11 = 0;
  }

  v12[0] = v11;
  v12[1] = v10;
  geo::math::Get2DConvexHull<double,3ul>(v12, &v19);
  memset(v18, 0, sizeof(v18));
  if (v20 != v19)
  {
    std::vector<double>::__vallocate[abi:nn200100](v18, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
  }

  v16 = 0;
  __p = 0;
  __dst = 0;
  if (v22 != v21)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](&__p, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
  }

  geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::RangePolyline(v17, &__p);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  geo::math::ConstrainedDelaunayTriangulationMesherDetails::ConstrainedDelaunayTriangulationMesherDetails(v13, v17);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(v13);
  operator new();
}

void geom::point_cloud_laplacian<float>::compute_stencil_contributions(void *a1@<X1>, void *a2@<X2>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = (a2[1] - *a2) >> 2;
  geom::ddg_evaluator<float>::ddg_evaluator(v60, *a1, (a1[1] - *a1) >> 4);
  geom::ddg_evaluator<float>::set_clamp_cotan_weights(v60, 1);
  if (geom::ddg_evaluator<float>::is_valid(v60))
  {
    geom::ddg_evaluator<float>::compute_laplacian_stencil(v60, 0, 1, &v56);
    if (v57 != v56)
    {
      v5 = 0;
      if (((v57 - v56) >> 2) <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = (v57 - v56) >> 2;
      }

      v7 = a3[1];
      do
      {
        v8 = v56;
        v9 = v58;
        v10 = a3[2];
        if (v7 >= v10)
        {
          v11 = *a3;
          v12 = v7 - *a3;
          v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2) + 1;
          if (v13 > 0x1555555555555555)
          {
LABEL_71:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 2);
          if (2 * v14 > v13)
          {
            v13 = 2 * v14;
          }

          if (v14 >= 0xAAAAAAAAAAAAAAALL)
          {
            v15 = 0x1555555555555555;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a3, v15);
          }

          v16 = (4 * (v12 >> 2));
          *v16 = 0;
          v16[1] = v8[v5];
          v16[2] = v9[v5];
          v7 = (v16 + 3);
          v17 = v16 - v12;
          memcpy(v16 - v12, v11, v12);
          v18 = *a3;
          *a3 = v17;
          a3[1] = v7;
          a3[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v7 = 0;
          *(v7 + 1) = v8[v5];
          *(v7 + 2) = v9[v5];
          v7 += 12;
        }

        a3[1] = v7;
        ++v5;
      }

      while (v6 != v5);
    }

    v53 = 0;
    v54 = 0;
    v55 = 0;
    geom::ddg_evaluator<float>::get_vertex_one_ring(v60, 0, &v53);
    v19 = v53;
    v48 = v54;
    if (v53 != v54)
    {
      do
      {
        geom::ddg_evaluator<float>::compute_laplacian_stencil(v60, *v19, 1, &v49);
        v20 = v49;
        v21 = (v50 - v49) >> 2;
        v22 = 0.0;
        if (v21 >= 2)
        {
          for (i = 1; i != v21; ++i)
          {
            v24 = v49;
            v25 = *(v49 + i);
            if (!v25)
            {
              goto LABEL_29;
            }

            v26 = v53;
            if (v53 != v54)
            {
              while (*v26 != v25)
              {
                if (++v26 == v54)
                {
                  goto LABEL_41;
                }
              }
            }

            if (v26 != v54)
            {
LABEL_29:
              v27 = __p;
              v28 = a3[1];
              v29 = a3[2];
              if (v28 >= v29)
              {
                v31 = *a3;
                v32 = v28 - *a3;
                v33 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 2) + 1;
                if (v33 > 0x1555555555555555)
                {
                  goto LABEL_71;
                }

                v34 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v31) >> 2);
                if (2 * v34 > v33)
                {
                  v33 = 2 * v34;
                }

                if (v34 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v33 = 0x1555555555555555;
                }

                if (v33)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a3, v33);
                }

                v35 = (4 * (v32 >> 2));
                *v35 = *v19;
                v35[1] = v24[i];
                v35[2] = v27[i];
                v30 = v35 + 3;
                v36 = v35 - v32;
                memcpy(v35 - v32, v31, v32);
                v37 = *a3;
                *a3 = v36;
                a3[1] = v30;
                a3[2] = 0;
                if (v37)
                {
                  operator delete(v37);
                }
              }

              else
              {
                *v28 = *v19;
                v28[1] = v24[i];
                v28[2] = v27[i];
                v30 = v28 + 3;
              }

              a3[1] = v30;
              v22 = v22 - *(__p + i);
            }

LABEL_41:
            ;
          }

          v20 = v49;
        }

        v38 = a3[1];
        v39 = a3[2];
        if (v38 >= v39)
        {
          v41 = *a3;
          v42 = v38 - *a3;
          v43 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 2) + 1;
          if (v43 > 0x1555555555555555)
          {
            goto LABEL_71;
          }

          v44 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v41) >> 2);
          if (2 * v44 > v43)
          {
            v43 = 2 * v44;
          }

          if (v44 >= 0xAAAAAAAAAAAAAAALL)
          {
            v43 = 0x1555555555555555;
          }

          if (v43)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a3, v43);
          }

          v45 = 4 * (v42 >> 2);
          *v45 = *v19;
          *(v45 + 4) = *v20;
          *(v45 + 8) = v22;
          v40 = v45 + 12;
          v46 = v45 - v42;
          memcpy((v45 - v42), v41, v42);
          v47 = *a3;
          *a3 = v46;
          a3[1] = v40;
          a3[2] = 0;
          if (v47)
          {
            operator delete(v47);
          }
        }

        else
        {
          *v38 = *v19;
          *(v38 + 1) = *v20;
          *(v38 + 2) = v22;
          v40 = (v38 + 12);
        }

        a3[1] = v40;
        if (__p)
        {
          v52 = __p;
          operator delete(__p);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        ++v19;
      }

      while (v19 != v48);
      v19 = v53;
    }

    if (v19)
    {
      v54 = v19;
      operator delete(v19);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }
  }

  std::unique_ptr<geom::mesh_connectivity>::~unique_ptr[abi:nn200100](v63);
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v60[0])
  {
    v60[1] = v60[0];
    operator delete(v60[0]);
  }
}

void __destroy_helper_block_8_64c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void *geom::point_cloud_laplacian<double>::point_cloud_laplacian(void *a1, void *a2, uint64_t a3)
{
  v5 = _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(a1, a2);
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = a3;
  geom::point_cloud_laplacian<double>::compute_cotan_laplacian_stencils(v5);
  return a1;
}

void geom::point_cloud_laplacian<double>::compute_cotan_laplacian_stencils(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (v2 - *a1) >> 5;
  v5 = a1[6];
  geom::point_cloud_laplacian<double>::find_nearest_neighbors(a1, v5, &v67);
  v6 = v5 + 1;
  v61 = 0;
  v62 = &v61;
  v63 = 0x4002000000;
  v64 = __Block_byref_object_copy__9;
  v65 = __Block_byref_object_dispose__10;
  std::vector<std::vector<std::tuple<unsigned int,unsigned int,float>>>::vector[abi:nn200100](v66, v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN4geom21point_cloud_laplacianIdE32compute_cotan_laplacian_stencilsEv_block_invoke;
  block[3] = &unk_286292F08;
  block[5] = a1;
  block[6] = (v4 + 29) / 0x1E;
  block[7] = v4;
  __p = 0;
  __dst = 0;
  v59 = 0;
  if (v68 != v67)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, (v68 - v67) >> 2);
  }

  v60 = v6;
  block[4] = &v61;
  dispatch_apply(0x1EuLL, 0, block);
  std::vector<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil>>::resize((a1 + 3), v4);
  if (v2 != v3)
  {
    v7 = 0;
    v8 = 0;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v55 = v4;
    do
    {
      v9 = a1[3];
      LODWORD(v69[0]) = v8;
      std::vector<unsigned int>::push_back[abi:nn200100]((v9 + v7), v69);
      v10 = (a1[3] + v7);
      v12 = v10[4];
      v11 = v10[5];
      if (v12 >= v11)
      {
        v14 = v10[3];
        v15 = v12 - v14;
        v16 = (v12 - v14) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
LABEL_56:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v18 = v11 - v14;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<double>>((v10 + 3), v19);
        }

        v20 = (v12 - v14) >> 3;
        v21 = (8 * v16);
        v22 = (8 * v16 - 8 * v20);
        *v21 = 0;
        v13 = v21 + 1;
        memcpy(v22, v14, v15);
        v23 = v10[3];
        v10[3] = v22;
        v10[4] = v13;
        v10[5] = 0;
        if (v23)
        {
          operator delete(v23);
        }

        v4 = v55;
      }

      else
      {
        *v12 = 0;
        v13 = v12 + 8;
      }

      v10[4] = v13;
      ++v8;
      v7 += 48;
    }

    while (v4 != v8);
    for (i = 0; i != v55; ++i)
    {
      v25 = *(v62[5] + 24 * i + 8) - *(v62[5] + 24 * i);
      if (v25)
      {
        v26 = 0;
        v27 = v25 >> 4;
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        do
        {
          v29 = *(v62[5] + 24 * i) + 16 * v26;
          v30 = *v29;
          v31 = *(v29 + 4);
          LODWORD(v69[0]) = v31;
          v32 = a1[3] + 48 * v30;
          v33 = *(v32 + 8);
          v34 = *v32;
          if (*v32 != v33)
          {
            while (*v34 != v31)
            {
              if (++v34 == v33)
              {
                v34 = *(v32 + 8);
                break;
              }
            }
          }

          v35 = *(v29 + 8);
          if (v33 == v34)
          {
            std::vector<unsigned int>::push_back[abi:nn200100]((a1[3] + 48 * v30), v69);
            v37 = *(v32 + 32);
            v36 = *(v32 + 40);
            if (v37 >= v36)
            {
              v39 = *(v32 + 24);
              v40 = v37 - v39;
              v41 = (v37 - v39) >> 3;
              v42 = v41 + 1;
              if ((v41 + 1) >> 61)
              {
                goto LABEL_56;
              }

              v43 = v36 - v39;
              if (v43 >> 2 > v42)
              {
                v42 = v43 >> 2;
              }

              v44 = v43 >= 0x7FFFFFFFFFFFFFF8;
              v45 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v44)
              {
                v45 = v42;
              }

              if (v45)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(v32 + 24, v45);
              }

              v46 = (v37 - v39) >> 3;
              v47 = (8 * v41);
              v48 = (8 * v41 - 8 * v46);
              *v47 = v35;
              v38 = v47 + 1;
              memcpy(v48, v39, v40);
              v49 = *(v32 + 24);
              *(v32 + 24) = v48;
              *(v32 + 32) = v38;
              *(v32 + 40) = 0;
              if (v49)
              {
                operator delete(v49);
              }
            }

            else
            {
              *v37 = v35;
              v38 = v37 + 1;
            }

            *(v32 + 32) = v38;
          }

          else
          {
            *(*(v32 + 24) + 2 * (v34 - *v32)) = v35 + *(*(v32 + 24) + 2 * (v34 - *v32));
          }

          ++v26;
        }

        while (v26 != v28);
      }
    }

    v50 = 0;
    v51 = a1[3];
    do
    {
      v52 = v51 + 48 * v50;
      v53 = *(v52 + 24);
      v54 = *(v52 + 32);
      while (v53 != v54)
      {
        *v53 = *v53 / 3.0;
        ++v53;
      }

      ++v50;
    }

    while (v50 != v55);
  }

  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v61, 8);
  v69[0] = v66;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](v69);
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }
}

uint64_t geom::point_cloud_laplacian<double>::point_cloud_laplacian(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a4;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(a1, a3);
  if (a3)
  {
    memmove(*a1, a2, 32 * a3);
  }

  geom::point_cloud_laplacian<double>::compute_cotan_laplacian_stencils(a1);
  return a1;
}

void *geom::point_cloud_laplacian<double>::get_laplacian_stencil@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = (*(a1 + 24) + 48 * a2);
  std::vector<float>::vector[abi:nn200100](a3, v4);

  return std::vector<double>::vector[abi:nn200100](a3 + 3, v4 + 3);
}

uint64_t geom::point_cloud_laplacian<double>::find_nearest_neighbors@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32[43] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = a2 + 1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x18002000000;
  v30 = __Block_byref_object_copy__6;
  v31 = __Block_byref_object_dispose__7;
  v9 = v6 - v5;
  v8 = v9 == 0;
  v10 = v9 >> 5;
  v11 = (v9 >> 5) + 29;
  if (v8)
  {
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = v5;
    v25 = v10;
  }

  v26 = 0;
  v12 = (v11 * 0x8888888888888889) >> 64;
  geom::point_tree<double,(unsigned char)3>::point_tree(v32, &v24, 5, (a2 + 1), 0);
  if (v26 == 1 && v24)
  {
    MEMORY[0x25305E3D0](v24, 0x1000C80E0EAB150);
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  geom::point_tree<double,(unsigned char)3>::precompute_cell_data(v28 + 6);
  v16 = 0;
  v17 = &v16;
  v18 = 0x4002000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__2;
  __p = 0;
  v22 = 0;
  v23 = 0;
  if (v10 * v7)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, v10 * v7);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK4geom21point_cloud_laplacianIdE22find_nearest_neighborsEm_block_invoke;
  block[3] = &unk_27969BFB8;
  block[6] = a1;
  block[7] = v12 >> 4;
  block[8] = v10;
  block[9] = v7;
  block[4] = &v27;
  block[5] = &v16;
  dispatch_apply(0x1EuLL, 0, block);
  std::vector<float>::vector[abi:nn200100](a3, v17 + 5);
  _Block_object_dispose(&v16, 8);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v27, 8);
  result = geom::point_tree<double,(unsigned char)3>::~point_tree(v32);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  v5 = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v7;
  *(a1 + 128) = v5;
  *(a1 + 144) = v6;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v8 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v8;
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = *(a2 + 360);
  result = *(a2 + 368);
  *(a1 + 368) = result;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  return result;
}

void ___ZNK4geom21point_cloud_laplacianIdE22find_nearest_neighborsEm_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v4 >= *(a1 + 64))
  {
    v5 = *(a1 + 64);
  }

  else
  {
    v5 = v4;
  }

  if (v3 < v5)
  {
    v7 = *(a1 + 48);
    for (i = 4 * v3; ; i += 4)
    {
      v9 = (*v7 + 32 * v3);
      v20 = 0;
      v21 = 0;
      __p = 0;
      v10 = *(*(a1 + 32) + 8);
      v11 = v9[1];
      v12 = *(a1 + 72);
      v18[0] = *v9;
      v18[1] = v11;
      geom::point_tree<double,(unsigned char)3>::find_k_nearest((v10 + 48), v18, v12, &__p);
      v13 = *(a1 + 72);
      v14 = __p;
      if (v13)
      {
        break;
      }

      if (__p)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (++v3 == v5)
      {
        return;
      }
    }

    v15 = v13 * i;
    v16 = __p;
    do
    {
      v17 = *v16++;
      *(*(*(*(a1 + 40) + 8) + 40) + v15) = v17;
      v15 += 4;
      --v13;
    }

    while (v13);
LABEL_11:
    v20 = v14;
    operator delete(v14);
    goto LABEL_12;
  }
}

__n128 __Block_byref_object_copy__9(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void *___ZN4geom21point_cloud_laplacianIdE32compute_cotan_laplacian_stencilsEv_block_invoke(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v4 >= result[7])
  {
    v4 = result[7];
  }

  if (v3 < v4)
  {
    v5 = result[5];
    std::vector<unsigned int>::vector[abi:nn200100]<std::__wrap_iter<unsigned int const*>,0>(v8, result[8] + 4 * v3 * result[11], result[8] + 4 * (v3 + 1) * result[11]);
    geom::compute_principal_component_plane_projection<double>(v5, v8[0], (v8[1] - v8[0]) >> 2, &v7);
    memset(__p, 0, sizeof(__p));
    geom::compute_constrained_delaunay_triangulation<double>(&v7, __p);
  }

  return result;
}

uint64_t geom::compute_principal_component_plane_projection<double>@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(a4, a3);
  }

  v6 = 0;
  v5 = 0uLL;
  return geom::compute_principal_component_plane_projection<double>(*a1, (a1[1] - *a1) >> 5, a2, 0, a4, &v5);
}

void geom::compute_constrained_delaunay_triangulation<double>(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 5;
  a2[1] = *a2;
  std::vector<geo::math::Matrix<double,3,1>>::vector[abi:nn200100](&v21, v5);
  if (v3 != v4)
  {
    v6 = 0;
    v7 = 0;
    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    do
    {
      v9 = v21 + v6;
      *v9 = *(*a1 + 32 * v7);
      *(v9 + 16) = 0;
      ++v7;
      v6 += 24;
    }

    while (v8 != v7);
  }

  v11 = v21;
  v10 = v22;
  if (v22 == v21)
  {
    v10 = 0;
    v11 = 0;
  }

  v12[0] = v11;
  v12[1] = v10;
  geo::math::Get2DConvexHull<double,3ul>(v12, &v19);
  memset(v18, 0, sizeof(v18));
  if (v20 != v19)
  {
    std::vector<double>::__vallocate[abi:nn200100](v18, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
  }

  v16 = 0;
  __p = 0;
  __dst = 0;
  if (v22 != v21)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](&__p, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
  }

  geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::RangePolyline(v17, &__p);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  geo::math::ConstrainedDelaunayTriangulationMesherDetails::ConstrainedDelaunayTriangulationMesherDetails(v13, v17);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(v13);
  operator new();
}

void geom::point_cloud_laplacian<double>::compute_stencil_contributions(void *a1@<X1>, void *a2@<X2>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = (a2[1] - *a2) >> 2;
  geom::ddg_evaluator<double>::ddg_evaluator(v64, *a1, (a1[1] - *a1) >> 5);
  geom::ddg_evaluator<float>::set_clamp_cotan_weights(v64, 1);
  if (geom::ddg_evaluator<float>::is_valid(v64))
  {
    geom::ddg_evaluator<double>::compute_laplacian_stencil(v64, 0, 1, &v60);
    if (v61 != v60)
    {
      v5 = 0;
      if (((v61 - v60) >> 2) <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = (v61 - v60) >> 2;
      }

      v7 = a3[1];
      do
      {
        v8 = v60;
        v9 = v62;
        v10 = a3[2];
        if (v7 >= v10)
        {
          v11 = *a3;
          v12 = v7 - *a3;
          v13 = v12 >> 4;
          v14 = (v12 >> 4) + 1;
          if (v14 >> 60)
          {
LABEL_72:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v15 = v10 - v11;
          if (v15 >> 3 > v14)
          {
            v14 = v15 >> 3;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF0)
          {
            v16 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a3, v16);
          }

          v17 = 16 * v13;
          *v17 = 0;
          *(v17 + 4) = v8[v5];
          *(v17 + 8) = v9[v5];
          v7 = 16 * v13 + 16;
          v18 = (v17 - 16 * (v12 >> 4));
          memcpy(v18, v11, v12);
          v19 = *a3;
          *a3 = v18;
          a3[1] = v7;
          a3[2] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v7 = 0;
          *(v7 + 4) = v8[v5];
          *(v7 + 8) = v9[v5];
          v7 += 16;
        }

        a3[1] = v7;
        ++v5;
      }

      while (v6 != v5);
    }

    v57 = 0;
    v58 = 0;
    v59 = 0;
    geom::ddg_evaluator<float>::get_vertex_one_ring(v64, 0, &v57);
    v20 = v57;
    v21 = v58;
    if (v57 != v58)
    {
      v52 = v58;
      do
      {
        geom::ddg_evaluator<double>::compute_laplacian_stencil(v64, *v20, 1, &v53);
        v22 = v53;
        v23 = (v54 - v53) >> 2;
        v24 = 0.0;
        if (v23 >= 2)
        {
          for (i = 1; i != v23; ++i)
          {
            v26 = v53;
            v27 = *(v53 + i);
            if (!v27)
            {
              goto LABEL_30;
            }

            v28 = v57;
            if (v57 != v58)
            {
              while (*v28 != v27)
              {
                if (++v28 == v58)
                {
                  goto LABEL_42;
                }
              }
            }

            if (v28 != v58)
            {
LABEL_30:
              v29 = __p;
              v30 = a3[1];
              v31 = a3[2];
              if (v30 >= v31)
              {
                v33 = *a3;
                v34 = v30 - *a3;
                v35 = v34 >> 4;
                v36 = (v34 >> 4) + 1;
                if (v36 >> 60)
                {
                  goto LABEL_72;
                }

                v37 = v31 - v33;
                if (v37 >> 3 > v36)
                {
                  v36 = v37 >> 3;
                }

                if (v37 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v36 = 0xFFFFFFFFFFFFFFFLL;
                }

                if (v36)
                {
                  _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a3, v36);
                }

                v38 = 16 * v35;
                *v38 = *v20;
                *(v38 + 4) = v26[i];
                *(v38 + 8) = v29[i];
                v32 = 16 * v35 + 16;
                v39 = (v38 - 16 * (v34 >> 4));
                memcpy(v39, v33, v34);
                v40 = *a3;
                *a3 = v39;
                a3[1] = v32;
                a3[2] = 0;
                if (v40)
                {
                  operator delete(v40);
                }
              }

              else
              {
                *v30 = *v20;
                *(v30 + 1) = v26[i];
                *(v30 + 1) = v29[i];
                v32 = (v30 + 16);
              }

              a3[1] = v32;
              v24 = v24 - *(__p + i);
            }

LABEL_42:
            ;
          }

          v21 = v52;
          v22 = v53;
        }

        v41 = a3[1];
        v42 = a3[2];
        if (v41 >= v42)
        {
          v44 = *a3;
          v45 = v41 - *a3;
          v46 = v45 >> 4;
          v47 = (v45 >> 4) + 1;
          if (v47 >> 60)
          {
            goto LABEL_72;
          }

          v48 = v42 - v44;
          if (v48 >> 3 > v47)
          {
            v47 = v48 >> 3;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFF0)
          {
            v47 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v47)
          {
            _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a3, v47);
          }

          v49 = 16 * v46;
          *v49 = *v20;
          *(v49 + 4) = *v22;
          *(v49 + 8) = v24;
          v43 = 16 * v46 + 16;
          v50 = (v49 - 16 * (v45 >> 4));
          memcpy(v50, v44, v45);
          v51 = *a3;
          *a3 = v50;
          a3[1] = v43;
          a3[2] = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          *v41 = *v20;
          *(v41 + 1) = *v22;
          *(v41 + 1) = v24;
          v43 = (v41 + 16);
        }

        a3[1] = v43;
        if (__p)
        {
          v56 = __p;
          operator delete(__p);
        }

        if (v53)
        {
          v54 = v53;
          operator delete(v53);
        }

        ++v20;
      }

      while (v20 != v21);
      v20 = v57;
    }

    if (v20)
    {
      v58 = v20;
      operator delete(v20);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }
  }

  std::unique_ptr<geom::mesh_connectivity>::~unique_ptr[abi:nn200100](v67);
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }
}

uint64_t geom::compute_point_cloud_normals_and_areas<float>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16[34] = *MEMORY[0x277D85DE8];
  if (a2 >= 3 && a2 >= a3 + 1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x14002000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v8 = a1;
    v9 = a2;
    v10 = 0;
    geom::point_tree<float,(unsigned char)3>::point_tree(v16, &v8, 5, (a3 + 1), 0);
    if (v10 == 1 && v8)
    {
      MEMORY[0x25305E3D0](v8, 0x1000C80451B5BE8);
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    geom::point_tree<float,(unsigned char)3>::precompute_cell_data(v12 + 6);
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x4002000000;
    v6[3] = __Block_byref_object_copy__14;
    v6[4] = __Block_byref_object_dispose__15;
    memset(v7, 0, sizeof(v7));
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(v7, a2);
  }

  result = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __Block_byref_object_copy__14(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__15(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__16(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__17(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *___ZN4geom37compute_point_cloud_normals_and_areasIfEEbNS_5sliceINS_11vector_typeIT_Lh3EvE5valueEEEmRNSt3__16vectorIS5_NS7_9allocatorIS5_EEEERNS8_IS3_NS9_IS3_EEEE_block_invoke(void *result, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = result[7];
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v4 >= result[8])
  {
    v4 = result[8];
  }

  if (v3 < v4)
  {
    v5 = result;
    v6 = result[9];
    v31 = 0;
    v32 = 0;
    v30 = 0;
    geom::point_tree<float,(unsigned char)3>::find_k_nearest((*(v5[4] + 8) + 48), *(v5 + 22), &v30, *(v6 + 16 * v3));
    __src = 0;
    v28 = 0;
    v29 = 0;
    v7 = v30;
    v8 = v31;
    if (v30 == v31)
    {
      v9 = 0;
      v22 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        v10 = *v7;
        if (v9 >= v29)
        {
          v11 = __src;
          v12 = v9 - __src;
          v13 = (v9 - __src) >> 2;
          v14 = v13 + 1;
          if ((v13 + 1) >> 62)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v15 = v29 - __src;
          if ((v29 - __src) >> 1 > v14)
          {
            v14 = v15 >> 1;
          }

          v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
          v17 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v16)
          {
            v17 = v14;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(&__src, v17);
          }

          v18 = (v9 - __src) >> 2;
          v19 = (4 * v13);
          v20 = (4 * v13 - 4 * v18);
          *v19 = v10;
          v9 = (v19 + 1);
          memcpy(v20, v11, v12);
          v21 = __src;
          __src = v20;
          v28 = v9;
          v29 = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v9 = v10;
          v9 += 4;
        }

        v28 = v9;
        v7 += 2;
      }

      while (v7 != v8);
      v22 = __src;
    }

    v23 = (*(*(v5[5] + 8) + 40) + 16 * v3);
    memset(v26, 0, sizeof(v26));
    geom::compute_principal_component_plane_projection<float>(v5[9], v5[10], v22, (v9 - v22) >> 2, v26, v23);
    memset(v25, 0, sizeof(v25));
    geom::compute_constrained_delaunay_triangulation<float>(v26, v25);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::compute_principal_component_plane_projection<float>(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4, void *a5, float32x4_t *a6)
{
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a5, a4);
  if (a4)
  {
    v17 = 0;
    v18 = 0uLL;
    do
    {
      v19 = *(a1 + 16 * a3[v17]);
      v18 = vaddq_f32(v18, v19);
      ++v17;
    }

    while (a4 != v17);
    v19.f32[0] = a4;
    v20 = vdivq_f32(v18, vdupq_lane_s32(*v19.f32, 0));
    v16.i64[0] = 0;
    v21 = a3;
    v22 = a4;
    v15.i64[0] = 0;
    do
    {
      v23 = *v21++;
      _Q4 = vsubq_f32(*(a1 + 16 * v23), v20);
      _S5 = _Q4.i32[1];
      __asm { FMLA            S1, S5, V4.S[1] }

      _S5 = _Q4.i32[2];
      __asm { FMLA            S0, S5, V4.S[2] }

      *v16.i8 = vmla_n_f32(*v16.i8, *_Q4.f32, _Q4.f32[0]);
      *v15.i8 = vmla_laneq_f32(*v15.i8, *_Q4.f32, _Q4, 2);
      --v22;
    }

    while (v22);
    v51 = v20;
  }

  else
  {
    _S1 = 0;
    *v14.i32 = 0.0 / 0;
    v51 = vdupq_lane_s32(v14, 0);
    v16.i64[0] = 0;
    _S0 = 0;
    v15.i64[0] = 0;
  }

  v33.i64[0] = v16.i64[0];
  v33.i64[1] = v15.i64[0];
  v16.i32[0] = vdup_lane_s32(*v16.i8, 1).u32[0];
  v16.i32[1] = _S1;
  v16.i32[2] = v15.i32[1];
  v57[0] = v33;
  v57[1] = v16;
  v15.i32[2] = _S0;
  v57[2] = v15;
  DWORD2(v52) = 0;
  *&v52 = 0;
  result = geom::compute_svd_3x3<float>(v57, &v54, &v52, v53, v11, v12, v13);
  v36 = vmulq_f32(v56, v56);
  v35 = vaddv_f32(*v36.f32);
  v36.i32[1] = 0;
  *&v37 = v36.f32[2] + v35;
  v38 = vrsqrte_f32(COERCE_UNSIGNED_INT(v36.f32[2] + v35));
  v39 = vmul_f32(v38, vrsqrts_f32(v37, vmul_f32(v38, v38)));
  *a6 = vmulq_n_f32(v56, vmul_f32(v39, vrsqrts_f32(v37, vmul_f32(v39, v39))).f32[0]);
  if (a4)
  {
    v40 = 0;
    v41 = vmulq_f32(v54, v54);
    *&v42 = v41.f32[2] + vaddv_f32(*v41.f32);
    *v41.f32 = vrsqrte_f32(v42);
    *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32)));
    v43 = vmulq_n_f32(v54, vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
    v44 = vmulq_f32(v55, v55);
    v36.f32[0] = v44.f32[2] + vaddv_f32(*v44.f32);
    *v44.f32 = vrsqrte_f32(*v36.f32);
    *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(*v36.f32, vmul_f32(*v44.f32, *v44.f32)));
    v45 = vmulq_n_f32(v55, vmul_f32(*v44.f32, vrsqrts_f32(*v36.f32, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
    do
    {
      v46 = vsubq_f32(*(a1 + 16 * a3[v40]), v51);
      v47 = vmulq_f32(*a6, v46);
      v47.f32[0] = v47.f32[2] + vaddv_f32(*v47.f32);
      v48 = vmlsq_lane_f32(v46, *a6, *v47.f32, 0);
      v49 = vmulq_f32(v43, v48);
      v50 = vmulq_f32(v45, v48);
      *(*a5 + 16 * v40++) = __PAIR64__(v50.f32[2] + vaddv_f32(*v50.f32), v49.f32[2] + vaddv_f32(*v49.f32));
    }

    while (a4 != v40);
  }

  return result;
}

uint64_t geom::compute_point_cloud_normals_and_areas<double>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16[42] = *MEMORY[0x277D85DE8];
  if (a2 >= 3 && a2 >= a3 + 1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x18002000000;
    v14 = __Block_byref_object_copy__6;
    v15 = __Block_byref_object_dispose__7;
    v8 = a1;
    v9 = a2;
    v10 = 0;
    geom::point_tree<double,(unsigned char)3>::point_tree(v16, &v8, 5, (a3 + 1), 0);
    if (v10 == 1 && v8)
    {
      MEMORY[0x25305E3D0](v8, 0x1000C80E0EAB150);
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    geom::point_tree<double,(unsigned char)3>::precompute_cell_data(v12 + 6);
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x4002000000;
    v6[3] = __Block_byref_object_copy__19;
    v6[4] = __Block_byref_object_dispose__20;
    memset(v7, 0, sizeof(v7));
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(v7, a2);
  }

  result = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __Block_byref_object_copy__19(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__20(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__21(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__22(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t ___ZN4geom37compute_point_cloud_normals_and_areasIdEEbNS_5sliceINS_11vector_typeIT_Lh3EvE5valueEEEmRNSt3__16vectorIS5_NS7_9allocatorIS5_EEEERNS8_IS3_NS9_IS3_EEEE_block_invoke(uint64_t result, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(result + 56);
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v4 >= *(result + 64))
  {
    v4 = *(result + 64);
  }

  if (v3 < v4)
  {
    v5 = result;
    v6 = (*(result + 72) + 32 * v3);
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v7 = *(*(result + 32) + 8);
    v8 = v6[1];
    v9 = *(result + 88);
    *v28 = *v6;
    *v29 = v8;
    geom::point_tree<double,(unsigned char)3>::find_k_nearest((v7 + 48), v28, v9, &v35);
    __src = 0;
    v33 = 0;
    v34 = 0;
    v10 = v35;
    v11 = v36;
    if (v35 == v36)
    {
      v12 = 0;
      v25 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = *v10;
        if (v12 >= v34)
        {
          v14 = __src;
          v15 = v12 - __src;
          v16 = (v12 - __src) >> 2;
          v17 = v16 + 1;
          if ((v16 + 1) >> 62)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v18 = v34 - __src;
          if ((v34 - __src) >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
          v20 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v19)
          {
            v20 = v17;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(&__src, v20);
          }

          v21 = (v12 - __src) >> 2;
          v22 = (4 * v16);
          v23 = (4 * v16 - 4 * v21);
          *v22 = v13;
          v12 = (v22 + 1);
          memcpy(v23, v14, v15);
          v24 = __src;
          __src = v23;
          v33 = v12;
          v34 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v12 = v13;
          v12 += 4;
        }

        v33 = v12;
        v10 += 2;
      }

      while (v10 != v11);
      v25 = __src;
    }

    v26 = (*(*(v5[5] + 8) + 40) + 32 * v3);
    memset(v31, 0, sizeof(v31));
    geom::compute_principal_component_plane_projection<double>(v5[9], v5[10], v25, (v12 - v25) >> 2, v31, v26);
    memset(v30, 0, sizeof(v30));
    geom::compute_constrained_delaunay_triangulation<double>(v31, v30);
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::compute_principal_component_plane_projection<double>(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4, void *a5, float64x2_t *a6)
{
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(a5, a4);
  if (a4)
  {
    v17 = 0;
    v18 = 0uLL;
    v19 = 0uLL;
    do
    {
      v20 = (a1 + 32 * a3[v17]);
      _Q2 = *v20;
      v19 = vaddq_f64(v19, v20[1]);
      v18 = vaddq_f64(v18, *v20);
      ++v17;
    }

    while (a4 != v17);
    _Q2.f64[0] = a4;
    v16 = vdupq_lane_s64(COERCE__INT64(a4), 0);
    v21 = vdivq_f64(v19, _Q2);
    v22 = vdivq_f64(v18, v16);
    v14 = vextq_s8(v22, v22, 8uLL);
    v23 = 0uLL;
    *&v24.f64[0] = v22.i64[0];
    v57 = *v14.i64;
    *&v24.f64[1] = v14.i64[0];
    v25 = a3;
    v26 = a4;
    v14.i64[0] = 0;
    v16.f64[0] = 0.0;
    do
    {
      v27 = *v25++;
      v28 = (a1 + 32 * v27);
      _Q7 = vsubq_f64(*v28, v24);
      _D16 = _Q7.f64[1];
      __asm { FMLA            D4, D16, V7.D[1] }

      _D6 = v28[1].f64[0] - v21.f64[0];
      v16.f64[0] = v16.f64[0] + _D6 * _D6;
      v23 = vmlaq_n_f64(v23, _Q7, _Q7.f64[0]);
      *v14.i64 = *v14.i64 + _Q7.f64[0] * _D6;
      __asm { FMLA            D2, D6, V7.D[1] }

      --v26;
    }

    while (v26);
    v58 = v21;
    v59 = *v22.i64;
  }

  else
  {
    _D4 = 0;
    *v14.i64 = 0.0 / 0;
    v23 = 0uLL;
    v59 = *v14.i64;
    v57 = *v14.i64;
    v58 = v14;
    v16.f64[0] = 0.0;
    v14.i64[0] = 0;
    _Q2.f64[0] = 0.0;
  }

  *&v37 = vdupq_laneq_s64(v23, 1).u64[0];
  v69[0] = v23;
  v69[1] = v14;
  *(&v37 + 1) = _D4;
  v14.i64[1] = *&_Q2.f64[0];
  v69[2] = v37;
  v69[3] = _Q2;
  v69[4] = v14;
  v69[5] = v16;
  v61 = 0;
  v60 = 0uLL;
  result = geom::compute_svd_3x3<double>(v69, &v63, &v60, v62, v11, v12, v13);
  v39 = 1.0 / sqrt(vmulq_f64(v68, v68).f64[0] + vaddvq_f64(vmulq_f64(v67, v67)));
  v40 = vmulq_n_f64(v68, v39);
  *a6 = vmulq_n_f64(v67, v39);
  a6[1] = v40;
  v41.f64[0] = v59;
  if (a4)
  {
    v42 = 0;
    v43 = vmulq_f64(v64, v64);
    v43.f64[0] = 1.0 / sqrt(v43.f64[0] + vaddvq_f64(vmulq_f64(v63, v63)));
    v44 = vmulq_f64(v64, v43);
    v47 = vmulq_n_f64(v63, v43.f64[0]);
    v45 = vmulq_f64(v66, v66);
    v45.f64[0] = 1.0 / sqrt(v45.f64[0] + vaddvq_f64(vmulq_f64(v65, v65)));
    v46 = vmulq_f64(v66, v45);
    v48 = vmulq_n_f64(v65, v45.f64[0]);
    v41.f64[1] = v57;
    v47.i64[1] = vextq_s8(v47, v47, 8uLL).u64[0];
    v48.i64[1] = vextq_s8(v48, v48, 8uLL).u64[0];
    do
    {
      v49 = (a1 + 32 * a3[v42]);
      v50 = vsubq_f64(*v49, v41);
      v51 = vsubq_f64(v49[1], v58);
      v52 = a6[1];
      v53 = vmulq_f64(v52, v51);
      v53.f64[0] = v53.f64[0] + vaddvq_f64(vmulq_f64(*a6, v50));
      v54 = vmlsq_lane_f64(v50, *a6, v53.f64[0], 0);
      v55 = vmlsq_f64(v51, v52, v53);
      v56 = *a5 + 32 * v42;
      *v56 = vaddq_f64(vzip1q_s64(vmulq_f64(v44, v55), vmulq_f64(v46, v55)), vpaddq_f64(vmulq_f64(v47, v54), vmulq_f64(v48, v54)));
      *(v56 + 16) = 0uLL;
      ++v42;
    }

    while (a4 != v42);
  }

  return result;
}

void geom::compute_principal_component_plane_projection<float>(unint64_t a1@<X1>, unsigned int *a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  __dst = 0;
  v5 = 0;
  v6 = 0;
  if (a1)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(&__dst, a1);
  }

  geom::compute_principal_component_plane_projection<float>(&__dst, a2, a3, a4);
  if (__dst)
  {
    v5 = __dst;
    operator delete(__dst);
  }
}

void geom::compute_principal_component_plane_projection<double>(unint64_t a1@<X1>, unsigned int *a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  __dst = 0;
  v5 = 0;
  v6 = 0;
  if (a1)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(&__dst, a1);
  }

  geom::compute_principal_component_plane_projection<double>(&__dst, a2, a3, a4);
  if (__dst)
  {
    v5 = __dst;
    operator delete(__dst);
  }
}

void *geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 36);
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 39);
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 42);
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 45);

  return std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::clear(this + 48);
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::Build(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 3) - *(a1 + 2)) >> 3) < 3 || !geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(a1) || !geo::math::ConstrainedDelaunayTriangulationMesherDetails::GenerateConstraints(a1) || !geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeConstrainedDelaunay(a1))
  {
    return 0;
  }

  return geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(a1);
}

void geom::compute_constrained_delaunay_triangulation<float>(uint64_t a1, unint64_t a2, void *a3)
{
  memset(__dst, 0, sizeof(__dst));
  if (a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(__dst, a2);
  }

  geom::compute_constrained_delaunay_triangulation<float>(__dst, a3);
}

void geom::compute_constrained_delaunay_triangulation<double>(uint64_t a1, unint64_t a2, void *a3)
{
  memset(__dst, 0, sizeof(__dst));
  if (a2)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(__dst, a2);
  }

  geom::compute_constrained_delaunay_triangulation<double>(__dst, a3);
}

void *std::vector<float>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<float>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

void *std::vector<double>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<double>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::ConstrainedDelaunayTriangulationMesherDetails(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 1065353216;
  geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::OrderedPointsCopy(a2, 0, __p);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(void *a1, char **a2)
{
  v3 = (a1 + 2);
  if (v3 != a2)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  *a1 = 0xAAAAAAAAAAAAAAAELL * ((a1[3] - a1[2]) >> 3);
  std::vector<std::vector<unsigned long>>::resize(a1 + 39, 1uLL);
  std::vector<double>::resize(a1[39], 0xAAAAAAAAAAAAAAABLL * ((a1[3] - a1[2]) >> 3));
  v4 = a1[39];
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    v7 = 0;
    v8 = (v6 - v5 - 8) >> 3;
    v9 = vdupq_n_s64(v8);
    v10 = (v8 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v11 = xmmword_2500C1680;
    v12 = vdupq_n_s64(2uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v9, v11));
      if (v13.i8[0])
      {
        *(v5 + 8 * v7) = v7;
      }

      if (v13.i8[4])
      {
        *(v5 + 8 * v7 + 8) = v7 + 1;
      }

      v7 += 2;
      v11 = vaddq_s64(v11, v12);
    }

    while (v10 != v7);
  }
}

void geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::OrderedPointsCopy(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<geo::math::Matrix<double,3,1>>::reserve(a3, a2 + ((a1[3] - a1[2]) >> 2));
  v5 = a1[2];
  v6 = a1[3];
  while (v5 != v6)
  {
    v7 = *v5++;
    std::vector<std::array<std::bitset<64ul>,3ul>>::push_back[abi:nn200100](a3, (*a1 + 24 * v7));
  }
}

void std::vector<std::vector<unsigned long>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<unsigned long>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void *std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](v6, v11);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<std::bitset<64ul>,3ul>>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<std::vector<unsigned long>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<unsigned long>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<unsigned long>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *std::vector<geo::math::Matrix<double,3,1>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<std::bitset<64ul>,3ul>>>(result, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::vector<std::vector<unsigned long>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<unsigned long>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::vector<unsigned long>>::__vallocate[abi:nn200100](a1, v9);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:nn200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(&v22, a2, a3, v7);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      v18 = a1[1];
      do
      {
        v20 = *(v18 - 24);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v17 - 16) = v19;
          operator delete(v19);
        }

        v17 = v18;
      }

      while (v18 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v11 = (a2 + v10);
    std::__copy_impl::operator()[abi:nn200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(&v21, a2, (a2 + v10), v7);
    v12 = a1[1];
    if (v11 != a3)
    {
      v13 = a1[1];
      do
      {
        v14 = std::vector<double>::vector[abi:nn200100](v13, v11);
        v11 += 3;
        v13 = v14 + 3;
        v12 += 24;
      }

      while (v11 != a3);
    }

    a1[1] = v12;
  }
}

void std::vector<std::vector<unsigned long>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<unsigned long>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<unsigned long>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

char **std::__copy_impl::operator()[abi:nn200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  v90 = *MEMORY[0x277D85DE8];
  v3 = *(this + 2);
  v2 = *(this + 3);
  v4 = (this + 16);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
  if (v5 > 1)
  {
    if (*(this + 8))
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Start computing Delaunay triangulation ... \n", 44);
      v3 = *(this + 2);
      v2 = *(this + 3);
      v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
    }

    std::vector<float>::resize((this + 40), v5);
    v10 = *(this + 5);
    v11 = *(this + 6);
    if (v10 != v11)
    {
      v12 = 0;
      v13 = (v11 - v10 - 4) >> 2;
      v14 = vdupq_n_s64(v13);
      v15 = (v13 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v16 = v10 + 2;
      do
      {
        v17 = vdupq_n_s64(v12);
        v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_2500C1680)));
        if (vuzp1_s16(v18, *v14.i8).u8[0])
        {
          *(v16 - 2) = v12;
        }

        if (vuzp1_s16(v18, *&v14).i8[2])
        {
          *(v16 - 1) = v12 + 1;
        }

        if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_2500C1670)))).i32[1])
        {
          *v16 = v12 + 2;
          v16[1] = v12 + 3;
        }

        v12 += 4;
        v16 += 4;
      }

      while (v15 != v12);
    }

    v19 = 126 - 2 * __clz(v11 - v10);
    *v89 = this;
    if (v11 == v10)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    std::__introsort<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(v10, v11, v89, v20, 1);
    v22 = *(this + 2);
    v23 = *(this + 3);
    v24 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3));
    *v89 = geo::math::less<double,3,1>;
    if (v23 == v22)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,false>(v22, v23, v89, v25, 1, v21);
    std::vector<unsigned int>::resize((this + 64), v5, &geo::math::kInvalidIndex);
    if (v2 != v3)
    {
      v26 = 0;
      v27 = *(this + 5);
      v28 = *(this + 8);
      do
      {
        *(v28 + 4 * *(v27 + 4 * v26)) = v26;
        ++v26;
      }

      while (v5 > v26);
    }

    if (v5 < 2)
    {
      memset(v89, 0, 24);
      __x[0] = 0;
      std::vector<unsigned int>::resize(v89, v5, __x);
      v70 = 1;
    }

    else
    {
      v84 = v3;
      v29 = v5 - 1;
      v30 = 1;
      v31 = 32;
      v32 = 4;
      v85 = v4;
      do
      {
        v33 = *v4;
        v34 = *v4 + v31;
        v36 = *(v34 - 8);
        v35 = v34 - 8;
        v37 = v36;
        v38 = *(v35 - 24);
        if (v36 == v38)
        {
          v39 = *(this + 5);
          v40 = *(v39 + v32);
          v41 = *(v39 + v32 - 4) - v40;
          if (v41 < 0)
          {
            v41 = -v41;
          }

          if (*(*v4 + v31) == *(*v4 + v31 - 24) && v41 == v29)
          {
            *&v89[4] = *v35;
            *&v89[20] = *(v35 + 16);
            v43 = *(this + 15);
            v44 = *(this + 16);
            if (v43 >= v44)
            {
              v46 = *(this + 14);
              v47 = (v43 - v46) >> 5;
              v48 = v47 + 1;
              if ((v47 + 1) >> 59)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v49 = v44 - v46;
              if (v49 >> 4 > v48)
              {
                v48 = v49 >> 4;
              }

              if (v49 >= 0x7FFFFFFFFFFFFFE0)
              {
                v50 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v50 = v48;
              }

              if (v50)
              {
                _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(this + 112, v50);
              }

              v51 = 32 * v47;
              *v51 = v40;
              *(v51 + 8) = *&v89[4];
              *(v51 + 24) = *&v89[20];
              v45 = 32 * v47 + 32;
              v52 = *(this + 14);
              v53 = *(this + 15) - v52;
              v54 = v51 - v53;
              memcpy((v51 - v53), v52, v53);
              v55 = *(this + 14);
              *(this + 14) = v54;
              *(this + 15) = v45;
              *(this + 16) = 0;
              if (v55)
              {
                operator delete(v55);
              }

              v29 = v5 - 1;
            }

            else
            {
              *v43 = v40;
              *(v43 + 8) = *&v89[4];
              *(v43 + 24) = *&v89[20];
              v45 = v43 + 32;
            }

            *(this + 15) = v45;
            v33 = *(this + 2);
            v37 = *(v33 + v31 - 8);
            v38 = *(v33 + v31 - 32);
            v4 = v85;
          }
        }

        if (v37 == v38 && *(v33 + v31) == *(v33 + v31 - 24))
        {
          std::vector<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>::resize(this + 17, 1 - 0x3333333333333333 * ((*(this + 18) - *(this + 17)) >> 3));
          v56 = *(this + 18) - 40;
          v57 = *(this + 2) + v31;
          *v89 = v30;
          v58 = *(v57 - 8);
          *&v89[24] = *(v57 + 8);
          *&v89[8] = v58;
          std::__hash_table<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>>>::__emplace_unique_impl<std::pair<unsigned long,geo::math::Matrix<double,3,1>>>();
        }

        ++v30;
        v31 += 24;
        v32 += 4;
      }

      while (v5 != v30);
      memset(v89, 0, 24);
      __x[0] = 0;
      std::vector<unsigned int>::resize(v89, v5, __x);
      v59 = 0;
      v60 = 0;
      v61 = 1;
      v3 = v84;
      do
      {
        v62 = *v4 + v59;
        v64 = *(v62 + 24);
        v63 = (v62 + 24);
        v65 = (*v4 + 24 * v60);
        if (v64 != *v65)
        {
          goto LABEL_61;
        }

        v66 = *(*(this + 5) + 4 * v61) - *(*(this + 5) + 4 * v60);
        if (v66 < 0)
        {
          v66 = *(*(this + 5) + 4 * v60) - *(*(this + 5) + 4 * v61);
        }

        if (*(*v4 + v59 + 32) != v65[1] || v66 != v5 - 1)
        {
LABEL_61:
          if (v61 != ++v60)
          {
            v68 = *v4 + 24 * v60;
            v69 = *v63;
            *(v68 + 16) = *(v63 + 2);
            *v68 = v69;
            *(*(this + 5) + 4 * v60) = *(*(this + 5) + 4 * v61);
          }

          *(*v89 + 4 * v61) = v60;
        }

        ++v61;
        v59 += 24;
      }

      while (v5 != v61);
      v70 = v60 + 1;
    }

    if (v5 != v70)
    {
      std::vector<float>::resize((this + 88), v5);
      if (v2 != v3)
      {
        v71 = *(this + 8);
        v72 = *v89;
        v73 = *(this + 11);
        if (v5 <= 1)
        {
          v74 = 1;
        }

        else
        {
          v74 = v5;
        }

        do
        {
          v75 = *v71++;
          *v73++ = *(v72 + 4 * v75);
          --v74;
        }

        while (v74);
        *__x = 0;
        __b = 0;
        v88 = 0;
        std::vector<float>::__vallocate[abi:nn200100](__x, v5);
      }

      v76 = 0;
      *__x = 0;
      __b = 0;
      v88 = 0;
      v77 = *(this + 8);
      if (v77)
      {
        *(this + 9) = v77;
        operator delete(v77);
        v76 = __b;
      }

      v78 = v88;
      *(this + 8) = *__x;
      *(this + 9) = v76;
      *(this + 10) = v78;
      std::vector<std::array<std::bitset<64ul>,3ul>>::resize(v4, v70);
      std::vector<float>::resize((this + 40), v70);
      if (v70)
      {
        v79 = 0;
        v80 = *(this + 5);
        v81 = *(this + 8);
        do
        {
          *(v81 + 4 * *(v80 + 4 * v79)) = v79;
          ++v79;
        }

        while (v70 > v79);
        v5 = v70;
      }

      else
      {
        v5 = 0;
      }
    }

    geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveDuplicatesFromLoops(this);
    std::vector<std::vector<unsigned long>>::resize(this + 25, v5);
    *__x = 0;
    __b = 0;
    v9 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(this, 0, v5 - 1, __x);
    if (*v89)
    {
      *&v89[8] = *v89;
      operator delete(*v89);
    }
  }

  else
  {
    if (*(this + 8))
    {
      v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Only has ", 9);
      v7 = MEMORY[0x25305E300](v6, 0xAAAAAAAAAAAAAAABLL * ((*(this + 3) - *(this + 2)) >> 3));
      v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, " input points, not enough to be triangulated!", 45);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, " Quitting!\n", 11);
    }

    v9 = 0;
  }

  v82 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::GenerateConstraints(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ReshuffleIndicesAndUpdateConstraints(this, this + 36, this + 42);
  if (result)
  {

    return geo::math::ConstrainedDelaunayTriangulationMesherDetails::ReshuffleIndicesAndUpdateConstraints(this, this + 39, this + 45);
  }

  return result;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeConstrainedDelaunay(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  if (*(this + 8) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Start computing constrained Delaunay triangulation ... \n", 56);
  }

  v2 = *(this + 43) - *(this + 42);
  if (v2)
  {
    v3 = 0;
    v4 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    while (1)
    {
      v6 = *(*(this + 42) + 24 * v3 + 8) - *(*(this + 42) + 24 * v3);
      if (v6)
      {
        break;
      }

LABEL_13:
      if (++v3 == v5)
      {
        goto LABEL_14;
      }
    }

    v7 = 0;
    v8 = v6 >> 3;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      v10 = (*(*(this + 42) + 24 * v3) + 8 * v7);
      if ((geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeConstraint(this, *v10, v10[1]) & 1) == 0)
      {
        return 0;
      }

      if (v9 == ++v7)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v11 = *(this + 46) - *(this + 45);
  if (v11)
  {
    v12 = 0;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    while (1)
    {
      v15 = *(*(this + 45) + 24 * v12 + 8) - *(*(this + 45) + 24 * v12);
      if (v15)
      {
        break;
      }

LABEL_24:
      if (++v12 == v14)
      {
        goto LABEL_25;
      }
    }

    v16 = 0;
    v17 = v15 >> 3;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    while (1)
    {
      v19 = (*(*(this + 45) + 24 * v12) + 8 * v16);
      if ((geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeConstraint(this, *v19, v19[1]) & 1) == 0)
      {
        return 0;
      }

      if (v18 == ++v16)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  v20 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearSpaceByConstraints(this, this + 42);
  v21 = v20 & geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearSpaceByConstraints(this, this + 45);
  if (*(this + 8) == 1)
  {
    if (v21)
    {
      v22 = "Finish computing constrained Delaunay triangulation ... \n";
    }

    else
    {
      v22 = "Failed computing constrained Delaunay triangulation ... \n";
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], v22, 57);
  }

  return v21;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  Mesh = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(a1, &v8, &v5);
  if (Mesh)
  {
    memset(v4, 0, sizeof(v4));
    if (v9 != v8)
    {
      std::vector<float>::__vallocate[abi:nn200100](v4, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
    }

    geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::DerivedData::DerivedData(v3);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  return Mesh;
}

uint64_t geo::math::less<double,3,1>(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 >= *a2)
  {
    v5 = 0;
    v6 = 1;
    while (v2 <= v3)
    {
      v6 = v5 < 2;
      if (v5 == 2)
      {
        goto LABEL_9;
      }

      v2 = a1[v5 + 1];
      v3 = a2[++v5];
      if (v2 < v3)
      {
        LOBYTE(v5) = 1;
        goto LABEL_9;
      }
    }

    LOBYTE(v5) = 0;
LABEL_9:
    v4 = v6 & v5;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t std::vector<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>::resize(void *a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (result != v7)
    {
      result = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(result - 40);
    }

    a1[1] = v7;
  }

  return result;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveDuplicatesFromLoops(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  v2 = (this + 312);
  std::vector<std::vector<unsigned long>>::vector[abi:nn200100](&v27, 0xAAAAAAAAAAAAAAABLL * ((*(this + 40) - *(this + 39)) >> 3));
  v3 = *(this + 39);
  v4 = *(this + 40);
  if (v4 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *(v3 + 24 * v5);
      if (*(v3 + 24 * v5 + 8) != v6)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *(v6 + v7);
          v10 = *(this + 8);
          if (v9 >= (*(this + 9) - v10) >> 2)
          {
            v11 = 0xFFFFFFFFLL;
          }

          else
          {
            v11 = *(v10 + 4 * v9);
          }

          if (v11 < (*(this + 6) - *(this + 5)) >> 2)
          {
            std::vector<unsigned long long>::push_back[abi:nn200100](&v27[3 * v5], (v6 + v7));
            v3 = *v2;
          }

          ++v8;
          v6 = *(v3 + 24 * v5);
          v7 += 8;
        }

        while (v8 < (*(v3 + 24 * v5 + 8) - v6) >> 3);
        v4 = *(this + 40);
      }

      ++v5;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  }

  if (v2 != &v27)
  {
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(v2, v27, v28, 0xAAAAAAAAAAAAAAABLL * (v28 - v27));
  }

  v13 = v27;
  v12 = v28;
  if (v28 != v27)
  {
    v14 = v28;
    do
    {
      v16 = *(v14 - 3);
      v14 -= 3;
      v15 = v16;
      if (v16)
      {
        *(v12 - 2) = v15;
        operator delete(v15);
      }

      v12 = v14;
    }

    while (v14 != v13);
  }

  v28 = v13;
  v17 = (this + 288);
  std::vector<std::vector<unsigned long>>::resize(&v27, 0xAAAAAAAAAAAAAAABLL * ((*(this + 37) - *(this + 36)) >> 3));
  v18 = *(this + 36);
  v19 = *(this + 37);
  if (v19 != v18)
  {
    v20 = 0;
    do
    {
      v21 = v18[3 * v20];
      if (v18[3 * v20 + 1] != v21)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *&v21[v22];
          v25 = *(this + 8);
          if (v24 >= (*(this + 9) - v25) >> 2)
          {
            v26 = 0xFFFFFFFFLL;
          }

          else
          {
            v26 = *(v25 + 4 * v24);
          }

          if (v26 < (*(this + 6) - *(this + 5)) >> 2)
          {
            std::vector<unsigned long long>::push_back[abi:nn200100](&v27[3 * v20], &v21[v22]);
            v18 = *v17;
          }

          ++v23;
          v21 = v18[3 * v20];
          v22 += 8;
        }

        while (v23 < (v18[3 * v20 + 1] - v21) >> 3);
        v19 = *(this + 37);
      }

      ++v20;
    }

    while (v20 < 0xAAAAAAAAAAAAAAABLL * (v19 - v18));
  }

  if (v17 != &v27)
  {
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(this + 36, v27, v28, 0xAAAAAAAAAAAAAAABLL * (v28 - v27));
  }

  geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveLoopsDuplicates(this, this + 36);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveLoopsDuplicates(this, v2);
  v29 = &v27;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v29);
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, unsigned int a2, int a3, uint64_t a4)
{
  v10[0] = 0;
  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  v6 = a3 - a2;
  if (a3 - a2 + 1 < 4)
  {
    if (v6 == 1)
    {
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitSegment(a1, a2, a4);
    }

    else if (v6 == 2)
    {
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitTriangle(a1, a2, a4);
    }

    return 1;
  }

  v7 = a3 + 1 - ((a3 - a2 + 1) >> 1);
  result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(a1);
  if (result)
  {
    result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(a1);
    if (result)
    {
      return (geo::math::ConstrainedDelaunayTriangulationMesherDetails::Merge(a1, v10, v7 - 1, v9, v7, a4) & 1) != 0;
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25305E2A0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = a2 + a3;
    if ((*(v6 + 8) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 144);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x25305E2B0](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

unsigned int *std::__introsort<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(unsigned int *result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v99 = *(a2 - 1);
        v100 = *v9;
        v101 = *(*a3 + 16);
        v102 = (v101 + 24 * v99);
        v103 = (v101 + 24 * *v9);
        if (*v102 < *v103 || *v102 == *v103 && v102[1] < v103[1])
        {
          *v9 = v99;
          *(a2 - 1) = v100;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v9, v9 + 1, v9 + 2, a2 - 1, a3);
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    v15 = v14;
    v16 = *(*a3 + 16);
    if (v12 >= 0x81)
    {
      v17 = *v14;
      v18 = *v9;
      v19 = (v16 + 24 * *v14);
      v20 = *v19;
      v21 = (v16 + 24 * *v9);
      v22 = *v21;
      if (*v19 < *v21 || *v19 == *v21 && v19[1] < v21[1])
      {
        v23 = *(a2 - 1);
        v24 = (v16 + 24 * v23);
        if (*v24 < v20 || *v24 == v20 && v24[1] < v19[1])
        {
          *v9 = v23;
          goto LABEL_47;
        }

        *v9 = v17;
        *v14 = v18;
        v43 = *(a2 - 1);
        v44 = (v16 + 24 * v43);
        if (*v44 < v22 || *v44 == v22 && v44[1] < v21[1])
        {
          *v14 = v43;
LABEL_47:
          *(a2 - 1) = v18;
        }
      }

      else
      {
        v33 = *(a2 - 1);
        v34 = (v16 + 24 * v33);
        if (*v34 < v20 || *v34 == v20 && v34[1] < v19[1])
        {
          *v14 = v33;
          *(a2 - 1) = v17;
          v35 = *v9;
          v36 = (v16 + 24 * *v14);
          v37 = (v16 + 24 * *v9);
          if (*v36 < *v37 || *v36 == *v37 && v36[1] < v37[1])
          {
            *v9 = *v14;
            *v14 = v35;
          }
        }
      }

      v45 = v13 - 1;
      v46 = v9[v45];
      v47 = v9[1];
      v48 = (v16 + 24 * v46);
      v49 = *v48;
      v50 = (v16 + 24 * v47);
      v51 = *v50;
      if (*v48 < *v50 || *v48 == *v50 && v48[1] < v50[1])
      {
        v52 = *(a2 - 2);
        v53 = (v16 + 24 * v52);
        if (*v53 < v49 || *v53 == v49 && v53[1] < v48[1])
        {
          v9[1] = v52;
          goto LABEL_73;
        }

        v9[1] = v46;
        v9[v45] = v47;
        v62 = *(a2 - 2);
        v63 = (v16 + 24 * v62);
        if (*v63 < v51 || *v63 == v51 && v63[1] < v50[1])
        {
          v9[v45] = v62;
LABEL_73:
          *(a2 - 2) = v47;
        }
      }

      else
      {
        v54 = *(a2 - 2);
        v55 = (v16 + 24 * v54);
        if (*v55 < v49 || *v55 == v49 && v55[1] < v48[1])
        {
          v9[v45] = v54;
          *(a2 - 2) = v46;
          v56 = v9[v45];
          v57 = v9[1];
          v58 = (v16 + 24 * v56);
          v59 = (v16 + 24 * v57);
          if (*v58 < *v59 || *v58 == *v59 && v58[1] < v59[1])
          {
            v9[1] = v56;
            v9[v45] = v57;
          }
        }
      }

      v66 = v14[1];
      v64 = v14 + 1;
      v65 = v66;
      v67 = v9[2];
      v68 = (v16 + 24 * v66);
      v69 = *v68;
      v70 = (v16 + 24 * v67);
      v71 = *v70;
      if (*v68 < *v70 || *v68 == *v70 && v68[1] < v70[1])
      {
        v72 = *(a2 - 3);
        v73 = (v16 + 24 * v72);
        if (*v73 < v69 || *v73 == v69 && v73[1] < v68[1])
        {
          v9[2] = v72;
          goto LABEL_92;
        }

        v9[2] = v65;
        *v64 = v67;
        v79 = *(a2 - 3);
        v80 = (v16 + 24 * v79);
        if (*v80 < v71 || *v80 == v71 && v80[1] < v70[1])
        {
          *v64 = v79;
LABEL_92:
          *(a2 - 3) = v67;
        }
      }

      else
      {
        v74 = *(a2 - 3);
        v75 = (v16 + 24 * v74);
        if (*v75 < v69 || *v75 == v69 && v75[1] < v68[1])
        {
          *v64 = v74;
          *(a2 - 3) = v65;
          v76 = v9[2];
          v77 = (v16 + 24 * *v64);
          v78 = (v16 + 24 * v76);
          if (*v77 < *v78 || *v77 == *v78 && v77[1] < v78[1])
          {
            v9[2] = *v64;
            *v64 = v76;
          }
        }
      }

      v81 = v9[v45];
      v82 = *v15;
      v83 = (v16 + 24 * *v15);
      v84 = *v83;
      v85 = (v16 + 24 * v81);
      v86 = *v85;
      if (*v83 < *v85 || *v83 == *v85 && v83[1] < v85[1])
      {
        v87 = *v64;
        v88 = (v16 + 24 * *v64);
        v89 = *v88;
        if (*v88 < v84 || *v88 == v84 && v88[1] < v83[1])
        {
          v9[v45] = v87;
          goto LABEL_111;
        }

        v9[v45] = v82;
        *v15 = v81;
        if (v89 < v86 || v89 == v86 && v88[1] < v85[1])
        {
          *v15 = v87;
          v82 = v87;
LABEL_111:
          *v64 = v81;
        }

        else
        {
          v82 = v81;
        }
      }

      else
      {
        v90 = *v64;
        v91 = (v16 + 24 * *v64);
        v92 = *v91;
        if (*v91 < v84 || *v91 == v84 && v91[1] < v83[1])
        {
          *v15 = v90;
          *v64 = v82;
          if (v92 < v86 || v92 == v86 && v91[1] < v85[1])
          {
            v9[v45] = v90;
            v64 = v15;
            v82 = v81;
            goto LABEL_111;
          }

          v82 = v90;
        }
      }

      v93 = *v9;
      *v9 = v82;
      *v15 = v93;
      if (a5)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    }

    v25 = *v9;
    v26 = *v15;
    v27 = (v16 + 24 * *v9);
    v28 = *v27;
    v29 = (v16 + 24 * *v15);
    v30 = *v29;
    if (*v27 < *v29 || *v27 == *v29 && v27[1] < v29[1])
    {
      v31 = *(a2 - 1);
      v32 = (v16 + 24 * v31);
      if (*v32 < v28 || *v32 == v28 && v32[1] < v27[1])
      {
        *v15 = v31;
        goto LABEL_66;
      }

      *v15 = v25;
      *v9 = v26;
      v60 = *(a2 - 1);
      v61 = (v16 + 24 * v60);
      if (*v61 < v30 || *v61 == v30 && v61[1] < v29[1])
      {
        *v9 = v60;
LABEL_66:
        *(a2 - 1) = v26;
      }

LABEL_67:
      if (a5)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    }

    v38 = *(a2 - 1);
    v39 = (v16 + 24 * v38);
    if (*v39 >= v28 && (*v39 != v28 || v39[1] >= v27[1]))
    {
      goto LABEL_67;
    }

    *v9 = v38;
    *(a2 - 1) = v25;
    v40 = *v15;
    v41 = (v16 + 24 * *v9);
    v42 = (v16 + 24 * *v15);
    if (*v41 >= *v42 && (*v41 != *v42 || v41[1] >= v42[1]))
    {
      goto LABEL_67;
    }

    *v15 = *v9;
    *v9 = v40;
    if (a5)
    {
      goto LABEL_116;
    }

LABEL_113:
    v94 = (v16 + 24 * *(v9 - 1));
    v95 = (v16 + 24 * *v9);
    if (*v94 >= *v95 && (*v94 != *v95 || v94[1] >= v95[1]))
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(v9, a2, a3);
      v9 = result;
      goto LABEL_124;
    }

LABEL_116:
    v96 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(v9, a2, a3);
    if ((v97 & 1) == 0)
    {
      goto LABEL_122;
    }

    v98 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v9, v96, a3);
    v9 = v96 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v96 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v96;
      if (v98)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v98)
    {
LABEL_122:
      result = std::__introsort<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(v8, v96, a3, -v11, a5 & 1);
      v9 = v96 + 1;
LABEL_124:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v105 = *v9;
  v104 = v9[1];
  v106 = *(*a3 + 16);
  v107 = (v106 + 24 * v104);
  v108 = *v107;
  v109 = (v106 + 24 * *v9);
  v110 = *v109;
  if (*v107 < *v109 || *v107 == *v109 && v107[1] < v109[1])
  {
    v111 = *(a2 - 1);
    v112 = (v106 + 24 * v111);
    if (*v112 < v108 || *v112 == v108 && v112[1] < v107[1])
    {
      *v9 = v111;
    }

    else
    {
      *v9 = v104;
      v9[1] = v105;
      v119 = *(a2 - 1);
      v120 = (v106 + 24 * v119);
      if (*v120 >= v110 && (*v120 != v110 || v120[1] >= v109[1]))
      {
        return result;
      }

      v9[1] = v119;
    }

    *(a2 - 1) = v105;
    return result;
  }

  v113 = *(a2 - 1);
  v114 = (v106 + 24 * v113);
  if (*v114 < v108 || *v114 == v108 && v114[1] < v107[1])
  {
    v9[1] = v113;
    *(a2 - 1) = v104;
    v116 = *v9;
    v115 = v9[1];
    v117 = (v106 + 24 * v115);
    v118 = (v106 + 24 * *v9);
    if (*v117 < *v118 || *v117 == *v118 && v117[1] < v118[1])
    {
      *v9 = v115;
      v9[1] = v116;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a2;
  v7 = *result;
  v8 = *(*a5 + 16);
  v9 = (v8 + 24 * *a2);
  v10 = *v9;
  v11 = (v8 + 24 * *result);
  v12 = *v11;
  if (*v9 < *v11 || *v9 == *v11 && v9[1] < v11[1])
  {
    v13 = (v8 + 24 * *a3);
    if (*v13 < v10 || *v13 == v10 && v13[1] < v9[1])
    {
      *result = *a3;
LABEL_19:
      *a3 = v7;
LABEL_20:
      v5 = v7;
      v6 = v7;
      goto LABEL_22;
    }

    *result = v6;
    *a2 = v7;
    v5 = *a3;
    v18 = (v8 + 24 * *a3);
    if (*v18 < v12 || *v18 == v12 && v18[1] < v11[1])
    {
      *a2 = v5;
      goto LABEL_19;
    }
  }

  else
  {
    v7 = *a3;
    v14 = (v8 + 24 * *a3);
    if (*v14 >= v10 && (*v14 != v10 || v14[1] >= v9[1]))
    {
      goto LABEL_20;
    }

    *a2 = v7;
    *a3 = v5;
    v15 = *result;
    v16 = (v8 + 24 * *a2);
    v17 = (v8 + 24 * *result);
    if (*v16 >= *v17 && (*v16 != *v17 || v16[1] >= v17[1]))
    {
      goto LABEL_22;
    }

    *result = *a2;
    *a2 = v15;
    v5 = *a3;
  }

  v6 = v5;
LABEL_22:
  v19 = (v8 + 24 * *a4);
  v20 = (v8 + 24 * v5);
  if (*v19 < *v20 || *v19 == *v20 && v19[1] < v20[1])
  {
    *a3 = *a4;
    *a4 = v6;
    v21 = *a2;
    v22 = (v8 + 24 * *a3);
    v23 = (v8 + 24 * *a2);
    if (*v22 < *v23 || *v22 == *v23 && v22[1] < v23[1])
    {
      *a2 = *a3;
      *a3 = v21;
      v24 = *result;
      v25 = (v8 + 24 * *a2);
      v26 = (v8 + 24 * *result);
      if (*v25 < *v26 || *v25 == *v26 && v25[1] < v26[1])
      {
        *result = *a2;
        *a2 = v24;
      }
    }
  }

  return result;
}

unsigned int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a2, a3, a4, a6);
  v13 = *a4;
  v14 = *(*a6 + 16);
  v15 = (v14 + 24 * *a5);
  v16 = (v14 + 24 * *a4);
  if (*v15 < *v16 || *v15 == *v16 && v15[1] < v16[1])
  {
    *a4 = *a5;
    *a5 = v13;
    v17 = *a3;
    v18 = (v14 + 24 * *a4);
    v19 = (v14 + 24 * *a3);
    if (*v18 < *v19 || *v18 == *v19 && v18[1] < v19[1])
    {
      *a3 = *a4;
      *a4 = v17;
      v20 = *a2;
      v21 = (v14 + 24 * *a3);
      v22 = (v14 + 24 * *a2);
      if (*v21 < *v22 || *v21 == *v22 && v21[1] < v22[1])
      {
        *a2 = *a3;
        *a3 = v20;
        v23 = *a1;
        v24 = (v14 + 24 * *a2);
        v25 = (v14 + 24 * *a1);
        if (*v24 < *v25 || *v24 == *v25 && v24[1] < v25[1])
        {
          *a1 = *a2;
          *a2 = v23;
        }
      }
    }
  }

  return result;
}

unsigned int *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *(*a3 + 16);
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v3;
        v8 = v7[1];
        v9 = (v5 + 24 * v8);
        v10 = *v9;
        v11 = (v5 + 24 * *v7);
        if (*v9 < *v11 || *v9 == *v11 && v9[1] < v11[1])
        {
          v7[1] = *v7;
          v12 = result;
          if (v7 != result)
          {
            v13 = v4;
            while (1)
            {
              v14 = *(result + v13 - 4);
              v15 = (v5 + 24 * v14);
              if (v10 >= *v15)
              {
                if (v10 != *v15)
                {
                  v12 = v7;
                  goto LABEL_16;
                }

                if (v9[1] >= v15[1])
                {
                  break;
                }
              }

              --v7;
              *(result + v13) = v14;
              v13 -= 4;
              if (!v13)
              {
                v12 = result;
                goto LABEL_16;
              }
            }

            v12 = (result + v13);
          }

LABEL_16:
          *v12 = v8;
        }

        v3 = v6 + 1;
        v4 += 4;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *(*a3 + 16);
      do
      {
        v5 = result;
        result = v3;
        v7 = *v5;
        v6 = v5[1];
        v8 = (v4 + 24 * v6);
        v9 = *v8;
        v10 = (v4 + 24 * *v5);
        if (*v8 < *v10 || *v8 == *v10 && v8[1] < v10[1])
        {
          do
          {
            do
            {
              v11 = v5;
              v12 = *--v5;
              v5[2] = v7;
              v7 = v12;
              v13 = (v4 + 24 * v12);
            }

            while (v9 < *v13);
          }

          while (v9 == *v13 && v8[1] < v13[1]);
          *v11 = v6;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  v5 = *(*a3 + 16);
  v6 = (v5 + 24 * *a1);
  v7 = *v6;
  v8 = (v5 + 24 * v4);
  v9 = *v8;
  if (*v6 < *v8 || *v6 == *v8 && v6[1] < v8[1])
  {
    j = a1 + 1;
    v11 = a1[1];
    for (i = *(v5 + 24 * v11); v7 >= i; i = *(v5 + 24 * v13))
    {
      if (v7 == i && v6[1] < *(v5 + 24 * v11 + 8))
      {
        break;
      }

      v13 = j[1];
      ++j;
      v11 = v13;
    }
  }

  else
  {
    for (j = a1 + 1; j < a2; ++j)
    {
      v14 = (v5 + 24 * *j);
      if (v7 < *v14 || v7 == *v14 && v6[1] < v14[1])
      {
        break;
      }
    }
  }

  if (j < a2)
  {
    --a2;
    while (v7 < v9 || v7 == v9 && v6[1] < *(v5 + 24 * v4 + 8))
    {
      v15 = *--a2;
      v4 = v15;
      v9 = *(v5 + 24 * v15);
    }
  }

  if (j < a2)
  {
    LODWORD(v16) = *j;
    v17 = *a2;
    do
    {
      *j = v17;
      *a2 = v16;
      do
      {
        v18 = j[1];
        ++j;
        v16 = v18;
        v19 = *(v5 + 24 * v18);
      }

      while (v7 >= v19 && (v7 != v19 || v6[1] >= *(v5 + 24 * v16 + 8)));
      do
      {
        do
        {
          v20 = *--a2;
          v17 = v20;
          v21 = (v5 + 24 * v20);
        }

        while (v7 < *v21);
      }

      while (v7 == *v21 && v6[1] < v21[1]);
    }

    while (j < a2);
  }

  if (j - 1 != a1)
  {
    *a1 = *(j - 1);
  }

  *(j - 1) = v3;
  return j;
}

unsigned int *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *(*a3 + 16);
  v6 = (v5 + 24 * *a1);
  v7 = *v6;
  while (1)
  {
    v8 = a1[v3 + 1];
    v9 = (v5 + 24 * v8);
    if (*v9 >= v7 && (*v9 != v7 || v9[1] >= v6[1]))
    {
      break;
    }

    ++v3;
  }

  v10 = &a1[v3];
  v11 = &a1[v3 + 1];
  if (v3 * 4)
  {
    v13 = *--a2;
    v12 = v13;
    for (i = *(v5 + 24 * v13); i >= v7; i = *(v5 + 24 * v15))
    {
      if (i == v7 && *(v5 + 24 * v12 + 8) < v6[1])
      {
        break;
      }

      v15 = *--a2;
      v12 = v15;
    }
  }

  else if (v11 < a2)
  {
    v17 = *--a2;
    v16 = v17;
    for (j = *(v5 + 24 * v17); j >= v7; j = *(v5 + 24 * v20))
    {
      if (j == v7)
      {
        if (*(v5 + 24 * v16 + 8) < v6[1] || v11 >= a2)
        {
          break;
        }
      }

      else if (v11 >= a2)
      {
        break;
      }

      v20 = *--a2;
      v16 = v20;
    }
  }

  if (v11 < a2)
  {
    LODWORD(v21) = *a2;
    v22 = v8;
    v23 = v11;
    v24 = a2;
    do
    {
      *v23++ = v21;
      *v24 = v22;
      while (1)
      {
        v22 = *v23;
        v25 = (v5 + 24 * *v23);
        if (*v25 >= v7 && (*v25 != v7 || v25[1] >= v6[1]))
        {
          break;
        }

        ++v23;
      }

      do
      {
        v26 = *--v24;
        v21 = v26;
        v27 = *(v5 + 24 * v26);
      }

      while (v27 >= v7 && (v27 != v7 || *(v5 + 24 * v21 + 8) >= v6[1]));
    }

    while (v23 < v24);
    v10 = v23 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v4;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v10 = *a1;
        v9 = a1[1];
        v11 = *(*a3 + 16);
        v12 = (v11 + 24 * v9);
        v13 = *v12;
        v14 = (v11 + 24 * *a1);
        v15 = *v14;
        if (*v12 >= *v14 && (*v12 != *v14 || v12[1] >= v14[1]))
        {
          v30 = *(a2 - 1);
          v31 = (v11 + 24 * v30);
          if (*v31 < v13 || *v31 == v13 && v31[1] < v12[1])
          {
            a1[1] = v30;
            *(a2 - 1) = v9;
            v33 = *a1;
            v32 = a1[1];
            v34 = (v11 + 24 * v32);
            v35 = (v11 + 24 * *a1);
            if (*v34 < *v35 || *v34 == *v35 && v34[1] < v35[1])
            {
              *a1 = v32;
              a1[1] = v33;
            }
          }

          return 1;
        }

        v16 = *(a2 - 1);
        v17 = (v11 + 24 * v16);
        if (*v17 < v13 || *v17 == v13 && v17[1] < v12[1])
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v9;
          a1[1] = v10;
          v39 = *(a2 - 1);
          v40 = (v11 + 24 * v39);
          if (*v40 >= v15 && (*v40 != v15 || v40[1] >= v14[1]))
          {
            return 1;
          }

          a1[1] = v39;
        }

        *(a2 - 1) = v10;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    v6 = *(*a3 + 16);
    v7 = (v6 + 24 * v4);
    v8 = (v6 + 24 * *a1);
    if (*v7 < *v8 || *v7 == *v8 && v7[1] < v8[1])
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_19:
  v18 = a1 + 2;
  v19 = *a1;
  v20 = a1 + 1;
  v21 = a1[1];
  v22 = *(*a3 + 16);
  v23 = (v22 + 24 * v21);
  v24 = *v23;
  v25 = (v22 + 24 * *a1);
  v26 = *v25;
  if (*v23 < *v25 || *v23 == *v25 && v23[1] < v25[1])
  {
    v27 = *v18;
    v28 = (v22 + 24 * *v18);
    v29 = *v28;
    if (*v28 < v24 || *v28 == v24 && v28[1] < v23[1])
    {
      *a1 = v27;
LABEL_50:
      v20 = a1 + 2;
      goto LABEL_51;
    }

    *a1 = v21;
    a1[1] = v19;
    if (v29 < v26 || v29 == v26 && v28[1] < v25[1])
    {
      *v20 = v27;
      goto LABEL_50;
    }
  }

  else
  {
    v36 = *v18;
    v37 = (v22 + 24 * *v18);
    v38 = *v37;
    if (*v37 < v24 || *v37 == v24 && v37[1] < v23[1])
    {
      *v20 = v36;
      *v18 = v21;
      if (v38 < v26 || v38 == v26 && v37[1] < v25[1])
      {
        *a1 = v36;
LABEL_51:
        *v20 = v19;
      }
    }
  }

  v41 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v42 = 0;
  v43 = 0;
  while (1)
  {
    v44 = *v41;
    v45 = *v18;
    v46 = (v22 + 24 * *v41);
    v47 = *v46;
    v48 = (v22 + 24 * v45);
    if (*v46 < *v48 || *v46 == *v48 && v46[1] < v48[1])
    {
      *v41 = v45;
      v49 = v42;
      while (1)
      {
        v50 = *(a1 + v49 + 4);
        v51 = (v22 + 24 * v50);
        if (v47 >= *v51 && (v47 != *v51 || v46[1] >= v51[1]))
        {
          break;
        }

        *(a1 + v49 + 8) = v50;
        v49 -= 4;
        if (v49 == -8)
        {
          v52 = a1;
          goto LABEL_64;
        }
      }

      v52 = (a1 + v49 + 8);
LABEL_64:
      *v52 = v44;
      if (++v43 == 8)
      {
        return v41 + 1 == a2;
      }
    }

    v18 = v41;
    v42 += 4;
    if (++v41 == a2)
    {
      return 1;
    }
  }
}

unsigned int *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *(*a4 + 16);
        v15 = (v14 + 24 * *v12);
        v16 = (v14 + 24 * *a1);
        if (*v15 < *v16 || *v15 == *v16 && v15[1] < v16[1])
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 1;
      do
      {
        v18 = *a1;
        v19 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8);
        if (v17 == v19)
        {
          *v19 = v18;
        }

        else
        {
          *v19 = *v17;
          *v17 = v18;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, (v19 + 1), a4, v19 + 1 - a1);
        }

        --v17;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      v10 = *a2;
      if (v9 >= a3)
      {
        v11 = *(v10 + 16);
      }

      else
      {
        v11 = *(v10 + 16);
        v12 = (v11 + 24 * *v8);
        v13 = (v11 + 24 * v8[1]);
        if (*v12 < *v13 || *v12 == *v13 && v12[1] < v13[1])
        {
          ++v8;
          v7 = v9;
        }
      }

      v14 = *a4;
      v15 = (v11 + 24 * *v8);
      v16 = (v11 + 24 * *a4);
      v17 = *v16;
      if (*v15 >= *v16 && (*v15 != *v16 || v15[1] >= v16[1]))
      {
        *a4 = *v8;
        if (v5 >= v7)
        {
          while (1)
          {
            v19 = 2 * v7;
            v7 = (2 * v7) | 1;
            v18 = (result + 4 * v7);
            v20 = v19 + 2;
            if (v20 < a3)
            {
              v21 = (v11 + 24 * *v18);
              v22 = (v11 + 24 * v18[1]);
              if (*v21 < *v22 || *v21 == *v22 && v21[1] < v22[1])
              {
                ++v18;
                v7 = v20;
              }
            }

            v23 = (v11 + 24 * *v18);
            if (*v23 < v17 || *v23 == v17 && v23[1] < v16[1])
            {
              break;
            }

            *v8 = *v18;
            v8 = v18;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v18 = v8;
LABEL_14:
        *v18 = v14;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(_DWORD *result, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = result;
    v6 = &result[v3];
    result = v6 + 1;
    v7 = 2 * v3;
    v3 = (2 * v3) | 1;
    v8 = v7 + 2;
    if (v8 < a3)
    {
      v10 = v6[2];
      v9 = v6 + 2;
      v11 = *(v4 + 16);
      v12 = (v11 + 24 * *(v9 - 1));
      v13 = (v11 + 24 * v10);
      if (*v12 < *v13 || *v12 == *v13 && v12[1] < v13[1])
      {
        result = v9;
        v3 = v8;
      }
    }

    *v5 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 4 * (v4 >> 1));
    v7 = *(a2 - 4);
    v8 = *(*a3 + 16);
    v9 = (v8 + 24 * *v6);
    v10 = (v8 + 24 * v7);
    v11 = *v10;
    if (*v9 < *v10 || *v9 == *v10 && v9[1] < v10[1])
    {
      *(a2 - 4) = *v6;
      if (v4 >= 2)
      {
        while (1)
        {
          v13 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v12 = (result + 4 * v5);
          v14 = (v8 + 24 * *v12);
          if (*v14 >= v11 && (*v14 != v11 || v14[1] >= v10[1]))
          {
            break;
          }

          *v6 = *v12;
          v6 = (result + 4 * v5);
          if (v13 <= 1)
          {
            goto LABEL_11;
          }
        }
      }

      v12 = v6;
LABEL_11:
      *v12 = v7;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,false>(uint64_t result, __n128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5, __n128 a6)
{
  v8 = result;
  v139 = *MEMORY[0x277D85DE8];
LABEL_2:
  v9 = &a2[-2].n128_i8[8];
  v83 = &a2[-3];
  v10 = &a2[-5].n128_i8[8];
  v11 = v8;
LABEL_3:
  v12 = 1 - a4;
  while (1)
  {
    v8 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v15 <= 2)
    {
      break;
    }

    switch(v15)
    {
      case 3uLL:
        v59 = (*a3)((v11 + 24), v11);
        result = (*a3)(v9, (v11 + 24));
        if (v59)
        {
          if (result)
          {
            goto LABEL_77;
          }

          v133 = *(v11 + 16);
          v106 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 16) = *(v11 + 40);
          *(v11 + 24) = v106;
          *(v11 + 40) = v133;
          result = (*a3)(v9, (v11 + 24));
          if (!result)
          {
            goto LABEL_106;
          }

          v60 = *(v11 + 40);
          v61 = *(v11 + 24);
          v62 = *(v9 + 2);
          *(v11 + 24) = *v9;
          *(v11 + 40) = v62;
          *v9 = v61;
LABEL_78:
          *(v9 + 2) = v60;
          goto LABEL_106;
        }

        if (!result)
        {
          goto LABEL_106;
        }

        v70 = *(v11 + 40);
        v71 = *(v11 + 24);
        v72 = *(v9 + 2);
        *(v11 + 24) = *v9;
        *(v11 + 40) = v72;
        *v9 = v71;
        *(v9 + 2) = v70;
        goto LABEL_104;
      case 4uLL:
        v65 = (*a3)((v11 + 24), v11);
        v66 = (*a3)((v11 + 48), (v11 + 24));
        if (v65)
        {
          if (v66)
          {
            v135 = *(v11 + 16);
            v108 = *v11;
            *v11 = *(v11 + 48);
            *(v11 + 16) = *(v11 + 64);
            *(v11 + 48) = v108;
            v67 = v135;
            goto LABEL_100;
          }

          v137 = *(v11 + 16);
          v110 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 16) = *(v11 + 40);
          *(v11 + 24) = v110;
          *(v11 + 40) = v137;
          if ((*a3)((v11 + 48), (v11 + 24)))
          {
            v67 = *(v11 + 40);
            v76 = *(v11 + 24);
            *(v11 + 24) = *(v11 + 48);
            *(v11 + 40) = *(v11 + 64);
            *(v11 + 48) = v76;
LABEL_100:
            *(v11 + 64) = v67;
          }
        }

        else if (v66)
        {
          v73 = *(v11 + 40);
          v74 = *(v11 + 24);
          *(v11 + 24) = *(v11 + 48);
          *(v11 + 40) = *(v11 + 64);
          *(v11 + 48) = v74;
          *(v11 + 64) = v73;
          if ((*a3)((v11 + 24), v11))
          {
            v136 = *(v11 + 16);
            v109 = *v11;
            *v11 = *(v11 + 24);
            *(v11 + 16) = *(v11 + 40);
            *(v11 + 24) = v109;
            *(v11 + 40) = v136;
          }
        }

        result = (*a3)(v9, (v11 + 48));
        if (!result)
        {
          goto LABEL_106;
        }

        v77 = *(v11 + 64);
        v78 = *(v11 + 48);
        v79 = *(v9 + 2);
        *(v11 + 48) = *v9;
        *(v11 + 64) = v79;
        *v9 = v78;
        *(v9 + 2) = v77;
        result = (*a3)((v11 + 48), (v11 + 24));
        if (!result)
        {
          goto LABEL_106;
        }

        v80 = *(v11 + 40);
        v81 = *(v11 + 24);
        *(v11 + 24) = *(v11 + 48);
        *(v11 + 40) = *(v11 + 64);
        *(v11 + 48) = v81;
        *(v11 + 64) = v80;
LABEL_104:
        result = (*a3)((v11 + 24), v11);
        if (result)
        {
          v138 = *(v11 + 16);
          v111 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 16) = *(v11 + 40);
          *(v11 + 24) = v111;
          *(v11 + 40) = v138;
        }

        goto LABEL_106;
      case 5uLL:
        v63 = *MEMORY[0x277D85DE8];

        return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,0>(v11, (v11 + 24), (v11 + 48), (v11 + 72), &a2[-2].n128_i8[8], a3);
    }

LABEL_11:
    if (v14 <= 575)
    {
      if (a5)
      {
        v68 = *MEMORY[0x277D85DE8];

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v11, a2, a3);
      }

      else
      {
        v75 = *MEMORY[0x277D85DE8];

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v11, a2, a3);
      }
    }

    if (v13 == 1)
    {
      if (v11 == a2)
      {
        goto LABEL_106;
      }

      v69 = *MEMORY[0x277D85DE8];

      return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(v11, a2, a2, a3, a6);
    }

    v16 = v15 >> 1;
    v17 = v11 + 24 * (v15 >> 1);
    v18 = *a3;
    if (v14 >= 0xC01)
    {
      v19 = v18(v17, v11);
      v20 = (*a3)(&a2[-2].n128_i8[8], v17);
      if (v19)
      {
        if (v20)
        {
          v112 = *(v8 + 16);
          v85 = *v8;
          v21 = *v9;
          *(v8 + 16) = a2[-1].n128_u64[1];
          *v8 = v21;
          goto LABEL_28;
        }

        v118 = *(v8 + 16);
        v91 = *v8;
        v29 = *v17;
        *(v8 + 16) = *(v17 + 16);
        *v8 = v29;
        *(v17 + 16) = v118;
        *v17 = v91;
        if ((*a3)(&a2[-2].n128_i8[8], v17))
        {
          v112 = *(v17 + 16);
          v85 = *v17;
          v30 = *v9;
          *(v17 + 16) = a2[-1].n128_u64[1];
          *v17 = v30;
LABEL_28:
          *v9 = v85;
          a2[-1].n128_u64[1] = v112;
        }
      }

      else if (v20)
      {
        v114 = *(v17 + 16);
        v87 = *v17;
        v25 = *v9;
        *(v17 + 16) = a2[-1].n128_u64[1];
        *v17 = v25;
        *v9 = v87;
        a2[-1].n128_u64[1] = v114;
        if ((*a3)(v17, v8))
        {
          v115 = *(v8 + 16);
          v88 = *v8;
          v26 = *v17;
          *(v8 + 16) = *(v17 + 16);
          *v8 = v26;
          *(v17 + 16) = v115;
          *v17 = v88;
        }
      }

      v31 = v8 + 24 * v16 - 24;
      v32 = (*a3)(v31, (v8 + 24));
      v33 = (*a3)(v83, v31);
      if (v32)
      {
        if (v33)
        {
          v34 = *(v8 + 40);
          v35 = *(v8 + 24);
          v36 = a2[-2].n128_u64[0];
          *(v8 + 24) = *v83;
          *(v8 + 40) = v36;
          *v83 = v35;
          a2[-2].n128_u64[0] = v34;
        }

        else
        {
          v95 = *(v8 + 24);
          v122 = *(v8 + 40);
          v41 = *(v8 + 24 * v16 - 8);
          *(v8 + 24) = *v31;
          *(v8 + 40) = v41;
          *(v8 + 24 * v16 - 8) = v122;
          *v31 = v95;
          if ((*a3)(v83, (v8 + 24 * v16 - 24)))
          {
            v123 = *(v8 + 24 * v16 - 8);
            v96 = *v31;
            v42 = *v83;
            *(v8 + 24 * v16 - 8) = a2[-2].n128_u64[0];
            *v31 = v42;
            *v83 = v96;
            a2[-2].n128_u64[0] = v123;
          }
        }
      }

      else if (v33)
      {
        v119 = *(v8 + 24 * v16 - 8);
        v92 = *v31;
        v37 = *v83;
        *(v8 + 24 * v16 - 8) = a2[-2].n128_u64[0];
        *v31 = v37;
        *v83 = v92;
        a2[-2].n128_u64[0] = v119;
        if ((*a3)((v8 + 24 * v16 - 24), (v8 + 24)))
        {
          v93 = *(v8 + 24);
          v120 = *(v8 + 40);
          v38 = *(v8 + 24 * v16 - 8);
          *(v8 + 24) = *v31;
          *(v8 + 40) = v38;
          *(v8 + 24 * v16 - 8) = v120;
          *v31 = v93;
        }
      }

      v43 = v8 + 24 * v16;
      v44 = (*a3)((v43 + 24), (v8 + 48));
      v45 = (*a3)(&a2[-5].n128_i8[8], (v43 + 24));
      if (v44)
      {
        if (v45)
        {
          v46 = *(v8 + 64);
          v47 = *(v8 + 48);
          v48 = a2[-4].n128_u64[1];
          *(v8 + 48) = *v10;
          *(v8 + 64) = v48;
          *v10 = v47;
          goto LABEL_48;
        }

        v99 = *(v8 + 48);
        v126 = *(v8 + 64);
        v51 = *(v43 + 40);
        *(v8 + 48) = *(v43 + 24);
        *(v8 + 64) = v51;
        *(v43 + 40) = v126;
        *(v43 + 24) = v99;
        if ((*a3)(&a2[-5].n128_i8[8], (v43 + 24)))
        {
          v127 = *(v43 + 40);
          v100 = *(v43 + 24);
          v52 = *v10;
          *(v43 + 40) = a2[-4].n128_u64[1];
          *(v43 + 24) = v52;
          *v10 = v100;
          v46 = v127;
LABEL_48:
          a2[-4].n128_u64[1] = v46;
        }
      }

      else if (v45)
      {
        v124 = *(v43 + 40);
        v97 = *(v43 + 24);
        v49 = *v10;
        *(v43 + 40) = a2[-4].n128_u64[1];
        *(v43 + 24) = v49;
        *v10 = v97;
        a2[-4].n128_u64[1] = v124;
        if ((*a3)((v43 + 24), (v8 + 48)))
        {
          v98 = *(v8 + 48);
          v125 = *(v8 + 64);
          v50 = *(v43 + 40);
          *(v8 + 48) = *(v43 + 24);
          *(v8 + 64) = v50;
          *(v43 + 40) = v125;
          *(v43 + 24) = v98;
        }
      }

      v53 = (*a3)(v17, v31);
      v54 = (*a3)((v43 + 24), v17);
      if (v53)
      {
        if (v54)
        {
          v128 = *(v31 + 16);
          v101 = *v31;
          *v31 = *(v43 + 24);
          *(v31 + 16) = *(v43 + 40);
          goto LABEL_57;
        }

        v131 = *(v31 + 16);
        v104 = *v31;
        *v31 = *v17;
        *(v31 + 16) = *(v17 + 16);
        *(v17 + 16) = v131;
        *v17 = v104;
        if ((*a3)((v43 + 24), v17))
        {
          v128 = *(v17 + 16);
          v101 = *v17;
          *v17 = *(v43 + 24);
          *(v17 + 16) = *(v43 + 40);
LABEL_57:
          *(v43 + 40) = v128;
          *(v43 + 24) = v101;
        }
      }

      else if (v54)
      {
        v129 = *(v17 + 16);
        v102 = *v17;
        *v17 = *(v43 + 24);
        *(v17 + 16) = *(v43 + 40);
        *(v43 + 40) = v129;
        *(v43 + 24) = v102;
        if ((*a3)(v17, v31))
        {
          v130 = *(v31 + 16);
          v103 = *v31;
          *v31 = *v17;
          *(v31 + 16) = *(v17 + 16);
          *(v17 + 16) = v130;
          *v17 = v103;
        }
      }

      v132 = *(v8 + 16);
      v105 = *v8;
      v55 = *v17;
      *(v8 + 16) = *(v17 + 16);
      *v8 = v55;
      *(v17 + 16) = v132;
      *v17 = v105;
      goto LABEL_59;
    }

    v22 = v18(v11, v17);
    v23 = (*a3)(&a2[-2].n128_i8[8], v8);
    if (v22)
    {
      if (v23)
      {
        v113 = *(v17 + 16);
        v86 = *v17;
        v24 = *v9;
        *(v17 + 16) = a2[-1].n128_u64[1];
        *v17 = v24;
LABEL_37:
        *v9 = v86;
        a2[-1].n128_u64[1] = v113;
        goto LABEL_59;
      }

      v121 = *(v17 + 16);
      v94 = *v17;
      v39 = *v8;
      *(v17 + 16) = *(v8 + 16);
      *v17 = v39;
      *(v8 + 16) = v121;
      *v8 = v94;
      if ((*a3)(&a2[-2].n128_i8[8], v8))
      {
        v113 = *(v8 + 16);
        v86 = *v8;
        v40 = *v9;
        *(v8 + 16) = a2[-1].n128_u64[1];
        *v8 = v40;
        goto LABEL_37;
      }
    }

    else if (v23)
    {
      v116 = *(v8 + 16);
      v89 = *v8;
      v27 = *v9;
      *(v8 + 16) = a2[-1].n128_u64[1];
      *v8 = v27;
      *v9 = v89;
      a2[-1].n128_u64[1] = v116;
      if ((*a3)(v8, v17))
      {
        v117 = *(v17 + 16);
        v90 = *v17;
        v28 = *v8;
        *(v17 + 16) = *(v8 + 16);
        *v17 = v28;
        *(v8 + 16) = v117;
        *v8 = v90;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)((v8 - 24), v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(v8, a2, a3);
      v11 = result;
      goto LABEL_66;
    }

    v56 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(v8, a2, a3);
    if ((v57 & 1) == 0)
    {
      goto LABEL_64;
    }

    v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v8, v56, a3);
    v11 = v56 + 24;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v56 + 24, a2, a3);
    if (result)
    {
      a4 = -v13;
      a2 = v56;
      if (v58)
      {
        goto LABEL_106;
      }

      goto LABEL_2;
    }

    v12 = v13 + 1;
    if (!v58)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,false>(v8, v56, a3, -v13, a5 & 1);
      v11 = v56 + 24;
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_3;
    }
  }

  if (v15 < 2)
  {
    goto LABEL_106;
  }

  if (v15 != 2)
  {
    goto LABEL_11;
  }

  result = (*a3)(&a2[-2].n128_i8[8], v11);
  if (result)
  {
LABEL_77:
    v134 = *(v11 + 16);
    v107 = *v11;
    v64 = *v9;
    *(v11 + 16) = *(v9 + 2);
    *v11 = v64;
    *v9 = v107;
    v60 = v134;
    goto LABEL_78;
  }

LABEL_106:
  v82 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t (**a6)(__int128 *, __int128 *))
{
  v50 = *MEMORY[0x277D85DE8];
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = *(a1 + 2);
      v15 = *a1;
      v16 = *(a3 + 2);
      *a1 = *a3;
      *(a1 + 2) = v16;
LABEL_9:
      *a3 = v15;
      *(a3 + 2) = v14;
      goto LABEL_10;
    }

    v23 = *(a1 + 2);
    v24 = *a1;
    v25 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 2) = v25;
    *a2 = v24;
    *(a2 + 2) = v23;
    if ((*a6)(a3, a2))
    {
      v14 = *(a2 + 2);
      v15 = *a2;
      v26 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = *(a2 + 2);
    v18 = *a2;
    v19 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v19;
    *a3 = v18;
    *(a3 + 2) = v17;
    if ((*a6)(a2, a1))
    {
      v20 = *(a1 + 2);
      v21 = *a1;
      v22 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 2) = v22;
      *a2 = v21;
      *(a2 + 2) = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = *(a3 + 2);
    v28 = *a3;
    v29 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v29;
    *a4 = v28;
    *(a4 + 2) = v27;
    if ((*a6)(a3, a2))
    {
      v30 = *(a2 + 2);
      v31 = *a2;
      v32 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v32;
      *a3 = v31;
      *(a3 + 2) = v30;
      if ((*a6)(a2, a1))
      {
        v33 = *(a1 + 2);
        v34 = *a1;
        v35 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 2) = v35;
        *a2 = v34;
        *(a2 + 2) = v33;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v37 = *(a4 + 2);
    v38 = *a4;
    v39 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v39;
    *a5 = v38;
    *(a5 + 2) = v37;
    result = (*a6)(a4, a3);
    if (result)
    {
      v40 = *(a3 + 2);
      v41 = *a3;
      v42 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 2) = v42;
      *a4 = v41;
      *(a4 + 2) = v40;
      result = (*a6)(a3, a2);
      if (result)
      {
        v43 = *(a2 + 2);
        v44 = *a2;
        v45 = *(a3 + 2);
        *a2 = *a3;
        *(a2 + 2) = v45;
        *a3 = v44;
        *(a3 + 2) = v43;
        result = (*a6)(a2, a1);
        if (result)
        {
          v46 = *(a1 + 2);
          v47 = *a1;
          v48 = *(a2 + 2);
          *a1 = *a2;
          *(a1 + 2) = v48;
          *a2 = v47;
          *(a2 + 2) = v46;
        }
      }
    }
  }

  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 24) = *(v6 + v12);
            *(v13 + 40) = *(v6 + v12 + 16);
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 24;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v14 = v3;
    v15 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = result - 24;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v11 = v9;
          do
          {
            *(v11 + 48) = *(v11 + 24);
            *(v11 + 64) = *(v11 + 40);
            result = (*a3)(&v12, v11);
            v11 -= 24;
          }

          while ((result & 1) != 0);
          *(v11 + 48) = v12;
          *(v11 + 64) = v13;
        }

        v7 = v6 + 24;
        v9 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v21 = *MEMORY[0x277D85DE8];
  v17 = *a1;
  v18 = *(a1 + 2);
  if ((*a3)(&v17, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 24);
    }

    while (((*a3)(&v17, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 24);
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v17, v7);
      v7 = (v6 + 24);
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v20 = *(v6 + 2);
    v19 = v9;
    v10 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v10;
    v11 = v19;
    *(v4 + 2) = v20;
    *v4 = v11;
    do
    {
      v6 = (v6 + 24);
    }

    while (!(*a3)(&v17, v6));
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  v12 = (v6 - 24);
  if ((v6 - 24) != a1)
  {
    v13 = *v12;
    *(a1 + 2) = *(v6 - 1);
    *a1 = v13;
  }

  v14 = v17;
  *(v6 - 1) = v18;
  *v12 = v14;
  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(__int128 *a1, unint64_t a2, uint64_t (**a3)(char *, __int128 *))
{
  v6 = 0;
  v22 = *MEMORY[0x277D85DE8];
  v18 = *a1;
  v19 = *(a1 + 2);
  do
  {
    v6 += 24;
  }

  while (((*a3)(a1 + v6, &v18) & 1) != 0);
  v7 = a1 + v6;
  v8 = a1 + v6 - 24;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (((*a3)(a2, &v18) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!(*a3)(a2, &v18));
  }

  if (v7 < a2)
  {
    v9 = (a1 + v6);
    v10 = a2;
    do
    {
      v20 = *v9;
      v11 = v20;
      v21 = *(v9 + 2);
      v12 = v21;
      v13 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 2) = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      do
      {
        v9 = (v9 + 24);
      }

      while (((*a3)(v9, &v18) & 1) != 0);
      do
      {
        v10 -= 24;
      }

      while (!(*a3)(v10, &v18));
    }

    while (v9 < v10);
    v8 = v9 - 24;
  }

  if (v8 != a1)
  {
    v14 = *v8;
    *(a1 + 2) = *(v8 + 16);
    *a1 = v14;
  }

  v15 = v18;
  *(v8 + 16) = v19;
  *v8 = v15;
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = a2 - 24;
      v12 = (*a3)((a1 + 24), a1);
      v13 = (*a3)(v11, (a1 + 24));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 16);
          v15 = *a1;
          v16 = *(v11 + 16);
          *a1 = *v11;
          *(a1 + 16) = v16;
        }

        else
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (!(*a3)(v11, (a1 + 24)))
          {
            goto LABEL_52;
          }

          v14 = *(a1 + 40);
          v15 = *(a1 + 24);
          v40 = *(v11 + 16);
          *(a1 + 24) = *v11;
          *(a1 + 40) = v40;
        }

        *v11 = v15;
        *(v11 + 16) = v14;
        goto LABEL_52;
      }

      if (!v13)
      {
LABEL_52:
        result = 1;
        goto LABEL_53;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      v29 = *(v11 + 16);
      *(a1 + 24) = *v11;
      *(a1 + 40) = v29;
      *v11 = v28;
      *(v11 + 16) = v27;
LABEL_50:
      if ((*a3)((a1 + 24), a1))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      goto LABEL_52;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      goto LABEL_52;
    }

    v22 = a2 - 24;
    v23 = (*a3)((a1 + 24), a1);
    v24 = (*a3)((a1 + 48), (a1 + 24));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v35;
        *(a1 + 64) = v34;
        if ((*a3)((a1 + 24), a1))
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    *(a1 + 48) = v26;
    *(a1 + 64) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 48)))
    {
      goto LABEL_52;
    }

    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = *(v22 + 16);
    *(a1 + 48) = *v22;
    *(a1 + 64) = v53;
    *v22 = v52;
    *(v22 + 16) = v51;
    if (!(*a3)((a1 + 48), (a1 + 24)))
    {
      goto LABEL_52;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    goto LABEL_52;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*a3)((a2 - 24), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = *(a2 - 8);
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      *(a2 - 8) = v8;
    }

    goto LABEL_52;
  }

LABEL_13:
  v17 = (a1 + 48);
  v18 = (*a3)((a1 + 24), a1);
  v19 = (*a3)((a1 + 48), (a1 + 24));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      *(a1 + 24) = *v17;
      *(a1 + 40) = *(a1 + 64);
    }

    *v17 = v21;
    *(a1 + 64) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v31;
    *(a1 + 64) = v30;
    if ((*a3)((a1 + 24), a1))
    {
      v32 = *(a1 + 16);
      v33 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v32;
    }
  }

LABEL_33:
  v43 = a1 + 72;
  if (a1 + 72 == a2)
  {
    goto LABEL_52;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v60 = *v43;
      v61 = *(v43 + 16);
      v46 = v44;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (((*a3)(&v60, (v47 + 24)) & 1) == 0)
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v60;
      *(v48 + 16) = v61;
      if (++v45 == 8)
      {
        break;
      }
    }

    v17 = v43;
    v44 += 24;
    v43 += 24;
    if (v43 == a2)
    {
      goto LABEL_52;
    }
  }

  result = v43 + 24 == a2;
LABEL_53:
  v59 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(__n128 *a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(uint64_t, __int8 *), __n128 a5)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v7 = a2;
    v8 = a1;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 24 * v11);
      do
      {
        a5 = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v8, a4, v10, v13);
        v13 = (v13 - 24);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if ((*a4)(v14, v8, a5))
        {
          v15 = v14[1].n128_u64[0];
          v16 = *v14;
          v17 = v8[1].n128_u64[0];
          *v14 = *v8;
          v14[1].n128_u64[0] = v17;
          *v8 = v16;
          v8[1].n128_u64[0] = v15;
          a5 = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v8, a4, v10, v8);
        }

        v14 = (v14 + 24);
      }

      while (v14 != a3);
    }

    if (v9 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      v31 = v8;
      do
      {
        v32 = v7;
        v19 = 0;
        v33 = *v8;
        v34 = v8[1].n128_u64[0];
        v20 = v8;
        do
        {
          v21 = v20 + 24 * v19;
          v22 = (v21 + 24);
          v23 = (2 * v19) | 1;
          v24 = 2 * v19 + 2;
          if (v24 < v18)
          {
            v25 = (v21 + 48);
            if ((*a4)((v21 + 24), v21 + 48))
            {
              v22 = v25;
              v23 = v24;
            }
          }

          v26 = *v22;
          v20[1].n128_u64[0] = v22[1].n128_u64[0];
          *v20 = v26;
          v20 = v22;
          v19 = v23;
        }

        while (v23 <= ((v18 - 2) >> 1));
        v7 = (v32 - 24);
        if (v22 == &v32[-2].n128_i8[8])
        {
          v22[1].n128_u64[0] = v34;
          *v22 = v33;
          v8 = v31;
        }

        else
        {
          v27 = *v7;
          v22[1].n128_u64[0] = v32[-1].n128_u64[1];
          *v22 = v27;
          *v7 = v33;
          v32[-1].n128_u64[1] = v34;
          v8 = v31;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v31, &v22[1].n128_i64[1], a4, 0xAAAAAAAAAAAAAAABLL * ((&v22[1].n128_i64[1] - v31) >> 3));
        }
      }

      while (v18-- > 2);
    }

    a3 = v14;
  }

  v29 = *MEMORY[0x277D85DE8];
  return a3;
}

__n128 std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t a1, unsigned int (**a2)(uint64_t, __int8 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = (a1 + 24 * v12);
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && (*a2)(a1 + 24 * v12, &v13[1].n128_i8[8]))
      {
        v13 = (v13 + 24);
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        do
        {
          v16 = v13;
          v17 = *v13;
          v7[1].n128_u64[0] = v13[1].n128_u64[0];
          *v7 = v17;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = (a1 + 24 * v18);
          v19 = 2 * v12 + 2;
          if (v19 < a3)
          {
            if ((*a2)(a1 + 24 * v18, &v13[1].n128_i8[8]))
            {
              v13 = (v13 + 24);
              v18 = v19;
            }
          }

          v7 = v16;
          v12 = v18;
        }

        while (!(*a2)(v13, &v20));
        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

double std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v17 = v4;
    v18 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 24 * (v6 >> 1));
    v11 = (a2 - 24);
    if ((*a3)(v10, (a2 - 24)))
    {
      v15 = *v11;
      v16 = *(v11 + 2);
      do
      {
        v13 = v10;
        v14 = *v10;
        *(v11 + 2) = *(v10 + 2);
        *v11 = v14;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 24 * v9);
        v11 = v13;
      }

      while (((*a3)(v10, &v15) & 1) != 0);
      result = *&v15;
      *v13 = v15;
      *(v13 + 2) = v16;
    }
  }

  return result;
}

uint64_t std::vector<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      do
      {
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 1065353216;
        v4 += 40;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v17[4] = result;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>>(result, v9);
    }

    v11 = 40 * v6 + 40 * a2;
    v12 = 40 * v6;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 1065353216;
      v12 += 40;
    }

    while (v12 != v11);
    v13 = *(result + 8);
    v14 = 40 * v6 + *result - v13;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>,std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v3[1] = v11;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    return std::__split_buffer<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>::~__split_buffer(v17);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>,std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__hash_table<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>>>::__hash_table(a4, v7);
      v7 += 5;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v6);
      v6 += 40;
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::__split_buffer<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v5 = (a2 + 16);
  v4 = *(a2 + 16);
  *(v5 - 1) = v4;
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>>>::__node_insert_unique_prepare[abi:nn200100](a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>>>::__node_insert_unique_perform[abi:nn200100](a1, v2);
  return v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>>>::__node_insert_unique_prepare[abi:nn200100](uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (*(i + 4) == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>>>::__node_insert_unique_perform[abi:nn200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveLoopsDuplicates(uint64_t a1, uint64_t *a2)
{
  std::vector<std::vector<unsigned long>>::vector[abi:nn200100](&v14, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      geo::math::polygon_detail::GetNonRedundantIndices((v3 + v4), &v12);
      v6 = (v14 + v4);
      v7 = *(v14 + v4);
      if (v7)
      {
        v6[1] = v7;
        operator delete(v7);
        *v6 = 0;
        v6[1] = 0;
        v6[2] = 0;
      }

      *v6 = v12;
      v6[2] = v13;
      ++v5;
      v3 = *a2;
      v4 += 24;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](a2);
  v9 = v14;
  v8 = v15;
  if (v15 != v14)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (*(v9 + v10 + 8) - *(v9 + v10) >= 0x11uLL)
      {
        std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](a2, (v9 + v10));
        v9 = v14;
        v8 = v15;
      }

      ++v11;
      v10 += 24;
    }

    while (v11 < 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3));
  }

  *&v12 = &v14;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v12);
}

void geo::math::polygon_detail::GetNonRedundantIndices(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __p = 0;
  v21 = 0;
  v22 = 0;
  v3 = a1[1] - *a1;
  v4 = v3 >> 3;
  v5 = (v3 >> 3) - 2;
  if ((v3 >> 3) >= 2)
  {
    v23 = 0;
    std::vector<unsigned long long>::resize(&__p, v3 >> 3, &v23);
    v7 = __p;
    *__p = 0;
    v8 = *a1;
    if (v4 != 1)
    {
      v9 = 0;
      v10 = v8 + 1;
      v11 = v7 + 8;
      v12 = v4 - 1;
      do
      {
        if (*(v10 - 1) != *v10)
        {
          ++v9;
        }

        *v11++ = v9;
        ++v10;
        --v12;
      }

      while (v12);
      if (v4 != 2 && v8[v4 - 1] == *v8)
      {
        v13 = &v7[8 * v4 - 8];
        do
        {
          *v13 = 0;
          v13 -= 8;
          if (v5 < 2)
          {
            break;
          }

          v14 = v8[v5--];
        }

        while (v14 == *v8);
      }
    }

    std::vector<unsigned long long>::push_back[abi:nn200100](a2, v8);
    v16 = *a1;
    v15 = a1[1];
    if ((v15 - *a1) >= 9)
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = *(__p + v18);
        if (v19 != *(__p + v17 * 8) && v19 != *__p)
        {
          std::vector<unsigned long long>::push_back[abi:nn200100](a2, &v16[v17 + 1]);
          v16 = *a1;
          v15 = a1[1];
        }

        ++v18;
        ++v17;
      }

      while (v18 < (v15 - v16) >> 3);
    }
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

uint64_t std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(a1, v11);
    }

    v12 = 24 * v8;
    std::vector<double>::vector[abi:nn200100](v12, a2);
    v7 = v12 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v12 - v13;
    memcpy((v12 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12 + 24;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v17);
  }

  else
  {
    result = std::vector<double>::vector[abi:nn200100](v4, a2);
    v7 = result + 24;
  }

  *(a1 + 8) = v7;
  return result;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::Merge(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, uint64_t a2, unsigned int a3, uint64_t a4, std::vector<unsigned int>::value_type a5, uint64_t a6)
{
  v10 = *(a4 + 20);
  *(a6 + 16) = *(a2 + 16);
  *(a6 + 20) = v10;
  v37 = 0;
  if (!geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetLowestCommonTangent(a1, a2, a3, a4, a5, &v37 + 1, &v37))
  {
    return 0;
  }

  *a6 = *a2;
  *(a6 + 8) = *(a4 + 8);
  v12 = v37;
  v11 = HIDWORD(v37);
  if (HIDWORD(v37) == *(a2 + 16))
  {
    *a6 = HIDWORD(v37) | (v37 << 32);
  }

  if (v12 == *(a4 + 20))
  {
    *(a6 + 8) = v11 | (v12 << 32);
  }

  LeftCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindLeftCandidate(a1, a2, a4, v11, v12);
  RightCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindRightCandidate(a1, a2, a4, HIDWORD(v37), v37);
  v15 = 0;
  if (LeftCandidate != -1 && RightCandidate != -1)
  {
    v17 = v37;
    v16 = HIDWORD(v37);
    v18 = RightCandidate != v37;
    v19 = LeftCandidate != HIDWORD(v37);
    if (__PAIR64__(LeftCandidate, RightCandidate) == v37)
    {
      return 1;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *(a2 + 20) - *(a2 + 16);
    v25 = v23 == 1 && *(a4 + 20) - *(a4 + 16) == 1;
    v35 = *(a4 + 20) - *(a4 + 16);
    v36 = v25;
    while (1)
    {
      if (++v20 >= *a1)
      {
        return 0;
      }

      v26 = RightCandidate;
      v27 = LeftCandidate;
      v28 = a1;
      if (!v19)
      {
        break;
      }

      if (v18)
      {
        if (geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(a1, v16, v17, LeftCandidate, v26) == 2)
        {
          v30 = v37;
          v29 = HIDWORD(v37);
          v28 = a1;
          v31 = v26;
          v17 = v37;
LABEL_23:
          if (!geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(v28, v29, v31, v30, v17))
          {
            return 0;
          }

          LODWORD(v37) = v26;
          goto LABEL_29;
        }

        v33 = v37;
        v16 = HIDWORD(v37);
        v28 = a1;
        v32 = LeftCandidate;
      }

      else
      {
        v32 = LeftCandidate;
        v33 = v17;
      }

      if (!geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(v28, v32, v33, v16, v16))
      {
        return 0;
      }

      HIDWORD(v37) = LeftCandidate;
LABEL_29:
      LeftCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindLeftCandidate(a1, a2, a4, HIDWORD(v37), v37);
      RightCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindRightCandidate(a1, a2, a4, HIDWORD(v37), v37);
      v15 = 0;
      if (LeftCandidate == -1 || RightCandidate == -1)
      {
        return v15;
      }

      if (v22 == LeftCandidate && v21 == RightCandidate)
      {
        if (v27 == v22)
        {
          if (v26 != v21 && v23 == 1)
          {
            v15 = v35;
            if (v35 == 1)
            {
              return v15;
            }
          }
        }

        else if (v36)
        {
          return 1;
        }
      }

      v17 = v37;
      v16 = HIDWORD(v37);
      v18 = RightCandidate != v37;
      v21 = v26;
      v22 = v27;
      v19 = LeftCandidate != HIDWORD(v37);
      if (LeftCandidate == HIDWORD(v37))
      {
        v15 = 1;
        v21 = v26;
        v22 = v27;
        if (RightCandidate == v37)
        {
          return v15;
        }
      }
    }

    v29 = v16;
    v31 = v26;
    v30 = v17;
    goto LABEL_23;
  }

  return v15;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitTriangle(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, unsigned int a2, uint64_t a3)
{
  v6 = a2 + 1;
  v7 = a2 + 2;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, a2, a2 + 1);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v6, a2);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v6, v7);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v7, v6);
  *(a3 + 16) = a2;
  *(a3 + 20) = v7;
  v8 = *(a1 + 2);
  v9 = (v8 + 24 * a2);
  v10 = (*(v8 + 24 * v6) - *v9) * (*(v8 + 24 * v7 + 8) - v9[1]) - (*(v8 + 24 * v6 + 8) - v9[1]) * (*(v8 + 24 * v7) - *v9);
  v11 = v10 <= 0.0;
  if (v10 < 0.0)
  {
    v11 = 2;
  }

  if (v11 == 2)
  {
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, a2, v7);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v7, a2);
    v12 = a2 | (v7 << 32);
    *a3 = v12;
    *(a3 + 8) = v12;
  }

  else
  {
    if (!v11)
    {
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, a2, v7);
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v7, a2);
    }

    *a3 = a2 | (v6 << 32);
    *(a3 + 8) = v6 | (v7 << 32);
  }
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitSegment(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, unsigned int a2, uint64_t a3)
{
  v6 = a2 + 1;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, a2, a2 + 1);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v6, a2);
  *(a3 + 16) = a2;
  *(a3 + 20) = v6;
  v7 = a2 | (v6 << 32);
  *a3 = v7;
  *(a3 + 8) = v7;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetLowestCommonTangent(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, unsigned int a3, unsigned int *a4, std::vector<unsigned int>::value_type a5, unsigned int *a6, std::vector<unsigned int>::value_type *a7)
{
  v9 = a5;
  v10 = a3;
  if (*(a2 + 8) == a3)
  {
    v12 = *(a2 + 12);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  if (*a4 == a5)
  {
    v13 = a4[1];
  }

  else
  {
    v13 = *a4;
  }

  v14 = *this;
  v15 = -1;
  while (1)
  {
    if (v15 + 1 == v14)
    {
      return 0;
    }

    v16 = *(this + 2);
    v17 = (v16 + 24 * v10);
    v18 = *v17;
    v19 = v17[1];
    v20 = (v16 + 24 * v12);
    v21 = *v20;
    v22 = v20[1];
    v23 = (v16 + 24 * v9);
    v24 = v23[1];
    if ((v21 - v18) * (v24 - v19) - (v22 - v19) * (*v23 - v18) <= 0.0)
    {
      break;
    }

    PreviousEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(this, v12, v10);
    if (PreviousEdge == -1)
    {
      return 0;
    }

    v26 = PreviousEdge;
    v27 = v13;
    v10 = v12;
    v12 = PreviousEdge;
LABEL_15:
    v14 = *this;
    if (*this <= ++v15)
    {
      goto LABEL_19;
    }
  }

  if ((*(v16 + 24 * v13) - *v23) * (v19 - v24) - (*(v16 + 24 * v13 + 8) - v24) * (v18 - *v23) < 0.0)
  {
    NextEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetNextEdge(this, v13, v9);
    if (NextEdge == -1)
    {
      return 0;
    }

    v27 = NextEdge;
    v9 = v13;
    v26 = v12;
    v13 = NextEdge;
    goto LABEL_15;
  }

  v27 = v13;
  v26 = v12;
LABEL_19:
  *a6 = v10;
  *a7 = v9;
  v30 = *a6;

  return geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(this, v30, v9, v26, v27);
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindLeftCandidate(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  NextEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetNextEdge(a1, a4, a5);
  v10 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetNextEdge(a1, a4, NextEdge);
  v11 = 0xFFFFFFFFLL;
  if (NextEdge != -1)
  {
    v12 = v10;
    if (v10 != -1)
    {
      if (*a1)
      {
        v13 = 0;
        v11 = NextEdge;
        while (1)
        {
          v14 = *(a2 + 16);
          if (v11 < v14)
          {
            break;
          }

          v15 = *(a2 + 20);
          if (v11 > v15)
          {
            break;
          }

          v16 = *(a1 + 2);
          v17 = (v16 + 24 * a4);
          v18 = *v17;
          v19 = v17[1];
          v20 = (v16 + 24 * a5);
          v21 = (v16 + 24 * v11);
          v22 = *v20 - v18;
          v23 = v20[1] - v19;
          v24 = *v21 - v18;
          v25 = v21[1] - v19;
          v26 = v22 * v25 - v23 * v24;
          v27 = v26 <= 0.0;
          if (v26 < 0.0)
          {
            v27 = 2;
          }

          if (v27 == 1)
          {
            if (v23 * v25 + v22 * v24 <= 0.0)
            {
              return a4;
            }
          }

          else if (v27 == 2)
          {
            return a4;
          }

          if (v12 < v14 || v12 > v15 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(a1, a4, a5, v11, v12) != 2)
          {
            return v11;
          }

          geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(a1, a4, v11);
          v11 = v12;
          ++v13;
          v12 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetNextEdge(a1, a4, v12);
          if (v13 >= *a1)
          {
            return 0xFFFFFFFFLL;
          }
        }

        return a4;
      }
    }
  }

  return v11;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindRightCandidate(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  PreviousEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(a1, a5, a4);
  v10 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(a1, a5, PreviousEdge);
  v11 = 0xFFFFFFFFLL;
  if (PreviousEdge != -1)
  {
    v12 = v10;
    if (v10 != -1)
    {
      if (*a1)
      {
        v13 = 0;
        v11 = PreviousEdge;
        while (1)
        {
          v14 = *(a3 + 16);
          if (v11 < v14)
          {
            break;
          }

          v15 = *(a3 + 20);
          if (v11 > v15)
          {
            break;
          }

          v16 = *(a1 + 2);
          v17 = (v16 + 24 * a5);
          v18 = *v17;
          v19 = v17[1];
          v20 = (v16 + 24 * a4);
          v21 = (v16 + 24 * v11);
          v22 = *v20 - v18;
          v23 = v20[1] - v19;
          v24 = *v21 - v18;
          v25 = v21[1] - v19;
          v26 = v22 * v25 - v23 * v24;
          v27 = v26 <= 0.0;
          if (v26 < 0.0)
          {
            v27 = 2;
          }

          if (v27 == 1)
          {
            if (v23 * v25 + v22 * v24 <= 0.0)
            {
              return a5;
            }
          }

          else if (!v27)
          {
            return a5;
          }

          if (v12 < v14 || v12 > v15 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(a1, a4, a5, v11, v12) != 2)
          {
            return v11;
          }

          geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(a1, a5, v11);
          v28 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(a1, a5, v12);
          if (v28 != -1)
          {
            ++v13;
            v11 = v12;
            v12 = v28;
            if (v13 < *a1)
            {
              continue;
            }
          }

          return 0xFFFFFFFFLL;
        }

        return a5;
      }
    }
  }

  return v11;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, std::vector<unsigned int>::value_type a2, std::vector<unsigned int>::value_type a3, int a4, int a5)
{
  __x = a3;
  v27 = a2;
  v6 = (*(this + 25) + 24 * a2);
  begin = v6->__begin_;
  end = v6->__end_;
  v9 = end - v6->__begin_;
  if (end == v6->__begin_)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = v9 >> 2;
  if (v13 <= 1)
  {
    v13 = 1;
  }

  v14 = -v13;
  while (begin[v12] != a4)
  {
    ++v12;
    if (v14 == --v11)
    {
      return 0;
    }
  }

  if (v11 == 1)
  {
    return 0;
  }

  v15.__i_ = (begin + ((v12 * 4) & 0x3FFFFFFFCLL) + 4);
  std::vector<unsigned int>::insert(v6, v15, &__x);
  v16 = (*(this + 25) + 24 * __x);
  v17 = v16->__begin_;
  v18 = v16->__end_;
  v19 = v18 - v16->__begin_;
  if (v18 == v16->__begin_)
  {
    return 0;
  }

  v20 = 0;
  v21 = 0;
  v22 = v19 >> 2;
  if (v22 <= 1)
  {
    v22 = 1;
  }

  v23 = -v22;
  while (v17[v21] != a5)
  {
    ++v21;
    if (v23 == --v20)
    {
      return 0;
    }
  }

  if (v20 == 1)
  {
    return 0;
  }

  v25.__i_ = (v17 + ((v21 * 4) & 0x3FFFFFFFCLL));
  std::vector<unsigned int>::insert(v16, v25, &v27);
  return 1;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = *(this + 2);
  v6 = (v5 + 24 * a2);
  v7 = *v6;
  v8 = v6[1];
  v9 = (v5 + 24 * a3);
  v10 = *v9;
  v11 = v9[1];
  v12 = (v5 + 24 * a4);
  v13 = (v5 + 24 * a5);
  v14 = v13[1];
  v15 = v7 - *v13;
  v16 = v10 - *v13;
  v17 = v11 - v14;
  v18 = *v12 - *v13;
  v19 = v12[1] - v14;
  v20 = v15 * (v17 * (v18 * v18 + 0.0 + v19 * v19) - v19 * (v16 * v16 + 0.0 + v17 * v17)) - (v8 - v14) * (v16 * (v18 * v18 + 0.0 + v19 * v19) - (v16 * v16 + 0.0 + v17 * v17) * v18) + (v15 * v15 + 0.0 + (v8 - v14) * (v8 - v14)) * (v16 * v19 - v17 * v18);
  if (v20 <= 0.0)
  {
    return v20 >= 0.0;
  }

  else
  {
    return 2;
  }
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 25) + 24 * a2);
  v4 = *(*(this + 25) + 24 * a2 + 8) - v3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = v4 >> 2;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  while (*(v3 + 4 * v5) != a3)
  {
    if (v7 == ++v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0xFFFFFFFFLL;
  if (v5 != 0xFFFFFFFFLL)
  {
    return *(v3 + 4 * ((v6 + v5 - 1) % v6));
  }

  return result;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetNextEdge(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 25) + 24 * a2);
  v4 = *(*(this + 25) + 24 * a2 + 8) - v3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = v4 >> 2;
  v7 = v6 <= 1 ? 1 : v6;
  while (*(v3 + 4 * v5) != a3)
  {
    if (v7 == ++v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v5 != -1)
  {
    return *(v3 + 4 * ((v5 + 1) % v6));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 25);
  v4 = (v3 + 24 * a2);
  v6 = *v4;
  v5 = v4[1];
  if (v5 == *v4)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = (v5 - *v4) >> 2;
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v13 = -v12;
  while (*(v6 + v11) != a3)
  {
    v11 += 4;
    if (v13 == --v10)
    {
      return 0;
    }
  }

  if (v10 == 1)
  {
    return 0;
  }

  v14 = v6 + (v11 & 0x3FFFFFFFCLL);
  v15 = v5 - (v14 + 4);
  if (v5 != v14 + 4)
  {
    memmove((v6 + (v11 & 0x3FFFFFFFCLL)), (v14 + 4), v5 - (v14 + 4));
    v3 = *(this + 25);
  }

  v4[1] = v14 + v15;
  v16 = (v3 + 24 * a3);
  v18 = *v16;
  v17 = v16[1];
  if (v17 == *v16)
  {
    return 0;
  }

  v19 = 0;
  v20 = 0;
  v21 = (v17 - *v16) >> 2;
  if (v21 <= 1)
  {
    v21 = 1;
  }

  v22 = -v21;
  while (*(v18 + v20) != a2)
  {
    v20 += 4;
    if (v22 == --v19)
    {
      return 0;
    }
  }

  if (v19 == 1)
  {
    return 0;
  }

  v24 = v18 + (v20 & 0x3FFFFFFFCLL);
  v25 = v17 - (v24 + 4);
  if (v17 != v24 + 4)
  {
    memmove((v18 + (v20 & 0x3FFFFFFFCLL)), (v24 + 4), v17 - (v24 + 4));
  }

  v16[1] = v24 + v25;
  return 1;
}

std::vector<unsigned int>::iterator std::vector<unsigned int>::insert(std::vector<unsigned int> *this, std::vector<unsigned int>::const_iterator __position, std::vector<unsigned int>::const_reference __x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(this, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    std::__split_buffer<unsigned int>::emplace_back<unsigned int const&>(&v26, __x);
    v16.__i_ = v27;
    memcpy(v28, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v27;
    *&v28 = v28 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
      v9 = this->__end_;
    }

    v23 = v9 <= __x || i > __x;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *i = __x[v24];
  }

  return i;
}

void *std::__split_buffer<unsigned int>::emplace_back<unsigned int const&>(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, std::vector<unsigned int>::value_type a3)
{
  __x = a3;
  v5 = *(this + 25) + 24 * a2;
  v6.__i_ = *v5;
  v7 = *(v5 + 8);
  v8 = v7 - *v5;
  if (v7 == *v5)
  {
    v20 = *(v5 + 16);
    if (v7 >= v20)
    {
      v21 = v20 - v6.__i_;
      v22 = v21 >> 1;
      if ((v21 >> 1) <= 1)
      {
        v22 = 1;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v23 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(v5, v23);
    }

    goto LABEL_39;
  }

  v9 = v8 >> 2;
  v10 = *(this + 2);
  v11 = (v10 + 24 * a2);
  v12 = *v11;
  v13 = v11[1];
  v14 = v10 + 24 * a3;
  v15 = *v14 - *v11;
  v16 = *(v14 + 8) - v13;
  v17 = (*(v10 + 24 * *v6.__i_) - *v11) * v16 - (*(v10 + 24 * *v6.__i_ + 8) - v13) * v15;
  if (v17 >= 0.0)
  {
    v18 = v17 <= 0.0;
  }

  else
  {
    v18 = 2;
  }

  if (v8 == 4)
  {
    if (v18)
    {
      v19 = v5;
      goto LABEL_41;
    }

    v39 = *(v5 + 16);
    if (v7 >= v39)
    {
      v41 = v39 - v6.__i_;
      if (v41 >> 1 <= v9 + 1)
      {
        v42 = v9 + 1;
      }

      else
      {
        v42 = v41 >> 1;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v43 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(v5, v43);
    }

    goto LABEL_39;
  }

  if (v9 < 2)
  {
LABEL_30:
    v34 = *(v5 + 16);
    if (v7 >= v34)
    {
      v35 = v9 + 1;
      if ((v9 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v36 = v34 - v6.__i_;
      if (v36 >> 1 > v35)
      {
        v35 = v36 >> 1;
      }

      v37 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
      v38 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v37)
      {
        v38 = v35;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(v5, v38);
      }

      *(4 * v9) = a3;
      v40 = 4 * v9 + 4;
      memcpy(0, v6.__i_, v8);
      v44 = *v5;
      *v5 = 0;
      *(v5 + 8) = v40;
      *(v5 + 16) = 0;
      if (v44)
      {
        operator delete(v44);
      }

      goto LABEL_51;
    }

LABEL_39:
    *v7 = a3;
    v40 = (v7 + 1);
LABEL_51:
    *(v5 + 8) = v40;
    return;
  }

  v24 = v6.__i_ + 1;
  v25 = 1;
  while (1)
  {
    v26 = v10 + 24 * v6.__i_[v25];
    v27 = (*v26 - v12) * v16 - (*(v26 + 8) - v13) * v15;
    v28 = v27 <= 0.0;
    if (v27 < 0.0)
    {
      v28 = 2;
      goto LABEL_27;
    }

    if (v27 <= 0.0)
    {
      v30 = *v26;
      v29 = *(v26 + 8);
      v31 = *(v26 + 16);
      v32 = *&v30 == *v14 && v29 == *(v14 + 8);
      if (v32 && v31 == *(v14 + 16))
      {
        break;
      }
    }

LABEL_27:
    if (!v18 && v27 < 0.0)
    {
      break;
    }

    ++v25;
    ++v24;
    v18 = v28;
    if (v9 == v25)
    {
      goto LABEL_30;
    }
  }

  v19 = v5;
  v6.__i_ = v24;
LABEL_41:
  std::vector<unsigned int>::insert(v19, v6, &__x);
}