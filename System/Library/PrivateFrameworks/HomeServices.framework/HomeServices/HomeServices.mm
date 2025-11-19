BOOL sub_1D20A0ABC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1D20A0B70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1D20A0C38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D20A0CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D20A0DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D20A0EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D211319C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D20A0F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D211319C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D20A0FC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D21131DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1D2112C2C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1D20A1128(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D21131DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_1D2112C2C();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D20A1284(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D20B98A4(a1, a2);
  }

  return a1;
}

uint64_t sub_1D20A1298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D20A1344(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D211348C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s12HomeServices43Com_Apple_Wpc_Es_ESFeedbackEventAttributionOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12HomeServices43Com_Apple_Wpc_Es_ESFeedbackEventAttributionOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D20A1458(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D20A1474(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1D20A1494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7908, &qword_1D2117378);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D20A15C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7908, &qword_1D2117378);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D20A1714(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1D20F88F0(v7, v8) & 1;
}

uint64_t sub_1D20A1760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2112C2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D20A1820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2112C2C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D20A18DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D211335C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D20A1988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D211335C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D20A1A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2112C2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D20A1AE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2112C2C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D20A1BB8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1D20A1BF8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1D20A1C10()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1D20A1C2C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1D20A1C48(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

BOOL sub_1D20A1C68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_1D20A1CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D20A1DDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D20A1F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D20A203C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D20A2200(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v87 = &v75 - v4;
  v5 = sub_1D211319C();
  v77 = *(v5 - 8);
  v6 = v77[8];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v76 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v86 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = (&v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v91 = (&v75 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v18 = *(v17 - 8);
  v99 = v17 - 8;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v75 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v23 = (v22 - 8);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v75 - v25;
  v90 = sub_1D20AEF10();
  v101 = MEMORY[0x1E69E7CC0];
  sub_1D20DC784(0, v90 & ~(v90 >> 63), 0);
  v97 = v101;
  v27 = a1;
  v28 = v26;
  sub_1D20A8580(v27, v21, &qword_1EC6C7240, &unk_1D21149B0);
  v29 = &v26[v23[13]];
  v88 = v2;
  v30 = *(v2 + 48);
  v31 = v77 + 4;
  v32 = v77[4];
  v33 = v21;
  v32(v29 + v30, v21, v5);
  v34 = v99;
  v35 = *(v99 + 44);
  v93 = v23[11];
  v84 = v32;
  v85 = v31;
  v32(v28 + v93, &v33[v35], v5);
  v36 = v90;
  v37 = *&v33[*(v34 + 48)];
  v83 = v23[12];
  *(v28 + v83) = v37;
  v38 = v77[2];
  v98 = v30;
  v94 = v38;
  v95 = v77 + 2;
  result = (v38)(v28, v29 + v30, v5);
  *v29 = 0;
  v99 = v29;
  *(v29 + 8) = 0;
  if ((v36 & 0x8000000000000000) == 0)
  {
    v96 = v28;
    if (v36)
    {
      v40 = 0;
      v82 = (v77 + 1);
      v78 = (v77 + 5);
      v81 = (v77 + 7);
      v80 = (v77 + 6);
      v41 = v97;
      v42 = v76;
      while (1)
      {
        v92 = v40;
        v94(v42, v99 + v98, v5);
        sub_1D20A85E8(&qword_1EE0843E0);
        if (v37 <= 0.0)
        {
          v43 = v42;
          if (sub_1D211379C())
          {
LABEL_8:
            (*v82)(v43, v5);
            v54 = 1;
            v42 = v43;
            v53 = v89;
            goto LABEL_9;
          }
        }

        else
        {
          v43 = v42;
          if (sub_1D211378C())
          {
            goto LABEL_8;
          }
        }

        v97 = v41;
        v44 = v99;
        v45 = v87;
        sub_1D20A8580(v99, v87, &qword_1EC6C7278, &unk_1D2115720);
        v46 = *v45;
        v47 = *(v45 + 8);
        v48 = *(v88 + 48);
        sub_1D20A85E8(&qword_1EC6C7288);
        v49 = v86;
        v50 = sub_1D2113B1C();
        LOBYTE(v47) = v51;
        (*v82)((v45 + v48), v5);
        *v44 = v50;
        *(v44 + 8) = v47 & 1;
        v52 = v44 + v98;
        v41 = v97;
        (*v78)(v52, v49, v5);
        v53 = v89;
        v84(v89, v43, v5);
        v54 = 0;
        v42 = v43;
LABEL_9:
        (*v81)(v53, v54, 1, v5);
        result = (*v80)(v53, 1, v5);
        if (result == 1)
        {
          goto LABEL_30;
        }

        do
        {
          v100[0] = 0;
          MEMORY[0x1D3896EC0](v100, 8);
        }

        while ((0x20000000000001 * v100[0]) < 0x1FFFFFFFFFF801);
        v55 = (v100[0] * 0x20000000000001uLL) >> 64;
        sub_1D20A862C(v53, &qword_1EC6C7248, &qword_1D2114A80);
        v101 = v41;
        v57 = *(v41 + 16);
        v56 = *(v41 + 24);
        v58 = v92;
        if (v57 >= v56 >> 1)
        {
          sub_1D20DC784((v56 > 1), v57 + 1, 1);
          v42 = v76;
          v41 = v101;
        }

        v40 = (v58 + 1);
        *(v41 + 16) = v57 + 1;
        *(v41 + 8 * v57 + 32) = vcvtd_n_f64_u64(v55, 0x35uLL) + 0.0;
        if (v40 == v90)
        {
          goto LABEL_16;
        }
      }
    }

    v41 = v97;
LABEL_16:
    v92 = (v77 + 1);
    v82 = (v77 + 5);
    v89 = (v77 + 6);
    v90 = (v77 + 7);
    v59 = v79;
    while (1)
    {
      v94(v59, v99 + v98, v5);
      sub_1D20A85E8(&qword_1EE0843E0);
      if (v37 <= 0.0)
      {
        if ((sub_1D211379C() & 1) == 0)
        {
LABEL_19:
          v97 = v41;
          v60 = v99;
          v61 = v87;
          sub_1D20A8580(v99, v87, &qword_1EC6C7278, &unk_1D2115720);
          v62 = *v61;
          v63 = *(v61 + 8);
          v64 = *(v88 + 48);
          sub_1D20A85E8(&qword_1EC6C7288);
          v65 = v86;
          v66 = sub_1D2113B1C();
          LOBYTE(v63) = v67;
          (*v92)(v61 + v64, v5);
          *v60 = v66;
          *(v60 + 8) = v63 & 1;
          v68 = v60 + v98;
          v41 = v97;
          v69 = v65;
          v59 = v79;
          (*v82)(v68, v69, v5);
          v70 = v91;
          v84(v91, v59, v5);
          v71 = 0;
          goto LABEL_22;
        }
      }

      else if ((sub_1D211378C() & 1) == 0)
      {
        goto LABEL_19;
      }

      (*v92)(v59, v5);
      v71 = 1;
      v70 = v91;
LABEL_22:
      (*v90)(v70, v71, 1, v5);
      if ((*v89)(v70, 1, v5) == 1)
      {
        sub_1D20A862C(v96, &qword_1EC6C7280, &qword_1D21149E0);
        sub_1D20A862C(v70, &qword_1EC6C7248, &qword_1D2114A80);
        return v41;
      }

      sub_1D20A862C(v70, &qword_1EC6C7248, &qword_1D2114A80);
      do
      {
        v100[0] = 0;
        MEMORY[0x1D3896EC0](v100, 8);
      }

      while ((0x20000000000001 * v100[0]) < 0x1FFFFFFFFFF801);
      v72 = (v100[0] * 0x20000000000001uLL) >> 64;
      v101 = v41;
      v74 = *(v41 + 16);
      v73 = *(v41 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_1D20DC784((v73 > 1), v74 + 1, 1);
        v41 = v101;
      }

      *(v41 + 16) = v74 + 1;
      *(v41 + 8 * v74 + 32) = vcvtd_n_f64_u64(v72, 0x35uLL) + 0.0;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1D20A2BD0(uint64_t a1, uint64_t a2)
{
  v114 = a2;
  v113 = sub_1D21132CC();
  v91 = *(v113 - 8);
  v3 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1D21132EC();
  v90 = *(v111 - 8);
  v5 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v94 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v89 - v14;
  v15 = sub_1D211319C();
  v92 = *(v15 - 8);
  v16 = v92[8];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v105 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v98 = &v89 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v108 = &v89 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v89 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v25 = *(v24 - 8);
  v123 = v24 - 8;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v89 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v30 = (v29 - 8);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v89 - v32;
  v122 = sub_1D20AEF10();
  v125 = MEMORY[0x1E69E7CC0];
  sub_1D20DC784(0, v122 & ~(v122 >> 63), 0);
  v34 = v125;
  sub_1D20A8580(a1, v28, &qword_1EC6C7240, &unk_1D21149B0);
  v35 = &v33[v30[13]];
  v100 = v7;
  v124 = *(v7 + 48);
  v36 = v92 + 4;
  v37 = v92[4];
  v37(v35 + v124, v28, v15);
  v38 = v123;
  v39 = *(v123 + 44);
  v115 = v30[11];
  v119 = v37;
  v120 = v36;
  v37(&v33[v115], &v28[v39], v15);
  v40 = v122;
  v41 = *&v28[*(v38 + 48)];
  v97 = v30[12];
  *&v33[v97] = v41;
  v42 = v92[2];
  v117 = v92 + 2;
  v118 = v33;
  v116 = v42;
  result = (v42)(v33, v35 + v124, v15);
  *v35 = 0;
  v123 = v35;
  *(v35 + 8) = 0;
  if ((v40 & 0x8000000000000000) == 0)
  {
    v109 = *MEMORY[0x1E6969A58];
    if (v40)
    {
      v107 = (v92 + 1);
      v93 = (v92 + 5);
      v104 = (v92 + 7);
      v103 = (v92 + 6);
      v102 = (v90 + 16);
      v101 = (v91 + 104);
      v96 = (v91 + 8);
      v95 = (v90 + 8);
      v44 = v94;
      do
      {
        v45 = v105;
        v116(v105, v123 + v124, v15);
        sub_1D20A85E8(&qword_1EE0843E0);
        v122 = v40;
        if (v41 <= 0.0)
        {
          if (sub_1D211379C())
          {
LABEL_8:
            v54 = *v107;
            (*v107)(v45, v15);
            v56 = 1;
            goto LABEL_9;
          }
        }

        else if (sub_1D211378C())
        {
          goto LABEL_8;
        }

        v46 = v123;
        v47 = v99;
        sub_1D20A8580(v123, v99, &qword_1EC6C7278, &unk_1D2115720);
        v48 = *v47;
        v49 = *(v47 + 8);
        v50 = *(v100 + 48);
        sub_1D20A85E8(&qword_1EC6C7288);
        v51 = v98;
        v52 = sub_1D2113B1C();
        LOBYTE(v49) = v53;
        v54 = *v107;
        (*v107)(v47 + v50, v15);
        *v46 = v52;
        *(v46 + 8) = v49 & 1;
        v55 = v46 + v124;
        v44 = v94;
        (*v93)(v55, v51, v15);
        v119(v44, v105, v15);
        v56 = 0;
LABEL_9:
        (*v104)(v44, v56, 1, v15);
        result = (*v103)(v44, 1, v15);
        if (result == 1)
        {
          goto LABEL_39;
        }

        v57 = v110;
        v58 = v111;
        (*v102)(v110, v114, v111);
        v60 = v112;
        v59 = v113;
        (*v101)(v112, v109, v113);
        v61 = sub_1D21132DC();
        (*v96)(v60, v59);
        (*v95)(v57, v58);
        v62 = 0.1;
        if (v61 >= 5)
        {
          v62 = 0.25;
          if (v61 - 9 <= 0xFFFFFFFFFFFFFFFBLL)
          {
            v62 = 0.4;
            if (v61 - 13 <= 0xFFFFFFFFFFFFFFFBLL)
            {
              v62 = 0.5;
              if (v61 - 17 <= 0xFFFFFFFFFFFFFFFBLL)
              {
                if (v61 - 21 >= 0xFFFFFFFFFFFFFFFCLL)
                {
                  v62 = 0.6;
                }

                else
                {
                  v62 = 0.8;
                }
              }
            }
          }
        }

        (v54)(v44, v15);
        v125 = v34;
        v64 = *(v34 + 2);
        v63 = *(v34 + 3);
        v65 = v122;
        if (v64 >= v63 >> 1)
        {
          sub_1D20DC784((v63 > 1), v64 + 1, 1);
          v34 = v125;
        }

        *(v34 + 2) = v64 + 1;
        *&v34[8 * v64 + 32] = v62;
        v40 = v65 - 1;
      }

      while (v40);
    }

    v122 = (v92 + 1);
    v96 = (v92 + 5);
    v66 = (v92 + 7);
    v107 = (v92 + 6);
    v104 = (v90 + 16);
    v103 = (v91 + 104);
    v102 = (v91 + 8);
    v101 = (v90 + 8);
    while (1)
    {
      v67 = v108;
      v116(v108, v123 + v124, v15);
      sub_1D20A85E8(&qword_1EE0843E0);
      if (v41 <= 0.0)
      {
        if ((sub_1D211379C() & 1) == 0)
        {
LABEL_23:
          v105 = v34;
          v68 = v66;
          v69 = v123;
          v70 = v99;
          sub_1D20A8580(v123, v99, &qword_1EC6C7278, &unk_1D2115720);
          v71 = *v70;
          v72 = *(v70 + 8);
          v73 = *(v100 + 48);
          sub_1D20A85E8(&qword_1EC6C7288);
          v74 = v98;
          v75 = sub_1D2113B1C();
          LOBYTE(v72) = v76;
          v77 = *v122;
          (*v122)(v70 + v73, v15);
          *v69 = v75;
          *(v69 + 8) = v72 & 1;
          v78 = v69 + v124;
          v66 = v68;
          v34 = v105;
          (*v96)(v78, v74, v15);
          v79 = v106;
          v119(v106, v108, v15);
          v80 = 0;
          goto LABEL_26;
        }
      }

      else if ((sub_1D211378C() & 1) == 0)
      {
        goto LABEL_23;
      }

      v77 = *v122;
      (*v122)(v67, v15);
      v80 = 1;
      v79 = v106;
LABEL_26:
      (*v66)(v79, v80, 1, v15);
      if ((*v107)(v79, 1, v15) == 1)
      {
        sub_1D20A862C(v118, &qword_1EC6C7280, &qword_1D21149E0);
        sub_1D20A862C(v79, &qword_1EC6C7248, &qword_1D2114A80);
        return v34;
      }

      v119(v121, v79, v15);
      v81 = v110;
      v82 = v111;
      (*v104)(v110, v114, v111);
      v84 = v112;
      v83 = v113;
      (*v103)(v112, v109, v113);
      v85 = sub_1D21132DC();
      (*v102)(v84, v83);
      (*v101)(v81, v82);
      v86 = 0.1;
      if (v85 >= 5)
      {
        v86 = 0.25;
        if (v85 - 9 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          v86 = 0.4;
          if (v85 - 13 <= 0xFFFFFFFFFFFFFFFBLL)
          {
            v86 = 0.5;
            if (v85 - 17 <= 0xFFFFFFFFFFFFFFFBLL)
            {
              if (v85 - 21 >= 0xFFFFFFFFFFFFFFFCLL)
              {
                v86 = 0.6;
              }

              else
              {
                v86 = 0.8;
              }
            }
          }
        }
      }

      v77(v121, v15);
      v125 = v34;
      v88 = *(v34 + 2);
      v87 = *(v34 + 3);
      if (v88 >= v87 >> 1)
      {
        sub_1D20DC784((v87 > 1), v88 + 1, 1);
        v34 = v125;
      }

      *(v34 + 2) = v88 + 1;
      *&v34[8 * v88 + 32] = v86;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1D20A3A20()
{
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v0 = *(*(v139 - 8) + 64);
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v137 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v142 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v143 = &v137 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v144 = &v137 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v145 = &v137 - v10;
  v151 = sub_1D211319C();
  v147 = *(v151 - 8);
  v11 = v147[8];
  v12 = MEMORY[0x1EEE9AC00](v151);
  v149 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v137 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v137 - v17;
  v18 = sub_1D2112C6C();
  v158 = *(v18 - 8);
  v19 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v159 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v137 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v137 - v27;
  v29 = sub_1D2112D0C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v148 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  v33 = sub_1D2112F9C();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v24, 1, v33) == 1)
  {
    goto LABEL_50;
  }

  sub_1D2112CCC();
  (*(v34 + 8))(v24, v33);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v146 = v16;
  v137 = v30;
  v35 = *(v30 + 32);
  v138 = v29;
  v35(v148, v28, v29);
  v36 = sub_1D2112C7C();
  if (!v36)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v37 = v36;
  v38 = sub_1D20CE7A8(MEMORY[0x1E69E7CC0]);
  v157 = *(v37 + 16);
  if (v157)
  {
    v39 = 0;
    v156 = v37 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
    v154 = (v158 + 8);
    v155 = v158 + 16;
    v152 = v37;
    v153 = v18;
    do
    {
      if (v39 >= *(v37 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      (*(v158 + 16))(v159, v156 + *(v158 + 72) * v39, v18);
      v42 = sub_1D2112C4C();
      v44 = v43;
      v45 = sub_1D2112C5C();
      if (!v46)
      {
        v59 = sub_1D20E4570(v42, v44);
        v61 = v60;

        if (v61)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v160 = v38;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1D20E7990();
            v38 = v160;
          }

          v40 = *(v38[6] + 16 * v59 + 8);

          v41 = *(v38[7] + 16 * v59 + 8);

          sub_1D20E7368(v59, v38);
        }

        (*v154)(v159, v18);
        goto LABEL_8;
      }

      v47 = v46;
      v48 = v45;
      v49 = v38;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v160 = v49;
      v52 = sub_1D20E4570(v42, v44);
      v53 = v49[2];
      v54 = (v51 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_43;
      }

      v56 = v51;
      if (v49[3] >= v55)
      {
        if (v50)
        {
          if ((v51 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1D20E7990();
          if ((v56 & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_1D20E68BC(v55, v50);
        v57 = sub_1D20E4570(v42, v44);
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_55;
        }

        v52 = v57;
        if ((v56 & 1) == 0)
        {
LABEL_23:
          v65 = v159;
          v38 = v160;
          v160[(v52 >> 6) + 8] |= 1 << v52;
          v66 = (v38[6] + 16 * v52);
          *v66 = v42;
          v66[1] = v44;
          v67 = (v38[7] + 16 * v52);
          *v67 = v48;
          v67[1] = v47;
          v18 = v153;
          (*v154)(v65, v153);
          v68 = v38[2];
          v69 = __OFADD__(v68, 1);
          v70 = v68 + 1;
          if (v69)
          {
            goto LABEL_44;
          }

          v38[2] = v70;
          goto LABEL_25;
        }
      }

      v38 = v160;
      v63 = (v160[7] + 16 * v52);
      v64 = v63[1];
      *v63 = v48;
      v63[1] = v47;

      v18 = v153;
      (*v154)(v159, v153);
LABEL_25:
      v37 = v152;
LABEL_8:
      ++v39;
    }

    while (v157 != v39);
  }

  if (!v38[2])
  {
    goto LABEL_45;
  }

  v71 = sub_1D20E4570(0x61642D7472617473, 0xEA00000000006574);
  if ((v72 & 1) == 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v159 = v38;
  v73 = (v38[7] + 16 * v71);
  v74 = *v73;
  v75 = v73[1];
  v76 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v77 = [v76 init];
  [v77 setFormatOptions_];
  v78 = sub_1D21137BC();

  v79 = [v77 dateFromString_];

  if (v79)
  {
    v80 = v144;
    sub_1D211316C();

    v81 = 0;
    v83 = v150;
    v82 = v151;
    v84 = v147;
    v85 = v145;
  }

  else
  {
    v81 = 1;
    v83 = v150;
    v82 = v151;
    v84 = v147;
    v85 = v145;
    v80 = v144;
  }

  v158 = v84[7];
  (v158)(v80, v81, 1, v82);
  sub_1D20A84BC(v80, v85);
  v86 = v84[6];
  if (v86(v85, 1, v82) == 1)
  {
    goto LABEL_53;
  }

  v87 = v84[4];
  v87(v83, v85, v82);
  v88 = v159;
  if (!*(v159 + 2))
  {
    goto LABEL_47;
  }

  v89 = sub_1D20E4570(0x657461642D646E65, 0xE800000000000000);
  if ((v90 & 1) == 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v157 = v87;
  v91 = (*(v88 + 7) + 16 * v89);
  v92 = *v91;
  v93 = v91[1];
  v94 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v95 = [v94 init];
  [v95 setFormatOptions_];
  v96 = sub_1D21137BC();

  v97 = [v95 dateFromString_];

  if (v97)
  {
    v98 = v142;
    sub_1D211316C();

    v99 = 0;
    v100 = v151;
    v101 = v147;
  }

  else
  {
    v99 = 1;
    v100 = v151;
    v101 = v147;
    v98 = v142;
  }

  (v158)(v98, v99, 1, v100);
  v102 = v143;
  sub_1D20A84BC(v98, v143);
  if (v86(v102, 1, v100) != 1)
  {

    v103 = v146;
    v157(v146, v102, v100);
    sub_1D211317C();
    if (sub_1D21130FC())
    {
      (v101[1])(v103, v100);
      (v101[2])(v103, v149, v100);
    }

    sub_1D2113F5C();
    v104 = sub_1D2113F4C();
    if (v104)
    {
      v105 = v104;
      v106 = v101[2];
      v107 = v140;
      v106(v140, v150, v100);
      v108 = v139;
      v106((v107 + *(v139 + 36)), v103, v100);
      *(v107 + *(v108 + 40)) = v105;
      v109 = v141;
      v157 = sub_1D20A2200(v107);
      v159 = v109;
      sub_1D20A862C(v107, &qword_1EC6C7240, &unk_1D21149B0);
      v110 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v110 setFormatOptions_];
      v111 = sub_1D21130EC();
      v112 = [v110 stringFromDate_];

      v158 = sub_1D21137CC();
      v156 = v113;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7268, &unk_1D21149D0);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1D2114850;
      v115 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v115 setFormatOptions_];
      v116 = sub_1D21130EC();
      v117 = [v115 stringFromDate_];

      v118 = sub_1D21137CC();
      v120 = v119;

      v121 = objc_allocWithZone(MEMORY[0x1E696AC80]);
      v122 = v157;
      v123 = [v121 init];
      [v123 setFormatOptions_];
      v124 = sub_1D21130EC();
      v125 = [v123 stringFromDate_];

      v126 = sub_1D21137CC();
      v128 = v127;

      *(v114 + 32) = v118;
      *(v114 + 40) = v120;
      *(v114 + 48) = v126;
      *(v114 + 56) = v128;
      v129 = v156;
      *(v114 + 64) = xmmword_1D2114860;
      v130 = sub_1D2112B7C();
      v131 = *(v130 + 48);
      v132 = *(v130 + 52);
      swift_allocObject();
      sub_1D2112B6C();
      v160 = v158;
      v161 = v129;
      v162 = 0x4D30335450;
      v163 = 0xE500000000000000;
      v164 = v122;
      v165 = v114;
      sub_1D20A852C();
      v133 = sub_1D2112B5C();

      v134 = v101[1];
      v135 = v151;
      v134(v149, v151);
      v134(v146, v135);
      v134(v150, v135);
      (*(v137 + 8))(v148, v138);

      return v133;
    }

    goto LABEL_49;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

uint64_t sub_1D20A481C()
{
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v0 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161);
  v162 = &v158 - v1;
  v167 = sub_1D211320C();
  v166 = *(v167 - 8);
  v2 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v168 = &v158 - v6;
  v170 = sub_1D211335C();
  v169 = *(v170 - 8);
  v7 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v164 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v171 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v172 = &v158 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v173 = &v158 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v174 = &v158 - v17;
  v18 = sub_1D211319C();
  v179 = *(v18 - 8);
  v180 = v18;
  v19 = *(v179 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v177 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v175 = &v158 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v178 = &v158 - v24;
  v25 = sub_1D2112C6C();
  v188 = *(v25 - 8);
  v26 = v188[8];
  MEMORY[0x1EEE9AC00](v25);
  v182 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v158 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v158 - v34;
  v36 = sub_1D2112D0C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v176 = &v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  v40 = sub_1D2112F9C();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v31, 1, v40) == 1)
  {
    goto LABEL_51;
  }

  sub_1D2112CCC();
  (*(v41 + 8))(v31, v40);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  (*(v37 + 32))(v176, v35, v36);
  v42 = sub_1D2112C7C();
  v43 = v182;
  if (!v42)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v44 = v42;
  v159 = v37;
  v160 = v36;
  v45 = sub_1D20CE7A8(MEMORY[0x1E69E7CC0]);
  v187 = *(v44 + 16);
  if (v187)
  {
    v46 = 0;
    v186 = v44 + ((*(v188 + 80) + 32) & ~*(v188 + 80));
    v184 = (v188 + 1);
    v185 = (v188 + 2);
    v183 = v44;
    v181 = v25;
    do
    {
      if (v46 >= *(v44 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      (v188[2])(v43, v186 + v188[9] * v46, v25);
      v49 = sub_1D2112C4C();
      v51 = v50;
      v52 = sub_1D2112C5C();
      if (!v53)
      {
        v71 = sub_1D20E4570(v49, v51);
        v73 = v72;

        if (v73)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v189 = v45;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1D20E7990();
            v45 = v189;
          }

          v47 = *(v45[6] + 16 * v71 + 8);

          v48 = *(v45[7] + 16 * v71 + 8);

          sub_1D20E7368(v71, v45);
        }

        (*v184)(v43, v25);
        goto LABEL_8;
      }

      v54 = v53;
      v55 = v52;
      v56 = v45;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v189 = v56;
      v59 = sub_1D20E4570(v49, v51);
      v60 = v56[2];
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_44;
      }

      v63 = v58;
      if (v56[3] >= v62)
      {
        if (v57)
        {
          if (v58)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_1D20E7990();
          if (v63)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        sub_1D20E68BC(v62, v57);
        v64 = sub_1D20E4570(v49, v51);
        if ((v63 & 1) != (v65 & 1))
        {
          goto LABEL_58;
        }

        v59 = v64;
        if (v63)
        {
LABEL_22:

          v45 = v189;
          v75 = (v189[7] + 16 * v59);
          v76 = v75[1];
          *v75 = v55;
          v75[1] = v54;

          v25 = v181;
          v43 = v182;
          (*v184)(v182, v181);
          goto LABEL_8;
        }
      }

      v45 = v189;
      v189[(v59 >> 6) + 8] |= 1 << v59;
      v66 = (v45[6] + 16 * v59);
      *v66 = v49;
      v66[1] = v51;
      v67 = (v45[7] + 16 * v59);
      *v67 = v55;
      v67[1] = v54;
      v25 = v181;
      v43 = v182;
      (*v184)(v182, v181);
      v68 = v45[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_45;
      }

      v45[2] = v70;
LABEL_8:
      v44 = v183;
      ++v46;
    }

    while (v187 != v46);
  }

  if (!v45[2])
  {
    goto LABEL_46;
  }

  v77 = sub_1D20E4570(0x61642D7472617473, 0xEA00000000006574);
  if ((v78 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v188 = v45;
  v79 = (v45[7] + 16 * v77);
  v80 = *v79;
  v81 = v79[1];
  v82 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v83 = [v82 init];
  [v83 setFormatOptions_];
  v84 = sub_1D21137BC();

  v85 = [v83 dateFromString_];

  if (v85)
  {
    v86 = v173;
    sub_1D211316C();

    v87 = 0;
    v89 = v179;
    v88 = v180;
    v90 = v178;
    v91 = v174;
  }

  else
  {
    v87 = 1;
    v89 = v179;
    v88 = v180;
    v90 = v178;
    v91 = v174;
    v86 = v173;
  }

  v92 = v89[7];
  v92(v86, v87, 1, v88);
  sub_1D20A84BC(v86, v91);
  v93 = v89[6];
  v94 = v93(v91, 1, v88);
  v95 = v188;
  if (v94 == 1)
  {
    goto LABEL_54;
  }

  v187 = v89[4];
  v187(v90, v91, v88);
  if (!v95[2])
  {
    goto LABEL_48;
  }

  v96 = sub_1D20E4570(0x657461642D646E65, 0xE800000000000000);
  if ((v97 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v98 = (v95[7] + 16 * v96);
  v99 = *v98;
  v100 = v98[1];
  v101 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v102 = [v101 init];
  [v102 setFormatOptions_];
  v103 = sub_1D21137BC();

  v104 = [v102 dateFromString_];

  if (v104)
  {
    v105 = v171;
    sub_1D211316C();

    v106 = 0;
    v107 = v180;
    v108 = v172;
  }

  else
  {
    v106 = 1;
    v107 = v180;
    v108 = v172;
    v105 = v171;
  }

  v92(v105, v106, 1, v107);
  sub_1D20A84BC(v105, v108);
  if (v93(v108, 1, v107) == 1)
  {
    goto LABEL_55;
  }

  v109 = v175;
  v187(v175, v108, v107);
  v110 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v111 = sub_1D21137BC();
  [v110 setDateFormat_];

  v112 = v168;
  sub_1D211332C();
  v113 = v169;
  v114 = v170;
  if ((*(v169 + 48))(v112, 1, v170) != 1)
  {
    v115 = v164;
    (*(v113 + 32))(v164, v112, v114);
    v116 = sub_1D211333C();
    (*(v113 + 8))(v115, v114);
    [v110 setTimeZone_];

    v117 = v165;
    sub_1D21131EC();
    v118 = sub_1D21131FC();
    (*(v166 + 8))(v117, v167);
    [v110 setLocale_];

    v119 = sub_1D21137BC();
    v120 = [v110 dateFromString_];

    if (!v120)
    {
      goto LABEL_57;
    }

    sub_1D211316C();

    v121 = sub_1D211310C();
    v122 = v179;
    if (v121)
    {
      v123 = v180;
      (*(v179 + 8))(v109, v180);
      (*(v122 + 16))(v109, v177, v123);
    }

    sub_1D2113F5C();
    v124 = sub_1D2113F4C();
    if (v124)
    {
      v188 = v110;
      v125 = v124;
      v126 = *(v122 + 16);
      v127 = v162;
      v128 = v109;
      v129 = v180;
      v126(v162, v178, v180);
      v130 = v161;
      v126((v127 + *(v161 + 36)), v128, v129);
      *(v127 + *(v130 + 40)) = v125;
      v131 = v163;
      v186 = sub_1D20A2200(v127);
      v187 = v131;
      sub_1D20A862C(v127, &qword_1EC6C7240, &unk_1D21149B0);
      v132 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v132 setFormatOptions_];
      v133 = sub_1D21130EC();
      v134 = [v132 stringFromDate_];

      v135 = sub_1D21137CC();
      v184 = v136;
      v185 = v135;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7268, &unk_1D21149D0);
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_1D2114850;
      v138 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v138 setFormatOptions_];
      v139 = sub_1D21130EC();
      v140 = [v138 stringFromDate_];

      v141 = sub_1D21137CC();
      v143 = v142;

      v144 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v144 setFormatOptions_];
      v145 = sub_1D21130EC();
      v146 = [v144 &off_1E83F6478];

      v147 = sub_1D21137CC();
      v149 = v148;

      v150 = v186;
      *(v137 + 32) = v141;
      *(v137 + 40) = v143;
      v151 = v184;
      *(v137 + 48) = v147;
      *(v137 + 56) = v149;
      *(v137 + 64) = xmmword_1D2114860;
      v152 = sub_1D2112B7C();
      v153 = *(v152 + 48);
      v154 = *(v152 + 52);
      swift_allocObject();
      sub_1D2112B6C();
      v189 = v185;
      v190 = v151;
      v191 = 0x4D30335450;
      v192 = 0xE500000000000000;
      v193 = v150;
      v194 = v137;
      sub_1D20A852C();
      v155 = sub_1D2112B5C();

      v156 = *(v179 + 8);
      v156(v177, v129);
      v156(v175, v129);
      v156(v178, v129);
      (*(v159 + 8))(v176, v160);

      return v155;
    }

    goto LABEL_50;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

uint64_t sub_1D20A5958(uint64_t a1)
{
  v243 = a1;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v1 = *(*(v208 - 8) + 64);
  MEMORY[0x1EEE9AC00](v208);
  v209 = v204 - v2;
  v230 = sub_1D2112E7C();
  v219 = *(v230 - 8);
  v3 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v229 = v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_1D21132CC();
  v234 = *(v233 - 8);
  v5 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v233);
  v232 = v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7290, &qword_1D21149E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v235 = v204 - v9;
  v231 = sub_1D2112C2C();
  v221 = *(v231 - 8);
  v10 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v228 = v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v222 = (v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v223 = v204 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v224 = v204 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v225 = (v204 - v20);
  v240 = sub_1D211319C();
  v215 = *(v240 - 8);
  v21 = v215[8];
  v22 = MEMORY[0x1EEE9AC00](v240);
  v246 = v204 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v237 = v204 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v211 = v204 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v236 = v204 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v216 = v204 - v30;
  v226 = sub_1D2112C6C();
  v244 = *(v226 - 1);
  v31 = *(v244 + 8);
  MEMORY[0x1EEE9AC00](v226);
  v227 = v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = v204 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v242 = v204 - v39;
  v214 = sub_1D2112D0C();
  v213 = *(v214 - 8);
  v40 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v212 = v204 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = v204 - v44;
  v46 = sub_1D211335C();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = v204 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D211321C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v55 = v204 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1D21132EC();
  v206 = *(v207 - 8);
  v56 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v58 = v204 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v52 + 104))(v55, *MEMORY[0x1E6969868], v51);
  sub_1D211322C();
  (*(v52 + 8))(v55, v51);
  sub_1D211332C();
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    goto LABEL_69;
  }

  (*(v47 + 32))(v50, v45, v46);
  v245 = v58;
  sub_1D21132BC();
  sub_1D2112ADC();
  v59 = sub_1D2112F9C();
  v60 = *(v59 - 8);
  if ((*(v60 + 48))(v36, 1, v59) == 1)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v61 = v242;
  sub_1D2112CCC();
  (*(v60 + 8))(v36, v59);
  v62 = v213;
  v63 = v214;
  v64 = (*(v213 + 48))(v61, 1, v214);
  v65 = v226;
  v66 = v227;
  if (v64 == 1)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  (*(v62 + 32))(v212, v61, v63);
  v67 = sub_1D2112C7C();
  if (!v67)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v68 = v67;
  v69 = sub_1D20CE7A8(MEMORY[0x1E69E7CC0]);
  v243 = v68[2];
  if (v243)
  {
    v70 = 0;
    v242 = v68 + ((v244[80] + 32) & ~v244[80]);
    v241 = (v244 + 16);
    v238 = v68;
    v239 = (v244 + 8);
    while (v70 < v68[2])
    {
      (*(v244 + 2))(v66, &v242[*(v244 + 9) * v70], v65);
      v73 = sub_1D2112C4C();
      v75 = v74;
      v76 = sub_1D2112C5C();
      if (v77)
      {
        v78 = v77;
        v79 = v76;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v247 = v69;
        v82 = sub_1D20E4570(v73, v75);
        v83 = v69;
        v84 = v69[2];
        v85 = (v81 & 1) == 0;
        v86 = v84 + v85;
        if (__OFADD__(v84, v85))
        {
          goto LABEL_61;
        }

        v87 = v81;
        if (v83[3] >= v86)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D20E7990();
          }
        }

        else
        {
          sub_1D20E68BC(v86, isUniquelyReferenced_nonNull_native);
          v88 = sub_1D20E4570(v73, v75);
          if ((v87 & 1) != (v89 & 1))
          {
            goto LABEL_75;
          }

          v82 = v88;
        }

        v65 = v226;
        if (v87)
        {

          v69 = v247;
          v96 = (v247[7] + 16 * v82);
          v97 = v96[1];
          *v96 = v79;
          v96[1] = v78;

          v66 = v227;
          (*v239)(v227, v65);
        }

        else
        {
          v69 = v247;
          v247[(v82 >> 6) + 8] |= 1 << v82;
          v98 = (v69[6] + 16 * v82);
          *v98 = v73;
          v98[1] = v75;
          v99 = (v69[7] + 16 * v82);
          *v99 = v79;
          v99[1] = v78;
          v66 = v227;
          (*v239)(v227, v65);
          v100 = v69[2];
          v101 = __OFADD__(v100, 1);
          v102 = v100 + 1;
          if (v101)
          {
            goto LABEL_62;
          }

          v69[2] = v102;
        }

        v68 = v238;
      }

      else
      {
        v90 = sub_1D20E4570(v73, v75);
        v91 = v69;
        v92 = v90;
        v94 = v93;

        if (v94)
        {
          v95 = swift_isUniquelyReferenced_nonNull_native();
          v247 = v91;
          if (!v95)
          {
            sub_1D20E7990();
            v91 = v247;
          }

          v71 = *(*(v91 + 48) + 16 * v92 + 8);

          v72 = *(*(v91 + 56) + 16 * v92 + 8);

          sub_1D20E7368(v92, v91);
        }

        (*v239)(v66, v65);
        v68 = v238;
        v69 = v91;
      }

      if (v243 == ++v70)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_26:

  if (!v69[2])
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v103 = sub_1D20E4570(0x61642D7472617473, 0xEA00000000006574);
  if ((v104 & 1) == 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v105 = v69;
  v106 = (v69[7] + 16 * v103);
  v107 = *v106;
  v108 = v106[1];
  v109 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v110 = [v109 init];
  [v110 setFormatOptions_];
  v111 = sub_1D21137BC();

  v112 = [v110 dateFromString_];

  if (v112)
  {
    v113 = v224;
    sub_1D211316C();

    v114 = 0;
    v115 = v215;
    v116 = v225;
  }

  else
  {
    v114 = 1;
    v115 = v215;
    v116 = v225;
    v113 = v224;
  }

  v117 = v115[7];
  v118 = v240;
  v117(v113, v114, 1, v240);
  sub_1D20A84BC(v113, v116);
  v119 = v115[6];
  if (v119(v116, 1, v118) == 1)
  {
    goto LABEL_73;
  }

  v238 = v115[4];
  v239 = (v115 + 4);
  (v238)(v216, v116, v118);
  if (!v105[2])
  {
    goto LABEL_65;
  }

  v120 = sub_1D20E4570(0x657461642D646E65, 0xE800000000000000);
  if ((v121 & 1) == 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v122 = (v105[7] + 16 * v120);
  v123 = *v122;
  v124 = v122[1];
  v125 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v126 = [v125 init];
  [v126 setFormatOptions_];
  v127 = sub_1D21137BC();

  v128 = [v126 dateFromString_];

  if (v128)
  {
    v129 = v222;
    sub_1D211316C();

    v130 = 0;
    v131 = v223;
  }

  else
  {
    v130 = 1;
    v131 = v223;
    v129 = v222;
  }

  v132 = v240;
  v117(v129, v130, 1, v240);
  sub_1D20A84BC(v129, v131);
  v133 = v119(v131, 1, v132);
  v134 = v215;
  if (v133 != 1)
  {

    v135 = v236;
    (v238)(v236, v131, v132);
    v136 = v211;
    sub_1D211317C();
    v137 = sub_1D21130FC();
    v138 = v245;
    if (v137)
    {
      (v134[1])(v135, v132);
      v139 = v134[2];
      v140 = (v134 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v139(v135, v136, v132);
    }

    else
    {
      v139 = v134[2];
      v140 = (v134 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    }

    v141 = v235;
    v205 = v139;
    v204[1] = v140;
    v139(v237, v216, v132);
    if (sub_1D211310C())
    {
      LODWORD(v227) = *MEMORY[0x1E6969A48];
      v142 = *(v234 + 104);
      v226 = (v234 + 8);
      v225 = (v221 + 48);
      v222 = (v221 + 32);
      v221 += 8;
      v220 = *MEMORY[0x1E6969A78];
      v219 += 8;
      v143 = MEMORY[0x1E69E7CC0];
      v218 = (v134 + 1);
      v217 = xmmword_1D2114850;
      v224 = (v234 + 104);
      v223 = v142;
      while (1)
      {
        v244 = v143;
        v151 = v232;
        v152 = v233;
        (v142)(v232, v227, v233);
        sub_1D211323C();
        v153 = *v226;
        (*v226)(v151, v152);
        v154 = v231;
        if ((*v225)(v141, 1, v231) == 1)
        {
          goto LABEL_68;
        }

        v155 = v228;
        (*v222)(v228, v141, v154);
        sub_1D2112BDC();
        (*v221)(v155, v154);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
        v156 = *(v234 + 72);
        v157 = (*(v234 + 80) + 32) & ~*(v234 + 80);
        v158 = swift_allocObject();
        *(v158 + 16) = v217;
        (v142)(v158 + v157, v220, v152);
        sub_1D20BFD3C(v158);
        swift_setDeallocating();
        v153(v158 + v157, v152);
        swift_deallocClassInstance();
        v159 = v229;
        sub_1D211324C();

        v241 = sub_1D2112DFC();
        v161 = v160;
        (*v219)(v159, v230);
        v162 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
        [v162 setFormatOptions_];
        v163 = sub_1D21130EC();
        v164 = [v162 stringFromDate_];

        v165 = sub_1D21137CC();
        v242 = v166;
        v243 = v165;

        v167 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
        [v167 setFormatOptions_];
        v168 = sub_1D21130EC();
        v169 = [v167 stringFromDate_];

        v170 = sub_1D21137CC();
        v172 = v171;

        v143 = v244;
        v173 = swift_isUniquelyReferenced_nonNull_native();
        if ((v161 & 1) != 0 || v241 <= 6)
        {
          if ((v173 & 1) == 0)
          {
            v143 = sub_1D20B6D80(0, *(v143 + 2) + 1, 1, v143);
          }

          v142 = v223;
          v175 = *(v143 + 2);
          v177 = *(v143 + 3);
          v176 = v175 + 1;
          if (v175 >= v177 >> 1)
          {
            v143 = sub_1D20B6D80((v177 > 1), v175 + 1, 1, v143);
          }

          v144 = 0.7;
          v145 = 0x3FD3333333333333;
        }

        else
        {
          if ((v173 & 1) == 0)
          {
            v143 = sub_1D20B6D80(0, *(v143 + 2) + 1, 1, v143);
          }

          v142 = v223;
          v175 = *(v143 + 2);
          v174 = *(v143 + 3);
          v176 = v175 + 1;
          v144 = 0.75;
          if (v175 >= v174 >> 1)
          {
            v143 = sub_1D20B6D80((v174 > 1), v175 + 1, 1, v143);
          }

          v145 = 0x3FE199999999999ALL;
        }

        v146 = v237;
        v147 = v240;
        (*v218)(v237, v240);
        *(v143 + 2) = v176;
        v148 = &v143[48 * v175];
        v149 = v242;
        *(v148 + 4) = v243;
        *(v148 + 5) = v149;
        *(v148 + 6) = v170;
        *(v148 + 7) = v172;
        *(v148 + 8) = v145;
        v148[9] = v144;
        (v238)(v146, v246, v147);
        v135 = v236;
        v150 = sub_1D211310C();
        v141 = v235;
        v138 = v245;
        if ((v150 & 1) == 0)
        {
          goto LABEL_58;
        }
      }
    }

    v143 = MEMORY[0x1E69E7CC0];
LABEL_58:
    sub_1D2113F5C();
    v178 = sub_1D2113F4C();
    if (v178)
    {
      v179 = v178;
      v180 = v209;
      v181 = v138;
      v182 = v240;
      v183 = v205;
      v205(v209, v216, v240);
      v184 = v208;
      v183(v180 + *(v208 + 36), v135, v182);
      *(v180 + *(v184 + 40)) = v179;
      v185 = v210;
      v186 = sub_1D20A2BD0(v180, v181);
      v246 = v185;
      v187 = v180;
      v188 = v186;
      sub_1D20A862C(v187, &qword_1EC6C7240, &unk_1D21149B0);
      v189 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v189 setFormatOptions_];
      v190 = sub_1D21130EC();
      v191 = v135;
      v192 = [v189 stringFromDate_];

      v193 = sub_1D21137CC();
      v195 = v194;

      v196 = sub_1D2112B7C();
      v197 = *(v196 + 48);
      v198 = *(v196 + 52);
      swift_allocObject();
      sub_1D2112B6C();
      v247 = v193;
      v248 = v195;
      v249 = 0x4D30335450;
      v250 = 0xE500000000000000;
      v251 = v188;
      v252 = v143;
      sub_1D20A852C();
      v199 = sub_1D2112B5C();
      v246 = v200;

      v201 = v215[1];
      v202 = v240;
      v201(v237, v240);
      v201(v211, v202);
      v201(v191, v202);
      v201(v216, v202);
      (*(v213 + 8))(v212, v214);

      (*(v206 + 8))(v245, v207);
      return v199;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_74:
  __break(1u);
LABEL_75:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

uint64_t sub_1D20A7104()
{
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v0 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v172 = &v170 - v1;
  v184 = sub_1D21132CC();
  v183 = *(v184 - 8);
  v2 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v181 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1D21132EC();
  v180 = *(v182 - 8);
  v4 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v178 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v179 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v185 = &v170 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v186 = &v170 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v187 = &v170 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v188 = &v170 - v16;
  v190 = sub_1D211319C();
  v194 = *(v190 - 8);
  v17 = *(v194 + 64);
  v18 = MEMORY[0x1EEE9AC00](v190);
  v173 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v177 = &v170 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v170 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v170 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v170 - v28;
  v196 = sub_1D2112C6C();
  v202 = *(v196 - 8);
  v30 = *(v202 + 8);
  MEMORY[0x1EEE9AC00](v196);
  v197 = &v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v170 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v170 - v38;
  v40 = sub_1D2112D0C();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v191 = &v170 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  v44 = sub_1D2112F9C();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v35, 1, v44) == 1)
  {
    goto LABEL_56;
  }

  sub_1D2112CCC();
  (*(v45 + 8))(v35, v44);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v189 = v24;
  v192 = v27;
  v193 = v29;
  v174 = v41;
  v46 = *(v41 + 32);
  v175 = v40;
  v46(v191, v39, v40);
  v47 = sub_1D2112C7C();
  v48 = v197;
  if (v47)
  {
    v49 = v47;
    v50 = sub_1D20CE7A8(MEMORY[0x1E69E7CC0]);
    v51 = v196;
    v201 = *(v49 + 16);
    if (v201)
    {
      v52 = 0;
      v200 = v49 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
      v198 = (v202 + 8);
      v199 = (v202 + 16);
      v195 = v49;
      do
      {
        if (v52 >= *(v49 + 16))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        (*(v202 + 2))(v48, v200 + *(v202 + 9) * v52, v51);
        v55 = sub_1D2112C4C();
        v57 = v56;
        v58 = sub_1D2112C5C();
        if (!v59)
        {
          v72 = sub_1D20E4570(v55, v57);
          v74 = v73;

          if (v74)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v203 = v50;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1D20E7990();
              v50 = v203;
            }

            v53 = *(*(v50 + 6) + 16 * v72 + 8);

            v54 = *(*(v50 + 7) + 16 * v72 + 8);

            sub_1D20E7368(v72, v50);
          }

          (*v198)(v48, v51);
          goto LABEL_8;
        }

        v60 = v59;
        v61 = v58;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v203 = v50;
        v64 = sub_1D20E4570(v55, v57);
        v65 = *(v50 + 2);
        v66 = (v63 & 1) == 0;
        v67 = v65 + v66;
        if (__OFADD__(v65, v66))
        {
          goto LABEL_49;
        }

        v68 = v63;
        if (*(v50 + 3) >= v67)
        {
          if (v62)
          {
            v71 = v196;
            if ((v63 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            sub_1D20E7990();
            v71 = v196;
            if ((v68 & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          sub_1D20E68BC(v67, v62);
          v69 = sub_1D20E4570(v55, v57);
          if ((v68 & 1) != (v70 & 1))
          {
            goto LABEL_62;
          }

          v64 = v69;
          v71 = v196;
          if ((v68 & 1) == 0)
          {
LABEL_23:
            v50 = v203;
            *(v203 + (v64 >> 6) + 8) |= 1 << v64;
            v78 = (*(v50 + 6) + 16 * v64);
            *v78 = v55;
            v78[1] = v57;
            v79 = (*(v50 + 7) + 16 * v64);
            *v79 = v61;
            v79[1] = v60;
            v48 = v197;
            (*v198)(v197, v71);
            v80 = *(v50 + 2);
            v81 = __OFADD__(v80, 1);
            v82 = v80 + 1;
            if (v81)
            {
              goto LABEL_50;
            }

            *(v50 + 2) = v82;
            goto LABEL_25;
          }
        }

        v50 = v203;
        v76 = (*(v203 + 7) + 16 * v64);
        v77 = v76[1];
        *v76 = v61;
        v76[1] = v60;

        v48 = v197;
        (*v198)(v197, v71);
LABEL_25:
        v49 = v195;
        v51 = v71;
LABEL_8:
        ++v52;
      }

      while (v201 != v52);
    }

    if (!*(v50 + 2))
    {
      goto LABEL_51;
    }

    v83 = sub_1D20E4570(0x61642D7472617473, 0xEA00000000006574);
    if (v84)
    {
      v202 = v50;
      v85 = (*(v50 + 7) + 16 * v83);
      v86 = *v85;
      v87 = v85[1];
      v88 = objc_allocWithZone(MEMORY[0x1E696AC80]);

      v89 = [v88 init];
      [v89 setFormatOptions_];
      v90 = sub_1D21137BC();

      v91 = [v89 dateFromString_];

      if (v91)
      {
        v92 = v187;
        sub_1D211316C();

        v93 = 0;
        v94 = v194;
        v95 = v188;
      }

      else
      {
        v93 = 1;
        v94 = v194;
        v95 = v188;
        v92 = v187;
      }

      v96 = v94[7];
      v97 = v190;
      v96(v92, v93, 1, v190);
      sub_1D20A84BC(v92, v95);
      v98 = v94 + 6;
      v99 = v94[6];
      if (v99(v95, 1, v97) == 1)
      {
        goto LABEL_59;
      }

      v102 = v94[4];
      v100 = (v94 + 4);
      v101 = v102;
      v102(v193, v95, v97);
      v103 = v202;
      if (*(v202 + 2))
      {
        v104 = sub_1D20E4570(0x657461642D646E65, 0xE800000000000000);
        if (v105)
        {
          v201 = v99;
          v106 = v98;
          v107 = (*(v103 + 7) + 16 * v104);
          v108 = *v107;
          v109 = v107[1];
          v110 = objc_allocWithZone(MEMORY[0x1E696AC80]);

          v111 = [v110 init];
          [v111 setFormatOptions_];
          v112 = sub_1D21137BC();

          v113 = [v111 dateFromString_];

          if (v113)
          {
            v114 = v185;
            sub_1D211316C();

            v115 = 0;
            v116 = v194;
            v117 = v186;
          }

          else
          {
            v115 = 1;
            v116 = v194;
            v117 = v186;
            v114 = v185;
          }

          v118 = v190;
          v96(v114, v115, 1, v190);
          sub_1D20A84BC(v114, v117);
          v119 = v106;
          v120 = v201;
          v200 = v119;
          if (v201(v117, 1, v118) == 1)
          {
            goto LABEL_60;
          }

          v199 = v101;
          v101(v192, v117, v118);
          v121 = v178;
          sub_1D21132AC();
          v122 = v183;
          v123 = v181;
          v124 = v184;
          (*(v183 + 104))(v181, *MEMORY[0x1E6969A48], v184);
          v125 = v177;
          sub_1D211318C();
          v198 = v100;
          v126 = v179;
          sub_1D211329C();
          v127 = v125;
          v128 = *(v116 + 8);
          v128(v127, v118);
          (*(v122 + 8))(v123, v124);
          (*(v180 + 8))(v121, v182);
          if (v120(v126, 1, v118) == 1)
          {
            goto LABEL_61;
          }

          v129 = v189;
          v199(v189, v126, v118);
          v130 = v193;
          v131 = sub_1D211310C();
          v132 = v192;
          if ((v131 & 1) != 0 || (sub_1D20A85E8(&qword_1EE0843E0), (sub_1D211377C() & 1) == 0))
          {
            v128(v129, v118);
            v128(v132, v118);
            v128(v130, v118);
            (*(v174 + 8))(v191, v175);
            return 0;
          }

          sub_1D211317C();
          if (sub_1D21130FC())
          {
            (*(v194 + 24))(v132, v173, v118);
          }

          sub_1D2113F5C();
          v133 = sub_1D2113F4C();
          if (v133)
          {
            v202 = v128;
            v134 = v133;
            v135 = v118;
            v136 = *(v194 + 16);
            v137 = v172;
            v136(v172, v130, v135);
            v138 = v171;
            v136((v137 + *(v171 + 36)), v132, v135);
            *(v137 + *(v138 + 40)) = v134;
            v139 = v176;
            v200 = sub_1D20A2200(v137);
            v201 = v139;
            sub_1D20A862C(v137, &qword_1EC6C7240, &unk_1D21149B0);
            v140 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
            [v140 setFormatOptions_];
            v141 = sub_1D21130EC();
            v142 = [v140 stringFromDate_];

            v143 = sub_1D21137CC();
            v198 = v144;
            v199 = v143;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7268, &unk_1D21149D0);
            v145 = swift_allocObject();
            *(v145 + 16) = xmmword_1D2114850;
            v146 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
            [v146 setFormatOptions_];
            v147 = sub_1D21130EC();
            v148 = [v146 stringFromDate_];

            v149 = sub_1D21137CC();
            v151 = v150;

            v152 = v192;
            v153 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
            [v153 setFormatOptions_];
            v154 = sub_1D21130EC();
            v155 = [v153 stringFromDate_];

            v156 = sub_1D21137CC();
            v158 = v157;

            *(v145 + 32) = v149;
            *(v145 + 40) = v151;
            v159 = v200;
            *(v145 + 48) = v156;
            *(v145 + 56) = v158;
            v160 = v198;
            *(v145 + 64) = xmmword_1D2114860;
            v161 = sub_1D2112B7C();
            v162 = *(v161 + 48);
            v163 = *(v161 + 52);
            swift_allocObject();
            sub_1D2112B6C();
            v203 = v199;
            v204 = v160;
            v205 = 0x4D30335450;
            v206 = 0xE500000000000000;
            v207 = v159;
            v208 = v145;
            sub_1D20A852C();
            v164 = v201;
            v165 = sub_1D2112B5C();
            if (v164)
            {

              v166 = v202;
              v202(v173, v135);
              v166(v189, v135);
              v166(v152, v135);
              v166(v193, v135);
              (*(v174 + 8))(v191, v175);
            }

            else
            {
              v201 = v165;

              v168 = v152;
              v169 = v202;
              v202(v173, v135);
              v169(v189, v135);
              v169(v168, v135);
              v169(v193, v135);
              (*(v174 + 8))(v191, v175);

              return v201;
            }
          }

          goto LABEL_55;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }

    else
    {
LABEL_52:
      __break(1u);
    }

    __break(1u);
    goto LABEL_54;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MockGridDataGenerator(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MockGridDataGenerator(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D20A84BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D20A852C()
{
  result = qword_1EC6C7270;
  if (!qword_1EC6C7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7270);
  }

  return result;
}

uint64_t sub_1D20A8580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D20A85E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D211319C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D20A862C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D20A86D8()
{
  v1 = [objc_opt_self() sharedSession];
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D20A8790;

  return sub_1D20EC308(v1);
}

uint64_t sub_1D20A8790(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t static EnergyServices.configuration(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D20A8938;

  return sub_1D20EC308(a1);
}

uint64_t sub_1D20A8938(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t static EnergyServices.gridIDLookup(forCoordinate:withSession:)(uint64_t a1, double a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D20A8AF4;

  return sub_1D20C8AB4(a1, a2, a3);
}

uint64_t sub_1D20A8AF4(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t static EnergyServices.energyWindows(forGridID:withSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D20A8CBC;

  return sub_1D20D1DBC(a1, a2, a3, a4);
}

uint64_t sub_1D20A8CBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t static EnergyServices.isSupportedInRegion(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D20EC694();
  LOBYTE(a2) = sub_1D20A8E04(a1, a2, v4);

  return a2 & 1;
}

uint64_t sub_1D20A8E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1D2113ECC();
  sub_1D211375C();
  v7 = sub_1D2113F1C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1D2113E2C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t EnergyWindows.validUntil.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EnergyWindows(0) + 20);

  return sub_1D20AD058(a1, v3);
}

uint64_t EnergyWindows.validFrom.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnergyWindows(0) + 24);

  return sub_1D20ACFE8(v3, a1);
}

uint64_t EnergyWindows.validFrom.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EnergyWindows(0) + 24);

  return sub_1D20AD058(a1, v3);
}

uint64_t EnergyWindows.message.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyWindows(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EnergyWindows.description.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyWindows(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EnergyWindows.fieldErrors.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyWindows(0) + 36));
}

uint64_t EnergyWindows.init(windows:validUntil:validFrom:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v10 = type metadata accessor for EnergyWindows(0);
  v11 = v10[5];
  v12 = sub_1D211319C();
  v13 = *(*(v12 - 8) + 56);
  v13(&a6[v11], 1, 1, v12);
  v14 = v10[6];
  v13(&a6[v14], 1, 1, v12);
  *a6 = a1;
  sub_1D20AD058(a2, &a6[v11]);
  result = sub_1D20AD058(a3, &a6[v14]);
  v16 = &a6[v10[7]];
  *v16 = a4;
  *(v16 + 1) = a5;
  v17 = &a6[v10[8]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&a6[v10[9]] = 0;
  return result;
}

uint64_t sub_1D20A923C()
{
  v1 = *v0;
  v2 = 0x73776F646E6977;
  v3 = 0x6567617373656DLL;
  v4 = 0x7470697263736564;
  if (v1 != 4)
  {
    v4 = 0x727245646C656966;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E5564696C6176;
  if (v1 != 1)
  {
    v5 = 0x6F724664696C6176;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D20A9310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D20AE068(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D20A9350(uint64_t a1)
{
  v2 = sub_1D20AD10C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20A938C(uint64_t a1)
{
  v2 = sub_1D20AD10C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EnergyWindows.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7310, &qword_1D2114A88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20AD10C();
  sub_1D2113F3C();
  v23 = *v3;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7318, &qword_1D2114A90);
  sub_1D20AD25C(&qword_1EE0836A8, &qword_1EE083D50);
  sub_1D2113DAC();
  if (!v2)
  {
    v11 = type metadata accessor for EnergyWindows(0);
    v12 = v11[5];
    LOBYTE(v23) = 1;
    sub_1D211319C();
    sub_1D20AD1C8(&qword_1EE083DA0, MEMORY[0x1E6969530]);
    sub_1D2113DAC();
    v13 = v11[6];
    LOBYTE(v23) = 2;
    sub_1D2113DAC();
    v14 = (v3 + v11[7]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v23) = 3;
    sub_1D2113D8C();
    v17 = (v3 + v11[8]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v23) = 4;
    sub_1D2113D8C();
    v23 = *(v3 + v11[9]);
    v22 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
    sub_1D20AD2F8(&qword_1EE083670);
    sub_1D2113DAC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t EnergyWindows.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7328, &qword_1D2114AA0);
  v39 = *(v42 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v38 - v10;
  v12 = type metadata accessor for EnergyWindows(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 20);
  v18 = sub_1D211319C();
  v19 = *(*(v18 - 8) + 56);
  v47 = v17;
  v19(&v16[v17], 1, 1, v18);
  v45 = *(v12 + 24);
  v46 = v12;
  v44 = v16;
  v19(&v16[v45], 1, 1, v18);
  v21 = a1[3];
  v20 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D20AD10C();
  v41 = v11;
  v22 = v43;
  sub_1D2113F2C();
  if (v22)
  {
    v25 = v47;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v26 = v44;
    v27 = v45;
    sub_1D20A862C(v44 + v25, &qword_1EC6C7248, &qword_1D2114A80);
    return sub_1D20A862C(v26 + v27, &qword_1EC6C7248, &qword_1D2114A80);
  }

  else
  {
    v23 = v39;
    v24 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7318, &qword_1D2114A90);
    v49 = 0;
    sub_1D20AD25C(&qword_1EE084438, &qword_1EE084808);
    sub_1D2113D3C();
    v28 = v44;
    *v44 = v50;
    LOBYTE(v50) = 1;
    sub_1D20AD1C8(&qword_1EE084908, MEMORY[0x1E6969530]);
    sub_1D2113D3C();
    sub_1D20AD058(v8, v28 + v47);
    LOBYTE(v50) = 2;
    sub_1D2113D3C();
    v29 = v28;
    sub_1D20AD058(v24, v28 + v45);
    LOBYTE(v50) = 3;
    v30 = sub_1D2113D1C();
    v31 = v46;
    v32 = (v29 + *(v46 + 28));
    *v32 = v30;
    v32[1] = v33;
    LOBYTE(v50) = 4;
    v34 = sub_1D2113D1C();
    v35 = (v29 + *(v31 + 32));
    *v35 = v34;
    v35[1] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
    v49 = 5;
    sub_1D20AD2F8(&qword_1EE084410);
    sub_1D2113D3C();
    (*(v23 + 8))(v41, v42);
    *(v29 + *(v31 + 36)) = v50;
    sub_1D20AD3F0(v29, v38, type metadata accessor for EnergyWindows);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return sub_1D20AD458(v29, type metadata accessor for EnergyWindows);
  }
}

uint64_t sub_1D20A9D7C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);

  return sub_1D20ACFE8(v4, a2);
}

uint64_t EnergyWindow.rating.getter@<X0>(char *a1@<X8>)
{
  v3 = 1414743362;
  v4 = (v1 + *(type metadata accessor for EnergyWindow(0) + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = byte_1F4D9E180;
  v8 = 0xE600000000000000;
  v9 = 0x454355444552;
  if (byte_1F4D9E180 != 2)
  {
    v9 = 0x5453524F57;
    v8 = 0xE500000000000000;
  }

  v10 = 1146048327;
  if (!byte_1F4D9E180)
  {
    v10 = 1414743362;
  }

  if (byte_1F4D9E180 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (byte_1F4D9E180 <= 1u)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = v8;
  }

  if (v11 == v5 && v12 == v6)
  {
    goto LABEL_38;
  }

  v14 = sub_1D2113E2C();

  if (v14)
  {
    goto LABEL_39;
  }

  v7 = byte_1F4D9E181;
  if (byte_1F4D9E181 > 1u)
  {
    if (byte_1F4D9E181 == 2)
    {
      v17 = 0xE600000000000000;
      v16 = 0x454355444552;
    }

    else
    {
      v17 = 0xE500000000000000;
      v16 = 0x5453524F57;
    }
  }

  else
  {
    v16 = byte_1F4D9E181 ? 1146048327 : 1414743362;
    v17 = 0xE400000000000000;
  }

  if (v16 == v5 && v17 == v6)
  {
    goto LABEL_38;
  }

  v19 = sub_1D2113E2C();

  if (v19)
  {
    goto LABEL_39;
  }

  v7 = byte_1F4D9E182;
  if (byte_1F4D9E182 > 1u)
  {
    if (byte_1F4D9E182 == 2)
    {
      v20 = 0xE600000000000000;
      v21 = 0x454355444552;
    }

    else
    {
      v20 = 0xE500000000000000;
      v21 = 0x5453524F57;
    }
  }

  else
  {
    v20 = 0xE400000000000000;
    v21 = byte_1F4D9E182 ? 1146048327 : 1414743362;
  }

  if (v21 == v5 && v20 == v6)
  {
    goto LABEL_38;
  }

  v22 = sub_1D2113E2C();

  if (v22)
  {
    goto LABEL_39;
  }

  v7 = byte_1F4D9E183;
  if (byte_1F4D9E183 > 1u)
  {
    if (byte_1F4D9E183 == 2)
    {
      v23 = 0xE600000000000000;
      v3 = 0x454355444552;
    }

    else
    {
      v23 = 0xE500000000000000;
      v3 = 0x5453524F57;
    }
  }

  else
  {
    v23 = 0xE400000000000000;
    if (byte_1F4D9E183)
    {
      v3 = 1146048327;
    }
  }

  if (v3 == v5 && v23 == v6)
  {
LABEL_38:

    goto LABEL_39;
  }

  v24 = sub_1D2113E2C();

  if ((v24 & 1) == 0)
  {
    v7 = 3;
  }

LABEL_39:
  *a1 = v7;
  return result;
}

uint64_t EnergyWindowRating.rawValue.getter()
{
  v1 = 1414743362;
  v2 = 0x454355444552;
  if (*v0 != 2)
  {
    v2 = 0x5453524F57;
  }

  if (*v0)
  {
    v1 = 1146048327;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t EnergyWindow.start.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyWindow(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EnergyWindow.end.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyWindow(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1D20AA154(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  if (v2 != 1)
  {
    v4 = 6581861;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E69746172;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7472617473;
  if (*a2 != 1)
  {
    v8 = 6581861;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E69746172;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2113E2C();
  }

  return v11 & 1;
}

uint64_t sub_1D20AA23C()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D20AA2D0()
{
  *v0;
  *v0;
  sub_1D211375C();
}

uint64_t sub_1D20AA350()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D20AA3E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D20AE27C();
  *a2 = result;
  return result;
}

void sub_1D20AA410(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7472617473;
  if (v2 != 1)
  {
    v5 = 6581861;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E69746172;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D20AA460()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69746172;
  }
}

uint64_t sub_1D20AA4AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D20AE27C();
  *a1 = result;
  return result;
}

uint64_t sub_1D20AA4D4(uint64_t a1)
{
  v2 = sub_1D20AD39C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20AA510(uint64_t a1)
{
  v2 = sub_1D20AD39C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EnergyWindow.init(start:end:rating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v30 - v19;
  v21 = type metadata accessor for EnergyWindow(0);
  v22 = (a7 + v21[7]);
  *v22 = a1;
  v22[1] = a2;
  v23 = (a7 + v21[8]);
  v30[1] = a3;
  *v23 = a3;
  v23[1] = a4;
  v24 = (a7 + v21[6]);
  *v24 = a5;
  v24[1] = a6;
  v25 = qword_1EE084100;

  v30[2] = a4;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_1D21130CC();
  __swift_project_value_buffer(v26, qword_1EE0874F0);
  sub_1D21130BC();

  v27 = sub_1D211319C();
  v28 = *(*(v27 - 8) + 56);
  v28(v20, 0, 1, v27);
  sub_1D20A84BC(v20, a7);
  sub_1D21130BC();

  v28(v18, 0, 1, v27);
  return sub_1D20A84BC(v18, a7 + v21[5]);
}

uint64_t EnergyWindow.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7330, &qword_1D2114AA8);
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v44 - v11;
  v13 = type metadata accessor for EnergyWindow(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20AD39C();
  v18 = v54;
  sub_1D2113F2C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = v8;
  v50 = v16;
  v19 = v53;
  v54 = a1;
  v57 = 1;
  v20 = v12;
  v21 = sub_1D2113D4C();
  v23 = v13;
  v24 = v50;
  v25 = &v50[*(v13 + 28)];
  v26 = v21;
  *v25 = v21;
  v25[1] = v27;
  v56 = 2;
  v28 = v27;
  v29 = sub_1D2113D4C();
  v47 = v28;
  v48 = v26;
  v30 = (v24 + v23[8]);
  *v30 = v29;
  v30[1] = v31;
  v55 = 0;
  v32 = v29;
  v33 = v31;
  v34 = sub_1D2113D4C();
  v44[0] = v33;
  v44[1] = v32;
  v45 = v20;
  v46 = v9;
  v36 = (v24 + v23[6]);
  *v36 = v34;
  v36[1] = v35;
  if (qword_1EE084100 != -1)
  {
    swift_once();
  }

  v37 = sub_1D21130CC();
  __swift_project_value_buffer(v37, qword_1EE0874F0);
  sub_1D21130BC();
  v38 = v52;
  v39 = sub_1D211319C();
  v40 = v49;
  v41 = v39;
  v48 = *(*(v39 - 8) + 56);
  v48(v49, 0, 1);
  sub_1D20A84BC(v40, v50);
  sub_1D21130BC();
  v42 = v51;
  (*(v19 + 8))(v45, v46);
  (v48)(v38, 0, 1, v41);
  v43 = v50;
  sub_1D20A84BC(v38, &v50[v23[5]]);
  sub_1D20AD3F0(v43, v42, type metadata accessor for EnergyWindow);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return sub_1D20AD458(v43, type metadata accessor for EnergyWindow);
}

uint64_t EnergyWindow.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7338, &qword_1D2114AB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20AD39C();
  sub_1D2113F3C();
  v11 = type metadata accessor for EnergyWindow(0);
  v12 = (v3 + v11[7]);
  v13 = *v12;
  v14 = v12[1];
  v22[15] = 1;
  sub_1D2113DBC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v15 = (v3 + v11[8]);
  v16 = *v15;
  v17 = v15[1];
  v22[14] = 2;
  sub_1D2113DBC();
  v19 = (v3 + v11[6]);
  v20 = *v19;
  v21 = v19[1];
  v22[13] = 0;
  sub_1D2113DBC();
  return (*(v6 + 8))(v9, v5);
}

HomeServices::EnergyWindowRating_optional __swiftcall EnergyWindowRating.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2113D0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D20AAE98()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D20AAF44()
{
  *v0;
  *v0;
  *v0;
  sub_1D211375C();
}

uint64_t sub_1D20AAFDC()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

void sub_1D20AB090(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1414743362;
  v4 = 0xE600000000000000;
  v5 = 0x454355444552;
  if (*v1 != 2)
  {
    v5 = 0x5453524F57;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1146048327;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D20AB1E4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D21133BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NetworkError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D20AD3F0(v2, v12, type metadata accessor for NetworkError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        *a1 = xmmword_1D2114A40;
        type metadata accessor for HSGuidanceError(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (qword_1EE083DD8 != -1)
      {
        swift_once();
      }

      v28 = sub_1D211362C();
      __swift_project_value_buffer(v28, qword_1EE0874A8);
      v20 = sub_1D21135FC();
      v29 = sub_1D2113A7C();
      if (os_log_type_enabled(v20, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1D209F000, v20, v29, "Network Error: Response Decoding Error", v30, 2u);
        MEMORY[0x1D3896EB0](v30, -1, -1);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (qword_1EE083DD8 != -1)
      {
        swift_once();
      }

      v19 = sub_1D211362C();
      __swift_project_value_buffer(v19, qword_1EE0874A8);
      v20 = sub_1D21135FC();
      v21 = sub_1D2113A7C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D209F000, v20, v21, "Network Error: Cannot Find Host", v22, 2u);
        MEMORY[0x1D3896EB0](v22, -1, -1);
      }
    }

    else
    {
      if (qword_1EE083DD8 != -1)
      {
        swift_once();
      }

      v39 = sub_1D211362C();
      __swift_project_value_buffer(v39, qword_1EE0874A8);
      v20 = sub_1D21135FC();
      v40 = sub_1D2113A7C();
      if (os_log_type_enabled(v20, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1D209F000, v20, v40, "Network Error: Data Unavailable", v41, 2u);
        MEMORY[0x1D3896EB0](v41, -1, -1);
      }
    }

    goto LABEL_42;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v31 = *v12;
      if (qword_1EE083DD8 != -1)
      {
        swift_once();
      }

      v32 = sub_1D211362C();
      __swift_project_value_buffer(v32, qword_1EE0874A8);
      v33 = sub_1D21135FC();
      v34 = sub_1D2113A7C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        sub_1D20AD674();
        swift_allocError();
        *v37 = v31;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v38;
        *v36 = v38;
        _os_log_impl(&dword_1D209F000, v33, v34, "Network Error: Internal Failure %@", v35, 0xCu);
        sub_1D20A862C(v36, &qword_1EC6C7950, qword_1D21153D0);
        MEMORY[0x1D3896EB0](v36, -1, -1);
        MEMORY[0x1D3896EB0](v35, -1, -1);
      }

      *a1 = 2 * (v31 > 1);
      type metadata accessor for HSGuidanceError(0);
    }

    else
    {
      v14 = *(v5 + 32);
      v14(v8, v12, v4);
      if (qword_1EE083DD8 != -1)
      {
        swift_once();
      }

      v15 = sub_1D211362C();
      __swift_project_value_buffer(v15, qword_1EE0874A8);
      v16 = sub_1D21135FC();
      v17 = sub_1D2113A7C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1D209F000, v16, v17, "Network Error: URL Network Error", v18, 2u);
        MEMORY[0x1D3896EB0](v18, -1, -1);
      }

      v14(a1, v8, v4);
      type metadata accessor for HSGuidanceError(0);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (qword_1EE083DD8 != -1)
    {
      swift_once();
    }

    v42 = sub_1D211362C();
    __swift_project_value_buffer(v42, qword_1EE0874A8);
    v20 = sub_1D21135FC();
    v43 = sub_1D2113A7C();
    if (os_log_type_enabled(v20, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D209F000, v20, v43, "Network Error: Not Connected to Internet", v44, 2u);
      MEMORY[0x1D3896EB0](v44, -1, -1);
    }

LABEL_42:

    type metadata accessor for HSGuidanceError(0);
    return swift_storeEnumTagMultiPayload();
  }

  v23 = *v12;
  if (qword_1EE083DD8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D211362C();
  __swift_project_value_buffer(v24, qword_1EE0874A8);
  v25 = sub_1D21135FC();
  v26 = sub_1D2113A7C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1D209F000, v25, v26, "Network Error: Server Failure", v27, 2u);
    MEMORY[0x1D3896EB0](v27, -1, -1);
  }

  *a1 = v23;
  type metadata accessor for HSGuidanceError(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t NetworkError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1D21133BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NetworkError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D20AD3F0(v1, v10, type metadata accessor for NetworkError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0xD00000000000002ALL;
      }

      else
      {
        return 0xD00000000000003ALL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000038;
    }

    else
    {
      return 0xD000000000000020;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return 0xD00000000000002ELL;
      }

      v14 = *v10;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_1D2113C2C();
      MEMORY[0x1D38961A0](0xD000000000000035, 0x80000001D211A320);
      v19 = v14;
      v15 = sub_1D2113E0C();
      MEMORY[0x1D38961A0](v15);

      MEMORY[0x1D38961A0](46, 0xE100000000000000);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v6, v10, v2);
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_1D2113C2C();
        MEMORY[0x1D38961A0](0xD000000000000023, 0x80000001D211A490);
        sub_1D2113CBC();
        MEMORY[0x1D38961A0](46, 0xE100000000000000);
        v12 = v21;
        (*(v3 + 8))(v6, v2);
        return v12;
      }

      v16 = *v10;
      v21 = 0xD00000000000003ELL;
      v22 = 0x80000001D211A360;
      if (v16)
      {
        if (v16 == 1)
        {
          v17 = "LocalizedDescription ";
          v18 = 0xD000000000000032;
        }

        else
        {
          v17 = "trying to process the request.";
          v18 = 0xD000000000000027;
        }
      }

      else
      {
        v18 = 0xD00000000000002BLL;
        v17 = "ponse from server.";
      }

      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1D2113C2C();

      v19 = 0xD000000000000015;
      v20 = 0x80000001D211A3D0;
      MEMORY[0x1D38961A0](v18, v17 | 0x8000000000000000);

      MEMORY[0x1D38961A0](v19, v20);
    }

    return v21;
  }
}

unint64_t NetworkInternalError.errorDescription.getter()
{
  v1 = 0xD000000000000027;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000032;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000002BLL;
  }

  *v0;
  return result;
}

uint64_t NetworkInternalError.hashValue.getter()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D20ABE88()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D20ABED0()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

unint64_t sub_1D20ABF14()
{
  v1 = 0xD000000000000027;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000032;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000002BLL;
  }

  *v0;
  return result;
}

uint64_t _s12HomeServices12NetworkErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D21133BC();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkError(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v32 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7380, &qword_1D21151E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v32 - v21;
  v23 = *(v20 + 56);
  sub_1D20AD3F0(a1, &v32 - v21, type metadata accessor for NetworkError);
  sub_1D20AD3F0(a2, &v22[v23], type metadata accessor for NetworkError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_27;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_27;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_27;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D20AD3F0(v22, v12, type metadata accessor for NetworkError);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_27;
      }

      v25 = *v12 == *&v22[v23];
      goto LABEL_18;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_27;
    }

LABEL_25:
    sub_1D20AD458(v22, type metadata accessor for NetworkError);
    return 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D20AD3F0(v22, v15, type metadata accessor for NetworkError);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_27;
    }

    v25 = *v15 == v22[v23];
LABEL_18:
    v26 = v25;
    sub_1D20AD458(v22, type metadata accessor for NetworkError);
    return v26;
  }

  sub_1D20AD3F0(v22, v17, type metadata accessor for NetworkError);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v32 + 8))(v17, v33);
LABEL_27:
    sub_1D20A862C(v22, &qword_1EC6C7380, &qword_1D21151E0);
    return 0;
  }

  v29 = v32;
  v28 = v33;
  (*(v32 + 32))(v7, &v22[v23], v33);
  sub_1D20AD1C8(&qword_1EE0843C8, MEMORY[0x1E6969BF8]);
  sub_1D211396C();
  sub_1D211396C();
  v30 = *(v29 + 8);
  v30(v7, v28);
  v31 = v35 == v34;
  v30(v17, v28);
  sub_1D20AD458(v22, type metadata accessor for NetworkError);
  return v31;
}

uint64_t _s12HomeServices13EnergyWindowsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1D211319C();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7388, &qword_1D21151E8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v57[-v19];
  v21 = *a1;
  v22 = *a2;
  if (*a1)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *a2;

    v24 = sub_1D20FCF6C(v21, v22);

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v25 = type metadata accessor for EnergyWindows(0);
  v26 = a1;
  v60 = v25;
  v61 = a1;
  v27 = *(v25 + 20);
  v28 = *(v14 + 48);
  sub_1D20ACFE8(v26 + v27, v20);
  sub_1D20ACFE8(a2 + v27, &v20[v28]);
  v29 = *(v63 + 48);
  if (v29(v20, 1, v4) == 1)
  {
    if (v29(&v20[v28], 1, v4) == 1)
    {
      v59 = a2;
      sub_1D20A862C(v20, &qword_1EC6C7248, &qword_1D2114A80);
      goto LABEL_13;
    }

LABEL_11:
    v30 = v20;
LABEL_19:
    sub_1D20A862C(v30, &qword_1EC6C7388, &qword_1D21151E8);
    return 0;
  }

  sub_1D20ACFE8(v20, v13);
  if (v29(&v20[v28], 1, v4) == 1)
  {
    (*(v63 + 8))(v13, v4);
    goto LABEL_11;
  }

  v59 = a2;
  v31 = v63;
  (*(v63 + 32))(v7, &v20[v28], v4);
  sub_1D20AD1C8(&qword_1EE0843D8, MEMORY[0x1E6969530]);
  v58 = sub_1D21137AC();
  v32 = *(v31 + 8);
  v32(v7, v4);
  v32(v13, v4);
  sub_1D20A862C(v20, &qword_1EC6C7248, &qword_1D2114A80);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v33 = v60;
  v34 = v60[6];
  v35 = *(v14 + 48);
  sub_1D20ACFE8(v61 + v34, v18);
  v36 = v59 + v34;
  v37 = v59;
  sub_1D20ACFE8(v36, &v18[v35]);
  if (v29(v18, 1, v4) != 1)
  {
    v38 = v62;
    sub_1D20ACFE8(v18, v62);
    if (v29(&v18[v35], 1, v4) != 1)
    {
      v40 = v63;
      (*(v63 + 32))(v7, &v18[v35], v4);
      sub_1D20AD1C8(&qword_1EE0843D8, MEMORY[0x1E6969530]);
      v41 = sub_1D21137AC();
      v42 = *(v40 + 8);
      v42(v7, v4);
      v42(v38, v4);
      sub_1D20A862C(v18, &qword_1EC6C7248, &qword_1D2114A80);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_23;
    }

    (*(v63 + 8))(v38, v4);
    goto LABEL_18;
  }

  if (v29(&v18[v35], 1, v4) != 1)
  {
LABEL_18:
    v30 = v18;
    goto LABEL_19;
  }

  sub_1D20A862C(v18, &qword_1EC6C7248, &qword_1D2114A80);
LABEL_23:
  v43 = v33[7];
  v44 = v61;
  v45 = (v61 + v43);
  v46 = *(v61 + v43 + 8);
  v47 = (v37 + v43);
  v48 = v47[1];
  if (v46)
  {
    if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_1D2113E2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  v49 = v33[8];
  v50 = (v44 + v49);
  v51 = *(v44 + v49 + 8);
  v52 = (v37 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53 || (*v50 != *v52 || v51 != v53) && (sub_1D2113E2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  v54 = v33[9];
  v55 = *(v44 + v54);
  v56 = *(v37 + v54);
  if (v55)
  {
    if (v56 && (sub_1D20FD114(v55, v56) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v56)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12HomeServices12EnergyWindowV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D211319C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7388, &qword_1D21151E8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v54[-v20];
  v22 = *(v19 + 48);
  v60 = a1;
  sub_1D20ACFE8(a1, &v54[-v20]);
  sub_1D20ACFE8(a2, &v21[v22]);
  v23 = *(v5 + 48);
  if (v23(v21, 1, v4) == 1)
  {
    if (v23(&v21[v22], 1, v4) == 1)
    {
      v56 = v5;
      v57 = a2;
      sub_1D20A862C(v21, &qword_1EC6C7248, &qword_1D2114A80);
      goto LABEL_8;
    }

LABEL_6:
    v24 = v21;
LABEL_14:
    sub_1D20A862C(v24, &qword_1EC6C7388, &qword_1D21151E8);
    goto LABEL_15;
  }

  sub_1D20ACFE8(v21, v13);
  if (v23(&v21[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_6;
  }

  v57 = a2;
  v25 = *(v5 + 32);
  v26 = v5;
  v27 = v59;
  v25(v59, &v21[v22], v4);
  sub_1D20AD1C8(&qword_1EE0843D8, MEMORY[0x1E6969530]);
  v55 = sub_1D21137AC();
  v56 = v26;
  v28 = *(v26 + 8);
  v28(v27, v4);
  v28(v13, v4);
  sub_1D20A862C(v21, &qword_1EC6C7248, &qword_1D2114A80);
  if ((v55 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v29 = type metadata accessor for EnergyWindow(0);
  v30 = v29[5];
  v31 = *(v14 + 48);
  v32 = v60;
  sub_1D20ACFE8(v60 + v30, v18);
  v33 = v57 + v30;
  v34 = v57;
  sub_1D20ACFE8(v33, &v18[v31]);
  if (v23(v18, 1, v4) != 1)
  {
    v35 = v58;
    sub_1D20ACFE8(v18, v58);
    if (v23(&v18[v31], 1, v4) == 1)
    {
      (*(v56 + 8))(v35, v4);
      goto LABEL_13;
    }

    v38 = v56;
    v39 = v59;
    (*(v56 + 32))(v59, &v18[v31], v4);
    sub_1D20AD1C8(&qword_1EE0843D8, MEMORY[0x1E6969530]);
    v40 = sub_1D21137AC();
    v41 = *(v38 + 8);
    v41(v39, v4);
    v41(v35, v4);
    sub_1D20A862C(v18, &qword_1EC6C7248, &qword_1D2114A80);
    if (v40)
    {
      goto LABEL_18;
    }

LABEL_15:
    v36 = 0;
    return v36 & 1;
  }

  if (v23(&v18[v31], 1, v4) != 1)
  {
LABEL_13:
    v24 = v18;
    goto LABEL_14;
  }

  sub_1D20A862C(v18, &qword_1EC6C7248, &qword_1D2114A80);
LABEL_18:
  v42 = v29[6];
  v43 = *(v32 + v42);
  v44 = *(v32 + v42 + 8);
  v45 = (v34 + v42);
  if ((v43 != *v45 || v44 != v45[1]) && (sub_1D2113E2C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v46 = v29[7];
  v47 = *(v32 + v46);
  v48 = *(v32 + v46 + 8);
  v49 = (v34 + v46);
  if ((v47 != *v49 || v48 != v49[1]) && (sub_1D2113E2C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v50 = v29[8];
  v51 = *(v32 + v50);
  v52 = *(v32 + v50 + 8);
  v53 = (v34 + v50);
  if (v51 == *v53 && v52 == v53[1])
  {
    v36 = 1;
  }

  else
  {
    v36 = sub_1D2113E2C();
  }

  return v36 & 1;
}

uint64_t sub_1D20ACFE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20AD058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D20AD10C()
{
  result = qword_1EE084758[0];
  if (!qword_1EE084758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE084758);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D20AD1C8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1D20AD25C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7318, &qword_1D2114A90);
    sub_1D20AD1C8(a2, type metadata accessor for EnergyWindow);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D20AD2F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7320, &qword_1D2114A98);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1D20AD39C()
{
  result = qword_1EE084820;
  if (!qword_1EE084820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084820);
  }

  return result;
}

uint64_t sub_1D20AD3F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D20AD458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D20AD4D8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D20AD514()
{
  result = qword_1EC6C7340;
  if (!qword_1EC6C7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7340);
  }

  return result;
}

unint64_t sub_1D20AD56C()
{
  result = qword_1EC6C7348;
  if (!qword_1EC6C7348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7350, &qword_1D2114C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7348);
  }

  return result;
}

unint64_t sub_1D20AD61C()
{
  result = qword_1EC6C7358;
  if (!qword_1EC6C7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7358);
  }

  return result;
}

unint64_t sub_1D20AD674()
{
  result = qword_1EC6C7360;
  if (!qword_1EC6C7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7360);
  }

  return result;
}

void sub_1D20AD700()
{
  sub_1D20AD88C(319, &qword_1EE084430, &qword_1EC6C7318, &qword_1D2114A90);
  if (v0 <= 0x3F)
  {
    sub_1D20AD7E4();
    if (v1 <= 0x3F)
    {
      sub_1D20AD83C();
      if (v2 <= 0x3F)
      {
        sub_1D20AD88C(319, &qword_1EE084408, &qword_1EC6C7320, &qword_1D2114A98);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D20AD7E4()
{
  if (!qword_1EE084900)
  {
    sub_1D211319C();
    v0 = sub_1D2113B0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE084900);
    }
  }
}

void sub_1D20AD83C()
{
  if (!qword_1EE084918)
  {
    v0 = sub_1D2113B0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE084918);
    }
  }
}

void sub_1D20AD88C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1D2113B0C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D20AD908()
{
  sub_1D20AD7E4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for EnergyWindowRating(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnergyWindowRating(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D20ADB34()
{
  result = sub_1D21133BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalGridSignal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalGridSignal.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnergyWindows.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnergyWindows.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D20ADE5C()
{
  result = qword_1EC6C7368;
  if (!qword_1EC6C7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7368);
  }

  return result;
}

unint64_t sub_1D20ADEB4()
{
  result = qword_1EC6C7370;
  if (!qword_1EC6C7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7370);
  }

  return result;
}

unint64_t sub_1D20ADF0C()
{
  result = qword_1EE084810;
  if (!qword_1EE084810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084810);
  }

  return result;
}

unint64_t sub_1D20ADF64()
{
  result = qword_1EE084818;
  if (!qword_1EE084818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084818);
  }

  return result;
}

unint64_t sub_1D20ADFBC()
{
  result = qword_1EE084748;
  if (!qword_1EE084748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084748);
  }

  return result;
}

unint64_t sub_1D20AE014()
{
  result = qword_1EE084750;
  if (!qword_1EE084750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084750);
  }

  return result;
}

uint64_t sub_1D20AE068(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73776F646E6977 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E5564696C6176 && a2 == 0xEA00000000006C69 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F724664696C6176 && a2 == 0xE90000000000006DLL || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D2113E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x727245646C656966 && a2 == 0xEB0000000073726FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D20AE27C()
{
  v0 = sub_1D2113D0C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D20AE2C8()
{
  result = qword_1EC6C7378;
  if (!qword_1EC6C7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7378);
  }

  return result;
}

uint64_t sub_1D20AE33C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v101 = &v93[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = &v93[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v93[-v9];
  v10 = sub_1D211319C();
  v94 = *(v10 - 8);
  v11 = v94[8];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v103 = &v93[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v100 = &v93[-v15];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v115 = &v93[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v93[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v20 = *(v19 - 8);
  v119 = v19 - 8;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v93[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v25 = (v24 - 8);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v93[-v27];
  v98 = sub_1D20AEF10();
  v121 = MEMORY[0x1E69E7CC0];
  sub_1D20DC814(0, v98 & ~(v98 >> 63), 0);
  v118 = v121;
  sub_1D20A8580(a1, v23, &qword_1EC6C7240, &unk_1D21149B0);
  v29 = &v28[v25[13]];
  v102 = v2;
  v30 = *(v2 + 48);
  v32 = v94 + 4;
  v31 = v94[4];
  v33 = v23;
  v31((v29 + v30), v23, v10);
  v34 = v119;
  v35 = *(v119 + 44);
  v107 = v25[11];
  v111 = v31;
  v112 = v32;
  v31(&v28[v107], &v33[v35], v10);
  v36 = *&v33[*(v34 + 48)];
  v37 = v98;
  v99 = v25[12];
  *&v28[v99] = v36;
  v38 = v94[2];
  v116 = v30;
  v109 = v94 + 2;
  v110 = v28;
  v108 = v38;
  result = (v38)(v28, v29 + v30, v10);
  *v29 = 0;
  v117 = v29;
  *(v29 + 8) = 0;
  if ((v37 & 0x8000000000000000) == 0)
  {
    v119 = v10;
    if (v37)
    {
      v40 = 0;
      v114 = (v94 + 1);
      v95 = (v94 + 5);
      v97 = (v94 + 7);
      v96 = (v94 + 6);
      while (1)
      {
        v106 = v40;
        v41 = v103;
        v108(v103, v117 + v116, v10);
        sub_1D20AFF6C(&qword_1EE0843E0, MEMORY[0x1E6969530]);
        if (v36 <= 0.0)
        {
          v56 = sub_1D211379C();
          v43 = v104;
          if (v56)
          {
LABEL_8:
            v53 = *v114;
            (*v114)(v41, v10);
            v55 = 1;
            goto LABEL_9;
          }
        }

        else
        {
          v42 = sub_1D211378C();
          v43 = v104;
          if (v42)
          {
            goto LABEL_8;
          }
        }

        v44 = v117;
        v45 = v101;
        sub_1D20A8580(v117, v101, &qword_1EC6C7278, &unk_1D2115720);
        v46 = *v45;
        v47 = v45[8];
        v48 = *(v102 + 48);
        sub_1D20AFF6C(&qword_1EC6C7288, MEMORY[0x1E6969530]);
        v49 = v100;
        v43 = v104;
        v50 = sub_1D2113B1C();
        LOBYTE(v47) = v51;
        v52 = &v45[v48];
        v53 = *v114;
        (*v114)(v52, v119);
        *v44 = v50;
        *(v44 + 8) = v47 & 1;
        v54 = v44 + v116;
        v10 = v119;
        (*v95)(v54, v49, v119);
        v111(v43, v103, v10);
        v55 = 0;
LABEL_9:
        (*v97)(v43, v55, 1, v10);
        result = (*v96)(v43, 1, v10);
        if (result == 1)
        {
          goto LABEL_31;
        }

        v57 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
        [v57 setFormatOptions_];
        v58 = sub_1D21130EC();
        v59 = [v57 stringFromDate_];

        v60 = sub_1D21137CC();
        v62 = v61;

        do
        {
          *v120 = 0;
          MEMORY[0x1D3896EC0](v120, 8);
          v63 = 16777217 * v120[0];
        }

        while (v63 < 0xFFFF01);
        v53(v43, v10);
        v64 = v118;
        v121 = v118;
        v66 = *(v118 + 16);
        v65 = *(v118 + 24);
        v67 = v106;
        if (v66 >= v65 >> 1)
        {
          v118 = v62;
          sub_1D20DC814((v65 > 1), v66 + 1, 1);
          v62 = v118;
          v64 = v121;
        }

        v40 = (v67 + 1);
        *(v64 + 16) = v66 + 1;
        v118 = v64;
        v68 = v64 + 24 * v66;
        *(v68 + 32) = v60;
        *(v68 + 40) = v62;
        *(v68 + 48) = vcvts_n_f32_u64(HIDWORD(v63), 0x18uLL) + -1.0;
        v69 = v115;
        if (v40 == v98)
        {
          goto LABEL_17;
        }
      }
    }

    v69 = v115;
LABEL_17:
    v114 = (v94 + 1);
    v106 = (v94 + 7);
    v103 = (v94 + 5);
    v104 = (v94 + 6);
    while (1)
    {
      v108(v69, v117 + v116, v10);
      sub_1D20AFF6C(&qword_1EE0843E0, MEMORY[0x1E6969530]);
      v70 = v105;
      if (v36 <= 0.0)
      {
        if ((sub_1D211379C() & 1) == 0)
        {
LABEL_20:
          v71 = v117;
          v72 = v101;
          sub_1D20A8580(v117, v101, &qword_1EC6C7278, &unk_1D2115720);
          v73 = *v72;
          v74 = v72[8];
          v75 = *(v102 + 48);
          sub_1D20AFF6C(&qword_1EC6C7288, MEMORY[0x1E6969530]);
          v76 = v100;
          v77 = sub_1D2113B1C();
          LOBYTE(v74) = v78;
          v79 = *v114;
          (*v114)(&v72[v75], v119);
          *v71 = v77;
          *(v71 + 8) = v74 & 1;
          v80 = v71 + v116;
          v10 = v119;
          (*v103)(v80, v76, v119);
          v111(v70, v115, v10);
          v81 = 0;
          goto LABEL_23;
        }
      }

      else if ((sub_1D211378C() & 1) == 0)
      {
        goto LABEL_20;
      }

      v79 = *v114;
      (*v114)(v69, v10);
      v81 = 1;
LABEL_23:
      (*v106)(v70, v81, 1, v10);
      if ((*v104)(v70, 1, v10) == 1)
      {
        sub_1D20A862C(v110, &qword_1EC6C7280, &qword_1D21149E0);
        sub_1D20A862C(v70, &qword_1EC6C7248, &qword_1D2114A80);
        return v118;
      }

      v111(v113, v70, v10);
      v82 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v82 setFormatOptions_];
      v83 = sub_1D21130EC();
      v84 = [v82 stringFromDate_];

      v85 = sub_1D21137CC();
      v87 = v86;

      do
      {
        *v120 = 0;
        MEMORY[0x1D3896EC0](v120, 8);
        v88 = 16777217 * v120[0];
      }

      while (v88 < 0xFFFF01);
      v79(v113, v10);
      v89 = v118;
      v121 = v118;
      v91 = *(v118 + 16);
      v90 = *(v118 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_1D20DC814((v90 > 1), v91 + 1, 1);
        v89 = v121;
      }

      *(v89 + 16) = v91 + 1;
      v118 = v89;
      v92 = v89 + 24 * v91;
      *(v92 + 32) = v85;
      *(v92 + 40) = v87;
      *(v92 + 48) = vcvts_n_f32_u64(HIDWORD(v88), 0x18uLL) + -1.0;
      v69 = v115;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D20AEF10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v57 = &v50 - v2;
  v3 = sub_1D211319C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = (MEMORY[0x1EEE9AC00])();
  v56 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v15 = *(v14 - 8);
  v65 = (v14 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v20 = (v19 - 8);
  v21 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - v22;
  sub_1D20A8580(v64, v18, &qword_1EC6C7240, &unk_1D21149B0);
  v50 = &v23[v20[13]];
  v24 = *(v0 + 48);
  v58 = v0;
  v59 = v24;
  v25 = v4[4];
  v25(&v50[v24], v18, v3);
  v26 = *(v65 + 11);
  v64 = v20[11];
  v53 = v25;
  v54 = v4 + 4;
  v25(&v23[v64], &v18[v26], v3);
  v27 = v20[12];
  v28 = v50;
  v29 = v59;
  v30 = *&v18[*(v65 + 12)];
  v52 = v27;
  *&v23[v27] = v30;
  v31 = v4[2];
  v4 += 2;
  v63 = v31;
  v31(v23, v28 + v29, v3);
  v32 = 0;
  *v28 = 0;
  *(v28 + 8) = 0;
  v51 = (v4 + 3);
  v61 = (v4 + 5);
  v62 = (v4 - 1);
  v60 = (v4 + 4);
  v65 = v23;
  v55 = v4;
  do
  {
    v63(v9, v28 + v29, v3);
    sub_1D20AFF6C(&qword_1EE0843E0, MEMORY[0x1E6969530]);
    if (v30 <= 0.0)
    {
      if ((sub_1D211379C() & 1) == 0)
      {
LABEL_4:
        v33 = v9;
        v34 = v57;
        sub_1D20A8580(v28, v57, &qword_1EC6C7278, &unk_1D2115720);
        v35 = v28;
        v36 = *v34;
        v37 = *(v34 + 8);
        v38 = *(v58 + 48);
        sub_1D20AFF6C(&qword_1EC6C7288, MEMORY[0x1E6969530]);
        v39 = v13;
        v40 = v56;
        v41 = sub_1D2113B1C();
        LOBYTE(v36) = v42;
        v43 = v34 + v38;
        v9 = v33;
        (*v62)(v43, v3);
        *v35 = v41;
        v44 = v36 & 1;
        v28 = v35;
        v29 = v59;
        *(v28 + 8) = v44;
        v45 = v40;
        v13 = v39;
        (*v51)(v28 + v29, v45, v3);
        v53(v39, v33, v3);
        v46 = 0;
        goto LABEL_7;
      }
    }

    else if ((sub_1D211378C() & 1) == 0)
    {
      goto LABEL_4;
    }

    (*v62)(v9, v3);
    v46 = 1;
LABEL_7:
    (*v61)(v13, v46, 1, v3);
    v47 = (*v60)(v13, 1, v3);
    sub_1D20A862C(v13, &qword_1EC6C7248, &qword_1D2114A80);
    if (v47 == 1)
    {
      goto LABEL_11;
    }
  }

  while (!__OFADD__(v32++, 1));
  __break(1u);
LABEL_11:
  sub_1D20A862C(v65, &qword_1EC6C7280, &qword_1D21149E0);
  return v32;
}

unint64_t sub_1D20AF498()
{
  v0 = sub_1D21133BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1D21133DC();
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v6 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v37 - v7;
  v9 = sub_1D211319C();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v37 - v17;
  sub_1D2112ADC();
  v19 = sub_1D2112F9C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1D20A862C(v18, &qword_1EC6C7250, &qword_1D21149C0);
LABEL_7:
    sub_1D211339C();
    v26 = sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
    sub_1D20AFF6C(&qword_1EE0843C0, MEMORY[0x1E6969C20]);
    sub_1D2112EDC();
    sub_1D21133CC();
    (*(v46 + 8))(v5, v2);
    swift_willThrow();
    return v26;
  }

  sub_1D20D912C(0x644964697267, 0xE600000000000000);
  v22 = v21;
  (*(v20 + 8))(v18, v19);
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = v39;
  sub_1D211317C();
  sub_1D21130DC();
  v24 = v41;
  v25 = v42;
  v26 = v41 + 16;
  v27 = *(v41 + 16);
  v27(v8, v23, v42);
  v28 = v38;
  v27(&v8[*(v38 + 36)], v13, v25);
  *&v8[*(v28 + 40)] = 0x4072C00000000000;
  v29 = v40;
  v30 = sub_1D20AE33C(v8);
  sub_1D20A862C(v8, &qword_1EC6C7240, &unk_1D21149B0);
  v31 = *(v24 + 8);
  v31(v13, v25);
  v32 = sub_1D2112B7C();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_1D2112B6C();
  v43 = xmmword_1D21151F0;
  v44 = 0;
  v45 = v30;
  sub_1D20AFF18();
  v35 = sub_1D2112B5C();
  if (!v29)
  {
    v26 = v35;
  }

  v31(v23, v25);

  return v26;
}

unint64_t sub_1D20AF9D8()
{
  v0 = sub_1D21133BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1D21133DC();
  v49 = *(v2 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v6 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v39 - v7;
  v9 = sub_1D211319C();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v39 - v17;
  sub_1D2112ADC();
  v19 = sub_1D2112F9C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1D20A862C(v18, &qword_1EC6C7250, &qword_1D21149C0);
LABEL_7:
    sub_1D211339C();
    v26 = sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
    sub_1D20AFF6C(&qword_1EE0843C0, MEMORY[0x1E6969C20]);
    sub_1D2112EDC();
    sub_1D21133CC();
    (*(v49 + 8))(v5, v2);
    swift_willThrow();
    return v26;
  }

  sub_1D20D912C(0x644964697267, 0xE600000000000000);
  v22 = v21;
  (*(v20 + 8))(v18, v19);
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = v41;
  sub_1D211317C();
  sub_1D21130DC();
  v25 = v43;
  v24 = v44;
  v26 = v43 + 16;
  v27 = *(v43 + 16);
  v27(v8, v23, v44);
  v28 = v40;
  v27(&v8[*(v40 + 36)], v13, v24);
  *&v8[*(v28 + 40)] = 0x4072C00000000000;
  v29 = v42;
  v30 = sub_1D20AE33C(v8);
  v31 = v8;
  v32 = v30;
  sub_1D20A862C(v31, &qword_1EC6C7240, &unk_1D21149B0);
  v33 = *(v25 + 8);
  v33(v13, v24);
  v34 = sub_1D2112B7C();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1D2112B6C();
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = v32;
  sub_1D20AFF18();
  v37 = sub_1D2112B5C();
  if (!v29)
  {
    v26 = v37;
  }

  v33(v23, v24);

  return v26;
}

unint64_t sub_1D20AFF18()
{
  result = qword_1EC6C7390;
  if (!qword_1EC6C7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7390);
  }

  return result;
}

uint64_t sub_1D20AFF6C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MockErrorURLResponder.respond(to:)()
{
  v0 = sub_1D21133BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1D21133DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D211337C();
  sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
  sub_1D20B3268(&qword_1EE0843C0, MEMORY[0x1E6969C20]);
  sub_1D2112EDC();
  sub_1D21133CC();
  (*(v3 + 8))(v6, v2);
  return swift_willThrow();
}

uint64_t sub_1D20B0138()
{
  v0 = sub_1D21133BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1D21133DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D211337C();
  sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
  sub_1D20B3268(&qword_1EE0843C0, MEMORY[0x1E6969C20]);
  sub_1D2112EDC();
  sub_1D21133CC();
  (*(v3 + 8))(v6, v2);
  return swift_willThrow();
}

uint64_t sub_1D20B02D4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v35 = &v30 - v3;
  v34 = sub_1D211335C();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D21130AC();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D211308C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D211306C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D211307C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6969360]);
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, *MEMORY[0x1E6969358], v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, *MEMORY[0x1E6969370], v11);
  (*(v7 + 104))(v27, *MEMORY[0x1E6969380], v33);
  sub_1D211332C();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return sub_1D211309C();
  }

  return result;
}

uint64_t static MockEnergyIntervalDataGenerator.windowRatings(grid:fromDate:endDate:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, unint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = sub_1D20B0CE4(a1, a2);
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D211319C();
    v16 = *(*(v15 - 8) + 56);
    v16(v12, 1, 1, v15);
    v16(v10, 1, 1, v15);
    v17 = type metadata accessor for EnergyWindows(0);
    v18 = v17[5];
    v16(a3 + v18, 1, 1, v15);
    v19 = v17[6];
    v16(a3 + v19, 1, 1, v15);
    *a3 = v14;
    sub_1D20AD058(v12, a3 + v18);
    sub_1D20AD058(v10, a3 + v19);
    v20 = (a3 + v17[7]);
    *v20 = 0;
    v20[1] = 0;
    v21 = (a3 + v17[8]);
    *v21 = 0;
    v21[1] = 0;
    *(a3 + v17[9]) = 0;
    return (*(*(v17 - 1) + 56))(a3, 0, 1, v17);
  }

  else
  {
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D211362C();
    __swift_project_value_buffer(v23, qword_1EE0874C0);
    v24 = sub_1D21135FC();
    v25 = sub_1D2113A7C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D209F000, v24, v25, "Unable to generate Mock Energy Intervals", v26, 2u);
      MEMORY[0x1D3896EB0](v26, -1, -1);
    }

    v27 = type metadata accessor for EnergyWindows(0);
    v28 = *(*(v27 - 8) + 56);

    return v28(a3, 1, 1, v27);
  }
}

unint64_t sub_1D20B0A18(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D2113ECC();
  sub_1D211375C();
  v6 = sub_1D2113F1C();

  return sub_1D20B0A90(a1, a2, v6);
}

unint64_t sub_1D20B0A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D2113E2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D20B0B48(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1D3896EC0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1D3896EC0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D20B0BD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D0, &qword_1D2115398);
    v3 = sub_1D2113CFC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D20B3318(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1D20B0A18(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D20B3388(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D20B0CE4(uint64_t a1, uint64_t a2)
{
  v157 = type metadata accessor for EnergyWindow(0);
  v148 = *(v157 - 8);
  v4 = *(v148 + 64);
  v5 = MEMORY[0x1EEE9AC00](v157);
  v161 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v156 = &v119 - v7;
  v134 = sub_1D2112E7C();
  v8 = *(v134 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v138 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1D211321C();
  v11 = *(v137 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1D21132EC();
  v162 = *(v133 - 8);
  v14 = v162[8];
  MEMORY[0x1EEE9AC00](v133);
  v143 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v119 - v18;
  v20 = sub_1D211335C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v135 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v142 = &v119 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v155 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v154 = &v119 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v141 = &v119 - v32;
  v33 = sub_1D211319C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v147 = &v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v146 = &v119 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v120 = &v119 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v119 - v42;
  (*(v34 + 16))(&v119 - v42, a1, v33);
  v150 = sub_1D20B3268(&qword_1EE0843E0, MEMORY[0x1E6969530]);
  v151 = a2;
  v44 = sub_1D211377C();
  v119 = v34;
  if (v44)
  {
    v162 = MEMORY[0x1E69E7CC0];
LABEL_3:
    (*(v119 + 8))(v43, v33);
    return v162;
  }

  v144 = v20;
  v140 = v19;
  v153 = 0;
  v139 = (v21 + 48);
  v132 = (v21 + 32);
  v131 = *MEMORY[0x1E6969868];
  v130 = (v11 + 104);
  v129 = (v11 + 8);
  v128 = (v21 + 16);
  v127 = *MEMORY[0x1E6969A88];
  v124 = (v8 + 8);
  v126 = *MEMORY[0x1E6969A98];
  v123 = (v162 + 1);
  v122 = (v21 + 8);
  v121 = (v34 + 48);
  v149 = (v34 + 32);
  v158 = (v34 + 8);
  v159 = (v34 + 56);
  v125 = xmmword_1D2115280;
  v162 = MEMORY[0x1E69E7CC0];
  v160 = v33;
  v145 = v43;
  while (1)
  {
    if (v162[2])
    {
      do
      {
        v163 = 0;
        MEMORY[0x1D3896EC0](&v163, 8);
      }

      while (!(3 * v163));
      v46 = dbl_1F4D9E2E8[((v163 * 3uLL) >> 64) + 4];
      goto LABEL_23;
    }

    v47 = v140;
    sub_1D21132FC();
    v48 = v144;
    if ((*v139)(v47, 1, v144) == 1)
    {
      sub_1D20A862C(v47, &qword_1EC6C7298, &unk_1D21149F0);
      v49 = v141;
      (*v159)(v141, 1, 1, v33);
    }

    else
    {
      v50 = v142;
      (*v132)(v142, v47, v48);
      v51 = v136;
      v52 = v137;
      (*v130)(v136, v131, v137);
      sub_1D211322C();
      (*v129)(v51, v52);
      (*v128)(v135, v50, v48);
      sub_1D21132BC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
      v53 = sub_1D21132CC();
      v54 = *(v53 - 8);
      v55 = *(v54 + 72);
      v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = v125;
      v58 = v57 + v56;
      v59 = *(v54 + 104);
      v59(v58, v127, v53);
      v59(v58 + v55, v126, v53);
      sub_1D20BFD3C(v57);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v60 = v138;
      sub_1D211324C();

      v61 = sub_1D2112E1C();
      if (v62)
      {
        v63 = 0;
      }

      else
      {
        v63 = v61;
      }

      result = 59 - v63;
      if (__OFSUB__(59, v63))
      {
        goto LABEL_61;
      }

      sub_1D2112E2C();
      v64 = sub_1D2112E4C();
      if (v65)
      {
        v66 = 0;
      }

      else
      {
        v66 = v64;
      }

      result = 60 - v66;
      if (__OFSUB__(60, v66))
      {
        goto LABEL_62;
      }

      sub_1D2112E5C();
      v49 = v141;
      v67 = v143;
      sub_1D211328C();
      (*v124)(v60, v134);
      (*v123)(v67, v133);
      (*v122)(v142, v144);
      v68 = v160;
      if ((*v121)(v49, 1, v160) != 1)
      {
        v69 = v120;
        (*v149)(v120, v49, v68);
        sub_1D211302C();
        v71 = v70;
        sub_1D211302C();
        v73 = v72;
        (*v158)(v69, v68);
        v46 = v71 - v73;
        goto LABEL_23;
      }
    }

    sub_1D20A862C(v49, &qword_1EC6C7248, &qword_1D2114A80);
    v46 = 0.0;
LABEL_23:
    v163 = 0;
    MEMORY[0x1D3896EC0](&v163, 8);
    v74 = 0;
    v75 = byte_1F4D9E2C0[(v163 >> 62) + 32];
    v76 = MEMORY[0x1E69E7CC0];
    do
    {
      v77 = byte_1F4D9E2C0[v74 + 32];
      if (v77 > 1u || byte_1F4D9E2C0[v74 + 32])
      {
        v78 = sub_1D2113E2C();

        if ((v78 & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v163 = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D20DC834(0, *(v76 + 16) + 1, 1);
            v76 = v163;
          }

          v81 = *(v76 + 16);
          v80 = *(v76 + 24);
          if (v81 >= v80 >> 1)
          {
            sub_1D20DC834((v80 > 1), v81 + 1, 1);
            v76 = v163;
          }

          *(v76 + 16) = v81 + 1;
          *(v76 + v81 + 32) = v77;
        }
      }

      else
      {
      }

      ++v74;
    }

    while (v74 != 4);
    v82 = *(v76 + 16);
    if (v82)
    {
      break;
    }

    v33 = v160;
LABEL_6:
    if (sub_1D211377C())
    {
      goto LABEL_3;
    }
  }

  result = sub_1D20B0B48(v82);
  if ((result & 0x8000000000000000) == 0)
  {
    if (result >= *(v76 + 16))
    {
      goto LABEL_60;
    }

    v83 = *(v76 + result + 32);

    if (v75)
    {
      v84 = sub_1D2113E2C();

      if (v84)
      {
        goto LABEL_40;
      }
    }

    else
    {

LABEL_40:
      if (v46 <= 3600.0)
      {
        v83 = v75;
      }
    }

    v85 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v85 setFormatOptions_];
    v86 = sub_1D21130EC();
    v87 = v83;
    v88 = [v85 stringFromDate_];

    v152 = sub_1D21137CC();
    v90 = v89;

    v91 = v146;
    sub_1D21130DC();
    v92 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v92 setFormatOptions_];
    v93 = sub_1D21130EC();
    v94 = [v92 stringFromDate_];

    v95 = sub_1D21137CC();
    v97 = v96;

    v98 = *v158;
    (*v158)(v91, v160);
    if (v87 > 1)
    {
      if (v87 == 2)
      {
        v99 = 0xE600000000000000;
        v100 = 0x454355444552;
      }

      else
      {
        v99 = 0xE500000000000000;
        v100 = 0x5453524F57;
      }
    }

    else
    {
      v99 = 0xE400000000000000;
      if (v87)
      {
        v100 = 1146048327;
      }

      else
      {
        v100 = 1414743362;
      }
    }

    v43 = v145;
    v101 = v157;
    v102 = v161;
    v103 = (v161 + *(v157 + 28));
    *v103 = v152;
    v103[1] = v90;
    v104 = (v102 + *(v101 + 32));
    *v104 = v95;
    v104[1] = v97;
    v105 = (v102 + *(v101 + 24));
    *v105 = v100;
    v105[1] = v99;
    v106 = qword_1EE084100;

    if (v106 != -1)
    {
      swift_once();
    }

    v107 = sub_1D21130CC();
    __swift_project_value_buffer(v107, qword_1EE0874F0);
    v108 = v153;
    sub_1D21130BC();
    if (v108)
    {

      v109 = 1;
    }

    else
    {
      v109 = 0;
    }

    v110 = *v159;
    v111 = v154;
    v112 = v109;
    v33 = v160;
    (*v159)(v154, v112, 1, v160);
    sub_1D20A84BC(v111, v161);
    sub_1D21130BC();
    v153 = 0;

    v113 = v155;
    v110(v155, 0, 1, v33);
    v114 = v161;
    sub_1D20A84BC(v113, v161 + *(v157 + 20));
    sub_1D20B32B0(v114, v156, type metadata accessor for EnergyWindow);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v162 = sub_1D20B71E4(0, v162[2] + 1, 1, v162);
    }

    v116 = v162[2];
    v115 = v162[3];
    if (v116 >= v115 >> 1)
    {
      v162 = sub_1D20B71E4(v115 > 1, v116 + 1, 1, v162);
    }

    v117 = v162;
    v162[2] = v116 + 1;
    sub_1D20B32B0(v156, v117 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v116, type metadata accessor for EnergyWindow);
    v118 = v147;
    sub_1D21130DC();
    v98(v43, v33);
    (*v149)(v43, v118, v33);
    goto LABEL_6;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

unint64_t sub_1D20B1DFC()
{
  v0 = sub_1D21133BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v114 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D21133DC();
  v115 = *(v3 - 8);
  v4 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v113 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v102 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73C0, &qword_1D2115388);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v105 = &v92 - v13;
  v106 = type metadata accessor for EnergyWindows(0);
  v104 = *(v106 - 8);
  v14 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v99 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D21130CC();
  v108 = *(v16 - 8);
  v109 = v16;
  v17 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D211319C();
  v111 = *(v20 - 8);
  v112 = v20;
  v21 = v111[8];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v103 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v107 = &v92 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v92 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v92 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v110 = &v92 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v92 - v35;
  v37 = sub_1D2112F9C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v92 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    sub_1D20A862C(v36, &qword_1EC6C7250, &qword_1D21149C0);
    v42 = v115;
LABEL_19:
    sub_1D211339C();
    v79 = sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
    sub_1D20B3268(&qword_1EE0843C0, MEMORY[0x1E6969C20]);
    v80 = v113;
    sub_1D2112EDC();
    sub_1D21133CC();
    (*(v42 + 8))(v80, v3);
    swift_willThrow();
    return v79;
  }

  (*(v38 + 32))(v41, v36, v37);
  sub_1D20D912C(0x644964697267, 0xE600000000000000);
  if (!v43)
  {
    (*(v38 + 8))(v41, v37);
    v42 = v115;
    goto LABEL_19;
  }

  v94 = v43;
  v95 = v41;
  v96 = v38;
  v97 = v37;
  v98 = v3;
  v44 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1D211317C();
  sub_1D20B02D4(v19);
  sub_1D211303C();
  v93 = *(v108 + 8);
  v93(v19, v109);
  v45 = v111 + 1;
  v108 = v111[1];
  (v108)(v31, v112);
  v46 = sub_1D21137BC();

  v47 = [v44 dateFromString_];

  if (!v47)
  {
    (*(v96 + 8))(v95, v97);

LABEL_11:
    v3 = v98;
    v42 = v115;
    goto LABEL_19;
  }

  sub_1D211316C();

  v48 = v28;
  v49 = v112;
  v92 = v111[4];
  v92(v110, v48, v112);
  v50 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1D211312C();
  sub_1D20B02D4(v19);
  sub_1D211303C();
  v93(v19, v109);
  v51 = v31;
  v52 = v108;
  (v108)(v51, v49);
  v53 = sub_1D21137BC();

  v54 = [v50 dateFromString_];

  v55 = v49;
  if (!v54)
  {

    v52(v110, v49);
    (*(v96 + 8))(v95, v97);
    goto LABEL_11;
  }

  v109 = v45;
  v56 = v103;
  sub_1D211316C();

  v57 = v107;
  v92(v107, v56, v49);
  v58 = sub_1D20B0CE4(v110, v57);
  if (v58)
  {
    v59 = v58;
    v60 = v111[7];
    v61 = v101;
    v60(v101, 1, 1, v49);
    v62 = v102;
    v60(v102, 1, 1, v49);
    v64 = v105;
    v63 = v106;
    v65 = *(v106 + 20);
    v60(&v105[v65], 1, 1, v55);
    v66 = v55;
    v67 = v63[6];
    v60(v64 + v67, 1, 1, v66);
    *v64 = v59;
    sub_1D20AD058(v61, v64 + v65);
    sub_1D20AD058(v62, v64 + v67);
    v68 = 0;
    v69 = (v64 + v63[7]);
    *v69 = 0;
    v69[1] = 0;
    v70 = (v64 + v63[8]);
    *v70 = 0;
    v70[1] = 0;
    *(v64 + v63[9]) = 0;
    v3 = v98;
    v42 = v115;
  }

  else
  {
    v64 = v105;
    v63 = v106;
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v71 = sub_1D211362C();
    __swift_project_value_buffer(v71, qword_1EE0874C0);
    v72 = sub_1D21135FC();
    v73 = sub_1D2113A7C();
    v74 = os_log_type_enabled(v72, v73);
    v3 = v98;
    v42 = v115;
    if (v74)
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1D209F000, v72, v73, "Unable to generate Mock Energy Intervals", v75, 2u);
      MEMORY[0x1D3896EB0](v75, -1, -1);
    }

    v68 = 1;
  }

  v76 = v104;
  (*(v104 + 56))(v64, v68, 1, v63);

  if ((*(v76 + 48))(v64, 1, v63) == 1)
  {
    v77 = v108;
    v78 = v112;
    (v108)(v107, v112);
    v77(v110, v78);
    (*(v96 + 8))(v95, v97);
    sub_1D20A862C(v64, &qword_1EC6C73C0, &qword_1D2115388);
    goto LABEL_19;
  }

  v82 = v99;
  sub_1D20B32B0(v64, v99, type metadata accessor for EnergyWindows);
  v83 = sub_1D2112B7C();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  sub_1D2112B6C();
  sub_1D20B3268(&qword_1EC6C73C8, type metadata accessor for EnergyWindows);
  v86 = v100;
  v87 = sub_1D2112B5C();
  if (v86)
  {

    sub_1D20B320C(v82);
    v88 = v108;
    v89 = v112;
    v79 = v109;
    (v108)(v107, v112);
    v88(v110, v89);
  }

  else
  {
    v79 = v87;

    sub_1D20B320C(v82);
    v90 = v108;
    v91 = v112;
    (v108)(v107, v112);
    v90(v110, v91);
  }

  (*(v96 + 8))(v95, v97);
  return v79;
}

void sub_1D20B2A08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v53 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v53 - v7;
  v9 = sub_1D211319C();
  v10 = *(v9 - 8);
  v59 = v9;
  v60 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v53 - v16;
  v18 = sub_1D2112F9C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1D20A862C(v17, &qword_1EC6C7250, &qword_1D21149C0);
LABEL_10:
    sub_1D20B316C();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();
    return;
  }

  (*(v19 + 32))(v22, v17, v18);
  v23 = sub_1D20D58E0();
  [v23 copy];

  sub_1D2113B7C();
  swift_unknownObjectRelease();
  sub_1D20B31C0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v19 + 8))(v22, v18);
    goto LABEL_10;
  }

  v55 = v0;
  v58 = v61;
  sub_1D211313C();
  sub_1D211331C();
  v24 = sub_1D211335C();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v8, 1, v24) != 1)
  {
    v26 = sub_1D211333C();
    (*(v25 + 8))(v8, v24);
  }

  v27 = v58;
  [v58 setTimeZone_];

  v28 = sub_1D21130EC();
  v29 = [v27 stringFromDate_];

  v56 = sub_1D21137CC();
  v57 = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73A8, "J{");
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D2114850;
  sub_1D20D4AB4(v4);
  v33 = v59;
  v32 = v60;
  if ((*(v60 + 48))(v4, 1, v59) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1D211314C();
    v35 = v34;
    sub_1D211314C();
    v37 = v35 - v36;
    v38 = *(v32 + 8);
    v60 = v32 + 8;
    v54 = v38;
    v38(v4, v33);
    v39 = MEMORY[0x1E69E6438];
    *(v31 + 56) = MEMORY[0x1E69E63B0];
    *(v31 + 64) = v39;
    *(v31 + 32) = v37;
    v40 = sub_1D21137FC();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
    inited = swift_initStackObject();
    v53 = v13;
    v44 = inited;
    *(inited + 32) = 1702125892;
    *(inited + 16) = xmmword_1D2115280;
    v45 = v56;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v45;
    *(inited + 56) = v57;
    strcpy((inited + 64), "Cache-Control");
    *(inited + 78) = -4864;
    v62 = 0x3D6567612D78616DLL;
    v63 = 0xE800000000000000;

    v56 = v42;
    MEMORY[0x1D38961A0](v40, v42);
    v46 = v63;
    *(v44 + 80) = v62;
    *(v44 + 88) = v46;
    sub_1D20CE7A8(v44);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B8, &qword_1D2115380);
    swift_arrayDestroy();
    v47 = objc_allocWithZone(MEMORY[0x1E696AC68]);
    v48 = sub_1D2112F2C();
    v49 = sub_1D21137BC();
    v50 = sub_1D21136FC();
    v51 = [v47 initWithURL:v48 statusCode:200 HTTPVersion:v49 headerFields:v50];

    if (v51)
    {

      v54(v53, v59);
      (*(v19 + 8))(v22, v18);
      return;
    }
  }

  __break(1u);
}

unint64_t sub_1D20B316C()
{
  result = qword_1EC6C7398;
  if (!qword_1EC6C7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7398);
  }

  return result;
}

unint64_t sub_1D20B31C0()
{
  result = qword_1EC6C73A0;
  if (!qword_1EC6C73A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6C73A0);
  }

  return result;
}

uint64_t sub_1D20B320C(uint64_t a1)
{
  v2 = type metadata accessor for EnergyWindows(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D20B3268(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D20B32B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D20B3318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D8, &qword_1D21153A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1D20B3388(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static EnergyGuidanceTransformer.convertToEnergyWindows(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v256 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v256 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v282 = &v256 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v281 = &v256 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v267 = &v256 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v266 = &v256 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v256 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v271 = &v256 - v23;
  v24 = type metadata accessor for EnergyWindow(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v280 = &v256 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v283 = &v256 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v279 = &v256 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v273 = &v256 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v265 = &v256 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v268 = &v256 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v264 = &v256 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v256 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v272 = &v256 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v256 - v46;
  v288 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v298 = *(v288 - 8);
  v48 = *(v298 + 64);
  v49 = MEMORY[0x1EEE9AC00](v288);
  v285 = &v256 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v302 = &v256 - v51;
  v284 = type metadata accessor for HSGuidanceValue(0);
  v52 = *(*(v284 - 8) + 64);
  MEMORY[0x1EEE9AC00](v284);
  v303 = &v256 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73E0, &qword_1D21153B8);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v292 = &v256 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v291 = (&v256 - v58);
  v304 = sub_1D211319C();
  v59 = *(v304 - 8);
  v60 = *(v59 + 64);
  v61 = MEMORY[0x1EEE9AC00](v304);
  v287 = &v256 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v64 = MEMORY[0x1EEE9AC00](v63);
  v306 = (&v256 - v65);
  MEMORY[0x1EEE9AC00](v64);
  if (!*(a1 + 8))
  {
    if (qword_1EE083DE8 != -1)
    {
      goto LABEL_113;
    }

    goto LABEL_83;
  }

  v301 = *(a1 + 8);
  v299 = v67;
  v262 = v24;
  v256 = v22;
  v257 = v47;
  v258 = v43;
  v261 = v25;
  v274 = v11;
  v275 = v8;
  v276 = a2;
  v290 = &v256 - v66;
  sub_1D211304C();
  v277 = type metadata accessor for HSGuidanceForecast(0);
  v68 = *(v277 + 28);
  v278 = a1;
  v69 = *(a1 + v68);
  v312 = 0;
  v313 = 0;
  v311 = v69;
  v286 = (v59 + 56);
  v259 = (v59 + 40);
  v289 = v69;

  v70 = 0;
  v260 = 0;
  v294 = MEMORY[0x1E69E7CC0];
  v295 = 4271950;
  v296 = 0xE300000000000000;
  v72 = v302;
  v71 = v303;
  v305 = (v59 + 8);
  while (1)
  {
    v73 = v292;
    sub_1D20B56F4(v292);
    v74 = v73;
    v75 = v291;
    sub_1D20B7DA8(v74, v291, &qword_1EC6C73E0, &qword_1D21153B8);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73E8, &unk_1D21153C0);
    if ((*(*(v76 - 8) + 48))(v75, 1, v76) == 1)
    {

      v186 = v276;
      v187 = v275;
      v188 = v274;
      v92 = v304;
LABEL_101:
      v232 = *(v277 + 32);
      v233 = v294;

      sub_1D2112BDC();
      v234 = *v286;
      (*v286)(v188, 0, 1, v92);
      sub_1D2112C0C();

      (*v305)(v290, v92);
      v234(v187, 0, 1, v92);
      v235 = type metadata accessor for EnergyWindows(0);
      v236 = v235[5];
      v234(v186 + v236, 1, 1, v92);
      v237 = v235[6];
      v234(v186 + v237, 1, 1, v92);
      *v186 = v233;
      sub_1D20AD058(v188, v186 + v236);
      sub_1D20AD058(v187, v186 + v237);
      v238 = (v186 + v235[7]);
      *v238 = 0;
      v238[1] = 0;
      v239 = (v186 + v235[8]);
      *v239 = 0;
      v239[1] = 0;
      *(v186 + v235[9]) = 0;
      (*(*(v235 - 1) + 56))(v186, 0, 1, v235);
    }

    v293 = *v75;
    sub_1D20B7C1C(v75 + *(v76 + 48), v71, type metadata accessor for HSGuidanceValue);
    v77 = v301;
    v297 = *(v301 + 16);
    if (v70 >= v297)
    {
LABEL_77:

      if (qword_1EE083DE8 != -1)
      {
LABEL_111:
        swift_once();
      }

      v182 = sub_1D211362C();
      __swift_project_value_buffer(v182, qword_1EE0874C0);
      v183 = sub_1D21135FC();
      v184 = sub_1D2113A6C();
      v185 = os_log_type_enabled(v183, v184);
      v186 = v276;
      v187 = v275;
      v188 = v274;
      if (v185)
      {
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v307 = v190;
        *v189 = 136315138;
        *(v189 + 4) = sub_1D20B75F0(0xD00000000000001ALL, 0x80000001D211A530, &v307);
        _os_log_impl(&dword_1D209F000, v183, v184, "%s ran out of thresholds. returning back final window", v189, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v190);
        MEMORY[0x1D3896EB0](v190, -1, -1);
        MEMORY[0x1D3896EB0](v189, -1, -1);
      }

      v191 = sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
      v192 = [objc_opt_self() processInfo];
      v193 = [v192 processName];

      v194 = sub_1D21137CC();
      v196 = v195;

      LOWORD(v307) = 256;
      BYTE2(v307) = 0;
      v308 = v194;
      v309 = v196;
      v310 = v191;
      static AutoBugCaptureManager.sendIssue(_:)(&v307);

      v197 = v287;
      if (v293 == *(v289 + 16) - 1)
      {
        sub_1D2112BDC();
      }

      else
      {
        sub_1D2112C0C();
      }

      v92 = v304;
      v206 = v305;
      if (v295 == 4271950 && v296 == 0xE300000000000000 || (sub_1D2113E2C() & 1) != 0 || (sub_1D211310C() & 1) == 0 || (v207 = v306, sub_1D2112C0C(), v208 = sub_1D211310C(), v209 = *v206, (*v206)(v207, v92), (v208 & 1) == 0))
      {
        (*v206)(v197, v92);
        sub_1D20B7C84(v303, type metadata accessor for HSGuidanceValue);
      }

      else
      {
        v306 = v209;
        if (qword_1EE083910 != -1)
        {
          swift_once();
        }

        v210 = qword_1EE087450;
        v211 = sub_1D21130EC();
        v212 = [v210 stringFromDate_];

        v213 = sub_1D21137CC();
        v215 = v214;

        v216 = qword_1EE087450;
        v217 = sub_1D21130EC();
        v218 = [v216 stringFromDate_];

        v219 = sub_1D21137CC();
        v221 = v220;

        v222 = v262;
        v223 = v272;
        v224 = (v272 + *(v262 + 28));
        *v224 = v213;
        v224[1] = v215;
        v225 = (v223 + *(v222 + 32));
        *v225 = v219;
        v225[1] = v221;
        v226 = (v223 + *(v222 + 24));
        v227 = v296;
        *v226 = v295;
        v226[1] = v227;
        v228 = qword_1EE084100;

        if (v228 != -1)
        {
          swift_once();
        }

        v229 = sub_1D21130CC();
        __swift_project_value_buffer(v229, qword_1EE0874F0);
        v230 = v260;
        sub_1D21130BC();
        if (v230)
        {

          v231 = 1;
        }

        else
        {
          v231 = 0;
        }

        v247 = *v286;
        v248 = v271;
        (*v286)(v271, v231, 1, v304);
        sub_1D20B7DA8(v248, v272, &qword_1EC6C7248, &qword_1D2114A80);
        sub_1D21130BC();

        v249 = v256;
        v247(v256, 0, 1, v304);
        v250 = v272;
        sub_1D20B7DA8(v249, v272 + *(v262 + 20), &qword_1EC6C7248, &qword_1D2114A80);
        v251 = v257;
        sub_1D20B7C1C(v250, v257, type metadata accessor for EnergyWindow);
        sub_1D20B7D40(v251, v258, type metadata accessor for EnergyWindow);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v294 = sub_1D20B7390(0, v294[2] + 1, 1, v294, &qword_1EC6C7428, &qword_1D2115450, type metadata accessor for EnergyWindow);
        }

        v92 = v304;
        v252 = v287;
        v254 = v294[2];
        v253 = v294[3];
        if (v254 >= v253 >> 1)
        {
          v294 = sub_1D20B7390(v253 > 1, v254 + 1, 1, v294, &qword_1EC6C7428, &qword_1D2115450, type metadata accessor for EnergyWindow);
        }

        sub_1D20B7C84(v257, type metadata accessor for EnergyWindow);
        v306(v252, v92);
        sub_1D20B7C84(v303, type metadata accessor for HSGuidanceValue);
        v255 = v294;
        v294[2] = v254 + 1;
        sub_1D20B7C1C(v258, v255 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v254, type metadata accessor for EnergyWindow);
      }

      goto LABEL_101;
    }

    while (1)
    {
      if (v70 >= *(v77 + 16))
      {
        __break(1u);
        goto LABEL_111;
      }

      v300 = v77 + ((*(v298 + 80) + 32) & ~*(v298 + 80)) + *(v298 + 72) * v70;
      sub_1D20B7D40(v300, v72, type metadata accessor for HSCleanGuidanceThresholds);
      sub_1D2112BDC();
      v78 = sub_1D2112C2C();
      v79 = *(v78 - 8);
      v80 = *(v79 + 8);
      v81 = (v79 + 8);
      v80(v72, v78);
      v82 = v299;
      sub_1D2112C0C();
      v83 = sub_1D20B7CE4(&qword_1EE0843E0, MEMORY[0x1E6969530]);
      v84 = v304;
      v85 = sub_1D211377C();
      v86 = *v305;
      (*v305)(v82, v84);
      v86(v306, v84);
      if (v85)
      {
        break;
      }

      ++v70;
      v72 = v302;
      v77 = v301;
      if (v297 == v70)
      {
        goto LABEL_77;
      }
    }

    v297 = v83;
    a2 = v78;
    v270 = v81;
    v87 = v300;
    v88 = v306;
    v71 = v303;
    sub_1D2112C0C();
    if (v70 >= *(v301 + 16))
    {
      break;
    }

    v263 = v70;
    v89 = v302;
    sub_1D20B7D40(v87, v302, type metadata accessor for HSCleanGuidanceThresholds);
    v90 = v299;
    sub_1D2112C0C();
    v91 = a2;
    v80(v89, a2);
    v92 = v304;
    LODWORD(v269) = sub_1D211377C();
    v86(v90, v92);
    v86(v88, v92);
    if (v269 & 1) != 0 || (sub_1D2112BDC(), sub_1D20B7D40(v300, v89, type metadata accessor for HSCleanGuidanceThresholds), sub_1D2112BDC(), v80(v89, v91), v93 = sub_1D211377C(), v86(v90, v92), v86(v88, v92), (v93))
    {

      v240 = v71;
      v241 = sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
      v242 = [objc_opt_self() processInfo];
      v243 = [v242 processName];

      v244 = sub_1D21137CC();
      v246 = v245;

      LOWORD(v307) = 256;
      BYTE2(v307) = 0;
      v308 = v244;
      v309 = v246;
      v310 = v241;
      static AutoBugCaptureManager.sendIssue(_:)(&v307);

      sub_1D20B7C84(v240, type metadata accessor for HSGuidanceValue);
      v186 = v276;
      v187 = v275;
      v188 = v274;
      goto LABEL_101;
    }

    v94 = *(v71 + *(v284 + 20));
    v95 = v285;
    sub_1D20B7D40(v300, v285, type metadata accessor for HSCleanGuidanceThresholds);
    v96 = _s12HomeServices0aB12FeatureCheckO9isEnabled3keySbAA0aB8FeaturesO_tFZ_0();
    v97 = *(v95 + *(v288 + 20));
    v270 = v86;
    if (v96)
    {
      v72 = v302;
      v70 = v263;
      if (v94 <= v97)
      {
        v297 = 0xE400000000000000;
        v99 = 1414743362;
      }

      else
      {
        v98 = *(v95 + *(v288 + 24));
        if (v94 <= v98)
        {
          v99 = 0x5453524F57;
        }

        else
        {
          v99 = 0x454355444552;
        }

        v100 = 0xE500000000000000;
        if (v94 > v98)
        {
          v100 = 0xE600000000000000;
        }

        v297 = v100;
      }
    }

    else
    {
      if (v94 <= v97)
      {
        v99 = 1414743362;
      }

      else
      {
        v99 = 0x5453524F57;
      }

      v101 = 0xE500000000000000;
      if (v94 <= v97)
      {
        v101 = 0xE400000000000000;
      }

      v297 = v101;
      v72 = v302;
      v70 = v263;
    }

    sub_1D20B7C84(v95, type metadata accessor for HSCleanGuidanceThresholds);
    v102 = v295;
    v103 = v99 == v295;
    v104 = v99;
    v105 = v296;
    if (v103 && v297 == v296 || (v300 = v104, (sub_1D2113E2C() & 1) != 0))
    {

      v300 = v102;
      v106 = v105;
    }

    else
    {
      if (v102 == 4271950 && v105 == 0xE300000000000000 || (v295 = v102, (sub_1D2113E2C() & 1) != 0) || (v148 = v306, sub_1D2112C0C(), v149 = sub_1D211310C(), v270(v148, v304), (v149 & 1) == 0))
      {

        v106 = v297;
      }

      else
      {
        if (qword_1EE083910 != -1)
        {
          swift_once();
        }

        v150 = qword_1EE087450;
        v151 = sub_1D21130EC();
        v152 = [v150 stringFromDate_];

        v153 = sub_1D21137CC();
        v155 = v154;

        v156 = qword_1EE087450;
        v157 = v306;
        sub_1D2112C0C();
        v158 = sub_1D21130EC();
        v270(v157, v304);
        v159 = [v156 stringFromDate_];

        v160 = sub_1D21137CC();
        v162 = v161;

        v163 = v262;
        v164 = v268;
        v165 = (v268 + *(v262 + 28));
        *v165 = v153;
        v165[1] = v155;
        v166 = (v164 + *(v163 + 32));
        v269 = v160;
        *v166 = v160;
        v166[1] = v162;
        v167 = (v164 + *(v163 + 24));
        v168 = v296;
        *v167 = v295;
        v167[1] = v168;
        v169 = qword_1EE084100;

        v295 = v162;

        if (v169 != -1)
        {
          swift_once();
        }

        v170 = sub_1D21130CC();
        __swift_project_value_buffer(v170, qword_1EE0874F0);
        v171 = v260;
        sub_1D21130BC();
        if (v171)
        {

          v172 = 1;
        }

        else
        {
          v172 = 0;
        }

        v173 = *v286;
        v174 = v266;
        (*v286)(v266, v172, 1, v304);
        sub_1D20B7DA8(v174, v268, &qword_1EC6C7248, &qword_1D2114A80);
        sub_1D21130BC();
        v260 = 0;

        v175 = v267;
        v173(v267, 0, 1, v304);
        v176 = v268;
        sub_1D20B7DA8(v175, v268 + *(v262 + 20), &qword_1EC6C7248, &qword_1D2114A80);
        v177 = v176;
        v178 = v264;
        sub_1D20B7C1C(v177, v264, type metadata accessor for EnergyWindow);
        sub_1D20B7D40(v178, v265, type metadata accessor for EnergyWindow);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v294 = sub_1D20B7390(0, v294[2] + 1, 1, v294, &qword_1EC6C7428, &qword_1D2115450, type metadata accessor for EnergyWindow);
        }

        v106 = v297;
        v180 = v294[2];
        v179 = v294[3];
        if (v180 >= v179 >> 1)
        {
          v294 = sub_1D20B7390(v179 > 1, v180 + 1, 1, v294, &qword_1EC6C7428, &qword_1D2115450, type metadata accessor for EnergyWindow);
        }

        sub_1D20B7C84(v264, type metadata accessor for EnergyWindow);
        v181 = v294;
        v294[2] = v180 + 1;
        sub_1D20B7C1C(v265, v181 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v180, type metadata accessor for EnergyWindow);
      }

      v107 = v306;
      sub_1D2112C0C();
      (*v259)(v290, v107, v304);
    }

    if (v293 != *(v289 + 16) - 1)
    {
      goto LABEL_50;
    }

    v108 = v294[2];
    if (v108)
    {
      v109 = v273;
      sub_1D20B7D40(v294 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * (v108 - 1), v273, type metadata accessor for EnergyWindow);
      EnergyWindow.rating.getter(&v307);
      v110 = v307;
      sub_1D20B7C84(v109, type metadata accessor for EnergyWindow);
      if (v110 > 1)
      {
        v111 = v300;
        if (v110 == 2)
        {
          v112 = 0xE600000000000000;
          v113 = 0x454355444552;
        }

        else
        {
          v112 = 0xE500000000000000;
          v113 = 0x5453524F57;
        }
      }

      else
      {
        v111 = v300;
        if (v110)
        {
          v112 = 0xE400000000000000;
          v113 = 1146048327;
        }

        else
        {
          v112 = 0xE400000000000000;
          v113 = 1414743362;
        }
      }

      if (v113 == v111 && v112 == v106)
      {

LABEL_50:
        sub_1D20B7C84(v71, type metadata accessor for HSGuidanceValue);
        v295 = v300;
        v296 = v106;
        continue;
      }

      v114 = sub_1D2113E2C();

      if (v114)
      {
        goto LABEL_50;
      }
    }

    if (qword_1EE083910 != -1)
    {
      swift_once();
    }

    v115 = qword_1EE087450;
    v116 = sub_1D21130EC();
    v117 = [v115 stringFromDate_];

    v118 = sub_1D21137CC();
    v120 = v119;

    v121 = qword_1EE087450;
    v122 = v306;
    sub_1D2112BDC();
    v123 = sub_1D21130EC();
    v124 = v122;
    v125 = v120;
    v270(v124, v304);
    v126 = [v121 stringFromDate_];

    v127 = sub_1D21137CC();
    v129 = v128;

    v130 = v262;
    v131 = v283;
    v132 = (v283 + *(v262 + 28));
    *v132 = v118;
    v132[1] = v125;
    v133 = (v131 + *(v130 + 32));
    v295 = v127;
    *v133 = v127;
    v133[1] = v129;
    v134 = (v131 + *(v130 + 24));
    *v134 = v300;
    v134[1] = v106;
    v135 = qword_1EE084100;

    v296 = v129;

    if (v135 != -1)
    {
      swift_once();
    }

    v136 = sub_1D21130CC();
    __swift_project_value_buffer(v136, qword_1EE0874F0);
    v137 = v260;
    sub_1D21130BC();
    v297 = v106;
    if (v137)
    {

      v138 = 1;
    }

    else
    {
      v138 = 0;
    }

    v139 = *v286;
    v140 = v281;
    (*v286)(v281, v138, 1, v304);
    sub_1D20B7DA8(v140, v283, &qword_1EC6C7248, &qword_1D2114A80);
    sub_1D21130BC();
    v260 = 0;

    v141 = v282;
    v139(v282, 0, 1, v304);
    v142 = v283;
    sub_1D20B7DA8(v141, v283 + *(v262 + 20), &qword_1EC6C7248, &qword_1D2114A80);
    v143 = v142;
    v144 = v279;
    sub_1D20B7C1C(v143, v279, type metadata accessor for EnergyWindow);
    sub_1D20B7D40(v144, v280, type metadata accessor for EnergyWindow);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v294 = sub_1D20B7390(0, v294[2] + 1, 1, v294, &qword_1EC6C7428, &qword_1D2115450, type metadata accessor for EnergyWindow);
    }

    v146 = v294[2];
    v145 = v294[3];
    if (v146 >= v145 >> 1)
    {
      v294 = sub_1D20B7390(v145 > 1, v146 + 1, 1, v294, &qword_1EC6C7428, &qword_1D2115450, type metadata accessor for EnergyWindow);
    }

    sub_1D20B7C84(v279, type metadata accessor for EnergyWindow);
    sub_1D20B7C84(v71, type metadata accessor for HSGuidanceValue);
    v147 = v294;
    v294[2] = v146 + 1;
    sub_1D20B7C1C(v280, v147 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v146, type metadata accessor for EnergyWindow);
    v295 = v300;
    v296 = v297;
  }

  __break(1u);
LABEL_113:
  swift_once();
LABEL_83:
  v198 = sub_1D211362C();
  __swift_project_value_buffer(v198, qword_1EE0874C0);
  v199 = sub_1D21135FC();
  v200 = sub_1D2113A7C();
  if (os_log_type_enabled(v199, v200))
  {
    v201 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v307 = v202;
    *v201 = 136315138;
    *(v201 + 4) = sub_1D20B75F0(0xD00000000000001ALL, 0x80000001D211A530, &v307);
    _os_log_impl(&dword_1D209F000, v199, v200, "%s error: no thresholds provided for guidance", v201, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v202);
    MEMORY[0x1D3896EB0](v202, -1, -1);
    MEMORY[0x1D3896EB0](v201, -1, -1);
  }

  v203 = type metadata accessor for EnergyWindows(0);
  v204 = *(*(v203 - 8) + 56);

  return v204(a2, 1, 1, v203);
}

id sub_1D20B56C0()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  qword_1EE087450 = result;
  return result;
}

uint64_t sub_1D20B56F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73E8, &unk_1D21153C0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v17 - v7);
  v10 = *v1;
  v9 = v1[1];
  v11 = *(*v1 + 16);
  if (v9 == v11)
  {
    v12 = *(v6 + 56);

    return v12(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      v18 = v6;
      v13 = *(type metadata accessor for HSGuidanceValue(0) - 8);
      v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v3 + 48);
      v16 = v1[2];
      *v8 = v16;
      result = sub_1D20B7D40(v14, v8 + v15, type metadata accessor for HSGuidanceValue);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        sub_1D20B7DA8(v8, a1, &qword_1EC6C73E8, &unk_1D21153C0);
        return (*(v18 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static EnergyGuidanceTransformer.guidanceForecastGenerator(time:type:valueRatings:useEnergyThreshold:avoidEnergyThreshold:endValidInterval:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v183 = a4;
  v172 = a3;
  v154 = a5;
  v167 = type metadata accessor for HSGuidanceValue(0);
  v166 = *(v167 - 8);
  v11 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v178 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  v13 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v174 = &v143 - v14;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v15 = *(*(v182 - 1) + 64);
  MEMORY[0x1EEE9AC00](v182);
  v177 = &v143 - v16;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v17 = *(*(v181 - 8) + 64);
  MEMORY[0x1EEE9AC00](v181);
  v173 = &v143 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v170 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v176 = (&v143 - v23);
  v24 = sub_1D211319C();
  v175 = *(v24 - 8);
  v25 = *(v175 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v168 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v179 = &v143 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v169 = &v143 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v161 = &v143 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v180 = &v143 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v162 = &v143 - v36;
  v149 = sub_1D2112C2C();
  v171 = *(v149 - 8);
  v37 = *(v171 + 64);
  v38 = MEMORY[0x1EEE9AC00](v149);
  v40 = &v143 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v143 - v41;
  v150 = type metadata accessor for HSGuidanceError(0);
  v43 = *(*(v150 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v150);
  v153 = &v143 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v143 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v143 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v143 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = (&v143 - v56);
  v58 = MEMORY[0x1EEE9AC00](v55);
  v152 = &v143 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v151 = &v143 - v60;
  LODWORD(a2) = *a2;
  sub_1D20FE6E4(v57, v42);
  v61 = v162;
  v165 = a2;
  v144 = v51;
  v145 = v54;
  v147 = v42;
  v148 = v40;
  v157 = a1;
  v62 = v176;
  sub_1D20A8580(v183, v176, &qword_1EC6C7248, &qword_1D2114A80);
  v63 = v175;
  v64 = *(v175 + 48);
  v164 = v175 + 48;
  v163 = v64;
  v65 = v64(v62, 1, v24);
  v146 = v48;
  if (v65 == 1)
  {
    sub_1D20A862C(v62, &qword_1EC6C7248, &qword_1D2114A80);
    v66 = v157;
    v67 = v180;
LABEL_6:
    v70 = v182;
    v69 = *(v63 + 16);
    v183 = (v63 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    (v69)(v67, v66, v24);
    sub_1D2112BFC();
    goto LABEL_7;
  }

  (*(v63 + 32))(v61, v62, v24);
  v66 = v157;
  v68 = sub_1D211310C();
  v67 = v180;
  if ((v68 & 1) == 0)
  {
    (*(v63 + 8))(v61, v24);
    goto LABEL_6;
  }

  v69 = *(v63 + 16);
  v183 = (v63 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v69)(v180, v66, v24);
  (v69)(v161, v61, v24);
  sub_1D2112BEC();
  (*(v63 + 8))(v61, v24);
  v70 = v182;
LABEL_7:
  v71 = v177;
  sub_1D2112C0C();
  v72 = *(v70 + 9);
  sub_1D2112BDC();
  v73 = v181;
  v74 = v173;
  v75 = (v173 + *(v181 + 44));
  v76 = *(v158 + 48);
  v78 = *(v63 + 32);
  v77 = v63 + 32;
  v78(&v75[v76], v71, v24);
  v161 = *(v73 + 36);
  v177 = v78;
  v78(&v161[v74], &v71[v72], v24);
  v156 = *(v73 + 40);
  *(v74 + v156) = 0x409C200000000000;
  (v69)(v74, &v75[v76], v24);
  v79 = v76;
  v80 = 0;
  v181 = v77 - 24;
  *v75 = 0;
  v155 = (v77 + 8);
  v160 = (v77 + 24);
  v159 = v172 + 32;
  v81 = MEMORY[0x1E69E7CC0];
  v162 = v75;
  v75[8] = 0;
  v82 = v174;
  v182 = v69;
  v175 = v77;
  while (1)
  {
    v176 = v81;
    v83 = v162;
    v84 = v169;
    (v69)(v169, &v162[v79], v24);
    sub_1D20B7CE4(&qword_1EE0843E0, MEMORY[0x1E6969530]);
    if (sub_1D211378C())
    {
      v85 = *v181;
      (*v181)(v84, v24);
      v86 = 1;
      v87 = v170;
      v88 = v171;
    }

    else
    {
      sub_1D20A8580(v83, v82, &qword_1EC6C7278, &unk_1D2115720);
      v89 = *v82;
      v90 = *(v82 + 8);
      v91 = *(v158 + 48);
      sub_1D20B7CE4(&qword_1EC6C7288, MEMORY[0x1E6969530]);
      v92 = v79;
      v93 = v180;
      v94 = sub_1D2113B1C();
      LOBYTE(v90) = v95;
      v85 = *v181;
      v96 = &v174[v91];
      v82 = v174;
      (*v181)(v96, v24);
      *v83 = v94;
      *(v83 + 8) = v90 & 1;
      v97 = v93;
      v79 = v92;
      (*v155)(v83 + v92, v97, v24);
      v98 = v84;
      v87 = v170;
      (v177)(v170, v98, v24);
      v86 = 0;
      v88 = v171;
    }

    v99 = v179;
    v100 = v165;
    (*v160)(v87, v86, 1, v24);
    if (v163(v87, 1, v24) == 1)
    {
      sub_1D20A862C(v173, &qword_1EC6C7280, &qword_1D21149E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73F0, &unk_1D2115730);
      v112 = (type metadata accessor for HSCleanGuidanceThresholds(0) - 8);
      v113 = *(*v112 + 72);
      v114 = (*(*v112 + 80) + 32) & ~*(*v112 + 80);
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_1D2114850;
      v116 = v115 + v114;
      v117 = v147;
      v118 = v149;
      (*(v88 + 16))(v116, v147, v149);
      *(v116 + v112[7]) = a6;
      *(v116 + v112[8]) = a7;
      v119 = type metadata accessor for HSGuidanceForecast(0);
      v120 = *(v88 + 32);
      v121 = v154;
      v120(v154 + v119[6], v117, v118);
      v120(v121 + v119[8], v148, v118);
      *v121 = 0;
      *(v121 + 8) = v115;
      *(v121 + v119[7]) = v176;
      return (*(*(v119 - 1) + 56))(v121, 0, 1, v119);
    }

    v101 = v87;
    v102 = v175;
    (v177)(v99, v101, v24);
    v103 = sub_1D20FDFE4(v99);
    if (v104)
    {

      v123 = v145;
      *v145 = 0xD00000000000001BLL;
      v123[1] = 0x80000001D211A5C0;
      swift_storeEnumTagMultiPayload();
      sub_1D20B7CE4(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
      swift_willThrowTypedImpl();
      v85(v99, v24);
      v124 = *(v88 + 8);
      v125 = v149;
      v124(v148, v149);
      v124(v147, v125);
      sub_1D20A862C(v173, &qword_1EC6C7280, &qword_1D21149E0);
      goto LABEL_31;
    }

    v69 = *(v172 + 16);
    if (!v69)
    {
      break;
    }

    v105 = v103 / 30.0;
    if (COERCE__INT64(fabs(v105)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v105 <= -9.22337204e18)
    {
      goto LABEL_37;
    }

    if (v105 >= 9.22337204e18)
    {
      goto LABEL_38;
    }

    v106 = v168;
    (v182)(v168, v99, v24);
    if (!v80 && v100 == 5)
    {
      v107 = v180;
      sub_1D21130DC();
      v85(v106, v24);
      (v177)(v106, v107, v24);
    }

    v108 = v105 % v69;
    (v182)(v180, v106, v24);
    v69 = v178;
    sub_1D2112BFC();
    if (v108 < 0)
    {
      goto LABEL_39;
    }

    *(v69 + *(v167 + 20)) = *(v159 + 8 * v108);
    v81 = v176;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1D20B7390(0, v81[2] + 1, 1, v81, &qword_1EC6C7420, &qword_1D2115448, type metadata accessor for HSGuidanceValue);
    }

    v110 = v81[2];
    v109 = v81[3];
    if (v110 >= v109 >> 1)
    {
      v81 = sub_1D20B7390(v109 > 1, v110 + 1, 1, v81, &qword_1EC6C7420, &qword_1D2115448, type metadata accessor for HSGuidanceValue);
    }

    v85(v106, v24);
    v85(v179, v24);
    v81[2] = v110 + 1;
    sub_1D20B7C1C(v178, v81 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v110, type metadata accessor for HSGuidanceValue);
    v111 = __OFADD__(v80++, 1);
    v69 = v182;
    if (v111)
    {
      goto LABEL_40;
    }
  }

  v126 = v144;
  *v144 = 0xD000000000000029;
  *(v126 + 8) = 0x80000001D211A5E0;
  swift_storeEnumTagMultiPayload();
  sub_1D20B7CE4(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
  swift_willThrowTypedImpl();
  v85(v99, v24);
  v127 = *(v171 + 8);
  v128 = v149;
  v127(v148, v149);
  v127(v147, v128);
  sub_1D20A862C(v173, &qword_1EC6C7280, &qword_1D21149E0);

  v123 = v145;
  sub_1D20B7C1C(v126, v145, type metadata accessor for HSGuidanceError);
LABEL_31:
  v102 = v154;
  v79 = v146;
  v69 = v153;
  v129 = v152;
  sub_1D20B7C1C(v123, v152, type metadata accessor for HSGuidanceError);
  v130 = v129;
  v131 = v151;
  sub_1D20B7C1C(v130, v151, type metadata accessor for HSGuidanceError);
  sub_1D20B7C1C(v131, v79, type metadata accessor for HSGuidanceError);
  if (qword_1EE083DE8 == -1)
  {
    goto LABEL_32;
  }

LABEL_41:
  swift_once();
LABEL_32:
  v132 = sub_1D211362C();
  __swift_project_value_buffer(v132, qword_1EE0874C0);
  sub_1D20B7D40(v79, v69, type metadata accessor for HSGuidanceError);
  v133 = sub_1D21135FC();
  v134 = sub_1D2113A7C();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = v79;
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v184 = v138;
    *v135 = 136315394;
    *(v135 + 4) = sub_1D20B75F0(0xD00000000000006BLL, 0x80000001D211A550, &v184);
    *(v135 + 12) = 2112;
    sub_1D20B7CE4(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_allocError();
    sub_1D20B7D40(v69, v139, type metadata accessor for HSGuidanceError);
    v140 = _swift_stdlib_bridgeErrorToNSError();
    sub_1D20B7C84(v69, type metadata accessor for HSGuidanceError);
    *(v135 + 14) = v140;
    *v137 = v140;
    _os_log_impl(&dword_1D209F000, v133, v134, "%s error: %@ unable to generate HSGuidanceForecast", v135, 0x16u);
    sub_1D20A862C(v137, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v137, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v138);
    MEMORY[0x1D3896EB0](v138, -1, -1);
    MEMORY[0x1D3896EB0](v135, -1, -1);

    v141 = v136;
  }

  else
  {

    sub_1D20B7C84(v69, type metadata accessor for HSGuidanceError);
    v141 = v79;
  }

  sub_1D20B7C84(v141, type metadata accessor for HSGuidanceError);
  v142 = type metadata accessor for HSGuidanceForecast(0);
  return (*(*(v142 - 8) + 56))(v102, 1, 1, v142);
}

uint64_t sub_1D20B6D20(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

char *sub_1D20B6D80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7268, &unk_1D21149D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D20B6EA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7408, &qword_1D2115430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D20B6FAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7410, &qword_1D2115438);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D20B70E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73F8, "6{");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1D20B7234(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B8, &qword_1D2115380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D20B7390(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1D20B7594(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1D20B75F0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1D20B75F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D20B76BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D20B7E10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D20B76BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D20B77C8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D2113C5C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}