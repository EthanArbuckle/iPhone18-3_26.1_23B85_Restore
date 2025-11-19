unint64_t sub_257D72C8C()
{
  result = qword_2815457F0;
  if (!qword_2815457F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815457F0);
  }

  return result;
}

unint64_t sub_257D72D24()
{
  result = qword_27F8F89B8;
  if (!qword_27F8F89B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6B38);
    sub_257D72DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F89B8);
  }

  return result;
}

unint64_t sub_257D72DA8()
{
  result = qword_27F8F89C0;
  if (!qword_27F8F89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F89C0);
  }

  return result;
}

unint64_t sub_257D72DFC()
{
  result = qword_27F8F89C8;
  if (!qword_27F8F89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F89C8);
  }

  return result;
}

uint64_t sub_257D72E50(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_257D72EB0(double *a1@<X8>)
{
  v4 = sub_257D14144(*(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = v4;
  }
}

unint64_t sub_257D72EF4()
{
  result = qword_2815459A0;
  if (!qword_2815459A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9E70);
    sub_257D728EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815459A0);
  }

  return result;
}

unint64_t sub_257D72FD8()
{
  result = qword_27F8F8A28;
  if (!qword_27F8F8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8A28);
  }

  return result;
}

unint64_t sub_257D73070()
{
  result = qword_27F8F8A30;
  if (!qword_27F8F8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8A30);
  }

  return result;
}

uint64_t sub_257D730C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257D7312C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257D7318C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257D7321C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(**(v2 + 16), *(*(v2 + 16) + 8), *(*(v2 + 16) + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MFEnvironment.ActivityControls.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 44;
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

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MFEnvironment.ActivityControls.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_257D733B0()
{
  result = qword_27F8F8A48;
  if (!qword_27F8F8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8A48);
  }

  return result;
}

unint64_t sub_257D73408()
{
  result = qword_281544FF8;
  if (!qword_281544FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544FF8);
  }

  return result;
}

unint64_t sub_257D73460()
{
  result = qword_281545000;
  if (!qword_281545000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545000);
  }

  return result;
}

uint64_t sub_257D734B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697463417369 && a2 == 0xE800000000000000;
  if (v4 || (sub_257ED0640() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C626174656C6564 && a2 == 0xE900000000000065 || (sub_257ED0640() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x637265506D6F6F7ALL && a2 == 0xEE00656761746E65 || (sub_257ED0640() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000257EF7780 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4379616C70736964 && a2 == 0xEF74736172746E6FLL || (sub_257ED0640() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F437265746C6966 && a2 == 0xEB00000000726F6CLL || (sub_257ED0640() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000257F029C0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000257EF8430 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_257ED0640() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x79546172656D6163 && a2 == 0xEA00000000006570 || (sub_257ED0640() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x44496172656D6163 && a2 == 0xE800000000000000 || (sub_257ED0640() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000257F029E0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000257F02A00 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000257F02A20 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000257F02A40 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000257F02A60 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000257F02A80 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6F69746365746564 && a2 == 0xED000074696E556ELL || (sub_257ED0640() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000257F02AA0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000257EF85E0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000257EF8550 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000257EF7FE0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000257EF8530 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000257EF7F80 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000027 && 0x8000000257F02AC0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000257EF8390 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x457061546B636162 && a2 == 0xEE0064656C62616ELL || (sub_257ED0640() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x614C746365746564 && a2 == 0xEF7365676175676ELL || (sub_257ED0640() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000257EF84E0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000257F02AF0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000257EF84C0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000257EF85C0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000257EF8270 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000257EF8120 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000257EF80D0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x657053746E696F70 && a2 == 0xEF726F6C6F436B61 || (sub_257ED0640() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000257EF8160 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000257EF8250 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000257EF8230 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000257EF8100 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x746E6F436E69616DLL && a2 == 0xEC000000736C6F72 || (sub_257ED0640() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0x437972616D697270 && a2 == 0xEF736C6F72746E6FLL || (sub_257ED0640() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000257EF86A0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x6E6F43726568746FLL && a2 == 0xED0000736C6F7274 || (sub_257ED0640() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000257F02B10 == a2)
  {

    return 44;
  }

  else
  {
    v6 = sub_257ED0640();

    if (v6)
    {
      return 44;
    }

    else
    {
      return 45;
    }
  }
}

float sub_257D743BC(float32x4_t *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = vsubq_f32(v4, v3);
  LODWORD(v6) = v1[1].i64[1];
  v7 = vmulq_f32(v5, v5);
  *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  *v7.f32 = vrsqrte_f32(v8);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)));
  v9 = vmulq_n_f32(v5, vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).f32[0]);
  v10 = a1[1];
  v11 = a1[2];
  v12 = vsubq_f32(v11, v10);
  v13 = COERCE_FLOAT(a1[2].i64[1]);
  v14 = COERCE_FLOAT(a1[1].i64[1]);
  v12.f32[2] = v13 - v14;
  v15 = vmulq_f32(v12, v12);
  *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
  *v15.f32 = vrsqrte_f32(v16);
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
  v17 = vmulq_n_f32(v12, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
  v18 = vsubq_f32(v3, v4);
  v19 = vmulq_f32(v18, v18);
  v19.f32[0] = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
  v20 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  v21 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
  v22 = vmlaq_f32(vmulq_f32(v21, vnegq_f32(v9)), v17, v20);
  v23 = vmulq_f32(v22, v22);
  v23.f32[0] = sqrtf(v23.f32[1] + (v23.f32[2] + v23.f32[0]));
  if (fabsf(v23.f32[0]) >= 0.00000011921)
  {
    v30 = vsubq_f32(v10, v11);
    v31 = vmulq_f32(v30, v30);
    v31.f32[0] = sqrtf(v31.f32[2] + vaddv_f32(*v31.f32));
    v32 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
    *v2.f32 = vsub_f32(*v10.f32, *v3.f32);
    v2.f32[2] = v14 - v6;
    v33 = vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL);
    v35 = vmulq_f32(v2, vmlaq_f32(vmulq_f32(v22, vnegq_f32(v21)), v33, vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL)));
    v34 = vmulq_f32(v2, vmlaq_f32(vmulq_f32(v22, vnegq_f32(v20)), v33, vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL)));
    v35.f32[0] = (v35.f32[2] + vaddv_f32(*v35.f32)) / (v23.f32[0] * v23.f32[0]);
    *v33.f32 = vadd_f32(*v3.f32, vmul_n_f32(*v9.f32, v35.f32[0]));
    v33.f32[2] = v6 + vmuls_lane_f32(v35.f32[0], v9, 2);
    v33.i32[3] = 0;
    v22.f32[0] = (v34.f32[2] + vaddv_f32(*v34.f32)) / (v23.f32[0] * v23.f32[0]);
    v23.i64[0] = 0;
    v36 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v23, v35), 0), v3, vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v35, v19), 0), v4, v33));
    if (v35.f32[0] >= 0.0 && v19.f32[0] >= v35.f32[0])
    {
      v43 = vmuls_lane_f32(v22.f32[0], v17, 2);
      *v44.i8 = vadd_f32(*v10.f32, vmul_n_f32(*v17.f32, v22.f32[0]));
      *&v44.i32[2] = v14 + v43;
      v44.i32[3] = 0;
      v45 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v23, v22), 0), v10, vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v22, v31), 0), v11, v44));
      goto LABEL_23;
    }

    v38 = vmulq_f32(v17, vsubq_f32(v36, v10));
    v39 = v38.f32[2] + vaddv_f32(*v38.f32);
    if (v39 >= 0.0)
    {
      if (v39 < v31.f32[0])
      {
LABEL_22:
        *v17.f32 = vadd_f32(*v10.f32, vmul_n_f32(*v17.f32, v39));
        v45.f32[2] = v14 + (v17.f32[2] * v39);
        v45.i32[3] = 0;
LABEL_23:
        if (v22.f32[0] >= 0.0 && v19.f32[0] >= v22.f32[0])
        {
          goto LABEL_34;
        }

        v50 = vmulq_f32(v9, vsubq_f32(v45, v3));
        v51 = v50.f32[2] + vaddv_f32(*v50.f32);
        if (v51 >= 0.0)
        {
          if (v51 < v19.f32[0])
          {
LABEL_33:
            *v36.f32 = vadd_f32(*v3.f32, vmul_n_f32(*v9.f32, v51));
            v36.f32[2] = v6 + (v9.f32[2] * v51);
            v36.i32[3] = 0;
LABEL_34:
            v48 = vsubq_f32(v36, v45);
            goto LABEL_35;
          }
        }

        else
        {
          v51 = 0.0;
          if (v19.f32[0] > 0.0)
          {
            goto LABEL_33;
          }
        }

        v51 = v19.f32[0];
        goto LABEL_33;
      }
    }

    else
    {
      v39 = 0.0;
      if (v31.f32[0] > 0.0)
      {
        goto LABEL_22;
      }
    }

    v39 = v31.f32[0];
    goto LABEL_22;
  }

  v24 = vsubq_f32(v10, v3);
  v24.f32[2] = v14 - v6;
  v25 = vmulq_f32(v9, v24);
  v26 = vsubq_f32(v11, v3);
  v26.f32[2] = v13 - v6;
  v27 = vmulq_f32(v9, v26);
  v28 = vadd_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v27, v27, 8uLL)), vadd_f32(vzip1_s32(*v25.i8, *v27.i8), vzip2_s32(*v25.i8, *v27.i8)));
  if (v28.f32[0] <= 0.0 && v28.f32[1] <= 0.0)
  {
    v29 = vabs_f32(v28);
    v53 = vcgt_f32(vdup_lane_s32(v29, 1), v29);
    v57 = v1[1];
    v54 = a1[2];
    v55 = a1[1];
LABEL_19:
    type metadata accessor for LineSegment();
    v47 = swift_allocObject();
    v56 = vbslq_s8(vmovl_s16(vdup_lane_s16(v53, 0)), v55, v54);
    *(v47 + 16) = v57;
    *(v47 + 32) = v56;

    v48 = vsubq_f32(v57, v56);
LABEL_35:
    v42 = vmulq_f32(v48, v48);
    return sqrtf(v42.f32[2] + vaddv_f32(*v42.f32));
  }

  if (v19.f32[0] <= v28.f32[0] && v19.f32[0] <= v28.f32[1])
  {
    v46 = vabs_f32(v28);
    v53 = vcgt_f32(vdup_lane_s32(v46, 1), v46);
    v54 = a1[2];
    v55 = a1[1];
    v57 = v1[2];
    goto LABEL_19;
  }

  v41 = vmuls_lane_f32(v28.f32[0], v9, 2);
  *v9.f32 = vsub_f32(vadd_f32(*v3.f32, vmul_n_f32(*v9.f32, v28.f32[0])), *v10.f32);
  v9.f32[2] = (v6 + v41) - v14;
  v42 = vmulq_f32(v9, v9);
  return sqrtf(v42.f32[2] + vaddv_f32(*v42.f32));
}

unint64_t sub_257D747BC()
{
  v1 = v0;
  v2 = sub_257BE9280(MEMORY[0x277D84F90]);
  v3 = [objc_opt_self() shared];
  v4 = [v3 doorAttributesClassifierProperties];

  if (!v4)
  {
    return v2;
  }

  *&v191 = 0xD000000000000017;
  *(&v191 + 1) = 0x8000000257EF93E0;
  v5 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v191 = 0u;
    v192 = 0u;
  }

  v188 = v191;
  v189 = v192;
  if (!*(&v192 + 1))
  {

    sub_257BE4084(&v188, &unk_27F8F62F0);
    return v2;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return v2;
  }

  v6 = v190;
  *&v188 = 0x746174536E65704FLL;
  *(&v188 + 1) = 0xE900000000000065;
  v7 = [v190 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0);
    *&v188 = 0x746174536E65704FLL;
    *(&v188 + 1) = 0xE900000000000065;
    v8 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v8)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v184 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v184 = sub_257ECFF10();
  }

  *&v188 = 1702521171;
  *(&v188 + 1) = 0xE400000000000000;
  v10 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0);
    *&v188 = 1702521171;
    *(&v188 + 1) = 0xE400000000000000;
    v11 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v11)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v183 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v183 = sub_257ECFF10();
  }

  *&v188 = 0x6874654D6E65704FLL;
  *(&v188 + 1) = 0xEA0000000000646FLL;
  v12 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0);
    *&v188 = 0x6874654D6E65704FLL;
    *(&v188 + 1) = 0xEA0000000000646FLL;
    v13 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v13)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v182 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v182 = sub_257ECFF10();
  }

  *&v188 = 0x646E6148726F6F44;
  *(&v188 + 1) = 0xEA0000000000656CLL;
  v14 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0);
    *&v188 = 0x646E6148726F6F44;
    *(&v188 + 1) = 0xEA0000000000656CLL;
    v15 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v15)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v181 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v181 = sub_257ECFF10();
  }

  *&v188 = 0x6863616F72707041;
  *(&v188 + 1) = 0xE800000000000000;
  v16 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0);
    *&v188 = 0x6863616F72707041;
    *(&v188 + 1) = 0xE800000000000000;
    v17 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v17)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v180 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v180 = sub_257ECFF10();
  }

  *&v188 = 0x6570616853;
  *(&v188 + 1) = 0xE500000000000000;
  v18 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0);
    *&v188 = 0x6570616853;
    *(&v188 + 1) = 0xE500000000000000;
    v19 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v19)
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v187 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v187 = sub_257ECFF10();
  }

  *&v188 = 0x726F6C6F43;
  *(&v188 + 1) = 0xE500000000000000;
  v20 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0);
    *&v188 = 0x726F6C6F43;
    *(&v188 + 1) = 0xE500000000000000;
    v21 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v21)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v186 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v186 = sub_257ECFF10();
  }

  *&v188 = 0x776F646E6957;
  *(&v188 + 1) = 0xE600000000000000;
  v22 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0);
    *&v188 = 0x776F646E6957;
    *(&v188 + 1) = 0xE600000000000000;
    v23 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v23)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v185 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v185 = sub_257ECFF10();
  }

  *&v188 = 0x6C6169726574614DLL;
  *(&v188 + 1) = 0xE800000000000000;
  v24 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v24)
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v26 = sub_257ECFF10();
LABEL_45:
    v27 = *(v1 + 12);
    sub_257ECFA40();
    v179 = v26;
    if (v28 < v27)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v30 = [objc_opt_self() bundleForClass_];
      v31 = sub_257ECF4C0();
      v32 = sub_257ECF4C0();
      v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

      v34 = sub_257ECF500();
      v36 = v35;

      v37 = *(v1 + 88);
      LOBYTE(v191) = *(v1 + 24);
      sub_257D7C3D0();
      result = sub_257ED0280();
      if (!*(v37 + 16))
      {
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      result = sub_257C03F28(&v188);
      if ((v38 & 1) == 0)
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v39 = (*(v37 + 56) + 16 * result);
      v40 = *v39;
      v41 = v39[1];

      sub_257C09D10(&v188);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v191 = v2;
      sub_257EC729C(v40, v41, v34, v36, isUniquelyReferenced_nonNull_native);

      v2 = v191;
    }

    v43 = *(v1 + 80);
    v44 = *(v1 + 84);
    sub_257ECFA40();
    if (v45 >= v44)
    {
LABEL_53:
      v60 = *(v1 + 72);
      v61 = *(v1 + 76);
      sub_257ECFA40();
      if (v62 >= v61)
      {
LABEL_57:
        v77 = *(v1 + 56);
        v78 = *(v1 + 60);
        sub_257ECFA40();
        if (v79 >= v78)
        {
LABEL_61:
          v94 = *(v1 + 40);
          v95 = *(v1 + 44);
          sub_257ECFA40();
          if (v96 >= v95)
          {
LABEL_65:
            v111 = *(v1 + 32);
            v112 = *(v1 + 36);
            sub_257ECFA40();
            if (v113 >= v112)
            {
LABEL_69:
              v128 = *(v1 + 64);
              v129 = *(v1 + 68);
              sub_257ECFA40();
              if (v130 >= v129 || v128 == 3)
              {
LABEL_74:
                v145 = *(v1 + 16);
                v146 = *(v1 + 20);
                sub_257ECFA40();
                if (v147 >= v146)
                {
LABEL_78:
                  v162 = *(v1 + 24);
                  v163 = *(v1 + 28);
                  sub_257ECFA40();
                  if (v164 >= v163)
                  {

                    return v2;
                  }

                  type metadata accessor for MAGUtilities();
                  v165 = swift_getObjCClassFromMetadata();
                  v166 = [objc_opt_self() bundleForClass_];
                  v167 = sub_257ECF4C0();
                  v168 = sub_257ECF4C0();
                  v169 = [v166 localizedStringForKey:v167 value:0 table:v168];

                  v170 = sub_257ECF500();
                  v172 = v171;

                  v173 = *(v1 + 88);
                  LOBYTE(v191) = v162;
                  sub_257D7C3D0();
                  result = sub_257ED0280();
                  if (*(v173 + 16))
                  {
                    result = sub_257C03F28(&v188);
                    if (v174)
                    {
                      v175 = (*(v173 + 56) + 16 * result);
                      v176 = *v175;
                      v177 = v175[1];

                      sub_257C09D10(&v188);
                      v178 = swift_isUniquelyReferenced_nonNull_native();
                      *&v191 = v2;
                      sub_257EC729C(v176, v177, v170, v172, v178);

                      v2 = v191;

                      return v2;
                    }

                    goto LABEL_101;
                  }

                  goto LABEL_99;
                }

                type metadata accessor for MAGUtilities();
                v148 = swift_getObjCClassFromMetadata();
                v149 = [objc_opt_self() bundleForClass_];
                v150 = sub_257ECF4C0();
                v151 = sub_257ECF4C0();
                v152 = [v149 localizedStringForKey:v150 value:0 table:v151];

                v153 = sub_257ECF500();
                v155 = v154;

                v156 = *(v1 + 88);
                LOBYTE(v191) = v145;
                sub_257D7C424();
                result = sub_257ED0280();
                if (*(v156 + 16))
                {
                  result = sub_257C03F28(&v188);
                  if ((v157 & 1) == 0)
                  {
LABEL_100:
                    __break(1u);
LABEL_101:
                    __break(1u);
                    goto LABEL_102;
                  }

                  v158 = (*(v156 + 56) + 16 * result);
                  v159 = *v158;
                  v160 = v158[1];

                  sub_257C09D10(&v188);
                  v161 = swift_isUniquelyReferenced_nonNull_native();
                  *&v191 = v2;
                  sub_257EC729C(v159, v160, v153, v155, v161);

                  v2 = v191;
                  goto LABEL_78;
                }

                goto LABEL_97;
              }

              type metadata accessor for MAGUtilities();
              v131 = swift_getObjCClassFromMetadata();
              v132 = [objc_opt_self() bundleForClass_];
              v133 = sub_257ECF4C0();
              v134 = sub_257ECF4C0();
              v135 = [v132 localizedStringForKey:v133 value:0 table:v134];

              v136 = sub_257ECF500();
              v138 = v137;

              v139 = *(v1 + 88);
              LOBYTE(v191) = v128;
              sub_257D7C478();
              result = sub_257ED0280();
              if (*(v139 + 16))
              {
                result = sub_257C03F28(&v188);
                if ((v140 & 1) == 0)
                {
LABEL_98:
                  __break(1u);
LABEL_99:
                  __break(1u);
                  goto LABEL_100;
                }

                v141 = (*(v139 + 56) + 16 * result);
                v142 = *v141;
                v143 = v141[1];

                sub_257C09D10(&v188);
                v144 = swift_isUniquelyReferenced_nonNull_native();
                *&v191 = v2;
                sub_257EC729C(v142, v143, v136, v138, v144);

                v2 = v191;
                goto LABEL_74;
              }

              goto LABEL_95;
            }

            type metadata accessor for MAGUtilities();
            v114 = swift_getObjCClassFromMetadata();
            v115 = [objc_opt_self() bundleForClass_];
            v116 = sub_257ECF4C0();
            v117 = sub_257ECF4C0();
            v118 = [v115 localizedStringForKey:v116 value:0 table:v117];

            v119 = sub_257ECF500();
            v121 = v120;

            v122 = *(v1 + 88);
            LOBYTE(v191) = v111;
            sub_257D7C4CC();
            result = sub_257ED0280();
            if (*(v122 + 16))
            {
              result = sub_257C03F28(&v188);
              if ((v123 & 1) == 0)
              {
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
                goto LABEL_98;
              }

              v124 = (*(v122 + 56) + 16 * result);
              v125 = *v124;
              v126 = v124[1];

              sub_257C09D10(&v188);
              v127 = swift_isUniquelyReferenced_nonNull_native();
              *&v191 = v2;
              sub_257EC729C(v125, v126, v119, v121, v127);

              v2 = v191;
              goto LABEL_69;
            }

            goto LABEL_93;
          }

          type metadata accessor for MAGUtilities();
          v97 = swift_getObjCClassFromMetadata();
          v98 = [objc_opt_self() bundleForClass_];
          v99 = sub_257ECF4C0();
          v100 = sub_257ECF4C0();
          v101 = [v98 localizedStringForKey:v99 value:0 table:v100];

          v102 = sub_257ECF500();
          v104 = v103;

          v105 = *(v1 + 88);
          LOBYTE(v191) = v94;
          sub_257D7C520();
          result = sub_257ED0280();
          if (*(v105 + 16))
          {
            result = sub_257C03F28(&v188);
            if ((v106 & 1) == 0)
            {
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
              goto LABEL_96;
            }

            v107 = (*(v105 + 56) + 16 * result);
            v108 = *v107;
            v109 = v107[1];

            sub_257C09D10(&v188);
            v110 = swift_isUniquelyReferenced_nonNull_native();
            *&v191 = v2;
            sub_257EC729C(v108, v109, v102, v104, v110);

            v2 = v191;
            goto LABEL_65;
          }

          goto LABEL_91;
        }

        type metadata accessor for MAGUtilities();
        v80 = swift_getObjCClassFromMetadata();
        v81 = [objc_opt_self() bundleForClass_];
        v82 = sub_257ECF4C0();
        v83 = sub_257ECF4C0();
        v84 = [v81 localizedStringForKey:v82 value:0 table:v83];

        v85 = sub_257ECF500();
        v87 = v86;

        v88 = *(v1 + 88);
        LOBYTE(v191) = v77;
        sub_257D7C574();
        result = sub_257ED0280();
        if (*(v88 + 16))
        {
          result = sub_257C03F28(&v188);
          if ((v89 & 1) == 0)
          {
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          v90 = (*(v88 + 56) + 16 * result);
          v91 = *v90;
          v92 = v90[1];

          sub_257C09D10(&v188);
          v93 = swift_isUniquelyReferenced_nonNull_native();
          *&v191 = v2;
          sub_257EC729C(v91, v92, v85, v87, v93);

          v2 = v191;
          goto LABEL_61;
        }

        goto LABEL_89;
      }

      type metadata accessor for MAGUtilities();
      v63 = swift_getObjCClassFromMetadata();
      v64 = [objc_opt_self() bundleForClass_];
      v65 = sub_257ECF4C0();
      v66 = sub_257ECF4C0();
      v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

      v68 = sub_257ECF500();
      v70 = v69;

      v71 = *(v1 + 88);
      LOBYTE(v191) = v60;
      sub_257D7C5C8();
      result = sub_257ED0280();
      if (*(v71 + 16))
      {
        result = sub_257C03F28(&v188);
        if ((v72 & 1) == 0)
        {
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v73 = (*(v71 + 56) + 16 * result);
        v74 = *v73;
        v75 = v73[1];

        sub_257C09D10(&v188);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        *&v191 = v2;
        sub_257EC729C(v74, v75, v68, v70, v76);

        v2 = v191;
        goto LABEL_57;
      }

      goto LABEL_87;
    }

    type metadata accessor for MAGUtilities();
    v46 = swift_getObjCClassFromMetadata();
    v47 = [objc_opt_self() bundleForClass_];
    v48 = sub_257ECF4C0();
    v49 = sub_257ECF4C0();
    v50 = [v47 localizedStringForKey:v48 value:0 table:v49];

    v51 = sub_257ECF500();
    v53 = v52;

    v54 = *(v1 + 88);
    LOBYTE(v191) = v43;
    sub_257D7C61C();
    result = sub_257ED0280();
    if (*(v54 + 16))
    {
      result = sub_257C03F28(&v188);
      if ((v55 & 1) == 0)
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v56 = (*(v54 + 56) + 16 * result);
      v57 = *v56;
      v58 = v56[1];

      sub_257C09D10(&v188);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *&v191 = v2;
      sub_257EC729C(v57, v58, v51, v53, v59);

      v2 = v191;
      goto LABEL_53;
    }

    goto LABEL_85;
  }

  sub_257ED0160();
  swift_unknownObjectRelease();
  sub_257BE4084(&v188, &unk_27F8F62F0);
  *&v188 = 0x6C6169726574614DLL;
  *(&v188 + 1) = 0xE800000000000000;
  v25 = [v6 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v25)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v26 = v190;
    goto LABEL_45;
  }

LABEL_110:
  __break(1u);
  return result;
}

void sub_257D7634C()
{
  v1 = [objc_opt_self() shared];
  v2 = [v1 doorAttributesClassifierProperties];

  if (!v2)
  {
    return;
  }

  *&v91 = 0xD000000000000017;
  *(&v91 + 1) = 0x8000000257EF93E0;
  v3 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  v86 = v92;
  v85 = v91;
  if (!*(&v92 + 1))
  {
    sub_257BE4084(&v85, &unk_27F8F62F0);
    goto LABEL_11;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    return;
  }

  v84 = v0;
  v4 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FAED0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257EE2EF0;
  *(v5 + 32) = 5;
  *&v85 = 0x6570616853;
  *(&v85 + 1) = 0xE500000000000000;
  v6 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v85, &unk_27F8F62F0);
    *&v85 = 0x6570616853;
    *(&v85 + 1) = 0xE500000000000000;
    v7 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v7)
    {
      goto LABEL_101;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v91, &v85);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v8 = v89;
  }

  else
  {
    v86 = 0u;
    v85 = 0u;
    sub_257BE4084(&v85, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v8 = sub_257ECFF10();
  }

  *(v5 + 40) = v8;
  *(v5 + 48) = 0;
  *&v85 = 0x6863616F72707041;
  *(&v85 + 1) = 0xE800000000000000;
  v9 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v85, &unk_27F8F62F0);
    *&v85 = 0x6863616F72707041;
    *(&v85 + 1) = 0xE800000000000000;
    v10 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v10)
    {
      goto LABEL_102;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v91, &v85);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v11 = v89;
  }

  else
  {
    v86 = 0u;
    v85 = 0u;
    sub_257BE4084(&v85, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v11 = sub_257ECFF10();
  }

  *(v5 + 56) = v11;
  *(v5 + 64) = 3;
  *&v85 = 0x6874654D6E65704FLL;
  *(&v85 + 1) = 0xEA0000000000646FLL;
  v12 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v85, &unk_27F8F62F0);
    *&v85 = 0x6874654D6E65704FLL;
    *(&v85 + 1) = 0xEA0000000000646FLL;
    v13 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v13)
    {
      goto LABEL_103;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v91, &v85);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v14 = v89;
  }

  else
  {
    v86 = 0u;
    v85 = 0u;
    sub_257BE4084(&v85, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v14 = sub_257ECFF10();
  }

  *(v5 + 72) = v14;
  *(v5 + 80) = 6;
  *&v85 = 1702521171;
  *(&v85 + 1) = 0xE400000000000000;
  v15 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v85, &unk_27F8F62F0);
    *&v85 = 1702521171;
    *(&v85 + 1) = 0xE400000000000000;
    v16 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v16)
    {
      goto LABEL_104;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v91, &v85);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v17 = v89;
  }

  else
  {
    v86 = 0u;
    v85 = 0u;
    sub_257BE4084(&v85, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v17 = sub_257ECFF10();
  }

  *(v5 + 88) = v17;
  *(v5 + 96) = 2;
  *&v85 = 0x646E6148726F6F44;
  *(&v85 + 1) = 0xEA0000000000656CLL;
  v18 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v85, &unk_27F8F62F0);
    *&v85 = 0x646E6148726F6F44;
    *(&v85 + 1) = 0xEA0000000000656CLL;
    v19 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v19)
    {
      goto LABEL_105;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v91, &v85);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v20 = v89;
  }

  else
  {
    v86 = 0u;
    v85 = 0u;
    sub_257BE4084(&v85, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v20 = sub_257ECFF10();
  }

  *(v5 + 104) = v20;
  *(v5 + 112) = 7;
  *&v85 = 0x776F646E6957;
  *(&v85 + 1) = 0xE600000000000000;
  v21 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v85, &unk_27F8F62F0);
    *&v85 = 0x776F646E6957;
    *(&v85 + 1) = 0xE600000000000000;
    v22 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v22)
    {
      goto LABEL_106;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v91, &v85);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v23 = v89;
  }

  else
  {
    v86 = 0u;
    v85 = 0u;
    sub_257BE4084(&v85, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v23 = sub_257ECFF10();
  }

  *(v5 + 120) = v23;
  *(v5 + 128) = 1;
  *&v85 = 0x726F6C6F43;
  *(&v85 + 1) = 0xE500000000000000;
  v24 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v85, &unk_27F8F62F0);
    *&v85 = 0x726F6C6F43;
    *(&v85 + 1) = 0xE500000000000000;
    v25 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v25)
    {
      goto LABEL_107;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v91, &v85);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v26 = v89;
  }

  else
  {
    v86 = 0u;
    v85 = 0u;
    sub_257BE4084(&v85, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v26 = sub_257ECFF10();
  }

  *(v5 + 136) = v26;
  *(v5 + 144) = 8;
  *&v85 = 0x6C6169726574614DLL;
  *(&v85 + 1) = 0xE800000000000000;
  v27 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v78 = v2;
  v77 = v4;
  if (v27)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v85, &unk_27F8F62F0);
    *&v85 = 0x6C6169726574614DLL;
    *(&v85 + 1) = 0xE800000000000000;
    v28 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v28)
    {
      goto LABEL_108;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v91, &v85);
    sub_257BD2C2C(0, &qword_281543DC0);
    swift_dynamicCast();
    v29 = v89;
  }

  else
  {
    v86 = 0u;
    v85 = 0u;
    sub_257BE4084(&v85, &unk_27F8F62F0);
    sub_257BD2C2C(0, &qword_281543DC0);
    v29 = sub_257ECFF10();
  }

  *(v5 + 152) = v29;
  v30 = sub_257BE82F8(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FAEE0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B70);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_257EE2EF0;
  *(v31 + 32) = 5;
  v81 = *(v84 + 8);
  *(v31 + 36) = *(v84 + 12);
  *(v31 + 40) = 0;
  v80 = *(v84 + 16);
  *(v31 + 44) = *(v84 + 20);
  *(v31 + 48) = 3;
  v79 = *(v84 + 32);
  *(v31 + 52) = *(v84 + 36);
  *(v31 + 56) = 6;
  v32 = *(v84 + 40);
  *(v31 + 60) = *(v84 + 44);
  *(v31 + 64) = 2;
  v33 = *(v84 + 64);
  *(v31 + 68) = *(v84 + 68);
  *(v31 + 72) = 7;
  v34 = *(v84 + 72);
  *(v31 + 76) = *(v84 + 76);
  *(v31 + 80) = 1;
  v35 = *(v84 + 80);
  *(v31 + 84) = *(v84 + 84);
  *(v31 + 88) = 8;
  v36 = *(v84 + 24);
  *(v31 + 92) = *(v84 + 28);
  v37 = sub_257BE83FC(v31);
  swift_setDeallocating();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B18);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_257EE2EF0;
  *(v38 + 32) = 5;
  *(v38 + 64) = &type metadata for DoorAttributeModelHeads.Shape;
  *(v38 + 40) = v81;
  *(v38 + 72) = 0;
  *(v38 + 104) = &type metadata for DoorAttributeModelHeads.Approach;
  *(v38 + 80) = v80;
  *(v38 + 112) = 3;
  *(v38 + 144) = &type metadata for DoorAttributeModelHeads.OpenMethod;
  *(v38 + 120) = v79;
  *(v38 + 152) = 6;
  *(v38 + 184) = &type metadata for DoorAttributeModelHeads.Size;
  *(v38 + 160) = v32;
  *(v38 + 192) = 2;
  *(v38 + 224) = &type metadata for DoorAttributeModelHeads.DoorHandle;
  *(v38 + 200) = v33;
  *(v38 + 232) = 7;
  *(v38 + 264) = &type metadata for DoorAttributeModelHeads.Window;
  *(v38 + 240) = v34;
  *(v38 + 272) = 1;
  *(v38 + 304) = &type metadata for DoorAttributeModelHeads.Color;
  *(v38 + 280) = v35;
  *(v38 + 312) = 8;
  *(v38 + 344) = &type metadata for DoorAttributeModelHeads.Material;
  *(v38 + 320) = v36;
  v39 = sub_257BE8424(v38);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5630);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v40 = (*v84 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedAttributes);
  swift_beginAccess();
  v41 = v40[1];
  v42 = v40[2];
  *&v85 = *v40;
  *(&v85 + 1) = v41;
  *&v86 = v42;
  v43 = qword_2815447E0;

  if (v43 != -1)
  {
LABEL_94:
    v44 = swift_once();
  }

  MEMORY[0x28223BE20](v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90);
  sub_257ECFD50();

  v45 = v91;
  v46 = *(v91 + 16);
  if (!v46)
  {
    v48 = MEMORY[0x277D84F90];
LABEL_87:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_257ED6D30;
    *&v85 = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
    sub_257D7CDE8();
    v72 = sub_257ECF420();
    v74 = v73;

    *(v71 + 56) = MEMORY[0x277D837D0];
    *(v71 + 64) = sub_257BFB13C();
    *(v71 + 32) = v72;
    *(v71 + 40) = v74;
    sub_257ECF540();
    v75 = sub_257ECF4C0();

    v76 = [v75 axCapitalizeFirstLetter];

    if (!v76)
    {
      goto LABEL_96;
    }

    sub_257ECF500();

    return;
  }

  v47 = 0;
  v48 = MEMORY[0x277D84F90];
  v83 = v39;
  v82 = v30;
  while (1)
  {
    if (v47 >= *(v45 + 16))
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v49 = *(v45 + 32 + v47);
    if (v49 != 4)
    {
      if (!*(v37 + 16))
      {
        goto LABEL_90;
      }

      v50 = sub_257C09E78(*(v45 + 32 + v47));
      if ((v51 & 1) == 0)
      {
        goto LABEL_91;
      }

      if (!*(v30 + 16))
      {
        goto LABEL_92;
      }

      v52 = *(*(v37 + 56) + 4 * v50);
      v53 = sub_257C09E78(v49);
      if ((v54 & 1) == 0)
      {
        goto LABEL_93;
      }

      v55 = *(*(v30 + 56) + 8 * v53);
      sub_257ECFA40();
      v57 = v56;

      if (v57 <= v52)
      {
        break;
      }
    }

LABEL_46:
    if (v46 == ++v47)
    {
      goto LABEL_87;
    }
  }

  if (*(v39 + 16) && (v58 = sub_257C09E78(v49), (v59 & 1) != 0))
  {
    sub_257BE41F4(*(v39 + 56) + 32 * v58, &v91);
    if (v49 > 1)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
    if (v49 > 1)
    {
LABEL_57:
      if (v49 == 2)
      {
        sub_257C3D6F8(&v91, &v89);
        if (!v90)
        {
          goto LABEL_98;
        }

        sub_257BEBE08(&v89, &v85);
        swift_dynamicCast();
        if (v87 != 3)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v49 != 7)
        {
          goto LABEL_76;
        }

        sub_257C3D6F8(&v91, &v89);
        if (!v90)
        {
          goto LABEL_97;
        }

        sub_257BEBE08(&v89, &v85);
        swift_dynamicCast();
        if (v87)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_45;
    }
  }

  if (v49)
  {
    sub_257C3D6F8(&v91, &v89);
    if (!v90)
    {
      goto LABEL_99;
    }

    sub_257BEBE08(&v89, &v85);
    swift_dynamicCast();
    if (v87 != 9)
    {
      sub_257C3D6F8(&v91, &v89);
      if (!v90)
      {
        goto LABEL_109;
      }

      sub_257BEBE08(&v89, &v85);
      swift_dynamicCast();
      if (v87 != 7)
      {
        sub_257C3D6F8(&v91, &v89);
        if (!v90)
        {
          goto LABEL_110;
        }

        sub_257BEBE08(&v89, &v85);
        swift_dynamicCast();
        if (v87 != 6)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_45;
  }

  sub_257C3D6F8(&v91, &v89);
  if (!v90)
  {
    goto LABEL_100;
  }

  sub_257BEBE08(&v89, &v85);
  swift_dynamicCast();
  if (!v87)
  {
LABEL_45:
    sub_257BE4084(&v91, &unk_27F8F62F0);
    goto LABEL_46;
  }

LABEL_76:
  sub_257C3D6F8(&v91, &v87);
  if (v88)
  {
    v60 = *(v84 + 88);
    sub_257BEBE08(&v87, &v89);
    swift_dynamicCast();
    if (*(v60 + 16) && (v61 = sub_257C03F28(&v85), (v62 & 1) != 0))
    {
      v63 = (*(v60 + 56) + 16 * v61);
      v65 = *v63;
      v64 = v63[1];
    }

    else
    {
      v65 = 0;
      v64 = 0xE000000000000000;
    }

    sub_257C09D10(&v85);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_257BFCB3C(0, *(v48 + 2) + 1, 1, v48);
    }

    v66 = v48;
    v67 = *(v48 + 2);
    v68 = v66;
    v69 = *(v66 + 3);
    if (v67 >= v69 >> 1)
    {
      v68 = sub_257BFCB3C((v69 > 1), v67 + 1, 1, v68);
    }

    sub_257BE4084(&v91, &unk_27F8F62F0);
    *(v68 + 2) = v67 + 1;
    v70 = &v68[16 * v67];
    v48 = v68;
    *(v70 + 4) = v65;
    *(v70 + 5) = v64;
    v39 = v83;
    v30 = v82;
    goto LABEL_46;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
}

unint64_t sub_257D77B3C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D7C7DC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_257D77B68@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D7C7EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_257D77B94(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    sub_257C09CB4(*(v3 + 48) + 40 * v12, &v26);
    v13 = (*(v3 + 56) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v24 = v26;
    v25 = v27;
    v16 = v28;
    v17 = *(&v27 + 1);

    if (!v17)
    {
      return 1;
    }

    v26 = v24;
    v27 = v25;
    v28 = v16;
    v18 = sub_257C03F28(&v26);
    v20 = v19;
    sub_257C09D10(&v26);
    if ((v20 & 1) == 0)
    {

      return 0;
    }

    v21 = (*(a2 + 56) + 16 * v18);
    if (*v21 == v15 && v14 == v21[1])
    {
    }

    else
    {
      v23 = sub_257ED0640();

      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257D77D44(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];

    v17 = v15 == 1;
    if (v15 == 1)
    {
      return v17;
    }

    result = sub_257C03FE4(v13);
    if ((v18 & 1) == 0)
    {
LABEL_27:

      return 0;
    }

    v19 = (*(a2 + 56) + 16 * result);
    v20 = v19[1];
    if (v20)
    {
      if (!v15)
      {
        return v17;
      }

      if (*v19 == v16 && v20 == v15)
      {
      }

      else
      {
        v22 = sub_257ED0640();

        if ((v22 & 1) == 0)
        {
          return v17;
        }
      }
    }

    else if (v15)
    {
      goto LABEL_27;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257D78028()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257D78084(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v33 - v5;
  v6 = sub_257ECDA30();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECCB70();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  v16 = objc_allocWithZone(MEMORY[0x277CBFF38]);
  v36 = a1;
  sub_257ECC3F0();
  v35 = [v16 init];
  v17 = [objc_opt_self() shared];
  v18 = [v17 doorAttributesClassifierModelPath];

  if (v18)
  {
    sub_257ECCB20();

    v19 = sub_257ECF930();
    v20 = v34;
    (*(*(v19 - 8) + 56))(v34, 1, 1, v19);
    (*(v10 + 16))(v13, v15, v9);
    v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    (*(v10 + 32))(v23 + v21, v13, v9);
    v24 = v35;
    *(v23 + v22) = v35;
    *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v2;
    v25 = v24;
    sub_257ECC3F0();
    sub_257C3FBD4(0, 0, v20, &unk_257EE73F0, v23);

    (*(v10 + 8))(v15, v9);
    return v2;
  }

  else
  {
    v27 = v33;
    v28 = v6;
    v29 = v35;
    sub_257ECD450();
    v30 = sub_257ECDA20();
    v31 = sub_257ECFBD0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_257BAC000, v30, v31, "Door Attributes Classifier URL is not available", v32, 2u);
      MEMORY[0x259C74820](v32, -1, -1);
    }

    else
    {
    }

    (*(v27 + 8))(v8, v28);
    return v2;
  }
}

uint64_t sub_257D784B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = sub_257ECDA30();
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v9 = swift_task_alloc();
  v6[8] = v9;
  v10 = sub_257ECCB70();
  v6[9] = v10;
  v6[10] = *(v10 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = sub_257BD2C2C(0, &qword_27F8F8B68);
  v11 = swift_task_alloc();
  v6[14] = v11;
  *v11 = v6;
  v11[1] = sub_257D78694;

  return MEMORY[0x282111990](v9, a4);
}

uint64_t sub_257D78694()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_257D7D26C;
  }

  else
  {
    v2 = sub_257D7D278;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257D787B0()
{
  v0 = sub_257ECDA30();
  v29 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v28 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_257ECCB70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v13 = [objc_opt_self() shared];
  v14 = [v13 doorAttributesClassifierModelPath];

  if (v14)
  {
    sub_257ECCB20();

    v15 = sub_257ECF930();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    (*(v6 + 16))(v9, v11, v5);
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    (*(v6 + 32))(v18 + v16, v9, v5);
    *(v18 + v17) = v12;
    *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
    v19 = v12;
    sub_257ECC3F0();
    sub_257C3FBD4(0, 0, v4, &unk_257EE73D8, v18);

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    v21 = v12;
    v23 = v28;
    v22 = v29;
    sub_257ECD450();
    v24 = sub_257ECDA20();
    v25 = sub_257ECFBD0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_257BAC000, v24, v25, "Door Attributes Classifier URL is not available", v26, 2u);
      MEMORY[0x259C74820](v26, -1, -1);
    }

    else
    {
    }

    return (*(v22 + 8))(v23, v0);
  }
}

uint64_t sub_257D78B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = sub_257ECDA30();
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v9 = swift_task_alloc();
  v6[8] = v9;
  v10 = sub_257ECCB70();
  v6[9] = v10;
  v6[10] = *(v10 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = sub_257BD2C2C(0, &qword_27F8F8B68);
  v11 = swift_task_alloc();
  v6[14] = v11;
  *v11 = v6;
  v11[1] = sub_257D78D74;

  return MEMORY[0x282111990](v9, a4);
}

uint64_t sub_257D78D74()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_257D78E90;
  }

  else
  {
    v2 = sub_257D78FFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257D78E90()
{
  v1 = v0[8];
  (*(v0[10] + 56))(v1, 1, 1, v0[9]);
  sub_257BE4084(v1, &qword_27F8F5F30);
  sub_257ECD450();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFBD0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "Door Attributes Classifier cannot be compiled", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257D78FFC()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[2];
  (*(v4 + 56))(v6, 0, 1, v5);
  (*(v4 + 32))(v2, v6, v5);
  (*(v4 + 16))(v3, v2, v5);
  v8 = v7;
  v9 = sub_257D7CA0C(v3, v8);

  if (v1)
  {
  }

  else if (v9)
  {
    v20 = v0[3];
    (*(v0[10] + 8))(v0[12], v0[9]);
    v21 = *(v20 + 16);
    *(v20 + 16) = v9;

    goto LABEL_8;
  }

  sub_257ECD450();
  v10 = sub_257ECDA20();
  v11 = sub_257ECFBD0();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];
  if (v12)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_257BAC000, v10, v11, "Door Attributes Classifier failed to initialize.", v19, 2u);
    MEMORY[0x259C74820](v19, -1, -1);
  }

  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v13, v14);
LABEL_8:

  v22 = v0[1];

  return v22();
}

void sub_257D79228(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v425 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 16);
  if (!v8)
  {
    sub_257D787B0();
    v8 = *(v6 + 16);
    if (!v8)
    {
      return;
    }
  }

  v408 = v8;
  v9 = [v408 modelDescription];
  v10 = [v9 inputDescriptionsByName];

  sub_257BD2C2C(0, &qword_27F8F8AF0);
  v11 = sub_257ECF3D0();

  v12 = sub_257DF8B9C(v11);
  v14 = v13;

  if (!v14)
  {

    return;
  }

  v407 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  v16 = objc_opt_self();

  v17 = [v16 featureValueWithPixelBuffer_];
  *(inited + 72) = sub_257BD2C2C(0, &qword_27F8F8AF8);
  *(inited + 48) = v17;
  sub_257BE9040(inited);
  swift_setDeallocating();
  sub_257BE4084(inited + 32, &qword_27F8F55E8);
  v18 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v19 = sub_257D7C2E8();
  v20 = v19;
  if (!v19)
  {

    return;
  }

  *&v418 = 0;
  v21 = [v408 predictionFromFeatures:v19 error:&v418];
  if (!v21)
  {
    v95 = v418;

    v96 = sub_257ECC9F0();

    swift_willThrow();
    return;
  }

  v22 = v21;
  v404 = v20;
  v23 = v418;
  v24 = sub_257BEA370(MEMORY[0x277D84F90]);
  v405 = v22;
  v25 = [v22 featureNames];
  v26 = sub_257ECFA70();

  v27 = 0;
  v29 = v26 + 56;
  v28 = *(v26 + 56);
  v406 = v26;
  v30 = 1 << *(v26 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v28;
  v33 = (v30 + 63) >> 6;
  v403 = a3;
  if ((v31 & v28) != 0)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_18:
    v35 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_90;
    }

    if (v35 >= v33)
    {

      if (v24[2])
      {
        v48 = sub_257C03F6C(0xD00000000000001ELL, 0x8000000257F02BF0);
        if (v49)
        {
          v50 = *(v24[7] + 16 * v48);
          if (v50 >= 5)
          {
            LOBYTE(v51) = 5;
          }

          else
          {
            v51 = *(v24[7] + 16 * v48);
          }

          if (v24[2])
          {
            v402 = v51;
            v52 = *(v6 + 24);
            sub_257ECC3F0();
            v6 = 0xD000000000000018;
            v53 = sub_257C03F6C(0xD000000000000018, 0x8000000257F02C10);
            if (v54)
            {
              v55 = *(v24[7] + 16 * v53);
              if (v55 > 1)
              {
LABEL_129:
                __break(1u);
                goto LABEL_130;
              }

              if (v24[2])
              {
                v56 = sub_257C03F6C(0xD000000000000018, 0x8000000257F02C10);
                if (v57)
                {
                  v400 = v55;
                  if (v24[2])
                  {
                    v58 = *(v24[7] + 16 * v56 + 8);
                    v59 = sub_257C03F6C(0xD00000000000001BLL, 0x8000000257F02C30);
                    if (v60)
                    {
                      if (*(v24[7] + 16 * v59) > 2uLL)
                      {
                        goto LABEL_138;
                      }

                      v399 = *(v24[7] + 16 * v59);
                      if (v24[2])
                      {
                        v61 = sub_257C03F6C(0xD00000000000001BLL, 0x8000000257F02C30);
                        if (v62)
                        {
                          if (v24[2])
                          {
                            v63 = *(v24[7] + 16 * v61 + 8);
                            v64 = sub_257C03F6C(0xD00000000000001BLL, 0x8000000257F02C50);
                            if (v65)
                            {
                              v66 = sub_257D7C7DC(*(v24[7] + 16 * v64));
                              if (v66 == 6)
                              {
                                goto LABEL_139;
                              }

                              v398 = v66;
                              if (v24[2])
                              {
                                v67 = sub_257C03F6C(0xD00000000000001BLL, 0x8000000257F02C50);
                                if (v68)
                                {
                                  if (v50 > 4)
                                  {
                                    goto LABEL_140;
                                  }

                                  if (v24[2])
                                  {
                                    v69 = *(v24[7] + 16 * v67 + 8);
                                    v70 = sub_257C03F6C(0xD00000000000001ELL, 0x8000000257F02BF0);
                                    if (v71)
                                    {
                                      if (v24[2])
                                      {
                                        v72 = *(v24[7] + 16 * v70 + 8);
                                        v73 = sub_257C03F6C(0xD000000000000017, 0x8000000257F02C70);
                                        if (v74)
                                        {
                                          if (*(v24[7] + 16 * v73) > 1uLL)
                                          {
LABEL_130:
                                            __break(1u);
                                            goto LABEL_131;
                                          }

                                          v397 = *(v24[7] + 16 * v73);
                                          if (v24[2])
                                          {
                                            v75 = sub_257C03F6C(0xD000000000000017, 0x8000000257F02C70);
                                            if (v76)
                                            {
                                              if (v24[2])
                                              {
                                                v77 = *(v24[7] + 16 * v75 + 8);
                                                v78 = sub_257C03F6C(0xD00000000000001BLL, 0x8000000257F02C90);
                                                if (v79)
                                                {
                                                  v80 = *(v24[7] + 16 * v78);
                                                  if (v80 > 1)
                                                  {
LABEL_131:
                                                    __break(1u);
                                                    goto LABEL_132;
                                                  }

                                                  if (v24[2])
                                                  {
                                                    v81 = sub_257C03F6C(0xD00000000000001BLL, 0x8000000257F02C90);
                                                    if (v82)
                                                    {
                                                      if (v24[2])
                                                      {
                                                        v83 = *(v24[7] + 16 * v81 + 8);
                                                        v84 = sub_257C03F6C(0xD00000000000001DLL, 0x8000000257F02CB0);
                                                        if (v85)
                                                        {
                                                          if (*(v24[7] + 16 * v84) > 2uLL)
                                                          {
                                                            goto LABEL_141;
                                                          }

                                                          v396 = *(v24[7] + 16 * v84);
                                                          if (v24[2])
                                                          {
                                                            v86 = sub_257C03F6C(0xD00000000000001DLL, 0x8000000257F02CB0);
                                                            if (v87)
                                                            {
                                                              v88 = *(v24[7] + 16 * v86 + 8);
                                                              if (((v50 < 5) & (1u >> v50)) != 0)
                                                              {
                                                                if (!v24[2])
                                                                {
LABEL_132:
                                                                  __break(1u);
                                                                  goto LABEL_133;
                                                                }

                                                                v89 = sub_257C03F6C(0xD00000000000001ELL, 0x8000000257F03410);
                                                                if ((v90 & 1) == 0)
                                                                {
LABEL_133:
                                                                  __break(1u);
LABEL_134:
                                                                  __break(1u);
                                                                  goto LABEL_135;
                                                                }

                                                                v91 = *(v24[7] + 16 * v89);
                                                                if (v91 > 3)
                                                                {
                                                                  goto LABEL_143;
                                                                }

                                                                if (!v24[2])
                                                                {
                                                                  goto LABEL_134;
                                                                }

                                                                v92 = sub_257C03F6C(0xD00000000000001ELL, 0x8000000257F03410);
                                                                if ((v93 & 1) == 0)
                                                                {
LABEL_135:
                                                                  __break(1u);
LABEL_136:
                                                                  __break(1u);
                                                                }

                                                                v94 = *(v24[7] + 16 * v92 + 8);
                                                              }

                                                              else
                                                              {
                                                                v94 = 1.0;
                                                                LOBYTE(v91) = 3;
                                                              }

                                                              if (v24[2])
                                                              {
                                                                v97 = sub_257C03F6C(0xD000000000000019, 0x8000000257F02CD0);
                                                                if (v98)
                                                                {
                                                                  v99 = *(v24[7] + 16 * v97);
                                                                  if (v99 > 1)
                                                                  {
                                                                    goto LABEL_136;
                                                                  }

                                                                  if (v24[2])
                                                                  {
                                                                    v100 = sub_257C03F6C(0xD000000000000019, 0x8000000257F02CD0);
                                                                    if (v101)
                                                                    {
                                                                      if (v24[2])
                                                                      {
                                                                        v395 = *(v24[7] + 16 * v100 + 8);
                                                                        v102 = sub_257C03F6C(0xD000000000000018, 0x8000000257F02CF0);
                                                                        if (v103)
                                                                        {
                                                                          v104 = sub_257D7C7EC(*(v24[7] + 16 * v102));
                                                                          if (v104 == 10)
                                                                          {
                                                                            goto LABEL_142;
                                                                          }

                                                                          if (v24[2])
                                                                          {
                                                                            v391 = v104;
                                                                            v392 = v99;
                                                                            v393 = v91;
                                                                            v394 = v52;
                                                                            v6 = sub_257C03F6C(0xD000000000000018, 0x8000000257F02CF0);
                                                                            v106 = v105;

                                                                            if (v106)
                                                                            {
                                                                              v390 = *(v24[7] + 16 * v6 + 8);
                                                                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B00);
                                                                              v107 = swift_allocObject();
                                                                              *(v107 + 16) = xmmword_257EE7270;
                                                                              LOBYTE(v418) = 0;
                                                                              sub_257D7C7FC();
                                                                              sub_257ED0280();
                                                                              type metadata accessor for MAGUtilities();
                                                                              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                                                                              v109 = objc_opt_self();
                                                                              v110 = [v109 bundleForClass_];
                                                                              v111 = sub_257ECF4C0();
                                                                              v112 = sub_257ECF4C0();
                                                                              v113 = [v110 localizedStringForKey:v111 value:0 table:v112];

                                                                              v114 = sub_257ECF500();
                                                                              v116 = v115;

                                                                              *(v107 + 72) = v114;
                                                                              *(v107 + 80) = v116;
                                                                              LOBYTE(v418) = 1;
                                                                              sub_257ED0280();
                                                                              v117 = [v109 bundleForClass_];
                                                                              v118 = sub_257ECF4C0();
                                                                              v119 = sub_257ECF4C0();
                                                                              v120 = [v117 localizedStringForKey:v118 value:0 table:v119];

                                                                              v121 = sub_257ECF500();
                                                                              v123 = v122;

                                                                              *(v107 + 128) = v121;
                                                                              *(v107 + 136) = v123;
                                                                              LOBYTE(v418) = 0;
                                                                              sub_257D7C424();
                                                                              sub_257ED0280();
                                                                              v124 = [v109 &selRef:ObjCClassFromMetadata setValues:? + 3];
                                                                              v125 = sub_257ECF4C0();
                                                                              v126 = sub_257ECF4C0();
                                                                              v127 = [v124 localizedStringForKey:v125 value:0 table:v126];

                                                                              v128 = sub_257ECF500();
                                                                              v130 = v129;

                                                                              *(v107 + 184) = v128;
                                                                              *(v107 + 192) = v130;
                                                                              LOBYTE(v418) = 1;
                                                                              sub_257ED0280();
                                                                              v131 = [v109 &selRef:ObjCClassFromMetadata setValues:? + 3];
                                                                              v132 = sub_257ECF4C0();
                                                                              v133 = sub_257ECF4C0();
                                                                              v134 = [v131 localizedStringForKey:v132 value:0 table:v133];

                                                                              v135 = sub_257ECF500();
                                                                              v137 = v136;

                                                                              *(v107 + 240) = v135;
                                                                              *(v107 + 248) = v137;
                                                                              LOBYTE(v418) = 2;
                                                                              sub_257ED0280();
                                                                              v138 = [v109 bundleForClass_];
                                                                              v139 = sub_257ECF4C0();
                                                                              v140 = sub_257ECF4C0();
                                                                              v141 = [v138 localizedStringForKey:v139 value:0 table:v140];

                                                                              v142 = sub_257ECF500();
                                                                              v144 = v143;

                                                                              *(v107 + 296) = v142;
                                                                              *(v107 + 304) = v144;
                                                                              LOBYTE(v418) = 0;
                                                                              sub_257D7C3D0();
                                                                              sub_257ED0280();
                                                                              v145 = [v109 bundleForClass_];
                                                                              v146 = sub_257ECF4C0();
                                                                              v147 = sub_257ECF4C0();
                                                                              v148 = [v145 localizedStringForKey:v146 value:0 table:v147];

                                                                              v149 = sub_257ECF500();
                                                                              v151 = v150;

                                                                              *(v107 + 352) = v149;
                                                                              *(v107 + 360) = v151;
                                                                              LOBYTE(v418) = 1;
                                                                              sub_257ED0280();
                                                                              v152 = [v109 bundleForClass_];
                                                                              v153 = sub_257ECF4C0();
                                                                              v154 = sub_257ECF4C0();
                                                                              v155 = [v152 localizedStringForKey:v153 value:0 table:v154];

                                                                              v156 = sub_257ECF500();
                                                                              v158 = v157;

                                                                              *(v107 + 408) = v156;
                                                                              *(v107 + 416) = v158;
                                                                              LOBYTE(v418) = 2;
                                                                              sub_257ED0280();
                                                                              v159 = ObjCClassFromMetadata;
                                                                              v160 = [v109 bundleForClass_];
                                                                              v161 = sub_257ECF4C0();
                                                                              v162 = sub_257ECF4C0();
                                                                              v163 = [v160 localizedStringForKey:v161 value:0 table:v162];

                                                                              v164 = sub_257ECF500();
                                                                              v166 = v165;

                                                                              *(v107 + 464) = v164;
                                                                              *(v107 + 472) = v166;
                                                                              LOBYTE(v418) = 3;
                                                                              sub_257ED0280();
                                                                              v167 = v109;
                                                                              v168 = [v109 bundleForClass_];
                                                                              v169 = sub_257ECF4C0();
                                                                              v170 = sub_257ECF4C0();
                                                                              v171 = [v168 localizedStringForKey:v169 value:0 table:v170];

                                                                              v172 = sub_257ECF500();
                                                                              v174 = v173;

                                                                              *(v107 + 520) = v172;
                                                                              *(v107 + 528) = v174;
                                                                              LOBYTE(v418) = 4;
                                                                              sub_257ED0280();
                                                                              v175 = [v109 bundleForClass_];
                                                                              v176 = sub_257ECF4C0();
                                                                              v177 = sub_257ECF4C0();
                                                                              v178 = [v175 localizedStringForKey:v176 value:0 table:v177];

                                                                              v179 = sub_257ECF500();
                                                                              v181 = v180;

                                                                              *(v107 + 576) = v179;
                                                                              *(v107 + 584) = v181;
                                                                              LOBYTE(v418) = 5;
                                                                              sub_257ED0280();
                                                                              v182 = v159;
                                                                              v183 = [v167 bundleForClass_];
                                                                              v184 = sub_257ECF4C0();
                                                                              v185 = sub_257ECF4C0();
                                                                              v186 = [v183 localizedStringForKey:v184 value:0 table:v185];

                                                                              v187 = sub_257ECF500();
                                                                              v189 = v188;

                                                                              *(v107 + 632) = v187;
                                                                              *(v107 + 640) = v189;
                                                                              LOBYTE(v418) = 0;
                                                                              sub_257D7C4CC();
                                                                              sub_257ED0280();
                                                                              v190 = [v167 bundleForClass_];
                                                                              v191 = sub_257ECF4C0();
                                                                              v192 = sub_257ECF4C0();
                                                                              v193 = [v190 localizedStringForKey:v191 value:0 table:v192];

                                                                              v194 = sub_257ECF500();
                                                                              v196 = v195;

                                                                              *(v107 + 688) = v194;
                                                                              *(v107 + 696) = v196;
                                                                              LOBYTE(v418) = 1;
                                                                              sub_257ED0280();
                                                                              v197 = [v167 bundleForClass_];
                                                                              v198 = sub_257ECF4C0();
                                                                              v199 = sub_257ECF4C0();
                                                                              v200 = [v197 localizedStringForKey:v198 value:0 table:v199];

                                                                              v201 = sub_257ECF500();
                                                                              v203 = v202;

                                                                              *(v107 + 744) = v201;
                                                                              *(v107 + 752) = v203;
                                                                              LOBYTE(v418) = 2;
                                                                              sub_257ED0280();
                                                                              v204 = [v167 bundleForClass_];
                                                                              v205 = sub_257ECF4C0();
                                                                              v206 = sub_257ECF4C0();
                                                                              v207 = [v204 localizedStringForKey:v205 value:0 table:v206];

                                                                              v208 = sub_257ECF500();
                                                                              v210 = v209;

                                                                              *(v107 + 800) = v208;
                                                                              *(v107 + 808) = v210;
                                                                              LOBYTE(v418) = 3;
                                                                              sub_257ED0280();
                                                                              v211 = [v167 bundleForClass_];
                                                                              v212 = sub_257ECF4C0();
                                                                              v213 = sub_257ECF4C0();
                                                                              v214 = [v211 localizedStringForKey:v212 value:0 table:v213];

                                                                              v215 = sub_257ECF500();
                                                                              v217 = v216;

                                                                              *(v107 + 856) = v215;
                                                                              *(v107 + 864) = v217;
                                                                              LOBYTE(v418) = 4;
                                                                              sub_257ED0280();
                                                                              v218 = [v167 bundleForClass_];
                                                                              v219 = sub_257ECF4C0();
                                                                              v220 = sub_257ECF4C0();
                                                                              v221 = [v218 localizedStringForKey:v219 value:0 table:v220];

                                                                              v222 = sub_257ECF500();
                                                                              v224 = v223;

                                                                              *(v107 + 912) = v222;
                                                                              *(v107 + 920) = v224;
                                                                              LOBYTE(v418) = 0;
                                                                              sub_257D7C520();
                                                                              sub_257ED0280();
                                                                              v225 = [v167 bundleForClass_];
                                                                              v226 = sub_257ECF4C0();
                                                                              v227 = sub_257ECF4C0();
                                                                              v228 = [v225 localizedStringForKey:v226 value:0 table:v227];

                                                                              v229 = sub_257ECF500();
                                                                              v231 = v230;

                                                                              *(v107 + 968) = v229;
                                                                              *(v107 + 976) = v231;
                                                                              LOBYTE(v418) = 1;
                                                                              sub_257ED0280();
                                                                              v232 = [v167 bundleForClass_];
                                                                              v233 = sub_257ECF4C0();
                                                                              v234 = sub_257ECF4C0();
                                                                              v235 = [v232 localizedStringForKey:v233 value:0 table:v234];

                                                                              v236 = sub_257ECF500();
                                                                              v238 = v237;

                                                                              *(v107 + 1024) = v236;
                                                                              *(v107 + 1032) = v238;
                                                                              LOBYTE(v418) = 0;
                                                                              sub_257D7C850();
                                                                              sub_257ED0280();
                                                                              v239 = [v167 bundleForClass_];
                                                                              v240 = sub_257ECF4C0();
                                                                              v241 = sub_257ECF4C0();
                                                                              v242 = [v239 localizedStringForKey:v240 value:0 table:v241];

                                                                              v243 = sub_257ECF500();
                                                                              v245 = v244;

                                                                              *(v107 + 1080) = v243;
                                                                              *(v107 + 1088) = v245;
                                                                              LOBYTE(v418) = 1;
                                                                              sub_257ED0280();
                                                                              v246 = [v167 bundleForClass_];
                                                                              v247 = sub_257ECF4C0();
                                                                              v248 = sub_257ECF4C0();
                                                                              v249 = [v246 localizedStringForKey:v247 value:0 table:v248];

                                                                              v250 = sub_257ECF500();
                                                                              v252 = v251;

                                                                              *(v107 + 1136) = v250;
                                                                              *(v107 + 1144) = v252;
                                                                              LOBYTE(v418) = 0;
                                                                              sub_257D7C574();
                                                                              sub_257ED0280();
                                                                              v253 = [v167 bundleForClass_];
                                                                              v254 = sub_257ECF4C0();
                                                                              v255 = sub_257ECF4C0();
                                                                              v256 = [v253 localizedStringForKey:v254 value:0 table:v255];

                                                                              v257 = sub_257ECF500();
                                                                              v259 = v258;

                                                                              *(v107 + 1192) = v257;
                                                                              *(v107 + 1200) = v259;
                                                                              LOBYTE(v418) = 1;
                                                                              sub_257ED0280();
                                                                              v260 = [v167 bundleForClass_];
                                                                              v261 = sub_257ECF4C0();
                                                                              v262 = sub_257ECF4C0();
                                                                              v263 = [v260 localizedStringForKey:v261 value:0 table:v262];

                                                                              v264 = sub_257ECF500();
                                                                              v266 = v265;

                                                                              *(v107 + 1248) = v264;
                                                                              *(v107 + 1256) = v266;
                                                                              LOBYTE(v418) = 2;
                                                                              sub_257ED0280();
                                                                              v267 = [v167 bundleForClass_];
                                                                              v268 = sub_257ECF4C0();
                                                                              v269 = sub_257ECF4C0();
                                                                              v270 = [v267 localizedStringForKey:v268 value:0 table:v269];

                                                                              v271 = sub_257ECF500();
                                                                              v273 = v272;

                                                                              *(v107 + 1304) = v271;
                                                                              *(v107 + 1312) = v273;
                                                                              LOBYTE(v418) = 0;
                                                                              sub_257D7C478();
                                                                              sub_257ED0280();
                                                                              v274 = [v167 bundleForClass_];
                                                                              v275 = sub_257ECF4C0();
                                                                              v276 = sub_257ECF4C0();
                                                                              v277 = [v274 localizedStringForKey:v275 value:0 table:v276];

                                                                              v278 = sub_257ECF500();
                                                                              v280 = v279;

                                                                              *(v107 + 1360) = v278;
                                                                              *(v107 + 1368) = v280;
                                                                              LOBYTE(v418) = 1;
                                                                              sub_257ED0280();
                                                                              v281 = [v167 bundleForClass_];
                                                                              v282 = sub_257ECF4C0();
                                                                              v283 = sub_257ECF4C0();
                                                                              v284 = [v281 localizedStringForKey:v282 value:0 table:v283];

                                                                              v285 = sub_257ECF500();
                                                                              v287 = v286;

                                                                              *(v107 + 1416) = v285;
                                                                              *(v107 + 1424) = v287;
                                                                              LOBYTE(v418) = 2;
                                                                              sub_257ED0280();
                                                                              v288 = [v167 bundleForClass_];
                                                                              v289 = sub_257ECF4C0();
                                                                              v290 = sub_257ECF4C0();
                                                                              v291 = [v288 localizedStringForKey:v289 value:0 table:v290];

                                                                              v292 = sub_257ECF500();
                                                                              v294 = v293;

                                                                              *(v107 + 1472) = v292;
                                                                              *(v107 + 1480) = v294;
                                                                              LOBYTE(v418) = 0;
                                                                              sub_257D7C5C8();
                                                                              sub_257ED0280();
                                                                              v295 = [v167 bundleForClass_];
                                                                              v296 = sub_257ECF4C0();
                                                                              v297 = sub_257ECF4C0();
                                                                              v298 = [v295 localizedStringForKey:v296 value:0 table:v297];

                                                                              v299 = sub_257ECF500();
                                                                              v301 = v300;

                                                                              *(v107 + 1528) = v299;
                                                                              *(v107 + 1536) = v301;
                                                                              LOBYTE(v418) = 1;
                                                                              sub_257ED0280();
                                                                              v302 = [v167 bundleForClass_];
                                                                              v303 = sub_257ECF4C0();
                                                                              v304 = sub_257ECF4C0();
                                                                              v305 = [v302 localizedStringForKey:v303 value:0 table:v304];

                                                                              v306 = sub_257ECF500();
                                                                              v308 = v307;

                                                                              *(v107 + 1584) = v306;
                                                                              *(v107 + 1592) = v308;
                                                                              LOBYTE(v418) = 0;
                                                                              sub_257D7C61C();
                                                                              sub_257ED0280();
                                                                              v309 = [v167 bundleForClass_];
                                                                              v310 = sub_257ECF4C0();
                                                                              v311 = sub_257ECF4C0();
                                                                              v312 = [v309 localizedStringForKey:v310 value:0 table:v311];

                                                                              v313 = sub_257ECF500();
                                                                              v315 = v314;

                                                                              *(v107 + 1640) = v313;
                                                                              *(v107 + 1648) = v315;
                                                                              LOBYTE(v418) = 1;
                                                                              sub_257ED0280();
                                                                              v316 = [v167 bundleForClass_];
                                                                              v317 = sub_257ECF4C0();
                                                                              v318 = sub_257ECF4C0();
                                                                              v319 = [v316 localizedStringForKey:v317 value:0 table:v318];

                                                                              v320 = sub_257ECF500();
                                                                              v322 = v321;

                                                                              *(v107 + 1696) = v320;
                                                                              *(v107 + 1704) = v322;
                                                                              LOBYTE(v418) = 2;
                                                                              sub_257ED0280();
                                                                              v323 = [v167 bundleForClass_];
                                                                              v324 = sub_257ECF4C0();
                                                                              v325 = sub_257ECF4C0();
                                                                              v326 = [v323 localizedStringForKey:v324 value:0 table:v325];

                                                                              v327 = sub_257ECF500();
                                                                              v329 = v328;

                                                                              *(v107 + 1752) = v327;
                                                                              *(v107 + 1760) = v329;
                                                                              LOBYTE(v418) = 3;
                                                                              sub_257ED0280();
                                                                              v330 = [v167 bundleForClass_];
                                                                              v331 = sub_257ECF4C0();
                                                                              v332 = sub_257ECF4C0();
                                                                              v333 = [v330 localizedStringForKey:v331 value:0 table:v332];

                                                                              v334 = sub_257ECF500();
                                                                              v336 = v335;

                                                                              *(v107 + 1808) = v334;
                                                                              *(v107 + 1816) = v336;
                                                                              LOBYTE(v418) = 4;
                                                                              sub_257ED0280();
                                                                              v337 = [v167 bundleForClass_];
                                                                              v338 = sub_257ECF4C0();
                                                                              v339 = sub_257ECF4C0();
                                                                              v340 = [v337 localizedStringForKey:v338 value:0 table:v339];

                                                                              v341 = sub_257ECF500();
                                                                              v343 = v342;

                                                                              *(v107 + 1864) = v341;
                                                                              *(v107 + 1872) = v343;
                                                                              LOBYTE(v418) = 5;
                                                                              sub_257ED0280();
                                                                              v344 = [v167 bundleForClass_];
                                                                              v345 = sub_257ECF4C0();
                                                                              v346 = sub_257ECF4C0();
                                                                              v347 = [v344 localizedStringForKey:v345 value:0 table:v346];

                                                                              v348 = sub_257ECF500();
                                                                              v350 = v349;

                                                                              *(v107 + 1920) = v348;
                                                                              *(v107 + 1928) = v350;
                                                                              LOBYTE(v418) = 6;
                                                                              sub_257ED0280();
                                                                              v351 = [v167 bundleForClass_];
                                                                              v352 = sub_257ECF4C0();
                                                                              v353 = sub_257ECF4C0();
                                                                              v354 = [v351 localizedStringForKey:v352 value:0 table:v353];

                                                                              v355 = sub_257ECF500();
                                                                              v357 = v356;

                                                                              *(v107 + 1976) = v355;
                                                                              *(v107 + 1984) = v357;
                                                                              LOBYTE(v418) = 7;
                                                                              sub_257ED0280();
                                                                              v358 = [v167 bundleForClass_];
                                                                              v359 = sub_257ECF4C0();
                                                                              v360 = sub_257ECF4C0();
                                                                              v361 = [v358 localizedStringForKey:v359 value:0 table:v360];

                                                                              v362 = sub_257ECF500();
                                                                              v364 = v363;

                                                                              *(v107 + 2032) = v362;
                                                                              *(v107 + 2040) = v364;
                                                                              LOBYTE(v418) = 8;
                                                                              sub_257ED0280();
                                                                              v365 = [v167 bundleForClass_];
                                                                              v366 = sub_257ECF4C0();
                                                                              v367 = sub_257ECF4C0();
                                                                              v368 = [v365 localizedStringForKey:v366 value:0 table:v367];

                                                                              v369 = sub_257ECF500();
                                                                              v371 = v370;

                                                                              *(v107 + 2088) = v369;
                                                                              *(v107 + 2096) = v371;
                                                                              LOBYTE(v418) = 9;
                                                                              sub_257ED0280();
                                                                              v372 = [v167 bundleForClass_];
                                                                              v373 = sub_257ECF4C0();
                                                                              v374 = sub_257ECF4C0();
                                                                              v375 = [v372 localizedStringForKey:v373 value:0 table:v374];

                                                                              v376 = sub_257ECF500();
                                                                              v378 = v377;

                                                                              *(v107 + 2144) = v376;
                                                                              *(v107 + 2152) = v378;
                                                                              v379 = sub_257BEA240(v107);
                                                                              swift_setDeallocating();
                                                                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5640);
                                                                              swift_arrayDestroy();
                                                                              swift_deallocClassInstance();
                                                                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B18);
                                                                              v380 = swift_initStackObject();
                                                                              *(v380 + 16) = xmmword_257EE2EF0;
                                                                              *(v380 + 32) = 5;
                                                                              *(v380 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B20);
                                                                              *(v380 + 40) = &type metadata for DoorAttributeModelHeads.Shape;
                                                                              *(v380 + 72) = 0;
                                                                              *(v380 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B28);
                                                                              *(v380 + 80) = &type metadata for DoorAttributeModelHeads.Approach;
                                                                              *(v380 + 112) = 3;
                                                                              *(v380 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B30);
                                                                              *(v380 + 120) = &type metadata for DoorAttributeModelHeads.OpenMethod;
                                                                              *(v380 + 152) = 6;
                                                                              *(v380 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B38);
                                                                              *(v380 + 160) = &type metadata for DoorAttributeModelHeads.Size;
                                                                              *(v380 + 192) = 2;
                                                                              *(v380 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B40);
                                                                              *(v380 + 200) = &type metadata for DoorAttributeModelHeads.DoorHandle;
                                                                              *(v380 + 232) = 7;
                                                                              *(v380 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B48);
                                                                              *(v380 + 240) = &type metadata for DoorAttributeModelHeads.Window;
                                                                              *(v380 + 272) = 1;
                                                                              *(v380 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B50);
                                                                              *(v380 + 280) = &type metadata for DoorAttributeModelHeads.Color;
                                                                              *(v380 + 312) = 8;
                                                                              *(v380 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B58);
                                                                              *(v380 + 320) = &type metadata for DoorAttributeModelHeads.Material;
                                                                              v381 = sub_257BE8424(v380);
                                                                              swift_setDeallocating();
                                                                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5630);
                                                                              swift_arrayDestroy();
                                                                              *&v409 = v394;
                                                                              BYTE8(v409) = v400;
                                                                              HIDWORD(v409) = v58;
                                                                              LOBYTE(v410) = v399;
                                                                              DWORD1(v410) = v63;
                                                                              BYTE8(v410) = v398;
                                                                              HIDWORD(v410) = v69;
                                                                              LOBYTE(v411) = v402;
                                                                              DWORD1(v411) = v72;
                                                                              BYTE8(v411) = v397;
                                                                              HIDWORD(v411) = v77;
                                                                              LOBYTE(v412) = v80;
                                                                              DWORD1(v412) = v83;
                                                                              BYTE8(v412) = v396;
                                                                              HIDWORD(v412) = v88;
                                                                              LOBYTE(v413) = v393;
                                                                              *(&v413 + 1) = v94;
                                                                              BYTE8(v413) = v392;
                                                                              HIDWORD(v413) = v395;
                                                                              LOBYTE(v414) = v391;
                                                                              DWORD1(v414) = v390;
                                                                              *(&v414 + 1) = v379;
                                                                              v415 = v381;
                                                                              v424 = v381;
                                                                              v422 = v413;
                                                                              v423 = v414;
                                                                              v420 = v411;
                                                                              v421 = v412;
                                                                              v418 = v409;
                                                                              v419 = v410;
                                                                              v24 = v403;
                                                                              v6 = *v403;
                                                                              sub_257C22CE8(&v409, v416);
                                                                              sub_257C22CE8(&v409, v416);
                                                                              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                                                              *v403 = v6;
                                                                              if (isUniquelyReferenced_nonNull_native)
                                                                              {
LABEL_86:
                                                                                if ((v407 & 0x8000000000000000) != 0)
                                                                                {
                                                                                  __break(1u);
                                                                                }

                                                                                else if (*(v6 + 16) > v407)
                                                                                {
                                                                                  v383 = type metadata accessor for DetectedDoor(0);
                                                                                  v384 = v6 + ((*(*(v383 - 8) + 80) + 32) & ~*(*(v383 - 8) + 80)) + *(*(v383 - 8) + 72) * v407 + *(v383 + 44);
                                                                                  v386 = *v384;
                                                                                  v385 = *(v384 + 16);
                                                                                  v416[2] = *(v384 + 32);
                                                                                  v388 = *(v384 + 64);
                                                                                  v387 = *(v384 + 80);
                                                                                  v389 = *(v384 + 48);
                                                                                  v417 = *(v384 + 96);
                                                                                  v416[4] = v388;
                                                                                  v416[5] = v387;
                                                                                  v416[3] = v389;
                                                                                  v416[0] = v386;
                                                                                  v416[1] = v385;
                                                                                  *v384 = v418;
                                                                                  *(v384 + 16) = v419;
                                                                                  *(v384 + 32) = v420;
                                                                                  *(v384 + 48) = v421;
                                                                                  *(v384 + 64) = v422;
                                                                                  *(v384 + 80) = v423;
                                                                                  *(v384 + 96) = v424;
                                                                                  sub_257BE4084(v416, &qword_27F8F8B60);
                                                                                  swift_unknownObjectRelease();

                                                                                  sub_257D7C8A4(&v409);
                                                                                  sub_257D7C8A4(&v409);

                                                                                  return;
                                                                                }

                                                                                __break(1u);
                                                                                goto LABEL_129;
                                                                              }

LABEL_126:
                                                                              v6 = sub_257C7DEC4(v6);
                                                                              *v24 = v6;
                                                                              goto LABEL_86;
                                                                            }

LABEL_125:
                                                                            __break(1u);
                                                                            goto LABEL_126;
                                                                          }

LABEL_124:
                                                                          __break(1u);
                                                                          goto LABEL_125;
                                                                        }

LABEL_123:
                                                                        __break(1u);
                                                                        goto LABEL_124;
                                                                      }

LABEL_122:
                                                                      __break(1u);
                                                                      goto LABEL_123;
                                                                    }

LABEL_121:
                                                                    __break(1u);
                                                                    goto LABEL_122;
                                                                  }

LABEL_120:
                                                                  __break(1u);
                                                                  goto LABEL_121;
                                                                }

LABEL_119:
                                                                __break(1u);
                                                                goto LABEL_120;
                                                              }

LABEL_118:
                                                              __break(1u);
                                                              goto LABEL_119;
                                                            }

LABEL_117:
                                                            __break(1u);
                                                            goto LABEL_118;
                                                          }

LABEL_116:
                                                          __break(1u);
                                                          goto LABEL_117;
                                                        }

LABEL_115:
                                                        __break(1u);
                                                        goto LABEL_116;
                                                      }

LABEL_114:
                                                      __break(1u);
                                                      goto LABEL_115;
                                                    }

LABEL_113:
                                                    __break(1u);
                                                    goto LABEL_114;
                                                  }

LABEL_112:
                                                  __break(1u);
                                                  goto LABEL_113;
                                                }

LABEL_111:
                                                __break(1u);
                                                goto LABEL_112;
                                              }

LABEL_110:
                                              __break(1u);
                                              goto LABEL_111;
                                            }

LABEL_109:
                                            __break(1u);
                                            goto LABEL_110;
                                          }

LABEL_108:
                                          __break(1u);
                                          goto LABEL_109;
                                        }

LABEL_107:
                                        __break(1u);
                                        goto LABEL_108;
                                      }

LABEL_106:
                                      __break(1u);
                                      goto LABEL_107;
                                    }

LABEL_105:
                                    __break(1u);
                                    goto LABEL_106;
                                  }

LABEL_104:
                                  __break(1u);
                                  goto LABEL_105;
                                }

LABEL_103:
                                __break(1u);
                                goto LABEL_104;
                              }

LABEL_102:
                              __break(1u);
                              goto LABEL_103;
                            }

LABEL_101:
                            __break(1u);
                            goto LABEL_102;
                          }

LABEL_100:
                          __break(1u);
                          goto LABEL_101;
                        }

LABEL_99:
                        __break(1u);
                        goto LABEL_100;
                      }

LABEL_98:
                      __break(1u);
                      goto LABEL_99;
                    }

LABEL_97:
                    __break(1u);
                    goto LABEL_98;
                  }

LABEL_96:
                  __break(1u);
                  goto LABEL_97;
                }

LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v32 = *(v29 + 8 * v35);
    ++v27;
  }

  while (!v32);
  v34 = v24;
  v27 = v35;
  while (1)
  {
    v36 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v37 = (*(v406 + 48) + ((v27 << 10) | (16 * v36)));
    v39 = *v37;
    v38 = v37[1];

    if ((sub_257D7C04C() & 1) == 0 || (*&v418 = v39, *(&v418 + 1) = v38, strcpy(&v409, "probabilities"), HIWORD(v409) = -4864, sub_257BDAB08(), (sub_257ED0150() & 1) == 0))
    {
LABEL_16:

      v24 = v34;
      if (!v32)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v40 = sub_257ECF4C0();
    v41 = [v405 featureValueForName_];

    if (!v41)
    {
      break;
    }

    v42 = [v41 multiArrayValue];

    if (!v42)
    {
      goto LABEL_16;
    }

    v43 = v42;
    sub_257D7C670(v43);
    v401 = v44;
    v46 = v45;

    v47 = swift_isUniquelyReferenced_nonNull_native();
    *&v418 = v34;
    sub_257EC7B3C(v401, v39, v38, v47, v46);

    v24 = v418;
    if (!v32)
    {
      goto LABEL_18;
    }

LABEL_17:
    v34 = v24;
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

uint64_t sub_257D7C04C()
{

  v0 = sub_257ECF660();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_257ECF660();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_257ED0640();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_257ECF660();
      v3 = v5;
    }

    while (v5);
  }

  sub_257ECF660();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_257D7C1A8()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_257D7C238(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257D7C280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_257D7C2E8()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_257ECF3C0();

  v6[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_257ECC9F0();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_257D7C3D0()
{
  result = qword_27F8F8AB0;
  if (!qword_27F8F8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AB0);
  }

  return result;
}

unint64_t sub_257D7C424()
{
  result = qword_27F8F8AB8;
  if (!qword_27F8F8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AB8);
  }

  return result;
}

unint64_t sub_257D7C478()
{
  result = qword_27F8F8AC0;
  if (!qword_27F8F8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AC0);
  }

  return result;
}

unint64_t sub_257D7C4CC()
{
  result = qword_27F8F8AC8;
  if (!qword_27F8F8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AC8);
  }

  return result;
}

unint64_t sub_257D7C520()
{
  result = qword_27F8F8AD0;
  if (!qword_27F8F8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AD0);
  }

  return result;
}

unint64_t sub_257D7C574()
{
  result = qword_27F8F8AD8;
  if (!qword_27F8F8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AD8);
  }

  return result;
}

unint64_t sub_257D7C5C8()
{
  result = qword_27F8F8AE0;
  if (!qword_27F8F8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AE0);
  }

  return result;
}

unint64_t sub_257D7C61C()
{
  result = qword_27F8F8AE8;
  if (!qword_27F8F8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AE8);
  }

  return result;
}

void sub_257D7C670(void *a1)
{
  v2 = [a1 shape];
  sub_257BD2C2C(0, &qword_281543DC0);
  v3 = sub_257ECF810();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C72E20](1, v3);
  }

  else
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_15;
    }

    v4 = *(v3 + 40);
  }

  v5 = v4;

  v13 = 0;
  v14 = 1;
  MEMORY[0x259C725F0](v5, &v13);
  if (v14)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = v13;

  if (v6 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6)
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      v9 = v7 + 1;
      v10 = [a1 objectAtIndexedSubscript_];
      sub_257ECFA40();
      v12 = v11;

      if (v8 < v12)
      {
        v8 = v12;
      }

      ++v7;
    }

    while (v6 != v9);
  }
}

unint64_t sub_257D7C7DC(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_257D7C7EC(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

unint64_t sub_257D7C7FC()
{
  result = qword_27F8F8B08;
  if (!qword_27F8F8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B08);
  }

  return result;
}

unint64_t sub_257D7C850()
{
  result = qword_27F8F8B10;
  if (!qword_27F8F8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B10);
  }

  return result;
}

uint64_t sub_257D7C8D4(uint64_t a1)
{
  v4 = *(sub_257ECCB70() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257BE3DE0;

  return sub_257D78B98(a1, v7, v8, v1 + v5, v9, v10);
}

id sub_257D7CA0C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECCAE0();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_257ECCB70();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_257ECC9F0();

    swift_willThrow();
    v11 = sub_257ECCB70();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t objectdestroyTm_4()
{
  v1 = sub_257ECCB70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257D7CCB0(uint64_t a1)
{
  v4 = *(sub_257ECCB70() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257C167C4;

  return sub_257D784B8(a1, v7, v8, v1 + v5, v9, v10);
}

unint64_t sub_257D7CDE8()
{
  result = qword_27F8F6D70;
  if (!qword_27F8F6D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D70);
  }

  return result;
}

unint64_t sub_257D7CF00()
{
  result = qword_27F8F8B78;
  if (!qword_27F8F8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B78);
  }

  return result;
}

unint64_t sub_257D7CF58()
{
  result = qword_27F8F8B80;
  if (!qword_27F8F8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B80);
  }

  return result;
}

unint64_t sub_257D7CFB0()
{
  result = qword_27F8F8B88;
  if (!qword_27F8F8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B88);
  }

  return result;
}

unint64_t sub_257D7D008()
{
  result = qword_27F8F8B90;
  if (!qword_27F8F8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B90);
  }

  return result;
}

unint64_t sub_257D7D060()
{
  result = qword_27F8F8B98;
  if (!qword_27F8F8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B98);
  }

  return result;
}

unint64_t sub_257D7D0B8()
{
  result = qword_27F8F8BA0;
  if (!qword_27F8F8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BA0);
  }

  return result;
}

unint64_t sub_257D7D110()
{
  result = qword_27F8F8BA8;
  if (!qword_27F8F8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BA8);
  }

  return result;
}

unint64_t sub_257D7D168()
{
  result = qword_27F8F8BB0;
  if (!qword_27F8F8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BB0);
  }

  return result;
}

unint64_t sub_257D7D1C0()
{
  result = qword_27F8F8BB8;
  if (!qword_27F8F8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BB8);
  }

  return result;
}

unint64_t sub_257D7D218()
{
  result = qword_27F8F8BC0;
  if (!qword_27F8F8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BC0);
  }

  return result;
}

unint64_t sub_257D7D28C()
{
  result = qword_27F8F8BC8;
  if (!qword_27F8F8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BC8);
  }

  return result;
}

unint64_t sub_257D7D2E4()
{
  result = qword_27F8F8BD0;
  if (!qword_27F8F8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BD0);
  }

  return result;
}

uint64_t sub_257D7D3A4()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F913018);
  __swift_project_value_buffer(v0, qword_27F913018);
  return sub_257ECCA00();
}

uint64_t sub_257D7D408(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_257ECDA30();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  v2[13] = swift_task_alloc();
  v2[14] = sub_257ECF900();
  v2[15] = sub_257ECF8F0();
  v5 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D7D538, v5, v4);
}

uint64_t sub_257D7D538()
{
  v29 = v0;

  result = _s16MagnifierSupport16MAGActivityStoreC10activitiesSayAA0C0VGvg_0();
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (result + 40);
    while (v4 < *(v2 + 16))
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      swift_bridgeObjectRetain_n();
      sub_257ECC360();
      if (v7 == v0[2] && v6 == v0[3])
      {

LABEL_14:

        v23 = v0[13];
        v24 = sub_257ECF930();
        (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
        v25 = sub_257ECF8F0();
        v26 = swift_allocObject();
        v27 = MEMORY[0x277D85700];
        *(v26 + 16) = v25;
        *(v26 + 24) = v27;
        *(v26 + 32) = v7;
        *(v26 + 40) = v6;
        *(v26 + 48) = 0;
        sub_257C3FBD4(0, 0, v23, &unk_257EE7C28, v26);

        sub_257ECC350();

        v22 = v0[1];
        goto LABEL_15;
      }

      v9 = sub_257ED0640();

      if (v9)
      {
        goto LABEL_14;
      }

      ++v4;

      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    sub_257ECD340();
    sub_257ECC3F0();
    v10 = sub_257ECDA20();
    v11 = sub_257ECFBE0();

    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      sub_257ECC360();
      v18 = sub_257BF1FC8(v0[6], v0[7], &v28);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_257BAC000, v10, v11, "Cannot handle requested unknown activity entity: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x259C74820](v17, -1, -1);
      MEMORY[0x259C74820](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
    sub_257ECC360();
    v19 = v0[4];
    v20 = v0[5];
    sub_257BEBEF0();
    swift_allocError();
    *v21 = v19;
    *(v21 + 8) = v20;
    *(v21 + 16) = 0;
    *(v21 + 24) = 3;
    swift_willThrow();

    v22 = v0[1];
LABEL_15:

    return v22();
  }

  return result;
}

uint64_t sub_257D7D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 33) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  v7 = sub_257ECDA30();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  sub_257ECF900();
  *(v6 + 80) = sub_257ECF8F0();
  v9 = sub_257ECF8B0();
  *(v6 + 88) = v9;
  *(v6 + 96) = v8;

  return MEMORY[0x2822009F8](sub_257D7D9A0, v9, v8);
}

uint64_t sub_257D7D9A0()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_257D7DA80;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D7DA80()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_257D7DBFC;
  }

  else
  {
    v5 = sub_257D7DB94;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257D7DB94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257D7DBFC()
{
  v1 = v0[14];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete StartActivityAppIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257D7DD78@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4660 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F913018);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257D7DE20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8BF8);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C00);
  MEMORY[0x28223BE20](v1);
  sub_257ECC5F0();
  sub_257ECC5E0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C08);
  sub_257ECC5D0();

  sub_257ECC5E0();
  sub_257ECC600();
  return sub_257ECC5C0();
}

uint64_t sub_257D7DFC0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_257BE3DE0;

  return sub_257D7D408(a1, v4);
}

uint64_t sub_257D7E060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257D7E0D4();
  *a1 = result;
  return result;
}

uint64_t sub_257D7E088(uint64_t a1)
{
  v2 = sub_257CF9768();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257D7E0D4()
{
  v18 = sub_257ECC610();
  v0 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6C98);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_257ECCA30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8BE8);
  sub_257ECCA00();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = sub_257ECC340();
  v19 = 0;
  v20 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, *MEMORY[0x277CBA308], v18);
  sub_257D7E3C8();
  return sub_257ECC3A0();
}

unint64_t sub_257D7E3C8()
{
  result = qword_27F8F8BF0;
  if (!qword_27F8F8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BF0);
  }

  return result;
}

uint64_t sub_257D7E41C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257BE3DE0;

  return sub_257D7D8A8(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for ActionListItem()
{
  result = qword_27F8F8C10;
  if (!qword_27F8F8C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257D7E568()
{
  result = sub_257ECCCF0();
  if (v1 <= 0x3F)
  {
    result = sub_257ECCC80();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_257D7E63C()
{
  v1 = v0 + *(type metadata accessor for ActionListItem() + 20);
  v2 = *(v1 + 16);
  if (v2 <= 3)
  {
    if (*(v1 + 16) > 1u)
    {
      return 0xD000000000000011;
    }

    if (*(v1 + 16))
    {
      return 0x5A207473756A6441;
    }

    return 0x6341207472617453;
  }

  if (*(v1 + 16) <= 5u)
  {
    if (v2 == 4)
    {
      return 0x43207473756A6441;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  if (v2 == 6)
  {
    return 0x46207473756A6441;
  }

  v5 = *v1;
  v4 = *(v1 + 8);
  if (*v1 <= 3uLL)
  {
    if (v5 <= 1)
    {
      if (v5 | v4)
      {
        return 0x5420746365746544;
      }

      else
      {
        return 0x6562697263736544;
      }
    }

    if (!(v5 ^ 2 | v4))
    {
      return 0xD000000000000015;
    }

    return 0xD000000000000014;
  }

  if (v5 <= 5)
  {
    if (v5 ^ 4 | v4)
    {
      return 0xD000000000000016;
    }

    return 0xD000000000000014;
  }

  if (v5 ^ 6 | v4)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_257D7E8C8()
{
  v1 = (v0 + *(type metadata accessor for ActionListItem() + 20));
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 > 3)
  {
    if (*(v1 + 16) > 5u)
    {
      if (v3 != 6)
      {
        return MEMORY[0x277D84F90];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257ED6D30;
      sub_257ED02D0();

      v22 = 0xD000000000000011;
      v23 = 0x8000000257F03490;
      sub_257D188B4();
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_257ECF4C0();

      v15 = sub_257ECF4C0();
      v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

      v17 = sub_257ECF500();
      v19 = v18;

      MEMORY[0x259C72150](v17, v19);
      goto LABEL_23;
    }

    if (v3 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257ED6D30;
      sub_257ED02D0();

      v9 = 0x8000000257F034D0;
      v10 = 0xD000000000000014;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257ED6D30;
      sub_257ED02D0();

      v9 = 0x8000000257F034B0;
      v10 = 0xD000000000000017;
    }

LABEL_16:
    v22 = v10;
    v23 = v9;
    if (v2)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v2)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x259C72150](v20, v21);
LABEL_23:

    MEMORY[0x259C72150](34, 0xE100000000000000);
    result = v8;
    v7 = v23;
    *(v8 + 32) = v22;
    goto LABEL_24;
  }

  if (*(v1 + 16) > 1u)
  {
    if (v3 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257ED6D30;
      sub_257ED02D0();

      v11 = "Increase flashlight: ";
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257ED6D30;
      sub_257ED02D0();

      v11 = "Increase brightness: ";
    }

    v9 = (v11 - 32) | 0x8000000000000000;
    v10 = 0xD000000000000016;
    goto LABEL_16;
  }

  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_257ED6D30;
    sub_257ED02D0();

    v9 = 0x8000000257F03530;
    v10 = 0xD000000000000010;
    goto LABEL_16;
  }

  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257ED6D30;
  MEMORY[0x259C72150](v2, v4);
  MEMORY[0x259C72150](34, 0xE100000000000000);
  result = v5;
  v7 = 0xE700000000000000;
  *(v5 + 32) = 0x22203A656D614ELL;
LABEL_24:
  *(result + 40) = v7;
  return result;
}

uint64_t sub_257D7ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C30);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_257D7EF38(a1, a2, a3, &v14 - v9);
  sub_257ECE550();
  sub_257D80C00();
  sub_257ECEBC0();

  sub_257BE4084(v10, &qword_27F8F8C30);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v12 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C20) + 36));
  sub_257ECE100();
  sub_257ECC3F0();
  sub_257ECC3F0();

  result = sub_257ECF910();
  *v12 = &unk_257EE7D98;
  v12[1] = v11;
  return result;
}

uint64_t sub_257D7EF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C78);
  MEMORY[0x28223BE20](v32);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C88);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v34 = a1;
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C80);
  sub_257ECEE60();
  v13 = *(v33 + 16);

  if (v13)
  {
    *v9 = sub_257ECE5B0();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C90);
    sub_257D7F294(a1, a2, a3, &v9[*(v14 + 44)]);
    sub_257BE401C(v9, v12, &qword_27F8F8C78);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C58);
    sub_257D80D3C();
    sub_257BD2D4C(&qword_27F8F8C70, &qword_27F8F8C78);
    sub_257ECE6F0();
    return sub_257BE4084(v9, &qword_27F8F8C78);
  }

  else
  {
    sub_257ECE550();
    v16 = sub_257ECEAD0();
    v18 = v17;
    v20 = v19;
    sub_257ECE9C0();
    v21 = sub_257ECEAC0();
    v30 = v22;
    v31 = a4;
    v23 = v21;
    v25 = v24;
    v27 = v26;

    sub_257C0300C(v16, v18, v20 & 1);

    KeyPath = swift_getKeyPath();
    *v12 = v23;
    *(v12 + 1) = v25;
    v12[16] = v27 & 1;
    *(v12 + 3) = v30;
    *(v12 + 4) = KeyPath;
    v12[40] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C58);
    sub_257D80D3C();
    sub_257BD2D4C(&qword_27F8F8C70, &qword_27F8F8C78);
    return sub_257ECE6F0();
  }
}

uint64_t sub_257D7F294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v72 = a3;
  v92 = a4;
  v90 = sub_257ECE2C0();
  v91 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C98);
  v78 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v70 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CA0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v69 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CA8);
  MEMORY[0x28223BE20](v79);
  v13 = &v69 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CB0);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v76 = &v69 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CB8) - 8;
  MEMORY[0x28223BE20](v84);
  v80 = &v69 - v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CC0) - 8;
  MEMORY[0x28223BE20](v75);
  v74 = &v69 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CC8) - 8;
  v17 = MEMORY[0x28223BE20](v86);
  v88 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v82 = &v69 - v20;
  MEMORY[0x28223BE20](v19);
  v83 = &v69 - v21;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CD0);
  v71 = *(v73 - 8);
  v22 = MEMORY[0x28223BE20](v73);
  v77 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v69 = &v69 - v24;
  *&v97[0] = a1;
  *(&v97[0] + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C80);
  sub_257ECEE60();
  *&v97[0] = v96;
  v93 = v97;
  v94 = sub_257D7FCBC;
  v95 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CD8);
  sub_257D8123C();
  sub_257ECEA80();

  sub_257ECE550();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = v72;
  sub_257ECC3F0();
  sub_257ECC3F0();

  v26 = v70;
  sub_257ECEEC0();
  sub_257ECF060();
  sub_257ECE2F0();
  (*(v78 + 32))(v11, v26, v81);
  v27 = &v11[*(v9 + 44)];
  v28 = v97[5];
  *(v27 + 4) = v97[4];
  *(v27 + 5) = v28;
  *(v27 + 6) = v97[6];
  v29 = v97[1];
  *v27 = v97[0];
  *(v27 + 1) = v29;
  v30 = v97[3];
  *(v27 + 2) = v97[2];
  *(v27 + 3) = v30;
  v31 = sub_257ECE930();
  sub_257ECDF40();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_257D81340(v11, v13);
  v40 = &v13[*(v79 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = v89;
  sub_257ECE2B0();
  sub_257D813B0();
  sub_257D815CC(&qword_27F8F8D10, MEMORY[0x277CDDB18]);
  v42 = v76;
  v43 = v90;
  sub_257ECEB60();
  (*(v91 + 8))(v41, v43);
  sub_257BE4084(v13, &qword_27F8F8CA8);
  v44 = sub_257ECE790();
  v45 = v80;
  (*(v85 + 32))(v80, v42, v87);
  *(v45 + *(v84 + 44)) = v44;
  v46 = v74;
  v47 = &v74[*(v75 + 44)];
  v48 = *(sub_257ECE2D0() + 20);
  v49 = *MEMORY[0x277CE0118];
  v50 = sub_257ECE570();
  (*(*(v50 - 8) + 104))(&v47[v48], v49, v50);
  __asm { FMOV            V0.2D, #8.0 }

  *v47 = _Q0;
  *&v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8D18) + 56)] = 256;
  sub_257C0DD14(v45, v46, &qword_27F8F8CB8);
  v56 = sub_257ECED40();
  v57 = v82;
  sub_257C0DD14(v46, v82, &qword_27F8F8CC0);
  *(v57 + *(v86 + 44)) = v56;
  v58 = v83;
  sub_257C0DD14(v57, v83, &qword_27F8F8CC8);
  v59 = v71;
  v60 = *(v71 + 16);
  v61 = v77;
  v62 = v69;
  v63 = v73;
  v60(v77, v69, v73);
  v64 = v88;
  sub_257BE401C(v58, v88, &qword_27F8F8CC8);
  v65 = v92;
  v60(v92, v61, v63);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8D20);
  sub_257BE401C(v64, &v65[*(v66 + 48)], &qword_27F8F8CC8);
  sub_257BE4084(v58, &qword_27F8F8CC8);
  v67 = *(v59 + 8);
  v67(v62, v63);
  sub_257BE4084(v64, &qword_27F8F8CC8);
  return (v67)(v61, v63);
}

uint64_t sub_257D7FCBC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_257ECE5C0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8D48);
  return sub_257D7FD14(a1 + *(v2 + 44));
}

uint64_t sub_257D7FD14@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8D50);
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v30 - v6;
  v39 = sub_257ECE500();
  v42 = 1;
  sub_257D8018C(&v51);
  v45 = *&v52[16];
  v46 = *&v52[32];
  v43 = v51;
  v44 = *v52;
  v48[1] = *v52;
  v48[2] = *&v52[16];
  v48[3] = *&v52[32];
  v48[4] = *&v52[48];
  v47 = *&v52[48];
  v48[0] = v51;
  sub_257BE401C(&v43, v49, &qword_27F8F8D58);
  sub_257BE4084(v48, &qword_27F8F8D58);
  *&v41[23] = v44;
  *&v41[39] = v45;
  *&v41[55] = v46;
  *&v41[71] = v47;
  *&v41[7] = v43;
  v40 = v42;
  *&v51 = sub_257D7E63C();
  *(&v51 + 1) = v7;
  sub_257BDAB08();
  v8 = sub_257ECEAF0();
  v10 = v9;
  v12 = v11;
  sub_257ECEA60();
  v32 = sub_257ECEAC0();
  v14 = v13;
  v33 = v15;
  v34 = v16;

  sub_257C0300C(v8, v10, v12 & 1);

  *&v51 = sub_257D7E8C8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
  sub_257BD2D4C(&qword_27F8F8D60, &qword_27F8F9D90);
  v17 = v38;
  sub_257ECEF80();
  v18 = v36;
  v31 = *(v37 + 16);
  v19 = v35;
  v31(v35, v17, v36);
  v49[0] = v39;
  v49[1] = 0;
  v50[0] = v40;
  *&v50[1] = *v41;
  *&v50[17] = *&v41[16];
  *&v50[65] = *&v41[64];
  *&v50[49] = *&v41[48];
  *&v50[33] = *&v41[32];
  v20 = *&v41[79];
  *&v50[80] = *&v41[79];
  v21 = *v50;
  *a1 = v39;
  *(a1 + 16) = v21;
  v22 = *&v50[16];
  v23 = *&v50[32];
  v24 = *&v50[64];
  *(a1 + 64) = *&v50[48];
  *(a1 + 80) = v24;
  *(a1 + 32) = v22;
  *(a1 + 48) = v23;
  v25 = v32;
  *(a1 + 96) = v20;
  *(a1 + 104) = v25;
  *(a1 + 112) = v14;
  LOBYTE(v17) = v33 & 1;
  *(a1 + 120) = v33 & 1;
  *(a1 + 128) = v34;
  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8D68) + 64));
  v27 = v18;
  v31(v26, v19, v18);
  sub_257BE401C(v49, &v51, &qword_27F8F8D70);
  sub_257BD1B90(v25, v14, v17);
  v28 = *(v37 + 8);

  v28(v38, v27);
  v28(v19, v27);
  sub_257C0300C(v25, v14, v17);

  *&v52[33] = *&v41[32];
  *&v52[49] = *&v41[48];
  *v53 = *&v41[64];
  *&v52[1] = *v41;
  v51 = v39;
  v52[0] = v40;
  *&v53[15] = *&v41[79];
  *&v52[17] = *&v41[16];
  return sub_257BE4084(&v51, &qword_27F8F8D70);
}

uint64_t sub_257D8018C@<X0>(uint64_t a1@<X8>)
{
  sub_257ECE550();
  v2 = sub_257ECEAD0();
  v4 = v3;
  v6 = v5;
  sub_257ECEA60();
  v24 = sub_257ECEAC0();
  v25 = v7;
  v9 = v8;
  v23 = v10;

  sub_257C0300C(v2, v4, v6 & 1);

  type metadata accessor for ActionListItem();
  sub_257ECCC60();
  sub_257BDAB08();
  v11 = sub_257ECEAF0();
  v13 = v12;
  LOBYTE(v4) = v14;
  sub_257ECE7A0();
  v15 = sub_257ECEAB0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_257C0300C(v11, v13, v4 & 1);

  *a1 = v24;
  *(a1 + 8) = v9;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v25;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v15;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19 & 1;
  *(a1 + 72) = v21;
  sub_257BD1B90(v24, v9, v23 & 1);

  sub_257BD1B90(v15, v17, v19 & 1);

  sub_257C0300C(v15, v17, v19 & 1);

  sub_257C0300C(v24, v9, v23 & 1);
}

uint64_t sub_257D803A4@<X0>(uint64_t a1@<X8>)
{
  sub_257BDAB08();

  v2 = sub_257ECEAF0();
  v4 = v3;
  v6 = v5;
  sub_257ECE9B0();
  v7 = sub_257ECEAC0();
  v9 = v8;
  v11 = v10;

  sub_257C0300C(v2, v4, v6 & 1);

  sub_257ECE7A0();
  v12 = sub_257ECEAB0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_257C0300C(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_257D804DC()
{
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C80);
  sub_257ECEE60();

  sub_257ECEE70();
}

uint64_t sub_257D80580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_257ECF900();
  v3[8] = sub_257ECF8F0();
  v5 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D8061C, v5, v4);
}

uint64_t sub_257D8061C()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];

  v0[2] = v3;
  v0[3] = v2;
  v0[4] = v1;
  sub_257ECC3F0();
  sub_257ECC3F0();

  v4 = sub_257ECF570();
  v6 = v5;
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_257EE7DA8;
  *(v8 + 24) = v7;
  swift_beginAccess();

  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  sub_257EC7CC4(&unk_257EE7DB0, v8, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v1 + 16) = v12;
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

uint64_t sub_257D807C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  v5 = type metadata accessor for ActionListItem();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = *a1;
  *(v3 + 128) = *(a1 + 16);
  sub_257ECF900();
  *(v3 + 120) = sub_257ECF8F0();
  v7 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D808C8, v7, v6);
}

uint64_t sub_257D808C8()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 128);

  sub_257CCE9D4(v2, v1, v7);
  sub_257ECCCE0();
  v8 = v3 + *(v5 + 20);
  *v8 = v2;
  *(v8 + 8) = v1;
  *(v8 + 16) = v7;
  sub_257ECCC70();
  *(v0 + 16) = v6;
  *(v0 + 24) = v4;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C80);
  sub_257ECEE60();
  v9 = *(v0 + 48);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_257BFDF84(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_257BFDF84(v10 > 1, v11 + 1, 1, v9);
  }

  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v9[2] = v11 + 1;
  sub_257D81014(v13, v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11);
  *(v0 + 32) = v14;
  *(v0 + 40) = v15;
  *(v0 + 56) = v9;
  sub_257ECEE70();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_257D80A80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C20);
  sub_257D80B08();
  return sub_257ECE250();
}

unint64_t sub_257D80B08()
{
  result = qword_27F8F8C28;
  if (!qword_27F8F8C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8C30);
    sub_257D80C00();
    swift_getOpaqueTypeConformance2();
    sub_257D815CC(&qword_27F8F4978, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8C28);
  }

  return result;
}

unint64_t sub_257D80C00()
{
  result = qword_27F8F8C38;
  if (!qword_27F8F8C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8C30);
    sub_257D80C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8C38);
  }

  return result;
}

unint64_t sub_257D80C84()
{
  result = qword_27F8F8C40;
  if (!qword_27F8F8C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8C48);
    sub_257D80D3C();
    sub_257BD2D4C(&qword_27F8F8C70, &qword_27F8F8C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8C40);
  }

  return result;
}

unint64_t sub_257D80D3C()
{
  result = qword_27F8F8C50;
  if (!qword_27F8F8C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8C58);
    sub_257BD2D4C(&qword_27F8F8C60, &qword_27F8F8C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8C50);
  }

  return result;
}

uint64_t sub_257D80DF4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_257BE3DE0;

  return sub_257D80580(v2, v3, v4);
}

uint64_t sub_257D80E9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_257BE3DE0;

  return sub_257D807C0(a1, v4, v5);
}

uint64_t sub_257D80F4C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257C167C4;

  return sub_257C0334C(a1, a2, v6);
}

uint64_t sub_257D81014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionListItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257D81078@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257ECE3F0();
  *a1 = result;
  return result;
}

uint64_t sub_257D810CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8D28);
  sub_257ECCCF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CF0);
  sub_257D8151C();
  sub_257BD2D4C(&qword_27F8F8CE8, &qword_27F8F8CF0);
  sub_257D815CC(&qword_27F8F8D40, type metadata accessor for ActionListItem);
  return sub_257ECEF90();
}

unint64_t sub_257D8123C()
{
  result = qword_27F8F8CE0;
  if (!qword_27F8F8CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8CD8);
    sub_257BD2D4C(&qword_27F8F8CE8, &qword_27F8F8CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8CE0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

uint64_t sub_257D81340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257D813B0()
{
  result = qword_27F8F8CF8;
  if (!qword_27F8F8CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8CA8);
    sub_257D8143C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8CF8);
  }

  return result;
}

unint64_t sub_257D8143C()
{
  result = qword_27F8F8D00;
  if (!qword_27F8F8D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8CA0);
    sub_257BD2D4C(&qword_27F8F8D08, &qword_27F8F8C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8D00);
  }

  return result;
}

unint64_t sub_257D8151C()
{
  result = qword_27F8F8D30;
  if (!qword_27F8F8D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8D28);
    sub_257BD2D4C(&qword_27F8F8D38, &qword_27F8FA530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8D30);
  }

  return result;
}

uint64_t sub_257D815CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_257D81614()
{
  if (qword_281543D60 != -1)
  {
    swift_once();
  }

  if (qword_281548060 == 2)
  {
    v0 = 0;
  }

  else
  {
    if (qword_281548060)
    {
      v0 = 1;
    }

    else
    {
      v0 = sub_257ED0640();
    }
  }

  byte_27F8F8D88 = v0 & 1;
}

void sub_257D816EC()
{
  if (qword_281543D60 != -1)
  {
    swift_once();
  }

  if (qword_281548060 == 2)
  {
    v0 = 0;
  }

  else
  {
    if (qword_281548060)
    {
      v0 = sub_257ED0640();
    }

    else
    {
      v0 = 1;
    }
  }

  byte_27F8F8D89 = v0 & 1;
}

BOOL static MAGDeviceUtilities.isVM()()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v1 = 8;
  v2[0] = 0;
  sysctlbyname("kern.hv_vmm_present", v2, &v1, 0, 0);
  return v2[0] == 1;
}

uint64_t URL.isImage.getter()
{
  v0 = sub_257ECD8B0();
  v18 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_257ECC930();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5780);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v11 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v12 = v11;
  sub_257BF2B04(inited);
  swift_setDeallocating();
  sub_257BF32AC(inited + 32);
  sub_257ECCAA0();

  sub_257ECC910();
  (*(v4 + 8))(v6, v3);
  v13 = v18;
  if ((*(v18 + 48))(v9, 1, v0) == 1)
  {
    sub_257D81B08(v9);
    v14 = 0;
  }

  else
  {
    sub_257ECD880();
    v14 = sub_257ECD8A0();
    v15 = *(v13 + 8);
    v15(v2, v0);
    v15(v9, v0);
  }

  return v14 & 1;
}

uint64_t sub_257D81B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257D81B70()
{
  if ((v0[1] & 0x8000000000000000) != 0)
  {
    v2 = *v0;
    v11 = MEMORY[0x277D84F90];
    v3 = 1 << *(*v0 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v2 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        v10 = sub_257C5714C(v11);

        return v10;
      }

      v5 = *(v2 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        do
        {
LABEL_13:
          v5 &= v5 - 1;

          result = sub_257EB0738(v9);
        }

        while (v5);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

id FurnitureDetectionResult.hash(into:)(__int128 *a1)
{
  v3 = sub_257ECCCF0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if ((*(v1 + 8) & 0x8000000000000000) != 0)
  {
    MEMORY[0x259C732E0](1);
    sub_257C9BE54(a1, v7);
    return sub_257ED07E0();
  }

  v8 = *(v1 + 80);
  MEMORY[0x259C732E0](0);
  result = [v7 identifier];
  if (result)
  {
    v10 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v4 + 8))(v6, v3);
    sub_257C9C120(a1, v8);
    return sub_257ED07E0();
  }

  __break(1u);
  return result;
}

uint64_t FurnitureDetectionResult.hashValue.getter()
{
  sub_257ED07B0();
  FurnitureDetectionResult.hash(into:)(v1);
  return sub_257ED0800();
}

uint64_t sub_257D81E7C()
{
  sub_257ED07B0();
  FurnitureDetectionResult.hash(into:)(v1);
  return sub_257ED0800();
}

uint64_t sub_257D81EC0()
{
  sub_257ED07B0();
  FurnitureDetectionResult.hash(into:)(v1);
  return sub_257ED0800();
}

id DetectedFurniture.hash(into:)(__int128 *a1)
{
  v3 = sub_257ECCCF0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 80);
  result = [*v1 identifier];
  if (result)
  {
    v9 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v4 + 8))(v6, v3);
    sub_257C9C120(a1, v7);
    return sub_257ED07E0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DetectedFurniture.hashValue.getter()
{
  v1 = sub_257ECCCF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 80);
  sub_257ED07B0();
  result = [v5 identifier];
  if (result)
  {
    v8 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v2 + 8))(v4, v1);
    sub_257C9C120(v10, v6);
    sub_257ED07E0();
    return sub_257ED0800();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_257D821A4()
{
  v1 = sub_257ECCCF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 80);
  sub_257ED07B0();
  result = [v5 identifier];
  if (result)
  {
    v8 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v2 + 8))(v4, v1);
    sub_257C9C120(v10, v6);
    sub_257ED07E0();
    return sub_257ED0800();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s16MagnifierSupport24FurnitureDetectionResultO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v36 = a1[2];
  v37 = v3;
  v4 = a1[3];
  *v38 = a1[4];
  *&v38[12] = *(a1 + 76);
  v5 = a1[1];
  v34 = *a1;
  v35 = v5;
  v6 = a2[3];
  v7 = a2[1];
  v41 = a2[2];
  v42 = v6;
  v8 = a2[3];
  *v43 = a2[4];
  *&v43[12] = *(a2 + 76);
  v9 = a2[1];
  v39 = *a2;
  v40 = v9;
  v44[0] = v34;
  v44[1] = v2;
  *(v45 + 12) = *(a1 + 76);
  v44[2] = v36;
  v44[3] = v4;
  v10 = a2[4];
  v45[5] = v8;
  v46[0] = v10;
  *(v46 + 12) = *(a2 + 76);
  v45[3] = v7;
  v45[4] = v41;
  v45[0] = a1[4];
  v45[2] = v39;
  v11 = v34;
  if ((HIDWORD(v34) & 0x80000000) != 0)
  {
    if ((HIDWORD(v39) & 0x80000000) != 0)
    {
      v14 = *(&v34 + 2);
      v15 = *(&v39 + 2);
      v16 = v39;
      sub_257C58DDC(&v34, v27);
      sub_257C58DDC(&v39, v27);
      sub_257C93E84(v11, v16);
      v18 = v17;
      sub_257D82838(v44);
      if (v18)
      {
        v12 = v14 == v15;
        return v12 & 1;
      }

      goto LABEL_6;
    }

LABEL_5:
    sub_257C58DDC(&v34, v27);
    sub_257C58DDC(&v39, v27);
    sub_257D82838(v44);
LABEL_6:
    v12 = 0;
    return v12 & 1;
  }

  if ((*(&v39 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

  v27[0] = v34;
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v31 = *v38;
  v32 = *&v38[16];
  v33 = *&v38[24];
  v20 = v39;
  v21 = v40;
  v22 = v41;
  v23 = v42;
  v24 = *v43;
  v25 = *&v43[16];
  v26 = *&v43[24];
  sub_257C58DDC(&v39, v19);
  sub_257C58DDC(&v34, v19);
  sub_257C58DDC(&v34, v19);
  sub_257C58DDC(&v39, v19);
  v12 = _s16MagnifierSupport17DetectedFurnitureV2eeoiySbAC_ACtFZ_0(v27, &v20);
  sub_257D82838(v44);
  sub_257C58E38(&v39);
  sub_257C58E38(&v34);
  return v12 & 1;
}

uint64_t _s16MagnifierSupport17DetectedFurnitureV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  v14 = *(a2 + 88);
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v15 = v23;
  v16 = v8;
  LOBYTE(v8) = _s16MagnifierSupport14DetectedObjectV2eeoiySbAC_ACtFZ_0(&v23, &v18);

  if (v8)
  {
    return sub_257C943E4(v6, v13) & (v7 == v14);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_257D825C0()
{
  result = qword_27F8F8D90;
  if (!qword_27F8F8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8D90);
  }

  return result;
}

unint64_t sub_257D82618()
{
  result = qword_27F8F8D98;
  if (!qword_27F8F8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8D98);
  }

  return result;
}

__n128 __swift_memcpy92_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_257D8269C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 12);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_257D826EC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 92) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      *a1 = 0;
      *(a1 + 8) = (v4 >> 1) << 32;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 76) = 0u;
      return result;
    }

    *(a1 + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257D82788(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257D827D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 92) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257D82838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257D828A4()
{
  result = qword_27F8F8DA0;
  if (!qword_27F8F8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8DA0);
  }

  return result;
}

unint64_t sub_257D828FC()
{
  result = qword_27F8F8DA8;
  if (!qword_27F8F8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8DA8);
  }

  return result;
}

uint64_t sub_257D829BC()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F913030);
  __swift_project_value_buffer(v0, qword_27F913030);
  return sub_257ECCA00();
}

uint64_t sub_257D82A20()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257D82B10, v3, v2);
}

uint64_t sub_257D82B10()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = xmmword_257EE0F90;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257D82BF4;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D82BF4()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257D82D34;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257D82D34()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete PointAndSpeakIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257D82EB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4678 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F913030);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257D82F58(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D8302C, v3, v2);
}

uint64_t sub_257D8302C()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EE81D0, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257D83140(uint64_t a1)
{
  v2 = sub_257CF9714();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257D8318C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257D82A20();
}

uint64_t sub_257D83238()
{
  result = sub_257ECF4C0();
  qword_27F913048 = result;
  return result;
}

void sub_257D832D0()
{
  v0 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_2815447E0;

  if (v1 != -1)
  {
    v2 = swift_once();
  }

  MEMORY[0x28223BE20](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v3 = v27;
  if (v27)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_257ECF4C0();

    v7 = sub_257ECF4C0();
    v3 = [v5 localizedStringForKey:v6 value:0 table:v7];

    if (!v3)
    {
      sub_257ECF500();
      v3 = sub_257ECF4C0();
    }
  }

  [v0 setAccessibilityValue_];

  MEMORY[0x28223BE20](v8);

  sub_257ECFD50();

  if (v27)
  {
    v9 = swift_beginAccess();
    MEMORY[0x28223BE20](v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    if (*(v28 + 16))
    {
      v10 = sub_257C03F6C(v26, v27);
      if (v11)
      {
        v12 = *(*(v28 + 56) + 296 * v10);

        if ((v12 & 1) == 0 || v26 == 0xD000000000000010 && v27 == 0x8000000257EFBEB0)
        {
        }

        else
        {
          v19 = sub_257ED0640();

          if ((v19 & 1) == 0)
          {
            v20 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton;
            v21 = *(v25 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton);
            v22 = objc_opt_self();
            v23 = v21;
            v24 = [v22 systemYellowColor];
            [v23 setBackgroundColor_];

            v16 = *(v25 + v20);
            v17 = sub_257DE0CC0();
LABEL_18:
            v18 = v17;
            [v16 setImage:v17 forState:0];

            return;
          }
        }

        v13 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton;
        v14 = qword_281544A78;
        v15 = *(v25 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton);
        if (v14 != -1)
        {
          swift_once();
        }

        [v15 setBackgroundColor_];

        v16 = *(v25 + v13);
        v17 = sub_257DE0C70();
        goto LABEL_18;
      }
    }
  }
}

void sub_257D83838()
{
  v1 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
  v2 = [v1 contextMenuInteraction];

  [v2 dismissMenu];
  v3 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
  v4 = [v3 contextMenuInteraction];

  [v4 dismissMenu];
  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction);
  if (v5)
  {
    v7 = v5;
    v6 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
    [v6 removeInteraction_];

    [*(v0 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton) setAccessibilityCustomActions_];
  }
}

void sub_257D839A4()
{
  v0 = objc_opt_self();
  swift_beginAccess();
  sub_257BD2C2C(0, &qword_281543EF0);

  v1 = sub_257ECF7F0();

  v9 = v0;
  [v0 deactivateConstraints_];

  sub_257D8885C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
  swift_beginAccess();
  v10 = *v2;
  v3 = qword_2815447E0;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
  sub_257ECFD50();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v10 == 1)
  {

    MEMORY[0x28223BE20](v5);

    sub_257ECFD50();

    v6 = sub_257C592D0(2u, v11);

    if (!v6)
    {
      goto LABEL_15;
    }

LABEL_14:
    sub_257D88DE0();
    goto LABEL_17;
  }

  v7 = *(v11 + 16);

  if (v7 > 1)
  {
    if (v7 == 2)
    {
LABEL_15:
      sub_257D8A398();
      goto LABEL_17;
    }

    if (v7 == 3)
    {
      goto LABEL_14;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      sub_257D8C708();
    }
  }

  else
  {
    sub_257D8C2CC();
  }

LABEL_17:

  v8 = sub_257ECF7F0();

  [v9 activateConstraints_];
}

id sub_257D83D6C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ViewSnapshotsButton()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAlpha_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257D83E24()
{
  v0 = [objc_allocWithZone(type metadata accessor for MFHapticButton()) init];
  v17 = sub_257D841C4;
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_257D842B0;
  v16 = &block_descriptor_28;
  v1 = _Block_copy(&v13);
  v2 = v0;
  [v2 _setAccessibilityTraitsBlock_];
  _Block_release(v1);
  v17 = sub_257D842F0;
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_257D47A84;
  v16 = &block_descriptor_31;
  v3 = _Block_copy(&v13);
  [v2 _setAccessibilityIdentifierBlock_];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_257D98310;
  v18 = v4;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_257D84440;
  v16 = &block_descriptor_37;
  v5 = _Block_copy(&v13);

  [v2 _setAccessibilityPathBlock_];
  _Block_release(v5);
  v6 = v2;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setContentMode_];
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  [v6 setBackgroundColor_];
  v7 = [v6 layer];
  [v7 setCornerRadius_];

  v8 = [v6 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v8 setCornerCurve_];

  v9 = [v6 layer];
  [v9 setMasksToBounds_];

  v10 = v6;
  if (sub_257D84490())
  {
    sub_257BD2C2C(0, &qword_281543E70);
    v11 = sub_257ECF7F0();
  }

  else
  {
    v11 = 0;
  }

  [v10 setAccessibilityCustomActions_];

  return v10;
}

uint64_t sub_257D841C4()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = *MEMORY[0x277D76548];
  if (v2 == 1)
  {
    v1 = *MEMORY[0x277D76580];
    if (result)
    {
      if ((v1 & ~result) == 0)
      {
        return result;
      }
    }

    else if (!v1)
    {
      return 0;
    }

    return v1 | result;
  }

  return result;
}

uint64_t sub_257D842B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v3 = v1(v2);

  return v3;
}

uint64_t sub_257D842F0()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v1)
  {
    return 0x65736F6C43;
  }

  else
  {
    return 0x65727574706143;
  }
}

id sub_257D843CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong _accessibilityCirclePathBasedOnBoundsWidth];

  return v2;
}

id sub_257D84440(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v3 = v1(v2);

  return v3;
}

uint64_t sub_257D84490()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED9BF0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v7;
  v9 = objc_allocWithZone(MEMORY[0x277D75088]);
  v14[4] = sub_257D98318;
  v14[5] = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_257D96328;
  v14[3] = &block_descriptor_46_0;
  v10 = _Block_copy(v14);
  v11 = v0;
  sub_257ECC3F0();
  v12 = [v9 initWithName:v6 actionHandler:v10];

  _Block_release(v10);

  *(v1 + 32) = v12;
  return v1;
}

uint64_t sub_257D846D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction);
  if (v2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = v2;
      [v4 bounds];
    }

    else
    {
      v5 = v2;
    }

    UIRectGetCenter();
    [v5 _presentMenuAtLocation_];
  }

  return 1;
}

uint64_t sub_257D847B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong contextMenuInteraction];

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        [v3 bounds];
      }

      UIRectGetCenter();
      [v2 _presentMenuAtLocation_];
    }
  }

  return 1;
}

uint64_t sub_257D848BC()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v11[0])
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED9BF0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(MEMORY[0x277D75088]);
  v11[4] = sub_257D96E30;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_257D96328;
  v11[3] = &block_descriptor_19_0;
  v9 = _Block_copy(v11);
  sub_257ECC3F0();
  v10 = [v8 initWithName:v6 actionHandler:v9];

  _Block_release(v9);

  result = v1;
  *(v1 + 32) = v10;
  return result;
}

uint64_t sub_257D84B68()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 31;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong contextMenuInteraction];

    if (v6)
    {
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        [v7 bounds];
      }

      UIRectGetCenter();
      [v6 _presentMenuAtLocation_];
    }
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v9 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintShouldDisplay;
  swift_beginAccess();
  v13[0] = 0;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v10 = sub_257ECF110();
  MEMORY[0x28223BE20](v10);
  *(&v12 - 2) = v13;
  *(&v12 - 1) = v9;
  sub_257ECFD40();
  (*(v1 + 8))(v3, v0);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v13[1] = 1;
  sub_257ECC3F0();
  sub_257ECDD70();
  return 1;
}

id sub_257D84E54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v3 = v1(v2);

  if (v3)
  {
    sub_257BD2C2C(0, &qword_281543E70);
    v4 = sub_257ECF7F0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_257D84F00(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_257D84F64(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_257D84FC4()
{
  v0 = sub_257ECDAD0();
  MEMORY[0x28223BE20](v0 - 8);
  sub_257ECDAB0();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = v1;
  v5 = [v3 bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  sub_257ECF500();
  sub_257ECDA60();
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [objc_opt_self() systemYellowColor];
  [v4 setTintColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FC0);
  sub_257BD2D4C(&qword_27F8F8FC8, &qword_27F8F8FC0);
  sub_257ECDA80();
  v10 = sub_257ECDA40();
  sub_257ECDAC0();
  sub_257ECDAF0();

  v11 = sub_257ECDA70();
  [v11 setUserInteractionEnabled_];

  sub_257ECDAA0();
  sub_257ECDA90();

  return v4;
}

id sub_257D85250()
{
  v0 = sub_257ECDAD0();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v47 - v2;
  v4 = sub_257ECFFA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ED0030();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  sub_257ED0020();
  (*(v5 + 104))(v7, *MEMORY[0x277D74FD8], v4);
  sub_257ECFFB0();
  v13 = [objc_opt_self() configurationWithWeight_];
  v14 = sub_257ECF4C0();
  v15 = [objc_opt_self() systemImageNamed_];

  v48 = v13;
  if (v15)
  {
    v16 = [v15 imageWithConfiguration_];
  }

  sub_257ED0010();
  v17 = objc_opt_self();
  v18 = [v17 clearColor];
  sub_257ECFFF0();
  v19 = [v17 systemYellowColor];
  sub_257ED0000();
  (*(v9 + 16))(v3, v11, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  sub_257ED0050();
  v20 = v12;
  [v20 setNeedsUpdateConfiguration];
  v21 = v20;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = sub_257ECF4C0();
  v25 = sub_257ECF4C0();
  v47 = v8;
  v26 = v25;
  v27 = [v23 localizedStringForKey:v24 value:0 table:v25];

  if (!v27)
  {
    sub_257ECF500();
    v27 = sub_257ECF4C0();
  }

  [v21 setAccessibilityLabel_];

  sub_257ECDAC0();
  v28 = objc_allocWithZone(sub_257ECDB00());
  v29 = sub_257ECDAE0();
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  [v29 setClipsToBounds_];
  v30 = [v29 layer];
  [v30 setCornerCurve_];

  [v21 addSubview_];
  [v21 sendSubviewToBack_];
  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_257EDBE40;
  v33 = [v29 widthAnchor];
  v34 = [v21 widthAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v32 + 32) = v35;
  v36 = [v29 heightAnchor];
  v37 = [v21 heightAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v32 + 40) = v38;
  v39 = [v29 centerXAnchor];
  v40 = [v21 centerXAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v32 + 48) = v41;
  v42 = [v29 centerYAnchor];

  v43 = [v21 centerYAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v32 + 56) = v44;
  sub_257BD2C2C(0, &qword_281543EF0);
  v45 = sub_257ECF7F0();

  [v31 activateConstraints_];

  (*(v9 + 8))(v11, v47);
  return v21;
}

uint64_t sub_257D859BC()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount);
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount + 8) != 1)
  {
    return *v1;
  }

  if (qword_27F8F46D8 != -1)
  {
    swift_once();
  }

  v2 = sub_257C73204()[2];

  result = v2;
  *v1 = v2;
  v1[8] = 0;
  return result;
}

void sub_257D85A48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v61 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40);
  v62 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FD0);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - v10;
  v66.receiver = v1;
  v66.super_class = ObjectType;
  objc_msgSendSuper2(&v66, sel_viewDidLoad);
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  [v12 setClipsToBounds_];

  sub_257D8651C();
  sub_257C7C61C();
  v14 = [v1 view];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    v17 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
    [v16 addSubview_];

    v18 = v16;
    v19 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
    [v18 addSubview_];

    v20 = v18;
    v21 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
    [v20 addSubview_];

    v22 = v20;
    v23 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
    [v22 addSubview_];

    v24 = v22;
    v25 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton, sub_257D97C1C);
    [v24 addSubview_];

    v26 = v24;
    v27 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel, sub_257D98004);
    [v26 addSubview_];

    v28 = v26;
    v29 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton, sub_257D97914);
    [v28 addSubview_];

    v30 = v28;
    v31 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel, sub_257D97B28);
    [v30 addSubview_];

    v32 = v30;
    v33 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentButton, sub_257D975F4);
    [v32 addSubview_];

    v34 = v32;
    v35 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentLabel, sub_257D97820);
    [v34 addSubview_];
  }

  sub_257D839A4();
  v36 = [objc_allocWithZone(MEMORY[0x277D753B8]) initWithDelegate_];
  v37 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction;
  v38 = *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction] = v36;

  v39 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
  if (!*&v1[v37])
  {
    goto LABEL_14;
  }

  v40 = v39;
  v61 = v15;
  [v39 addInteraction_];

  v41 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton] setContextMenuInteractionEnabled_];
  v42 = [*&v1[v41] centerXAnchor];
  v43 = [v1 view];
  if (!v43)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = [v43 centerXAnchor];

  v46 = [v42 constraintEqualToAnchor_];
  v47 = *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotConstraint];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotConstraint] = v46;

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
  sub_257ECDD30();
  swift_endAccess();
  v48 = [objc_opt_self() mainRunLoop];
  aBlock[0] = v48;
  v49 = sub_257ED0080();
  (*(*(v49 - 8) + 56))(v5, 1, 1, v49);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40);
  sub_257BD2C74();
  sub_257ECDDF0();
  sub_257BE4084(v5, &unk_27F8F4DB0);

  (*(v62 + 8))(v8, v6);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_281544250, &qword_27F8F8FD0);
  v50 = v64;
  v51 = sub_257ECDE50();

  (*(v63 + 8))(v11, v50);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_freezeFrameModeSubscription] = v51;

  [*&v1[v41] addTarget:v1 action:sel_didTapSnapshotButton_ forControlEvents:64];
  v52 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
  [v52 addTarget:v1 action:sel_didTapDetectionModeButton_ forControlEvents:64];

  [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton] addTarget:v1 action:sel_didTapBackButton_ forControlEvents:64];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v53 = aBlock[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v54 = aBlock[0];
  v55 = [v1 view];
  if (!v55)
  {
    goto LABEL_16;
  }

  v56 = v55;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(aBlock[0]))
  {
    v57 = 7471104;
  }

  else
  {
    v57 = 0;
  }

  v58 = objc_opt_self();
  v59 = swift_allocObject();
  *(v59 + 16) = v53;
  *(v59 + 17) = v54;
  *(v59 + 24) = v1;
  aBlock[4] = sub_257D9A694;
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_178;
  v60 = _Block_copy(aBlock);
  v1;

  [v58 transitionWithView:v56 duration:v57 options:v60 animations:0 completion:0.0];
  _Block_release(v60);

  sub_257D87528();
}

void sub_257D8651C()
{
  sub_257D14A40();
  v1 = sub_257ECF4C0();
  v81 = objc_opt_self();
  v2 = [v81 _systemImageNamed_];

  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 configurationWithPointSize:4 weight:-1 scale:25.0];
    v6 = [v4 imageByApplyingSymbolConfiguration_];
  }

  sub_257BD2C2C(0, &unk_281543D90);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v8 = v0;
  v9 = sub_257ECFF90();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v9 setState_];
  [v9 setAttributes_];
  v10 = v9;
  v11 = sub_257ECF4C0();
  [v10 setAccessibilityIdentifier_];
  v80 = v10;

  sub_257D14A40();
  v12 = sub_257ECF4C0();
  v13 = [v81 systemImageNamed_];

  if (v13)
  {
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 configurationWithPointSize:4 weight:-1 scale:25.0];
    v17 = [v15 imageByApplyingSymbolConfiguration_];
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  v19 = v8;
  v20 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v20 setState_];
  [v20 setAttributes_];
  v21 = v20;
  v22 = sub_257ECF4C0();
  [v21 setAccessibilityIdentifier_];
  v79 = v21;

  sub_257D14A40();
  v23 = sub_257ECF4C0();
  v24 = [v81 systemImageNamed_];

  if (v24)
  {
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 configurationWithPointSize:4 weight:-1 scale:25.0];
    v28 = [v26 imageByApplyingSymbolConfiguration_];
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v19;
  v30 = v19;
  v31 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v31 setState_];
  [v31 setAttributes_];
  v32 = v31;
  v33 = sub_257ECF4C0();
  [v32 setAccessibilityIdentifier_];

  sub_257D14A40();
  v34 = sub_257ECF4C0();
  v35 = [v81 systemImageNamed_];

  if (v35)
  {
    v36 = objc_opt_self();
    v37 = v35;
    v38 = [v36 configurationWithPointSize:4 weight:-1 scale:25.0];
    v39 = [v37 imageByApplyingSymbolConfiguration_];
  }

  v78 = v32;
  v40 = swift_allocObject();
  *(v40 + 16) = v30;
  v41 = v30;
  v42 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v42 setState_];
  [v42 setAttributes_];
  v43 = v42;
  v44 = sub_257ECF4C0();
  [v43 setAccessibilityIdentifier_];

  sub_257D14A40();
  v45 = sub_257ECF4C0();
  v46 = [v81 systemImageNamed_];

  if (v46)
  {
    v47 = objc_opt_self();
    v48 = v46;
    v49 = [v47 configurationWithPointSize:4 weight:-1 scale:25.0];
    v50 = [v48 imageByApplyingSymbolConfiguration_];
  }

  v51 = swift_allocObject();
  *(v51 + 16) = v41;
  v52 = v41;
  v53 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v53 setState_];
  [v53 setAttributes_];
  v54 = v53;
  v55 = sub_257ECF4C0();
  [v54 setAccessibilityIdentifier_];

  sub_257D14A40();
  v56 = sub_257ECF4C0();
  v57 = [v81 systemImageNamed_];

  if (v57)
  {
    v58 = objc_opt_self();
    v59 = v57;
    v60 = [v58 configurationWithPointSize:4 weight:-1 scale:25.0];
    v61 = [v59 imageByApplyingSymbolConfiguration_];
  }

  v62 = swift_allocObject();
  *(v62 + 16) = v52;
  v52;
  v63 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v63 setState_];
  [v63 setAttributes_];
  v64 = v63;
  v65 = sub_257ECF4C0();
  [v64 setAccessibilityIdentifier_];

  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  v66 = byte_27F8F78A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v67 = swift_allocObject();
  if (v66 == 1)
  {
    *(v67 + 16) = xmmword_257EDED80;
    *(v67 + 32) = v64;
    *(v67 + 40) = v54;
    *(v67 + 48) = v78;
    *(v67 + 56) = v43;
    v68 = v80;
    *(v67 + 64) = v79;
    *(v67 + 72) = v80;
    v69 = v79;
    v70 = v78;
    v71 = v43;
  }

  else
  {
    *(v67 + 16) = xmmword_257EDED10;
    *(v67 + 32) = v64;
    *(v67 + 40) = v54;
    v68 = v80;
    *(v67 + 48) = v80;
  }

  v72 = v68;
  v73 = v54;
  v74 = v64;

  sub_257ED0660();
  sub_257BD2C2C(0, &unk_281543F80);

  sub_257BD2C2C(0, qword_281543E10);
  v77 = v67;
  v75 = sub_257ECFEA0();
  v76 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
  [v76 setMenu_];
}

void sub_257D872EC(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v4 = aBlock[0];
    v5 = [v3 view];
    if (v5)
    {
      v6 = v5;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (LOBYTE(aBlock[0]))
      {
        v7 = 7471104;
      }

      else
      {
        v7 = 0;
      }

      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      *(v9 + 17) = v4;
      *(v9 + 24) = v3;
      aBlock[4] = sub_257D9A694;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_258;
      v10 = _Block_copy(aBlock);
      v11 = v3;

      [v8 transitionWithView:v6 duration:v7 options:v10 animations:0 completion:0.0];
      _Block_release(v10);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257D87528()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v67 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v67 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v85 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v67 - v7;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  v86 = objc_opt_self();
  v9 = [v86 mainRunLoop];
  v87 = v9;
  v80 = sub_257ED0080();
  v10 = *(v80 - 8);
  v75 = *(v10 + 56);
  v72 = v10 + 56;
  v75(v2, 1, 1, v80);
  v81 = sub_257BD2C2C(0, &unk_281543D40);
  v82 = sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  v83 = sub_257BD2C74();
  sub_257ECDDF0();
  sub_257BE4084(v2, &unk_27F8F4DB0);

  v77 = *(v84 + 8);
  v84 += 8;
  v77(v5, v3);
  swift_allocObject();
  v11 = v73;
  swift_unknownObjectWeakInit();
  v78 = sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v12 = sub_257ECDE50();

  v13 = *(v85 + 8);
  v85 += 8;
  v79 = v13;
  v13(v8, v6);
  *(v11 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_freezeFrameReviewSubscription) = v12;

  v14 = v8;
  v76 = qword_281548348;
  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v15 = [v86 mainRunLoop];
  v87 = v15;
  v71 = v2;
  v75(v2, 1, 1, v80);
  v69 = v3;
  sub_257ECDDF0();
  sub_257BE4084(v2, &unk_27F8F4DB0);

  v77(v5, v3);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_257ECDE50();

  v79(v8, v6);
  *(v11 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_detectionModeSubscription) = v16;

  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v17 = [v86 mainRunLoop];
  v87 = v17;
  v18 = v71;
  v75(v71, 1, 1, v80);
  v19 = v69;
  sub_257ECDDF0();
  sub_257BE4084(v18, &unk_27F8F4DB0);

  v20 = v5;
  v21 = v77;
  v77(v5, v19);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = v6;
  v22 = v14;
  v23 = sub_257ECDE50();

  v79(v14, v6);
  *(v11 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_peopleDetectionSubscription) = v23;

  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v24 = [v86 mainRunLoop];
  v87 = v24;
  v25 = v71;
  v26 = v75;
  v75(v71, 1, 1, v80);
  v27 = v69;
  v68 = v20;
  sub_257ECDDF0();
  sub_257BE4084(v25, &unk_27F8F4DB0);

  v28 = v20;
  v29 = v27;
  v21(v28, v27);
  swift_allocObject();
  v30 = v73;
  swift_unknownObjectWeakInit();
  v31 = v70;
  v32 = sub_257ECDE50();

  v33 = v79;
  v79(v22, v31);
  *(v30 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_doorDetectionSubscription) = v32;

  swift_beginAccess();
  v34 = v68;
  sub_257ECDD30();
  swift_endAccess();
  v35 = [v86 mainRunLoop];
  v87 = v35;
  v36 = v71;
  v26(v71, 1, 1, v80);
  sub_257ECDDF0();
  sub_257BE4084(v36, &unk_27F8F4DB0);

  v77(v34, v29);
  swift_allocObject();
  v37 = v73;
  swift_unknownObjectWeakInit();
  v38 = v22;
  v39 = sub_257ECDE50();

  v33(v22, v31);
  *(v37 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_objectUnderstandingSubscription) = v39;

  swift_beginAccess();
  v40 = v68;
  sub_257ECDD30();
  swift_endAccess();
  v41 = [v86 mainRunLoop];
  v87 = v41;
  v42 = v71;
  v43 = v80;
  v75(v71, 1, 1, v80);
  v44 = v69;
  sub_257ECDDF0();
  sub_257BE4084(v42, &unk_27F8F4DB0);

  v77(v40, v44);
  swift_allocObject();
  v45 = v73;
  swift_unknownObjectWeakInit();
  v46 = v70;
  v47 = sub_257ECDE50();

  v79(v38, v46);
  *(v45 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_textDetectionSubscription) = v47;

  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v48 = [v86 mainRunLoop];
  v87 = v48;
  v49 = v71;
  v50 = v43;
  v51 = v75;
  v75(v71, 1, 1, v50);
  v52 = v69;
  sub_257ECDDF0();
  sub_257BE4084(v49, &unk_27F8F4DB0);

  v53 = v52;
  v77(v40, v52);
  swift_allocObject();
  v54 = v73;
  swift_unknownObjectWeakInit();
  v55 = v70;
  v56 = sub_257ECDE50();

  v79(v38, v55);
  *(v54 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_imageCaptionDetectionSubscription) = v56;

  swift_beginAccess();
  v57 = v68;
  sub_257ECDD30();
  swift_endAccess();
  v58 = [v86 mainRunLoop];
  v87 = v58;
  v59 = v71;
  v51(v71, 1, 1, v80);
  v60 = v53;
  sub_257ECDDF0();
  sub_257BE4084(v59, &unk_27F8F4DB0);

  v77(v57, v53);
  swift_allocObject();
  v61 = v73;
  swift_unknownObjectWeakInit();
  v62 = v70;
  v63 = sub_257ECDE50();

  v79(v38, v62);
  *(v61 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_pointSpeakSubscription) = v63;

  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v64 = [v86 mainRunLoop];
  v87 = v64;
  v75(v59, 1, 1, v80);
  sub_257ECDDF0();
  sub_257BE4084(v59, &unk_27F8F4DB0);

  v77(v57, v60);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = sub_257ECDE50();

  v79(v38, v62);
  *(v61 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeAvailabilitySubscription) = v65;

  v66 = [objc_opt_self() defaultCenter];
  if (qword_27F8F4680 != -1)
  {
    swift_once();
  }

  [v66 addObserver:v61 selector:? name:? object:?];
}

void sub_257D88594(char a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v3 = v11[0];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v11[0]))
    {
      v6 = 7471104;
    }

    else
    {
      v6 = 0;
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v11[0];
    *(v8 + 17) = v3;
    *(v8 + 24) = v1;
    v11[4] = sub_257D9A694;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_257D231C0;
    v11[3] = &block_descriptor_168;
    v9 = _Block_copy(v11);
    v10 = v1;

    [v7 transitionWithView:v5 duration:v6 options:v9 animations:0 completion:0.0];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_257D8885C()
{
  v1 = [v0 view];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
  swift_beginAccess();
  v24 = *v2;
  v3 = qword_2815447E0;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
  sub_257ECFD50();

  if (!sub_257C592D0(0, v25))
  {
    v9 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
    [v9 removeFromSuperview];

    v8 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
    [v8 removeFromSuperview];
LABEL_9:

    if (sub_257C592D0(1u, v25))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v1)
  {
    v5 = v1;
    v6 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
    [v5 addSubview_];

    v7 = v5;
    v8 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
    [v7 addSubview_];

    goto LABEL_9;
  }

  if (!sub_257C592D0(1u, v25))
  {
LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v24 != 1)
    {
      v16 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
      [v16 removeFromSuperview];

      v17 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);
      [v17 removeFromSuperview];

      v15 = sub_257D83D6C();
      [v15 removeFromSuperview];
LABEL_14:

      goto LABEL_15;
    }

LABEL_11:
    if (!v1)
    {
      goto LABEL_15;
    }

    v10 = v1;
    v11 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
    [v10 addSubview_];

    v12 = v10;
    v13 = sub_257D83D6C();
    [v12 addSubview_];

    v14 = v12;
    v15 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);
    [v14 addSubview_];

    goto LABEL_14;
  }

LABEL_15:
  v18 = sub_257C592D0(2u, v25);

  if (v18)
  {
    if (!v1)
    {
      return;
    }

    v19 = v1;
    v20 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
    [v19 addSubview_];

    v21 = v19;
    v22 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);
    [v21 addSubview_];

    v1 = v21;
  }

  else
  {
    v23 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
    [v23 removeFromSuperview];

    v21 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);
    [v21 removeFromSuperview];
  }
}

void sub_257D88DE0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v186 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v182 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v184 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v190)
  {
    sub_257D98414(v189, v190, v191, v192);
    v6 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentButton, sub_257D975F4);

    v7 = v6;
    v8 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentLabel;
    v9 = sub_257D97820;
LABEL_7:
    v11 = sub_257D84F64(v8, v9);

    v188 = v11;
    v12 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);

    v13 = v12;
    v14 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);

    v15 = v14;
    v16 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);

    v17 = v16;
    v18 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);

    v187 = v18;
    v19 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton, sub_257D97914);

    v183 = v19;
    v20 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel;
    v21 = sub_257D97B28;
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v189 == 1)
  {
    v10 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton, sub_257D97C1C);

    v7 = v10;
    v8 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel;
    v9 = sub_257D98004;
    goto LABEL_7;
  }

  v172 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);

  v7 = v172;
  v173 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);

  v188 = v173;
  v174 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);

  v13 = v174;
  v175 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);

  v15 = v175;
  v176 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);

  v17 = v176;
  v177 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);

  v187 = v177;
  v178 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);

  v183 = v178;
  v20 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel;
  v21 = sub_257D98320;
LABEL_8:
  v22 = sub_257D84F64(v20, v21);

  v181 = v22;
  v23 = [v0 view];
  if (!v23)
  {
    __break(1u);
    goto LABEL_27;
  }

  v24 = v23;
  v180 = v15;
  [v23 frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v193.origin.x = v26;
  v193.origin.y = v28;
  v193.size.width = v30;
  v193.size.height = v32;
  Width = CGRectGetWidth(v193);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_257EE81E0;
  v35 = [v7 topAnchor];
  v36 = [v0 view];
  if (!v36)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v37 = v36;
  v38 = [v36 topAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v34 + 32) = v39;
  v40 = [v7 widthAnchor];
  v41 = [v40 constraintEqualToConstant_];

  *(v34 + 40) = v41;
  v42 = [v7 heightAnchor];
  v43 = [v42 constraintEqualToConstant_];

  *(v34 + 48) = v43;
  v185 = v7;
  v44 = [v7 leadingAnchor];
  v45 = [v0 view];
  if (!v45)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v46 = v45;
  v47 = [v45 leadingAnchor];

  v48 = [v44 constraintEqualToAnchor_];
  *(v34 + 56) = v48;
  v49 = [v188 leadingAnchor];
  v50 = [v0 view];
  if (!v50)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v51 = v50;
  v179 = v17;
  v52 = [v50 leadingAnchor];

  v53 = [v49 constraintGreaterThanOrEqualToAnchor_];
  *(v34 + 64) = v53;
  v54 = [v188 trailingAnchor];
  v55 = [v0 view];
  if (!v55)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v56 = v55;
  v57 = [v55 trailingAnchor];

  v58 = [v54 constraintLessThanOrEqualToAnchor_];
  *(v34 + 72) = v58;
  v59 = [v188 topAnchor];

  v60 = [v7 bottomAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:6.0];

  *(v34 + 80) = v61;
  v62 = [v13 topAnchor];
  v63 = [v0 view];
  if (!v63)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v64 = v63;
  v65 = (Width + -272.0) / 3.0;
  v66 = [v63 topAnchor];

  v67 = [v62 constraintEqualToAnchor_];
  *(v34 + 88) = v67;
  v68 = [v13 widthAnchor];
  v69 = [v68 constraintEqualToConstant_];

  *(v34 + 96) = v69;
  v70 = [v13 heightAnchor];
  v71 = [v70 constraintEqualToConstant_];

  *(v34 + 104) = v71;
  v72 = [v13 leadingAnchor];
  v73 = [v7 trailingAnchor];

  v74 = [v72 constraintEqualToAnchor:v73 constant:v65];
  *(v34 + 112) = v74;
  v75 = [v15 centerXAnchor];
  v76 = [v13 centerXAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v34 + 120) = v77;
  v78 = [v15 topAnchor];

  v79 = [v13 bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:6.0];

  *(v34 + 128) = v80;
  v81 = [v17 topAnchor];
  v82 = [v0 view];
  if (!v82)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v83 = v82;
  v84 = [v82 topAnchor];

  v85 = [v81 constraintEqualToAnchor_];
  *(v34 + 136) = v85;
  v86 = [v17 widthAnchor];
  v87 = [v86 constraintEqualToConstant_];

  *(v34 + 144) = v87;
  v88 = [v17 heightAnchor];
  v89 = [v88 constraintEqualToConstant_];

  *(v34 + 152) = v89;
  v90 = [v17 trailingAnchor];
  v91 = [v183 leadingAnchor];
  v92 = [v90 constraintEqualToAnchor:v91 constant:-v65];

  *(v34 + 160) = v92;
  v93 = [v187 centerXAnchor];
  v94 = [v17 centerXAnchor];
  v95 = [v93 constraintEqualToAnchor_];

  *(v34 + 168) = v95;
  v96 = [v187 topAnchor];

  v97 = [v17 bottomAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:6.0];

  *(v34 + 176) = v98;
  v99 = [v183 topAnchor];
  v100 = [v0 view];
  if (!v100)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v101 = v100;
  v102 = [v100 topAnchor];

  v103 = [v99 constraintEqualToAnchor_];
  *(v34 + 184) = v103;
  v104 = [v183 widthAnchor];
  v105 = [v104 constraintEqualToConstant_];

  *(v34 + 192) = v105;
  v106 = [v183 heightAnchor];
  v107 = [v106 constraintEqualToConstant_];

  *(v34 + 200) = v107;
  v108 = [v183 trailingAnchor];
  v109 = [v0 view];
  if (!v109)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v110 = v109;
  v111 = [v109 trailingAnchor];

  v112 = [v108 constraintEqualToAnchor_];
  *(v34 + 208) = v112;
  v113 = [v181 leadingAnchor];
  v114 = [v0 view];
  if (!v114)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v115 = v114;
  v116 = [v114 leadingAnchor];

  v117 = [v113 constraintGreaterThanOrEqualToAnchor_];
  *(v34 + 216) = v117;
  v118 = [v181 trailingAnchor];
  v119 = [v0 view];
  if (!v119)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v120 = v119;
  v121 = [v119 trailingAnchor];

  v122 = [v118 constraintLessThanOrEqualToAnchor_];
  *(v34 + 224) = v122;
  v123 = [v181 topAnchor];

  v124 = [v183 bottomAnchor];
  v125 = [v123 constraintEqualToAnchor:v124 constant:6.0];

  *(v34 + 232) = v125;
  v126 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_cameraTrayLayoutConstraints;
  swift_beginAccess();
  *&v0[v126] = v34;

  if (sub_257D96E38())
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257EDED80;
    v128 = [v188 centerXAnchor];
    v129 = [v7 centerXAnchor];
    v130 = [v128 constraintEqualToAnchor_];

    *(inited + 32) = v130;
    v131 = [v181 centerXAnchor];
    v132 = [v183 centerXAnchor];
    v133 = [v131 constraintEqualToAnchor_];

    *(inited + 40) = v133;
    v134 = v15;
    v135 = [v15 leadingAnchor];
    v136 = v187;
    v137 = v179;
    v138 = v13;
    v139 = [v13 leadingAnchor];
    v140 = [v135 constraintGreaterThanOrEqualToAnchor_];

    *(inited + 48) = v140;
    v141 = [v180 trailingAnchor];
    v142 = [v13 trailingAnchor];
    v143 = [v141 constraintLessThanOrEqualToAnchor_];

    *(inited + 56) = v143;
    v144 = [v187 leadingAnchor];
    v145 = v185;
    v146 = [v179 leadingAnchor];
    v147 = [v144 constraintGreaterThanOrEqualToAnchor_];

    *(inited + 64) = v147;
    v148 = [v187 trailingAnchor];
    v149 = [v179 trailingAnchor];
    v150 = [v148 constraintLessThanOrEqualToAnchor_];

    *(inited + 72) = v150;
    swift_beginAccess();
    sub_257EB0EBC(inited);
    swift_endAccess();
    v151 = v183;
LABEL_24:

    return;
  }

  v152 = swift_initStackObject();
  *(v152 + 16) = xmmword_257EE81F0;
  v153 = [v188 leadingAnchor];
  v154 = [v0 view];
  if (!v154)
  {
    goto LABEL_37;
  }

  v155 = v154;
  v156 = [v154 leadingAnchor];

  v157 = [v153 constraintEqualToAnchor_];
  *(v152 + 32) = v157;
  v158 = [v181 trailingAnchor];
  v159 = [v0 view];
  if (v159)
  {
    v160 = v159;
    v161 = [v159 trailingAnchor];

    v162 = [v158 constraintEqualToAnchor_];
    *(v152 + 40) = v162;
    v134 = v15;
    v163 = [v15 leadingAnchor];
    v164 = [v188 trailingAnchor];
    v165 = [v163 constraintGreaterThanOrEqualToAnchor_];

    *(v152 + 48) = v165;
    v166 = [v187 leadingAnchor];
    v167 = [v15 trailingAnchor];
    v168 = [v166 constraintGreaterThanOrEqualToAnchor_];

    *(v152 + 56) = v168;
    v169 = [v187 trailingAnchor];
    v170 = [v181 leadingAnchor];
    v171 = [v169 constraintLessThanOrEqualToAnchor_];

    *(v152 + 64) = v171;
    swift_beginAccess();
    sub_257EB0EBC(v152);
    swift_endAccess();
    v138 = v13;
    v136 = v187;
    v137 = v179;
    v151 = v183;
    v145 = v185;
    goto LABEL_24;
  }

LABEL_38:
  __break(1u);
}

void sub_257D8A398()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v236)
  {
    sub_257D98414(v235, v236, v237, v238);
    v6 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentButton, sub_257D975F4);

    v7 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentLabel;
    v8 = sub_257D97820;
LABEL_7:
    v9 = sub_257D84F64(v7, v8);

    v10 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
    v232 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v235 == 1)
  {
    v6 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton, sub_257D97C1C);

    v7 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel;
    v8 = sub_257D98004;
    goto LABEL_7;
  }

  v223 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
  swift_beginAccess();
  v234 = *v223;
  v224 = qword_2815447E0;

  if (v224 != -1)
  {
    v225 = swift_once();
  }

  MEMORY[0x28223BE20](v225);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
  sub_257ECFD50();

  if (sub_257C592D0(0, v233))
  {
    v226 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);

    v9 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
    v227 = sub_257C592D0(1u, v233);

    if (v227)
    {
      v10 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);

      v228 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel;
      v229 = sub_257D9740C;
    }

    else
    {
      v10 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);

      v228 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel;
      v229 = sub_257D97500;
    }

    v232 = sub_257D84F64(v228, v229);
    v6 = v226;
  }

  else
  {

    v6 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);

    v9 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);
    v10 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);

    v232 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);
  }

LABEL_8:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257EE8200;
  v12 = [v6 topAnchor];
  v13 = [v1 view];
  v14 = v13;
  v15 = v6;
  v230 = v6;
  v231 = v9;
  if (v234 == 1)
  {
    if (v13)
    {
      v16 = [v13 topAnchor];

      v17 = [v12 constraintEqualToAnchor_];
      *(v11 + 32) = v17;
      v18 = [v15 widthAnchor];
      v19 = [v18 constraintEqualToConstant_];

      *(v11 + 40) = v19;
      v20 = [v15 heightAnchor];
      v21 = [v20 constraintEqualToConstant_];

      *(v11 + 48) = v21;
      v22 = [v15 leadingAnchor];
      v23 = [v1 view];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 leadingAnchor];

        v26 = [v22 constraintEqualToAnchor_];
        *(v11 + 56) = v26;
        v27 = [v9 leadingAnchor];
        v28 = [v1 view];
        if (v28)
        {
          v29 = v28;
          v30 = [v28 leadingAnchor];

          v31 = [v27 constraintGreaterThanOrEqualToAnchor_];
          *(v11 + 64) = v31;
          v32 = [v9 trailingAnchor];
          v33 = [v1 view];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 trailingAnchor];

            v36 = [v32 constraintLessThanOrEqualToAnchor_];
            *(v11 + 72) = v36;
            v37 = [v9 topAnchor];
            v38 = [v15 bottomAnchor];
            v39 = [v37 constraintEqualToAnchor:v38 constant:6.0];

            *(v11 + 80) = v39;
            v40 = [v10 &selRef_dataForKey_];
            v41 = [v1 view];
            if (v41)
            {
              v42 = v41;
              v43 = [v41 &selRef_dataForKey_];

              v44 = [v40 constraintEqualToAnchor_];
              *(v11 + 88) = v44;
              v45 = [v10 widthAnchor];
              v46 = [v45 constraintEqualToConstant_];

              *(v11 + 96) = v46;
              v47 = [v10 heightAnchor];
              v48 = [v47 constraintEqualToConstant_];

              *(v11 + 104) = v48;
              v49 = [v10 centerXAnchor];
              v50 = [v1 view];
              if (v50)
              {
                v51 = v50;
                v52 = [v50 centerXAnchor];

                v53 = [v49 constraintEqualToAnchor_];
                *(v11 + 112) = v53;
                v54 = [v232 centerXAnchor];
                v55 = [v10 centerXAnchor];
                v56 = [v54 constraintEqualToAnchor_];

                *(v11 + 120) = v56;
                v57 = [v232 leadingAnchor];
                v58 = [v1 view];
                if (v58)
                {
                  v59 = v58;
                  v60 = [v58 leadingAnchor];

                  v61 = [v57 constraintGreaterThanOrEqualToAnchor_];
                  *(v11 + 128) = v61;
                  v62 = [v232 trailingAnchor];
                  v63 = [v1 view];
                  if (v63)
                  {
                    v64 = v63;
                    v65 = [v63 trailingAnchor];

                    v66 = [v62 constraintLessThanOrEqualToAnchor_];
                    *(v11 + 136) = v66;
                    v67 = [v232 topAnchor];
                    v68 = [v10 bottomAnchor];
                    v69 = [v67 constraintEqualToAnchor:v68 constant:6.0];

                    *(v11 + 144) = v69;
                    v70 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton, sub_257D97914);
                    v71 = [v70 &selRef_dataForKey_];

                    v72 = [v1 view];
                    if (v72)
                    {
                      v73 = v72;
                      v74 = [v72 &selRef_dataForKey_];

                      v75 = [v71 constraintEqualToAnchor_];
                      *(v11 + 152) = v75;
                      v76 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton;
                      v77 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton] widthAnchor];
                      v78 = [v77 constraintEqualToConstant_];

                      *(v11 + 160) = v78;
                      v79 = [*&v1[v76] heightAnchor];
                      v80 = [v79 constraintEqualToConstant_];

                      *(v11 + 168) = v80;
                      v81 = [*&v1[v76] &selRef_setImage_forState_ + 4];
                      v82 = [v1 view];
                      if (v82)
                      {
                        v83 = v82;
                        v84 = [v82 &selRef_setImage_forState_ + 4];

                        v85 = [v81 constraintEqualToAnchor_];
                        *(v11 + 176) = v85;
                        v86 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel, sub_257D97B28);
                        v87 = [v86 leadingAnchor];

                        v88 = [v1 view];
                        if (v88)
                        {
                          v89 = v88;
                          v90 = [v88 leadingAnchor];

                          v91 = [v87 constraintGreaterThanOrEqualToAnchor_];
                          *(v11 + 184) = v91;
                          v92 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel;
                          v93 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel] &selRef_setImage_forState_ + 4];
                          v94 = [v1 view];
                          if (v94)
                          {
                            v95 = v94;
                            v96 = [v94 &selRef_setImage_forState_ + 4];

                            v97 = [v93 constraintLessThanOrEqualToAnchor_];
                            *(v11 + 192) = v97;
                            v98 = [*&v1[v92] topAnchor];
                            v99 = [*&v1[v76] bottomAnchor];
                            v100 = [v98 constraintEqualToAnchor:v99 constant:6.0];

                            *(v11 + 200) = v100;
                            v101 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_cameraTrayLayoutConstraints;
                            swift_beginAccess();
                            *&v1[v101] = v11;

                            if (sub_257D96E38())
                            {
                              v102 = [v231 centerXAnchor];
                              v103 = [v230 centerXAnchor];
                              v104 = &selRef_imageByApplyingSymbolConfiguration_;
                              v105 = [v102 constraintEqualToAnchor_];

                              v106 = swift_beginAccess();
                              MEMORY[0x259C72300](v106);
                              if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                              {
                                sub_257ECF830();
                                v104 = &selRef_imageByApplyingSymbolConfiguration_;
                              }

LABEL_40:
                              sub_257ECF860();
                              swift_endAccess();
                              v194 = [*&v1[v92] centerXAnchor];
                              v195 = [*&v1[v76] centerXAnchor];
                              v196 = [v194 v104[204]];

                              v197 = swift_beginAccess();
                              MEMORY[0x259C72300](v197);
                              if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                              {
                                sub_257ECF830();
                              }

                              sub_257ECF860();
                              swift_endAccess();
                              v198 = v230;
                              goto LABEL_55;
                            }

                            v199 = [v231 leadingAnchor];
                            v200 = [v1 view];
                            if (v200)
                            {
                              v201 = v200;
                              v202 = [v200 leadingAnchor];

                              v203 = [v199 constraintEqualToAnchor_];
                              v204 = swift_beginAccess();
                              MEMORY[0x259C72300](v204);
                              if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                              {
                                sub_257ECF830();
                              }

                              sub_257ECF860();
                              swift_endAccess();
                              v205 = [*&v1[v92] trailingAnchor];
                              v206 = [v1 view];
                              if (v206)
                              {
                                v207 = v206;
                                v208 = [v206 trailingAnchor];

                                v209 = [v205 constraintEqualToAnchor_];
                                v210 = swift_beginAccess();
                                MEMORY[0x259C72300](v210);
                                v198 = v230;
                                if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                                {
LABEL_54:
                                  sub_257ECF860();
                                  swift_endAccess();
LABEL_55:

                                  return;
                                }

LABEL_48:
                                sub_257ECF830();
                                goto LABEL_54;
                              }

                              goto LABEL_90;
                            }

                            goto LABEL_88;
                          }

                          goto LABEL_86;
                        }

                        goto LABEL_84;
                      }

                      goto LABEL_82;
                    }

                    goto LABEL_80;
                  }

                  goto LABEL_78;
                }

                goto LABEL_76;
              }

              goto LABEL_74;
            }

            goto LABEL_72;
          }

          goto LABEL_70;
        }

        goto LABEL_68;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v13)
  {
    goto LABEL_65;
  }

  v107 = [v13 topAnchor];

  v108 = [v12 constraintEqualToAnchor_];
  *(v11 + 32) = v108;
  v109 = [v15 widthAnchor];
  v110 = [v109 constraintEqualToConstant_];

  *(v11 + 40) = v110;
  v111 = [v15 heightAnchor];
  v112 = [v111 constraintEqualToConstant_];

  *(v11 + 48) = v112;
  v113 = [v15 leadingAnchor];
  v114 = [v1 view];
  if (!v114)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v115 = v114;
  v116 = [v114 leadingAnchor];

  v117 = [v113 constraintEqualToAnchor_];
  *(v11 + 56) = v117;
  v118 = [v9 leadingAnchor];
  v119 = [v1 view];
  if (!v119)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v120 = v119;
  v121 = [v119 leadingAnchor];

  v122 = [v118 constraintGreaterThanOrEqualToAnchor_];
  *(v11 + 64) = v122;
  v123 = [v9 trailingAnchor];
  v124 = [v1 view];
  if (!v124)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v125 = v124;
  v126 = [v124 trailingAnchor];

  v127 = [v123 constraintLessThanOrEqualToAnchor_];
  *(v11 + 72) = v127;
  v128 = [v9 topAnchor];
  v129 = [v15 bottomAnchor];
  v130 = [v128 constraintEqualToAnchor:v129 constant:6.0];

  *(v11 + 80) = v130;
  v131 = [v10 &selRef_dataForKey_];
  v132 = [v1 view];
  if (!v132)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v133 = v132;
  v134 = [v132 &selRef_dataForKey_];

  v135 = [v131 constraintEqualToAnchor_];
  *(v11 + 88) = v135;
  v136 = [v10 widthAnchor];
  v137 = [v136 constraintEqualToConstant_];

  *(v11 + 96) = v137;
  v138 = [v10 heightAnchor];
  v139 = [v138 constraintEqualToConstant_];

  *(v11 + 104) = v139;
  v140 = [v10 centerXAnchor];
  v141 = [v1 view];
  if (!v141)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v142 = v141;
  v143 = [v141 centerXAnchor];

  v144 = [v140 constraintEqualToAnchor_];
  *(v11 + 112) = v144;
  v145 = [v232 centerXAnchor];
  v146 = [v10 centerXAnchor];
  v147 = [v145 constraintEqualToAnchor_];

  *(v11 + 120) = v147;
  v148 = [v232 leadingAnchor];
  v149 = [v1 view];
  if (!v149)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v150 = v149;
  v151 = [v149 leadingAnchor];

  v152 = [v148 constraintGreaterThanOrEqualToAnchor_];
  *(v11 + 128) = v152;
  v153 = [v232 trailingAnchor];
  v154 = [v1 &off_279854AF8];
  if (!v154)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v155 = v154;
  v156 = [v154 trailingAnchor];

  v157 = [v153 constraintLessThanOrEqualToAnchor_];
  *(v11 + 136) = v157;
  v158 = [v232 topAnchor];
  v159 = [v10 bottomAnchor];
  v160 = [v158 constraintEqualToAnchor:v159 constant:6.0];

  *(v11 + 144) = v160;
  v161 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
  v162 = [v161 &selRef_dataForKey_];

  v163 = [v1 &off_279854AF8];
  if (!v163)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v164 = v163;
  v165 = [v163 &selRef_dataForKey_];

  v166 = [v162 constraintEqualToAnchor_];
  *(v11 + 152) = v166;
  v76 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton;
  v167 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton] widthAnchor];
  v168 = [v167 constraintEqualToConstant_];

  *(v11 + 160) = v168;
  v169 = [*&v1[v76] heightAnchor];
  v170 = [v169 constraintEqualToConstant_];

  *(v11 + 168) = v170;
  v171 = [*&v1[v76] trailingAnchor];
  v172 = [v1 &off_279854AF8];
  if (!v172)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v173 = v172;
  v174 = [v172 trailingAnchor];

  v175 = [v171 constraintEqualToAnchor_];
  *(v11 + 176) = v175;
  v176 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
  v177 = [v176 leadingAnchor];

  v178 = [v1 &off_279854AF8];
  if (!v178)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v179 = v178;
  v180 = [v178 leadingAnchor];

  v181 = [v177 constraintGreaterThanOrEqualToAnchor_];
  *(v11 + 184) = v181;
  v92 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel;
  v182 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel] trailingAnchor];
  v183 = [v1 &off_279854AF8];
  if (!v183)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v184 = v183;
  v185 = [v183 trailingAnchor];

  v186 = [v182 constraintLessThanOrEqualToAnchor_];
  *(v11 + 192) = v186;
  v187 = [*&v1[v92] topAnchor];
  v188 = [*&v1[v76] bottomAnchor];
  v189 = [v187 constraintEqualToAnchor:v188 constant:6.0];

  *(v11 + 200) = v189;
  v101 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_cameraTrayLayoutConstraints;
  swift_beginAccess();
  *&v1[v101] = v11;

  if (sub_257D96E38())
  {
    v190 = [v231 centerXAnchor];
    v191 = [v230 centerXAnchor];
    v104 = &selRef_imageByApplyingSymbolConfiguration_;
    v192 = [v190 constraintEqualToAnchor_];

    v193 = swift_beginAccess();
    MEMORY[0x259C72300](v193);
    if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
      v104 = &selRef_imageByApplyingSymbolConfiguration_;
    }

    goto LABEL_40;
  }

  v211 = [v231 leadingAnchor];
  v212 = [v1 view];
  if (!v212)
  {
    goto LABEL_89;
  }

  v213 = v212;
  v214 = [v212 leadingAnchor];

  v215 = [v211 constraintEqualToAnchor_];
  v216 = swift_beginAccess();
  MEMORY[0x259C72300](v216);
  if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_257ECF830();
  }

  sub_257ECF860();
  swift_endAccess();
  v217 = [*&v1[v92] trailingAnchor];
  v218 = [v1 view];
  if (v218)
  {
    v219 = v218;
    v220 = [v218 trailingAnchor];

    v221 = [v217 constraintEqualToAnchor_];
    v222 = swift_beginAccess();
    MEMORY[0x259C72300](v222);
    v198 = v230;
    if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_91:
  __break(1u);
}

id sub_257D8C2CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257EE8210;
  v2 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
  v3 = [v2 topAnchor];

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = [result topAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton;
  v9 = [*&v0[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton] widthAnchor];
  v10 = [v9 constraintEqualToConstant_];

  *(v1 + 40) = v10;
  v11 = [*&v0[v8] heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v1 + 48) = v12;
  v13 = [*&v0[v8] centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v14 = result;
  v15 = [result centerXAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v1 + 56) = v16;
  v17 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
  v18 = [v17 centerXAnchor];

  v19 = [*&v0[v8] centerXAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v1 + 64) = v20;
  v21 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel;
  v22 = [*&v0[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel] leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v23 = result;
  v24 = [result leadingAnchor];

  v25 = [v22 constraintGreaterThanOrEqualToAnchor_];
  *(v1 + 72) = v25;
  v26 = [*&v0[v21] trailingAnchor];
  result = [v0 view];
  if (result)
  {
    v27 = result;
    v28 = [result trailingAnchor];

    v29 = [v26 constraintLessThanOrEqualToAnchor_];
    *(v1 + 80) = v29;
    v30 = [*&v0[v21] topAnchor];
    v31 = [*&v0[v8] bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:6.0];

    *(v1 + 88) = v32;
    v33 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_cameraTrayLayoutConstraints;
    swift_beginAccess();
    *&v0[v33] = v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_257D8C708()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_281544FE0 != -1)
  {
    v94 = v3;
    swift_once();
    v3 = v94;
  }

  v4 = v3;
  swift_beginAccess();
  v5 = qword_2815447E0;

  if (v5 != -1)
  {
    v6 = swift_once();
  }

  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
  sub_257ECFD50();

  if (sub_257C592D0(0, v96))
  {
    v7 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);

    v8 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
    v2 = v7;
    v9 = v4;
  }

  else
  {
    v9 = v4;
    if (sub_257C592D0(1u, v96))
    {
      v10 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);

      v11 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel;
      v12 = sub_257D9740C;
    }

    else
    {
      if (!sub_257C592D0(2u, v96))
      {
        goto LABEL_13;
      }

      v10 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);

      v11 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel;
      v12 = sub_257D97500;
    }

    v8 = sub_257D84F64(v11, v12);
    v2 = v10;
  }

  v9 = v8;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257EE8220;
  v14 = [v2 topAnchor];
  v15 = [v1 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_36;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v13 + 32) = v18;
  v19 = [v2 widthAnchor];
  v20 = [v19 constraintEqualToConstant_];

  *(v13 + 40) = v20;
  v21 = [v2 heightAnchor];
  v22 = [v21 constraintEqualToConstant_];

  *(v13 + 48) = v22;
  v23 = [v2 leadingAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v13 + 56) = v27;
  v28 = [v9 leadingAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v30 = v29;
  v31 = [v29 leadingAnchor];

  v32 = [v28 constraintGreaterThanOrEqualToAnchor_];
  *(v13 + 64) = v32;
  v33 = [v9 trailingAnchor];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v35 = v34;
  v36 = [v34 trailingAnchor];

  v37 = [v33 constraintLessThanOrEqualToAnchor_];
  *(v13 + 72) = v37;
  v95 = v9;
  v38 = [v9 topAnchor];
  v39 = [v2 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:6.0];

  *(v13 + 80) = v40;
  v41 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
  v42 = [v41 topAnchor];

  v43 = [v1 view];
  if (!v43)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v44 = v43;
  v45 = [v43 topAnchor];

  v46 = [v42 constraintEqualToAnchor_];
  *(v13 + 88) = v46;
  v47 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton;
  v48 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton] widthAnchor];
  v49 = [v48 constraintEqualToConstant_];

  *(v13 + 96) = v49;
  v50 = [*&v1[v47] heightAnchor];
  v51 = [v50 constraintEqualToConstant_];

  *(v13 + 104) = v51;
  v52 = [*&v1[v47] trailingAnchor];
  v53 = [v1 view];
  if (!v53)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v54 = v53;
  v55 = [v53 trailingAnchor];

  v56 = [v52 constraintEqualToAnchor_];
  *(v13 + 112) = v56;
  v57 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
  v58 = [v57 leadingAnchor];

  v59 = [v1 view];
  if (!v59)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v60 = v59;
  v61 = [v59 leadingAnchor];

  v62 = [v58 constraintGreaterThanOrEqualToAnchor_];
  *(v13 + 120) = v62;
  v63 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel;
  v64 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel] trailingAnchor];
  v65 = [v1 &off_279854AF8];
  if (!v65)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v66 = v65;
  v67 = [v65 trailingAnchor];

  v68 = [v64 constraintLessThanOrEqualToAnchor_];
  *(v13 + 128) = v68;
  v69 = [*&v1[v63] topAnchor];
  v70 = [*&v1[v47] bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:6.0];

  *(v13 + 136) = v71;
  v72 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_cameraTrayLayoutConstraints;
  swift_beginAccess();
  *&v1[v72] = v13;

  if (sub_257D96E38())
  {

    v73 = [v95 centerXAnchor];
    v74 = [v2 centerXAnchor];
    v75 = [v73 constraintEqualToAnchor_];

    v76 = swift_beginAccess();
    MEMORY[0x259C72300](v76);
    if (*((*&v1[v72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    swift_endAccess();
    v77 = [*&v1[v63] centerXAnchor];
    v78 = [*&v1[v47] centerXAnchor];
    v79 = [v77 constraintEqualToAnchor_];

    v80 = swift_beginAccess();
    MEMORY[0x259C72300](v80);
    if (*((*&v1[v72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    swift_endAccess();
    v81 = v95;
LABEL_34:

    return;
  }

  v81 = v95;
  v82 = [v95 leadingAnchor];
  v83 = [v1 &off_279854AF8];
  if (!v83)
  {
    goto LABEL_43;
  }

  v84 = v83;
  v85 = [v83 leadingAnchor];

  v86 = [v82 constraintEqualToAnchor_];
  v87 = swift_beginAccess();
  MEMORY[0x259C72300](v87);
  if (*((*&v1[v72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_257ECF830();
  }

  sub_257ECF860();
  swift_endAccess();
  v88 = [*&v1[v63] trailingAnchor];
  v89 = [v1 &off_279854AF8];
  if (v89)
  {
    v90 = v89;

    v91 = [v90 trailingAnchor];

    v92 = [v88 constraintEqualToAnchor_];
    v93 = swift_beginAccess();
    MEMORY[0x259C72300](v93);
    if (*((*&v1[v72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
      v81 = v95;
    }

    sub_257ECF860();
    swift_endAccess();
    goto LABEL_34;
  }

LABEL_44:
  __break(1u);
}