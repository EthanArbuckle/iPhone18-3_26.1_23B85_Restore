void __functionSine_block_invoke(uint64_t a1, int *a2)
{
  if (UnitCountHasNonAngleUnits((a2 + 18)))
  {
    if (g_GeneratingConvertTerm)
    {
      v4 = 11;
    }

    else
    {
      v4 = 10;
    }

    goto LABEL_7;
  }

  if (g_GeneratingConvertTerm)
  {
    v4 = 11;
LABEL_7:
    v5 = *(a1 + 32);
    *(v5 + 204) = v4;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0x7C00000000000000;
    return;
  }

  g_isTrivial = 0;
  v28 = 0;
  v6 = *a2;
  if (*a2 == 1)
  {
    if (my_rnd_mode)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v7 = __binary64_to_bid128(v9, my_fpsf, *(a2 + 4));
  }

  else if (v6 == 2)
  {
    v7 = *(a2 + 6);
    v8 = *(a2 + 7);
  }

  else
  {
    if (v6 == 4)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = 0x3040000000000000;
  }

  v10 = UnitCountRequireRadians(v7, v8, (a2 + 18), &v28);
  v12 = *(a1 + 32);
  if (v28)
  {
    v12[51] = v28;
    *(v12 + 6) = 0;
    *(v12 + 7) = 0x7C00000000000000;
    return;
  }

  v13 = *v12;
  if (*v12 == 4)
  {
LABEL_25:
    if (my_rnd_mode)
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    v15 = __bid128_to_binary64(v10, v11, v14, my_fpsf);
    v16 = sin(v15);
    *(v12 + 4) = v16;
    *(v12 + 8) = rint(v16);
    return;
  }

  if (v13 != 2)
  {
    if (v13 != 1)
    {
      return;
    }

    goto LABEL_25;
  }

  if (my_rnd_mode)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  v18 = __bid128_sin(v10, v11, v17);
  v20 = v19;
  if (DecimalTrigZeroThresholdNegative_initialized == 1)
  {
    v21 = DecimalTrigZeroThresholdNegative_threshold_0;
    v22 = *algn_1EBF225B8;
  }

  else
  {
    DecimalTrigZeroThresholdNegative_initialized = 1;
    v29 = 0;
    v21 = __bid128_pow(0xAuLL, 0xB040000000000000, 0x1FuLL, 0xB040000000000000, 4u, &v29);
    v22 = v23;
    DecimalTrigZeroThresholdNegative_threshold_0 = v21;
    *algn_1EBF225B8 = v23;
  }

  if (__bid128_quiet_greater_equal(v18, v20, v21, v22, my_fpsf) && (v24 = DecimalTrigZeroThresholdPositive(), __bid128_quiet_less_equal(v18, v20, v24, v25, my_fpsf)))
  {
    v26 = *(a1 + 32);
    *(v26 + 48) = 0;
    *(v26 + 56) = 0x3040000000000000;
  }

  else
  {
    v27 = *(a1 + 32);
    *(v27 + 48) = v18;
    *(v27 + 56) = v20;
  }
}

uint64_t DecimalTrigZeroThresholdPositive()
{
  if (DecimalTrigZeroThresholdPositive_initialized == 1)
  {
    return DecimalTrigZeroThresholdPositive_threshold_0;
  }

  v5 = v0;
  v6 = v1;
  DecimalTrigZeroThresholdPositive_initialized = 1;
  v4 = 0;
  result = __bid128_pow(0xAuLL, 0x3040000000000000uLL, 0x1FuLL, 0xB040000000000000, 4u, &v4);
  DecimalTrigZeroThresholdPositive_threshold_0 = result;
  *algn_1EBF225D8 = v3;
  return result;
}

void functionSinD(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionSinD_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void functionCos(uint64_t a1, uint64_t a2)
{
  if (g_assumeDegrees == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __functionCosD_block_invoke;
    v4[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v4[4] = a2;
    v2 = v4;
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __functionCos_block_invoke;
    v3[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v3[4] = a2;
    v2 = v3;
  }

  evaluateUnary(a1, a2, v2);
}

void __functionCosD_block_invoke(uint64_t a1, int *a2)
{
  if (UnitCountHasNonAngleUnits((a2 + 18)))
  {
    if (g_GeneratingConvertTerm)
    {
      v4 = 11;
    }

    else
    {
      v4 = 10;
    }

    goto LABEL_7;
  }

  if (g_GeneratingConvertTerm)
  {
    v4 = 11;
LABEL_7:
    v5 = *(a1 + 32);
    *(v5 + 204) = v4;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0x7C00000000000000;
    return;
  }

  g_isTrivial = 0;
  v37 = 0;
  v6 = *a2;
  if (*a2 == 1)
  {
    if (my_rnd_mode)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v7 = __binary64_to_bid128(v9, my_fpsf, *(a2 + 4));
  }

  else if (v6 == 2)
  {
    v7 = *(a2 + 6);
    v8 = *(a2 + 7);
  }

  else
  {
    if (v6 == 4)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = 0x3040000000000000;
  }

  v10 = UnitCountRequireDegrees(v7, v8, (a2 + 18), &v37);
  v12 = v11;
  if (DecimalToRadians_initialized == 1)
  {
    v13 = DecimalToRadians_to_radians_0;
    v14 = *algn_1EBF22658;
  }

  else
  {
    DecimalToRadians_initialized = 1;
    v38 = 0;
    if (DecimalPi_initialized == 1)
    {
      v15 = DecimalPi_pi_0;
      v16 = *algn_1EBF22638;
    }

    else
    {
      DecimalPi_initialized = 1;
      v39 = 0;
      v15 = __bid128_from_string("3.14159265358979323846264338327950288", 4, &v39);
      DecimalPi_pi_0 = v15;
      *algn_1EBF22638 = v16;
    }

    v13 = __bid128_div(v15, v16, 0xB4uLL, 0x3040000000000000uLL, 4, &v38);
    v14 = v17;
    DecimalToRadians_to_radians_0 = v13;
    *algn_1EBF22658 = v17;
  }

  if (my_rnd_mode)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v19 = __bid128_mul(v10, v12, v13, v14, v18, my_fpsf);
  v21 = *(a1 + 32);
  if (v37)
  {
    v21[51] = v37;
    *(v21 + 6) = 0;
    *(v21 + 7) = 0x7C00000000000000;
    return;
  }

  v22 = *v21;
  if (*v21 == 4)
  {
LABEL_34:
    if (my_rnd_mode)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v24 = __bid128_to_binary64(v19, v20, v23, my_fpsf);
    v25 = cos(v24);
    *(v21 + 4) = v25;
    *(v21 + 8) = rint(v25);
    return;
  }

  if (v22 != 2)
  {
    if (v22 != 1)
    {
      return;
    }

    goto LABEL_34;
  }

  if (my_rnd_mode)
  {
    v26 = 4;
  }

  else
  {
    v26 = 0;
  }

  v27 = __bid128_cos(v19, v20, v26);
  v29 = v28;
  if (DecimalTrigZeroThresholdNegative_initialized == 1)
  {
    v30 = DecimalTrigZeroThresholdNegative_threshold_0;
    v31 = *algn_1EBF225B8;
  }

  else
  {
    DecimalTrigZeroThresholdNegative_initialized = 1;
    v39 = 0;
    v30 = __bid128_pow(0xAuLL, 0xB040000000000000, 0x1FuLL, 0xB040000000000000, 4u, &v39);
    v31 = v32;
    DecimalTrigZeroThresholdNegative_threshold_0 = v30;
    *algn_1EBF225B8 = v32;
  }

  if (__bid128_quiet_greater_equal(v27, v29, v30, v31, my_fpsf) && (v33 = DecimalTrigZeroThresholdPositive(), __bid128_quiet_less_equal(v27, v29, v33, v34, my_fpsf)))
  {
    v35 = *(a1 + 32);
    *(v35 + 48) = 0;
    *(v35 + 56) = 0x3040000000000000;
  }

  else
  {
    v36 = *(a1 + 32);
    *(v36 + 48) = v27;
    *(v36 + 56) = v29;
  }
}

void __functionCos_block_invoke(uint64_t a1, int *a2)
{
  if (UnitCountHasNonAngleUnits((a2 + 18)))
  {
    if (g_GeneratingConvertTerm)
    {
      v4 = 11;
    }

    else
    {
      v4 = 10;
    }

    goto LABEL_7;
  }

  if (g_GeneratingConvertTerm)
  {
    v4 = 11;
LABEL_7:
    v5 = *(a1 + 32);
    *(v5 + 204) = v4;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0x7C00000000000000;
    return;
  }

  g_isTrivial = 0;
  v28 = 0;
  v6 = *a2;
  if (*a2 == 1)
  {
    if (my_rnd_mode)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v7 = __binary64_to_bid128(v9, my_fpsf, *(a2 + 4));
  }

  else if (v6 == 2)
  {
    v7 = *(a2 + 6);
    v8 = *(a2 + 7);
  }

  else
  {
    if (v6 == 4)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = 0x3040000000000000;
  }

  v10 = UnitCountRequireRadians(v7, v8, (a2 + 18), &v28);
  v12 = *(a1 + 32);
  if (v28)
  {
    v12[51] = v28;
    *(v12 + 6) = 0;
    *(v12 + 7) = 0x7C00000000000000;
    return;
  }

  v13 = *v12;
  if (*v12 == 4)
  {
LABEL_25:
    if (my_rnd_mode)
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    v15 = __bid128_to_binary64(v10, v11, v14, my_fpsf);
    v16 = cos(v15);
    *(v12 + 4) = v16;
    *(v12 + 8) = rint(v16);
    return;
  }

  if (v13 != 2)
  {
    if (v13 != 1)
    {
      return;
    }

    goto LABEL_25;
  }

  if (my_rnd_mode)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  v18 = __bid128_cos(v10, v11, v17);
  v20 = v19;
  if (DecimalTrigZeroThresholdNegative_initialized == 1)
  {
    v21 = DecimalTrigZeroThresholdNegative_threshold_0;
    v22 = *algn_1EBF225B8;
  }

  else
  {
    DecimalTrigZeroThresholdNegative_initialized = 1;
    v29 = 0;
    v21 = __bid128_pow(0xAuLL, 0xB040000000000000, 0x1FuLL, 0xB040000000000000, 4u, &v29);
    v22 = v23;
    DecimalTrigZeroThresholdNegative_threshold_0 = v21;
    *algn_1EBF225B8 = v23;
  }

  if (__bid128_quiet_greater_equal(v18, v20, v21, v22, my_fpsf) && (v24 = DecimalTrigZeroThresholdPositive(), __bid128_quiet_less_equal(v18, v20, v24, v25, my_fpsf)))
  {
    v26 = *(a1 + 32);
    *(v26 + 48) = 0;
    *(v26 + 56) = 0x3040000000000000;
  }

  else
  {
    v27 = *(a1 + 32);
    *(v27 + 48) = v18;
    *(v27 + 56) = v20;
  }
}

void functionCosD(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionCosD_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void functionTan(uint64_t a1, uint64_t a2)
{
  if (g_assumeDegrees == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __functionTanD_block_invoke;
    v4[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v4[4] = a2;
    v2 = v4;
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __functionTan_block_invoke;
    v3[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v3[4] = a2;
    v2 = v3;
  }

  evaluateUnary(a1, a2, v2);
}

void __functionTanD_block_invoke(uint64_t a1, int *a2)
{
  if (UnitCountHasNonAngleUnits((a2 + 18)))
  {
    if (g_GeneratingConvertTerm)
    {
      v4 = 11;
    }

    else
    {
      v4 = 10;
    }

    goto LABEL_7;
  }

  if (g_GeneratingConvertTerm)
  {
    v4 = 11;
LABEL_7:
    v5 = *(a1 + 32);
    *(v5 + 204) = v4;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0x7C00000000000000;
    return;
  }

  g_isTrivial = 0;
  v42 = 0;
  v6 = *a2;
  if (*a2 == 1)
  {
    if (my_rnd_mode)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v7 = __binary64_to_bid128(v9, my_fpsf, *(a2 + 4));
  }

  else if (v6 == 2)
  {
    v7 = *(a2 + 6);
    v8 = *(a2 + 7);
  }

  else
  {
    if (v6 == 4)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = 0x3040000000000000;
  }

  v10 = UnitCountRequireDegrees(v7, v8, (a2 + 18), &v42);
  v12 = v11;
  if (DecimalToRadians_initialized == 1)
  {
    v13 = DecimalToRadians_to_radians_0;
    v14 = *algn_1EBF22658;
  }

  else
  {
    DecimalToRadians_initialized = 1;
    v43 = 0;
    if (DecimalPi_initialized == 1)
    {
      v15 = DecimalPi_pi_0;
      v16 = *algn_1EBF22638;
    }

    else
    {
      DecimalPi_initialized = 1;
      v44 = 0;
      v15 = __bid128_from_string("3.14159265358979323846264338327950288", 4, &v44);
      DecimalPi_pi_0 = v15;
      *algn_1EBF22638 = v16;
    }

    v13 = __bid128_div(v15, v16, 0xB4uLL, 0x3040000000000000uLL, 4, &v43);
    v14 = v17;
    DecimalToRadians_to_radians_0 = v13;
    *algn_1EBF22658 = v17;
  }

  if (my_rnd_mode)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v19 = __bid128_mul(v10, v12, v13, v14, v18, my_fpsf);
  v21 = *(a1 + 32);
  if (v42)
  {
    v21[51] = v42;
    *(v21 + 6) = 0;
    *(v21 + 7) = 0x7C00000000000000;
    return;
  }

  v22 = *v21;
  if (*v21 == 4)
  {
    goto LABEL_34;
  }

  if (v22 == 2)
  {
    if (my_rnd_mode)
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }

    v27 = __bid128_tan(v19, v20, v26);
    v29 = v28;
    if (DecimalTrigZeroThresholdNegative_initialized == 1)
    {
      v30 = DecimalTrigZeroThresholdNegative_threshold_0;
      v31 = *algn_1EBF225B8;
    }

    else
    {
      DecimalTrigZeroThresholdNegative_initialized = 1;
      v44 = 0;
      v30 = __bid128_pow(0xAuLL, 0xB040000000000000, 0x1FuLL, 0xB040000000000000, 4u, &v44);
      v31 = v32;
      DecimalTrigZeroThresholdNegative_threshold_0 = v30;
      *algn_1EBF225B8 = v32;
    }

    if (__bid128_quiet_greater_equal(v27, v29, v30, v31, my_fpsf) && (v33 = DecimalTrigZeroThresholdPositive(), __bid128_quiet_less_equal(v27, v29, v33, v34, my_fpsf)))
    {
      v35 = *(a1 + 32);
      v36 = 0x3040000000000000;
    }

    else
    {
      v37 = DecimalTrigInfThresholdNegative();
      if (!__bid128_quiet_less_equal(v27, v29, v37, v38, my_fpsf))
      {
        v39 = DecimalTrigInfThresholdPositive();
        if (!__bid128_quiet_greater_equal(v27, v29, v39, v40, my_fpsf))
        {
          v41 = *(a1 + 32);
          *(v41 + 48) = v27;
          *(v41 + 56) = v29;
          return;
        }
      }

      v35 = *(a1 + 32);
      *(v35 + 204) = 4;
      v36 = 0x7C00000000000000;
    }

    *(v35 + 48) = 0;
    *(v35 + 56) = v36;
    return;
  }

  if (v22 == 1)
  {
LABEL_34:
    if (my_rnd_mode)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v24 = __bid128_to_binary64(v19, v20, v23, my_fpsf);
    v25 = tan(v24);
    *(v21 + 4) = v25;
    *(v21 + 8) = rint(v25);
  }
}

void __functionTan_block_invoke(uint64_t a1, int *a2)
{
  if (UnitCountHasNonAngleUnits((a2 + 18)))
  {
    if (g_GeneratingConvertTerm)
    {
      v4 = 11;
    }

    else
    {
      v4 = 10;
    }

    goto LABEL_7;
  }

  if (g_GeneratingConvertTerm)
  {
    v4 = 11;
LABEL_7:
    v5 = *(a1 + 32);
    *(v5 + 204) = v4;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0x7C00000000000000;
    return;
  }

  g_isTrivial = 0;
  v33 = 0;
  v6 = *a2;
  if (*a2 == 1)
  {
    if (my_rnd_mode)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v7 = __binary64_to_bid128(v9, my_fpsf, *(a2 + 4));
  }

  else if (v6 == 2)
  {
    v7 = *(a2 + 6);
    v8 = *(a2 + 7);
  }

  else
  {
    if (v6 == 4)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = 0x3040000000000000;
  }

  v10 = UnitCountRequireRadians(v7, v8, (a2 + 18), &v33);
  v12 = *(a1 + 32);
  if (v33)
  {
    v12[51] = v33;
    *(v12 + 6) = 0;
    *(v12 + 7) = 0x7C00000000000000;
    return;
  }

  v13 = *v12;
  if (*v12 == 4)
  {
    goto LABEL_25;
  }

  if (v13 == 2)
  {
    if (my_rnd_mode)
    {
      v17 = 4;
    }

    else
    {
      v17 = 0;
    }

    v18 = __bid128_tan(v10, v11, v17);
    v20 = v19;
    if (DecimalTrigZeroThresholdNegative_initialized == 1)
    {
      v21 = DecimalTrigZeroThresholdNegative_threshold_0;
      v22 = *algn_1EBF225B8;
    }

    else
    {
      DecimalTrigZeroThresholdNegative_initialized = 1;
      v34 = 0;
      v21 = __bid128_pow(0xAuLL, 0xB040000000000000, 0x1FuLL, 0xB040000000000000, 4u, &v34);
      v22 = v23;
      DecimalTrigZeroThresholdNegative_threshold_0 = v21;
      *algn_1EBF225B8 = v23;
    }

    if (__bid128_quiet_greater_equal(v18, v20, v21, v22, my_fpsf) && (v24 = DecimalTrigZeroThresholdPositive(), __bid128_quiet_less_equal(v18, v20, v24, v25, my_fpsf)))
    {
      v26 = *(a1 + 32);
      v27 = 0x3040000000000000;
    }

    else
    {
      v28 = DecimalTrigInfThresholdNegative();
      if (!__bid128_quiet_less_equal(v18, v20, v28, v29, my_fpsf))
      {
        v30 = DecimalTrigInfThresholdPositive();
        if (!__bid128_quiet_greater_equal(v18, v20, v30, v31, my_fpsf))
        {
          v32 = *(a1 + 32);
          *(v32 + 48) = v18;
          *(v32 + 56) = v20;
          return;
        }
      }

      v26 = *(a1 + 32);
      *(v26 + 204) = 4;
      v27 = 0x7C00000000000000;
    }

    *(v26 + 48) = 0;
    *(v26 + 56) = v27;
    return;
  }

  if (v13 == 1)
  {
LABEL_25:
    if (my_rnd_mode)
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    v15 = __bid128_to_binary64(v10, v11, v14, my_fpsf);
    v16 = tan(v15);
    *(v12 + 4) = v16;
    *(v12 + 8) = rint(v16);
  }
}

uint64_t DecimalTrigInfThresholdNegative()
{
  if (DecimalTrigInfThresholdNegative_initialized == 1)
  {
    return DecimalTrigInfThresholdNegative_threshold_0;
  }

  v5 = v0;
  v6 = v1;
  DecimalTrigInfThresholdNegative_initialized = 1;
  v4 = 0;
  result = __bid128_pow(0xAuLL, 0xB040000000000000, 0x1FuLL, 0x3040000000000000uLL, 4u, &v4);
  DecimalTrigInfThresholdNegative_threshold_0 = result;
  *algn_1EBF225F8 = v3;
  return result;
}

uint64_t DecimalTrigInfThresholdPositive()
{
  if (DecimalTrigInfThresholdPositive_initialized == 1)
  {
    return DecimalTrigInfThresholdPositive_threshold_0;
  }

  v5 = v0;
  v6 = v1;
  DecimalTrigInfThresholdPositive_initialized = 1;
  v4 = 0;
  result = __bid128_pow(0xAuLL, 0x3040000000000000uLL, 0x1FuLL, 0x3040000000000000uLL, 4u, &v4);
  DecimalTrigInfThresholdPositive_threshold_0 = result;
  *algn_1EBF22618 = v3;
  return result;
}

void functionTanD(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionTanD_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void functionASin(uint64_t a1, uint64_t a2)
{
  if (g_assumeDegrees == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __functionASinD_block_invoke;
    v4[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v4[4] = a2;
    v2 = v4;
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __functionASin_block_invoke;
    v3[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v3[4] = a2;
    v2 = v3;
  }

  evaluateUnary(a1, a2, v2);
}

void __functionASinD_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 76))
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v3 = 9;
    goto LABEL_12;
  }

  v5 = -1;
  v6 = 84;
  do
  {
    if (v5 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    v7 = *(a2 + v6);
    ++v5;
    v6 += 8;
  }

  while (!v7);
  if (v5 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_15:
    g_isTrivial = 0;
    v9 = *(a1 + 32);
    v10 = *v9;
    if (*v9 != 4)
    {
      if (v10 == 2)
      {
        v16 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v23 = 4;
          }

          else
          {
            v23 = 0;
          }

          v17 = __binary64_to_bid128(v23, my_fpsf, *(a2 + 32));
          v22 = v24;
        }

        else if (v16 == 2)
        {
          v17 = *(a2 + 48);
          v22 = *(a2 + 56);
        }

        else
        {
          if (v16 == 4)
          {
            v17 = *(a2 + 64);
          }

          else
          {
            v17 = 0;
          }

          v22 = 0x3040000000000000;
        }

        v25 = 0x3040000000000000;
        if (__bid128_quiet_equal(1uLL, 0x3040000000000000uLL, v17, v22, my_fpsf) || ((v26 = *a2, *a2 == 1) ? (!my_rnd_mode ? (v29 = 0) : (v29 = 4), v27 = __binary64_to_bid128(v29, my_fpsf, *(a2 + 32)), v28 = v30) : v26 == 2 ? (v27 = *(a2 + 48), v28 = *(a2 + 56)) : (v26 != 4 ? (v27 = 0) : (v27 = *(a2 + 64)), v28 = 0x3040000000000000), v25 = 0xB040000000000000, __bid128_quiet_equal(1uLL, 0xB040000000000000, v27, v28, my_fpsf)))
        {
          *(v9 + 6) = 90;
          *(v9 + 7) = v25;
        }

        else
        {
          v31 = treeDecimalValue(a2);
          if (my_rnd_mode)
          {
            v33 = 4;
          }

          else
          {
            v33 = 0;
          }

          v34 = __bid128_asin(v31, v32, v33);
          v36 = v35;
          v37 = *(a1 + 32);
          v39 = DecimalToDegrees();
          if (my_rnd_mode)
          {
            v40 = 4;
          }

          else
          {
            v40 = 0;
          }

          *(v37 + 48) = __bid128_mul(v34, v36, v39, v38, v40, my_fpsf);
          *(v37 + 56) = v41;
        }

        return;
      }

      if (v10 != 1)
      {
        return;
      }
    }

    v11 = *a2;
    if (*a2 == 1)
    {
      v12 = *(a2 + 32);
    }

    else if (v11 == 2)
    {
      v18 = *(a2 + 48);
      v19 = *(a2 + 56);
      if (my_rnd_mode)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }

      v12 = __bid128_to_binary64(v18, v19, v20, my_fpsf);
    }

    else
    {
      v12 = 0.0;
      if (v11 == 4)
      {
        v13 = *(a2 + 64);
        v14 = rint(1.79769313e308);
        v15 = rint(2.22507386e-308) < v13 && v14 > v13;
        v12 = v13;
        if (!v15)
        {
          v12 = NAN;
        }
      }
    }

    v21 = asin(v12) * 180.0 / 3.14159265;
    *(v9 + 4) = v21;
    *(v9 + 8) = rint(v21);
    return;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v3 = 11;
LABEL_12:
  v8 = *(a1 + 32);
  *(v8 + 204) = v3;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0x7C00000000000000;
}

void __functionASin_block_invoke(uint64_t a1, int *a2)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
LABEL_11:
      v2 = 11;
    }

    else
    {
LABEL_3:
      v2 = 9;
    }

    v6 = *(a1 + 32);
    *(v6 + 204) = v2;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0x7C00000000000000;
  }

  else
  {
    v3 = -1;
    v4 = 21;
    do
    {
      if (v3 == 14)
      {
        if (g_GeneratingConvertTerm)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      v5 = a2[v4];
      ++v3;
      v4 += 2;
    }

    while (!v5);
    if (v3 < 0xF)
    {
      if ((g_GeneratingConvertTerm & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_15:
    g_isTrivial = 0;
    v7 = *(a1 + 32);
    v8 = *v7;
    if (*v7 != 4)
    {
      if (v8 == 2)
      {
        v14 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v20 = 4;
          }

          else
          {
            v20 = 0;
          }

          v15 = __binary64_to_bid128(v20, my_fpsf, *(a2 + 4));
          v19 = v21;
        }

        else if (v14 == 2)
        {
          v15 = *(a2 + 6);
          v19 = *(a2 + 7);
        }

        else
        {
          if (v14 == 4)
          {
            v15 = *(a2 + 8);
          }

          else
          {
            v15 = 0;
          }

          v19 = 0x3040000000000000;
        }

        if (my_rnd_mode)
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        *(v7 + 6) = __bid128_asin(v15, v19, v22);
        *(v7 + 7) = v23;
        return;
      }

      if (v8 != 1)
      {
        return;
      }
    }

    v9 = *a2;
    if (*a2 == 1)
    {
      v10 = *(a2 + 4);
    }

    else if (v9 == 2)
    {
      v16 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      v10 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v17, my_fpsf);
    }

    else
    {
      v10 = 0.0;
      if (v9 == 4)
      {
        v11 = *(a2 + 8);
        v12 = rint(1.79769313e308);
        v13 = rint(2.22507386e-308) < v11 && v12 > v11;
        v10 = v11;
        if (!v13)
        {
          v10 = NAN;
        }
      }
    }

    v18 = asin(v10);
    *(v7 + 4) = v18;
    *(v7 + 8) = rint(v18);
  }
}

uint64_t DecimalToDegrees()
{
  if (DecimalToDegrees_initialized == 1)
  {
    return DecimalToDegrees_toDegrees_0;
  }

  v9 = v0;
  v10 = v1;
  DecimalToDegrees_initialized = 1;
  v7 = 0;
  if (DecimalPi_initialized == 1)
  {
    v3 = DecimalPi_pi_0;
    v4 = *algn_1EBF22638;
  }

  else
  {
    DecimalPi_initialized = 1;
    v8 = 0;
    v3 = __bid128_from_string("3.14159265358979323846264338327950288", 4, &v8);
    v4 = v5;
    DecimalPi_pi_0 = v3;
    *algn_1EBF22638 = v5;
  }

  result = __bid128_div(0xB4uLL, 0x3040000000000000uLL, v3, v4, 4, &v7);
  DecimalToDegrees_toDegrees_0 = result;
  *algn_1EBF22678 = v6;
  return result;
}

void functionASinD(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionASinD_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void functionACos(uint64_t a1, uint64_t a2)
{
  if (g_assumeDegrees == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __functionACosD_block_invoke;
    v4[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v4[4] = a2;
    v2 = v4;
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __functionACos_block_invoke;
    v3[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v3[4] = a2;
    v2 = v3;
  }

  evaluateUnary(a1, a2, v2);
}

void __functionACosD_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 76))
  {
    if (g_GeneratingConvertTerm)
    {
LABEL_11:
      v3 = 11;
    }

    else
    {
LABEL_3:
      v3 = 9;
    }

    v8 = *(a1 + 32);
    *(v8 + 204) = v3;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0x7C00000000000000;
  }

  else
  {
    v5 = -1;
    v6 = 84;
    do
    {
      if (v5 == 14)
      {
        if (g_GeneratingConvertTerm)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      v7 = *(a2 + v6);
      ++v5;
      v6 += 8;
    }

    while (!v7);
    if (v5 < 0xF)
    {
      if ((g_GeneratingConvertTerm & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_15:
    g_isTrivial = 0;
    v9 = *(a1 + 32);
    v10 = *v9;
    if (*v9 != 4)
    {
      if (v10 == 2)
      {
        v16 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v23 = 4;
          }

          else
          {
            v23 = 0;
          }

          v17 = __binary64_to_bid128(v23, my_fpsf, *(a2 + 32));
          v22 = v24;
        }

        else if (v16 == 2)
        {
          v17 = *(a2 + 48);
          v22 = *(a2 + 56);
        }

        else
        {
          if (v16 == 4)
          {
            v17 = *(a2 + 64);
          }

          else
          {
            v17 = 0;
          }

          v22 = 0x3040000000000000;
        }

        if (__bid128_quiet_equal(1uLL, 0x3040000000000000uLL, v17, v22, my_fpsf))
        {
          *(v9 + 6) = 0;
          *(v9 + 7) = 0x3040000000000000;
        }

        else
        {
          v25 = *a2;
          if (*a2 == 1)
          {
            if (my_rnd_mode)
            {
              v28 = 4;
            }

            else
            {
              v28 = 0;
            }

            v26 = __binary64_to_bid128(v28, my_fpsf, *(a2 + 32));
            v27 = v29;
          }

          else if (v25 == 2)
          {
            v26 = *(a2 + 48);
            v27 = *(a2 + 56);
          }

          else
          {
            if (v25 == 4)
            {
              v26 = *(a2 + 64);
            }

            else
            {
              v26 = 0;
            }

            v27 = 0x3040000000000000;
          }

          if (__bid128_quiet_equal(1uLL, 0xB040000000000000, v26, v27, my_fpsf))
          {
            *(v9 + 6) = 180;
            *(v9 + 7) = 0x3040000000000000;
          }

          else
          {
            v30 = treeDecimalValue(a2);
            if (my_rnd_mode)
            {
              v32 = 4;
            }

            else
            {
              v32 = 0;
            }

            v33 = __bid128_acos(v30, v31, v32);
            v35 = v34;
            v36 = *(a1 + 32);
            v38 = DecimalToDegrees();
            if (my_rnd_mode)
            {
              v39 = 4;
            }

            else
            {
              v39 = 0;
            }

            *(v36 + 48) = __bid128_mul(v33, v35, v38, v37, v39, my_fpsf);
            *(v36 + 56) = v40;
          }
        }

        return;
      }

      if (v10 != 1)
      {
        return;
      }
    }

    v11 = *a2;
    if (*a2 == 1)
    {
      v12 = *(a2 + 32);
    }

    else if (v11 == 2)
    {
      v18 = *(a2 + 48);
      v19 = *(a2 + 56);
      if (my_rnd_mode)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }

      v12 = __bid128_to_binary64(v18, v19, v20, my_fpsf);
    }

    else
    {
      v12 = 0.0;
      if (v11 == 4)
      {
        v13 = *(a2 + 64);
        v14 = rint(1.79769313e308);
        v15 = rint(2.22507386e-308) < v13 && v14 > v13;
        v12 = v13;
        if (!v15)
        {
          v12 = NAN;
        }
      }
    }

    v21 = acos(v12) * 180.0 / 3.14159265;
    *(v9 + 4) = v21;
    *(v9 + 8) = rint(v21);
  }
}

void __functionACos_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 76))
  {
    if (g_GeneratingConvertTerm)
    {
LABEL_11:
      v2 = 11;
    }

    else
    {
LABEL_3:
      v2 = 9;
    }

    v7 = *(a1 + 32);
    *(v7 + 204) = v2;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0x7C00000000000000;
  }

  else
  {
    v4 = -1;
    v5 = 84;
    do
    {
      if (v4 == 14)
      {
        if (g_GeneratingConvertTerm)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      v6 = *(a2 + v5);
      ++v4;
      v5 += 8;
    }

    while (!v6);
    if (v4 < 0xF)
    {
      if ((g_GeneratingConvertTerm & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_15:
    g_isTrivial = 0;
    v8 = *(a1 + 32);
    v9 = *v8;
    if (*v8 != 4)
    {
      if (v9 == 2)
      {
        v15 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v22 = 4;
          }

          else
          {
            v22 = 0;
          }

          v16 = __binary64_to_bid128(v22, my_fpsf, *(a2 + 32));
          v21 = v23;
        }

        else if (v15 == 2)
        {
          v16 = *(a2 + 48);
          v21 = *(a2 + 56);
        }

        else
        {
          if (v15 == 4)
          {
            v16 = *(a2 + 64);
          }

          else
          {
            v16 = 0;
          }

          v21 = 0x3040000000000000;
        }

        if (__bid128_quiet_equal(1uLL, 0x3040000000000000uLL, v16, v21, my_fpsf))
        {
          *(v8 + 6) = 0;
          *(v8 + 7) = 0x3040000000000000;
        }

        else
        {
          v24 = *a2;
          if (*a2 == 1)
          {
            if (my_rnd_mode)
            {
              v27 = 4;
            }

            else
            {
              v27 = 0;
            }

            v25 = __binary64_to_bid128(v27, my_fpsf, *(a2 + 32));
            v26 = v28;
          }

          else if (v24 == 2)
          {
            v25 = *(a2 + 48);
            v26 = *(a2 + 56);
          }

          else
          {
            if (v24 == 4)
            {
              v25 = *(a2 + 64);
            }

            else
            {
              v25 = 0;
            }

            v26 = 0x3040000000000000;
          }

          if (__bid128_quiet_equal(1uLL, 0xB040000000000000, v25, v26, my_fpsf))
          {
            v29 = DecimalPi();
          }

          else
          {
            v31 = treeDecimalValue(a2);
            if (my_rnd_mode)
            {
              v33 = 4;
            }

            else
            {
              v33 = 0;
            }

            v29 = __bid128_acos(v31, v32, v33);
          }

          *(v8 + 6) = v29;
          *(v8 + 7) = v30;
        }

        return;
      }

      if (v9 != 1)
      {
        return;
      }
    }

    v10 = *a2;
    if (*a2 == 1)
    {
      v11 = *(a2 + 32);
    }

    else if (v10 == 2)
    {
      v17 = *(a2 + 48);
      v18 = *(a2 + 56);
      if (my_rnd_mode)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      v11 = __bid128_to_binary64(v17, v18, v19, my_fpsf);
    }

    else
    {
      v11 = 0.0;
      if (v10 == 4)
      {
        v12 = *(a2 + 64);
        v13 = rint(1.79769313e308);
        v14 = rint(2.22507386e-308) < v12 && v13 > v12;
        v11 = v12;
        if (!v14)
        {
          v11 = NAN;
        }
      }
    }

    v20 = acos(v11);
    *(v8 + 4) = v20;
    *(v8 + 8) = rint(v20);
  }
}

uint64_t DecimalPi()
{
  if (DecimalPi_initialized == 1)
  {
    return DecimalPi_pi_0;
  }

  v5 = v0;
  v6 = v1;
  DecimalPi_initialized = 1;
  v4 = 0;
  result = __bid128_from_string("3.14159265358979323846264338327950288", 4, &v4);
  DecimalPi_pi_0 = result;
  *algn_1EBF22638 = v3;
  return result;
}

void functionACosD(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionACosD_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void functionATan(uint64_t a1, uint64_t a2)
{
  if (g_assumeDegrees == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __functionATanD_block_invoke;
    v4[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v4[4] = a2;
    v2 = v4;
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __functionATan_block_invoke;
    v3[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v3[4] = a2;
    v2 = v3;
  }

  evaluateUnary(a1, a2, v2);
}

void __functionATanD_block_invoke(uint64_t a1, int *a2)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
LABEL_11:
      v3 = 11;
    }

    else
    {
LABEL_3:
      v3 = 9;
    }

    v7 = *(a1 + 32);
    *(v7 + 204) = v3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0x7C00000000000000;
  }

  else
  {
    v4 = -1;
    v5 = 21;
    do
    {
      if (v4 == 14)
      {
        if (g_GeneratingConvertTerm)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      v6 = a2[v5];
      ++v4;
      v5 += 2;
    }

    while (!v6);
    if (v4 < 0xF)
    {
      if ((g_GeneratingConvertTerm & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_15:
    g_isTrivial = 0;
    v8 = *(a1 + 32);
    v9 = *v8;
    if (*v8 != 4)
    {
      if (v9 == 2)
      {
        v15 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v21 = 4;
          }

          else
          {
            v21 = 0;
          }

          v16 = __binary64_to_bid128(v21, my_fpsf, *(a2 + 4));
          v20 = v22;
        }

        else if (v15 == 2)
        {
          v16 = *(a2 + 6);
          v20 = *(a2 + 7);
        }

        else
        {
          if (v15 == 4)
          {
            v16 = *(a2 + 8);
          }

          else
          {
            v16 = 0;
          }

          v20 = 0x3040000000000000;
        }

        if (my_rnd_mode)
        {
          v23 = 4;
        }

        else
        {
          v23 = 0;
        }

        v24 = __bid128_atan(v16, v20, v23);
        v26 = v25;
        v27 = *(a1 + 32);
        if (DecimalToDegrees_initialized == 1)
        {
          v28 = DecimalToDegrees_toDegrees_0;
          v29 = *algn_1EBF22678;
        }

        else
        {
          DecimalToDegrees_initialized = 1;
          v36 = 0;
          if (DecimalPi_initialized == 1)
          {
            v30 = DecimalPi_pi_0;
            v31 = *algn_1EBF22638;
          }

          else
          {
            DecimalPi_initialized = 1;
            v37 = 0;
            v30 = __bid128_from_string("3.14159265358979323846264338327950288", 4, &v37);
            v31 = v32;
            DecimalPi_pi_0 = v30;
            *algn_1EBF22638 = v32;
          }

          v28 = __bid128_div(0xB4uLL, 0x3040000000000000uLL, v30, v31, 4, &v36);
          v29 = v33;
          DecimalToDegrees_toDegrees_0 = v28;
          *algn_1EBF22678 = v33;
        }

        if (my_rnd_mode)
        {
          v34 = 4;
        }

        else
        {
          v34 = 0;
        }

        *(v27 + 48) = __bid128_mul(v24, v26, v28, v29, v34, my_fpsf);
        *(v27 + 56) = v35;
        return;
      }

      if (v9 != 1)
      {
        return;
      }
    }

    v10 = *a2;
    if (*a2 == 1)
    {
      v11 = *(a2 + 4);
    }

    else if (v10 == 2)
    {
      v17 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      v11 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v18, my_fpsf);
    }

    else
    {
      v11 = 0.0;
      if (v10 == 4)
      {
        v12 = *(a2 + 8);
        v13 = rint(1.79769313e308);
        v14 = rint(2.22507386e-308) < v12 && v13 > v12;
        v11 = v12;
        if (!v14)
        {
          v11 = NAN;
        }
      }
    }

    v19 = atan(v11) * 180.0 / 3.14159265;
    v8[4] = v19;
    *(v8 + 8) = rint(v19);
  }
}

void __functionATan_block_invoke(uint64_t a1, int *a2)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
LABEL_11:
      v2 = 11;
    }

    else
    {
LABEL_3:
      v2 = 9;
    }

    v6 = *(a1 + 32);
    *(v6 + 204) = v2;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0x7C00000000000000;
  }

  else
  {
    v3 = -1;
    v4 = 21;
    do
    {
      if (v3 == 14)
      {
        if (g_GeneratingConvertTerm)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      v5 = a2[v4];
      ++v3;
      v4 += 2;
    }

    while (!v5);
    if (v3 < 0xF)
    {
      if ((g_GeneratingConvertTerm & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_15:
    g_isTrivial = 0;
    v7 = *(a1 + 32);
    v8 = *v7;
    if (*v7 != 4)
    {
      if (v8 == 2)
      {
        v14 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v20 = 4;
          }

          else
          {
            v20 = 0;
          }

          v15 = __binary64_to_bid128(v20, my_fpsf, *(a2 + 4));
          v19 = v21;
        }

        else if (v14 == 2)
        {
          v15 = *(a2 + 6);
          v19 = *(a2 + 7);
        }

        else
        {
          if (v14 == 4)
          {
            v15 = *(a2 + 8);
          }

          else
          {
            v15 = 0;
          }

          v19 = 0x3040000000000000;
        }

        if (my_rnd_mode)
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        *(v7 + 6) = __bid128_atan(v15, v19, v22);
        *(v7 + 7) = v23;
        return;
      }

      if (v8 != 1)
      {
        return;
      }
    }

    v9 = *a2;
    if (*a2 == 1)
    {
      v10 = *(a2 + 4);
    }

    else if (v9 == 2)
    {
      v16 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      v10 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v17, my_fpsf);
    }

    else
    {
      v10 = 0.0;
      if (v9 == 4)
      {
        v11 = *(a2 + 8);
        v12 = rint(1.79769313e308);
        v13 = rint(2.22507386e-308) < v11 && v12 > v11;
        v10 = v11;
        if (!v13)
        {
          v10 = NAN;
        }
      }
    }

    v18 = atan(v10);
    *(v7 + 4) = v18;
    *(v7 + 8) = rint(v18);
  }
}

void functionATanD(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionATanD_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void functionSinH(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionSinH_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void __functionSinH_block_invoke(uint64_t a1, int *a2)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v2 = 9;
    goto LABEL_12;
  }

  v3 = -1;
  v4 = 21;
  do
  {
    if (v3 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    v5 = a2[v4];
    ++v3;
    v4 += 2;
  }

  while (!v5);
  if (v3 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_15:
    g_isTrivial = 0;
    v7 = *(a1 + 32);
    v8 = *v7;
    if (*v7 == 4)
    {
LABEL_18:
      v9 = *a2;
      if (*a2 == 1)
      {
        v10 = *(a2 + 4);
      }

      else if (v9 == 2)
      {
        v17 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v18 = 4;
        }

        else
        {
          v18 = 0;
        }

        v10 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v18, my_fpsf);
      }

      else
      {
        v10 = 0.0;
        if (v9 == 4)
        {
          v11 = *(a2 + 8);
          v12 = rint(1.79769313e308);
          v13 = rint(2.22507386e-308) < v11 && v12 > v11;
          v10 = v11;
          if (!v13)
          {
            v10 = NAN;
          }
        }
      }

      v19 = sinh(v10);
      v7[4] = v19;
      *(v7 + 8) = rint(v19);
      return;
    }

    if (v8 != 2)
    {
      if (v8 != 1)
      {
        return;
      }

      goto LABEL_18;
    }

    v14 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }

      v15 = __binary64_to_bid128(v20, my_fpsf, *(a2 + 4));
      v16 = v21;
    }

    else if (v14 == 2)
    {
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
    }

    else
    {
      if (v14 != 4)
      {
        v15 = 0;
        if (my_rnd_mode)
        {
          v23 = 4;
        }

        else
        {
          v23 = 0;
        }

        v16 = 0x3040000000000000;
        goto LABEL_58;
      }

      v15 = *(a2 + 8);
      v16 = 0x3040000000000000;
    }

    if ((~v16 & 0x7C00000000000000) == 0)
    {
      if ((~v16 & 0x7E00000000000000) == 0)
      {
        my_fpsf[0] |= 1u;
      }

      if ((v16 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || (v22 = v16 & 0xFC003FFFFFFFFFFFLL, v15 >= 0x38C15B0A00000000) && (v16 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
      {
        v15 = 0;
        v22 = v16 & 0xFC00000000000000;
      }

      goto LABEL_67;
    }

    if (my_rnd_mode)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    if ((~v16 & 0x7800000000000000) == 0)
    {
      v15 = 0;
      v22 = v16 & 0xF800000000000000;
LABEL_67:
      *(v7 + 6) = v15;
      *(v7 + 7) = v22;
      return;
    }

LABEL_58:
    v60 = 0uLL;
    v59[0] = 0;
    v59[1] = 0;
    v58 = 0uLL;
    v61 = __bid128_to_binary128(v15, v16, v23, my_fpsf);
    v62 = v24;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    __dpml_bid_unpack_x_or_y__(&v61, 0, &v63, &qword_1C1F5E6D0, v59, v66);
    if (bid_f128_cmp(v59, &c_1em40_1299, 3u))
    {
      v25 = bid128_ext_fma(v66, &v63, &v57, &v67, v15, v16, 1uLL, 0x2FF0000000000000, v15, v16, v23, my_fpsf);
    }

    else
    {
      if (bid_f128_cmp(v59, &c_one_1300, 3u))
      {
        if (v62 >= 0)
        {
          v26 = 100;
        }

        else
        {
          v26 = 101;
        }

        __dpml_bid_C_ux_hyperbolic__(&v60, &v61, &qword_1C1F5EE50, 0x2C06uLL, v26, v66);
        v28 = v60.n128_u64[1];
        v27 = v60.n128_u64[0];
      }

      else
      {
        if (bid_f128_cmp(v59, &c_64_1301, 3u))
        {
          if (bid_f128_cmp(&c_zero_1302, &v61, 3u))
          {
            v29 = __bid128_exp(v15, v16, v23, my_fpsf);
            v31 = v30;
            v32 = __bid128_div(1uLL, 0x3040000000000000uLL, v29, v30, v23, my_fpsf);
            v34 = __bid128_mul(5uLL, 0xB03E000000000000, v32, v33, v23, my_fpsf);
            v25 = bid128_ext_fma(v66, &v63, &v57, &v67, v29, v31, 5uLL, 0x303E000000000000, v34, v35, v23, my_fpsf);
          }

          else
          {
            v49 = __bid128_exp(v15, v16 & 0x7FFFFFFFFFFFFFFFLL, v23, my_fpsf);
            v51 = v50;
            v52 = __bid128_div(1uLL, 0x3040000000000000uLL, v49, v50, v23, my_fpsf);
            v54 = __bid128_mul(5uLL, 0x303E000000000000, v52, v53, v23, my_fpsf);
            v25 = bid128_ext_fma(v66, &v63, &v57, &v67, v49, v51, 5uLL, 0xB03E000000000000, v54, v55, v23, my_fpsf);
          }

          goto LABEL_66;
        }

        v66[0] = 0uLL;
        v36 = __bid128_add(v15, v16 & 0x7FFFFFFFFFFFFFFFLL, 0xBE00000000000000, 0x3040363BF3B1CEEELL, v23, my_fpsf);
        v38 = __bid128_add(v36, v37, 0xBE00000000000000, 0xB040363BF3B1CEEELL, v23, my_fpsf);
        v40 = v39;
        v41 = __bid128_sub(v15, v16 & 0x7FFFFFFFFFFFFFFFLL, v38, v39, v23, my_fpsf);
        v43 = v42;
        v57.n128_u64[0] = __bid128_to_binary128(v38, v40, v23, my_fpsf);
        v57.n128_u64[1] = v44;
        v63 = __bid128_to_binary128(v41, v43, v23, my_fpsf);
        v64 = v45;
        if (bid_f128_cmp(&v57, &c_11000_1303, 4u))
        {
          bid_f128_sub(&v57, &v57, &c_11000_1303);
          bid_f128_exp(v66, &v57);
          bid_f128_exp(&v58, &v63);
          bid_f128_mul(v66, v66, &v58);
          if (bid_f128_cmp(&v61, &c_zero_1302, 1u))
          {
            v46 = &c_minus_half;
          }

          else
          {
            v46 = &c_half_1304;
          }

          bid_f128_mul(v66, v46, v66);
          v47 = __binary128_to_bid128(v66[0].n128_u64[0], v66[0].n128_u64[1], v23, my_fpsf);
          v25 = __bid128_mul(v47, v48, 0xD43EDE775707FD0ALL, 0x5550558ADA285F8BLL, v23, my_fpsf);
          goto LABEL_66;
        }

        bid_f128_exp(v66, &v57);
        bid_f128_exp(&v58, &v63);
        bid_f128_mul(v66, v66, &v58);
        if (bid_f128_cmp(&v61, &c_zero_1302, 1u))
        {
          v56 = &c_minus_half;
        }

        else
        {
          v56 = &c_half_1304;
        }

        bid_f128_mul(v66, v56, v66);
        v28 = v66[0].n128_u64[1];
        v27 = v66[0].n128_u64[0];
      }

      v25 = __binary128_to_bid128(v27, v28, v23, my_fpsf);
    }

LABEL_66:
    v15 = v25;
    goto LABEL_67;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v2 = 11;
LABEL_12:
  v6 = *(a1 + 32);
  *(v6 + 204) = v2;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0x7C00000000000000;
}

void functionCosH(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionCosH_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void __functionCosH_block_invoke(uint64_t a1, int *a2)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v2 = 9;
    goto LABEL_12;
  }

  v3 = -1;
  v4 = 21;
  do
  {
    if (v3 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    v5 = a2[v4];
    ++v3;
    v4 += 2;
  }

  while (!v5);
  if (v3 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_15:
    g_isTrivial = 0;
    v7 = *(a1 + 32);
    v8 = *v7;
    if (*v7 == 4)
    {
LABEL_18:
      v9 = *a2;
      if (*a2 == 1)
      {
        v10 = *(a2 + 4);
      }

      else if (v9 == 2)
      {
        v17 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v18 = 4;
        }

        else
        {
          v18 = 0;
        }

        v10 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v18, my_fpsf);
      }

      else
      {
        v10 = 0.0;
        if (v9 == 4)
        {
          v11 = *(a2 + 8);
          v12 = rint(1.79769313e308);
          v13 = rint(2.22507386e-308) < v11 && v12 > v11;
          v10 = v11;
          if (!v13)
          {
            v10 = NAN;
          }
        }
      }

      v19 = cosh(v10);
      v7[4] = v19;
      *(v7 + 8) = rint(v19);
      return;
    }

    if (v8 != 2)
    {
      if (v8 != 1)
      {
        return;
      }

      goto LABEL_18;
    }

    v14 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }

      v15 = __binary64_to_bid128(v20, my_fpsf, *(a2 + 4));
      v16 = v21;
    }

    else if (v14 == 2)
    {
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
    }

    else
    {
      if (v14 != 4)
      {
        v15 = 0;
        if (my_rnd_mode)
        {
          v23 = 4;
        }

        else
        {
          v23 = 0;
        }

        v16 = 0x3040000000000000;
        goto LABEL_58;
      }

      v15 = *(a2 + 8);
      v16 = 0x3040000000000000;
    }

    if ((~v16 & 0x7C00000000000000) == 0)
    {
      if ((~v16 & 0x7E00000000000000) == 0)
      {
        my_fpsf[0] |= 1u;
      }

      if ((v16 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || (v22 = v16 & 0xFC003FFFFFFFFFFFLL, v15 >= 0x38C15B0A00000000) && (v16 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
      {
        v15 = 0;
        v22 = v16 & 0xFC00000000000000;
      }

      goto LABEL_71;
    }

    if (my_rnd_mode)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v22 = 0x7800000000000000;
    if ((~v16 & 0x7800000000000000) == 0)
    {
      v15 = 0;
LABEL_71:
      *(v7 + 6) = v15;
      *(v7 + 7) = v22;
      return;
    }

LABEL_58:
    v52 = 0uLL;
    v51[0] = 0;
    v51[1] = 0;
    v50 = 0uLL;
    v53[0] = __bid128_to_binary128(v15, v16, v23, my_fpsf);
    v53[1] = v24;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    __dpml_bid_unpack_x_or_y__(v53, 0, &v54, &qword_1C1F5E6D0, v51, v57);
    if (bid_f128_cmp(v51, &c_1em40_1229, 3u))
    {
      v25 = __bid128_add(1uLL, 0x3040000000000000, 1uLL, 0x2FF0000000000000, v23, my_fpsf);
    }

    else
    {
      if (bid_f128_cmp(v51, &c_one_1230, 3u))
      {
        __dpml_bid_C_ux_hyperbolic__(&v52, v53, &qword_1C1F5EE58, 0x4440uLL, 19, v57);
        v27 = v52.n128_u64[1];
        v26 = v52.n128_u64[0];
      }

      else
      {
        if (bid_f128_cmp(v51, &c_64, 3u))
        {
          if (bid_f128_cmp(&c_zero_1231, v53, 3u))
          {
            v28 = v15;
            v29 = v16;
          }

          else
          {
            v29 = v16 & 0x7FFFFFFFFFFFFFFFLL;
            v28 = v15;
          }

          v42 = __bid128_exp(v28, v29, v23, my_fpsf);
          v44 = v43;
          v45 = __bid128_div(1uLL, 0x3040000000000000uLL, v42, v43, v23, my_fpsf);
          v47 = __bid128_mul(5uLL, 0x303E000000000000, v45, v46, v23, my_fpsf);
          v25 = bid128_ext_fma(v57, &v54, &v49, &v58, v42, v44, 5uLL, 0x303E000000000000, v47, v48, v23, my_fpsf);
          goto LABEL_70;
        }

        v57[0] = 0uLL;
        v30 = __bid128_add(v15, v16 & 0x7FFFFFFFFFFFFFFFLL, 0xBE00000000000000, 0x3040363BF3B1CEEELL, v23, my_fpsf);
        v32 = __bid128_add(v30, v31, 0xBE00000000000000, 0xB040363BF3B1CEEELL, v23, my_fpsf);
        v34 = v33;
        v35 = __bid128_sub(v15, v16 & 0x7FFFFFFFFFFFFFFFLL, v32, v33, v23, my_fpsf);
        v37 = v36;
        v49.n128_u64[0] = __bid128_to_binary128(v32, v34, v23, my_fpsf);
        v49.n128_u64[1] = v38;
        v54 = __bid128_to_binary128(v35, v37, v23, my_fpsf);
        v55 = v39;
        if (bid_f128_cmp(&v49, &c_11000, 4u))
        {
          bid_f128_sub(&v49, &v49, &c_11000);
          bid_f128_exp(&v50, &v49);
          bid_f128_mul(v57, &c_half_1232, &v50);
          bid_f128_exp(&v50, &v54);
          bid_f128_mul(v57, v57, &v50);
          v40 = __binary128_to_bid128(v57[0].n128_u64[0], v57[0].n128_u64[1], v23, my_fpsf);
          v25 = __bid128_mul(v40, v41, 0xD43EDE775707FD0ALL, 0x5550558ADA285F8BLL, v23, my_fpsf);
          goto LABEL_70;
        }

        bid_f128_exp(&v50, &v49);
        bid_f128_mul(v57, &c_half_1232, &v50);
        bid_f128_exp(&v50, &v54);
        bid_f128_mul(v57, v57, &v50);
        v27 = v57[0].n128_u64[1];
        v26 = v57[0].n128_u64[0];
      }

      v25 = __binary128_to_bid128(v26, v27, v23, my_fpsf);
    }

LABEL_70:
    v15 = v25;
    goto LABEL_71;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v2 = 11;
LABEL_12:
  v6 = *(a1 + 32);
  *(v6 + 204) = v2;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0x7C00000000000000;
}

void functionTanH(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionTanH_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void __functionTanH_block_invoke(uint64_t a1, int *a2)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v2 = 9;
    goto LABEL_12;
  }

  v3 = -1;
  v4 = 21;
  do
  {
    if (v3 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    v5 = a2[v4];
    ++v3;
    v4 += 2;
  }

  while (!v5);
  if (v3 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_15:
    g_isTrivial = 0;
    v7 = *(a1 + 32);
    v8 = *v7;
    if (*v7 == 4)
    {
LABEL_18:
      v9 = *a2;
      if (*a2 == 1)
      {
        v10 = *(a2 + 4);
      }

      else if (v9 == 2)
      {
        v17 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v18 = 4;
        }

        else
        {
          v18 = 0;
        }

        v10 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v18, my_fpsf);
      }

      else
      {
        v10 = 0.0;
        if (v9 == 4)
        {
          v11 = *(a2 + 8);
          v12 = rint(1.79769313e308);
          v13 = rint(2.22507386e-308) < v11 && v12 > v11;
          v10 = v11;
          if (!v13)
          {
            v10 = NAN;
          }
        }
      }

      v19 = tanh(v10);
      v7[4] = v19;
      *(v7 + 8) = rint(v19);
      return;
    }

    if (v8 != 2)
    {
      if (v8 != 1)
      {
        return;
      }

      goto LABEL_18;
    }

    v14 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }

      v15 = __binary64_to_bid128(v20, my_fpsf, *(a2 + 4));
      v16 = v21;
    }

    else if (v14 == 2)
    {
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
    }

    else
    {
      if (v14 != 4)
      {
        v15 = 0;
        if (my_rnd_mode)
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        v16 = 0x3040000000000000;
        goto LABEL_56;
      }

      v15 = *(a2 + 8);
      v16 = 0x3040000000000000;
    }

    if (my_rnd_mode)
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
    }

    if ((~v16 & 0x7C00000000000000) == 0)
    {
      if ((~v16 & 0x7E00000000000000) == 0)
      {
        my_fpsf[0] |= 1u;
      }

      if ((v16 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || (v23 = v16 & 0xFC003FFFFFFFFFFFLL, v15 >= 0x38C15B0A00000000) && (v16 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
      {
        v15 = 0;
        v23 = v16 & 0xFC00000000000000;
      }

      goto LABEL_62;
    }

LABEL_56:
    v27 = 0uLL;
    v26[0] = 0;
    v26[1] = 0;
    v28[0] = __bid128_to_binary128(v15, v16, v22, my_fpsf);
    v28[1] = v24;
    memset(v29, 0, sizeof(v29));
    __dpml_bid_unpack_x_or_y__(v28, 0, v29, &qword_1C1F5E6D0, v26, v32);
    if (bid_f128_cmp(v26, &c_1em40_1320, 1u))
    {
      if (__bid128_isZero(v15, v16))
      {
        v25 = __bid128_mul(v15, v16, 1uLL, 0x3040000000000000, v22, my_fpsf);
      }

      else
      {
        v25 = bid128_ext_fma(v32, v29, &v31, &v30, v15, v16, 1uLL, 0xAFF0000000000000, v15, v16, v22, my_fpsf);
      }
    }

    else
    {
      __dpml_bid_C_ux_hyperbolic__(&v27, v28, qword_1C1F5EE60, 0x11846uLL, 0, v32);
      v25 = __binary128_to_bid128(v27.n128_u64[0], v27.n128_u64[1], v22, my_fpsf);
    }

    v15 = v25;
LABEL_62:
    *(v7 + 6) = v15;
    *(v7 + 7) = v23;
    return;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v2 = 11;
LABEL_12:
  v6 = *(a1 + 32);
  *(v6 + 204) = v2;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0x7C00000000000000;
}

void functionASinH(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionASinH_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void __functionASinH_block_invoke(uint64_t a1, int *a2)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
LABEL_11:
      v2 = 11;
    }

    else
    {
LABEL_3:
      v2 = 9;
    }

    v7 = *(a1 + 32);
    *(v7 + 204) = v2;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0x7C00000000000000;
  }

  else
  {
    v4 = -1;
    v5 = 21;
    do
    {
      if (v4 == 14)
      {
        if (g_GeneratingConvertTerm)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      v6 = a2[v5];
      ++v4;
      v5 += 2;
    }

    while (!v6);
    if (v4 < 0xF)
    {
      if ((g_GeneratingConvertTerm & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_15:
    g_isTrivial = 0;
    v8 = *(a1 + 32);
    v9 = *v8;
    if (*v8 != 4)
    {
      if (v9 == 2)
      {
        v15 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v22 = 4;
          }

          else
          {
            v22 = 0;
          }

          v16 = __binary64_to_bid128(v22, my_fpsf, *(a2 + 4));
          v21 = v23;
        }

        else if (v15 == 2)
        {
          v16 = *(a2 + 6);
          v21 = *(a2 + 7);
        }

        else
        {
          if (v15 == 4)
          {
            v16 = *(a2 + 8);
          }

          else
          {
            v16 = 0;
          }

          v21 = 0x3040000000000000;
        }

        if (__bid128_quiet_equal(0, 0x3040000000000000uLL, v16, v21, my_fpsf))
        {
          *(v8 + 6) = 0;
          *(v8 + 7) = 0x3040000000000000;
        }

        else
        {
          v24 = *a2;
          if (*a2 == 1)
          {
            if (my_rnd_mode)
            {
              v27 = 4;
            }

            else
            {
              v27 = 0;
            }

            v25 = __binary64_to_bid128(v27, my_fpsf, *(a2 + 4));
          }

          else if (v24 == 2)
          {
            v25 = *(a2 + 6);
            v26 = *(a2 + 7);
          }

          else
          {
            if (v24 == 4)
            {
              v25 = *(a2 + 8);
            }

            else
            {
              v25 = 0;
            }

            v26 = 0x3040000000000000;
          }

          if (my_rnd_mode)
          {
            v28 = 4;
          }

          else
          {
            v28 = 0;
          }

          *(v8 + 6) = __bid128_asinh(v25, v26, v28);
          *(v8 + 7) = v29;
        }

        return;
      }

      if (v9 != 1)
      {
        return;
      }
    }

    v10 = *a2;
    if (*a2 == 1)
    {
      v11 = *(a2 + 4);
    }

    else if (v10 == 2)
    {
      v17 = *(a2 + 6);
      v18 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      v11 = __bid128_to_binary64(v17, v18, v19, my_fpsf);
    }

    else
    {
      v11 = 0.0;
      if (v10 == 4)
      {
        v12 = *(a2 + 8);
        v13 = rint(1.79769313e308);
        v14 = rint(2.22507386e-308) < v12 && v13 > v12;
        v11 = v12;
        if (!v14)
        {
          v11 = NAN;
        }
      }
    }

    v20 = asinh(v11);
    *(v8 + 4) = v20;
    *(v8 + 8) = rint(v20);
  }
}

void functionACosH(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionACosH_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void __functionACosH_block_invoke(uint64_t a1, int *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v2 = 9;
    goto LABEL_12;
  }

  v3 = -1;
  v4 = 21;
  do
  {
    if (v3 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    v5 = a2[v4];
    ++v3;
    v4 += 2;
  }

  while (!v5);
  if (v3 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_15:
    g_isTrivial = 0;
    v8 = *(a1 + 32);
    v9 = *v8;
    if (*v8 == 4)
    {
LABEL_18:
      v10 = *a2;
      if (*a2 == 1)
      {
        v11 = *(a2 + 4);
      }

      else if (v10 == 2)
      {
        v18 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v19 = 4;
        }

        else
        {
          v19 = 0;
        }

        v11 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v19, my_fpsf);
      }

      else
      {
        v11 = 0.0;
        if (v10 == 4)
        {
          v12 = *(a2 + 8);
          v13 = rint(1.79769313e308);
          v14 = rint(2.22507386e-308) < v12 && v13 > v12;
          v11 = v12;
          if (!v14)
          {
            v11 = NAN;
          }
        }
      }

      v20 = acosh(v11);
      v8[4] = v20;
      *(v8 + 8) = rint(v20);
      goto LABEL_13;
    }

    if (v9 != 2)
    {
      if (v9 != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    v15 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v21 = 4;
      }

      else
      {
        v21 = 0;
      }

      v16 = __binary64_to_bid128(v21, my_fpsf, *(a2 + 4));
      v17 = v22;
    }

    else if (v15 == 2)
    {
      v16 = *(a2 + 6);
      v17 = *(a2 + 7);
    }

    else
    {
      if (v15 != 4)
      {
        v16 = 0;
        v33 = 0;
        v34 = 0;
        if (my_rnd_mode)
        {
          v23 = 4;
        }

        else
        {
          v23 = 0;
        }

        v17 = 0x3040000000000000;
        goto LABEL_80;
      }

      v16 = *(a2 + 8);
      v17 = 0x3040000000000000;
    }

    if (my_rnd_mode)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    if (((v17 >> 61) & 3) == 3)
    {
      if ((v17 & 0x7800000000000000) == 0x7800000000000000)
      {
        v24 = v17 & 0x3FFFFFFFFFFFLL;
        v26 = (v17 & 0x3FFFFFFFFFFFLL) != 0x314DC6448D93 || v16 < 0x38C15B0A00000000;
        v27 = !v26;
        v28 = 0xFE003FFFFFFFFFFFLL;
        if (v27)
        {
          v28 = 0xFE00000000000000;
        }

        if (v27)
        {
          v29 = 0;
        }

        else
        {
          v29 = v16;
        }

        v30 = v24 > 0x314DC6448D93;
        if (v24 <= 0x314DC6448D93)
        {
          v31 = v28;
        }

        else
        {
          v31 = 0xFE00000000000000;
        }

        if (v30)
        {
          v32 = 0;
        }

        else
        {
          v32 = v29;
        }

        if ((v17 & 0x7C00000000000000) == 0x7800000000000000)
        {
          v31 = 0xF800000000000000;
          v33 = 0;
        }

        else
        {
          v33 = v32;
        }

        if ((v17 & 0x7C00000000000000) == 0x7C00000000000000)
        {
          v34 = v31 & v17;
LABEL_82:
          if ((~v17 & 0x7E00000000000000) == 0)
          {
            my_fpsf[0] |= 1u;
          }

          v36 = v34 & 0xFDFFFFFFFFFFFFFFLL;
          goto LABEL_103;
        }

        if ((v17 & 0x8000000000000000) == 0)
        {
          v33 = 0;
          v36 = 0x7800000000000000;
          goto LABEL_103;
        }

LABEL_87:
        v33 = 0;
        my_fpsf[0] |= 1u;
        v36 = 0x7C00000000000000;
LABEL_103:
        *(v8 + 6) = v33;
        *(v8 + 7) = v36;
        goto LABEL_13;
      }

      v34 = 0;
      v33 = 0;
      v35 = (v17 >> 47) & 0x3FFF;
LABEL_81:
      if ((~v17 & 0x7C00000000000000) == 0)
      {
        goto LABEL_82;
      }

LABEL_85:
      v52 = 0uLL;
      v50 = 0uLL;
      v49 = 0uLL;
      if (__bid128_quiet_less(v16, v17, 0x192D5uLL, 0x3036000000000000, my_fpsf))
      {
        if (__bid128_quiet_greater(1uLL, 0x3040000000000000, v16, v17, my_fpsf))
        {
          goto LABEL_87;
        }

        v41 = bid128_ext_fma(v56, v55, &v54, &v53, v16, v17, v16, v17, 1uLL, 0xB040000000000000, v23, my_fpsf);
        v43 = __bid128_sqrt(v41, v42, v23);
        v51.n128_u64[0] = __bid128_to_binary128(v43, v44, v23, my_fpsf);
        v51.n128_u64[1] = v45;
        bid_f128_asinh(&v52, &v51);
        v39 = v52.n128_u64[1];
        v38 = v52.n128_u64[0];
        v40 = v23;
      }

      else if (v35 < 0x1843)
      {
        v51.n128_u64[0] = __bid128_to_binary128(v16, v17, v23, my_fpsf);
        v51.n128_u64[1] = v46;
        if ((__dpml_bid_unpack_x_or_y__(&v51, 0, v58, qword_1C1F5F398, &v52, v55) & 0x8000000000000000) == 0)
        {
          v47 = v58[1];
          v48 = v59;
          __dpml_bid_addsub__(v58, dword_1C1F5F3D0, 2uLL, v56);
          if (v57[0].i32[0])
          {
            v56[0].i32[1] = 0x8000;
          }

          else if (v47 == 1 && v48 <= 0x87C3B666FB66CB63)
          {
            __dpml_bid_divide__(v57, v56, 2, v56);
            __dpml_bid_ux_sqrt_evaluation__(v56, v57);
            __dpml_bid_evaluate_rational__(v57, &unk_1C1F5FD58, 17, 6uLL, v56);
            __dpml_bid_multiply__(v56, qword_1C1F5FEB0, v56);
          }

          else
          {
            __dpml_bid_multiply__(v57, v56, v56);
            __dpml_bid_ffs_and_shift__(v56, 0);
            __dpml_bid_ux_sqrt_evaluation__(v56, v56);
            __dpml_bid_addsub__(v56, v58, 0, v56);
            __dpml_bid_ux_log__(v56, qword_1C1F5F3E8, v56);
          }

          __dpml_bid_pack__(v56, &v52, 0, 2);
        }

        v39 = v52.n128_u64[1];
        v38 = v52.n128_u64[0];
        v40 = v23;
      }

      else
      {
        v51.n128_u64[0] = __bid128_to_binary128(v33, v34 | 0x3040000000000000, v23, my_fpsf);
        v51.n128_u64[1] = v37;
        bid_f128_add(&v51, &v51, &v51);
        bid_f128_itof(&v50, v35 - 6176);
        bid_f128_log(&v52, &v51);
        bid_f128_mul(&v49, &v50, &c_log10);
        bid_f128_add(&v52, &v52, &v49);
        v39 = v52.n128_u64[1];
        v38 = v52.n128_u64[0];
        v40 = v23;
      }

      v33 = __binary128_to_bid128(v38, v39, v40, my_fpsf);
      goto LABEL_103;
    }

    v34 = v17 & 0x1FFFFFFFFFFFFLL;
    if ((v17 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0 || (v17 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && v16 >= 0x378D8E6400000000)
    {
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v33 = v16;
    }

LABEL_80:
    v35 = (v17 >> 49) & 0x3FFF;
    if (v34 | v33)
    {
      goto LABEL_85;
    }

    goto LABEL_81;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v2 = 11;
LABEL_12:
  v6 = *(a1 + 32);
  *(v6 + 204) = v2;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0x7C00000000000000;
LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
}

void functionATanH(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionATanH_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void __functionATanH_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 76))
  {
    if (g_GeneratingConvertTerm)
    {
LABEL_11:
      v3 = 11;
    }

    else
    {
LABEL_3:
      v3 = 9;
    }

    v8 = *(a1 + 32);
    *(v8 + 204) = v3;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0x7C00000000000000;
  }

  else
  {
    v5 = -1;
    v6 = 84;
    do
    {
      if (v5 == 14)
      {
        if (g_GeneratingConvertTerm)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      v7 = *(a2 + v6);
      ++v5;
      v6 += 8;
    }

    while (!v7);
    if (v5 < 0xF)
    {
      if ((g_GeneratingConvertTerm & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_15:
    g_isTrivial = 0;
    v9 = *(a1 + 32);
    v10 = *v9;
    if (*v9 != 4)
    {
      if (v10 == 2)
      {
        v16 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v23 = 4;
          }

          else
          {
            v23 = 0;
          }

          v17 = __binary64_to_bid128(v23, my_fpsf, *(a2 + 32));
          v22 = v24;
        }

        else if (v16 == 2)
        {
          v17 = *(a2 + 48);
          v22 = *(a2 + 56);
        }

        else
        {
          if (v16 == 4)
          {
            v17 = *(a2 + 64);
          }

          else
          {
            v17 = 0;
          }

          v22 = 0x3040000000000000;
        }

        if (__bid128_quiet_equal(0, 0x3040000000000000uLL, v17, v22, my_fpsf))
        {
          *(v9 + 6) = 0;
          *(v9 + 7) = 0x3040000000000000;
        }

        else
        {
          v25 = *a2;
          if (*a2 == 1)
          {
            if (my_rnd_mode)
            {
              v28 = 4;
            }

            else
            {
              v28 = 0;
            }

            v26 = __binary64_to_bid128(v28, my_fpsf, *(a2 + 32));
            v27 = v29;
          }

          else if (v25 == 2)
          {
            v26 = *(a2 + 48);
            v27 = *(a2 + 56);
          }

          else
          {
            if (v25 == 4)
            {
              v26 = *(a2 + 64);
            }

            else
            {
              v26 = 0;
            }

            v27 = 0x3040000000000000;
          }

          if (__bid128_quiet_equal(1uLL, 0x3040000000000000uLL, v26, v27, my_fpsf))
          {
            *(v9 + 6) = 0;
            *(v9 + 7) = 0x7C00000000000000;
          }

          else
          {
            v30 = treeDecimalValue(a2);
            v32 = __bid128_quiet_equal(1uLL, 0xB040000000000000, v30, v31, my_fpsf);
            v33 = *(a1 + 32);
            if (v32)
            {
              *(v33 + 48) = 0;
              *(v33 + 56) = 0x7C00000000000000;
            }

            else
            {
              v34 = treeDecimalValue(a2);
              if (my_rnd_mode)
              {
                v36 = 4;
              }

              else
              {
                v36 = 0;
              }

              *(v33 + 48) = __bid128_atanh(v34, v35, v36);
              *(v33 + 56) = v37;
            }
          }
        }

        return;
      }

      if (v10 != 1)
      {
        return;
      }
    }

    v11 = *a2;
    if (*a2 == 1)
    {
      v12 = *(a2 + 32);
    }

    else if (v11 == 2)
    {
      v18 = *(a2 + 48);
      v19 = *(a2 + 56);
      if (my_rnd_mode)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }

      v12 = __bid128_to_binary64(v18, v19, v20, my_fpsf);
    }

    else
    {
      v12 = 0.0;
      if (v11 == 4)
      {
        v13 = *(a2 + 64);
        v14 = rint(1.79769313e308);
        v15 = rint(2.22507386e-308) < v13 && v14 > v13;
        v12 = v13;
        if (!v15)
        {
          v12 = NAN;
        }
      }
    }

    v21 = atanh(v12);
    *(v9 + 4) = v21;
    *(v9 + 8) = rint(v21);
  }
}

void functionCsc(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
  if (my_rnd_mode)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = __bid128_from_string("1", v5, my_fpsf);
  v8 = newDecimalNode(v6, v7);
  v9 = newTreeObject(functionDivide, v8, v4);
  functionSine(a1, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __functionDivide_block_invoke;
  v10[3] = &__block_descriptor_48_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v10[4] = a2;
  v10[5] = v9;
  evaluateBinary(v9, a2, v10);
  freeTree(v9);
}

void functionSec(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
  if (my_rnd_mode)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = __bid128_from_string("1", v5, my_fpsf);
  v8 = newDecimalNode(v6, v7);
  v9 = newTreeObject(functionDivide, v8, v4);
  functionCos(a1, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __functionDivide_block_invoke;
  v10[3] = &__block_descriptor_48_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v10[4] = a2;
  v10[5] = v9;
  evaluateBinary(v9, a2, v10);
  freeTree(v9);
}

void functionCot(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
  if (my_rnd_mode)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = __bid128_from_string("1", v5, my_fpsf);
  v8 = newDecimalNode(v6, v7);
  v9 = newTreeObject(functionDivide, v8, v4);
  functionTan(a1, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __functionDivide_block_invoke;
  v10[3] = &__block_descriptor_48_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v10[4] = a2;
  v10[5] = v9;
  evaluateBinary(v9, a2, v10);
  freeTree(v9);
}

void functionCscH(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
  if (my_rnd_mode)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = __bid128_from_string("1", v5, my_fpsf);
  v8 = newDecimalNode(v6, v7);
  v9 = newTreeObject(functionDivide, v8, v4);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __functionSinH_block_invoke;
  v13 = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v14 = v4;
  evaluateUnary(a1, v4, &v10);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __functionDivide_block_invoke;
  v13 = &__block_descriptor_48_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v14 = a2;
  v15 = v9;
  evaluateBinary(v9, a2, &v10);
  freeTree(v9);
}

void functionSecH(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
  if (my_rnd_mode)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = __bid128_from_string("1", v5, my_fpsf);
  v8 = newDecimalNode(v6, v7);
  v9 = newTreeObject(functionDivide, v8, v4);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __functionCosH_block_invoke;
  v13 = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v14 = v4;
  evaluateUnary(a1, v4, &v10);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __functionDivide_block_invoke;
  v13 = &__block_descriptor_48_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v14 = a2;
  v15 = v9;
  evaluateBinary(v9, a2, &v10);
  freeTree(v9);
}

void functionCotH(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
  if (my_rnd_mode)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = __bid128_from_string("1", v5, my_fpsf);
  v8 = newDecimalNode(v6, v7);
  v9 = newTreeObject(functionDivide, v8, v4);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __functionTanH_block_invoke;
  v13 = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v14 = v4;
  evaluateUnary(a1, v4, &v10);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __functionDivide_block_invoke;
  v13 = &__block_descriptor_48_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v14 = a2;
  v15 = v9;
  evaluateBinary(v9, a2, &v10);
  freeTree(v9);
}

void functionCeil(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionCeil_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionCeil_block_invoke(uint64_t a1, int *a2, __n128 result)
{
  if (g_GeneratingConvertTerm == 1)
  {
    v4 = *(a1 + 32);
    *(v4 + 204) = 11;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0x7C00000000000000;
    return result;
  }

  g_isTrivial = 0;
  v6 = *(a1 + 32);
  v7 = *v6;
  if (*v6 == 4)
  {
    goto LABEL_6;
  }

  if (v7 == 2)
  {
    v13 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }

      v14 = __binary64_to_bid128(v20, my_fpsf, *(a2 + 4));
    }

    else if (v13 == 2)
    {
      v14 = *(a2 + 6);
      v15 = *(a2 + 7);
    }

    else
    {
      if (v13 != 4)
      {
        v21 = 0;
        v14 = 0;
        v22 = 0;
        v23 = 0;
        v15 = 0x3040000000000000;
        v24 = 0x3040000000000000;
        goto LABEL_51;
      }

      v14 = *(a2 + 8);
      v15 = 0x3040000000000000;
    }

    if ((~v15 & 0x7800000000000000) == 0)
    {
      if ((~v15 & 0x7C00000000000000) != 0)
      {
        v14 = 0;
        if (v15 < 0)
        {
          v15 = 0xF800000000000000;
        }

        else
        {
          v15 = 0x7800000000000000;
        }
      }

      else
      {
        if ((v15 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || v14 >= 0x38C15B0A00000000 && (v15 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
        {
          v14 = 0;
          v15 &= 0xFFFFC00000000000;
        }

        if ((~v15 & 0x7E00000000000000) == 0)
        {
          my_fpsf[0] |= 1u;
        }

        v15 &= 0xFC003FFFFFFFFFFFLL;
      }

      goto LABEL_109;
    }

    v21 = v15 & 0x8000000000000000;
    if ((~v15 & 0x6000000000000000) != 0)
    {
      v22 = v15 & 0x1FFFFFFFFFFFFLL;
      if ((v15 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0 || v14 >= 0x378D8E6400000000 && v22 == 0x1ED09BEAD87C0)
      {
        v22 = 0;
        v23 = 0;
      }

      else
      {
        v23 = v14;
      }

      v24 = v15;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 4 * v15;
    }

LABEL_51:
    v25 = v24 & 0x7FFE000000000000;
    if (!(v23 | v22))
    {
      v14 = 0;
      v27 = 0x3040000000000000;
      if (v25 > 0x3040000000000000)
      {
        v27 = v25;
      }

      v15 = v27 | v21;
      goto LABEL_109;
    }

    if (v25 <= 0x2FFC000000000000)
    {
      goto LABEL_53;
    }

    v28 = HIDWORD(v23);
    if (v23 >> 53)
    {
      v29 = HIDWORD(v23);
    }

    else
    {
      v29 = v23;
    }

    if (v23 >> 53)
    {
      v30 = -990;
    }

    else
    {
      v30 = -1022;
    }

    if (v22)
    {
      v29 = v22;
    }

    v31 = COERCE_UNSIGNED_INT64(v29) >> 52;
    if (v22)
    {
      v30 = -958;
    }

    v32 = &__bid_nr_digits + 32 * (v31 + v30 - 1);
    v33 = *v32;
    if (!*v32)
    {
      v33 = *(v32 + 6);
      v34 = *(v32 + 1);
      if (v22 > v34 || v22 == v34 && v23 >= *(v32 + 2))
      {
        ++v33;
      }
    }

    if (v25 > 0x303E000000000000)
    {
      goto LABEL_109;
    }

    v35 = v25 >> 49;
    if (((v25 >> 49) - 6176 + v33) < 1)
    {
LABEL_53:
      v14 = v21 == 0;
      v26 = 0x3040000000000000;
LABEL_108:
      v15 = v21 | v26;
LABEL_109:
      *(v6 + 6) = v14;
      *(v6 + 7) = v15;
      v6 = *(a1 + 32);
      goto LABEL_110;
    }

    v36 = v23;
    v37 = 6175 - v35;
    v38 = __bid_ten2mk128[2 * (6175 - v35)];
    v39 = __bid_ten2mk128[2 * (6175 - v35) + 1];
    v40 = v39 * HIDWORD(v23);
    v41 = HIDWORD(v40) + HIDWORD(v39) * HIDWORD(v23);
    v42 = HIDWORD(v39) * v23 + v40 + ((v39 * v23) >> 32);
    v43 = (v39 * v23) | (v42 << 32);
    v44 = __bid_ten2mk128[2 * v37];
    v45 = v44 * HIDWORD(v23);
    v46 = v38 * v23;
    v47 = HIDWORD(v38) * v36 + v45 + HIDWORD(v46);
    v48 = v46 | (v47 << 32);
    v50 = v43 + HIDWORD(v45) + HIDWORD(v38) * v28 + HIDWORD(v47);
    v49 = (__PAIR128__(v41, v43) + __PAIR128__(HIDWORD(v42), HIDWORD(v45) + HIDWORD(v38) * v28 + HIDWORD(v47))) >> 64;
    v51 = HIDWORD(v22);
    v52 = v22;
    v53 = v39 * HIDWORD(v22);
    v54 = HIDWORD(v53) + HIDWORD(v39) * HIDWORD(v22);
    v55 = HIDWORD(v39) * v22 + v53 + ((v39 * v22) >> 32);
    v56 = HIDWORD(v55);
    v57 = (v39 * v22) | (v55 << 32);
    v58 = v44 * HIDWORD(v22);
    v59 = v38 * v22;
    v60 = HIDWORD(v58) + HIDWORD(v38) * v51;
    v61 = HIDWORD(v38) * v52 + v58 + HIDWORD(v59);
    v62 = v59 | (v61 << 32);
    v64 = v57 + v60 + HIDWORD(v61);
    v63 = (__PAIR128__(v54, v57) + __PAIR128__(v56, v60 + HIDWORD(v61))) >> 64;
    v65 = __PAIR128__(v64, v50) + v62;
    v66 = __CFADD__(__CFADD__(v50, v62), v64);
    v14 = v49 + *(&v65 + 1);
    v67 = __CFADD__(v49, *(&v65 + 1)) || v66;
    v26 = v63 + v67;
    if (v25 >= 0x3038000000000001)
    {
      if (!v21 && (v65 > v39 || v65 == v39 && v48 >= v38) && __CFADD__(v14++, 1))
      {
        ++v26;
      }

      goto LABEL_107;
    }

    v69 = __bid_shiftright128[v37];
    if (v25 >= 0x3012000000000001)
    {
      v70 = v26 >> v69;
      v71 = (v26 << -v69) | (v14 >> v69);
      if (v21)
      {
LABEL_90:
        v26 = v70;
        v14 = v71;
LABEL_107:
        v21 |= 0x3040000000000000uLL;
        goto LABEL_108;
      }

      if ((__bid_maskhigh128[v37] & v14) == 0 && v65 <= v39)
      {
        if (v65 != v39)
        {
          goto LABEL_90;
        }

        v26 = v70;
        v14 = v71;
        if (v48 < v38)
        {
          goto LABEL_107;
        }
      }

      v14 = v71 + 1;
      if (v71 == -1)
      {
        v26 = v70 + 1;
      }

      else
      {
        v26 = v70;
      }

      goto LABEL_107;
    }

    v72 = v26 >> v69;
    if (v21)
    {
      v26 = 0;
LABEL_93:
      v14 = v72;
      goto LABEL_107;
    }

    if ((__bid_maskhigh128[v37] & v26) == 0 && !v14 && v65 <= v39)
    {
      v26 = 0;
      if (v65 != v39)
      {
        goto LABEL_93;
      }

      v14 = v72;
      if (v48 < v38)
      {
        goto LABEL_107;
      }
    }

    v26 = 0;
    v14 = v72 + 1;
    goto LABEL_107;
  }

  if (v7 == 1)
  {
LABEL_6:
    v8 = *a2;
    if (*a2 == 1)
    {
      v9 = *(a2 + 4);
    }

    else if (v8 == 2)
    {
      v16 = *(a2 + 6);
      v17 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      v9 = __bid128_to_binary64(v16, v17, v18, my_fpsf);
    }

    else
    {
      v9 = 0.0;
      if (v8 == 4)
      {
        v10 = *(a2 + 8);
        v11 = rint(1.79769313e308);
        v12 = rint(2.22507386e-308) < v10 && v11 > v10;
        v9 = v10;
        if (!v12)
        {
          v9 = NAN;
        }
      }
    }

    v19 = ceil(v9);
    *(v6 + 4) = v19;
    *(v6 + 8) = rint(v19);
  }

LABEL_110:
  v73 = *(a2 + 18);
  v74 = *(a2 + 22);
  v75 = *(a2 + 26);
  *(v6 + 30) = *(a2 + 30);
  *(v6 + 26) = v75;
  *(v6 + 22) = v74;
  *(v6 + 18) = v73;
  result = *(a2 + 34);
  v76 = *(a2 + 38);
  v77 = *(a2 + 42);
  *(v6 + 46) = *(a2 + 46);
  *(v6 + 42) = v77;
  *(v6 + 38) = v76;
  *(v6 + 34) = result;
  return result;
}

void functionFloor(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionFloor_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionFloor_block_invoke(uint64_t a1, int *a2, __n128 result)
{
  if (g_GeneratingConvertTerm == 1)
  {
    v4 = *(a1 + 32);
    *(v4 + 204) = 11;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0x7C00000000000000;
    return result;
  }

  g_isTrivial = 0;
  v6 = *(a1 + 32);
  v7 = *v6;
  if (*v6 == 4)
  {
    goto LABEL_6;
  }

  if (v7 == 2)
  {
    v13 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }

      v14 = __binary64_to_bid128(v20, my_fpsf, *(a2 + 4));
    }

    else if (v13 == 2)
    {
      v14 = *(a2 + 6);
      v19 = *(a2 + 7);
    }

    else
    {
      if (v13 == 4)
      {
        v14 = *(a2 + 8);
      }

      else
      {
        v14 = 0;
      }

      v19 = 0x3040000000000000;
    }

    *(v6 + 6) = __bid128_round_integral_negative(v14, v19, my_fpsf);
    *(v6 + 7) = v21;
    v6 = *(a1 + 32);
  }

  else if (v7 == 1)
  {
LABEL_6:
    v8 = *a2;
    if (*a2 == 1)
    {
      v9 = *(a2 + 4);
    }

    else if (v8 == 2)
    {
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      v9 = __bid128_to_binary64(v15, v16, v17, my_fpsf);
    }

    else
    {
      v9 = 0.0;
      if (v8 == 4)
      {
        v10 = *(a2 + 8);
        v11 = rint(1.79769313e308);
        v12 = rint(2.22507386e-308) < v10 && v11 > v10;
        v9 = v10;
        if (!v12)
        {
          v9 = NAN;
        }
      }
    }

    v18 = floor(v9);
    *(v6 + 4) = v18;
    *(v6 + 8) = rint(v18);
  }

  v22 = *(a2 + 18);
  v23 = *(a2 + 22);
  v24 = *(a2 + 26);
  *(v6 + 30) = *(a2 + 30);
  *(v6 + 26) = v24;
  *(v6 + 22) = v23;
  *(v6 + 18) = v22;
  result = *(a2 + 34);
  v25 = *(a2 + 38);
  v26 = *(a2 + 42);
  *(v6 + 46) = *(a2 + 46);
  *(v6 + 42) = v26;
  *(v6 + 38) = v25;
  *(v6 + 34) = result;
  return result;
}

void functionRound(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionRound_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionRound_block_invoke(uint64_t a1, int *a2, __n128 result)
{
  if (g_GeneratingConvertTerm == 1)
  {
    v4 = *(a1 + 32);
    *(v4 + 204) = 11;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0x7C00000000000000;
    return result;
  }

  g_isTrivial = 0;
  v6 = *(a1 + 32);
  v7 = *v6;
  if (*v6 == 4)
  {
    goto LABEL_6;
  }

  if (v7 == 2)
  {
    v13 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }

      v14 = __binary64_to_bid128(v20, my_fpsf, *(a2 + 4));
    }

    else if (v13 == 2)
    {
      v14 = *(a2 + 6);
      v19 = *(a2 + 7);
    }

    else
    {
      if (v13 == 4)
      {
        v14 = *(a2 + 8);
      }

      else
      {
        v14 = 0;
      }

      v19 = 0x3040000000000000;
    }

    if (my_rnd_mode)
    {
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }

    *(v6 + 6) = __bid128_round_integral_exact(v14, v19, v21, my_fpsf);
    *(v6 + 7) = v22;
    v6 = *(a1 + 32);
  }

  else if (v7 == 1)
  {
LABEL_6:
    v8 = *a2;
    if (*a2 == 1)
    {
      v9 = *(a2 + 4);
    }

    else if (v8 == 2)
    {
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      v9 = __bid128_to_binary64(v15, v16, v17, my_fpsf);
    }

    else
    {
      v9 = 0.0;
      if (v8 == 4)
      {
        v10 = *(a2 + 8);
        v11 = rint(1.79769313e308);
        v12 = rint(2.22507386e-308) < v10 && v11 > v10;
        v9 = v10;
        if (!v12)
        {
          v9 = NAN;
        }
      }
    }

    v18 = round(v9);
    *(v6 + 4) = v18;
    *(v6 + 8) = rint(v18);
  }

  v23 = *(a2 + 18);
  v24 = *(a2 + 22);
  v25 = *(a2 + 26);
  *(v6 + 30) = *(a2 + 30);
  *(v6 + 26) = v25;
  *(v6 + 22) = v24;
  *(v6 + 18) = v23;
  result = *(a2 + 34);
  v26 = *(a2 + 38);
  v27 = *(a2 + 42);
  *(v6 + 46) = *(a2 + 46);
  *(v6 + 42) = v27;
  *(v6 + 38) = v26;
  *(v6 + 34) = result;
  return result;
}

void functionRoundNearest(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionRoundNearest_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

void __functionRoundNearest_block_invoke(uint64_t a1, int *a2, int *a3)
{
  if (a3[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v4 = 9;
    goto LABEL_12;
  }

  v7 = -1;
  v8 = 21;
  do
  {
    if (v7 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

LABEL_14:
      g_isTrivial = 0;
      v11 = *(a1 + 32);
      v12 = *v11;
      if (*v11 != 4)
      {
        if (v12 == 2)
        {
          v18 = *a2;
          if (*a2 == 1)
          {
            if (my_rnd_mode)
            {
              v35 = 4;
            }

            else
            {
              v35 = 0;
            }

            v19 = __binary64_to_bid128(v35, my_fpsf, *(a2 + 4));
            v34 = v36;
          }

          else if (v18 == 2)
          {
            v19 = *(a2 + 6);
            v34 = *(a2 + 7);
          }

          else
          {
            if (v18 == 4)
            {
              v19 = *(a2 + 8);
            }

            else
            {
              v19 = 0;
            }

            v34 = 0x3040000000000000;
          }

          v38 = *a3;
          if (*a3 == 1)
          {
            if (my_rnd_mode)
            {
              v41 = 4;
            }

            else
            {
              v41 = 0;
            }

            v39 = __binary64_to_bid128(v41, my_fpsf, *(a3 + 4));
            v40 = v42;
          }

          else if (v38 == 2)
          {
            v39 = *(a3 + 6);
            v40 = *(a3 + 7);
          }

          else
          {
            if (v38 == 4)
            {
              v39 = *(a3 + 8);
            }

            else
            {
              v39 = 0;
            }

            v40 = 0x3040000000000000;
          }

          if (my_rnd_mode)
          {
            v43 = 4;
          }

          else
          {
            v43 = 0;
          }

          v44 = __bid128_div(v19, v34, v39, v40, v43, my_fpsf);
          v46 = __bid128_round_integral_exact(v44, v45, v43, my_fpsf);
          v48 = v47;
          v49 = *a3;
          if (*a3 == 1)
          {
            v50 = __binary64_to_bid128(v43, my_fpsf, *(a3 + 4));
            v51 = v52;
          }

          else if (v49 == 2)
          {
            v50 = *(a3 + 6);
            v51 = *(a3 + 7);
          }

          else
          {
            if (v49 == 4)
            {
              v50 = *(a3 + 8);
            }

            else
            {
              v50 = 0;
            }

            v51 = 0x3040000000000000;
          }

          *(v11 + 6) = __bid128_mul(v46, v48, v50, v51, v43, my_fpsf);
          *(v11 + 7) = v53;
          v11 = *(a1 + 32);
          goto LABEL_96;
        }

        if (v12 != 1)
        {
LABEL_96:
          v55 = *(a2 + 18);
          v56 = *(a2 + 22);
          v57 = *(a2 + 26);
          *(v11 + 30) = *(a2 + 30);
          *(v11 + 26) = v57;
          *(v11 + 22) = v56;
          *(v11 + 18) = v55;
          v58 = *(a2 + 34);
          v59 = *(a2 + 38);
          v60 = *(a2 + 42);
          *(v11 + 46) = *(a2 + 46);
          *(v11 + 42) = v60;
          *(v11 + 38) = v59;
          *(v11 + 34) = v58;
          return;
        }
      }

      v13 = *a2;
      if (*a2 == 1)
      {
        v14 = *(a2 + 4);
      }

      else if (v13 == 2)
      {
        v20 = *(a2 + 6);
        v21 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        v14 = __bid128_to_binary64(v20, v21, v22, my_fpsf);
      }

      else
      {
        v14 = 0.0;
        if (v13 == 4)
        {
          v15 = *(a2 + 8);
          v16 = rint(1.79769313e308);
          if (rint(2.22507386e-308) < v15 && v16 > v15)
          {
            v14 = v15;
          }

          else
          {
            v14 = NAN;
          }
        }
      }

      v23 = *a3;
      if (*a3 == 1)
      {
        v27 = *(a3 + 4);
        v30 = round(v14 / v27);
      }

      else
      {
        if (v23 == 2)
        {
          if (my_rnd_mode)
          {
            v31 = 4;
          }

          else
          {
            v31 = 0;
          }

          v32 = __bid128_to_binary64(*(a3 + 6), *(a3 + 7), v31, my_fpsf);
          v23 = *a3;
        }

        else
        {
          if (v23 == 4)
          {
            v24 = *(a3 + 8);
            v25 = rint(1.79769313e308);
            v26 = rint(2.22507386e-308);
            v27 = v24;
            v28 = v26 < v24 && v25 > v24;
            v29 = NAN;
            if (v28)
            {
              v29 = v24;
            }

            v30 = round(v14 / v29);
            goto LABEL_54;
          }

          v32 = 0.0;
        }

        v30 = round(v14 / v32);
        if (v23 == 1)
        {
          v27 = *(a3 + 4);
        }

        else
        {
          if (v23 == 2)
          {
            if (my_rnd_mode)
            {
              v37 = 4;
            }

            else
            {
              v37 = 0;
            }

            v27 = __bid128_to_binary64(*(a3 + 6), *(a3 + 7), v37, my_fpsf);
            goto LABEL_95;
          }

          v27 = 0.0;
          if (v23 == 4)
          {
            v24 = *(a3 + 8);
            v25 = rint(1.79769313e308);
            v26 = rint(2.22507386e-308);
            v27 = v24;
LABEL_54:
            if (v26 >= v24 || v25 <= v24)
            {
              v27 = NAN;
            }
          }
        }
      }

LABEL_95:
      v54 = v30 * v27;
      *(v11 + 4) = v54;
      *(v11 + 8) = rint(v54);
      goto LABEL_96;
    }

    v9 = a3[v8];
    ++v7;
    v8 += 2;
  }

  while (!v9);
  if (v7 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v4 = 11;
LABEL_12:
  v10 = *(a1 + 32);
  *(v10 + 204) = v4;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0x7C00000000000000;
}

void functionFabs(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionFabs_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionFabs_block_invoke(uint64_t a1, int *a2, __n128 result)
{
  if (g_GeneratingConvertTerm == 1)
  {
    v4 = *(a1 + 32);
    *(v4 + 204) = 11;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0x7C00000000000000;
    return result;
  }

  g_isTrivial = 0;
  v6 = *(a1 + 32);
  v7 = *v6;
  if (*v6 == 4)
  {
    goto LABEL_6;
  }

  if (v7 == 2)
  {
    v13 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }

      v14 = __binary64_to_bid128(v20, my_fpsf, *(a2 + 4));
    }

    else if (v13 == 2)
    {
      v14 = *(a2 + 6);
      v19 = *(a2 + 7);
    }

    else
    {
      if (v13 == 4)
      {
        v14 = *(a2 + 8);
      }

      else
      {
        v14 = 0;
      }

      v19 = 0x3040000000000000;
    }

    *(v6 + 6) = v14;
    *(v6 + 7) = v19 & 0x7FFFFFFFFFFFFFFFLL;
    v6 = *(a1 + 32);
  }

  else if (v7 == 1)
  {
LABEL_6:
    v8 = *a2;
    if (*a2 == 1)
    {
      v9 = *(a2 + 4);
    }

    else if (v8 == 2)
    {
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      v9 = __bid128_to_binary64(v15, v16, v17, my_fpsf);
    }

    else
    {
      v9 = 0.0;
      if (v8 == 4)
      {
        v10 = *(a2 + 8);
        v11 = rint(1.79769313e308);
        v12 = rint(2.22507386e-308) < v10 && v11 > v10;
        v9 = v10;
        if (!v12)
        {
          v9 = NAN;
        }
      }
    }

    v18 = fabs(v9);
    *(v6 + 4) = v18;
    *(v6 + 8) = rint(v18);
  }

  v21 = *(a2 + 18);
  v22 = *(a2 + 22);
  v23 = *(a2 + 26);
  *(v6 + 30) = *(a2 + 30);
  *(v6 + 26) = v23;
  *(v6 + 22) = v22;
  *(v6 + 18) = v21;
  result = *(a2 + 34);
  v24 = *(a2 + 38);
  v25 = *(a2 + 42);
  *(v6 + 46) = *(a2 + 46);
  *(v6 + 42) = v25;
  *(v6 + 38) = v24;
  *(v6 + 34) = result;
  return result;
}

void functionJ0(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionJ0_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

unint64_t __functionJ0_block_invoke(unint64_t result, int *a2)
{
  v2 = result;
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v3 = 9;
    goto LABEL_12;
  }

  v4 = -1;
  v5 = 21;
  do
  {
    if (v4 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

LABEL_14:
      g_isTrivial = 0;
      v8 = *a2;
      if (*a2 == 1)
      {
        v9 = *(a2 + 4);
      }

      else if (v8 == 2)
      {
        v13 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v14 = 4;
        }

        else
        {
          v14 = 0;
        }

        v9 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v14, my_fpsf);
      }

      else
      {
        v9 = 0.0;
        if (v8 == 4)
        {
          v10 = *(a2 + 8);
          v11 = rint(1.79769313e308);
          v12 = rint(2.22507386e-308) < v10 && v11 > v10;
          v9 = v10;
          if (!v12)
          {
            v9 = NAN;
          }
        }
      }

      v15 = j0(v9);
      v16 = *(v2 + 32);
      *(v16 + 32) = v15;
      *(v16 + 64) = rint(v15);
      if (my_rnd_mode)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      result = __binary64_to_bid128(v17, my_fpsf, v15);
      *(v16 + 48) = result;
      *(v16 + 56) = v18;
      return result;
    }

    v6 = a2[v5];
    ++v4;
    v5 += 2;
  }

  while (!v6);
  if (v4 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v3 = 11;
LABEL_12:
  v7 = *(result + 32);
  *(v7 + 204) = v3;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0x7C00000000000000;
  return result;
}

void functionJ1(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionJ1_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

unint64_t __functionJ1_block_invoke(unint64_t result, int *a2)
{
  v2 = result;
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v3 = 9;
    goto LABEL_12;
  }

  v4 = -1;
  v5 = 21;
  do
  {
    if (v4 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

LABEL_14:
      g_isTrivial = 0;
      v8 = *a2;
      if (*a2 == 1)
      {
        v9 = *(a2 + 4);
      }

      else if (v8 == 2)
      {
        v13 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v14 = 4;
        }

        else
        {
          v14 = 0;
        }

        v9 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v14, my_fpsf);
      }

      else
      {
        v9 = 0.0;
        if (v8 == 4)
        {
          v10 = *(a2 + 8);
          v11 = rint(1.79769313e308);
          v12 = rint(2.22507386e-308) < v10 && v11 > v10;
          v9 = v10;
          if (!v12)
          {
            v9 = NAN;
          }
        }
      }

      v15 = j1(v9);
      v16 = *(v2 + 32);
      *(v16 + 32) = v15;
      *(v16 + 64) = rint(v15);
      if (my_rnd_mode)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      result = __binary64_to_bid128(v17, my_fpsf, v15);
      *(v16 + 48) = result;
      *(v16 + 56) = v18;
      return result;
    }

    v6 = a2[v5];
    ++v4;
    v5 += 2;
  }

  while (!v6);
  if (v4 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v3 = 11;
LABEL_12:
  v7 = *(result + 32);
  *(v7 + 204) = v3;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0x7C00000000000000;
  return result;
}

void functionY0(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionY0_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

unint64_t __functionY0_block_invoke(unint64_t result, int *a2)
{
  v2 = result;
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v3 = 9;
    goto LABEL_12;
  }

  v4 = -1;
  v5 = 21;
  do
  {
    if (v4 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

LABEL_14:
      g_isTrivial = 0;
      v8 = *a2;
      if (*a2 == 1)
      {
        v9 = *(a2 + 4);
      }

      else if (v8 == 2)
      {
        v13 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v14 = 4;
        }

        else
        {
          v14 = 0;
        }

        v9 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v14, my_fpsf);
      }

      else
      {
        v9 = 0.0;
        if (v8 == 4)
        {
          v10 = *(a2 + 8);
          v11 = rint(1.79769313e308);
          v12 = rint(2.22507386e-308) < v10 && v11 > v10;
          v9 = v10;
          if (!v12)
          {
            v9 = NAN;
          }
        }
      }

      v15 = y0(v9);
      v16 = *(v2 + 32);
      *(v16 + 32) = v15;
      *(v16 + 64) = rint(v15);
      if (my_rnd_mode)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      result = __binary64_to_bid128(v17, my_fpsf, v15);
      *(v16 + 48) = result;
      *(v16 + 56) = v18;
      return result;
    }

    v6 = a2[v5];
    ++v4;
    v5 += 2;
  }

  while (!v6);
  if (v4 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v3 = 11;
LABEL_12:
  v7 = *(result + 32);
  *(v7 + 204) = v3;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0x7C00000000000000;
  return result;
}

void functionY1(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionY1_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

unint64_t __functionY1_block_invoke(unint64_t result, int *a2)
{
  v2 = result;
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v3 = 9;
    goto LABEL_12;
  }

  v4 = -1;
  v5 = 21;
  do
  {
    if (v4 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

LABEL_14:
      g_isTrivial = 0;
      v8 = *a2;
      if (*a2 == 1)
      {
        v9 = *(a2 + 4);
      }

      else if (v8 == 2)
      {
        v13 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v14 = 4;
        }

        else
        {
          v14 = 0;
        }

        v9 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v14, my_fpsf);
      }

      else
      {
        v9 = 0.0;
        if (v8 == 4)
        {
          v10 = *(a2 + 8);
          v11 = rint(1.79769313e308);
          v12 = rint(2.22507386e-308) < v10 && v11 > v10;
          v9 = v10;
          if (!v12)
          {
            v9 = NAN;
          }
        }
      }

      v15 = y1(v9);
      v16 = *(v2 + 32);
      *(v16 + 32) = v15;
      *(v16 + 64) = rint(v15);
      if (my_rnd_mode)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      result = __binary64_to_bid128(v17, my_fpsf, v15);
      *(v16 + 48) = result;
      *(v16 + 56) = v18;
      return result;
    }

    v6 = a2[v5];
    ++v4;
    v5 += 2;
  }

  while (!v6);
  if (v4 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v3 = 11;
LABEL_12:
  v7 = *(result + 32);
  *(v7 + 204) = v3;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0x7C00000000000000;
  return result;
}

void functionRInt(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionRInt_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionRInt_block_invoke(uint64_t a1, int *a2, __n128 result)
{
  if (g_GeneratingConvertTerm == 1)
  {
    v4 = *(a1 + 32);
    *(v4 + 204) = 11;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    v6 = *(a1 + 32);
    if (*v6 == 4 || *v6 == 1)
    {
      v8 = *a2;
      if (*a2 == 1)
      {
        v9 = *(a2 + 4);
      }

      else if (v8 == 2)
      {
        v15 = *(a2 + 6);
        v16 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v17 = 4;
        }

        else
        {
          v17 = 0;
        }

        v9 = __bid128_to_binary64(v15, v16, v17, my_fpsf);
      }

      else
      {
        v9 = 0.0;
        if (v8 == 4)
        {
          v10 = *(a2 + 8);
          v11 = rint(1.79769313e308);
          v12 = rint(2.22507386e-308) < v10 && v11 > v10;
          v9 = v10;
          if (!v12)
          {
            v9 = NAN;
          }
        }
      }

      v18 = rint(v9);
      *(v6 + 32) = v18;
      *(v6 + 64) = rint(v18);
    }

    else
    {
      v13 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v20 = 4;
        }

        else
        {
          v20 = 0;
        }

        v14 = __binary64_to_bid128(v20, my_fpsf, *(a2 + 4));
      }

      else if (v13 == 2)
      {
        v14 = *(a2 + 6);
        v19 = *(a2 + 7);
      }

      else
      {
        if (v13 == 4)
        {
          v14 = *(a2 + 8);
        }

        else
        {
          v14 = 0;
        }

        v19 = 0x3040000000000000;
      }

      *(v6 + 48) = __bid128_round_integral_exact(v14, v19, 0, my_fpsf);
      *(v6 + 56) = v21;
      v6 = *(a1 + 32);
    }

    v22 = *(a2 + 18);
    v23 = *(a2 + 22);
    v24 = *(a2 + 26);
    *(v6 + 120) = *(a2 + 30);
    *(v6 + 104) = v24;
    *(v6 + 88) = v23;
    *(v6 + 72) = v22;
    result = *(a2 + 34);
    v25 = *(a2 + 38);
    v26 = *(a2 + 42);
    *(v6 + 184) = *(a2 + 46);
    *(v6 + 168) = v26;
    *(v6 + 152) = v25;
    *(v6 + 136) = result;
  }

  return result;
}

void functionLGamma(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionLGamma_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionLGamma_block_invoke(uint64_t a1, int *a2, __n128 result)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v4 = 9;
    goto LABEL_12;
  }

  v6 = -1;
  v7 = 21;
  do
  {
    if (v6 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

LABEL_14:
      g_isTrivial = 0;
      v10 = *(a1 + 32);
      if (*v10 == 4 || *v10 == 1)
      {
        v12 = *a2;
        if (*a2 == 1)
        {
          v13 = *(a2 + 4);
        }

        else if (v12 == 2)
        {
          v19 = *(a2 + 6);
          v20 = *(a2 + 7);
          if (my_rnd_mode)
          {
            v21 = 4;
          }

          else
          {
            v21 = 0;
          }

          v13 = __bid128_to_binary64(v19, v20, v21, my_fpsf);
        }

        else
        {
          v13 = 0.0;
          if (v12 == 4)
          {
            v14 = *(a2 + 8);
            v15 = rint(1.79769313e308);
            v16 = rint(2.22507386e-308) < v14 && v15 > v14;
            v13 = v14;
            if (!v16)
            {
              v13 = NAN;
            }
          }
        }

        v22 = lgamma(v13);
        v23 = *(a1 + 32);
        *(v23 + 32) = v22;
        *(v23 + 64) = rint(v22);
      }

      else
      {
        v17 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v25 = 4;
          }

          else
          {
            v25 = 0;
          }

          v18 = __binary64_to_bid128(v25, my_fpsf, *(a2 + 4));
        }

        else if (v17 == 2)
        {
          v18 = *(a2 + 6);
          v24 = *(a2 + 7);
        }

        else
        {
          if (v17 == 4)
          {
            v18 = *(a2 + 8);
          }

          else
          {
            v18 = 0;
          }

          v24 = 0x3040000000000000;
        }

        if (my_rnd_mode)
        {
          v26 = 4;
        }

        else
        {
          v26 = 0;
        }

        *(v10 + 48) = __bid128_lgamma(v18, v24, v26);
        *(v10 + 56) = v27;
        v23 = *(a1 + 32);
      }

      v28 = *(a2 + 18);
      v29 = *(a2 + 22);
      v30 = *(a2 + 26);
      *(v23 + 120) = *(a2 + 30);
      *(v23 + 104) = v30;
      *(v23 + 88) = v29;
      *(v23 + 72) = v28;
      result = *(a2 + 34);
      v31 = *(a2 + 38);
      v32 = *(a2 + 42);
      *(v23 + 184) = *(a2 + 46);
      *(v23 + 168) = v32;
      *(v23 + 152) = v31;
      *(v23 + 136) = result;
      return result;
    }

    v8 = a2[v7];
    ++v6;
    v7 += 2;
  }

  while (!v8);
  if (v6 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v4 = 11;
LABEL_12:
  v9 = *(a1 + 32);
  *(v9 + 204) = v4;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0x7C00000000000000;
  return result;
}

void functionERF(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionERF_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionERF_block_invoke(uint64_t a1, int *a2, __n128 result)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v4 = 9;
    goto LABEL_12;
  }

  v6 = -1;
  v7 = 21;
  do
  {
    if (v6 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    v8 = a2[v7];
    ++v6;
    v7 += 2;
  }

  while (!v8);
  if (v6 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_14:
    g_isTrivial = 0;
    v10 = *(a1 + 32);
    if (*v10 == 4 || *v10 == 1)
    {
      v12 = *a2;
      if (*a2 == 1)
      {
        v13 = *(a2 + 4);
      }

      else if (v12 == 2)
      {
        v20 = *(a2 + 6);
        v21 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        v13 = __bid128_to_binary64(v20, v21, v22, my_fpsf);
      }

      else
      {
        v13 = 0.0;
        if (v12 == 4)
        {
          v14 = *(a2 + 8);
          v15 = rint(1.79769313e308);
          v16 = rint(2.22507386e-308) < v14 && v15 > v14;
          v13 = v14;
          if (!v16)
          {
            v13 = NAN;
          }
        }
      }

      v23 = erf(v13);
      *(v10 + 32) = v23;
      *(v10 + 64) = rint(v23);
      goto LABEL_62;
    }

    v17 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v24 = 4;
      }

      else
      {
        v24 = 0;
      }

      v18 = __binary64_to_bid128(v24, my_fpsf, *(a2 + 4));
      v19 = v25;
    }

    else if (v17 == 2)
    {
      v18 = *(a2 + 6);
      v19 = *(a2 + 7);
    }

    else
    {
      if (v17 != 4)
      {
        v18 = 0;
        if (my_rnd_mode)
        {
          v26 = 4;
        }

        else
        {
          v26 = 0;
        }

        v19 = 0x3040000000000000;
        goto LABEL_57;
      }

      v18 = *(a2 + 8);
      v19 = 0x3040000000000000;
    }

    if (my_rnd_mode)
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }

    if ((~v19 & 0x7C00000000000000) == 0)
    {
      if ((~v19 & 0x7E00000000000000) == 0)
      {
        my_fpsf[0] |= 1u;
      }

      if ((v19 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || (v27 = v19 & 0xFC003FFFFFFFFFFFLL, v18 >= 0x38C15B0A00000000) && (v19 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
      {
        v18 = 0;
        v27 = v19 & 0xFC00000000000000;
      }

      goto LABEL_61;
    }

LABEL_57:
    v36 = 0uLL;
    v35[0] = 0;
    v35[1] = 0;
    v37[0] = __bid128_to_binary128(v18, v19, v26, my_fpsf);
    v37[1] = v28;
    memset(v38, 0, sizeof(v38));
    __dpml_bid_unpack_x_or_y__(v37, 0, v38, &qword_1C1F5E6D0, v35, v39);
    if (bid_f128_cmp(v35, &c_1em2000, 1u))
    {
      v29 = __bid128_mul(0xF009A099F5C1B689, 0x2FFE37A225BAA150, v18, v19, v26, my_fpsf);
    }

    else
    {
      __dpml_bid_C_ux_erf__(v37, 0x1A9uLL, &v36, v39);
      v29 = __binary128_to_bid128(v36.n128_u64[0], v36.n128_u64[1], v26, my_fpsf);
    }

    v18 = v29;
LABEL_61:
    *(v10 + 48) = v18;
    *(v10 + 56) = v27;
    v10 = *(a1 + 32);
LABEL_62:
    v30 = *(a2 + 18);
    v31 = *(a2 + 22);
    v32 = *(a2 + 26);
    *(v10 + 120) = *(a2 + 30);
    *(v10 + 104) = v32;
    *(v10 + 88) = v31;
    *(v10 + 72) = v30;
    result = *(a2 + 34);
    v33 = *(a2 + 38);
    v34 = *(a2 + 42);
    *(v10 + 184) = *(a2 + 46);
    *(v10 + 168) = v34;
    *(v10 + 152) = v33;
    *(v10 + 136) = result;
    return result;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v4 = 11;
LABEL_12:
  v9 = *(a1 + 32);
  *(v9 + 204) = v4;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0x7C00000000000000;
  return result;
}

void functionERFC(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionERFC_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionERFC_block_invoke(uint64_t a1, int *a2, __n128 result)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v4 = 9;
    goto LABEL_12;
  }

  v6 = -1;
  v7 = 21;
  do
  {
    if (v6 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    v8 = a2[v7];
    ++v6;
    v7 += 2;
  }

  while (!v8);
  if (v6 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_14:
    g_isTrivial = 0;
    v10 = *(a1 + 32);
    if (*v10 == 4 || *v10 == 1)
    {
      v12 = *a2;
      if (*a2 == 1)
      {
        v13 = *(a2 + 4);
      }

      else if (v12 == 2)
      {
        v20 = *(a2 + 6);
        v21 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        v13 = __bid128_to_binary64(v20, v21, v22, my_fpsf);
      }

      else
      {
        v13 = 0.0;
        if (v12 == 4)
        {
          v14 = *(a2 + 8);
          v15 = rint(1.79769313e308);
          v16 = rint(2.22507386e-308) < v14 && v15 > v14;
          v13 = v14;
          if (!v16)
          {
            v13 = NAN;
          }
        }
      }

      v23 = erfc(v13);
      *(v10 + 32) = v23;
      *(v10 + 64) = rint(v23);
      goto LABEL_72;
    }

    v17 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v24 = 4;
      }

      else
      {
        v24 = 0;
      }

      v18 = __binary64_to_bid128(v24, my_fpsf, *(a2 + 4));
      v19 = v25;
    }

    else if (v17 == 2)
    {
      v18 = *(a2 + 6);
      v19 = *(a2 + 7);
    }

    else
    {
      if (v17 != 4)
      {
        v18 = 0;
        if (my_rnd_mode)
        {
          v26 = 4;
        }

        else
        {
          v26 = 0;
        }

        v19 = 0x3040000000000000;
        goto LABEL_57;
      }

      v18 = *(a2 + 8);
      v19 = 0x3040000000000000;
    }

    if (my_rnd_mode)
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }

    if ((~v19 & 0x7C00000000000000) == 0)
    {
      if ((~v19 & 0x7E00000000000000) == 0)
      {
        my_fpsf[0] |= 1u;
      }

      if ((v19 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || (v27 = v19 & 0xFC003FFFFFFFFFFFLL, (v19 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93) && v18 >= 0x38C15B0A00000000)
      {
        v18 = 0;
        v27 = v19 & 0xFC00000000000000;
      }

      goto LABEL_71;
    }

LABEL_57:
    if (__bid128_isZero(v18, v19))
    {
      v27 = 0x3040000000000000;
      v18 = 1;
LABEL_71:
      *(v10 + 48) = v18;
      *(v10 + 56) = v27;
      v10 = *(a1 + 32);
LABEL_72:
      v50 = *(a2 + 18);
      v51 = *(a2 + 22);
      v52 = *(a2 + 26);
      *(v10 + 120) = *(a2 + 30);
      *(v10 + 104) = v52;
      *(v10 + 88) = v51;
      *(v10 + 72) = v50;
      result = *(a2 + 34);
      v53 = *(a2 + 38);
      v54 = *(a2 + 42);
      *(v10 + 184) = *(a2 + 46);
      *(v10 + 168) = v54;
      *(v10 + 152) = v53;
      *(v10 + 136) = result;
      return result;
    }

    v63[0] = 0;
    v63[1] = 0;
    v62 = 0uLL;
    v61 = 0uLL;
    v60 = 0uLL;
    v59 = 0uLL;
    v58 = 0uLL;
    v57[0] = 0;
    v57[1] = 0;
    v64 = __bid128_to_binary128(v18, v19, v26, my_fpsf);
    v65 = v28;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    __dpml_bid_unpack_x_or_y__(&v64, 0, &v66, &qword_1C1F5E6D0, v57, v69);
    if (bid_f128_cmp(v57, &c_1em40_1239, 1u))
    {
      v29 = __bid128_sub(1uLL, 0x3040000000000000, v18, v19, v26, my_fpsf);
    }

    else
    {
      if (v19 < 0)
      {
        v64 = __bid128_to_binary128(v18, v19, v26, my_fpsf);
        v65 = v33;
        __dpml_bid_C_ux_erf__(&v64, 0x8000FE56uLL, &v62, v69);
        v31 = v62.n128_u64[1];
        v30 = v62.n128_u64[0];
        v32 = v26;
      }

      else
      {
        if (!bid_f128_cmp(&v64, &c_105, 1u))
        {
          if (bid_f128_cmp(&v64, &c_120, 4u))
          {
            v34 = 1;
            v35 = 0x160000000000000;
            v36 = 1;
            v37 = 0x160000000000000;
          }

          else
          {
            v38 = __bid128_mul(v18, v19, v18, v19, v26, my_fpsf);
            v40 = v39 ^ 0x8000000000000000;
            v41 = bid128_ext_fma(v69, &v66, &v56, &v55, v18, v19, v18, v19, v38, v39 ^ 0x8000000000000000, v26, my_fpsf);
            v43 = v42;
            v44 = __bid128_exp(v38, v40, v26, my_fpsf);
            v46 = bid128_ext_fma(v69, &v66, &v56, &v55, v44, v45, v41, v43 ^ 0x8000000000000000, v44, v45, v26, my_fpsf);
            v48 = v47;
            bid_f128_div(&v61, &c_one_1240, &v64);
            bid_f128_mul(&v60, &v61, &v61);
            bid_f128_mul(&v59, &v60, &c12);
            bid_f128_add(&v59, &c11, &v59);
            bid_f128_mul(&v59, &v60, &v59);
            bid_f128_add(&v59, &c10, &v59);
            bid_f128_mul(&v59, &v60, &v59);
            bid_f128_add(&v59, &c9, &v59);
            bid_f128_mul(&v59, &v60, &v59);
            bid_f128_add(&v59, &c8, &v59);
            bid_f128_mul(&v59, &v60, &v59);
            bid_f128_add(&v59, &c7, &v59);
            bid_f128_mul(&v59, &v60, &v59);
            bid_f128_add(&v59, &c6, &v59);
            bid_f128_mul(&v59, &v60, &v59);
            bid_f128_add(&v59, &c5, &v59);
            bid_f128_mul(&v59, &v60, &v59);
            bid_f128_add(&v59, &c4, &v59);
            bid_f128_mul(&v59, &v60, &v59);
            bid_f128_add(&v59, &c3, &v59);
            bid_f128_mul(&v59, &v60, &v59);
            bid_f128_add(&v59, &c2, &v59);
            bid_f128_mul(&v59, &v60, &v59);
            bid_f128_add(&v59, &c1, &v59);
            bid_f128_mul(&v59, &v60, &v59);
            bid_f128_add(&v59, &c_one_1240, &v59);
            bid_f128_mul(&v58, &v61, &c_1_ov_sqrt_pi);
            bid_f128_mul(&v59, &v58, &v59);
            v36 = __binary128_to_bid128(v59.n128_u64[0], v59.n128_u64[1], v26, my_fpsf);
            v37 = v49;
            v34 = v46;
            v35 = v48;
          }

          v29 = __bid128_mul(v34, v35, v36, v37, v26, my_fpsf);
          goto LABEL_70;
        }

        v56 = 0uLL;
        v55 = 0uLL;
        bid128_to_binary128_2part(&v64, v63, v18, v19);
        bid_f128_mul(&v56, &v64, &v64);
        v66 = 0;
        v67 = 0;
        v68 = 0;
        __dpml_bid_unpack_x_or_y__(&v56, 0, &v66, &__dpml_bid_bid_x_table, &v56, v69);
        bid_f128_exp(&v56, &v56);
        bid_f128_mul(&v56, &c_2_ov_sqrt_pi, &v56);
        bid_f128_mul(&v56, &v56, v63);
        __dpml_bid_C_ux_erf__(&v64, 0x8000FE56uLL, &v55, v69);
        bid_f128_sub(&v62, &v55, &v56);
        v31 = v62.n128_u64[1];
        v30 = v62.n128_u64[0];
        v32 = v26;
      }

      v29 = __binary128_to_bid128(v30, v31, v32, my_fpsf);
    }

LABEL_70:
    v18 = v29;
    goto LABEL_71;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v4 = 11;
LABEL_12:
  v9 = *(a1 + 32);
  *(v9 + 204) = v4;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0x7C00000000000000;
  return result;
}

void functionFactorial(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionFactorial_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionFactorial_block_invoke(uint64_t a1, uint64_t a2, __n128 result)
{
  if (*(a2 + 76))
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v4 = 9;
    goto LABEL_12;
  }

  v6 = -1;
  v7 = 84;
  do
  {
    if (v6 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    v8 = *(a2 + v7);
    ++v6;
    v7 += 8;
  }

  while (!v8);
  if (v6 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      v11 = __binary64_to_bid128(v13, my_fpsf, *(a2 + 32));
    }

    else if (v10 == 2)
    {
      v11 = *(a2 + 48);
      v12 = *(a2 + 56);
    }

    else
    {
      if (v10 == 4)
      {
        v11 = *(a2 + 64);
      }

      else
      {
        v11 = 0;
      }

      v12 = 0x3040000000000000;
    }

    if (__bid128_quiet_greater(v11, v12, 0x67uLL, 0x3040000000000000, my_fpsf))
    {
      my_fpsf[0] |= 8u;
      v14 = *(a1 + 32);
      v15 = 3;
    }

    else
    {
      v16 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v19 = 4;
        }

        else
        {
          v19 = 0;
        }

        v17 = __binary64_to_bid128(v19, my_fpsf, *(a2 + 32));
      }

      else if (v16 == 2)
      {
        v17 = *(a2 + 48);
        v18 = *(a2 + 56);
      }

      else
      {
        if (v16 == 4)
        {
          v17 = *(a2 + 64);
        }

        else
        {
          v17 = 0;
        }

        v18 = 0x3040000000000000;
      }

      if (!__bid128_quiet_equal(v17, v18, 1uLL, 0xB040000000000000, my_fpsf))
      {
        g_isTrivial = 0;
        v20 = *(a1 + 32);
        if (*v20 == 4 || *v20 == 1)
        {
          v21 = *a2;
          if (*a2 == 1)
          {
            v22 = *(a2 + 32);
          }

          else if (v21 == 2)
          {
            if (my_rnd_mode)
            {
              v39 = 4;
            }

            else
            {
              v39 = 0;
            }

            v22 = __bid128_to_binary64(*(a2 + 48), *(a2 + 56), v39, my_fpsf);
          }

          else
          {
            v22 = 0.0;
            if (v21 == 4)
            {
              v23 = *(a2 + 64);
              v24 = rint(1.79769313e308);
              v25 = rint(2.22507386e-308) < v23 && v24 > v23;
              v22 = v23;
              if (!v25)
              {
                v22 = NAN;
              }
            }
          }

          v40 = tgamma(v22 + 1.0);
          *(v20 + 32) = v40;
          *(v20 + 64) = rint(v40);
        }

        else
        {
          v26 = treeDecimalValue(a2);
          if (my_rnd_mode)
          {
            v28 = 4;
          }

          else
          {
            v28 = 0;
          }

          v29 = __bid128_add(v26, v27, 1uLL, 0x3040000000000000, v28, my_fpsf);
          v31 = __bid128_tgamma(v29, v30, v28);
          v33 = v32;
          v34 = treeDecimalValue(a2);
          if (Decimal128IsIntegral(v34, v35))
          {
            if (my_rnd_mode)
            {
              v36 = 4;
            }

            else
            {
              v36 = 0;
            }

            v31 = __bid128_round_integral_exact(v31, v33, v36, my_fpsf);
            v33 = v37;
          }

          v38 = *(a1 + 32);
          *(v38 + 48) = v31;
          *(v38 + 56) = v33;
          v20 = *(a1 + 32);
        }

        v41 = *(a2 + 72);
        v42 = *(a2 + 88);
        v43 = *(a2 + 104);
        *(v20 + 120) = *(a2 + 120);
        *(v20 + 104) = v43;
        *(v20 + 88) = v42;
        *(v20 + 72) = v41;
        result = *(a2 + 136);
        v44 = *(a2 + 152);
        v45 = *(a2 + 168);
        *(v20 + 184) = *(a2 + 184);
        *(v20 + 168) = v45;
        *(v20 + 152) = v44;
        *(v20 + 136) = result;
        return result;
      }

      v14 = *(a1 + 32);
      v15 = 4;
    }

    *(v14 + 204) = v15;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0x7C00000000000000;
    return result;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v4 = 11;
LABEL_12:
  v9 = *(a1 + 32);
  *(v9 + 204) = v4;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0x7C00000000000000;
  return result;
}

BOOL Decimal128IsIntegral(unint64_t a1, unint64_t a2)
{
  v7 = 0;
  v4 = __bid128_round_integral_exact(a1, a2, 4, &v7);
  return __bid128_quiet_equal(a1, a2, v4, v5, &v7);
}

void functionRoot(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionRoot_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

void __functionRoot_block_invoke(uint64_t a1, int *a2, int *a3, int8x16_t a4)
{
  if (a2[19])
  {
    goto LABEL_7;
  }

  v5 = -1;
  v6 = 21;
  while (v5 != 14)
  {
    v7 = a2[v6];
    ++v5;
    v6 += 2;
    if (v7)
    {
      if (v5 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (a3[19])
  {
    goto LABEL_7;
  }

  v10 = -1;
  v11 = 21;
  while (v10 != 14)
  {
    v12 = a3[v11];
    ++v10;
    v11 += 2;
    if (v12)
    {
      if (v10 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (g_GeneratingConvertTerm == 1)
  {
LABEL_7:
    v8 = *(a1 + 32);
    if (g_GeneratingConvertTerm)
    {
      v9 = 11;
    }

    else
    {
      v9 = 9;
    }

    *(v8 + 204) = v9;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    v13 = *(a1 + 32);
    if (*v13 == 4 || *v13 == 1)
    {
      v15 = *a2;
      if (*a2 == 1)
      {
        v16 = *(a2 + 4);
      }

      else if (v15 == 2)
      {
        v22 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v23 = 4;
        }

        else
        {
          v23 = 0;
        }

        v16 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v23, my_fpsf);
      }

      else
      {
        v16 = 0.0;
        if (v15 == 4)
        {
          v17 = *(a2 + 8);
          v18 = rint(1.79769313e308);
          if (rint(2.22507386e-308) < v17 && v18 > v17)
          {
            v16 = v17;
          }

          else
          {
            v16 = NAN;
          }
        }
      }

      v24 = *a3;
      if (*a3 == 1)
      {
        a4.i64[0] = *(a3 + 4);
      }

      else if (v24 == 2)
      {
        if (my_rnd_mode)
        {
          v28 = 4;
        }

        else
        {
          v28 = 0;
        }

        *a4.i64 = __bid128_to_binary64(*(a3 + 6), *(a3 + 7), v28, my_fpsf);
      }

      else
      {
        a4.i64[0] = 0;
        if (v24 == 4)
        {
          v25 = *(a3 + 8);
          v26 = rint(1.79769313e308);
          v27 = rint(2.22507386e-308) < v25 && v26 > v25;
          *a4.i64 = v25;
          if (!v27)
          {
            *a4.i64 = NAN;
          }
        }
      }

      v56 = a4;
      v29 = modf(*a4.i64, &__y);
      if (v16 >= 0.0)
      {
        v32 = pow(v16, 1.0 / *v56.i64);
      }

      else
      {
        *v30.i64 = *v56.i64 + trunc(*v56.i64 * 0.5) * -2.0;
        v31.f64[0] = NAN;
        v31.f64[1] = NAN;
        v31.f64[0] = *vbslq_s8(vnegq_f64(v31), v30, v56).i64;
        v32 = NAN;
        if (v31.f64[0] != 0.0 && v29 == 0.0)
        {
          v32 = -pow(-v16, 1.0 / *v56.i64);
        }
      }

      *(v13 + 32) = v32;
      *(v13 + 64) = rint(v32);
    }

    else
    {
      v20 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v34 = 4;
        }

        else
        {
          v34 = 0;
        }

        v21 = __binary64_to_bid128(v34, my_fpsf, *(a2 + 4));
        v33 = v35;
      }

      else if (v20 == 2)
      {
        v21 = *(a2 + 6);
        v33 = *(a2 + 7);
      }

      else
      {
        if (v20 == 4)
        {
          v21 = *(a2 + 8);
        }

        else
        {
          v21 = 0;
        }

        v33 = 0x3040000000000000;
      }

      v36 = *a3;
      if (*a3 == 1)
      {
        if (my_rnd_mode)
        {
          v40 = 4;
        }

        else
        {
          v40 = 0;
        }

        v37 = __binary64_to_bid128(v40, my_fpsf, *(a3 + 4));
        v38 = v41;
      }

      else if (v36 == 2)
      {
        v39 = a3 + 12;
        v37 = *(a3 + 6);
        v38 = *(v39 + 1);
      }

      else
      {
        if (v36 == 4)
        {
          v37 = *(a3 + 8);
        }

        else
        {
          v37 = 0;
        }

        v38 = 0x3040000000000000;
      }

      if (__bid128_quiet_less(v21, v33, 0, 0x3040000000000000, my_fpsf))
      {
        v58 = 0;
        v42 = __bid128_round_integral_exact(v37, v38, 4, &v58);
        v44 = __bid128_quiet_equal(v37, v38, v42, v43, &v58);
        v45 = __bid128_fmod(v37, v38, 2uLL, 0x3040000000000000uLL, my_fpsf);
        v47 = __bid128_quiet_equal(v45, v46, 0, 0x3040000000000000uLL, my_fpsf);
        if (!v44 || v47)
        {
          *(v13 + 204) = 4;
          *(v13 + 48) = 0;
          *(v13 + 56) = 0x7C00000000000000;
        }

        else
        {
          if (my_rnd_mode)
          {
            v48 = 4;
          }

          else
          {
            v48 = 0;
          }

          v49 = __bid128_div(1uLL, 0x3040000000000000uLL, v37, v38, v48, my_fpsf);
          *(v13 + 48) = __bid128_pow(v21, v33 ^ 0x8000000000000000, v49, v50, v48, my_fpsf);
          *(v13 + 56) = v51 ^ 0x8000000000000000;
        }
      }

      else
      {
        if (my_rnd_mode)
        {
          v52 = 4;
        }

        else
        {
          v52 = 0;
        }

        v53 = __bid128_div(1uLL, 0x3040000000000000uLL, v37, v38, v52, my_fpsf);
        *(v13 + 48) = __bid128_pow(v21, v33, v53, v54, v52, my_fpsf);
        *(v13 + 56) = v55;
      }
    }
  }
}

void functionFMod(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionFMod_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

void __functionFMod_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 76))
  {
    goto LABEL_7;
  }

  v6 = -1;
  v7 = 84;
  while (v6 != 14)
  {
    v8 = *(a2 + v7);
    ++v6;
    v7 += 8;
    if (v8)
    {
      if (v6 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (*(a3 + 76))
  {
    goto LABEL_7;
  }

  v11 = -1;
  v12 = 84;
  while (v11 != 14)
  {
    v13 = *(a3 + v12);
    ++v11;
    v12 += 8;
    if (v13)
    {
      if (v11 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (g_GeneratingConvertTerm == 1)
  {
LABEL_7:
    v9 = *(a1 + 32);
    if (g_GeneratingConvertTerm)
    {
      v10 = 11;
    }

    else
    {
      v10 = 9;
    }

    *(v9 + 204) = v10;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    v14 = *(a1 + 32);
    v15 = *a2;
    if (*v14 == 1)
    {
      if (v15 == 1)
      {
        v17 = *(a2 + 32);
      }

      else if (v15 == 2)
      {
        v24 = *(a2 + 48);
        v25 = *(a2 + 56);
        if (my_rnd_mode)
        {
          v26 = 4;
        }

        else
        {
          v26 = 0;
        }

        v17 = __bid128_to_binary64(v24, v25, v26, my_fpsf);
      }

      else
      {
        v17 = 0.0;
        if (v15 == 4)
        {
          v18 = *(a2 + 64);
          v19 = rint(1.79769313e308);
          if (rint(2.22507386e-308) < v18 && v19 > v18)
          {
            v17 = v18;
          }

          else
          {
            v17 = NAN;
          }
        }
      }

      v31 = *a3;
      if (*a3 == 1)
      {
        v32 = *(a3 + 32);
      }

      else if (v31 == 2)
      {
        if (my_rnd_mode)
        {
          v36 = 4;
        }

        else
        {
          v36 = 0;
        }

        v32 = __bid128_to_binary64(*(a3 + 48), *(a3 + 56), v36, my_fpsf);
      }

      else
      {
        v32 = 0.0;
        if (v31 == 4)
        {
          v33 = *(a3 + 64);
          v34 = rint(1.79769313e308);
          v35 = rint(2.22507386e-308) < v33 && v34 > v33;
          v32 = NAN;
          if (v35)
          {
            v32 = v33;
          }
        }
      }

      *(v14 + 32) = fmod(v17, v32);
    }

    else if (*v14 == 4)
    {
      switch(v15)
      {
        case 1:
          v16 = rint(*(a2 + 32));
          break;
        case 2:
          v22 = *(a2 + 48);
          v23 = *(a2 + 56);
          v78 = 0;
          v16 = __bid128_to_uint64_int(v22, v23, &v78);
          break;
        case 4:
          v16 = *(a2 + 64);
          break;
        default:
          v16 = 0;
          break;
      }

      v27 = *a3;
      if (*a3 == 1)
      {
        v28 = rint(*(a3 + 32));
      }

      else if (v27 == 2)
      {
        v29 = *(a3 + 48);
        v30 = *(a3 + 56);
        v79 = 0;
        v28 = __bid128_to_uint64_int(v29, v30, &v79);
      }

      else if (v27 == 4)
      {
        v28 = *(a3 + 64);
      }

      else
      {
        v28 = 0;
      }

      *(v14 + 64) = v16 % v28;
    }

    else
    {
      if (v15 == 1)
      {
        if (my_rnd_mode)
        {
          v38 = 4;
        }

        else
        {
          v38 = 0;
        }

        v21 = __binary64_to_bid128(v38, my_fpsf, *(a2 + 32));
      }

      else if (v15 == 2)
      {
        v21 = *(a2 + 48);
        v37 = *(a2 + 56);
      }

      else
      {
        if (v15 == 4)
        {
          v21 = *(a2 + 64);
        }

        else
        {
          v21 = 0;
        }

        v37 = 0x3040000000000000;
      }

      if (__bid128_quiet_less(v21, v37, 0, 0x3040000000000000, my_fpsf) || (v39 = treeDecimalValue(a3), v41 = __bid128_quiet_less(v39, v40, 0, 0x3040000000000000, my_fpsf), v14 = *(a1 + 32), v41))
      {
        v42 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v44 = 4;
          }

          else
          {
            v44 = 0;
          }

          v77 = __binary64_to_bid128(v44, my_fpsf, *(a2 + 32));
          v43 = v45;
        }

        else if (v42 == 2)
        {
          v43 = *(a2 + 56);
          v77 = *(a2 + 48);
        }

        else
        {
          if (v42 == 4)
          {
            v77 = *(a2 + 64);
          }

          else
          {
            v77 = 0;
          }

          v43 = 0x3040000000000000;
        }

        v46 = *a3;
        if (*a3 == 1)
        {
          if (my_rnd_mode)
          {
            v49 = 4;
          }

          else
          {
            v49 = 0;
          }

          v47 = __binary64_to_bid128(v49, my_fpsf, *(a3 + 32));
          v48 = v50;
        }

        else if (v46 == 2)
        {
          v47 = *(a3 + 48);
          v48 = *(a3 + 56);
        }

        else
        {
          if (v46 == 4)
          {
            v47 = *(a3 + 64);
          }

          else
          {
            v47 = 0;
          }

          v48 = 0x3040000000000000;
        }

        v51 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v55 = 4;
          }

          else
          {
            v55 = 0;
          }

          v52 = __binary64_to_bid128(v55, my_fpsf, *(a2 + 32));
          v53 = v56;
        }

        else if (v51 == 2)
        {
          v54 = a2 + 48;
          v52 = *(a2 + 48);
          v53 = *(v54 + 8);
        }

        else
        {
          if (v51 == 4)
          {
            v52 = *(a2 + 64);
          }

          else
          {
            v52 = 0;
          }

          v53 = 0x3040000000000000;
        }

        v57 = *a3;
        if (*a3 == 1)
        {
          if (my_rnd_mode)
          {
            v60 = 4;
          }

          else
          {
            v60 = 0;
          }

          v58 = __binary64_to_bid128(v60, my_fpsf, *(a3 + 32));
          v59 = v61;
        }

        else if (v57 == 2)
        {
          v58 = *(a3 + 48);
          v59 = *(a3 + 56);
        }

        else
        {
          if (v57 == 4)
          {
            v58 = *(a3 + 64);
          }

          else
          {
            v58 = 0;
          }

          v59 = 0x3040000000000000;
        }

        if (my_rnd_mode)
        {
          v62 = 4;
        }

        else
        {
          v62 = 0;
        }

        v63 = __bid128_div(v52, v53, v58, v59, v62, my_fpsf);
        v65 = __bid128_round_integral_negative(v63, v64, my_fpsf);
        v68 = __bid128_mul(v47, v48, v65, v66, v62, my_fpsf);
        if (my_rnd_mode)
        {
          v69 = 4;
        }

        else
        {
          v69 = 0;
        }

        v70 = __bid128_sub(v77, v43, v68, v67, v69, my_fpsf);
      }

      else
      {
        v72 = treeDecimalValue(a2);
        v74 = v73;
        v75 = treeDecimalValue(a3);
        v70 = __bid128_fmod(v72, v74, v75, v76, my_fpsf);
      }

      *(v14 + 48) = v70;
      *(v14 + 56) = v71;
    }
  }
}

void functionHypot(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionHypot_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

void __functionHypot_block_invoke(uint64_t a1, int *a2, int *a3)
{
  if (a2[19])
  {
    goto LABEL_7;
  }

  v4 = -1;
  v5 = 21;
  while (v4 != 14)
  {
    v6 = a2[v5];
    ++v4;
    v5 += 2;
    if (v6)
    {
      if (v4 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (a3[19])
  {
    goto LABEL_7;
  }

  v9 = -1;
  v10 = 21;
  while (v9 != 14)
  {
    v11 = a3[v10];
    ++v9;
    v10 += 2;
    if (v11)
    {
      if (v9 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (g_GeneratingConvertTerm == 1)
  {
LABEL_7:
    v7 = *(a1 + 32);
    if (g_GeneratingConvertTerm)
    {
      v8 = 11;
    }

    else
    {
      v8 = 9;
    }

    *(v7 + 204) = v8;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    v12 = *(a1 + 32);
    if (*v12 == 4 || *v12 == 1)
    {
      v14 = *a2;
      if (*a2 == 1)
      {
        v15 = *(a2 + 4);
      }

      else if (v14 == 2)
      {
        v21 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        v15 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v22, my_fpsf);
      }

      else
      {
        v15 = 0.0;
        if (v14 == 4)
        {
          v16 = *(a2 + 8);
          v17 = rint(1.79769313e308);
          if (rint(2.22507386e-308) < v16 && v17 > v16)
          {
            v15 = v16;
          }

          else
          {
            v15 = NAN;
          }
        }
      }

      v23 = *a3;
      if (*a3 == 1)
      {
        v24 = *(a3 + 4);
      }

      else if (v23 == 2)
      {
        if (my_rnd_mode)
        {
          v28 = 4;
        }

        else
        {
          v28 = 0;
        }

        v24 = __bid128_to_binary64(*(a3 + 6), *(a3 + 7), v28, my_fpsf);
      }

      else
      {
        v24 = 0.0;
        if (v23 == 4)
        {
          v25 = *(a3 + 8);
          v26 = rint(1.79769313e308);
          v27 = rint(2.22507386e-308) < v25 && v26 > v25;
          v24 = NAN;
          if (v27)
          {
            v24 = v25;
          }
        }
      }

      v29 = hypot(v15, v24);
      *(v12 + 32) = v29;
      *(v12 + 64) = rint(v29);
    }

    else
    {
      v19 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v31 = 4;
        }

        else
        {
          v31 = 0;
        }

        v20 = __binary64_to_bid128(v31, my_fpsf, *(a2 + 4));
        v30 = v32;
      }

      else if (v19 == 2)
      {
        v20 = *(a2 + 6);
        v30 = *(a2 + 7);
      }

      else
      {
        if (v19 == 4)
        {
          v20 = *(a2 + 8);
        }

        else
        {
          v20 = 0;
        }

        v30 = 0x3040000000000000;
      }

      v33 = *a3;
      if (*a3 == 1)
      {
        if (my_rnd_mode)
        {
          v36 = 4;
        }

        else
        {
          v36 = 0;
        }

        v34 = __binary64_to_bid128(v36, my_fpsf, *(a3 + 4));
        v35 = v37;
      }

      else if (v33 == 2)
      {
        v34 = *(a3 + 6);
        v35 = *(a3 + 7);
      }

      else
      {
        if (v33 == 4)
        {
          v34 = *(a3 + 8);
        }

        else
        {
          v34 = 0;
        }

        v35 = 0x3040000000000000;
      }

      if (my_rnd_mode)
      {
        v38 = 4;
      }

      else
      {
        v38 = 0;
      }

      *(v12 + 48) = __bid128_hypot(v20, v30, v34, v35, v38);
      *(v12 + 56) = v39;
    }
  }
}

void functionRem(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionRem_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

void __functionRem_block_invoke(uint64_t a1, int *a2, int *a3)
{
  if (a2[19])
  {
    goto LABEL_7;
  }

  v4 = -1;
  v5 = 21;
  while (v4 != 14)
  {
    v6 = a2[v5];
    ++v4;
    v5 += 2;
    if (v6)
    {
      if (v4 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (a3[19])
  {
    goto LABEL_7;
  }

  v9 = -1;
  v10 = 21;
  while (v9 != 14)
  {
    v11 = a3[v10];
    ++v9;
    v10 += 2;
    if (v11)
    {
      if (v9 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (g_GeneratingConvertTerm == 1)
  {
LABEL_7:
    v7 = *(a1 + 32);
    if (g_GeneratingConvertTerm)
    {
      v8 = 11;
    }

    else
    {
      v8 = 9;
    }

    *(v7 + 204) = v8;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    v12 = *(a1 + 32);
    if (*v12 == 4 || *v12 == 1)
    {
      v14 = *a2;
      if (*a2 == 1)
      {
        v15 = *(a2 + 4);
      }

      else if (v14 == 2)
      {
        v21 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        v15 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v22, my_fpsf);
      }

      else
      {
        v15 = 0.0;
        if (v14 == 4)
        {
          v16 = *(a2 + 8);
          v17 = rint(1.79769313e308);
          if (rint(2.22507386e-308) < v16 && v17 > v16)
          {
            v15 = v16;
          }

          else
          {
            v15 = NAN;
          }
        }
      }

      v23 = *a3;
      if (*a3 == 1)
      {
        v24 = *(a3 + 4);
      }

      else if (v23 == 2)
      {
        if (my_rnd_mode)
        {
          v28 = 4;
        }

        else
        {
          v28 = 0;
        }

        v24 = __bid128_to_binary64(*(a3 + 6), *(a3 + 7), v28, my_fpsf);
      }

      else
      {
        v24 = 0.0;
        if (v23 == 4)
        {
          v25 = *(a3 + 8);
          v26 = rint(1.79769313e308);
          v27 = rint(2.22507386e-308) < v25 && v26 > v25;
          v24 = NAN;
          if (v27)
          {
            v24 = v25;
          }
        }
      }

      v29 = remainder(v15, v24);
      *(v12 + 32) = v29;
      *(v12 + 64) = rint(v29);
    }

    else
    {
      v19 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v31 = 4;
        }

        else
        {
          v31 = 0;
        }

        v20 = __binary64_to_bid128(v31, my_fpsf, *(a2 + 4));
        v30 = v32;
      }

      else if (v19 == 2)
      {
        v20 = *(a2 + 6);
        v30 = *(a2 + 7);
      }

      else
      {
        if (v19 == 4)
        {
          v20 = *(a2 + 8);
        }

        else
        {
          v20 = 0;
        }

        v30 = 0x3040000000000000;
      }

      v33 = *a3;
      if (*a3 == 1)
      {
        if (my_rnd_mode)
        {
          v36 = 4;
        }

        else
        {
          v36 = 0;
        }

        v34 = __binary64_to_bid128(v36, my_fpsf, *(a3 + 4));
        v35 = v37;
      }

      else if (v33 == 2)
      {
        v34 = *(a3 + 6);
        v35 = *(a3 + 7);
      }

      else
      {
        if (v33 == 4)
        {
          v34 = *(a3 + 8);
        }

        else
        {
          v34 = 0;
        }

        v35 = 0x3040000000000000;
      }

      *(v12 + 48) = __bid128_rem(v20, v30, v34, v35);
      *(v12 + 56) = v38;
    }
  }
}

void functionMin(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionMin_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

void __functionMin_block_invoke(uint64_t a1, int *a2, int *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  if (g_GeneratingConvertTerm == 1)
  {
    v4 = *(a1 + 32);
    *(v4 + 204) = 11;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    memset(v64, 0, sizeof(v64));
    v62 = 0;
    v7 = *a3;
    if (*a3 == 1)
    {
      if (my_rnd_mode)
      {
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }

      v8 = __binary64_to_bid128(v10, my_fpsf, *(a3 + 4));
    }

    else if (v7 == 2)
    {
      v8 = *(a3 + 6);
      v9 = *(a3 + 7);
    }

    else
    {
      if (v7 == 4)
      {
        v8 = *(a3 + 8);
      }

      else
      {
        v8 = 0;
      }

      v9 = 0x3040000000000000;
    }

    v11 = (a2 + 18);
    v12 = UnitCountConvert(v8, v9, (a3 + 18), (a2 + 18), v64, &v62);
    v14 = v12;
    v15 = v13;
    if ((~v13 & 0x7C00000000000000) != 0)
    {
      v18 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v21 = 4;
        }

        else
        {
          v21 = 0;
        }

        v19 = __binary64_to_bid128(v21, my_fpsf, *(a2 + 4));
      }

      else if (v18 == 2)
      {
        v19 = *(a2 + 6);
        v20 = *(a2 + 7);
      }

      else
      {
        if (v18 == 4)
        {
          v19 = *(a2 + 8);
        }

        else
        {
          v19 = 0;
        }

        v20 = 0x3040000000000000;
      }

      if (__bid128_quiet_less(v19, v20, v14, v15, my_fpsf))
      {
        if (!a2[19])
        {
          v22 = a2 + 21;
          v23 = -1;
          do
          {
            if (v23 == 14)
            {
              v11 = v64;
              goto LABEL_43;
            }

            v24 = *v22;
            v22 += 2;
            ++v23;
          }

          while (!v24);
          if (v23 >= 0xF)
          {
            v11 = v64;
          }
        }

LABEL_43:
        v29 = *(a1 + 32);
        v30 = *v11;
        v31 = v11[1];
        v32 = v11[2];
        *(v29 + 120) = v11[3];
        *(v29 + 104) = v32;
        *(v29 + 88) = v31;
        *(v29 + 72) = v30;
        v33 = v11[4];
        v34 = v11[5];
        v35 = v11[6];
        *(v29 + 184) = v11[7];
        *(v29 + 168) = v35;
        *(v29 + 152) = v34;
        *(v29 + 136) = v33;
        v36 = *(a1 + 32);
        v37 = *v36;
        if (*v36 == 1)
        {
          v42 = *a2;
          if (*a2 == 1)
          {
            v43 = *(a2 + 4);
          }

          else if (v42 == 2)
          {
            if (my_rnd_mode)
            {
              v59 = 4;
            }

            else
            {
              v59 = 0;
            }

            v43 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v59, my_fpsf);
          }

          else
          {
            v43 = 0.0;
            if (v42 == 4)
            {
              v44 = *(a2 + 8);
              v45 = rint(1.79769313e308);
              v46 = rint(2.22507386e-308) < v44 && v45 > v44;
              v43 = v44;
              if (!v46)
              {
                v43 = NAN;
              }
            }
          }

          v36[4] = v43;
        }

        else if (v37 == 2)
        {
          v40 = *a2;
          if (*a2 == 1)
          {
            if (my_rnd_mode)
            {
              v58 = 4;
            }

            else
            {
              v58 = 0;
            }

            v41 = __binary64_to_bid128(v58, my_fpsf, *(a2 + 4));
          }

          else if (v40 == 2)
          {
            v41 = *(a2 + 6);
            v57 = *(a2 + 7);
          }

          else
          {
            if (v40 == 4)
            {
              v41 = *(a2 + 8);
            }

            else
            {
              v41 = 0;
            }

            v57 = 0x3040000000000000;
          }

          *(v36 + 6) = v41;
          *(v36 + 7) = v57;
        }

        else if (v37 == 4)
        {
          v38 = *a2;
          if (*a2 == 1)
          {
            v39 = rint(*(a2 + 4));
          }

          else if (v38 == 2)
          {
            v60 = *(a2 + 6);
            v61 = *(a2 + 7);
            v63 = 0;
            v39 = __bid128_to_uint64_int(v60, v61, &v63);
          }

          else if (v38 == 4)
          {
            v39 = *(a2 + 8);
          }

          else
          {
            v39 = 0;
          }

          *(v36 + 8) = v39;
        }
      }

      else
      {
        v25 = v64;
        if (!DWORD1(v64[0]))
        {
          v26 = -1;
          v27 = 12;
          do
          {
            if (v26 == 14)
            {
              v25 = (a2 + 18);
              goto LABEL_64;
            }

            v28 = *(v64 + v27);
            ++v26;
            v27 += 8;
          }

          while (!v28);
          v25 = v64;
          if (v26 >= 0xF)
          {
            v25 = (a2 + 18);
          }
        }

LABEL_64:
        v47 = *(a1 + 32);
        v48 = *v25;
        v49 = v25[1];
        v50 = v25[2];
        *(v47 + 120) = v25[3];
        *(v47 + 104) = v50;
        *(v47 + 88) = v49;
        *(v47 + 72) = v48;
        v51 = v25[4];
        v52 = v25[5];
        v53 = v25[6];
        *(v47 + 184) = v25[7];
        *(v47 + 168) = v53;
        *(v47 + 152) = v52;
        *(v47 + 136) = v51;
        v54 = *(a1 + 32);
        v55 = *v54;
        if (*v54 == 1)
        {
          if (my_rnd_mode)
          {
            v56 = 4;
          }

          else
          {
            v56 = 0;
          }

          v54[4] = __bid128_to_binary64(v14, v15, v56, my_fpsf);
        }

        else if (v55 == 2)
        {
          *(v54 + 6) = v14;
          *(v54 + 7) = v15;
        }

        else if (v55 == 4)
        {
          v63 = 0;
          *(v54 + 8) = __bid128_to_uint64_int(v14, v15, &v63);
        }
      }
    }

    else
    {
      v16 = *(a1 + 32);
      *(v16 + 204) = v62;
      *(v16 + 48) = v12;
      *(v16 + 56) = v13;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void functionMax(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionMax_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

void __functionMax_block_invoke(uint64_t a1, int *a2, int *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  if (g_GeneratingConvertTerm == 1)
  {
    v4 = *(a1 + 32);
    *(v4 + 204) = 11;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    memset(v64, 0, sizeof(v64));
    v62 = 0;
    v7 = *a3;
    if (*a3 == 1)
    {
      if (my_rnd_mode)
      {
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }

      v8 = __binary64_to_bid128(v10, my_fpsf, *(a3 + 4));
    }

    else if (v7 == 2)
    {
      v8 = *(a3 + 6);
      v9 = *(a3 + 7);
    }

    else
    {
      if (v7 == 4)
      {
        v8 = *(a3 + 8);
      }

      else
      {
        v8 = 0;
      }

      v9 = 0x3040000000000000;
    }

    v11 = (a2 + 18);
    v12 = UnitCountConvert(v8, v9, (a3 + 18), (a2 + 18), v64, &v62);
    v14 = v12;
    v15 = v13;
    if ((~v13 & 0x7C00000000000000) != 0)
    {
      v18 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v21 = 4;
        }

        else
        {
          v21 = 0;
        }

        v19 = __binary64_to_bid128(v21, my_fpsf, *(a2 + 4));
      }

      else if (v18 == 2)
      {
        v19 = *(a2 + 6);
        v20 = *(a2 + 7);
      }

      else
      {
        if (v18 == 4)
        {
          v19 = *(a2 + 8);
        }

        else
        {
          v19 = 0;
        }

        v20 = 0x3040000000000000;
      }

      if (__bid128_quiet_greater(v19, v20, v14, v15, my_fpsf))
      {
        if (!a2[19])
        {
          v22 = a2 + 21;
          v23 = -1;
          do
          {
            if (v23 == 14)
            {
              v11 = v64;
              goto LABEL_43;
            }

            v24 = *v22;
            v22 += 2;
            ++v23;
          }

          while (!v24);
          if (v23 >= 0xF)
          {
            v11 = v64;
          }
        }

LABEL_43:
        v29 = *(a1 + 32);
        v30 = *v11;
        v31 = v11[1];
        v32 = v11[2];
        *(v29 + 120) = v11[3];
        *(v29 + 104) = v32;
        *(v29 + 88) = v31;
        *(v29 + 72) = v30;
        v33 = v11[4];
        v34 = v11[5];
        v35 = v11[6];
        *(v29 + 184) = v11[7];
        *(v29 + 168) = v35;
        *(v29 + 152) = v34;
        *(v29 + 136) = v33;
        v36 = *(a1 + 32);
        v37 = *v36;
        if (*v36 == 1)
        {
          v42 = *a2;
          if (*a2 == 1)
          {
            v43 = *(a2 + 4);
          }

          else if (v42 == 2)
          {
            if (my_rnd_mode)
            {
              v59 = 4;
            }

            else
            {
              v59 = 0;
            }

            v43 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v59, my_fpsf);
          }

          else
          {
            v43 = 0.0;
            if (v42 == 4)
            {
              v44 = *(a2 + 8);
              v45 = rint(1.79769313e308);
              v46 = rint(2.22507386e-308) < v44 && v45 > v44;
              v43 = v44;
              if (!v46)
              {
                v43 = NAN;
              }
            }
          }

          v36[4] = v43;
        }

        else if (v37 == 2)
        {
          v40 = *a2;
          if (*a2 == 1)
          {
            if (my_rnd_mode)
            {
              v58 = 4;
            }

            else
            {
              v58 = 0;
            }

            v41 = __binary64_to_bid128(v58, my_fpsf, *(a2 + 4));
          }

          else if (v40 == 2)
          {
            v41 = *(a2 + 6);
            v57 = *(a2 + 7);
          }

          else
          {
            if (v40 == 4)
            {
              v41 = *(a2 + 8);
            }

            else
            {
              v41 = 0;
            }

            v57 = 0x3040000000000000;
          }

          *(v36 + 6) = v41;
          *(v36 + 7) = v57;
        }

        else if (v37 == 4)
        {
          v38 = *a2;
          if (*a2 == 1)
          {
            v39 = rint(*(a2 + 4));
          }

          else if (v38 == 2)
          {
            v60 = *(a2 + 6);
            v61 = *(a2 + 7);
            v63 = 0;
            v39 = __bid128_to_uint64_int(v60, v61, &v63);
          }

          else if (v38 == 4)
          {
            v39 = *(a2 + 8);
          }

          else
          {
            v39 = 0;
          }

          *(v36 + 8) = v39;
        }
      }

      else
      {
        v25 = v64;
        if (!DWORD1(v64[0]))
        {
          v26 = -1;
          v27 = 12;
          do
          {
            if (v26 == 14)
            {
              v25 = (a2 + 18);
              goto LABEL_64;
            }

            v28 = *(v64 + v27);
            ++v26;
            v27 += 8;
          }

          while (!v28);
          v25 = v64;
          if (v26 >= 0xF)
          {
            v25 = (a2 + 18);
          }
        }

LABEL_64:
        v47 = *(a1 + 32);
        v48 = *v25;
        v49 = v25[1];
        v50 = v25[2];
        *(v47 + 120) = v25[3];
        *(v47 + 104) = v50;
        *(v47 + 88) = v49;
        *(v47 + 72) = v48;
        v51 = v25[4];
        v52 = v25[5];
        v53 = v25[6];
        *(v47 + 184) = v25[7];
        *(v47 + 168) = v53;
        *(v47 + 152) = v52;
        *(v47 + 136) = v51;
        v54 = *(a1 + 32);
        v55 = *v54;
        if (*v54 == 1)
        {
          if (my_rnd_mode)
          {
            v56 = 4;
          }

          else
          {
            v56 = 0;
          }

          v54[4] = __bid128_to_binary64(v14, v15, v56, my_fpsf);
        }

        else if (v55 == 2)
        {
          *(v54 + 6) = v14;
          *(v54 + 7) = v15;
        }

        else if (v55 == 4)
        {
          v63 = 0;
          *(v54 + 8) = __bid128_to_uint64_int(v14, v15, &v63);
        }
      }
    }

    else
    {
      v16 = *(a1 + 32);
      *(v16 + 204) = v62;
      *(v16 + 48) = v12;
      *(v16 + 56) = v13;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void functionAND(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionAND_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

unint64_t __functionAND_block_invoke(unint64_t result, int *a2, int *a3)
{
  v3 = result;
  if (a2[19])
  {
    goto LABEL_7;
  }

  v5 = -1;
  v6 = 21;
  while (v5 != 14)
  {
    v7 = a2[v6];
    ++v5;
    v6 += 2;
    if (v7)
    {
      if (v5 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (a3[19])
  {
    goto LABEL_7;
  }

  v10 = -1;
  v11 = 21;
  while (v10 != 14)
  {
    v12 = a3[v11];
    ++v10;
    v11 += 2;
    if (v12)
    {
      if (v10 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (g_GeneratingConvertTerm == 1)
  {
LABEL_7:
    v8 = *(result + 32);
    if (g_GeneratingConvertTerm)
    {
      v9 = 11;
    }

    else
    {
      v9 = 9;
    }

    *(v8 + 204) = v9;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    v13 = *a2;
    if (*a2 == 1)
    {
      v14 = rint(*(a2 + 4));
    }

    else if (v13 == 2)
    {
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      v21 = 0;
      v14 = __bid128_to_uint64_int(v15, v16, &v21);
    }

    else if (v13 == 4)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 0;
    }

    v17 = *a3;
    if (*a3 == 1)
    {
      result = rint(*(a3 + 4));
    }

    else if (v17 == 2)
    {
      v18 = *(a3 + 6);
      v19 = *(a3 + 7);
      v22 = 0;
      result = __bid128_to_uint64_int(v18, v19, &v22);
    }

    else if (v17 == 4)
    {
      result = *(a3 + 8);
    }

    else
    {
      result = 0;
    }

    v20 = *(v3 + 32);
    *v20 = 4;
    *(v20 + 64) = result & v14;
  }

  return result;
}

void functionOR(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionOR_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

unint64_t __functionOR_block_invoke(unint64_t result, int *a2, int *a3)
{
  v3 = result;
  if (a2[19])
  {
    goto LABEL_7;
  }

  v5 = -1;
  v6 = 21;
  while (v5 != 14)
  {
    v7 = a2[v6];
    ++v5;
    v6 += 2;
    if (v7)
    {
      if (v5 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (a3[19])
  {
    goto LABEL_7;
  }

  v10 = -1;
  v11 = 21;
  while (v10 != 14)
  {
    v12 = a3[v11];
    ++v10;
    v11 += 2;
    if (v12)
    {
      if (v10 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (g_GeneratingConvertTerm == 1)
  {
LABEL_7:
    v8 = *(result + 32);
    if (g_GeneratingConvertTerm)
    {
      v9 = 11;
    }

    else
    {
      v9 = 9;
    }

    *(v8 + 204) = v9;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    v13 = *a2;
    if (*a2 == 1)
    {
      v14 = rint(*(a2 + 4));
    }

    else if (v13 == 2)
    {
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      v21 = 0;
      v14 = __bid128_to_uint64_int(v15, v16, &v21);
    }

    else if (v13 == 4)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 0;
    }

    v17 = *a3;
    if (*a3 == 1)
    {
      result = rint(*(a3 + 4));
    }

    else if (v17 == 2)
    {
      v18 = *(a3 + 6);
      v19 = *(a3 + 7);
      v22 = 0;
      result = __bid128_to_uint64_int(v18, v19, &v22);
    }

    else if (v17 == 4)
    {
      result = *(a3 + 8);
    }

    else
    {
      result = 0;
    }

    v20 = *(v3 + 32);
    *v20 = 4;
    *(v20 + 64) = result | v14;
  }

  return result;
}

void functionNOR(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionNOR_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

unint64_t __functionNOR_block_invoke(unint64_t result, int *a2, int *a3)
{
  v3 = result;
  if (a2[19])
  {
    goto LABEL_7;
  }

  v5 = -1;
  v6 = 21;
  while (v5 != 14)
  {
    v7 = a2[v6];
    ++v5;
    v6 += 2;
    if (v7)
    {
      if (v5 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (a3[19])
  {
    goto LABEL_7;
  }

  v10 = -1;
  v11 = 21;
  while (v10 != 14)
  {
    v12 = a3[v11];
    ++v10;
    v11 += 2;
    if (v12)
    {
      if (v10 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (g_GeneratingConvertTerm == 1)
  {
LABEL_7:
    v8 = *(result + 32);
    if (g_GeneratingConvertTerm)
    {
      v9 = 11;
    }

    else
    {
      v9 = 9;
    }

    *(v8 + 204) = v9;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    v13 = *a2;
    if (*a2 == 1)
    {
      v14 = rint(*(a2 + 4));
    }

    else if (v13 == 2)
    {
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      v21 = 0;
      v14 = __bid128_to_uint64_int(v15, v16, &v21);
    }

    else if (v13 == 4)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 0;
    }

    v17 = *a3;
    if (*a3 == 1)
    {
      result = rint(*(a3 + 4));
    }

    else if (v17 == 2)
    {
      v18 = *(a3 + 6);
      v19 = *(a3 + 7);
      v22 = 0;
      result = __bid128_to_uint64_int(v18, v19, &v22);
    }

    else if (v17 == 4)
    {
      result = *(a3 + 8);
    }

    else
    {
      result = 0;
    }

    v20 = *(v3 + 32);
    *v20 = 4;
    *(v20 + 64) = ~(result | v14);
  }

  return result;
}

void functionXOR(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionXOR_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

unint64_t __functionXOR_block_invoke(unint64_t result, int *a2, int *a3)
{
  v3 = result;
  if (a2[19])
  {
    goto LABEL_7;
  }

  v5 = -1;
  v6 = 21;
  while (v5 != 14)
  {
    v7 = a2[v6];
    ++v5;
    v6 += 2;
    if (v7)
    {
      if (v5 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (a3[19])
  {
    goto LABEL_7;
  }

  v10 = -1;
  v11 = 21;
  while (v10 != 14)
  {
    v12 = a3[v11];
    ++v10;
    v11 += 2;
    if (v12)
    {
      if (v10 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (g_GeneratingConvertTerm == 1)
  {
LABEL_7:
    v8 = *(result + 32);
    if (g_GeneratingConvertTerm)
    {
      v9 = 11;
    }

    else
    {
      v9 = 9;
    }

    *(v8 + 204) = v9;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    v13 = *a2;
    if (*a2 == 1)
    {
      v14 = rint(*(a2 + 4));
    }

    else if (v13 == 2)
    {
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      v21 = 0;
      v14 = __bid128_to_uint64_int(v15, v16, &v21);
    }

    else if (v13 == 4)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 0;
    }

    v17 = *a3;
    if (*a3 == 1)
    {
      result = rint(*(a3 + 4));
    }

    else if (v17 == 2)
    {
      v18 = *(a3 + 6);
      v19 = *(a3 + 7);
      v22 = 0;
      result = __bid128_to_uint64_int(v18, v19, &v22);
    }

    else if (v17 == 4)
    {
      result = *(a3 + 8);
    }

    else
    {
      result = 0;
    }

    v20 = *(v3 + 32);
    *v20 = 4;
    *(v20 + 64) = result ^ v14;
  }

  return result;
}

void functionLeftShift(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionLeftShift_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

unint64_t __functionLeftShift_block_invoke(unint64_t result, int *a2, int *a3)
{
  v3 = result;
  if (!a2[19])
  {
    v6 = -1;
    v7 = 21;
    while (v6 != 14)
    {
      v8 = a2[v7];
      ++v6;
      v7 += 2;
      if (v8)
      {
        if (v6 < 0xF)
        {
          goto LABEL_7;
        }

        break;
      }
    }

    if (!a3[19])
    {
      v11 = -1;
      v12 = 21;
      while (v11 != 14)
      {
        v13 = a3[v12];
        ++v11;
        v12 += 2;
        if (v13)
        {
          if (v11 < 0xF)
          {
            goto LABEL_7;
          }

          break;
        }
      }

      if (g_GeneratingConvertTerm != 1)
      {
        g_isTrivial = 0;
        v14 = *a3;
        if (*a3 == 1)
        {
          result = rint(*(a3 + 4));
        }

        else if (v14 == 2)
        {
          v15 = *(a3 + 6);
          v16 = *(a3 + 7);
          v25 = 0;
          result = __bid128_to_uint64_int(v15, v16, &v25);
        }

        else
        {
          if (v14 != 4)
          {
            goto LABEL_24;
          }

          result = *(a3 + 8);
        }

        if (result > 0x3F)
        {
          v19 = 0;
LABEL_40:
          v24 = *(v3 + 32);
          *v24 = 4;
          *(v24 + 64) = v19;
          return result;
        }

LABEL_24:
        v17 = *a2;
        if (*a2 == 1)
        {
          v18 = rint(*(a2 + 4));
        }

        else if (v17 == 2)
        {
          v20 = *(a2 + 6);
          v21 = *(a2 + 7);
          v26 = 0;
          v18 = __bid128_to_uint64_int(v20, v21, &v26);
        }

        else if (v17 == 4)
        {
          v18 = *(a2 + 8);
        }

        else
        {
          v18 = 0;
        }

        switch(v14)
        {
          case 1:
            result = rint(*(a3 + 4));
            break;
          case 2:
            v22 = *(a3 + 6);
            v23 = *(a3 + 7);
            v27 = 0;
            result = __bid128_to_uint64_int(v22, v23, &v27);
            break;
          case 4:
            result = *(a3 + 8);
            break;
          default:
            result = 0;
            break;
        }

        v19 = v18 << result;
        goto LABEL_40;
      }
    }
  }

LABEL_7:
  v9 = *(result + 32);
  if (g_GeneratingConvertTerm)
  {
    v10 = 11;
  }

  else
  {
    v10 = 9;
  }

  *(v9 + 204) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0x7C00000000000000;
  return result;
}

void functionRightShift(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionRightShift_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

unint64_t __functionRightShift_block_invoke(unint64_t result, int *a2, int *a3)
{
  v3 = result;
  if (!a2[19])
  {
    v6 = -1;
    v7 = 21;
    while (v6 != 14)
    {
      v8 = a2[v7];
      ++v6;
      v7 += 2;
      if (v8)
      {
        if (v6 < 0xF)
        {
          goto LABEL_7;
        }

        break;
      }
    }

    if (!a3[19])
    {
      v11 = -1;
      v12 = 21;
      while (v11 != 14)
      {
        v13 = a3[v12];
        ++v11;
        v12 += 2;
        if (v13)
        {
          if (v11 < 0xF)
          {
            goto LABEL_7;
          }

          break;
        }
      }

      if (g_GeneratingConvertTerm != 1)
      {
        g_isTrivial = 0;
        v14 = *a3;
        if (*a3 == 1)
        {
          result = rint(*(a3 + 4));
        }

        else if (v14 == 2)
        {
          v15 = *(a3 + 6);
          v16 = *(a3 + 7);
          v25 = 0;
          result = __bid128_to_uint64_int(v15, v16, &v25);
        }

        else
        {
          if (v14 != 4)
          {
            goto LABEL_24;
          }

          result = *(a3 + 8);
        }

        if (result > 0x3F)
        {
          v19 = 0;
LABEL_40:
          v24 = *(v3 + 32);
          *v24 = 4;
          *(v24 + 64) = v19;
          return result;
        }

LABEL_24:
        v17 = *a2;
        if (*a2 == 1)
        {
          v18 = rint(*(a2 + 4));
        }

        else if (v17 == 2)
        {
          v20 = *(a2 + 6);
          v21 = *(a2 + 7);
          v26 = 0;
          v18 = __bid128_to_uint64_int(v20, v21, &v26);
        }

        else if (v17 == 4)
        {
          v18 = *(a2 + 8);
        }

        else
        {
          v18 = 0;
        }

        switch(v14)
        {
          case 1:
            result = rint(*(a3 + 4));
            break;
          case 2:
            v22 = *(a3 + 6);
            v23 = *(a3 + 7);
            v27 = 0;
            result = __bid128_to_uint64_int(v22, v23, &v27);
            break;
          case 4:
            result = *(a3 + 8);
            break;
          default:
            result = 0;
            break;
        }

        v19 = v18 >> result;
        goto LABEL_40;
      }
    }
  }

LABEL_7:
  v9 = *(result + 32);
  if (g_GeneratingConvertTerm)
  {
    v10 = 11;
  }

  else
  {
    v10 = 9;
  }

  *(v9 + 204) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0x7C00000000000000;
  return result;
}