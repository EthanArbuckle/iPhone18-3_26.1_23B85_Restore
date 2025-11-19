Coherence::UnknownProperties __swiftcall UnknownProperties.init()()
{
  v1 = v0;
  result.properties._rawValue = sub_1ADDDEC54(MEMORY[0x1E69E7CC0]);
  v1->properties._rawValue = result.properties._rawValue;
  return result;
}

unint64_t sub_1ADDDEC54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA080, &qword_1AE241860);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1ADDD7A10(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_1ADDDED58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1AE23BFEC();
  __swift_allocate_value_buffer(v4, qword_1ED96F228);
  v5 = __swift_project_value_buffer(v4, qword_1ED96F228);
  sub_1AE23BF5C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1ADDDEEFC()
{
  result = type metadata accessor for PartiallyOrderedReferenceMap();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1AE23BFEC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1ADDDEFF8(uint64_t a1)
{
  v1 = *(a1 + 280);
  result = sub_1AE23D7CC();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1ADDDF08C()
{
  sub_1AE23BFEC();
  if (v0 <= 0x3F)
  {
    sub_1ADDDF140();
    if (v1 <= 0x3F)
    {
      sub_1ADDDF254();
      if (v2 <= 0x3F)
      {
        sub_1ADDDF2A4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1ADDDF140()
{
  if (!qword_1ED96A700)
  {
    sub_1ADDDF1A4();
    v0 = sub_1AE23C1DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED96A700);
    }
  }
}

unint64_t sub_1ADDDF1A4()
{
  result = qword_1ED96AD08;
  if (!qword_1ED96AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AD08);
  }

  return result;
}

unint64_t sub_1ADDDF200()
{
  result = qword_1ED96AD00;
  if (!qword_1ED96AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AD00);
  }

  return result;
}

void sub_1ADDDF254()
{
  if (!qword_1ED96AA48)
  {
    v0 = sub_1AE23D11C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED96AA48);
    }
  }
}

void sub_1ADDDF2A4()
{
  if (!qword_1ED96A270)
  {
    sub_1ADDDF1A4();
    v0 = sub_1AE23C28C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED96A270);
    }
  }
}

unint64_t sub_1ADDDF300(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1AE23BFEC();
  v5 = MEMORY[0x1E69695A8];
  sub_1ADDDF574(&qword_1ED96A718, MEMORY[0x1E69695A8]);
  v6 = sub_1AE23CBBC();
  return sub_1ADDDF3D4(a1, v6, MEMORY[0x1E69695A8], &qword_1ED96A710, v5, MEMORY[0x1E69695C8]);
}

unint64_t sub_1ADDDF3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_1ADDDF574(v24, v25);
      v20 = sub_1AE23CCBC();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_1ADDDF574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ADDDF5BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ADDDF604(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1ADDDF64C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int *a5, void *a6, int8x8_t a7)
{
  v7 = *a5;
  v8 = a5[1];
  if ((v8 & *a5) != 0)
  {
    v9 = sub_1AE033364(a1, a2, a3, a4, a5, a6);
    v11 = 0x80000000;
    if (v9 != 1)
    {
      v11 = 2147483649;
    }

    if (v9)
    {
      return v11;
    }

    else
    {
      return (v10 << 32) | 0xFF;
    }
  }

  else
  {
    v13 = (a4 >> a1) & 0x1F;
    v14 = 1 << (a4 >> a1);
    if ((v7 & v14) != 0)
    {
      a7.i32[0] = v7 & (v14 - 1);
      v15 = vcnt_s8(a7);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v15.u32[0];
      v17 = (&a6[2 * ~v15.u32[0]] + a5[2]);
      v18 = *v17;
      v19 = v17[1];
      v20 = a2;
      sub_1ADDD86D8(*v17, v19);
      LOBYTE(v20) = sub_1ADDD6F8C(v18, v19, v20, a3);
      sub_1ADDCC35C(v18, v19);
      if (v20)
      {
        return v13 | (v16 << 32);
      }

      else
      {
        return v13 | (v16 << 32) | 0x40000000;
      }
    }

    else
    {
      v22 = v14 - 1;
      if ((v8 & v14) != 0)
      {
        a7.i32[0] = v8 & v22;
        v23 = vcnt_s8(a7);
        v23.i16[0] = vaddlv_u8(v23);
        return v13 | (v23.u32[0] << 32) | 0x60000000;
      }

      else
      {
        a7.i32[0] = v7 & v22;
        v24 = vcnt_s8(a7);
        v24.i16[0] = vaddlv_u8(v24);
        return v13 | (v24.u32[0] << 32) | 0x20000000;
      }
    }
  }
}

uint64_t sub_1ADDDF7A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  sub_1AE23E31C();
  sub_1AE23BECC();
  result = sub_1AE23E34C();
  v10 = result;
  v11 = a3 + 8;
  v12 = a3[4];
  v13 = a3[5];
  if ((v13 & v12) != 0)
  {
    result = 0;
    goto LABEL_3;
  }

  v15 = 1 << result;
  if (((1 << result) & v12) == 0)
  {
    result = 0;
    do
    {
      if ((v15 & v13) == 0)
      {
        goto LABEL_4;
      }

      v9.i32[0] = (v15 - 1) & v13;
      v9 = vcnt_s8(v9);
      v9.i16[0] = vaddlv_u8(v9);
      a3 = *&a3[4 * v9.u32[0] + 8];
      result = (result + 5);
      v12 = a3[4];
      v13 = a3[5];
      if ((v13 & v12) != 0)
      {
        goto LABEL_31;
      }

      v15 = 1 << (v10 >> result);
    }

    while ((v15 & v12) == 0);
    v11 = a3 + 8;
  }

  v9.i32[0] = (v15 - 1) & v12;
  v16 = vcnt_s8(v9);
  v16.i16[0] = vaddlv_u8(v16);
  v14 = v16.i32[0];
  v17 = (&v11[8 * ~v16.i32[0]] + a3[6]);
  v19 = *v17;
  v18 = v17[1];
  v20 = v18 >> 62;
  v21 = a2 >> 62;
  if (v18 >> 62 == 3)
  {
    if (v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = v18 == 0xC000000000000000;
    }

    v23 = 0;
    v24 = v22 && a2 >> 62 == 3;
    if (v24 && !a1 && a2 == 0xC000000000000000)
    {
      goto LABEL_64;
    }

    goto LABEL_34;
  }

  if (v20 <= 1)
  {
    if (!v20)
    {
      v23 = BYTE6(v18);
      if (v21 <= 1)
      {
LABEL_35:
        if (!v21)
        {
          v28 = BYTE6(a2);
LABEL_42:
          if (v23 != v28)
          {
            goto LABEL_4;
          }

          if (v23 < 1)
          {
LABEL_64:
            v36 = &v11[8 * ~v14] + a3[6];
            v37 = *(v36 + 32);
            v38 = *(v36 + 40);
            v39 = *(v36 + 48);
            v40 = *(v36 + 56);
            *a4 = *(v36 + 16);
            *(a4 + 16) = v37;
            *(a4 + 24) = v38;
            *(a4 + 32) = v39;
            *(a4 + 40) = v40;

            goto LABEL_65;
          }

          if (v20 > 1)
          {
            v43 = v16.i32[0];
            if (v20 != 2)
            {
              *&v45[6] = 0;
              *v45 = 0;
              sub_1ADDD86D8(v19, v18);
              sub_1ADDD8820(v45, a1, a2, v44);
              result = sub_1ADDCC35C(v19, v18);
              v14 = v43;
              if (!v44[0])
              {
                goto LABEL_4;
              }

              goto LABEL_64;
            }

            v32 = *(v19 + 16);
            v42 = *(v19 + 24);
            sub_1ADDD86D8(v19, v18);
            v33 = sub_1AE23BB7C();
            if (v33)
            {
              v34 = sub_1AE23BBAC();
              if (__OFSUB__(v32, v34))
              {
LABEL_70:
                __break(1u);
                goto LABEL_71;
              }

              v33 += v32 - v34;
            }

            if (!__OFSUB__(v42, v32))
            {
LABEL_61:
              sub_1AE23BB9C();
              sub_1ADDD8820(v33, a1, a2, v45);
              result = sub_1ADDCC35C(v19, v18);
              v14 = v43;
              if ((v45[0] & 1) == 0)
              {
                goto LABEL_4;
              }

              goto LABEL_64;
            }

            __break(1u);
          }

          else if (!v20)
          {
            *v45 = v19;
            *&v45[8] = v18;
            v45[10] = BYTE2(v18);
            v45[11] = BYTE3(v18);
            v45[12] = BYTE4(v18);
            v45[13] = BYTE5(v18);
            v31 = v16.i32[0];
            sub_1ADDD86D8(v19, v18);
            sub_1ADDD8820(v45, a1, a2, v44);
            result = sub_1ADDCC35C(v19, v18);
            v14 = v31;
            if (!v44[0])
            {
              goto LABEL_4;
            }

            goto LABEL_64;
          }

          v43 = v14;
          if (v19 >> 32 >= v19)
          {
            sub_1ADDD86D8(v19, v18);
            v33 = sub_1AE23BB7C();
            if (!v33)
            {
              goto LABEL_61;
            }

            v35 = sub_1AE23BBAC();
            if (!__OFSUB__(v19, v35))
            {
              v33 += v19 - v35;
              goto LABEL_61;
            }

LABEL_71:
            __break(1u);
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        LODWORD(v28) = HIDWORD(a1) - a1;
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v28 = v28;
          goto LABEL_42;
        }

        __break(1u);
        goto LABEL_67;
      }

LABEL_40:
      if (v21 != 2)
      {
        if (v23)
        {
          goto LABEL_4;
        }

        goto LABEL_64;
      }

      v30 = *(a1 + 16);
      v29 = *(a1 + 24);
      v27 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (!v27)
      {
        goto LABEL_42;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    LODWORD(v23) = HIDWORD(v19) - v19;
    if (__OFSUB__(HIDWORD(v19), v19))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v23 = v23;
LABEL_34:
    if (v21 <= 1)
    {
      goto LABEL_35;
    }

    goto LABEL_40;
  }

  if (v20 != 2)
  {
    v23 = 0;
    if (v21 <= 1)
    {
      goto LABEL_35;
    }

    goto LABEL_40;
  }

  v26 = *(v19 + 16);
  v25 = *(v19 + 24);
  v27 = __OFSUB__(v25, v26);
  v23 = v25 - v26;
  if (!v27)
  {
    goto LABEL_34;
  }

  __break(1u);
LABEL_31:
  v11 = a3 + 8;
LABEL_3:
  result = sub_1AE033244(result, a1, a2, v10, a3 + 4, v11);
  if (!result)
  {
    goto LABEL_64;
  }

LABEL_4:
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
LABEL_65:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1ADDDFC74(_OWORD **a1)
{
  v1 = *a1;
  sub_1ADDDD94C(*(*a1 + 27), *a1);
  v2 = v1[3];
  v1[8] = v1[2];
  v1[9] = v2;
  v1[10] = v1[4];
  *(v1 + 175) = *(v1 + 79);
  v3 = v1[1];
  v1[6] = *v1;
  v1[7] = v3;
  sub_1ADDCEDE0((v1 + 6), &qword_1EB5BA960, &qword_1AE2455E0);

  free(v1);
}

uint64_t CRStruct_1.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v18 - v10;
  (*(v6 + 32))(a2, v6);
  v18[1] = v12;

  v18[0] = v3;
  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 48))(a1, AssociatedTypeWitness);
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  if ((*(v15 + 8))(v14, v15))
  {
  }

  else
  {
    v16 = (*(*(v6 + 8) + 24))(a2);
    sub_1ADDDC764(a1, v16);
  }
}

_DWORD *sub_1ADDDFEFC(char a1, unsigned int a2, void (*a3)(char *), int8x8_t a4, uint64_t a5, _DWORD *a6)
{
  v8 = a6 + 8;
  v9 = a6[5];
  v10 = a6[4] | (1 << a1);
  a4.i32[0] = v10;
  v11 = vcnt_s8(a4);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  v13 = vcnt_s8(v9);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.i32[0];
  v15 = 16 * (v12 + v13.i32[0]);
  result = sub_1ADDDB860(v15);
  v18 = result;
  v19 = result + 8;
  result[4] = v10;
  result[5] = v9;
  v20 = result[6];
  result[7] -= v15;
  v21 = a6[4];
  v22 = a6[5];
  if (v21 == v22)
  {
    v22 = a6[4];
    goto LABEL_6;
  }

  if (!v22)
  {
LABEL_6:
    v17.i32[0] = v21;
    v24 = vcnt_s8(v17);
    v24.i16[0] = vaddlv_u8(v24);
    if (v21 == v22)
    {
      v25 = v21;
    }

    else
    {
      v25 = v24.u32[0];
    }

    v26 = v12 - a2;
    if (v12 < a2)
    {
      v26 = 0;
    }

    if (v12 < v26)
    {
      __break(1u);
    }

    else
    {
      v27 = v25 - a2;
      if (v25 >= a2)
      {
        v28 = v25 - a2;
      }

      else
      {
        v28 = 0;
      }

      v29 = v25 - v28;
      if (v25 >= v28)
      {
        v30 = v19 + v20 + -16 * v12;
        v31 = v8 + a6[6] + -16 * v25;
        if (v29 >= 1)
        {
          if ((v12 - v26) < v29)
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);
          result = swift_arrayInitWithCopy();
        }

        if ((v27 & 0x8000000000000000) == 0)
        {
          if (v25 == a2)
          {
LABEL_23:
            a3(&v30[16 * v27]);
            return v18;
          }

          if (v27 <= v12)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);
            swift_arrayInitWithCopy();
            goto LABEL_23;
          }

          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v17.i32[0] = a6[5];
  v23 = vcnt_s8(v17);
  v23.i16[0] = vaddlv_u8(v23);
  if (v14 >= v23.i32[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCF0, &unk_1AE251DA0);
    result = swift_arrayInitWithCopy();
    v21 = a6[4];
    v22 = a6[5];
    goto LABEL_6;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1ADDE0110(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_1AE23E31C();
  sub_1AE23BECC();
  v8 = sub_1AE23E34C();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v53 = *v43;
    sub_1ADDD86D8(a2, a3);
    sub_1ADDDBB68(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v43 = *v53;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
    goto LABEL_64;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v51 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v48 = v16;
  v47 = a3;
  v49 = v12;
  v50 = BYTE6(a3);
  v45 = v6 + 56;
  v46 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v51) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_66;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_67;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v50;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v48)
          {
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_65;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v53 = v19;
        *&v53[8] = v18;
        v53[10] = BYTE2(v18);
        v53[11] = BYTE3(v18);
        v53[12] = BYTE4(v18);
        v53[13] = BYTE5(v18);
        sub_1ADDD86D8(v19, v18);
        v12 = v49;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_68;
      }

      sub_1ADDD86D8(v19, v18);
      v33 = sub_1AE23BB7C();
      if (v33)
      {
        v35 = sub_1AE23BBAC();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_71;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_1ADDD86D8(v19, v18);
    v33 = sub_1AE23BB7C();
    if (v33)
    {
      v34 = sub_1AE23BBAC();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_70;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_69;
    }

LABEL_57:
    sub_1AE23BB9C();
    a3 = v47;
    sub_1ADDD8820(v33, a2, v47, v53);
    sub_1ADDCC35C(v19, v18);
    v9 = v45;
    v6 = v46;
    v12 = v49;
    if (v53[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v53[6] = 0;
  *v53 = 0;
  sub_1ADDD86D8(v19, v18);
LABEL_60:
  sub_1ADDD8820(v53, a2, a3, &v52);
  sub_1ADDCC35C(v19, v18);
  if (!v52)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_1ADDCC35C(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_1ADDD86D8(v41, *(&v41 + 1));
  result = 0;
LABEL_64:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADDE0598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1AE23BB7C();
  v11 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1AE23BB9C();
  sub_1ADDD8820(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1ADDE0650()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1ADDE0698(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    sub_1AE0328B8(&v5);
  }

  free(v3);
}

uint64_t sub_1ADDE0708(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  result = type metadata accessor for PartiallyOrderedReferenceMap();
  v8 = *(result + 24);
  v9 = *(v2 + v8);
  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = *(v2 + v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_17:
      v9 = sub_1ADDFC33C(v9);
    }

    v12 = 0;
    for (i = v9 + 48; ; i += 40)
    {
      if (v10 == v12)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (v12 >= *(v9 + 2))
      {
        goto LABEL_16;
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v14 = sub_1AE23E34C();
      sub_1ADDE0898(0, v5, v6, v14, &v22);
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v18 = v25;
      if (v23 >> 60 != 15)
      {
        break;
      }

      ++v12;
      result = sub_1ADECD780(v22, v23, v24, v25);
      if (v10 == v12)
      {
        *(v2 + v8) = v9;
        return result;
      }
    }

    ++*(i + 2);
    v19 = v15;
    v20 = v16;
    sub_1ADDE1588(v17, v18);
    result = sub_1ADDCC35C(v19, v20);
    *(v3 + v8) = v9;
    if (a2)
    {
      v21 = *(v9 + 2);
      if (v12 >= v21)
      {
        __break(1u);
      }

      else if (v21 >= 2 && !*(i + 1))
      {
        sub_1AE031374(v12, &v22);
        sub_1ADE42CB8(v22);
      }
    }
  }

  return result;
}

void sub_1ADDE0898(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    sub_1ADDF9FB0(a1, a2, a3, a4, *v5, *(v5 + 8), &v79, v12);
    v23 = v83;
    v24 = HIBYTE(v83);
    v25 = v79;
    v26 = v81;
    v27 = v82;
    if (v24 <= 0xFE)
    {
      sub_1ADDFA5BC(a1, v81, v82, v83, &v79);
      *a5 = v25;
      *(a5 + 16) = v79;
      sub_1ADDFC318(v26, v27, v23, v24);
      return;
    }

    sub_1AE03CA70(v79, *(&v79 + 1), v80, v81, v82, v83, sub_1ADDCC35C, sub_1ADDFC318);
LABEL_8:
    *a5 = xmmword_1AE2427C0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    return;
  }

  v13 = *v5;
  v14 = (*v5 + 32);
  v15 = sub_1ADDE147C(a1, a2, a3, a4, (*v5 + 16), v14, v12);
  if (v15 == 2)
  {
    goto LABEL_8;
  }

  v16 = HIDWORD(v15);
  v17 = a4 >> a1;
  if (v15)
  {
    v77 = a4 >> a1;
    v18 = v5;
    sub_1ADDE0898(&v79, (a1 + 5), a2, a3, a4);
    v20 = v79;
    v22 = v80;
    v21 = v81;
    if (*(&v79 + 1) >> 60 == 15)
    {
      sub_1ADECD780(v79, *(&v79 + 1), v80, v81);
      *a5 = v20;
      *(a5 + 16) = v22;
      *(a5 + 24) = v21;
      return;
    }

    v78 = v79;
    v39 = v18[1];
    v18[1] = (*&v39 - 1);
    v41 = v13[2].i32[0];
    v40 = v13[2].i32[1];
    if (v21 >> 60 == 15)
    {
      if (!v41)
      {
        if (v40)
        {
          v19.i32[0] = v13[2].i32[1];
          v42 = vcnt_s8(v19);
          v42.i16[0] = vaddlv_u8(v42);
          if (v42.i32[0] < 2u)
          {
            v43 = *(*v14 + 20) & *(*v14 + 16);
            sub_1ADDD86D8(v78, *(&v20 + 1));
            sub_1ADDE0F78(v22, v21);
            if (v43)
            {
              if (v13[2].i32[0] == v13[2].i32[1])
              {
                v45 = -16;
              }

              else
              {
                v44.i32[0] = v13[2].i32[1];
                v72 = vcnt_s8(v44);
                v72.i16[0] = vaddlv_u8(v72);
                v45 = (16 * v72.i32[0]) - 16;
              }

              v13[3].i32[1] += 16;
              v73 = v13[4];
              v74 = v13[5];
              memmove(v14, &v13[6], v45);
              v13[2].i32[1] = 0;

              v50 = 0;
              *v18 = v73;
              v18[1] = v74;
              goto LABEL_59;
            }

LABEL_56:
            v50 = 0;
LABEL_59:
            v48 = v78;
            goto LABEL_60;
          }
        }
      }

      v48 = v78;
      sub_1ADDD86D8(v78, *(&v20 + 1));
      sub_1ADDE0F78(v22, v21);
      v50 = 0;
    }

    else
    {
      if (v41 || !v40 || (v40 & (v40 - 1)) != 0 || !a1)
      {
        v18[1] = (*&v39 - 2);
        swift_beginAccess();
        sub_1AE037C04(v78, *(&v20 + 1), v22, v21);
        sub_1ADDE0F78(v22, v21);
        v52 = *v18;
        v53 = (*v18 + 16);
        v54 = *v18 + 32;
        if (*v53 == *(*v18 + 20))
        {
          v55 = -1;
        }

        else
        {
          v51.i32[0] = *(*v18 + 20);
          v66 = vcnt_s8(v51);
          v66.i16[0] = vaddlv_u8(v66);
          v55 = v66.u32[0] - 1;
        }

        v52[7] += 16;
        v67 = (v54 + 16 * v16);
        v68 = *v67;
        v75 = v67[1];
        v76 = v54;
        memmove(v67, v67 + 2, 16 * (v55 - v16));
        v52[5] &= ~(1 << v77);

        v69.i32[0] = v52[4] & ((1 << v77) - 1);
        v70 = vcnt_s8(v69);
        v70.i16[0] = vaddlv_u8(v70);
        LODWORD(v68) = v70.i32[0];
        v18[1] = (*&v18[1] - v75 + 1);
        sub_1ADDE0F78(v22, v21);
        sub_1ADDD86D8(v22, v21);
        v71 = sub_1ADDE15A0(v68, v77 & 0x1F, v53, v76);
        *v71 = v22;
        *(v71 + 1) = v21;
        sub_1ADDD86D8(v22, v21);
        sub_1ADDE1588(v22, v21);
        sub_1ADDCC35C(v22, v21);
        sub_1ADDCC35C(v22, v21);
        goto LABEL_56;
      }

      v48 = v78;
      sub_1AE037C04(v78, *(&v20 + 1), v22, v21);
      sub_1ADDE0F78(v22, v21);
      v49 = *sub_1AE23C1EC();

      *v18 = v49;
      v18[1] = 0;
      v50 = v22;
    }

LABEL_60:
    sub_1ADECD780(v48, *(&v20 + 1), v22, v21);
    *a5 = v48;
    *(a5 + 8) = *(&v20 + 1);
    *(a5 + 16) = v50;
    *(a5 + 24) = v20;
    sub_1ADDE1588(v22, v21);
    return;
  }

  --*(v5 + 8);
  LODWORD(v28) = v13[2].i32[0];
  v29 = vcnt_s8(v28);
  v29.i16[0] = vaddlv_u8(v29);
  if (v28 == v13[2].i32[1])
  {
    v28 = v28;
  }

  else
  {
    v28 = v29.u32[0];
  }

  v30 = v13[3].u32[0];
  v13[3].i32[1] += 16;
  v31 = v14 + v30 + -16 * v28;
  v32 = 16 * (v28 + ~v16);
  v33 = *&v31[v32];
  v34 = *&v31[v32 + 8];
  memmove(v31 + 16, v31, v32);
  v37 = v13[2].i32[0];
  v36 = v13[2].i32[1];
  if ((v36 & v37) != 0)
  {
    v38 = v37 - 1;
    v13[2].i32[1] = v38;
    v36 = v38;
    v13[2].i32[0] = v38;
    if (!v38)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v38 = v37 & ((-1 << v17) - 1);
    v13[2].i32[0] = v38;
    if (!v36)
    {
      goto LABEL_28;
    }
  }

  if (v38 || (v35.i32[0] = v36, v35 = vcnt_s8(v35), v35.i16[0] = vaddlv_u8(v35), v35.i32[0] > 1u))
  {
LABEL_28:
    if (v38 == v36)
    {
      goto LABEL_29;
    }

LABEL_39:
    v56 = 0;
    v57 = 0xF000000000000000;
    if (!v38)
    {
      goto LABEL_50;
    }

    if (v36)
    {
      goto LABEL_50;
    }

    v35.i32[0] = v38;
    v58 = vcnt_s8(v35);
    v58.i16[0] = vaddlv_u8(v58);
    if (v58.i32[0] >= 2u)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  v46 = *v14;
  if ((*(*v14 + 20) & *(*v14 + 16)) != 0)
  {
    v13[3].i32[1] += 16;
    v47 = v13[5];
    memmove(v14, &v13[6], (16 * v35.i32[0]) - 16);
    v13[2].i32[1] = 0;

    *v5 = v46;
    *(v5 + 8) = v47;
    v38 = v46[2].i32[0];
    v36 = v46[2].i32[1];
    v13 = v46;
    goto LABEL_28;
  }

  v38 = 0;
  if (v36)
  {
    goto LABEL_39;
  }

LABEL_29:
  if (v36 != 1)
  {
LABEL_48:
    v56 = 0;
    goto LABEL_49;
  }

LABEL_42:
  if (a1)
  {
    *(v5 + 8) = 0;
    v59 = v13[2].u32[0];
    v60 = vcnt_s8(v59);
    v60.i16[0] = vaddlv_u8(v60);
    if (v59 != v13[2].i32[1])
    {
      v59 = v60.i32[0];
    }

    v61 = 16 * v59;
    v62 = &v13[v61 / 0xFFFFFFFFFFFFFFF8] + v13[3].u32[0];
    v13[3].i32[1] += 16;
    v63 = v61 - 16;
    v64 = &v62[v61 + 16];
    v56 = *v64;
    v57 = v64[1];
    memmove(v62 + 48, v62 + 32, v63);
    v13[2] = 0;
    v13[3].i32[1] = v13[3].i32[0];
    goto LABEL_50;
  }

  if ((v36 & v38) == 0)
  {
    goto LABEL_48;
  }

  v56 = 0;
  v65 = v13[3].i32[1];
  v13[2].i32[0] = 1 << v13[4].i32[0];
  v13[2].i32[1] = 0;
  v13[3].i32[1] = v65 + 8;
LABEL_49:
  v57 = 0xF000000000000000;
LABEL_50:
  *a5 = v33;
  *(a5 + 8) = v34;
  *(a5 + 16) = v56;
  *(a5 + 24) = v57;
  sub_1ADDD86D8(v33, v34);
  sub_1ADDE0F78(v56, v57);
  sub_1ADDCC35C(v33, v34);

  sub_1ADDE1588(v56, v57);
}

uint64_t sub_1ADDE0F78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1ADDD86D8(a1, a2);
  }

  return a1;
}

uint64_t sub_1ADDE0F8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-v11];
  v13 = *(v3 + 296);
  swift_beginAccess();
  (*(v6 + 16))(v12, v1 + v13, v5);
  v14 = *(v4 - 8);
  result = (*(v14 + 48))(v12, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a1[3] = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(v14 + 32))(boxed_opaque_existential_1, v12, v4);
    (*(v14 + 56))(v10, 1, 1, v4);
    swift_beginAccess();
    (*(v6 + 40))(v1 + v13, v10, v5);
    return swift_endAccess();
  }

  return result;
}

void sub_1ADDE11A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[52];
  if (a2)
  {
    (*(v2[51] + 8))(v2[52], v2[50]);
  }

  else
  {
    v4 = v2[50];
    v5 = v2[51];
    v6 = v2[49];
    __swift_project_boxed_opaque_existential_1(v2 + 24, v2[53]);
    v2[36] = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 33);
    (*(v5 + 16))(boxed_opaque_existential_1, v3, v4);
    off_1F23C9918();
    __swift_destroy_boxed_opaque_existential_1(v2 + 33);
    v8 = *(v6 + 16);
    v11 = v6 + 24;
    v10 = *(v6 + 24);
    v9 = *(v11 + 8);
    swift_beginAccess();

    sub_1ADDD86D8(v8, v10);
    sub_1ADDE0110(v12, v8, v10);
    swift_endAccess();

    sub_1ADDCC35C(v12[0], v12[1]);
    (*(v5 + 8))(v3, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + 24);
  free(v3);

  free(v2);
}

uint64_t *sub_1ADDE1320(uint64_t *result)
{
  if (result[4])
  {
    v1 = result[3];
    v7 = result[2];
    v8 = v1;
    v2 = result[1];
    v5 = *result;
    v6 = v2;

    sub_1ADDD86D8(v7, v1);
    sub_1ADDD86D8(v5, v2);
    sub_1ADEA9BC0(1, 1, &v7, &v5);

    sub_1ADDE158C(v5, v6);
    v3 = v7;
    v4 = v8;

    return sub_1ADDE158C(v3, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1ADDE13D8(uint64_t **a1, uint64_t *a2))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  v8 = *a2;
  v7 = a2[1];
  v5[4] = v2;
  v5[5] = v8;
  v5[6] = v7;
  v9 = v2 + *(type metadata accessor for PartiallyOrderedReferenceMap() + 20);
  v6[7] = sub_1ADDDD53C(v6, v8, v7);
  return sub_1ADDE0698;
}

unint64_t sub_1ADDE147C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int *a5, void *a6, int8x8_t a7)
{
  v8 = *a5;
  v7 = a5[1];
  if ((v7 & *a5) != 0)
  {
    if (sub_1AE033364(a1, a2, a3, a4, a5, a6))
    {
      return 2;
    }

    else
    {
      return v9 << 32;
    }
  }

  else
  {
    v11 = 1 << (a4 >> a1);
    if ((v8 & v11) != 0)
    {
      a7.i32[0] = v8 & (v11 - 1);
      v12 = vcnt_s8(a7);
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.u32[0];
      v14 = (&a6[2 * ~v12.u32[0]] + a5[2]);
      v15 = *v14;
      v16 = v14[1];
      v17 = a2;
      sub_1ADDD86D8(*v14, v16);
      LOBYTE(v17) = sub_1ADDD6F8C(v15, v16, v17, a3);
      sub_1ADDCC35C(v15, v16);
      if (v17)
      {
        return v13 << 32;
      }

      else
      {
        return 2;
      }
    }

    else if ((v7 & v11) != 0)
    {
      a7.i32[0] = v7 & (v11 - 1);
      v19 = vcnt_s8(a7);
      v19.i16[0] = vaddlv_u8(v19);
      return (v19.u32[0] << 32) | 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ADDE158C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1ADDCC35C(a1, a2);
  }

  return a1;
}

char *sub_1ADDE15A0(unsigned int a1, char a2, int *a3, uint64_t a4)
{
  v6 = ~a2;
  LODWORD(v7) = *a3;
  v8 = vcnt_s8(*a3);
  v8.i16[0] = vaddlv_u8(v8);
  if (*a3 == a3[1])
  {
    v7 = v7;
  }

  else
  {
    v7 = v8.u32[0];
  }

  v9 = a3[2];
  a3[3] -= 16;
  v10 = (a4 - 16 * v7 + v9);
  v11 = v10 - 16;
  v12 = v7 - a1;
  memmove(v10 - 16, v10, 16 * v12);
  v13 = *a3;
  if (v6)
  {
    v14 = v13 | (1 << a2);
  }

  else
  {
    v14 = v13 + 1;
    a3[1] = v14;
  }

  *a3 = v14;
  return &v11[16 * v12];
}

uint64_t CRRegister.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x1EEE9AC00]();
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  if (v11)
  {
    (*(*v11 + 96))(result);
    (*(*(*(a2 + 24) + 8) + 48))(a1, v5);
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_1ADDE1764@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  swift_beginAccess();
  return (*(*(*(v3 + 192) - 8) + 16))(a1, v1 + v4);
}

uint64_t *Capsule.mutate<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  sub_1ADDE1854(a1, a2, a3);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  return sub_1ADDE1320(v3);
}

uint64_t sub_1ADDE1854(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_1ADDF8128();
  v8 = v3[4];
  if (v8)
  {
    v10 = *v3;
    v9 = v3[1];
    v11 = *(a3 + 16);
    v12 = *(a3 + 24);
    type metadata accessor for Capsule.Ref();
    v13 = swift_allocObject();
    v13[2] = v10;
    v13[3] = v9;
    v13[4] = v8;
    v4[4] = 0;
    sub_1ADDD86D8(v10, v9);
    a1(v13);
    v14 = v4[4];
    v4[4] = v13[4];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*Capsule.Ref.subscript.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x50uLL);
  }

  v3 = v2;
  *a1 = v2;
  v2[8] = Capsule.Ref.root.modify(v2);
  v3[9] = swift_modifyAtWritableKeyPath();
  return sub_1ADDE5438;
}

uint64_t Capsule.serializedData(_:version:allowedAppFormats:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 4);
  v9 = *a2;
  return Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)(a1, &v9, a3, 0, 0xF000000000000000, a4);
}

uint64_t Capsule.finalizeTimestamps(_:)(uint64_t result)
{
  v2 = *(v1 + 32);
  if (!v2)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = result;
  v4 = v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v5 = *(v4 + 8);

  v6 = *(v1 + 32);
  result = swift_isUniquelyReferenced_native();
  if (result)
  {
    if (*(v1 + 32))
    {
      v23[0] = MEMORY[0x1E69E7CC8];
      v23[1] = v5;
      v7 = v23;
LABEL_13:
      sub_1ADDE1F68(v7, v3);
    }

    goto LABEL_16;
  }

  v8 = MEMORY[0x1E69E7CC8];
  if (!(*(v5 + 16) | *(MEMORY[0x1E69E7CC8] + 16)))
  {
  }

  v9 = *(v1 + 32);
  if (v9)
  {
    v10 = v1;
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v11 = v9 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
    swift_beginAccess();
    v12 = *(v11 + 8);
    v21 = v8;
    v22 = v12;

    sub_1ADDE1CB8(&v21);

    v13 = *(v9 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
    v14 = qword_1ED967EE8;

    if (v14 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1ED96F1F8);
    v15 = sub_1AE1FEFC0(&dword_1ED96F1F8, v13);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    v16 = type metadata accessor for CapsuleRef();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();

    v20 = sub_1ADDE1CF0(v19, v15);

    *(v10 + 32) = v20;
    v21 = v8;
    v22 = v5;
    v7 = &v21;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1ADDE1CF0(uint64_t a1, uint64_t a2)
{
  v25 = sub_1AE23BFEC();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PartiallyOrderedReferenceMap();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
  *(v2 + v13) = sub_1ADDD9D48(MEMORY[0x1E69E7CC0]);
  v14 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADDD9E68(a1 + v14, v12);
  sub_1AE1FE97C(v12, v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references);
  v15 = OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated;
  swift_beginAccess();
  *(v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated) = *(a1 + v15);
  v16 = (a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];
  v19 = (v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  *v19 = v18;
  v19[1] = v17;
  *(v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState) = a2;
  *(v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = *(a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration);
  v20 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  swift_beginAccess();
  *(v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_assets) = *(a1 + v20);
  v21 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
  swift_beginAccess();
  v22 = a1 + v21;
  v23 = v25;
  (*(v5 + 16))(v8, v22, v25);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID, v8, v23);

  return v2;
}

uint64_t *sub_1ADDE1F68(uint64_t *result, uint64_t a2)
{
  v3 = v2;
  if (*(result[1] + 16) || *(*result + 16))
  {
    v17 = result[1];
    v18 = *result;
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED96F2F8;
    v6 = (v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    v7 = swift_beginAccess();
    v8 = *v6;
    v9 = v6[1];
    v10 = *(v5 + 40);
    MEMORY[0x1EEE9AC00](v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    v11 = v19;
    v12 = v20;
    v13 = v21;
    v14 = v23;
    v15 = *v6;
    v16 = v6[1];
    *v6 = v22;
    v6[1] = v14;

    swift_beginAccess();
    sub_1ADDFB0EC(a2);
    swift_endAccess();
    if (*(v13 + 16))
    {
      swift_beginAccess();
      sub_1ADDF8898(v11, v12, v13);
      swift_endAccess();
      swift_beginAccess();
      sub_1ADDFBCE8(v11, v12, v13);
      swift_endAccess();

      *(v3 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = v11;
    }

    else
    {
    }

    v19 = v18;
    v20 = v17;
    return sub_1ADDF8100(&v19);
  }

  return result;
}

uint64_t sub_1ADDE21EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Replica();
  sub_1ADDDE540(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for Replica);
  result = sub_1ADDE5634(a3, a4[7] + 24 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

size_t sub_1ADDE22AC(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB38, &qword_1AE24E070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = (&v41 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v43 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v44 = &v41 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v46 = (&v41 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v41 - v22);
  v47 = v24;
  v48 = v2;
  v25 = *v2;
  v26 = *(*v2 + 16);
  if (!v26)
  {
    v28 = 0;
LABEL_5:
    if (v28 <= a2)
    {
      v2 = a1;
      v29 = *(v21 + 36);
      v30 = type metadata accessor for RetainedMapRun(0);
      (*(*(v30 - 8) + 56))(v23 + v29, 1, 1, v30);
      *v23 = v28;
      v23[1] = a2;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v27 = *(v9 + 72);
  v28 = *(v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v27 * (v26 - 1) + 8);
  if (v28 < a2)
  {
    goto LABEL_5;
  }

  v26 = *(v9 + 80);
  v2 = a1;
  while (1)
  {
    v33 = sub_1ADDE2A80(v2, 0, v25);
    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v9 = v33;
    if (v33 >= v25[2])
    {
      goto LABEL_30;
    }

    v26 = (v26 + 32) & ~v26;
    v34 = v27 * v33;
    if (*(v25 + v26 + v27 * v33) < v2)
    {
      v23 = &qword_1AE241B60;
      sub_1ADDCEE40(v25 + v26 + v34, v17, &qword_1EB5BA148, &qword_1AE241B60);
      sub_1ADF91530(v47, v46, v2);
      sub_1ADDCEDE0(v17, &qword_1EB5BA148, &qword_1AE241B60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1ADF799F0(v25);
      }

      v2 = v48;
      if (v9 >= v25[2])
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v42 = v17;
      v35 = a2;
      v36 = v47;
      sub_1ADF934B4(v47, v25 + v26 + v34);
      *v2 = v25;
      if (v25[2] <= v9)
      {
        goto LABEL_38;
      }

      ++v9;
      v25 = &qword_1AE241B60;
      v23 = v45;
      v37 = v46;
      sub_1ADDCEE40(v46, v45, &qword_1EB5BA148, &qword_1AE241B60);
      sub_1ADF92880(v9, v9, v23);
      sub_1ADDCEDE0(v37, &qword_1EB5BA148, &qword_1AE241B60);
      sub_1ADDCEDE0(v36, &qword_1EB5BA148, &qword_1AE241B60);
      a2 = v35;
      v17 = v42;
    }

    if (__OFSUB__(a2, 1))
    {
      goto LABEL_31;
    }

    v23 = *v48;
    v38 = sub_1ADDE2A80(a2 - 1, v9, *v48);
    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

    v25 = v38;
    if (v38 >= v23[2])
    {
      goto LABEL_33;
    }

    v34 = v38 * v27;
    v39 = v23 + v26 + v38 * v27;
    if (*(v39 + 8) > a2)
    {
      break;
    }

    v25 = (v25 + 1);
LABEL_27:
    if (v25 >= v9)
    {
      return v9;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v25 = sub_1ADDE2A5C(0, v26 + 1, 1, v25);
LABEL_7:
    v32 = v25[2];
    v31 = v25[3];
    if (v32 >= v31 >> 1)
    {
      v25 = sub_1ADDE2A5C(v31 > 1, v32 + 1, 1, v25);
    }

    v25[2] = v32 + 1;
    v26 = *(v9 + 80);
    v27 = *(v9 + 72);
    sub_1ADDD2198(v23, v25 + ((v26 + 32) & ~v26) + v27 * v32, &qword_1EB5BA148, &qword_1AE241B60);
    *v48 = v25;
  }

  sub_1ADDCEE40(v39, v17, &qword_1EB5BA148, &qword_1AE241B60);
  sub_1ADF91530(v44, v43, a2);
  sub_1ADDCEDE0(v17, &qword_1EB5BA148, &qword_1AE241B60);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_23;
  }

LABEL_39:
  result = sub_1ADF799F0(v23);
  v23 = result;
LABEL_23:
  v2 = v48;
  v17 = v44;
  if (v25 < v23[2])
  {
    result = sub_1ADF934B4(v44, v23 + v26 + v34);
    *v2 = v23;
    if (v23[2] <= v25)
    {
      goto LABEL_41;
    }

    v25 = (v25 + 1);
    v23 = &qword_1AE241B60;
    a2 = v43;
    v26 = v45;
    sub_1ADDCEE40(v43, v45, &qword_1EB5BA148, &qword_1AE241B60);
    sub_1ADF92880(v25, v25, v26);
    sub_1ADDCEDE0(a2, &qword_1EB5BA148, &qword_1AE241B60);
    sub_1ADDCEDE0(v17, &qword_1EB5BA148, &qword_1AE241B60);
    goto LABEL_27;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

size_t sub_1ADDE2874(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1ADDE2A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = v6 - 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v11 = *(v8 - 8);
  result = v8 - 8;
  v10 = v11;
  v12 = a2 + v6 - 1;
  if (__OFADD__(a2, v6 - 1))
  {
LABEL_16:
    __break(1u);
    return v12;
  }

  else
  {
    while (v12 >= -1)
    {
      v12 /= 2;
      if (v12 >= v6)
      {
        break;
      }

      v13 = (a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v12);
      v14 = *v13;
      v15 = v13[1];
      if (v14 <= a1 && v15 > a1)
      {
        return v12;
      }

      if (v7 < a2)
      {
        return v7;
      }

      if (v14 > a1)
      {
        v7 = v12 - 1;
        v17 = __OFADD__(a2, v12 - 1);
        v12 = a2 + v12 - 1;
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        a2 = v12 + 1;
        v17 = __OFADD__(v12 + 1, v7);
        v12 += 1 + v7;
        if (v17)
        {
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1ADDE2B98(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v108 = &v102 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v102 - v14;
  v15 = type metadata accessor for FinalizedTimestamp(0);
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v103 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v102 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = (&v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v23);
  v107 = &v102 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v115 = &v102 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v123 = &v102 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v102 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v131 = &v102 - v35;
  v132 = type metadata accessor for RetainedMapRun(0);
  v113 = *(v132 - 8);
  v36 = *(v113 + 64);
  v37 = MEMORY[0x1EEE9AC00](v132);
  v118 = (&v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v125 = &v102 - v39;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v137 = *(v135 - 8);
  v40 = *(v137 + 64);
  v41 = MEMORY[0x1EEE9AC00](v135);
  v116 = &v102 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v117 = &v102 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v121 = (&v102 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v120 = &v102 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v102 - v50;
  MEMORY[0x1EEE9AC00](v49);
  if (__OFSUB__(a1, 1))
  {
    goto LABEL_88;
  }

  v2 = &v102 - v52;
  v53 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v119 = v34;
  v111 = v15;
  v105 = v13;
  v109 = v25;
  v15 = (a1 - 1) & ~((a1 - 1) >> 63);
  v13 = v15 + 1;
  v54 = *v124;
  result = (*v124)[2];
  if (result < v53)
  {
    v53 = v54[2];
  }

  v133 = v53;
  if (v13 >= v53)
  {
    v58 = v54;
    if (result)
    {
      goto LABEL_46;
    }

LABEL_49:
    v25 = result;
LABEL_54:
    v96 = v124;
    sub_1ADDFDCDC(result, v25, sub_1ADDE2A5C, &qword_1EB5BA148, &qword_1AE241B60);
    v25 = *v96;
    v97 = (*v96)[2];
    if (v97)
    {
      v16 = v109;
      sub_1ADDCEE40(v25 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * (v97 - 1) + *(v135 + 36), v109, &qword_1EB5BA450, &unk_1AE25B3B0);
      if ((*(v113 + 48))(v16, 1, v132) != 1)
      {
        return sub_1ADDCEDE0(v16, &qword_1EB5BA450, &unk_1AE25B3B0);
      }
    }

    else
    {
      v16 = v109;
      (*(v113 + 56))(v109, 1, 1, v132);
    }

    sub_1ADDCEDE0(v16, &qword_1EB5BA450, &unk_1AE25B3B0);
    if (v25[2])
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v98 = v25[2];
        if (v98)
        {
LABEL_61:
          v99 = v98 - 1;
          result = sub_1ADDCEDE0(v25 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * (v98 - 1), &qword_1EB5BA148, &qword_1AE241B60);
          v25[2] = v99;
          *v124 = v25;
          return result;
        }

LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

LABEL_91:
      v25 = sub_1ADF799F0(v25);
      v98 = v25[2];
      if (v98)
      {
        goto LABEL_61;
      }

      goto LABEL_92;
    }

LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v25 = v54;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v138 = v51;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_94:
    v25 = sub_1ADF799F0(v25);
  }

  v57 = v2;
  v58 = v25;
  *v124 = v25;
  v130 = (v113 + 48);
  v2 = (v16 + 6);
  v59 = &qword_1EB5BA148;
  v110 = xmmword_1AE24DF80;
  v126 = v25;
  v122 = v57;
  v128 = v16 + 6;
  do
  {
    v25 = v58[2];
    if (v15 >= v25)
    {
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v61 = v2;
    v139 = v13;
    v16 = (v58 + ((*(v137 + 80) + 32) & ~*(v137 + 80)));
    v2 = v59;
    v62 = *(v137 + 72);
    v134 = (v16 + v62 * v15);
    sub_1ADDCEE40(v134, v57, v2, &qword_1AE241B60);
    v13 = v139;
    if (v139 >= v25)
    {
      goto LABEL_77;
    }

    v25 = v58;
    v136 = v16 + v62 * v139;
    v63 = v138;
    sub_1ADDCEE40(v136, v138, v2, &qword_1AE241B60);
    if (*(v57 + 8) != *v63)
    {
      v59 = v2;
      sub_1ADDCEDE0(v63, v2, &qword_1AE241B60);
      sub_1ADDCEDE0(v57, v2, &qword_1AE241B60);
      v60 = v13;
      v2 = v61;
      v58 = v25;
      goto LABEL_9;
    }

    v127 = *(v57 + 8);
    v129 = v15;
    v64 = *(v135 + 36);
    v65 = v131;
    v15 = &qword_1EB5BA450;
    v2 = &unk_1AE25B3B0;
    sub_1ADDCEE40(v57 + v64, v131, &qword_1EB5BA450, &unk_1AE25B3B0);
    v13 = *v130;
    v66 = v132;
    if ((*v130)(v65, 1, v132) == 1)
    {
      goto LABEL_16;
    }

    v67 = v63;
    v68 = v125;
    sub_1ADDDE5A8(v131, v125, type metadata accessor for RetainedMapRun);
    v69 = v67 + *(v135 + 36);
    v65 = v119;
    sub_1ADDCEE40(v69, v119, &qword_1EB5BA450, &unk_1AE25B3B0);
    if ((v13)(v65, 1, v66) == 1)
    {
      sub_1ADDE5360(v68, type metadata accessor for RetainedMapRun);
      v66 = v132;
      v63 = v138;
      v57 = v122;
LABEL_16:
      sub_1ADDCEDE0(v65, &qword_1EB5BA450, &unk_1AE25B3B0);
      v16 = v57;
      v70 = v123;
      sub_1ADDD2198(v57 + v64, v123, &qword_1EB5BA450, &unk_1AE25B3B0);
      if ((v13)(v70, 1, v66) == 1)
      {
        sub_1ADDCEDE0(v70, &qword_1EB5BA450, &unk_1AE25B3B0);
        v71 = v115;
        sub_1ADDD2198(v63 + *(v135 + 36), v115, &qword_1EB5BA450, &unk_1AE25B3B0);
        v127 = v13;
        v72 = (v13)(v71, 1, v66);
        sub_1ADDCEDE0(v71, &qword_1EB5BA450, &unk_1AE25B3B0);
        v13 = v139;
        v60 = v139;
        v58 = v126;
        v2 = v128;
        v59 = &qword_1EB5BA148;
        if (v72 != 1)
        {
          goto LABEL_9;
        }

LABEL_18:
        v25 = v58[2];
        if (v13 >= v25)
        {
          goto LABEL_80;
        }

        v15 = v136;
        sub_1ADDCEE40(v136, v120, &qword_1EB5BA148, &qword_1AE241B60);
        v73 = v129;
        if (v129 >= v25)
        {
          goto LABEL_81;
        }

        v2 = v134;
        v74 = *(v135 + 36);
        v13 = v127;
        if (!v127(v134 + v74, 1, v132))
        {
          v75 = v120 + v74;
          v76 = v107;
          sub_1ADDCEE40(v75, v107, &qword_1EB5BA450, &unk_1AE25B3B0);
          result = (v13)(v76, 1, v132);
          if (result == 1)
          {
            goto LABEL_97;
          }

          sub_1ADDCEDE0(v76, &qword_1EB5BA450, &unk_1AE25B3B0);
          v73 = v129;
          v15 = v136;
        }

        v25 = *v2;
        v16 = *(v120 + 8);
        sub_1ADDCEDE0(v120, &qword_1EB5BA148, &qword_1AE241B60);
        if (v16 < v25)
        {
          goto LABEL_82;
        }

        *v2 = v25;
        *(v2 + 8) = v16;
        v13 = v139;
        if (v139 >= v58[2])
        {
          goto LABEL_83;
        }

        *v15 = v110;
        *v124 = v58;
        v60 = v73;
      }

      else
      {
        v59 = &qword_1EB5BA148;
        sub_1ADDCEDE0(v63, &qword_1EB5BA148, &qword_1AE241B60);
        sub_1ADDCEDE0(v70, &qword_1EB5BA450, &unk_1AE25B3B0);
        v13 = v139;
        v60 = v139;
        v58 = v126;
      }

      v2 = v128;
      goto LABEL_9;
    }

    v77 = v65;
    v16 = v118;
    sub_1ADDDE5A8(v77, v118, type metadata accessor for RetainedMapRun);
    v78 = v127 - *v122;
    if (__OFSUB__(v127, *v122))
    {
      goto LABEL_79;
    }

    v79 = v125;
    v58 = v126;
    v57 = v122;
    v2 = v128;
    if (*(v125 + *(v132 + 20)) != *(v16 + *(v132 + 20)))
    {
LABEL_35:
      sub_1ADDE5360(v16, type metadata accessor for RetainedMapRun);
      sub_1ADDE5360(v79, type metadata accessor for RetainedMapRun);
      v59 = &qword_1EB5BA148;
      sub_1ADDCEDE0(v138, &qword_1EB5BA148, &qword_1AE241B60);
      sub_1ADDCEDE0(v57, &qword_1EB5BA148, &qword_1AE241B60);
      v13 = v139;
      v60 = v139;
      goto LABEL_9;
    }

    v80 = v112;
    v81 = v128;
    sub_1ADDCEE40(v125, v112, &qword_1EB5BA460, &qword_1AE251020);
    v82 = v111;
    v114 = *v81;
    if (v114(v80, 1, v111) != 1)
    {
      v83 = v106;
      sub_1ADDDE5A8(v112, v106, type metadata accessor for FinalizedTimestamp);
      v80 = v105;
      sub_1ADDCEE40(v118, v105, &qword_1EB5BA460, &qword_1AE251020);
      v2 = v81;
      if (v114(v80, 1, v82) != 1)
      {
        v88 = v80;
        v89 = v103;
        result = sub_1ADDDE5A8(v88, v103, type metadata accessor for FinalizedTimestamp);
        v90 = *(v82 + 20);
        v91 = *(v83 + v90);
        v92 = __OFADD__(v91, v78);
        v93 = &v78[v91];
        if (v92)
        {
          goto LABEL_96;
        }

        v15 = v138;
        if (v93 == *(v89 + v90))
        {
          v87 = sub_1AE23BF8C();
        }

        else
        {
          v87 = 0;
        }

        v127 = v13;
        sub_1ADDE5360(v89, type metadata accessor for FinalizedTimestamp);
        sub_1ADDE5360(v83, type metadata accessor for FinalizedTimestamp);
        v16 = v118;
        goto LABEL_41;
      }

      sub_1ADDE5360(v83, type metadata accessor for FinalizedTimestamp);
      v79 = v125;
    }

    sub_1ADDCEDE0(v80, &qword_1EB5BA460, &qword_1AE251020);
    v84 = v108;
    sub_1ADDCEE40(v79, v108, &qword_1EB5BA460, &qword_1AE251020);
    v85 = v114(v84, 1, v82);
    sub_1ADDCEDE0(v84, &qword_1EB5BA460, &qword_1AE251020);
    v16 = v118;
    v2 = v81;
    if (v85 != 1)
    {
      goto LABEL_35;
    }

    v127 = v13;
    v86 = v104;
    sub_1ADDCEE40(v118, v104, &qword_1EB5BA460, &qword_1AE251020);
    v87 = v114(v86, 1, v111) == 1;
    sub_1ADDCEDE0(v86, &qword_1EB5BA460, &qword_1AE251020);
    v15 = v138;
LABEL_41:
    sub_1ADDE5360(v16, type metadata accessor for RetainedMapRun);
    sub_1ADDE5360(v125, type metadata accessor for RetainedMapRun);
    v59 = &qword_1EB5BA148;
    sub_1ADDCEDE0(v15, &qword_1EB5BA148, &qword_1AE241B60);
    sub_1ADDCEDE0(v57, &qword_1EB5BA148, &qword_1AE241B60);
    v13 = v139;
    v60 = v139;
    if (v87)
    {
      goto LABEL_18;
    }

LABEL_9:
    ++v13;
    v15 = v60;
  }

  while (v13 < v133);
  result = v58[2];
  if (!result)
  {
    goto LABEL_49;
  }

LABEL_46:
  v13 = 0;
  v15 = (v58 + 2);
  v94 = (*(v137 + 80) + 32) & ~*(v137 + 80);
  v95 = *(v137 + 72);
  v139 = v94;
  while ((*(v58 + v94) & 0x8000000000000000) == 0)
  {
    ++v13;
    v94 += v95;
    if (result == v13)
    {
      goto LABEL_49;
    }
  }

  v25 = (v13 + 1);
  if (!__OFADD__(v13, 1))
  {
    if (v25 == result)
    {
      v25 = result;
LABEL_53:
      result = v13;
      if (v25 >= v13)
      {
        goto LABEL_54;
      }

      goto LABEL_93;
    }

    v100 = v95 + v94;
    v16 = &qword_1EB5BA148;
    while (v25 < result)
    {
      v101 = v121;
      sub_1ADDCEE40(v58 + v100, v121, &qword_1EB5BA148, &qword_1AE241B60);
      v2 = *v101;
      sub_1ADDCEDE0(v101, &qword_1EB5BA148, &qword_1AE241B60);
      if ((v2 & 0x8000000000000000) == 0)
      {
        if (v25 != v13)
        {
          if (v13 < 0)
          {
            goto LABEL_84;
          }

          v2 = *v15;
          if (v13 >= *v15)
          {
            goto LABEL_85;
          }

          v15 = v13 * v95;
          sub_1ADDCEE40(v58 + v139 + v13 * v95, v117, &qword_1EB5BA148, &qword_1AE241B60);
          if (v25 >= v2)
          {
            goto LABEL_86;
          }

          sub_1ADDCEE40(v58 + v100, v116, &qword_1EB5BA148, &qword_1AE241B60);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_1ADF799F0(v58);
          }

          sub_1ADF92F3C(v116, v58 + v139 + v15, &qword_1EB5BA148, &qword_1AE241B60);
          if (v25 >= v58[2])
          {
            goto LABEL_87;
          }

          sub_1ADF92F3C(v117, v58 + v100, &qword_1EB5BA148, &qword_1AE241B60);
          *v124 = v58;
        }

        ++v13;
      }

      v25 = (v25 + 1);
      v15 = (v58 + 2);
      result = v58[2];
      v100 += v95;
      if (v25 == result)
      {
        goto LABEL_53;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t sub_1ADDE3C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1ADDE3CD8()
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = sub_1AE23BFCC();
  v28 = v0;
  v29 = v1;
  v30 = v2;
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v7;
  v18 = sub_1AE23BFCC();
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  result = sub_1ADDE3E4C(&v18, &v27);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADDE3E4C(void *a1, void *a2)
{
  v2 = a1[1];
  *a1 ^= *a2;
  a1[1] = a2[1] ^ v2;
  return sub_1AE23BFBC();
}

uint64_t (*sub_1ADDE3EF8(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for Replica() - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_1ADDDE3A0(a2, v8, type metadata accessor for Replica);
  v6[5] = sub_1ADDFD8B4(v6, v9);
  return sub_1ADDE5784;
}

uint64_t sub_1ADDE3FD4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  if (*(v3 + 16) && (v4 = sub_1ADDDF300(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

uint64_t sub_1ADDE4044(uint64_t a1)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A0, &unk_1AE253DA0);
  v3 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v51 - v4;
  v5 = type metadata accessor for FinalizedTimestamp(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  v60 = type metadata accessor for FinalizedTimestampRange(0);
  v21 = *(v60 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v60);
  v61 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v51 - v25;
  v27 = *v1;
  v28 = *(*v1 + 16);
  if (!v28)
  {
    goto LABEL_18;
  }

  v62 = a1;
  v53 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v54 = v21;
  v52 = *(v21 + 72);
  sub_1ADDDE470(v27 + v53 + v52 * (v28 - 1), &v51 - v25, type metadata accessor for FinalizedTimestampRange);
  sub_1ADDCEE40(v26, v18, &qword_1EB5BA460, &qword_1AE251020);
  v29 = *(v6 + 48);
  v30 = v29(v18, 1, v5);
  v56 = v26;
  if (v30 == 1)
  {
    sub_1ADDCEDE0(v18, &qword_1EB5BA460, &qword_1AE251020);
    v31 = 1;
    goto LABEL_6;
  }

  sub_1ADDD27F0(v18, v11, type metadata accessor for FinalizedTimestamp);
  v32 = sub_1AE23BFEC();
  (*(*(v32 - 8) + 16))(v20, v11, v32);
  v33 = *&v11[*(v5 + 20)];
  sub_1ADE0DCEC(v11, type metadata accessor for FinalizedTimestamp);
  v34 = *&v26[*(v60 + 20)];
  v35 = __OFADD__(v33, v34);
  v36 = v33 + v34;
  if (!v35)
  {
    v31 = 0;
    *&v20[*(v5 + 20)] = v36;
LABEL_6:
    (*(v6 + 56))(v20, v31, 1, v5);
    v37 = v59;
    v38 = *(v58 + 48);
    sub_1ADDCEE40(v20, v59, &qword_1EB5BA460, &qword_1AE251020);
    sub_1ADDCEE40(v62, v37 + v38, &qword_1EB5BA460, &qword_1AE251020);
    if (v29(v37, 1, v5) == 1)
    {
      sub_1ADDCEDE0(v20, &qword_1EB5BA460, &qword_1AE251020);
      if (v29((v37 + v38), 1, v5) == 1)
      {
        sub_1ADDCEDE0(v37, &qword_1EB5BA460, &qword_1AE251020);
        a1 = v62;
        goto LABEL_9;
      }
    }

    else
    {
      v44 = v57;
      sub_1ADDCEE40(v37, v57, &qword_1EB5BA460, &qword_1AE251020);
      if (v29((v37 + v38), 1, v5) != 1)
      {
        v48 = v55;
        sub_1ADDD27F0(v37 + v38, v55, type metadata accessor for FinalizedTimestamp);
        v21 = v54;
        if (*(v44 + *(v5 + 20)) == *(v48 + *(v5 + 20)))
        {
          v49 = v44;
          v50 = sub_1AE23BF8C();
          sub_1ADE0DCEC(v48, type metadata accessor for FinalizedTimestamp);
          sub_1ADDCEDE0(v20, &qword_1EB5BA460, &qword_1AE251020);
          sub_1ADE0DCEC(v49, type metadata accessor for FinalizedTimestamp);
          sub_1ADDCEDE0(v37, &qword_1EB5BA460, &qword_1AE251020);
          a1 = v62;
          if (v50)
          {
LABEL_9:
            v6 = v27[2];
            v11 = *(a1 + *(v60 + 20));
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_10;
            }

            goto LABEL_29;
          }
        }

        else
        {
          sub_1ADE0DCEC(v48, type metadata accessor for FinalizedTimestamp);
          sub_1ADDCEDE0(v20, &qword_1EB5BA460, &qword_1AE251020);
          sub_1ADE0DCEC(v44, type metadata accessor for FinalizedTimestamp);
          sub_1ADDCEDE0(v37, &qword_1EB5BA460, &qword_1AE251020);
          a1 = v62;
        }

        goto LABEL_17;
      }

      sub_1ADDCEDE0(v20, &qword_1EB5BA460, &qword_1AE251020);
      sub_1ADE0DCEC(v44, type metadata accessor for FinalizedTimestamp);
    }

    sub_1ADDCEDE0(v37, &qword_1EB5BA4A0, &unk_1AE253DA0);
    a1 = v62;
    v21 = v54;
LABEL_17:
    sub_1ADE0DCEC(v56, type metadata accessor for FinalizedTimestampRange);
LABEL_18:
    v45 = v61;
    sub_1ADDDE470(a1, v61, type metadata accessor for FinalizedTimestampRange);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1ADDE47F8(0, v27[2] + 1, 1, v27);
    }

    v47 = v27[2];
    v46 = v27[3];
    if (v47 >= v46 >> 1)
    {
      v27 = sub_1ADDE47F8(v46 > 1, v47 + 1, 1, v27);
    }

    v27[2] = v47 + 1;
    result = sub_1ADDD27F0(v45, v27 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v47, type metadata accessor for FinalizedTimestampRange);
    goto LABEL_23;
  }

  __break(1u);
LABEL_29:
  v27 = sub_1ADF79A40(v27);
LABEL_10:
  result = sub_1ADE0DCEC(v56, type metadata accessor for FinalizedTimestampRange);
  if (!v6)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v6 > v27[2])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v40 = v27 + v53 + (v6 - 1) * v52;
  v41 = *(v60 + 20);
  v42 = *(v40 + v41);
  v35 = __OFADD__(v42, v11);
  v43 = &v11[v42];
  if (!v35)
  {
    *(v40 + v41) = v43;
LABEL_23:
    *v1 = v27;
    return result;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1ADDE4820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADDE4890(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Replica();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA038, &qword_1AE241818);
  v40 = a2;
  result = sub_1AE23DCCC();
  v13 = result;
  if (*(v10 + 16))
  {
    v37 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(v38 + 72);
      v27 = *(v10 + 48) + v26 * v25;
      if (v40)
      {
        sub_1ADDDE540(v27, v9, type metadata accessor for Replica);
        sub_1ADDE5634(*(v10 + 56) + 24 * v25, v41);
      }

      else
      {
        sub_1ADDDE3A0(v27, v9, type metadata accessor for Replica);
        sub_1ADDE56CC(*(v10 + 56) + 24 * v25, v41);
      }

      v28 = *(v13 + 40);
      sub_1AE23E31C();
      sub_1AE23BFAC();
      MEMORY[0x1B26FCBD0](*&v9[*(v39 + 20)]);
      result = sub_1AE23E34C();
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1ADDDE540(v9, *(v13 + 48) + v26 * v21, type metadata accessor for Replica);
      result = sub_1ADDE5634(v41, *(v13 + 56) + 24 * v21);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v10 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1ADDE4C34(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 1;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v3;
  swift_beginAccess();
  v4 = *(a1 + 24);
  LOBYTE(v3) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v4;
  *(v1 + 32) = v3;
  swift_beginAccess();
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  swift_beginAccess();
  v7 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v7;
  swift_beginAccess();
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  sub_1ADE42C78(v5);

  sub_1ADE56F74(v8, v9, v10);

  swift_beginAccess();
  v11 = *(v1 + 64);
  v12 = *(v1 + 72);
  v13 = *(v1 + 80);
  *(v1 + 64) = v8;
  *(v1 + 72) = v9;
  *(v1 + 80) = v10;
  sub_1ADE73D6C(v11, v12, v13);
  return v1;
}

uint64_t sub_1ADDE4DE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ADDE4E28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1ADDE4E84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ADDE4F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1ADDE4F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1ADDE4FF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE5058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE50B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE5118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE5178(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v3;
  swift_beginAccess();
  v4 = *(a1 + 24);

  swift_beginAccess();
  v5 = *(v1 + 24);
  *(v1 + 24) = v4;

  return v1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1ADDE52A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE5300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE5360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE53C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1ADDE5438(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1ADDE5498(uint64_t a1)
{
  v3 = *(*v1 + 280);
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7 + 16;
  sub_1ADDE4E28(a1, v12);
  swift_dynamicCast();
  (*(*(v3 - 8) + 56))(v8, 0, 1, v3);
  v9 = *(*v1 + 296);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v9, v8, v4);
  return swift_endAccess();
}

void *Capsule.Ref.deinit()
{
  sub_1ADDCC35C(v0[2], v0[3]);
  v1 = v0[4];

  return v0;
}

uint64_t sub_1ADDE5728(uint64_t a1)
{
  v2 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADDE57B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1ADDE5800(void *a1, uint64_t a2)
{
  if (*a1)
  {
    sub_1ADDE5634(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1ADDE58E4(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1ADDE5118(a2, type metadata accessor for Replica);
    *v2 = v7;
  }

  else
  {
    sub_1ADDCEDE0(a1, &qword_1EB5BA468, &unk_1AE259210);
    sub_1ADEBECF0(a2, v8);
    sub_1ADDE5118(a2, type metadata accessor for Replica);
    return sub_1ADDCEDE0(v8, &qword_1EB5BA468, &unk_1AE259210);
  }

  return result;
}

uint64_t sub_1ADDE58E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Replica();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1ADDD8A6C(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1ADF6E86C();
      goto LABEL_7;
    }

    sub_1ADDE4890(v17, a3 & 1);
    v23 = *v4;
    v24 = sub_1ADDD8A6C(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1ADECD9E8(a2, v11, type metadata accessor for Replica);
      return sub_1ADDE21EC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 24 * v14;

  return sub_1ADECDA50(a1, v21);
}

uint64_t sub_1ADDE5A8C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  (*(v6 + 16))(v9, a1, v5, v11);
  swift_beginAccess();
  sub_1ADDE5C74(v13, v9);
  swift_endAccess();
  (*(v6 + 8))(v13, v5);
  swift_beginAccess();
  v14 = *(v2 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v2 + 120);
  *(v2 + 120) = 0x8000000000000000;
  sub_1ADDFB0AC(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 120) = v17;
  return swift_endAccess();
}

uint64_t sub_1ADDE5C74(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1ADDE5F54(&qword_1ED96A718, MEMORY[0x1E69695A8]);
  v36 = a2;
  v13 = sub_1AE23CBBC();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1ADDE5F54(&qword_1ED96A710, MEMORY[0x1E69695A8]);
      v23 = sub_1AE23CCBC();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1ADDF5700(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1ADDE5F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ADDE5F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDE6004()
{
  swift_beginAccess();
  sub_1ADEDC8DC();
  sub_1AE23C4FC();
  return swift_endAccess();
}

double sub_1ADDE609C@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = xmmword_1AE241910;
  return result;
}

uint64_t sub_1ADDE60B8(uint64_t *a1)
{
  v8 = 0;
  v3 = *a1 & 0xF000000000000007;
  if (v3 != 0xF000000000000007 && (*a1 & 0xC000000000000000) == 0x8000000000000000)
  {
    v8 = *a1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  sub_1AE1CA5AC();
  sub_1AE23C4FC();
  result = v8;
  if (v1)
  {
  }

  if (v8)
  {
    if (v3 != 0xF000000000000007)
    {
      sub_1AE23C39C();
      result = v8;
    }

    v6 = result | 0x8000000000000000;
    v7 = *a1;
    *a1 = v6;
    return sub_1ADE73AC8(v7);
  }

  return result;
}

uint64_t sub_1ADDE61B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto_Reference._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

uint64_t sub_1ADDE6240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1ADDE6B30(a2, a1, a3, a4, MEMORY[0x1E69AAD00]);
        }

        else if (result == 2)
        {
          sub_1AE1C2A1C(a2, a1, a3, a4, sub_1AE1D0958, &type metadata for Proto_Reference.TypeEnum, MEMORY[0x1E69AAC48]);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1AE1C1620(a2, a1, a3, a4, sub_1AE1CAF38);
            break;
          case 4:
            sub_1AE1C16C4();
            break;
          case 5:
            sub_1ADDE6004();
            break;
        }
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE63DC()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1AE1CB7C4();
        sub_1AE23C4EC();
      }

      else if (result == 2)
      {
        sub_1AE23C40C();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE6498(uint64_t a1, uint64_t a2)
{
  sub_1AE1CA5AC();
  result = sub_1AE23C4EC();
  if (!v2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      v6 = *(a2 + 16);

      v5(a2);
      return sub_1ADDDCE80(v5);
    }
  }

  return result;
}

void sub_1ADDE6538(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

uint64_t CRDecoder.CRValueContainer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADDE65D0()
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1AE23C3EC();
    }
  }

  return result;
}

uint64_t sub_1ADDE6640@<X0>(void *a1@<X8>)
{
  if (qword_1ED967F98 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_1ED967FA0;
}

uint64_t sub_1ADDE66B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ADDE66F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ADDE6740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1ADDE6E68();
        }

        else if (result == 4)
        {
          sub_1AE1C4FA4();
        }
      }

      else if (result == 1)
      {
        sub_1AE1C4F00(a2, a1, a3, a4, sub_1AE1CA9C0);
      }

      else if (result == 2)
      {
        sub_1ADDE6BBC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

double sub_1ADDE6858@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

double sub_1ADDE68A4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1ADDE68CC()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          sub_1AE1CAF38();
LABEL_5:
          v0 = v3;
          sub_1AE23C4FC();
          goto LABEL_6;
        }

        if (result == 4)
        {
LABEL_11:
          v3 = v0;
          sub_1AE1CB668();
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          sub_1AE1CB7C4();
          goto LABEL_5;
        }

        if (result == 2)
        {
          goto LABEL_11;
        }
      }

LABEL_6:
      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE6A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1ADDE6B30(a2, a1, a3, a4, MEMORY[0x1E69AACA8]);
      }

      else if (result == 2)
      {
        sub_1AE1C2A1C(a2, a1, a3, a4, sub_1AE1CB7C4, &type metadata for Proto_Value, MEMORY[0x1E69AAD20]);
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE6B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a2 + 16, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1ADDE6BBC()
{
  swift_beginAccess();
  sub_1AE1C9AC0();
  sub_1AE23C4FC();
  return swift_endAccess();
}

double sub_1ADDE6C50@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

void sub_1ADDE6C98(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
}

uint64_t sub_1ADDE6CE8()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_1AE23C45C();
            break;
          case 5:
            v3 = v0;
            sub_1AE1CB1F0();
            goto LABEL_19;
          case 6:
            sub_1AE1D0E20();
            sub_1AE23C3CC();
            break;
        }
      }

      else
      {
        v3 = v0;
        switch(result)
        {
          case 1:
            sub_1AE1CB1F0();
            sub_1AE23C4FC();
            break;
          case 2:
            sub_1AE23C4BC();
            break;
          case 3:
            sub_1AE1CB1F0();
LABEL_19:
            v0 = v3;
            sub_1AE23C4EC();
            break;
        }
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE6E68()
{
  swift_beginAccess();
  sub_1AE1CB1F0();
  sub_1AE23C4EC();
  return swift_endAccess();
}

void sub_1ADDE6EFC(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
}

uint64_t getEnumTagSinglePayload for Proto_Timestamp(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADDE6F38()
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1AE23C4DC();
    }

    else if (result == 2)
    {
      sub_1AE23C43C();
    }
  }

  return result;
}

double sub_1ADDE6FC4@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE241910;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1ADDE6FF8()
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1AE23C3DC();
        break;
      case 2:
        sub_1AE23C44C();
        break;
      case 1:
        sub_1AE23C40C();
        break;
    }
  }

  return result;
}

uint64_t sub_1ADDE70B0(uint64_t a1, unint64_t a2)
{
  v59 = a1;
  v57 = sub_1AE23BFEC();
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a2;
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v58);
LABEL_10:
      v10 = v9 / 16;
      goto LABEL_11;
    }

LABEL_8:
    LODWORD(v9) = HIDWORD(v59) - v59;
    if (__OFSUB__(HIDWORD(v59), v59))
    {
      goto LABEL_50;
    }

    v9 = v9;
    goto LABEL_10;
  }

  v10 = 0;
  if (v8 == 2)
  {
    v12 = *(v59 + 16);
    v11 = *(v59 + 24);
    v13 = __OFSUB__(v11, v12);
    v9 = v11 - v12;
    if (!v13)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_11:
  if (*(MEMORY[0x1E69E7CC0] + 16) <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v15 = sub_1ADDE4ECC(0, v14, 0, MEMORY[0x1E69E7CC0]);
  if (v10 < 0)
  {
    goto LABEL_49;
  }

  v16 = v15;
  v54[1] = v2;
  if (!v10)
  {
    return v16;
  }

  v17 = 0;
  v55 = v7;
  v56 = v4 + 32;
  while (1)
  {
    v18 = sub_1AE23BE7C();
    v20 = v18;
    v21 = v19;
    v22 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      break;
    }

    if (v22)
    {
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_45;
      }

      if (HIDWORD(v18) - v18 != 16)
      {
LABEL_42:
        sub_1ADE42E40();
        swift_allocError();
        *v53 = xmmword_1AE241D20;
        *(v53 + 16) = 0;
        swift_willThrow();
        sub_1ADDCC35C(v20, v21);

        return v16;
      }
    }

    else if (BYTE6(v19) != 16)
    {
      goto LABEL_42;
    }

LABEL_27:
    if (v22 == 2)
    {
      v31 = *(v18 + 16);
      v32 = sub_1AE23BB7C();
      if (!v32)
      {
        goto LABEL_51;
      }

      v33 = v32;
      v34 = sub_1AE23BBAC();
      if (__OFSUB__(v31, v34))
      {
        goto LABEL_47;
      }

      v29 = (v31 - v34 + v33);
      sub_1AE23BB9C();
      if (!v29)
      {
        goto LABEL_52;
      }

LABEL_37:
      v35 = *v29;
      v36 = v29[1];
      v37 = v29[2];
      v38 = v29[3];
      v39 = v29[4];
      v40 = v29[5];
      v41 = v29[6];
      v42 = v29[7];
      v43 = v29[8];
      v44 = v29[9];
      v45 = v29[10];
      v46 = v29[11];
      v47 = v29[12];
      v48 = v29[13];
      v49 = v29[14];
      v50 = v29[15];
      v7 = v55;
      goto LABEL_38;
    }

    if (v22 == 1)
    {
      if (v18 > v18 >> 32)
      {
        goto LABEL_46;
      }

      v26 = sub_1AE23BB7C();
      if (!v26)
      {
        goto LABEL_53;
      }

      v27 = v26;
      v28 = sub_1AE23BBAC();
      if (__OFSUB__(v20, v28))
      {
        goto LABEL_48;
      }

      v29 = (v20 - v28 + v27);
      result = sub_1AE23BB9C();
      if (!v29)
      {
        goto LABEL_54;
      }

      goto LABEL_37;
    }

LABEL_38:
    sub_1AE23BFBC();
    sub_1ADDCC35C(v20, v21);
    v52 = v16[2];
    v51 = v16[3];
    if (v52 >= v51 >> 1)
    {
      v16 = sub_1ADDE4ECC(v51 > 1, v52 + 1, 1, v16);
    }

    v16[2] = v52 + 1;
    (*(v4 + 32))(v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v52, v7, v57);
    v17 += 16;
    if (!--v10)
    {
      return v16;
    }
  }

  if (v22 != 2)
  {
    goto LABEL_42;
  }

  v24 = *(v18 + 16);
  v23 = *(v18 + 24);
  v13 = __OFSUB__(v23, v24);
  v25 = v23 - v24;
  if (!v13)
  {
    if (v25 != 16)
    {
      goto LABEL_42;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_1AE23BB9C();
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_1AE23BB9C();
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

unint64_t sub_1ADDE74FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1AE23E00C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1ADDE7620()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          sub_1AE1CB668();
          sub_1AE23C4EC();
          break;
        case 1:
LABEL_10:
          sub_1AE23C46C();
          break;
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE7704@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto_Value._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

uint64_t sub_1ADDE77B4(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = 0;
  *(v2 + 24) = v5;
  *(v2 + 48) = MEMORY[0x1E69E7CC8];
  *(v2 + 32) = v5;
  *(v2 + 40) = v5;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 40) = *(a2 + 40);

  swift_beginAccess();
  v6 = *(a2 + 48);
  swift_beginAccess();
  v7 = *(v2 + 48);
  *(v2 + 48) = v6;

  *(v2 + 56) = *(a2 + 56);
  v8 = *(v2 + 64);
  *(v2 + 64) = a1;

  *(v2 + 57) = *(a2 + 57);
  return v2;
}

uint64_t sub_1ADDE78C8()
{
  v1 = *(*(v0 + 16) + 64);
  if (*(v0 + 32))
  {
    if (v1)
    {
      v2 = *(*(v0 + 16) + 64);

      return v1;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v1)
  {
    v3 = *(v0 + 24);
    v4 = *(v1 + 16);
    if ((~v4 & 0xF000000000000007) != 0 && (v4 & 0xF000000000000000) == 0x3000000000000000)
    {
      v7 = (v4 & 0xFFFFFFFFFFFFFFFLL);
      v8 = v7[2];
      v6 = v7[3];
      v9 = v7[4];
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *(v6 + 16))
    {
      v1 = *(v6 + 8 * v3 + 32);

      return v1;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1ADDE79C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto_Register._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

uint64_t sub_1ADDE79F8(uint64_t a1)
{
  v10 = 0;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && ((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 8)
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  sub_1AE1CA450();
  sub_1AE23C4FC();
  result = v10;
  if (v1)
  {
  }

  if (v10)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v8 = v7 | 0x4000000000000000;
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;
    return sub_1ADE51B48(v9);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Proto_Timestamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1ADDE7B60(uint64_t a1)
{
  v9 = 0;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if (v3 >> 60)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0xF000000000000007;
  }

  if (!v5)
  {
    v9 = *(v3 + 16);
  }

  sub_1AE1CAC7C();
  sub_1AE23C4FC();
  result = v9;
  if (v1)
  {
  }

  if (v9)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v9;
    v8 = *(a1 + 16);
    *(a1 + 16) = v7;
    return sub_1ADE52174(v8);
  }

  return result;
}

uint64_t sub_1ADDE7CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1AE1BEE18();
        }

        else if (result == 4)
        {
          sub_1AE1C16C4();
        }
      }

      else if (result == 1)
      {
        sub_1AE1C4F00(a2, a1, a3, a4, sub_1AE1CB1F0);
      }

      else if (result == 2)
      {
        sub_1AE1C1620(a2, a1, a3, a4, sub_1AE1CB7C4);
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE7E08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto_Optional._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

uint64_t sub_1ADDE7E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *v3;
    type metadata accessor for Proto_Optional._StorageClass();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    *(v11 + 16) = v12;

    *v3 = v11;
    v9 = v11;
  }

  return sub_1ADDE7F20(v9, a1, a2, a3);
}

uint64_t sub_1ADDE7F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1AE1C4F00(a2, a1, a3, a4, sub_1AE1CB7C4);
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE7FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t)@<X6>, uint64_t (*a8)(void *)@<X7>, void *a9@<X8>)
{
  v58 = a8;
  v50 = a7;
  v51 = a3;
  v9 = a5;
  v62 = a4;
  v12 = a9;
  v49 = a6;
  v13 = *(*(a6 + 8) + 8);
  (*(v13 + 48))(a9, a5, v13);
  v61 = (*(v13 + 16))(v9, v13);
  v14 = *(a1 + 16);

  if (v14)
  {
    v16 = 0;
    v56 = a2 + 32;
    v57 = a1 + 32;
    v55 = v13;
    v53 = v13 + 40;
    v48 = v14 - 1;
    v52 = MEMORY[0x1E69E7CC8];
    v59 = v12;
    v60 = v9;
    v54 = v14;
    while (v16 < *(a1 + 16))
    {
      if (v16 >= *(a2 + 16))
      {
        goto LABEL_25;
      }

      v17 = *(v57 + 8 * v16);
      v18 = *(v56 + 8 * v16);
      type metadata accessor for CRDecoder();
      swift_allocObject();

      v19 = v62;

      v20 = sub_1ADDE77B4(v18, v19);

      v22 = *(v20 + 32);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v17 >= v23;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {

        swift_bridgeObjectRelease_n();
        sub_1ADE42E40();
        v43 = swift_allocError();
        *v44 = 0xD000000000000015;
        *(v44 + 8) = 0x80000001AE25FCF0;
        *(v44 + 16) = 0;
        v64 = v43;
        swift_willThrow();

        return (*(*(v60 - 8) + 8))(v59);
      }

      v25 = v22 + 16 * v17;
      v26 = *(v25 + 32);
      v27 = *(v25 + 40);
      v66[0] = v26;
      v66[1] = v27;
      MEMORY[0x1EEE9AC00](v21);
      v47[2] = v66;

      v28 = v64;
      if (sub_1ADDE8768(v58, v47, v61))
      {
        v64 = v28;
        v40 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66[0] = v40;
        sub_1ADDE88A8(v20, v26, v27, isUniquelyReferenced_nonNull_native);

        v52 = v66[0];
        v42 = v48 == v16++;
        v12 = v59;
        v9 = v60;
        if (v42)
        {
          goto LABEL_20;
        }
      }

      else
      {

        AnyCRDT.init(from:)(v29, &v67);
        v64 = v28;
        v30 = v59;
        if (v28)
        {
          v45 = v60;

          swift_bridgeObjectRelease_n();
          return (*(*(v45 - 8) + 8))(v30);
        }

        ++v16;
        v31 = a2;
        v32 = a1;
        v33 = v67;
        v63 = (*(v55 + 40))(v66, v60);
        v35 = v34;
        v36 = *v34;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v65 = *v35;
        *v35 = 0x8000000000000000;
        v38 = v33;
        a1 = v32;
        a2 = v31;
        sub_1ADEBF524(v38, v26, v27, v37);

        v39 = *v35;
        *v35 = v65;

        v63(v66, 0);

        if (v54 == v16)
        {
          v12 = v59;
          v9 = v60;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC8];
LABEL_20:

    swift_bridgeObjectRelease_n();
    v46 = v64;
    v50(v52, v9, v49);
    v64 = v46;
    if (v46)
    {
      (*(*(v9 - 8) + 8))(v12, v9);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1ADDE84CC()
{
  result = type metadata accessor for FinalizedTimestamp(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1AE23BFEC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ADDE8598(uint64_t a1)
{
  result = type metadata accessor for FinalizedTimestamp(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_1ADDE8628()
{
  v1 = v0;
  v2 = qword_1ED96F278;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v3 = v0 + qword_1ED96F250;
  v4 = sub_1AE23BFEC();
  (*(*(v4 - 8) + 16))(v3, v1 + v2, v4);
  *(v3 + *(type metadata accessor for FinalizedTimestamp(0) + 20)) = 0;

  return sub_1ADDCC3B0();
}

uint64_t sub_1ADDE8768(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1ADDE8850(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AE23E00C() & 1;
  }
}

uint64_t sub_1ADDE88A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ADDD7A10(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1ADF6F78C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1ADDE89F0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1ADDD7A10(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1ADDE8C98(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1ADDE89F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7B8, &qword_1AE24CEC8);
  v38 = a2;
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23CDAC();
      result = sub_1AE23E34C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1ADDE8C98(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1ADDE8D20(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  swift_beginAccess();
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v7;
  swift_beginAccess();
  v8 = *(a1 + 56);

  swift_beginAccess();
  v9 = *(v1 + 56);
  *(v1 + 56) = v8;

  return v1;
}

void *CRDictionary.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for CRDictionaryRef();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1ADDE8628();
  *a1 = result;
  return result;
}

uint64_t static CRStruct_2.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 48))(&v7);
  v6 = v7;
  v2 = v8;
  v3 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  *(v4 + 32) = v6;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;

  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_2.decode(fields:)(Swift::OpaquePointer fields)
{
  v4 = v3;
  v5 = v1;
  v7 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = v29 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v7 + 48))(v35, v5, v7);
  v12 = v35[1];
  v35[7] = v35[5];
  if (!*(fields._rawValue + 2))
  {
    goto LABEL_11;
  }

  v33 = v35[4];
  v13 = v35[0];
  v30 = v35[3];

  v14 = sub_1ADDD7A10(v13, v12);
  v15 = v12;
  v17 = v16;
  v34 = v15;

  if (v17)
  {
    v18 = *(*(fields._rawValue + 7) + 8 * v14);
    v19 = v4;
    v20 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v29[0] = *(v20 + 8);
    swift_retain_n();

    v29[1] = v18;
    (v29[0])(v18, v10, v20);
    v4 = v19;
    if (v19)
    {

LABEL_10:

      return;
    }

    swift_setAtWritableKeyPath();
  }

  if (*(fields._rawValue + 2))
  {
    v21 = v33;

    v22 = sub_1ADDD7A10(v30, v21);
    v24 = v23;

    if (v24)
    {
      v25 = *(*(fields._rawValue + 7) + 8 * v22);
      v26 = AssociatedTypeWitness;
      v27 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v28 = *(v27 + 8);
      swift_retain_n();

      v28(v25, v26, v27);
      if (v4)
      {

        goto LABEL_10;
      }

      swift_setAtWritableKeyPath();
    }

    else
    {
    }
  }

  else
  {
LABEL_11:
  }
}

uint64_t sub_1ADDE935C(uint64_t a1)
{
  v10 = 0;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && ((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 7)
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  sub_1AE1CA5AC();
  sub_1AE23C4FC();
  result = v10;
  if (v1)
  {
  }

  if (v10)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v8 = v7 | 0x3000000000000004;
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;
    return sub_1ADE51B48(v9);
  }

  return result;
}

uint64_t sub_1ADDE9484()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADDE94BC@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
LABEL_8:
    if (v7 != v8)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_1ADE42E40();
    swift_allocError();
    *v9 = 0xD000000000000016;
    *(v9 + 8) = 0x80000001AE25FC80;
    *(v9 + 16) = 0;
    swift_willThrow();

    return sub_1ADDCC35C(a1, a2);
  }

  if (v6)
  {
    v7 = a1;
    v8 = a1 >> 32;
    goto LABEL_8;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  sub_1ADDD86D8(a1, a2);

  result = sub_1ADDCC35C(a1, a2);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_1ADDE95D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  type metadata accessor for CRDecodeContext.DecodingReference();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  swift_beginAccess();
  sub_1ADDD86D8(v5, v6);
  v8 = v3[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v3[2];
  v3[2] = 0x8000000000000000;
  sub_1ADDE9748(v7, v5, v6, isUniquelyReferenced_nonNull_native);
  v3[2] = v11;
  swift_endAccess();
  return (*(*v3 + 184))(a3);
}

uint64_t sub_1ADDE9748(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ADDDE7CC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1ADF6F03C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1ADDE9894(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1ADDDE7CC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1ADDE8C98(v11, a2, a3, a1, v22);

    return sub_1ADDD86D8(a2, a3);
  }
}

uint64_t sub_1ADDE9894(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA060, &qword_1AE241840);
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 56) + 8 * v21);
      v33 = *(*(v5 + 48) + 16 * v21);
      if ((a2 & 1) == 0)
      {
        sub_1ADDD86D8(v33, *(*(v5 + 48) + 16 * v21 + 8));
      }

      v23 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v17 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v17 = v33;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1ADDE9B40(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v64 - v18;
  v19 = sub_1AE23BFEC();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v76 = *a5;
  v24 = v76;
  if ((~v76 & 0xF000000000000007) == 0 || (v76 & 0xC000000000000000) != 0x8000000000000000)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v31 = 0xD000000000000019;
    *(v31 + 8) = 0x80000001AE260230;
    *(v31 + 16) = 0;
    swift_willThrow();
    return v24;
  }

  v69 = a7;
  v70 = a8;
  v71 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v23;
  v66 = a1;
  v67 = a2;
  v68 = a3;
  v25 = v21;
  v26 = a5[8];
  v27 = a5[9];
  if (v26)
  {
    v28 = a5[8];
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  if (v26)
  {
    v29 = a5[9];
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADDCEE40(&v76, v74, &qword_1EB5BA300, &qword_1AE25A270);
  sub_1ADE42C78(v26);

  result = sub_1ADDD6748(v28, v29, v8, v75);
  if (v9)
  {
    sub_1ADDCEDE0(&v76, &qword_1EB5BA300, &qword_1AE25A270);
    return v24;
  }

  v32 = v75[1];
  v34 = a5[5];
  v33 = a5[6];
  v35 = v33 >> 62;
  v64 = v75[0];
  v65 = v25;
  if ((v33 >> 62) > 1)
  {
    if (v35 != 2)
    {
      v37 = v25;
      sub_1ADDCC35C(v34, v33);
      v36 = v72;
      goto LABEL_26;
    }

    v39 = *(v34 + 16);
    v38 = *(v34 + 24);
    v40 = v38 - v39;
    if (!__OFSUB__(v38, v39))
    {
LABEL_23:
      sub_1ADDD86D8(v34, v33);
      if (v40 != 16)
      {
        goto LABEL_16;
      }

LABEL_24:
      v41 = v73;
      sub_1ADDFE348(v34, v33);
      v42 = v65;
      v44 = v72;
      (*(v72 + 56))(v41, 0, 1, v65);
      (*(v44 + 32))(v71, v41, v42);
      goto LABEL_30;
    }

    __break(1u);
LABEL_21:
    if (__OFSUB__(HIDWORD(v34), v34))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v40 = HIDWORD(v34) - v34;
    goto LABEL_23;
  }

  if (v35)
  {
    goto LABEL_21;
  }

  if (BYTE6(v33) == 16)
  {
    goto LABEL_24;
  }

LABEL_16:
  sub_1ADDCC35C(v34, v33);
  v36 = v72;
  v37 = v65;
LABEL_26:
  v43 = v73;
  (*(v36 + 56))(v73, 1, 1, v37);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  if ((*(v36 + 48))(v43, 1, v37) != 1)
  {
    sub_1ADDCEDE0(v43, &qword_1EB5BA2F8, &unk_1AE2422B0);
  }

LABEL_30:
  v45 = (v24 & 0x3FFFFFFFFFFFFFFFLL);
  swift_beginAccess();
  v46 = v45[8];
  v47 = v45[9];
  v48 = v45[10];
  if (v46)
  {
    v49 = v45[8];
    v50 = v45[9];
  }

  else
  {
    v50 = 0;
  }

  if (v46)
  {
    v51 = v45[10];
  }

  else
  {
    v51 = 0xC000000000000000;
  }

  sub_1ADE56F74(v46, v47, v48);
  result = sub_1ADDE94BC(v50, v51, v74);
  v52 = v64;
  if (!*(v8 + 16))
  {
    goto LABEL_40;
  }

  v54 = v74[0];
  v53 = v74[1];

  v55 = v8;
  sub_1ADDE95D4(v69, v74, v8);

  v57 = v66;
  v56 = v67;
  *v66 = v54;
  v57[1] = v53;
  *v56 = v52;
  v56[1] = v32;
  v59 = v71;
  v58 = v72;
  v60 = v65;
  result = (*(v72 + 16))(v68, v71, v65);
  v61 = *(v8 + 16);
  if (v61)
  {
    v62 = *(v58 + 8);
    v63 = *(v55 + 16);

    v62(v59, v60);
    sub_1ADDCEDE0(&v76, &qword_1EB5BA300, &qword_1AE25A270);
    swift_beginAccess();
    v24 = *(v61 + 24);

    return v24;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1ADDEA1AC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  result = swift_beginAccess();
  while (1)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(v4 + 16);
    v10 = 1 << *(v9 + 32);
    v11 = v9 + 64;
    while (1)
    {
      v12 = *(v11 + 8 * v8);
      if (v12)
      {
        break;
      }

      ++v8;
      v7 -= 64;
      if ((v10 + 63) >> 6 == v8)
      {
        return result;
      }
    }

    v13 = __clz(__rbit64(v12));
    if (v13 - v10 == v7)
    {
      return result;
    }

    if (-v7 < 0 || (v14 = v13 - v7, v14 >= v10))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }

    if (((*(v11 + 8 * (v8 & 0x3FFFFFFFFFFFFFFLL)) >> v13) & 1) == 0)
    {
      goto LABEL_28;
    }

    v15 = (*(v9 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v9 + 56) + 8 * v14);
    swift_retain_n();
    sub_1ADDD86D8(v16, v17);
    sub_1ADDD86D8(v16, v17);
    sub_1ADDCC35C(v16, v17);

    sub_1ADDCC35C(v16, v17);
    v19 = v18[2];
    v20 = v18[3];
    swift_beginAccess();
    sub_1ADDEA5BC(v19, v20);
    swift_endAccess();

    v21 = v3;
    (*(*v18 + 96))(v63, v4, a1);
    if (v3)
    {
    }

    v22 = v64;
    if (v64)
    {
      v57 = a1;
      v23 = v63[0];
      v60 = v63[1];
      v24 = v65;
      v25 = v66;
      v26 = v67;
      v27 = v18[2];
      v28 = v18[3];
      swift_beginAccess();
      v61 = v23;

      v62 = v22;

      v59 = v24;
      v29 = v28;

      v58 = v26;

      v30 = *(v4 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *(v4 + 24);
      v32 = v68;
      *(v4 + 24) = 0x8000000000000000;
      v34 = sub_1ADDDE7CC(v27, v28);
      v35 = v32[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_29;
      }

      v38 = v33;
      if (v32[3] >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v41 = v68;
          if (v33)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_1ADF706B8();
          v41 = v68;
          if (v38)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_1ADE17954(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_1ADDDE7CC(v27, v29);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_31;
        }

        v34 = v39;
        v41 = v68;
        if (v38)
        {
LABEL_20:
          v42 = (v41[7] + 48 * v34);
          v55 = v42[2];
          v56 = *v42;
          v54 = v42[3];
          v43 = v42[5];
          v53 = v42[4];
          v44 = v60;
          v45 = v61;
          *v42 = v61;
          v42[1] = v60;
          v46 = v62;
          v42[2] = v62;
          v42[3] = v59;
          v42[4] = v25;
          v42[5] = v58;

          goto LABEL_24;
        }
      }

      v41[(v34 >> 6) + 8] |= 1 << v34;
      v47 = (v41[6] + 16 * v34);
      *v47 = v27;
      v47[1] = v29;
      v48 = (v41[7] + 48 * v34);
      v45 = v61;
      *v48 = v61;
      v48[1] = v60;
      v46 = v62;
      v48[2] = v62;
      v48[3] = v59;
      v48[4] = v25;
      v48[5] = v58;
      v49 = v41[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_30;
      }

      v41[2] = v51;
      v52 = v27;
      v44 = v60;
      sub_1ADDD86D8(v52, v29);
LABEL_24:
      *(v4 + 24) = v41;
      swift_endAccess();
      sub_1ADDDC21C(v45, v44, v46);

      v3 = v21;
      a1 = v57;
    }

    else
    {
    }
  }
}

uint64_t sub_1ADDEA5BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1ADDDE7CC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v13 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1ADF6F03C();
    v10 = v13;
  }

  sub_1ADDCC35C(*(*(v10 + 48) + 16 * v7), *(*(v10 + 48) + 16 * v7 + 8));
  v11 = *(*(v10 + 56) + 8 * v7);
  sub_1ADDEA654(v7, v10);
  *v3 = v10;
  return v11;
}

uint64_t sub_1ADDEA654(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1AE23E31C();
      sub_1ADDD86D8(v11, v12);
      sub_1AE23BECC();
      v13 = sub_1AE23E34C();
      result = sub_1ADDCC35C(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1ADDEA80C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = v2[3];
  v9 = v2[2];
  v10 = v6;
  v7 = *(*a1 + 216);
  sub_1ADDD86D8(v9, v6);
  v7(v5, &v9, a2, v5, *(v4 + 120));
  return sub_1ADDCC35C(v9, v10);
}

uint64_t sub_1ADDEA8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = v6;
  v45 = a4;
  v47 = a3;
  v43 = *(a3 - 8);
  *&v44 = a1;
  v10 = *(v43 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v18 = *v16;
  v17 = v16[1];
  result = swift_beginAccess();
  v20 = *(v5 + 40);
  if (!*(v20 + 16))
  {
    goto LABEL_6;
  }

  v21 = sub_1ADDDE7CC(v18, v17);
  if ((v22 & 1) == 0)
  {

LABEL_6:
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    return result;
  }

  v23 = (*(v20 + 56) + 24 * v21);
  v24 = *v23;
  v25 = v23[1];
  v40 = v7;
  v41 = v24;
  v26 = v23[2];

  v42 = v25;

  swift_beginAccess();
  sub_1ADDD86D8(v18, v17);
  sub_1AE1D1918(0, 0, 0, v18, v17);
  swift_endAccess();
  type metadata accessor for CRDecoder();
  swift_allocObject();

  v27 = sub_1ADDE77B4(v26, a2);

  v28 = *(*(v45 + 16) + 8);
  v29 = *(v28 + 8);

  v31 = v40;
  v29(v30, v47, v28);
  if (v31)
  {
  }

  else
  {
    v32 = v41;

    v33 = v42;

    sub_1ADDD6748(v32, v33, v27, &v46);
    v44 = v46;
    v34 = v43;
    v35 = v47;
    (*(v43 + 16))(v13, v15, v47);
    sub_1ADDD9FE4(v13, v35, &v46);
    v45 = v46;
    v36 = MEMORY[0x1E69E7CC0];
    v40 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v39 = sub_1ADDD9ECC(v36);
    v38 = sub_1ADDDA5BC(v36);
    sub_1ADDD9ECC(v36);

    (*(v34 + 8))(v15, v35);

    result = swift_bridgeObjectRelease_n();
    *a5 = v45;
    *(a5 + 8) = 0;
    *(a5 + 16) = v44;
    v37 = v39;
    *(a5 + 32) = v40;
    *(a5 + 40) = v37;
  }

  return result;
}

uint64_t CROrderedTree.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for TreeNode();
  swift_getWitnessTable();
  CROrderedDictionary.init()(v15);
  v7 = v15[1];
  *a3 = v15[0];
  a3[1] = v7;
  v8 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v9 = sub_1AE18F13C(v8, a1, a2);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  a3[3] = v9;
  v10 = sub_1AE23D11C();
  swift_getTupleTypeMetadata2();
  v11 = sub_1AE23D05C();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1ADDEAF38(v11, v6, v10, WitnessTable);

  a3[2] = v13;
  return result;
}

uint64_t sub_1ADDEAE48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void CROrderedDictionary.init()(void *a1@<X8>)
{
  CRDictionary.init()(&v2);
  a1[1] = v2;
  type metadata accessor for CROrderedSetElement();
  CRSequence.init()(&v2);
  *a1 = v2;
}

uint64_t sub_1ADDEAF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1AE23D0AC())
  {
    sub_1AE23DCEC();
    v13 = sub_1AE23DCDC();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1AE23D0AC();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1AE23D08C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1AE23DAAC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1ADDFFB6C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1ADDEB224(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

double CROrderedTree.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for TreeNode();

  WitnessTable = swift_getWitnessTable();
  CROrderedDictionary.init(from:)(a1, a2, v11, a3, a4, &off_1F23C93F8, WitnessTable, v16);
  if (v5)
  {
  }

  else
  {
    v15[0] = v16[0];
    v15[1] = v16[1];
    sub_1ADE141D4(v15, a2, a4, &v17);

    v14 = v19;
    *a5 = v17;
    result = *&v18;
    *(a5 + 8) = v18;
    *(a5 + 24) = v14;
  }

  return result;
}

uint64_t CROrderedDictionary.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  if (*(a1 + 64))
  {
    v23 = a8;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADDEB4BC(a2, a3, a4, a5, a6, a7, v22);
    swift_setDeallocating();
    v17 = *(inited + 16);

    if (!v8)
    {
      v19 = v22[1];
      v20 = v23;
      *v23 = v22[0];
      v20[1] = v19;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v21 = 0xD000000000000014;
    *(v21 + 8) = 0x80000001AE25FB50;
    *(v21 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1ADDEB4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(sub_1ADDE78C8() + 16);
  if ((~v14 & 0xF000000000000007) != 0 && (v14 & 0xF000000000000000) == 0x8000000000000000)
  {
    v16 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v16 = &off_1ED967FA0;
  }

  v17 = *v16;

  v18 = *(v7 + 16);

  return sub_1ADDEB5C8(v17, v18, a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1ADDEB5C8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v82 = a7;
  v78 = a9;
  v16 = swift_allocObject();
  v83 = v16;
  *(v16 + 16) = 0;
  v79 = (v16 + 16);
  swift_beginAccess();
  v17 = a1[2];
  v106 = a1[1];
  *v107 = v17;
  v18 = a1[4];
  *&v107[16] = a1[3];
  *&v107[32] = v18;
  v108 = a1[5];
  v19 = *(&v106 + 1);
  v20 = MEMORY[0x1E69E7CC0];
  v109 = a2;
  v81 = a1;
  if (*(&v106 + 1))
  {
    v21 = v106;
    v20 = *v107;
    v22 = *&v107[8];
    v23 = *&v107[24];
    v24 = v108;
    v25 = v107[40];
  }

  else
  {
    v21 = 0;
    v22 = 0uLL;
    v25 = 1;
    v19 = MEMORY[0x1E69E7CC0];
    v23 = 0uLL;
    v24 = 0uLL;
  }

  v92 = v25 & 1;
  v101[0] = v21;
  v101[1] = v19;
  v101[2] = v20;
  v102 = v22;
  v103 = v23;
  v104 = v25 & 1;
  v105 = v24;
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v26[5] = a6;
  v27 = a4;
  v28 = v82;
  v26[6] = v82;
  v26[7] = a8;
  v29 = a8;
  v30 = a3;
  v31 = a5;
  v26[8] = v83;
  sub_1ADDCEE40(&v106, &v86, &qword_1EB5BCC30, &qword_1AE2580D0);
  v32 = v109;

  v70[19] = v29;
  sub_1ADE10DC0(v101, v32, sub_1ADE13074, v26, v30, v27, a5, a6, &v93, v28);
  if (v80)
  {
  }

  v76 = 0;
  v77 = v29;
  v75 = a6;
  v80 = v93;
  result = swift_beginAccess();
  if (!*v79)
  {
    __break(1u);
    return result;
  }

  v86.i64[0] = *v79;
  v34 = v81;
  swift_beginAccess();
  v84[0] = *(v34 + 25);
  v35 = v82;
  type metadata accessor for CRDictionaryElement();
  v36 = v30;
  swift_getTupleTypeMetadata2();
  v37 = v27;
  v38 = sub_1AE23D11C();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BCC38, &qword_1AE251830);
  WitnessTable = swift_getWitnessTable();
  v41 = sub_1ADE13A44();
  v42 = sub_1AE23E25C();
  v74 = &v71;
  v79 = v90;
  v89[1] = v90;
  v89[2] = v91;
  v73 = v91;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v70[12] = v36;
  v70[13] = v37;
  v44 = v75;
  v70[14] = v31;
  v70[15] = v75;
  v70[16] = v35;
  v70[17] = v77;
  v70[18] = v109;
  MEMORY[0x1EEE9AC00](v43);
  v72 = v70;
  v70[2] = v36;
  v70[3] = v45;
  v70[4] = v31;
  v70[5] = v44;
  v70[6] = v35;
  v70[7] = v46;
  v70[8] = sub_1ADE1419C;
  v70[9] = v47;
  v86.i64[0] = v38;
  v86.i64[1] = v39;
  v87.i64[0] = WitnessTable;
  v87.i64[1] = v41;
  v48 = sub_1AE23DA9C();
  v49 = type metadata accessor for CROrderedSetElement();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v51 = swift_getWitnessTable();
  v52 = v76;
  v53 = sub_1ADE13AA8(sub_1AE017F50, v72, v48, v49, v50, v51, MEMORY[0x1E69E7288], v89);
  if (v52)
  {
  }

  v54 = v53;

  v55 = v81;
  swift_beginAccess();
  v56 = v55[11];
  *&v88[32] = v55[10];
  *&v88[48] = v56;
  *&v88[64] = v55[12].i64[0];
  v57 = v55[7];
  v86 = v55[6];
  v87 = v57;
  v58 = v55[9];
  *v88 = v55[8];
  *&v88[16] = v58;
  v59 = v86.u64[1];
  if (v86.i64[1])
  {
    v60 = v87;
    v61 = v86.i64[0];
    v62 = *v88;
    v63 = *&v88[8];
    v64 = *&v88[24];
    v65 = *&v88[40];
    v66 = *&v88[56];
  }

  else
  {
    v61 = 0;
    v62 = MEMORY[0x1E69E7CC0];
    v60 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v63 = 0uLL;
    v59 = 0xE000000000000000;
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
  }

  v67 = v109;
  v94[0] = v61;
  v94[1] = v59;
  v95 = v60;
  v96 = v62;
  v97 = v63;
  v98 = v64;
  v99 = v65;
  v100 = v66;
  sub_1ADDCEE40(&v86, v84, &qword_1EB5BCC28, &unk_1AE251820);
  sub_1ADE0C954(v94, v54, v67, &v85);

  v68 = v78;
  v69 = v80;
  *v78 = v85;
  v68[1] = v69;
  return result;
}

uint64_t sub_1ADDEBB98()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADDEBBD0()
{
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1ADDEBC08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA098, &qword_1AE241878);
  v37 = a2;
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_1ADDEE390(v23, v38);
      }

      else
      {
        sub_1ADDE4E28(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_1AE23CD0C();
      sub_1AE23E31C();
      sub_1AE23CDAC();
      v26 = sub_1AE23E34C();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_1ADDEE390(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1ADDEBED8()
{
  result = sub_1AE23CCDC();
  qword_1EB5B8BF8 = result;
  return result;
}

uint64_t sub_1ADDEBF04()
{
  v1 = v0;
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v8 = sub_1ADDEE524(0, &unk_1EB5B8BB8, 0x1E696AD40);
  v20[3] = v8;
  v20[0] = v7;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  if (v8)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v20, v8);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    v12 = MEMORY[0x1EEE9AC00](v9);
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v14, v12);
    v15 = sub_1AE23DFFC();
    (*(v10 + 8))(v14, v8);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_allocWithZone(_TtC9Coherence19CRTTMergeableString);
  v17 = sub_1AE23BF7C();
  v18 = [v16 initWithStorage:v15 uuid:{v17, v20[0]}];
  swift_unknownObjectRelease();

  (*(v3 + 8))(v6, v2);
  *(v1 + 16) = v18;
  return v1;
}

uint64_t sub_1ADDEC1F8(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && ((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 13)
  {
    v6 = v3 & 0xFFFFFFFFFFFFFFBLL;
    v11 = *(v6 + 16);
    v12 = *(v6 + 24);
  }

  sub_1AE1CA198();
  sub_1AE23C4FC();
  result = v11;
  if (v1)
  {
    return sub_1ADE42CB8(v11);
  }

  if (v11)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v11;
    *(v8 + 24) = v12;
    v9 = v8 | 0x6000000000000004;
    v10 = *(a1 + 16);
    *(a1 + 16) = v9;
    return sub_1ADE51B48(v10);
  }

  return result;
}

char *sub_1ADDEC34C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

uint64_t sub_1ADDEC550()
{
  v13 = sub_1AE23D68C();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AE23D65C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1AE23C8CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1ADDEC7C0(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v10;
  v12[1] = sub_1ADDCED94();
  sub_1AE23C8AC();
  v14 = v9;
  sub_1ADE89268(&unk_1ED96B1F0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  sub_1ADDCF010(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80);
  sub_1AE23D8DC();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v13);
  *(v0 + 40) = sub_1AE23D6CC();
  return v0;
}

unint64_t sub_1ADDEC7C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA030, &qword_1AE241810);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA038, &qword_1AE241818);
    v8 = sub_1AE23DCDC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1ADDCEE40(v10, v6, &qword_1EB5BA030, &qword_1AE241810);
      result = sub_1ADDD8A6C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Replica();
      sub_1ADE5223C(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for Replica);
      result = sub_1ADDE5634(&v6[v9], v8[7] + 24 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t Coherence_namespace::decodeSubstrings(unsigned int a1, unsigned int a2, void *a3, uint64_t *a4, void *a5, void *a6, uint64_t a7)
{
  v66 = *MEMORY[0x1E69E9840];
  v9 = a3;
  memset(v58, 0, sizeof(v58));
  v59 = 1065353216;
  if (a1)
  {
    v57 = a4;
    v10 = 0;
    v11 = 0;
    v55 = a1;
    v51 = a1;
    while (1)
    {
      [v9 decodeSubstring:v10];
      *&uu[16] = 0;
      uuid_clear(uu);
      *&uu[20] = 0;
      v12 = [v9 substringCharReplicaWithError:a7];
      if (!v12)
      {
        break;
      }

      Coherence_namespace::TopoReplica::TopoReplica(&v62, v12, 0);
      *uu = v62;
      *&uu[16] = v63;
      *&uu[20] = [v9 substringCharClock];
      *&uu[24] = [v9 substringLength];
      v13 = [v9 substringAddedByCount];
      if (v13 >= 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v15 = [v9 substringAddedByReplica:i withError:a7];
          v16 = [v9 substringAddedByCounter:i];
          v17 = *(*v57 + 8 * v10);
          Coherence_namespace::TopoReplica::TopoReplica(&v60, v15, 0);
          v62 = v60;
          v63 = v61;
          v64 = v16;
          std::vector<Coherence_namespace::TopoID>::push_back[abi:ne200100](v17 + 32, &v62);
        }
      }

      v18 = [v9 substringRemovedAddedByCount];
      if (v18 >= 1)
      {
        for (j = 0; j != v18; ++j)
        {
          v20 = [v9 substringRemovedAddedByReplica:j withError:a7];
          v21 = [v9 substringRemovedAddedByCounter:j];
          v22 = *(*v57 + 8 * v10);
          Coherence_namespace::TopoReplica::TopoReplica(&v60, v20, -1);
          v62 = v60;
          v63 = v61;
          v64 = v21;
          std::vector<Coherence_namespace::TopoID>::push_back[abi:ne200100](v22 + 32, &v62);
        }
      }

      v23 = [v9 substringContentOptions];
      v24 = *(*v57 + 8 * v10);
      if (v23 == 2)
      {
        *(v24 + 84) = -1;
      }

      else
      {
        *(v24 + 84) = v11;
        if (v13 > 0 || v23 == 1)
        {
          v11 += *&uu[24];
          if (v11 > a2)
          {
            NSLog(&cfstr_CorruptMergeab.isa);
            break;
          }
        }
      }

      v25 = *uu;
      *(v24 + 12) = *&uu[12];
      *v24 = v25;
      v26 = [v9 substringChildCount];
      v27 = v26;
      if (v26)
      {
        v28 = 0;
        v29 = 0;
        v54 = v12;
        while (1)
        {
          v30 = [v9 substringChild:v28];
          if (v30 >= v55)
          {
            break;
          }

          v31 = *v57;
          v32 = *(*v57 + 8 * v30);
          *&v62 = v32;
          v33 = *(v31 + 8 * v10);
          v35 = v33[8];
          v34 = v33[9];
          if (v35 >= v34)
          {
            v37 = v33[7];
            v38 = (v35 - v37) >> 3;
            if ((v38 + 1) >> 61)
            {
              std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
            }

            v39 = v34 - v37;
            v40 = v39 >> 2;
            if (v39 >> 2 <= (v38 + 1))
            {
              v40 = v38 + 1;
            }

            if (v39 >= 0x7FFFFFFFFFFFFFF8)
            {
              v41 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v41 = v40;
            }

            if (v41)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>((v33 + 7), v41);
            }

            *(8 * v38) = v32;
            v36 = 8 * v38 + 8;
            v42 = v33[7];
            v43 = v33[8] - v42;
            v44 = (8 * v38 - v43);
            memcpy(v44, v42, v43);
            v45 = v33[7];
            v33[7] = v44;
            v33[8] = v36;
            v33[9] = 0;
            if (v45)
            {
              operator delete(v45);
            }

            v12 = v54;
          }

          else
          {
            *v35 = v32;
            v36 = (v35 + 1);
          }

          v33[8] = v36;
          ++*(v32 + 80);
          std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring * const&>(v58, &v62);
          v29 = ++v28 >= v27;
          if (v27 == v28)
          {
            goto LABEL_32;
          }
        }

        NSLog(&cfstr_CorruptMergeab_0.isa);
      }

      else
      {
LABEL_32:
        v29 = 1;
      }

      if (a5 && !std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::find<Coherence_namespace::TopoSubstring *>(v58, (*v57 + 8 * v10)))
      {
        v29 = v29 & (*a5 == 0);
        *a5 = *(*v57 + 8 * v10);
      }

      if (!a6 || v27)
      {

        if ((v29 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v46 = *a6 == 0;
        *a6 = *(*v57 + 8 * v10);

        if ((v46 & v29 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      if (++v10 >= v51)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    v47 = 0;
  }

  else
  {
    v11 = 0;
LABEL_45:
    v47 = 1;
  }

  if (v11 != a2)
  {
    NSLog(&cfstr_CorruptMergeab_1.isa);
    v47 = 0;
  }

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v58);

  v48 = *MEMORY[0x1E69E9840];
  return v47;
}

void sub_1ADDED05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::find<Coherence_namespace::TopoSubstring *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

id sub_1ADDED2C8(uint64_t a1)
{
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Replica();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96B040 != -1)
  {
    v9 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v9);
  *(&v18 - 2) = a1;
  sub_1AE23D6AC();
  v12 = *(v3 + 16);
  v12(v6, v11, v2);
  v13 = *&v11[*(v7 + 20)];
  v14 = type metadata accessor for ObjCReplica(0);
  v15 = objc_allocWithZone(v14);
  v12(&v15[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v6, v2);
  *&v15[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = v13;
  v19.receiver = v15;
  v19.super_class = v14;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  (*(v3 + 8))(v6, v2);
  sub_1ADDF1F8C(v11);
  return v16;
}

uint64_t sub_1ADDED528()
{
  result = sub_1AE23BFEC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1ADDED684(void *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v119 = a1;
  v118 = sub_1AE23BFEC();
  v5 = *(v118 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v117 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for FinalizedTimestamp(0);
  v8 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded;
  v11 = *(v1 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded);
  v12 = *(v10 + 8);
  v13 = objc_allocWithZone(MEMORY[0x1E696AD40]);

  v14 = sub_1AE23CCDC();

  v15 = [v13 initWithString_];

  v16 = *(v10 + 32);
  v121 = *(v16 + 16);
  if (!v121)
  {
    goto LABEL_67;
  }

  v129 = (v4 + OBJC_IVAR____TtC9Coherence25CRAttributedStringDecoder_scope);
  v17 = v16 + 32;
  v131 = OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder;
  v111[1] = v5 + 16;
  v112 = v5;
  v111[0] = v5 + 32;

  v127 = 0;
  v18 = 0;
  v123 = v15;
  v122 = v16;
  v128 = v4;
  v114 = v16 + 32;
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v124 = v18;
    v19 = (v17 + 40 * v18);
    v125 = *v19;
    v21 = *(v19 + 1);
    v20 = *(v19 + 2);
    v120 = *(v19 + 3);
    v126 = *(v19 + 32);
    v130 = *(v21 + 16);
    v132 = v21;
    if (v130)
    {
      break;
    }

    v24 = MEMORY[0x1E69E7CC8];
    if ((v126 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_63:
    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    v102 = sub_1AE23C9FC();

    v103 = v127;
    v104 = v125;
    [v15 setAttributes:v102 range:{v127, v125}];

    v127 = v103 + v104;
    if (__OFADD__(v103, v104))
    {
      goto LABEL_75;
    }

    v18 = v124 + 1;
    if (v124 + 1 == v121)
    {

LABEL_67:
      v107 = sub_1ADDEE524(0, &unk_1EB5B8BB8, 0x1E696AD40);
      v108 = v119;
      v119[3] = v107;
      *v108 = v15;
      return;
    }
  }

  v113 = v20;
  swift_bridgeObjectRetain_n();
  v22 = 0;
  v23 = (v21 + 40);
  v24 = MEMORY[0x1E69E7CC8];
  do
  {
    if (v22 >= *(v21 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v134 = v24;
    v26 = *(v23 - 2);
    v27 = *v23;
    if (*v23)
    {
      inited = *v23;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v29 = *(v4 + v131);
    type metadata accessor for CRDecoder();
    swift_allocObject();
    v133 = v27;
    swift_retain_n();

    v30 = sub_1ADE0262C(inited, v29);

    v31 = *(v30 + 32);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v32 > v26;
    }

    else
    {
      v33 = 0;
    }

    if (!v33)
    {

      swift_bridgeObjectRelease_n();
      sub_1ADE42E40();
      swift_allocError();
      *v106 = 0xD000000000000015;
      *(v106 + 8) = 0x80000001AE25FCF0;
      *(v106 + 16) = 0;
      swift_willThrow();

      return;
    }

    v34 = v3;
    v35 = v31 + 16 * v26;
    v37 = *(v35 + 32);
    v36 = *(v35 + 40);
    v38 = *v129;
    v39 = v129[1];
    v40 = *(v39 + 8);

    v41 = v40(v38, v39);
    if (!*(v41 + 16) || (v42 = sub_1ADDD7A10(v37, v36), (v43 & 1) == 0))
    {

      v47 = sub_1AE23CCDC();

      v138 = &type metadata for AnyCRValue;

      AnyCRValue.init(from:)(v59, &v137);
      if (v3)
      {
LABEL_66:

        swift_bridgeObjectRelease_n();
        __swift_deallocate_boxed_opaque_existential_0(&v137);
        return;
      }

      sub_1ADDEE390(&v137, v136);
      v60 = v134;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139 = v60;
      v62 = sub_1ADDF1D10(v47);
      v64 = v60[2];
      v65 = (v63 & 1) == 0;
      v55 = __OFADD__(v64, v65);
      v66 = v64 + v65;
      if (v55)
      {
        goto LABEL_70;
      }

      v67 = v63;
      if (v60[3] >= v66)
      {
        v4 = v128;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = v62;
          sub_1ADE1B924();
          v62 = v72;
          v24 = v139;
          if ((v67 & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_6;
        }
      }

      else
      {
        sub_1ADDEBC08(v66, isUniquelyReferenced_nonNull_native);
        v62 = sub_1ADDF1D10(v47);
        v4 = v128;
        if ((v67 & 1) != (v68 & 1))
        {
          goto LABEL_78;
        }
      }

      v24 = v139;
      if ((v67 & 1) == 0)
      {
LABEL_32:
        v24[(v62 >> 6) + 8] |= 1 << v62;
        *(v24[6] + 8 * v62) = v47;
        sub_1ADDEE390(v136, (v24[7] + 32 * v62));
        v69 = v24[2];
        v55 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v55)
        {
          goto LABEL_71;
        }

        v24[2] = v70;

        goto LABEL_7;
      }

LABEL_6:
      v25 = (v24[7] + 32 * v62);
      __swift_destroy_boxed_opaque_existential_1(v25);
      sub_1ADDEE390(v136, v25);

LABEL_7:

      goto LABEL_8;
    }

    v44 = (*(v41 + 56) + 16 * v42);
    v45 = *v44;
    v46 = v44[1];

    v47 = sub_1AE23CCDC();

    v48 = *(v46 + 8);
    v138 = &type metadata for AnyCRValue;
    v48(&v137, v30, v45, v46);
    v3 = v34;
    if (v34)
    {
      goto LABEL_66;
    }

    sub_1ADDEE390(&v137, v136);
    v49 = v134;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v139 = v49;
    v51 = sub_1ADDF1D10(v47);
    v53 = v49[2];
    v54 = (v52 & 1) == 0;
    v55 = __OFADD__(v53, v54);
    v56 = v53 + v54;
    if (v55)
    {
      goto LABEL_72;
    }

    v57 = v52;
    if (v49[3] < v56)
    {
      sub_1ADDEBC08(v56, v50);
      v51 = sub_1ADDF1D10(v47);
      v4 = v128;
      if ((v57 & 1) != (v58 & 1))
      {
        goto LABEL_78;
      }

LABEL_35:
      v24 = v139;
      if ((v57 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }

    v4 = v128;
    if (v50)
    {
      goto LABEL_35;
    }

    v73 = v51;
    sub_1ADE1B924();
    v51 = v73;
    v24 = v139;
    if ((v57 & 1) == 0)
    {
LABEL_40:
      v24[(v51 >> 6) + 8] |= 1 << v51;
      *(v24[6] + 8 * v51) = v47;
      sub_1ADDEE390(v136, (v24[7] + 32 * v51));
      v74 = v24[2];
      v55 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v55)
      {
        goto LABEL_74;
      }

      v24[2] = v75;
      v76 = v47;
      goto LABEL_42;
    }

LABEL_36:
    v71 = (v24[7] + 32 * v51);
    __swift_destroy_boxed_opaque_existential_1(v71);
    sub_1ADDEE390(v136, v71);
LABEL_42:

LABEL_8:
    v21 = v132;
    ++v22;
    v23 += 2;
  }

  while (v130 != v22);

  v15 = v123;
  v16 = v122;
  v17 = v114;
  v20 = v113;
  if (v126)
  {
    goto LABEL_63;
  }

LABEL_46:
  v77 = *(*(v4 + v131) + 24);
  v78 = *(v77 + 16);
  if (v78)
  {
    v79 = v20 >= v78;
  }

  else
  {
    v79 = 1;
  }

  if (v79)
  {
    v109 = *(v4 + v131);

    sub_1ADE42E40();
    swift_allocError();
    *v110 = 0xD000000000000013;
    *(v110 + 8) = 0x80000001AE25FD70;
    *(v110 + 16) = 0;
    swift_willThrow();

    return;
  }

  v80 = v117;
  v81 = v118;
  v82 = v112;
  (*(v112 + 16))(v117, v77 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v20, v118);
  v83 = v115;
  (*(v82 + 32))(v115, v80, v81);
  *(v83 + *(v116 + 20)) = v120;
  v84 = type metadata accessor for ObjCFinalizedTimestamp(0);
  v85 = objc_allocWithZone(v84);
  sub_1ADED0548(v83, v85 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp);
  v135.receiver = v85;
  v135.super_class = v84;
  v86 = objc_msgSendSuper2(&v135, sel_init);
  sub_1ADE173B8(v83);
  if (qword_1EB5B8BF0 != -1)
  {
    swift_once();
  }

  v87 = qword_1EB5B8BF8;
  v138 = v84;
  *&v137 = v86;
  sub_1ADDEE390(&v137, v136);
  v88 = v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v139 = v24;
  v90 = sub_1ADDF1D10(v87);
  v92 = v24[2];
  v93 = (v91 & 1) == 0;
  v55 = __OFADD__(v92, v93);
  v94 = v92 + v93;
  if (v55)
  {
    goto LABEL_76;
  }

  v95 = v91;
  if (v24[3] >= v94)
  {
    if ((v89 & 1) == 0)
    {
      v105 = v90;
      sub_1ADE1B924();
      v90 = v105;
    }

LABEL_58:
    v97 = v139;
    if (v95)
    {
      v98 = (v139[7] + 32 * v90);
      __swift_destroy_boxed_opaque_existential_1(v98);
      sub_1ADDEE390(v136, v98);
    }

    else
    {
      v139[(v90 >> 6) + 8] |= 1 << v90;
      *(v97[6] + 8 * v90) = v87;
      sub_1ADDEE390(v136, (v97[7] + 32 * v90));
      v99 = v97[2];
      v55 = __OFADD__(v99, 1);
      v100 = v99 + 1;
      if (v55)
      {
        goto LABEL_77;
      }

      v97[2] = v100;
      v101 = v87;
    }

    v15 = v123;
    v16 = v122;
    v17 = v114;
    goto LABEL_63;
  }

  sub_1ADDEBC08(v94, v89);
  v90 = sub_1ADDF1D10(v87);
  if ((v95 & 1) == (v96 & 1))
  {
    goto LABEL_58;
  }

LABEL_78:
  type metadata accessor for Key(0);
  sub_1AE23E27C();
  __break(1u);
}

uint64_t sub_1ADDEE234(uint64_t a1)
{
  v1 = *(a1 + 200);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADDEE300()
{
  result = type metadata accessor for FinalizedTimestamp(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_OWORD *sub_1ADDEE390(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1ADDEE3A0()
{
  result = qword_1EB5B8BE0;
  if (!qword_1EB5B8BE0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8BE0);
  }

  return result;
}

unint64_t sub_1ADDEE4D0()
{
  result = qword_1EB5B95B0;
  if (!qword_1EB5B95B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B95B0);
  }

  return result;
}

uint64_t sub_1ADDEE524(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1ADDEE658()
{
  type metadata accessor for CRGlobalContext();
  swift_allocObject();
  result = sub_1ADDEC550();
  qword_1ED96F2F8 = result;
  return result;
}

void *sub_1ADDEE708()
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v1 = *(*(v89 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v89);
  v88 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v87 = &v76 - v4;
  v86 = sub_1AE23BFEC();
  v5 = *(v86 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v86 - 8);
  v78 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = (&v76 - v9);
  v10 = (v0 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v11 = v10[1];
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  v85 = v5;
  if (v12)
  {
    v76 = v10;
    v92 = MEMORY[0x1E69E7CC0];

    sub_1ADE0BC44(0, v12, 0);
    v90 = v92;
    v14 = v11 + 64;
    v15 = -1 << *(v11 + 32);
    v16 = sub_1AE23D8EC();
    v17 = 0;
    v18 = *(v11 + 36);
    v82 = (v5 + 32);
    v83 = (v5 + 16);
    v77 = v11 + 72;
    v79 = v12;
    v80 = v18;
    v81 = v11 + 64;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v11 + 32))
    {
      v20 = v16 >> 6;
      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_43;
      }

      if (v18 != *(v11 + 36))
      {
        goto LABEL_44;
      }

      v91 = v17;
      v21 = v89;
      v22 = *(v89 + 48);
      v23 = *(v11 + 48);
      v24 = type metadata accessor for Replica();
      v25 = v87;
      sub_1ADDDE470(v23 + *(*(v24 - 8) + 72) * v16, v87, type metadata accessor for Replica);
      v26 = *(v11 + 56);
      v27 = sub_1AE23C12C();
      v18 = v11;
      v28 = *(v27 - 8);
      (*(v28 + 16))(v25 + v22, v26 + *(v28 + 72) * v16, v27);
      v12 = v88;
      sub_1ADDD27F0(v25, v88, type metadata accessor for Replica);
      v29 = *(v21 + 48);
      v30 = v86;
      (*(v28 + 32))(v12 + v29, v25 + v22, v27);
      v31 = v84;
      (*v83)(v84, v12, v30);
      sub_1ADDCEDE0(v12, &qword_1EB5BA2A0, &unk_1AE242200);
      v32 = v90;
      v92 = v90;
      v34 = v90[2];
      v33 = v90[3];
      if (v34 >= v33 >> 1)
      {
        sub_1ADE0BC44(v33 > 1, v34 + 1, 1);
        v31 = v84;
        v32 = v92;
      }

      v32[2] = v34 + 1;
      v5 = v85;
      v35 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v90 = v32;
      (*(v85 + 32))(v32 + v35 + *(v85 + 72) * v34, v31, v30);
      v19 = 1 << *(v18 + 32);
      if (v16 >= v19)
      {
        goto LABEL_45;
      }

      v14 = v81;
      v36 = *(v81 + 8 * v20);
      if ((v36 & (1 << v16)) == 0)
      {
        goto LABEL_46;
      }

      v11 = v18;
      v37 = *(v18 + 36);
      LODWORD(v18) = v80;
      if (v80 != v37)
      {
        goto LABEL_47;
      }

      v38 = v36 & (-2 << (v16 & 0x3F));
      if (v38)
      {
        v19 = __clz(__rbit64(v38)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = v20 << 6;
        v40 = v20 + 1;
        v41 = (v77 + 8 * v20);
        while (v40 < (v19 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            sub_1ADDFFBC8(v16, v80, 0);
            v19 = __clz(__rbit64(v42)) + v39;
            goto LABEL_4;
          }
        }

        sub_1ADDFFBC8(v16, v80, 0);
      }

LABEL_4:
      v17 = v91 + 1;
      v16 = v19;
      v12 = v79;
      if (v91 + 1 == v79)
      {

        v13 = v90;
        v10 = v76;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  else
  {
LABEL_21:
    v44 = *v10;
    v45 = *(*v10 + 16);
    v46 = MEMORY[0x1E69E7CC0];
    if (!v45)
    {
LABEL_41:
      v92 = v13;
      sub_1ADE0BF00(v46);

      sub_1ADE09A10(&v92);

      return v92;
    }

    v90 = v13;
    v92 = MEMORY[0x1E69E7CC0];

    sub_1ADE0BC44(0, v45, 0);
    v84 = v92;
    v47 = v44 + 64;
    v48 = -1 << *(v44 + 32);
    v49 = sub_1AE23D8EC();
    v50 = 0;
    v91 = *(v44 + 36);
    v81 = v5 + 32;
    v82 = (v5 + 16);
    v77 = v44 + 72;
    v79 = v45;
    v80 = v44 + 64;
    while ((v49 & 0x8000000000000000) == 0 && v49 < 1 << *(v44 + 32))
    {
      v53 = v49 >> 6;
      if ((*(v47 + 8 * (v49 >> 6)) & (1 << v49)) == 0)
      {
        goto LABEL_49;
      }

      if (v91 != *(v44 + 36))
      {
        goto LABEL_50;
      }

      v83 = v50;
      v54 = v89;
      v55 = *(v89 + 48);
      v56 = *(v44 + 48);
      v57 = type metadata accessor for Replica();
      v58 = v87;
      sub_1ADDDE470(v56 + *(*(v57 - 8) + 72) * v49, v87, type metadata accessor for Replica);
      v59 = *(v44 + 56);
      v60 = sub_1AE23C12C();
      v61 = v44;
      v62 = *(v60 - 8);
      (*(v62 + 16))(v58 + v55, v59 + *(v62 + 72) * v49, v60);
      v63 = v88;
      sub_1ADDD27F0(v58, v88, type metadata accessor for Replica);
      (*(v62 + 32))(v63 + *(v54 + 48), v58 + v55, v60);
      v64 = v86;
      v65 = v78;
      (*v82)(v78, v63, v86);
      sub_1ADDCEDE0(v63, &qword_1EB5BA2A0, &unk_1AE242200);
      v66 = v84;
      v92 = v84;
      v12 = v84[2];
      v67 = v84[3];
      if (v12 >= v67 >> 1)
      {
        sub_1ADE0BC44(v67 > 1, v12 + 1, 1);
        v65 = v78;
        v66 = v92;
      }

      v66[2] = v12 + 1;
      v68 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v84 = v66;
      (*(v85 + 32))(v66 + v68 + *(v85 + 72) * v12, v65, v64);
      v51 = 1 << *(v61 + 32);
      if (v49 >= v51)
      {
        goto LABEL_51;
      }

      v44 = v61;
      v47 = v80;
      v69 = *(v80 + 8 * v53);
      if ((v69 & (1 << v49)) == 0)
      {
        goto LABEL_52;
      }

      if (v91 != *(v44 + 36))
      {
        goto LABEL_53;
      }

      v70 = v69 & (-2 << (v49 & 0x3F));
      if (v70)
      {
        v51 = __clz(__rbit64(v70)) | v49 & 0x7FFFFFFFFFFFFFC0;
        v52 = v79;
      }

      else
      {
        v71 = v53 << 6;
        v72 = v53 + 1;
        v73 = (v77 + 8 * v53);
        v52 = v79;
        while (v72 < (v51 + 63) >> 6)
        {
          v74 = *v73++;
          v12 = v74;
          v71 += 64;
          ++v72;
          if (v74)
          {
            sub_1ADDFFBC8(v49, v91, 0);
            v51 = __clz(__rbit64(v12)) + v71;
            goto LABEL_24;
          }
        }

        sub_1ADDFFBC8(v49, v91, 0);
      }

LABEL_24:
      v50 = v83 + 1;
      v49 = v51;
      if (v83 + 1 == v52)
      {

        v13 = v90;
        v46 = v84;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1ADDEF390(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = type metadata accessor for CROrderedSet.DeduplicatedInfo();
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v17 - v10);
  (*(v8 + 16))(v17 - v10, &v1[*(a1 + 48)], v7);
  v12 = *(v6 - 8);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v17[1] = *v1;
    type metadata accessor for CROrderedSetElement();
    v13 = type metadata accessor for CRSequence();
    return sub_1ADDEF6DC(v13);
  }

  else
  {
    v15 = *v11;
    v16 = *(v12 + 8);

    v16(v11, v6);
    return v15;
  }
}

uint64_t sub_1ADDEF560(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *a2;
  if (*a2 >> 62)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*a2 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v8 = 0xD000000000000014;
    *(v8 + 8) = 0x80000001AE260180;
    *(v8 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();
    sub_1ADDCEE40(&v14, v13, &qword_1EB5BA300, &qword_1AE25A270);
    sub_1ADDCEE40(&v14, v13, &qword_1EB5BA300, &qword_1AE25A270);

    v11 = sub_1ADDE77B4(v6, v5);

    (*(*(*(a4 + 16) + 8) + 8))(v11, a3);
    return sub_1ADDCEDE0(&v14, &qword_1EB5BA300, &qword_1AE25A270);
  }
}

uint64_t sub_1ADDEF6DC(uint64_t a1)
{
  if (*v1)
  {
    v2 = sub_1ADDEFD10();
    v3 = qword_1EB5BD4A8;
    swift_beginAccess();
    v4 = *&v2[v3];
  }

  else
  {
    v5 = *(a1 + 16);
    return sub_1AE23D05C();
  }

  return v4;
}

uint64_t sub_1ADDEF754(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-v9];
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = *(v2 + 224);
    swift_beginAccess();
    v14 = v4[2];
    v14(v10, &v1[v13], v3);
    v15 = *(*v12 + 224);
    swift_beginAccess();
    v14(v8, (v12 + v15), v3);
    v16 = *(*(v2 + 216) + 8);
    v17 = sub_1AE23CCBC();
    v18 = v4[1];
    v18(v8, v3);
    v18(v10, v3);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t static CRExtensible.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v22 - v16;
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v18 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v18, v17);
  CRExtensible.rawValue.getter(v18, v15);
  v19 = *(a6 + 8);
  LOBYTE(a5) = sub_1AE23CCBC();
  v20 = *(v11 + 8);
  v20(v15, AssociatedTypeWitness);
  v20(v17, AssociatedTypeWitness);
  return a5 & 1;
}

uint64_t CRExtensible.rawValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v12, AssociatedTypeWitness);
  }

  else
  {
    (*(v5 + 32))(v9, v12, v4);
    v17 = *(a1 + 24);
    sub_1AE23CF6C();
    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_1ADDEFD10()
{
  v1 = *v0;
  v2 = [*(v0 + qword_1ED96F258) attributedString];
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for CRSequenceStorage();

  return swift_dynamicCastClassUnconditional();
}

void CROrderedSet.subscript.getter(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2[2];
  v8 = sub_1AE23D7CC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v29 = &v25 - v10;
  v11 = *(v7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[3];
  v27 = a2[4];
  v28 = v16;
  v17 = type metadata accessor for CROrderedSetElement();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - v20;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (CROrderedSet.count.getter(a2) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v26 = a3;
  v22 = *(v3 + 8);
  sub_1ADDEF390(a2);
  sub_1AE23D15C();

  (*(v11 + 16))(v15, v21, v7);
  (*(v18 + 8))(v21, v17);
  v30 = v22;
  v23 = type metadata accessor for CRSet();
  v24 = v29;
  CRSet.subscript.getter(v15, v23, v29);
  if ((*(v11 + 48))(v24, 1, v7) != 1)
  {
    (*(v11 + 8))(v15, v7);
    (*(v11 + 32))(v26, v24, v7);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t CRSet.index(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  result = swift_beginAccess();
  v9 = *(v7 + 40);
  if (*(v9 + 16))
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);

    v12 = sub_1ADDFFB6C(a1, v10, v11);
    if (v13)
    {
      v14 = v12;
      v15 = *(v9 + 36);

      *a3 = v14;
      *(a3 + 8) = v15;
      *(a3 + 16) = 0;
      return result;
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
  return result;
}

unint64_t sub_1ADDF0104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1AE23CCBC();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t CROrderedSet.contains(_:)(uint64_t a1, void *a2)
{
  v9 = *(v2 + 8);
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for CRSet();

  LOBYTE(a1) = CRSet.contains(_:)(a1, v7);

  return a1 & 1;
}

BOOL CRSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);

  sub_1AE23CB7C();

  if (v9)
  {
  }

  return v9 != 0;
}

uint64_t CROrderedSet.startIndex.getter(uint64_t a1)
{
  sub_1ADDEF390(a1);

  return 0;
}

uint64_t sub_1ADDF0400@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CROrderedSet.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t CRSet.subscript.getter(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *v2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);

  sub_1AE23CB9C();
}

void CRAttributedString.attributedString.getter()
{
  if (*v0)
  {
    v1 = [*(*v0 + 16) attributedString];
    objc_opt_self();

    swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRAttributedString.Runs.Run.range.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t CRAttributedString.Attributes.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *v3;
  (*(a2 + 40))(*(*a1 + *MEMORY[0x1E69E6CE8] + 8), a2);
  v6 = sub_1AE23CCDC();

  if (!*(v5 + 16) || (v7 = sub_1ADDF1D10(v6), (v8 & 1) == 0))
  {

    goto LABEL_6;
  }

  sub_1ADDE4E28(*(v5 + 56) + 32 * v7, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    memset(v13, 0, sizeof(v13));
    goto LABEL_7;
  }

  (*(*v12 + 80))(v13);

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA00, &qword_1AE2587A0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v10 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t sub_1ADDF0758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v72 = a7;
  v70 = a2;
  v71 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v64 - v15;
  v17 = sub_1AE23BFEC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  v23 = *a1;
  v24 = *(a4 + 24);
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v23 >= v25;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v27 = 0xD000000000000013;
    *(v27 + 8) = 0x80000001AE25FD70;
    *(v27 + 16) = 0;
    swift_willThrow();

    v28 = v74;
    return sub_1ADFAECE8(v28);
  }

  v67 = a5;
  v68 = a6;
  v66 = a8;
  (*(v18 + 16))(v22, v24 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v23, v17, v20);
  v29 = type metadata accessor for ReplicaState();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v34 = type metadata accessor for Replica();
  v35 = *(*(v34 - 8) + 56);
  v69 = a4;
  v35(v32 + v33, 1, 1, v34);
  (*(v18 + 32))(v32 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v22, v17);
  *(v32 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v32 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v35(v16, 1, 1, v34);
  v36 = v69;
  swift_beginAccess();
  sub_1ADDD85E4(v16, v32 + v33);
  swift_endAccess();
  v37 = v74;
  v38 = v74[3];
  v39 = v74[4];
  if (v38)
  {
    v40 = v74[3];
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  if (v38)
  {
    v41 = v74[4];
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v38);

  v42 = v73;
  sub_1ADDD6748(v40, v41, v36, &v75);
  if (v42)
  {

    v28 = v37;
    return sub_1ADFAECE8(v28);
  }

  v73 = v32;
  v64 = *(&v75 + 1);
  v65 = v75;
  v44 = *(v37 + 8);

  v45 = sub_1ADFAECE8(v37);
  v74 = &v64;
  *&v75 = v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = v67;
  v46 = v68;
  *(&v64 - 6) = v67;
  *(&v64 - 5) = v46;
  v49 = v70;
  v48 = v71;
  *(&v64 - 4) = v72;
  *(&v64 - 3) = v49;
  *(&v64 - 2) = v48;
  MEMORY[0x1EEE9AC00](v50);
  *(&v64 - 6) = v47;
  *(&v64 - 5) = v51;
  *(&v64 - 4) = v52;
  *(&v64 - 3) = sub_1ADE0C88C;
  *(&v64 - 2) = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDA28, &qword_1AE253918);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v57 = sub_1ADDF0D68();
  v58 = sub_1ADE08EB0(sub_1AE1801C4, (&v64 - 8), v54, TupleTypeMetadata2, v56, v57, MEMORY[0x1E69E7288], &v79);

  *&v75 = v58;
  sub_1AE23D11C();
  swift_getWitnessTable();
  v59 = v72;
  v60 = sub_1AE23CB2C();
  *&v75 = v47;
  *(&v75 + 1) = &type metadata for CRSetElement;
  v76 = v68;
  v77 = v59;
  v78 = &off_1EE7B4A80;
  type metadata accessor for CRSetRef();
  *&v75 = v65;
  *(&v75 + 1) = v64;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v61 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  v62 = v79;
  v63 = swift_allocObject();
  sub_1ADE0C750(v73, &v75, v60, v62);

  *v66 = v63;
  return result;
}

unint64_t sub_1ADDF0D68()
{
  result = qword_1ED967160;
  if (!qword_1ED967160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BDA28, &qword_1AE253918);
    sub_1ADDCC7D4(qword_1ED969F40, qword_1EB5BBB90, &unk_1AE24EC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED967160);
  }

  return result;
}

unint64_t sub_1ADDF0E2C()
{
  result = qword_1EB5BDD48;
  if (!qword_1EB5BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD48);
  }

  return result;
}

uint64_t sub_1ADDF0E80(void *a1)
{
  v1 = a1;
  v2 = sub_1ADE0A8DC();

  return v2;
}

uint64_t sub_1ADDF1048(uint64_t a1)
{
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A0, &unk_1AE253DA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v31 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - v18;
  sub_1ADED0548(v1 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, &v29 - v18);
  v20 = v4[7];
  v20(v19, 0, 1, v3);
  sub_1ADDCEE40(a1, v33, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (v34)
  {
    type metadata accessor for ObjCFinalizedTimestamp(0);
    if (swift_dynamicCast())
    {
      v21 = v32;
      sub_1ADED0548(v32 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v17);

      v22 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1ADDCEDE0(v33, &qword_1EB5BAA00, &qword_1AE2587A0);
  }

  v22 = 1;
LABEL_6:
  v20(v17, v22, 1, v3);
  v23 = *(v7 + 48);
  sub_1ADDCEE40(v19, v10, &qword_1EB5BA460, &qword_1AE251020);
  sub_1ADDCEE40(v17, &v10[v23], &qword_1EB5BA460, &qword_1AE251020);
  v24 = v4[6];
  if (v24(v10, 1, v3) == 1)
  {
    sub_1ADDCEDE0(v17, &qword_1EB5BA460, &qword_1AE251020);
    sub_1ADDCEDE0(v19, &qword_1EB5BA460, &qword_1AE251020);
    if (v24(&v10[v23], 1, v3) == 1)
    {
      sub_1ADDCEDE0(v10, &qword_1EB5BA460, &qword_1AE251020);
      v25 = 1;
      return v25 & 1;
    }

LABEL_11:
    sub_1ADDCEDE0(v10, &qword_1EB5BA4A0, &unk_1AE253DA0);
    v25 = 0;
    return v25 & 1;
  }

  v26 = v31;
  sub_1ADDCEE40(v10, v31, &qword_1EB5BA460, &qword_1AE251020);
  if (v24(&v10[v23], 1, v3) == 1)
  {
    sub_1ADDCEDE0(v17, &qword_1EB5BA460, &qword_1AE251020);
    sub_1ADDCEDE0(v19, &qword_1EB5BA460, &qword_1AE251020);
    sub_1ADE173B8(v26);
    goto LABEL_11;
  }

  v27 = v30;
  sub_1ADE172E4(&v10[v23], v30);
  if (*(v26 + *(v3 + 20)) == *(v27 + *(v3 + 20)))
  {
    v25 = sub_1AE23BF8C();
  }

  else
  {
    v25 = 0;
  }

  sub_1ADE173B8(v27);
  sub_1ADDCEDE0(v17, &qword_1EB5BA460, &qword_1AE251020);
  sub_1ADDCEDE0(v19, &qword_1EB5BA460, &qword_1AE251020);
  sub_1ADE173B8(v26);
  sub_1ADDCEDE0(v10, &qword_1EB5BA460, &qword_1AE251020);
  return v25 & 1;
}

uint64_t sub_1ADDF14FC()
{
  if (*(v0 + 64))
  {
    type metadata accessor for CRDecoder.CRDTKeyedContainer();
    v1 = swift_allocObject();
    *(v1 + 16) = v0;
  }

  else
  {
    sub_1ADE42E40();
    v2 = swift_allocError();
    *v3 = 0xD00000000000001ELL;
    *(v3 + 8) = 0x80000001AE25FCA0;
    *(v3 + 16) = 0;
    v1 = v2;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1ADDF15BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 32);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  for (i = (v4 + 40); ; i += 2)
  {
    result = *(i - 1);
    if (result == a1 && *i == a2)
    {
      break;
    }

    result = sub_1AE23E00C();
    if (result)
    {
      break;
    }

    if (v5 == ++v8)
    {
      return 0;
    }
  }

  v12 = *(v3 + 64);
  if (v12)
  {
    v13 = *(v12 + 16);
    v14 = (~v13 & 0xF000000000000007) != 0 && (v13 & 0xF000000000000000) == 0x3000000000000000;
    if (!v14 || (v15 = *(*((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 16), v16 = , !v15))
    {
LABEL_20:

      return 0;
    }

    v17 = -v15;
    v18 = 4;
    while (*(v16 + 8 * v18) != v8)
    {
      ++v18;
      if (v17 + v18 == 4)
      {
        goto LABEL_20;
      }
    }

    v19 = *(v3 + 64);
    if (v19)
    {
      v20 = *(v19 + 16);
      if ((~v20 & 0xF000000000000007) != 0 && (v20 & 0xF000000000000000) == 0x3000000000000000)
      {
        v22 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        if ((v18 - 4) < *(v22 + 16))
        {
          v23 = *(v22 + 8 * v18);
          type metadata accessor for CRDecoder();
          swift_allocObject();

          v25 = sub_1ADDE77B4(v24, v3);

          return v25;
        }
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1ADDF1750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = *v4;
  v4[3] = 0;
  v4[4] = 0;
  *(v4 + 40) = 1;
  v10 = objc_allocWithZone(type metadata accessor for CRAttributedStringDecoder());
  v11 = &v10[OBJC_IVAR____TtC9Coherence25CRAttributedStringDecoder_scope];
  *v11 = a3;
  *(v11 + 1) = a4;
  v12 = &v10[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence];
  LOBYTE(v25) = 1;
  *v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 1) = MEMORY[0x1E69E7CC0];
  *(v12 + 2) = v13;
  *(v12 + 3) = v13;
  *(v12 + 4) = 0;
  v12[40] = 1;
  *(v12 + 6) = 0;
  *(v12 + 7) = 0;
  v12[64] = 1;
  v14 = &v10[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
  v15 = *(a1 + 80);
  *(v14 + 4) = *(a1 + 64);
  *(v14 + 5) = v15;
  *(v14 + 12) = *(a1 + 96);
  v16 = *(a1 + 16);
  *v14 = *a1;
  *(v14 + 1) = v16;
  v17 = *(a1 + 48);
  *(v14 + 2) = *(a1 + 32);
  *(v14 + 3) = v17;
  *&v10[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a2;
  v26.receiver = v10;
  v26.super_class = type metadata accessor for CRStringDecoder();

  v18 = objc_msgSendSuper2(&v26, sel_init);
  v25 = 0;
  v19 = [objc_allocWithZone(_TtC9Coherence19CRTTMergeableString) initWithDecoder:v18 error:&v25];
  if (v19)
  {
    v20 = v19;
    v21 = v25;

    v4[2] = v20;
  }

  else
  {
    v22 = v25;
    sub_1AE23BC9C();

    swift_willThrow();

    swift_deallocPartialClassInstance();
  }

  v23 = *MEMORY[0x1E69E9840];
  return v4;
}