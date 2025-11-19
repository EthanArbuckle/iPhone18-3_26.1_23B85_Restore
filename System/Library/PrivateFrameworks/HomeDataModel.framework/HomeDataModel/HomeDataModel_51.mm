uint64_t sub_1D1B2C560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  MEMORY[0x1D3892850](*v2);
  v5 = *(a2 + 16);
  v6 = *(a2 + 40);
  v7 = v2 + *(a2 + 52);
  sub_1D1E676EC();
  v8 = v3 + *(a2 + 56);
  sub_1D1E676EC();
  v9 = v3 + *(a2 + 60);
  sub_1D1E676EC();
  v10 = v3 + *(a2 + 64);
  sub_1D1E676EC();
  v11 = v3 + *(a2 + 68);
  return sub_1D1E676EC();
}

uint64_t sub_1D1B2C624(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1B2C560(v3, a1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B2C66C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a6;
  v60 = *(a2 - 8);
  v11 = *(v60 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v49 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v54 = &v49 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v55 = (&v49 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v49 - v20;
  v63 = v21;
  v64 = v22;
  v65 = v23;
  v66 = v24;
  _s14ElementMetricsV10CodingKeysOMa();
  swift_getWitnessTable();
  v62 = sub_1D1E68DEC();
  v58 = *(v62 - 8);
  v25 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v27 = &v49 - v26;
  v57 = a2;
  v63 = a2;
  v64 = a3;
  v59 = a3;
  v65 = a4;
  v66 = a5;
  v28 = _s14ElementMetricsVMa();
  v50 = *(v28 - 1);
  v29 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v49 - v30);
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v61 = v27;
  v33 = v67;
  sub_1D1E692FC();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v56;
  v34 = v57;
  v36 = v31;
  v37 = v60;
  LOBYTE(v63) = 0;
  v38 = sub_1D1E68D6C();
  v67 = v36;
  *v36 = v38;
  LOBYTE(v63) = 1;
  sub_1D1E68D7C();
  v39 = v67 + v28[13];
  v56 = *(v37 + 32);
  (v56)(v39, v35, v34);
  LOBYTE(v63) = 2;
  v40 = v55;
  sub_1D1E68D7C();
  v41 = v58;
  (v56)(v67 + v28[14], v40, v34);
  LOBYTE(v63) = 3;
  v42 = v54;
  sub_1D1E68D7C();
  v55 = a1;
  (v56)(v67 + v28[15], v42, v34);
  LOBYTE(v63) = 4;
  v43 = v53;
  sub_1D1E68D7C();
  v44 = v28;
  v45 = v67;
  (v56)(v67 + v44[16], v43, v34);
  LOBYTE(v63) = 5;
  v46 = v52;
  sub_1D1E68D7C();
  (*(v41 + 8))(v61, v62);
  (v56)(v45 + v44[17], v46, v34);
  v47 = v50;
  (*(v50 + 16))(v51, v45, v44);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return (*(v47 + 8))(v45, v44);
}

BOOL sub_1D1B2CCE8(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1D1B2C1D8(*a1, *a2);
}

uint64_t sub_1D1B2CD00(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1D1B2C210(*v1);
}

uint64_t sub_1D1B2CD10(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1D1B2C1E8(a1, *v2);
}

uint64_t sub_1D1B2CD20(uint64_t a1, void *a2)
{
  sub_1D1E6920C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1D1B2C1E8(v9, *v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B2CD6C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1D1B2C258(*v1);
}

uint64_t sub_1D1B2CD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1D1B2BFE4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1D1B2CDB0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1D1B2D7C0();
  *a2 = result;
  return result;
}

uint64_t sub_1D1B2CDE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D1B2CE38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D1B2CE94(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1B2C560(v4, a2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B2CF28(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1D1E6939C();
  if (v2)
  {
    v4 = (a1 + 40);
    v5 = v2;
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_1D1E6936C();
      v4 += 2;
      --v5;
    }

    while (v5);
    sub_1D1B2D144();
    return sub_1D1E6933C();
  }

  return result;
}

void sub_1D1B2CFAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    sub_1D1E6939C();
    return;
  }

  sub_1D1B2CF28(a1);
  v3 = sub_1D1E6931C();
  v5 = v3 * 1000000000.0 + v4 * 0.000000001;
  v6 = (a1 + 40);
  v7 = 0.0;
  v8 = v1;
  do
  {
    v9 = *(v6 - 1);
    v10 = *v6;
    v11 = sub_1D1E6931C();
    v13 = v11 * 1000000000.0 + v12 * 0.000000001 - v5;
    v14 = sub_1D1E6931C();
    v7 = v7 + v13 * (v14 * 1000000000.0 + v15 * 0.000000001 - v5);
    v6 += 2;
    --v8;
  }

  while (v8);
  v16 = round(sqrt(v7 / (v1 - 1)));
  if (v16 <= 9.22337204e18)
  {
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -9.22337204e18)
    {
      if (v16 < 9.22337204e18)
      {
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }
}

unint64_t sub_1D1B2D144()
{
  result = qword_1EE07A028;
  if (!qword_1EE07A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A028);
  }

  return result;
}

double sub_1D1B2D198(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    return 0.0;
  }

  if (v1 <= 3)
  {
    v2 = 0;
    v3 = 0.0;
LABEL_8:
    v8 = v1 - v2;
    v9 = (a1 + 8 * v2 + 32);
    do
    {
      v10 = *v9++;
      v3 = v3 + v10;
      --v8;
    }

    while (v8);
    goto LABEL_10;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v5 = (a1 + 48);
  v3 = 0.0;
  v6 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7 = *v5;
    v3 = v3 + *(v5 - 2) + *(v5 - 1) + *v5 + v5[1];
    v5 += 4;
    v6 -= 4;
  }

  while (v6);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

LABEL_10:
  v11 = v3 / v1;
  if (v1 > 3)
  {
    v12 = v1 & 0x7FFFFFFFFFFFFFFCLL;
    v14 = vdupq_lane_s64(*&v11, 0);
    v15 = (a1 + 48);
    v13 = 0.0;
    v16 = v1 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v17 = vsubq_f64(v15[-1], v14);
      v18 = vsubq_f64(*v15, v14);
      v19 = vmulq_f64(v17, v17);
      v20 = vmulq_f64(v18, v18);
      v13 = v13 + v19.f64[0] + v19.f64[1] + v20.f64[0] + v20.f64[1];
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    if (v1 == v12)
    {
      return sqrt(v13 / (v1 - 1));
    }
  }

  else
  {
    v12 = 0;
    v13 = 0.0;
  }

  v21 = v1 - v12;
  v22 = (a1 + 8 * v12 + 32);
  do
  {
    v23 = *v22++;
    v13 = v13 + (v23 - v11) * (v23 - v11);
    --v21;
  }

  while (v21);
  return sqrt(v13 / (v1 - 1));
}

uint64_t sub_1D1B2D2C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1B2D354(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v6 + 8) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v6) + v7;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

void sub_1D1B2D4D8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v8 + 8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v9;
  v11 = a3 >= v7;
  v12 = a3 - v7;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v7 < a2)
  {
    v14 = ~v7 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_39:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v19 = *(v6 + 56);
  v20 = &a1[v8 + 8] & ~v8;

  v19(v20);
}

void *sub_1D1B2D7C8(uint64_t a1, _BYTE *a2, void *a3)
{
  v69 = sub_1D1E66A7C();
  v6 = *(v69 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v69);
  v53 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v65 = v52 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v75 = v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437E0, &unk_1D1E96B80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v52 - v15;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v18 = *(*(updated - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](updated);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v72 = (v52 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v68 = v52 - v25;
  v73 = *(a1 + 16);
  if (v73)
  {
    v26 = 0;
    v67 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v71 = a1 + v67;
    v76 = *(v24 + 72);
    v62 = v6 + 16;
    v52[0] = v6;
    v66 = (v6 + 8);
    v70 = (v24 + 56);
    v59 = (v24 + 48);
    v27 = MEMORY[0x1E69E7CC0];
    v28 = v72;
    v57 = a2;
    v58 = a3;
    v55 = updated;
    v56 = v16;
    v54 = v21;
    while (1)
    {
      v29 = v71 + v76 * v26;
      sub_1D1B32C80(v29, v28, type metadata accessor for StateSnapshot.UpdateType);
      if (swift_getEnumCaseMultiPayload())
      {
        break;
      }

      v33 = *v28;
      if (!*v28)
      {
        goto LABEL_5;
      }

      if ((*a2 & 1) == 0)
      {
        v34 = *a3;

        v60 = v33;
        v35 = [v33 uniqueIdentifier];
        sub_1D1E66A5C();

        v74 = v34;
        if (!*(v34 + 2) || (v36 = v74, v37 = *(v74 + 5), sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8]), v38 = sub_1D1E676DC(), v39 = -1 << *(v36 + 32), v40 = v38 & ~v39, v64 = (v36 + 56), ((*(v36 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v40) & 1) == 0))
        {
LABEL_22:

          v74 = *v66;
          v46 = v69;
          v74(v75, v69);
          v47 = v60;
          v48 = [v60 uniqueIdentifier];
          v49 = v53;
          sub_1D1E66A5C();

          v50 = v65;
          a3 = v58;
          sub_1D1762CB8(v65, v49);

          v74(v50, v46);
          v16 = v56;
          a2 = v57;
          updated = v55;
          v21 = v54;
          goto LABEL_5;
        }

        v61 = ~v39;
        v63 = *(v52[0] + 72);
        v41 = *(v52[0] + 16);
        while (1)
        {
          v42 = v65;
          v43 = v69;
          v41(v65, *(v74 + 6) + v63 * v40, v69);
          sub_1D1B32DCC(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          v44 = sub_1D1E6775C();
          v45 = *v66;
          (*v66)(v42, v43);
          if (v44)
          {
            break;
          }

          v40 = (v40 + 1) & v61;
          if (((*(v64 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v45(v75, v69);
        a2 = v57;
        a3 = v58;
        updated = v55;
        v16 = v56;
        v21 = v54;
        v28 = v72;
        v33 = v60;
      }

      (*v70)(v16, 1, 1, updated);

      if ((*v59)(v16, 1, updated) != 1)
      {
        goto LABEL_6;
      }

      sub_1D1741A30(v16, &qword_1EC6437E0, &unk_1D1E96B80);
LABEL_11:
      if (++v26 == v73)
      {
        return v27;
      }
    }

    sub_1D1B32C20(v28, type metadata accessor for StateSnapshot.UpdateType);
LABEL_5:
    sub_1D1B32C80(v29, v16, type metadata accessor for StateSnapshot.UpdateType);
    (*v70)(v16, 0, 1, updated);
LABEL_6:
    v30 = v68;
    sub_1D1B32BB8(v16, v68, type metadata accessor for StateSnapshot.UpdateType);
    sub_1D1B32BB8(v30, v21, type metadata accessor for StateSnapshot.UpdateType);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1D177E928(0, v27[2] + 1, 1, v27);
    }

    v32 = v27[2];
    v31 = v27[3];
    if (v32 >= v31 >> 1)
    {
      v27 = sub_1D177E928(v31 > 1, v32 + 1, 1, v27);
    }

    v27[2] = v32 + 1;
    sub_1D1B32BB8(v21, v27 + v67 + v32 * v76, type metadata accessor for StateSnapshot.UpdateType);
    v28 = v72;
    goto LABEL_11;
  }

  return MEMORY[0x1E69E7CC0];
}

void *static StateSnapshot.UpdateType.unique<A>(updates:in:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v8 = *(updated - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](updated);
  v54 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v50 = (&v45 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  v61 = a2;
  sub_1D1E66A7C();
  sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v60 = sub_1D1E6757C();
  v55 = a3;
  v56 = a4;
  sub_1D1E67D1C();
  sub_1D1E6769C();
  swift_getWitnessTable();
  sub_1D1E67A9C();
  v52 = v62[0];
  v62[0] = MEMORY[0x1E69E7CD0];
  v19 = MEMORY[0x1E69E7CC8];
  v61 = MEMORY[0x1E69E7CC8];
  v60 = sub_1D18D995C(MEMORY[0x1E69E7CC0]);
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(v8 + 80);
    v51 = a1;
    v22 = a1 + ((v21 + 32) & ~v21);
    v49 = v8;
    v23 = *(v8 + 72);
    v24 = v20;
    v25 = v52;
    do
    {
      sub_1D1B2E5BC(v22, &v61, v62, v25, &v60, a3);
      v22 += v23;
      --v24;
    }

    while (v24);
    v19 = v61;
    a1 = v51;
    v8 = v49;
  }

  v48 = a3;
  v49 = a4;
  v26 = sub_1D1B32324(v19);
  v45 = 0;
  v27 = sub_1D1785BE4(v26);
  v46 = v27;
  v47 = v19;
  v59[0] = 0;
  if (v20)
  {
    v28 = v8;
    v29 = 0;
    v51 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = a1 + v51;
    v31 = *(v28 + 72);
    v32 = MEMORY[0x1E69E7CC0];
    v33 = v52;
    while (1)
    {
      sub_1D1B32C80(v30, v18, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1B32C80(v18, v16, type metadata accessor for StateSnapshot.UpdateType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 13)
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_13;
        }

        v35 = v50;
        sub_1D1B32C80(v16, v50, type metadata accessor for StateSnapshot.UpdateType);
        if (*v35)
        {
          break;
        }
      }

      sub_1D1B32C20(v16, type metadata accessor for StateSnapshot.UpdateType);
      if ((v29 & 1) == 0)
      {
        v29 = 1;
        v59[0] = 1;
        goto LABEL_16;
      }

      v27 = sub_1D1B32C20(v18, type metadata accessor for StateSnapshot.UpdateType);
      v29 = 1;
LABEL_8:
      v30 += v31;
      if (!--v20)
      {
        goto LABEL_22;
      }
    }

LABEL_13:
    sub_1D1B32C20(v16, type metadata accessor for StateSnapshot.UpdateType);
LABEL_16:
    sub_1D1B32BB8(v18, v54, type metadata accessor for StateSnapshot.UpdateType);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D178D7B4(0, *(v32 + 16) + 1, 1);
      v32 = v58;
    }

    v38 = *(v32 + 16);
    v37 = *(v32 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_1D178D7B4(v37 > 1, v38 + 1, 1);
      v32 = v58;
    }

    *(v32 + 16) = v38 + 1;
    v27 = sub_1D1B32BB8(v54, v32 + v51 + v38 * v31, type metadata accessor for StateSnapshot.UpdateType);
    v33 = v52;
    goto LABEL_8;
  }

  v32 = MEMORY[0x1E69E7CC0];
  v33 = v52;
LABEL_22:
  v39 = MEMORY[0x1E69E7CD0];
  v58 = MEMORY[0x1E69E7CD0];
  MEMORY[0x1EEE9AC00](v27);
  v40 = v49;
  *(&v45 - 8) = v48;
  *(&v45 - 7) = v40;
  v41 = v46;
  *(&v45 - 6) = v62;
  *(&v45 - 5) = v41;
  *(&v45 - 4) = v33;
  *(&v45 - 3) = &v58;
  *(&v45 - 2) = &v60;
  v42 = sub_1D1788B20(sub_1D1B32B44, (&v45 - 10), v32);

  v57 = v39;
  v43 = sub_1D1B2D7C8(v42, v59, &v57);

  return v43;
}

uint64_t sub_1D1B2E470(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D1E66A7C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = *a2;
  (*(*(a4 + 16) + 128))(a3);
  sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E6769C();
  swift_unknownObjectRetain();
  return sub_1D1E676BC();
}

uint64_t sub_1D1B2E5BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v86 = a4;
  v87 = a6;
  v92 = a5;
  v90 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A760, &unk_1D1E96B70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v96 = &v82 - v10;
  v98 = _s7MergeIdVMa();
  v95 = *(v98 - 8);
  v11 = *(v95 + 64);
  v12 = MEMORY[0x1EEE9AC00](v98);
  v84 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v82 - v14);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v89 = *(updated - 8);
  v16 = *(v89 + 64);
  v17 = MEMORY[0x1EEE9AC00](updated);
  v93 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v85 = (&v82 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v91 = &v82 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v82 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v82 - v27;
  v29 = sub_1D1E66A7C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v83 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v88 = (&v82 - v35);
  MEMORY[0x1EEE9AC00](v34);
  v37 = (&v82 - v36);
  v97 = a1;
  sub_1D1B2EF60(v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
    v37 = 0;
  }

  else
  {
    v82 = v15;
    (*(v30 + 32))(v37, v28, v29);
    v38 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *a2;
    v40 = v99;
    *a2 = 0x8000000000000000;
    v42 = sub_1D1742188(v37);
    v43 = v40[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v46 = v41;
    if (v40[3] >= v45)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737900();
        v40 = v99;
      }
    }

    else
    {
      sub_1D1725FE8(v45, isUniquelyReferenced_nonNull_native);
      v40 = v99;
      v47 = sub_1D1742188(v37);
      if ((v46 & 1) != (v48 & 1))
      {
        sub_1D1E690FC();
        __break(1u);
        goto LABEL_43;
      }

      v42 = v47;
    }

    v15 = v82;
    v49 = *a2;
    *a2 = v40;

    v50 = *a2;
    if ((v46 & 1) == 0)
    {
      sub_1D16EE93C(&v99);
      v40 = v88;
      (*(v30 + 16))(v88, v37, v29);
      sub_1D19DD7D8(v42, v40, v99, v50);
    }

    v51 = *(v50 + 56);
    v52 = *(v51 + 8 * v42);
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      v40 = sub_1D177E928(0, v40[2] + 1, 1, v40);
      *(v30 + 8 * v42) = v40;
LABEL_34:
      v79 = v40[2];
      v78 = v40[3];
      if (v79 >= v78 >> 1)
      {
        *(v30 + 8 * v42) = sub_1D177E928(v78 > 1, v79 + 1, 1, v40);
      }

      sub_1D1B32C20(v24, _s7MergeIdVMa);
      v80 = *(v30 + 8 * v42);
      *(v80 + 16) = v79 + 1;
      sub_1D1B32BB8(v93, v80 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v79, type metadata accessor for StateSnapshot.UpdateType);
      return sub_1D17169C0(v37);
    }

    *(v51 + 8 * v42) = v54;
    (*(v30 + 8))(v37, v29);
    v37 = sub_1D16EE93C;
  }

  v55 = v97;
  sub_1D1B32C80(v97, v24, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D1B32C20(v24, type metadata accessor for StateSnapshot.UpdateType);
  }

  else
  {
    v61 = *v24;
    if (*v24)
    {
      v62 = [*v24 uniqueIdentifier];
      v63 = v83;
      sub_1D1E66A5C();

      v24 = v88;
      sub_1D1762CB8(v88, v63);

      (*(v30 + 8))(v24, v29);
      v58 = v98;
      v59 = v96;
      goto LABEL_23;
    }
  }

  v24 = v15;
  v56 = v91;
  sub_1D1B32C80(v55, v91, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v58 = v98;
  v59 = v96;
  if (EnumCaseMultiPayload != 13)
  {
    if (EnumCaseMultiPayload)
    {
LABEL_19:
      sub_1D1B32C20(v56, type metadata accessor for StateSnapshot.UpdateType);
      goto LABEL_23;
    }

    v60 = v85;
    sub_1D1B32C80(v56, v85, type metadata accessor for StateSnapshot.UpdateType);
    if (*v60)
    {

      goto LABEL_19;
    }
  }

  sub_1D1B32C20(v56, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v99 = nullsub_2(v86);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E6763C();
  swift_getWitnessTable();
  sub_1D1E681EC();
LABEL_23:
  sub_1D1B2F234(v59);
  if ((*(v95 + 48))(v59, 1, v58) == 1)
  {
    sub_1D1741A30(v59, &qword_1EC64A760, &unk_1D1E96B70);
    return sub_1D17169C0(v37);
  }

  sub_1D1B32BB8(v59, v15, _s7MergeIdVMa);
  sub_1D1B32C80(v55, v93, type metadata accessor for StateSnapshot.UpdateType);
  v64 = v92;
  v65 = *v92;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v64;
  v40 = v99;
  *v64 = 0x8000000000000000;
  v42 = sub_1D171D934(v15);
  v67 = v40[2];
  v68 = (v66 & 1) == 0;
  v69 = v67 + v68;
  if (__OFADD__(v67, v68))
  {
    goto LABEL_39;
  }

  v70 = v66;
  if (v40[3] >= v69)
  {
    if ((v30 & 1) == 0)
    {
      sub_1D173A630();
      v40 = v99;
    }

LABEL_31:
    v73 = v92;
    v74 = *v92;
    *v92 = v40;

    v75 = *v73;
    if ((v70 & 1) == 0)
    {
      sub_1D1716A4C(&v99);
      v76 = v84;
      sub_1D1B32C80(v15, v84, _s7MergeIdVMa);
      sub_1D19DBCF8(v42, v76, v99, v75);
    }

    v30 = v75[7];
    v40 = *(v30 + 8 * v42);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *(v30 + 8 * v42) = v40;
    v24 = v15;
    if (v77)
    {
      goto LABEL_34;
    }

    goto LABEL_41;
  }

  sub_1D172AEA4(v69, v30);
  v40 = v99;
  v71 = sub_1D171D934(v15);
  if ((v70 & 1) == (v72 & 1))
  {
    v42 = v71;
    goto LABEL_31;
  }

LABEL_43:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1B2EF60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21[-1] - v6;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v9 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1B32C80(v2, v11, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v15 = *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48)];

    v16 = sub_1D1E66A7C();
    v17 = *(v16 - 8);
    (*(v17 + 32))(a1, v11, v16);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v13 = *v11;
    if (v11[16])
    {
      sub_1D1AC373C(*v11, *(v11 + 1), v11[16]);
      v14 = sub_1D1E66A7C();
      (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    }

    else
    {
      v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE80, &unk_1D1EA2F80);
      v21[4] = sub_1D17D8EA8(&qword_1EC64AE88, &qword_1EC64AE80, &unk_1D1EA2F80);
      v21[0] = v13;
      sub_1D1B3212C(v21, v7);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    return sub_1D1778308(v7, a1);
  }

  else
  {
    v19 = sub_1D1E66A7C();
    (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    return sub_1D1B32C20(v11, type metadata accessor for StateSnapshot.UpdateType);
  }
}

uint64_t sub_1D1B2F234@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v75 = &v75 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v75 - v11;
  v13 = sub_1D1E66A7C();
  v77 = *(v13 - 8);
  v78 = v13;
  v14 = *(v77 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v75 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v75 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v75 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v75 - v27;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v30 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1B32C80(v1, v32, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 6:
      v55 = *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48)];

      v57 = v77;
      v56 = v78;
      (*(v77 + 32))(v17, v32, v78);
      v58 = v79;
      (*(v57 + 16))(v79, v17, v56);
      (*(v57 + 56))(v58, 0, 1, v56);
      (*(v57 + 8))(v17, v56);
      v59 = _s7MergeIdVMa();
      v51 = v59;
      v60 = (v58 + *(v59 + 20));
      v61 = 0x73656C69666F7270;
      v62 = 0xE800000000000000;
LABEL_11:
      *v60 = v61;
      v60[1] = v62;
      v53 = *(*(v59 - 8) + 56);
      v54 = v58;
      return v53(v54, 0, 1, v51);
    case 4:
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

      v44 = v77;
      v45 = v32;
      v46 = v78;
      (*(v77 + 32))(v17, v45, v78);
      v47 = v79;
      (*(v44 + 56))(v79, 1, 1, v46);
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_1D1E6884C();

      v80 = 0x6572617774666F73;
      v81 = 0xEF2D657461647055;
      v48 = sub_1D1E66A1C();
      MEMORY[0x1D3890F70](v48);

      v49 = v80;
      v50 = v81;
      (*(v44 + 8))(v17, v46);
      v51 = _s7MergeIdVMa();
      v52 = (v47 + *(v51 + 20));
      *v52 = v49;
      v52[1] = v50;
      v53 = *(*(v51 - 8) + 56);
      v54 = v47;
      return v53(v54, 0, 1, v51);
    case 1:
      v34 = *v32;
      v35 = *(v32 + 1);
      v36 = v32[16];
      if (v36 <= 1)
      {
        v65 = v78;
        if (!v36)
        {
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE80, &unk_1D1EA2F80);
          v83 = sub_1D17D8EA8(&qword_1EC64AE88, &qword_1EC64AE80, &unk_1D1EA2F80);
          v80 = v34;

          sub_1D1B3212C(&v80, v12);
          __swift_destroy_boxed_opaque_existential_1(&v80);
          v66 = v77;
          if ((*(v77 + 48))(v12, 1, v65) == 1)
          {
            sub_1D1AC373C(v34, v35, 0);
            v67 = v12;
LABEL_25:
            sub_1D1741A30(v67, &qword_1EC642590, qword_1D1E71260);
            goto LABEL_26;
          }

          (*(v66 + 32))(v28, v12, v65);
          v71 = v79;
          (*(v66 + 16))(v79, v28, v65);
          (*(v66 + 56))(v71, 0, 1, v65);
          sub_1D1AC373C(v34, v35, 0);
          (*(v66 + 8))(v28, v65);
          v72 = _s7MergeIdVMa();
          v51 = v72;
          v74 = (v71 + *(v72 + 20));
          *v74 = 0x68736572666572;
          v74[1] = 0xE700000000000000;
LABEL_30:
          v53 = *(*(v72 - 8) + 56);
          v54 = v71;
          return v53(v54, 0, 1, v51);
        }

        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE70, &qword_1D1E98EE0);
        v83 = sub_1D17D8EA8(&qword_1EC64AE78, &qword_1EC64AE70, &qword_1D1E98EE0);
        v80 = v34;

        sub_1D1B3212C(&v80, v10);
        __swift_destroy_boxed_opaque_existential_1(&v80);
        v69 = v77;
        if ((*(v77 + 48))(v10, 1, v65) == 1)
        {
          sub_1D1AC373C(v34, v35, 1u);
          v67 = v10;
          goto LABEL_25;
        }

        (*(v69 + 32))(v26, v10, v65);
        v58 = v79;
        (*(v69 + 16))(v79, v26, v65);
        (*(v69 + 56))(v58, 0, 1, v65);
        sub_1D1AC373C(v34, v35, 1u);
        (*(v69 + 8))(v26, v65);
        v59 = _s7MergeIdVMa();
        v51 = v59;
        v60 = (v58 + *(v59 + 20));
        v61 = 0x53676E6964616F6CLL;
        v62 = 0xED00007365746174;
      }

      else
      {
        v37 = v78;
        if (v36 != 2)
        {
          if (v36 != 3)
          {
            sub_1D1AC373C(*v32, *(v32 + 1), 4u);
LABEL_26:
            v70 = _s7MergeIdVMa();
            return (*(*(v70 - 8) + 56))(v79, 1, 1, v70);
          }

          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE60, &unk_1D1EA2F70);
          v83 = sub_1D17D8EA8(&qword_1EC64AE68, &qword_1EC64AE60, &unk_1D1EA2F70);
          v80 = v34;

          v38 = v76;
          sub_1D1B3212C(&v80, v76);
          __swift_destroy_boxed_opaque_existential_1(&v80);
          v39 = v77;
          if ((*(v77 + 48))(v38, 1, v37) == 1)
          {
            v40 = v34;
            v41 = v35;
            v42 = 3;
LABEL_21:
            sub_1D1AC373C(v40, v41, v42);
            v67 = v38;
            goto LABEL_25;
          }

          (*(v39 + 32))(v20, v38, v37);
          v71 = v79;
          (*(v39 + 16))(v79, v20, v37);
          (*(v39 + 56))(v71, 0, 1, v37);
          sub_1D1AC373C(v34, v35, 3u);
          (*(v39 + 8))(v20, v37);
          v72 = _s7MergeIdVMa();
          v51 = v72;
          v73 = (v71 + *(v72 + 20));
          *v73 = 0xD000000000000013;
          v73[1] = 0x80000001D1EC4F50;
          goto LABEL_30;
        }

        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE60, &unk_1D1EA2F70);
        v83 = sub_1D17D8EA8(&qword_1EC64AE68, &qword_1EC64AE60, &unk_1D1EA2F70);
        v80 = v34;

        v38 = v75;
        sub_1D1B3212C(&v80, v75);
        __swift_destroy_boxed_opaque_existential_1(&v80);
        v68 = v77;
        if ((*(v77 + 48))(v38, 1, v37) == 1)
        {
          v40 = v34;
          v41 = v35;
          v42 = 2;
          goto LABEL_21;
        }

        (*(v68 + 32))(v23, v38, v37);
        v58 = v79;
        (*(v68 + 16))(v79, v23, v37);
        (*(v68 + 56))(v58, 0, 1, v37);
        sub_1D1AC373C(v34, v35, 2u);
        (*(v68 + 8))(v23, v37);
        v59 = _s7MergeIdVMa();
        v51 = v59;
        v60 = (v58 + *(v59 + 20));
        v61 = 0x656469727265766FLL;
        v62 = 0xEE007365756C6156;
      }

      goto LABEL_11;
  }

  v64 = _s7MergeIdVMa();
  (*(*(v64 - 8) + 56))(v79, 1, 1, v64);
  return sub_1D1B32C20(v32, type metadata accessor for StateSnapshot.UpdateType);
}

uint64_t sub_1D1B2FDF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v108 = a8;
  v97 = a4;
  v98 = a7;
  v101 = a6;
  v102 = a3;
  v104 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437E0, &unk_1D1E96B80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v96 = (&v92 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A760, &unk_1D1E96B70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v92 - v15;
  v17 = _s7MergeIdVMa();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v95 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v94 = &v92 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v92 - v24;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v106 = *(updated - 8);
  v107 = updated;
  v26 = *(v106 + 64);
  v27 = MEMORY[0x1EEE9AC00](updated);
  v93 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v100 = &v92 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v92 - v32;
  v34 = sub_1D1E66A7C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v99 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v92 - v39;
  v105 = a1;
  sub_1D1B2EF60(v33);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_1D1741A30(v33, &qword_1EC642590, qword_1D1E71260);
    goto LABEL_3;
  }

  (*(v35 + 32))(v40, v33, v34);
  v45 = *a2;

  v46 = sub_1D1719534(v40, v45);

  if (v46)
  {
    (*(v35 + 8))(v40, v34);
    v47 = *(v106 + 56);
    v48 = v108;
    v49 = 1;
  }

  else
  {
    if ((sub_1D1719534(v40, v102) & 1) == 0)
    {
      (*(v35 + 8))(v40, v34);
LABEL_3:
      v41 = v105;
      sub_1D1B2F234(v16);
      v42 = (*(v18 + 48))(v16, 1, v17);
      v44 = v106;
      v43 = v107;
      if (v42 == 1)
      {
        sub_1D1741A30(v16, &qword_1EC64A760, &unk_1D1E96B70);
      }

      else
      {
        v50 = v103;
        sub_1D1B32BB8(v16, v103, _s7MergeIdVMa);
        v51 = *v104;

        v52 = sub_1D1719B44(v50, v51);

        if (v52)
        {
          sub_1D1B32C20(v50, _s7MergeIdVMa);
          return (*(v44 + 56))(v108, 1, 1, v43);
        }

        v60 = *v101;
        if (*(*v101 + 16) && (v61 = sub_1D171D934(v50), (v62 & 1) != 0) && *(*(*(v60 + 56) + 8 * v61) + 16) > 1uLL)
        {
          v63 = *(*(v60 + 56) + 8 * v61);

          v65 = v96;
          sub_1D1B30840(v64, v96);

          if ((*(v44 + 48))(v65, 1, v43) != 1)
          {
            v88 = v93;
            sub_1D1B32BB8(v65, v93, type metadata accessor for StateSnapshot.UpdateType);
            v89 = v95;
            sub_1D1B32C80(v50, v95, _s7MergeIdVMa);
            v90 = v94;
            sub_1D1766F54(v94, v89);
            sub_1D1B32C20(v90, _s7MergeIdVMa);
            sub_1D1B32C20(v50, _s7MergeIdVMa);
            v91 = v108;
            sub_1D1B32BB8(v88, v108, type metadata accessor for StateSnapshot.UpdateType);
            v67 = *(v44 + 56);
            v68 = v91;
            return v67(v68, 0, 1, v43);
          }

          sub_1D1B32C20(v50, _s7MergeIdVMa);
          sub_1D1741A30(v65, &qword_1EC6437E0, &unk_1D1E96B80);
        }

        else
        {
          sub_1D1B32C20(v50, _s7MergeIdVMa);
        }
      }

      v66 = v108;
      sub_1D1B32C80(v41, v108, type metadata accessor for StateSnapshot.UpdateType);
      v67 = *(v44 + 56);
      v68 = v66;
      return v67(v68, 0, 1, v43);
    }

    sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676AC();
    v55 = v99;
    v54 = v100;
    if (v109)
    {
      objc_opt_self();
      v56 = swift_dynamicCastObjCClass();
      if (v56)
      {
        v57 = v56;
        (*(v35 + 8))(v40, v34);
        v58 = v108;
        *v108 = v57;
        v59 = v107;
        swift_storeEnumTagMultiPayload();
        return (*(v106 + 56))(v58, 0, 1, v59);
      }

      swift_unknownObjectRelease();
    }

    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v69 = sub_1D1E6709C();
    __swift_project_value_buffer(v69, qword_1EE07B5D8);
    (*(v35 + 16))(v55, v40, v34);
    sub_1D1B32C80(v105, v54, type metadata accessor for StateSnapshot.UpdateType);
    v70 = sub_1D1E6707C();
    v71 = sub_1D1E6833C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v54;
      v73 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v109 = v104;
      *v73 = 136315394;
      sub_1D1B32DCC(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      LODWORD(v103) = v71;
      v74 = sub_1D1E68FAC();
      v75 = v55;
      v77 = v76;
      v78 = *(v35 + 8);
      v78(v75, v34);
      v79 = sub_1D1B1312C(v74, v77, &v109);

      *(v73 + 4) = v79;
      *(v73 + 12) = 2080;
      v80 = v72;
      v81 = StateSnapshot.UpdateType.description.getter();
      v83 = v82;
      sub_1D1B32C20(v80, type metadata accessor for StateSnapshot.UpdateType);
      v84 = sub_1D1B1312C(v81, v83, &v109);

      *(v73 + 14) = v84;
      _os_log_impl(&dword_1D16EC000, v70, v103, "Failed to find home for homeID (%s) from update: %s", v73, 0x16u);
      v85 = v104;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v85, -1, -1);
      MEMORY[0x1D3893640](v73, -1, -1);

      v78(v40, v34);
    }

    else
    {

      sub_1D1B32C20(v54, type metadata accessor for StateSnapshot.UpdateType);
      v86 = *(v35 + 8);
      v86(v55, v34);
      v86(v40, v34);
    }

    v87 = v108;
    sub_1D1B32C80(v105, v108, type metadata accessor for StateSnapshot.UpdateType);
    v47 = *(v106 + 56);
    v48 = v87;
    v49 = 0;
  }

  return v47(v48, v49, 1, v107);
}

uint64_t sub_1D1B30840@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  i = sub_1D1E66A7C();
  v4 = *(i - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](i);
  v8 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v201 = &v187 - v9;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v11 = *(*(updated - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](updated);
  v14 = &v187 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v196 = &v187 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v195 = &v187 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v194 = &v187 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v187 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v187 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v29 = *(a1 + 16);
  if (v29)
  {
    v197 = v27;
    v198 = a2;
    v199 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v30 = &v187 - v28;
    sub_1D1B32C80(v199, &v187 - v28, type metadata accessor for StateSnapshot.UpdateType);
    v193 = v30;
    sub_1D1B32C80(v30, v26, type metadata accessor for StateSnapshot.UpdateType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v202 = updated;
    v203 = v29;
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

        v39 = v198;
        sub_1D1B32C80(v199 + *(v197 + 72) * (v29 - 1), v198, type metadata accessor for StateSnapshot.UpdateType);
        sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
        (*(v197 + 56))(v39, 0, 1, updated);
        return (*(v4 + 8))(v26, i);
      }

      if (EnumCaseMultiPayload != 1)
      {
        sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
        (*(v197 + 56))(v198, 1, 1, updated);
        return sub_1D1B32C20(v26, type metadata accessor for StateSnapshot.UpdateType);
      }

      v32 = *(v26 + 1);
      v33 = v26[16];
      if (v33 <= 1)
      {
        v187 = *v26;
        v188 = v32;
        if (v33)
        {
          v147 = 0;
          v189 = *(v197 + 72);
          v148 = MEMORY[0x1E69E7CC8];
          while (2)
          {
            v149 = v194;
            sub_1D1B32C80(v199 + v189 * v147, v194, type metadata accessor for StateSnapshot.UpdateType);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v150 = *v149;
              v151 = *(v149 + 16);
              if (v151 == 1)
              {
                v191 = *(v149 + 8);
                v192 = v147 + 1;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v204 = v148;
                v153 = *(v150 + 64);
                v196 = (v150 + 64);
                v154 = -1 << *(v150 + 32);
                if (-v154 < 64)
                {
                  v155 = ~(-1 << -v154);
                }

                else
                {
                  v155 = -1;
                }

                v156 = v155 & v153;
                v190 = -1 << *(v150 + 32);
                v195 = (63 - v154) >> 6;

                v157 = 0;
                for (i = v150; ; v150 = i)
                {
                  v164 = v157;
                  v201 = v156;
                  if (!v156)
                  {
                    v165 = v157;
                    while (1)
                    {
                      v164 = v165 + 1;
                      if (__OFADD__(v165, 1))
                      {
                        break;
                      }

                      if (v164 >= v195)
                      {
                        v201 = 0;
                        goto LABEL_106;
                      }

                      v156 = *&v196[8 * v164];
                      ++v165;
                      if (v156)
                      {
                        goto LABEL_95;
                      }
                    }

                    __break(1u);
LABEL_124:
                    __break(1u);
LABEL_125:
                    __break(1u);
LABEL_126:
                    __break(1u);
LABEL_127:
                    __break(1u);
LABEL_128:
                    __break(1u);
LABEL_129:
                    __break(1u);
LABEL_130:
                    __break(1u);
LABEL_131:
                    __break(1u);
LABEL_132:
                    sub_1D18C2060();
                    result = sub_1D1E690FC();
                    __break(1u);
                    return result;
                  }

LABEL_95:
                  v166 = __clz(__rbit64(v156)) | (v164 << 6);
                  v167 = *(*(v150 + 48) + 8 * v166);
                  v168 = *(v150 + 56) + 32 * v166;
                  v170 = *v168;
                  v169 = *(v168 + 8);
                  v171 = *(v168 + 16);
                  v172 = *(v168 + 24);
                  v173 = v167;
                  sub_1D17418FC(v170, v169, v171, v172);
                  v174 = v173;
                  sub_1D17418FC(v170, v169, v171, v172);

                  sub_1D1757A60(v170, v169, v171, v172);
                  if (!v174)
                  {
                    break;
                  }

                  v175 = sub_1D171D368(v174);
                  v177 = v148[2];
                  v178 = (v176 & 1) == 0;
                  v95 = __OFADD__(v177, v178);
                  v179 = v177 + v178;
                  if (v95)
                  {
                    goto LABEL_126;
                  }

                  v180 = v176;
                  if (v148[3] >= v179)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v201 = v175;
                      sub_1D1737AA0();
                      v175 = v201;
                    }
                  }

                  else
                  {
                    sub_1D172629C(v179, isUniquelyReferenced_nonNull_native & 1);
                    v175 = sub_1D171D368(v174);
                    if ((v180 & 1) != (v181 & 1))
                    {
                      goto LABEL_132;
                    }
                  }

                  v156 &= v156 - 1;
                  v148 = v204;
                  if (v180)
                  {
                    v158 = v175;

                    v159 = v148[7] + 32 * v158;
                    v160 = *v159;
                    v161 = *(v159 + 8);
                    v162 = *(v159 + 16);
                    *v159 = v170;
                    *(v159 + 8) = v169;
                    *(v159 + 16) = v171;
                    v163 = *(v159 + 24);
                    *(v159 + 24) = v172;
                    sub_1D1757A60(v160, v161, v162, v163);
                  }

                  else
                  {
                    v204[(v175 >> 6) + 8] |= 1 << v175;
                    *(v148[6] + 8 * v175) = v174;
                    v182 = v148[7] + 32 * v175;
                    *v182 = v170;
                    *(v182 + 8) = v169;
                    *(v182 + 16) = v171;
                    *(v182 + 24) = v172;
                    v183 = v148[2];
                    v95 = __OFADD__(v183, 1);
                    v184 = v183 + 1;
                    if (v95)
                    {
                      goto LABEL_130;
                    }

                    v148[2] = v184;
                  }

                  isUniquelyReferenced_nonNull_native = 1;
                  v157 = v164;
                }

LABEL_106:
                v185 = i;
                sub_1D1716918();
                sub_1D1AC373C(v185, v191, 1u);
                updated = v202;
                v147 = v192;
                if (v192 != v203)
                {
                  continue;
                }

                sub_1D1AC373C(v187, v188, 1u);
                sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
                v186 = v198;
                *v198 = v148;
                v186[1] = 0;
                *(v186 + 16) = 1;
                swift_storeEnumTagMultiPayload();
                v57 = *(v197 + 56);
                v58 = v186;
                v59 = 0;
                return v57(v58, v59, 1, updated);
              }

              sub_1D1AC373C(*v149, *(v149 + 8), v151);
              sub_1D1AC373C(v187, v188, 1u);
              sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
            }

            else
            {
              sub_1D1AC373C(v187, v188, 1u);
              sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);

              sub_1D1B32C20(v149, type metadata accessor for StateSnapshot.UpdateType);
            }

            break;
          }
        }

        else
        {
          v204 = MEMORY[0x1E69E7CD0];
          v53 = *(v197 + 72);
          v54 = v199;
          while (1)
          {
            sub_1D1B32C80(v54, v23, type metadata accessor for StateSnapshot.UpdateType);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              sub_1D1AC373C(v187, v188, 0);

              sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
              goto LABEL_110;
            }

            v55 = *v23;
            if (v23[16])
            {
              break;
            }

            sub_1D1930AA4(v55);
            v54 += v53;
            if (!--v29)
            {
              sub_1D1AC373C(v187, v188, 0);
              sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
              v56 = v198;
              *v198 = v204;
              v56[1] = 0;
              *(v56 + 16) = 0;
              swift_storeEnumTagMultiPayload();
              v57 = *(v197 + 56);
              v58 = v56;
              v59 = 0;
              return v57(v58, v59, 1, updated);
            }
          }

          sub_1D1AC373C(v55, *(v23 + 1), v23[16]);
          sub_1D1AC373C(v187, v188, 0);

          v23 = v193;
LABEL_110:
          sub_1D1B32C20(v23, type metadata accessor for StateSnapshot.UpdateType);
        }

        v58 = v198;
        v57 = *(v197 + 56);
        goto LABEL_121;
      }

      v34 = v199;
      if (v33 == 2)
      {
        v187 = *v26;
        v188 = v32;
        v61 = 0;
        v201 = MEMORY[0x1E69E7CC8];
        v190 = *(v197 + 72);
        v35 = v198;
        while (2)
        {
          v62 = v195;
          sub_1D1B32C80(v34 + v190 * v61, v195, type metadata accessor for StateSnapshot.UpdateType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v63 = *v62;
            v64 = *(v62 + 16);
            if (v64 == 2)
            {
              v192 = *(v62 + 8);
              v194 = v61 + 1;
              v65 = v201;
              v66 = swift_isUniquelyReferenced_nonNull_native();
              v204 = v65;
              v67 = *(v63 + 64);
              v196 = (v63 + 64);
              v68 = -1 << *(v63 + 32);
              if (-v68 < 64)
              {
                v69 = ~(-1 << -v68);
              }

              else
              {
                v69 = -1;
              }

              v70 = v69 & v67;
              v191 = -1 << *(v63 + 32);
              v71 = (63 - v68) >> 6;

              v72 = 0;
              for (i = v63; ; v63 = i)
              {
                v79 = v70;
                v80 = v72;
                if (!v70)
                {
                  v81 = v72;
                  do
                  {
                    v80 = v81 + 1;
                    if (__OFADD__(v81, 1))
                    {
                      goto LABEL_124;
                    }

                    if (v80 >= v71)
                    {
                      goto LABEL_52;
                    }

                    v79 = *&v196[8 * v80];
                    ++v81;
                  }

                  while (!v79);
                }

                v82 = __clz(__rbit64(v79)) | (v80 << 6);
                v83 = *(*(v63 + 48) + 8 * v82);
                v84 = *(v63 + 56) + 24 * v82;
                v86 = *v84;
                v85 = *(v84 + 8);
                v87 = *(v84 + 16);
                v88 = v83;
                sub_1D1741830(v86, v85, v87);
                v89 = v88;
                sub_1D1741830(v86, v85, v87);

                sub_1D1778940(v86, v85, v87);
                if (!v89)
                {
                  break;
                }

                v90 = v201;
                v91 = sub_1D171D368(v89);
                v93 = *(v90 + 2);
                v94 = (v92 & 1) == 0;
                v95 = __OFADD__(v93, v94);
                v96 = v93 + v94;
                if (v95)
                {
                  goto LABEL_127;
                }

                v97 = v92;
                if (*(v90 + 3) >= v96)
                {
                  if ((v66 & 1) == 0)
                  {
                    v201 = v91;
                    sub_1D1737914();
                    v91 = v201;
                  }
                }

                else
                {
                  sub_1D1725FFC(v96, v66 & 1);
                  v91 = sub_1D171D368(v89);
                  if ((v97 & 1) != (v98 & 1))
                  {
                    goto LABEL_132;
                  }
                }

                v70 = (v79 - 1) & v79;
                v99 = v204;
                v201 = v204;
                if (v97)
                {
                  v73 = v204;
                  v74 = v91;

                  v75 = v73[7] + 24 * v74;
                  v76 = *v75;
                  v77 = *(v75 + 8);
                  *v75 = v86;
                  *(v75 + 8) = v85;
                  v78 = *(v75 + 16);
                  *(v75 + 16) = v87;
                  sub_1D1778940(v76, v77, v78);
                }

                else
                {
                  v204[(v91 >> 6) + 8] |= 1 << v91;
                  *(v99[6] + 8 * v91) = v89;
                  v100 = v99[7] + 24 * v91;
                  *v100 = v86;
                  *(v100 + 8) = v85;
                  *(v100 + 16) = v87;
                  v101 = v99[2];
                  v95 = __OFADD__(v101, 1);
                  v102 = v101 + 1;
                  if (v95)
                  {
                    goto LABEL_129;
                  }

                  v99[2] = v102;
                }

                v66 = 1;
                v72 = v80;
              }

LABEL_52:
              v103 = i;
              sub_1D1716918();
              sub_1D1AC373C(v103, v192, 2u);
              updated = v202;
              v61 = v194;
              v35 = v198;
              v34 = v199;
              if (v194 != v203)
              {
                continue;
              }

              v104 = v198;
              v105 = 2;
              sub_1D1AC373C(v187, v188, 2u);
              sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
              *v104 = v201;
              goto LABEL_80;
            }

            sub_1D1AC373C(*v62, *(v62 + 8), v64);
            sub_1D1AC373C(v187, v188, 2u);
            sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
LABEL_117:

            goto LABEL_118;
          }

          break;
        }

        sub_1D1AC373C(v187, v188, 2u);
        sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
      }

      else
      {
        v35 = v198;
        if (v33 == 4)
        {
          sub_1D1AC373C(*v26, v32, 4u);
          sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
LABEL_118:
          v57 = *(v197 + 56);
          v58 = v35;
LABEL_121:
          v59 = 1;
          return v57(v58, v59, 1, updated);
        }

        v187 = *v26;
        v188 = v32;
        v106 = 0;
        v107 = MEMORY[0x1E69E7CC8];
        v190 = *(v197 + 72);
        v62 = v196;
        while (2)
        {
          sub_1D1B32C80(v34 + v190 * v106, v62, type metadata accessor for StateSnapshot.UpdateType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v108 = *v62;
            v109 = *(v62 + 16);
            if (v109 == 3)
            {
              v192 = *(v62 + 8);
              v194 = v106 + 1;
              v110 = swift_isUniquelyReferenced_nonNull_native();
              v201 = v107;
              v204 = v107;
              v111 = *(v108 + 64);
              v195 = v108 + 64;
              v112 = -1 << *(v108 + 32);
              if (-v112 < 64)
              {
                v113 = ~(-1 << -v112);
              }

              else
              {
                v113 = -1;
              }

              v114 = v113 & v111;
              v191 = -1 << *(v108 + 32);
              v115 = (63 - v112) >> 6;

              v116 = 0;
              for (i = v108; ; v108 = i)
              {
                v123 = v114;
                v124 = v116;
                if (!v114)
                {
                  v125 = v116;
                  do
                  {
                    v124 = v125 + 1;
                    if (__OFADD__(v125, 1))
                    {
                      goto LABEL_125;
                    }

                    if (v124 >= v115)
                    {
                      goto LABEL_78;
                    }

                    v123 = *(v195 + 8 * v124);
                    ++v125;
                  }

                  while (!v123);
                }

                v126 = __clz(__rbit64(v123)) | (v124 << 6);
                v127 = *(*(v108 + 48) + 8 * v126);
                v128 = *(v108 + 56) + 24 * v126;
                v130 = *v128;
                v129 = *(v128 + 8);
                v131 = *(v128 + 16);
                v132 = v127;
                sub_1D1741830(v130, v129, v131);
                v133 = v132;
                sub_1D1741830(v130, v129, v131);

                sub_1D1778940(v130, v129, v131);
                if (!v133)
                {
                  break;
                }

                v134 = v201;
                v135 = sub_1D171D368(v133);
                v137 = *(v134 + 2);
                v138 = (v136 & 1) == 0;
                v95 = __OFADD__(v137, v138);
                v139 = v137 + v138;
                if (v95)
                {
                  goto LABEL_128;
                }

                v140 = v136;
                if (*(v134 + 3) >= v139)
                {
                  if ((v110 & 1) == 0)
                  {
                    v201 = v135;
                    sub_1D1737914();
                    v135 = v201;
                  }
                }

                else
                {
                  sub_1D1725FFC(v139, v110 & 1);
                  v135 = sub_1D171D368(v133);
                  if ((v140 & 1) != (v141 & 1))
                  {
                    goto LABEL_132;
                  }
                }

                v114 = (v123 - 1) & v123;
                v142 = v204;
                v201 = v204;
                if (v140)
                {
                  v117 = v204;
                  v118 = v135;

                  v119 = v117[7] + 24 * v118;
                  v120 = *v119;
                  v121 = *(v119 + 8);
                  *v119 = v130;
                  *(v119 + 8) = v129;
                  v122 = *(v119 + 16);
                  *(v119 + 16) = v131;
                  sub_1D1778940(v120, v121, v122);
                }

                else
                {
                  v204[(v135 >> 6) + 8] |= 1 << v135;
                  *(v142[6] + 8 * v135) = v133;
                  v143 = v142[7] + 24 * v135;
                  *v143 = v130;
                  *(v143 + 8) = v129;
                  *(v143 + 16) = v131;
                  v144 = v142[2];
                  v95 = __OFADD__(v144, 1);
                  v145 = v144 + 1;
                  if (v95)
                  {
                    goto LABEL_131;
                  }

                  v142[2] = v145;
                }

                v110 = 1;
                v116 = v124;
              }

LABEL_78:
              v146 = i;
              sub_1D1716918();
              sub_1D1AC373C(v146, v192, 3u);
              updated = v202;
              v106 = v194;
              v35 = v198;
              v34 = v199;
              v62 = v196;
              v107 = v201;
              if (v194 != v203)
              {
                continue;
              }

              v104 = v198;
              v105 = 3;
              sub_1D1AC373C(v187, v188, 3u);
              sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
              *v104 = v107;
LABEL_80:
              v104[1] = 0;
              *(v104 + 16) = v105;
              swift_storeEnumTagMultiPayload();
              v57 = *(v197 + 56);
              v58 = v104;
              v59 = 0;
              return v57(v58, v59, 1, updated);
            }

            sub_1D1AC373C(*v62, *(v62 + 8), v109);
            sub_1D1AC373C(v187, v188, 3u);
            sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
            goto LABEL_117;
          }

          break;
        }

        sub_1D1AC373C(v187, v188, 3u);
        sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
      }

      v35 = v198;
      sub_1D1B32C20(v62, type metadata accessor for StateSnapshot.UpdateType);
      goto LABEL_118;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);
    v41 = *&v26[*(v40 + 48)];

    v42 = *(v4 + 32);
    v43 = v26;
    v44 = i;
    v42(v201, v43, i);
    v204 = MEMORY[0x1E69E7CD0];
    v45 = (v4 + 8);
    v46 = v44;
    v47 = *(v197 + 72);
    v48 = v199;
    while (1)
    {
      sub_1D1B32C80(v48, v14, type metadata accessor for StateSnapshot.UpdateType);
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        (*v45)(v201, v46);
        sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
        goto LABEL_27;
      }

      v49 = *&v14[*(v40 + 48)];
      v42(v8, v14, v46);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        break;
      }

      sub_1D1930C84(v49);
      v46 = i;
      (*v45)(v8, i);
      v48 += v47;
      if (!--v203)
      {
        sub_1D1B32C20(v193, type metadata accessor for StateSnapshot.UpdateType);
        v50 = *(v40 + 48);
        v51 = v198;
        v42(v198, v201, v46);
        *(v51 + v50) = v204;
        v52 = v202;
        swift_storeEnumTagMultiPayload();
        return (*(v197 + 56))(v51, 0, 1, v52);
      }
    }

    v60 = *v45;
    (*v45)(v8, v46);

    v60(v201, v46);
    v14 = v193;
LABEL_27:
    sub_1D1B32C20(v14, type metadata accessor for StateSnapshot.UpdateType);
    return (*(v197 + 56))(v198, 1, 1, v202);
  }

  else
  {
    v36 = *(v27 + 56);

    return v36(a2, 1, 1, updated);
  }
}

uint64_t sub_1D1B31B38()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  sub_1D1E6920C();
  sub_1D17783E0(v1, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  v11 = (v1 + *(_s7MergeIdVMa() + 20));
  v12 = *v11;
  v13 = v11[1];
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B31D38(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - v12;
  sub_1D17783E0(v4, &v18 - v12);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D1E6922C();
    sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v6 + 8))(v9, v5);
  }

  v14 = (v4 + *(a2 + 20));
  v15 = *v14;
  v16 = v14[1];
  return sub_1D1E678EC();
}

uint64_t sub_1D1B31F24(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - v12;
  sub_1D1E6920C();
  sub_1D17783E0(v4, v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D1E6922C();
    sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v6 + 8))(v9, v5);
  }

  v14 = (v4 + *(a2 + 20));
  v15 = *v14;
  v16 = v14[1];
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B3212C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1E67A7C();
  if (v12)
  {
    v4 = [v12 service];
    if (v4 && (v5 = v4, v6 = [v4 accessory], v5, v6) && (v7 = objc_msgSend(v6, sel_home), v6, v7))
    {
      v8 = [v7 uniqueIdentifier];

      sub_1D1E66A5C();
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_1D1E66A7C();
  return (*(*(v10 - 8) + 56))(a2, v9, 1, v10);
}

BOOL sub_1D1B32290(id *a1)
{
  v1 = [*a1 service];
  v2 = [v1 accessory];

  v3 = [v2 home];
  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t sub_1D1B32324(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D1B32484(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_1D1B3273C(v9, v4, v2);
  result = MEMORY[0x1D3893640](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B32484(unint64_t *a1, uint64_t a2, void *a3)
{
  v30 = a2;
  v31 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE90, &qword_1D1E98EE8);
  v4 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - v5;
  v39 = sub_1D1E66A7C();
  v6 = *(*(v39 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v39);
  v37 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v8;
  v10 = 0;
  v42 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v32 = 0;
  v33 = (v14 + 63) >> 6;
  v36 = v8 + 16;
  v34 = v12;
  v35 = v8 + 8;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v43 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v10 << 6);
    v21 = v42;
    v22 = v37;
    v23 = v38;
    v24 = *(v38 + 16);
    v25 = v39;
    v24(v37, v42[6] + *(v38 + 72) * v20, v39);
    v26 = v20;
    v27 = *(v21[7] + 8 * v20);
    v28 = v40;
    v24(v40, v22, v25);
    *(v28 + *(v41 + 48)) = v27;
    sub_1D1741A30(v28, &qword_1EC64AE90, &qword_1D1E98EE8);
    result = (*(v23 + 8))(v22, v25);
    v16 = v43;
    if (v27 >= 6)
    {
      *(v31 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
        return sub_1D188D47C(v31, v30, v32, v42);
      }
    }
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v33)
    {
      return sub_1D188D47C(v31, v30, v32, v42);
    }

    v19 = v34[v10];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v43 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1B3273C(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D1B32484(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1D1B327B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a2 + 32) = v6;
  *a2 = v2;
  *(a2 + 8) = v3;
  v7 = v2;

  return sub_1D17418FC(v3, v4, v5, v6);
}

uint64_t sub_1D1B32814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v28 - v16;
  v18 = *(v15 + 56);
  sub_1D17783E0(a1, &v28 - v16);
  sub_1D17783E0(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1D17783E0(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1D1B32DCC(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v21 = sub_1D1E6775C();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
      if (v21)
      {
        goto LABEL_9;
      }

LABEL_7:
      v20 = 0;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_1D1741A30(v17, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_7;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
LABEL_9:
  v23 = *(_s7MergeIdVMa() + 20);
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if (v24 == *v26 && v25 == v26[1])
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_1D1E6904C();
  }

  return v20 & 1;
}

uint64_t _s7MergeIdVMa()
{
  result = qword_1EE07ABA0;
  if (!qword_1EE07ABA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1B32BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B32C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B32C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D1B32D10()
{
  sub_1D177868C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D1B32DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B32E14()
{
  sub_1D1E678EC();
}

uint64_t sub_1D1B32EF0()
{
  sub_1D1E678EC();
}

uint64_t sub_1D1B33020()
{
  sub_1D1E678EC();
}

uint64_t sub_1D1B33174()
{
  sub_1D1E678EC();
}

uint64_t type metadata accessor for AnyStatusItem()
{
  result = qword_1EC64AEB0;
  if (!qword_1EC64AEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnyStatusItem.umbrellaCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AnyStatusItem();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AnyStatusItem.statusCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AnyStatusItem();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1D1B334C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AnyStatusItem.color.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AnyStatusItem() + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

double sub_1D1B3357C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(a3 + 24))(a2, a3);
  v8 = *(a3 + 32);
  v9 = type metadata accessor for AnyStatusItem();
  v10 = a4 + v9[5];
  v8(a2, a3);
  (*(a3 + 48))(&v14 + 1, a2, a3);
  *(a4 + v9[6]) = BYTE1(v14);
  (*(a3 + 56))(&v14, a2, a3);
  *(a4 + v9[7]) = v14;
  *(a4 + v9[8]) = (*(a3 + 64))(a2, a3);
  v11 = a4 + v9[9];
  (*(a3 + 72))(a2, a3);
  (*(a3 + 80))(v13, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = v13[0];
  *(a4 + v9[10]) = *v13;
  return result;
}

uint64_t sub_1D1B337C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t AnyStatusItem.hash(into:)()
{
  v1 = type metadata accessor for IconTextValueStringDataHolder();
  v2 = (v0 + *(v1 + 24));
  v3 = *v2;
  v4 = v2[1];
  sub_1D1E678EC();
  v5 = (v0 + *(v1 + 28));
  if (v5[1])
  {
    v6 = *v5;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v7 = type metadata accessor for AnyStatusItem();
  if (*(v0 + v7[6]) > 3u)
  {
    *(v0 + v7[6]);
  }

  else if (*(v0 + v7[6]) <= 1u)
  {
    *(v0 + v7[6]);
  }

  sub_1D1E678EC();

  MEMORY[0x1D3892850](*(v0 + v7[7]));
  return MEMORY[0x1D3892850](*(v0 + v7[8]));
}

uint64_t AnyStatusItem.hashValue.getter()
{
  sub_1D1E6920C();
  AnyStatusItem.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B339AC()
{
  sub_1D1E6920C();
  AnyStatusItem.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B339F0()
{
  sub_1D1E6920C();
  AnyStatusItem.hash(into:)();
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel13AnyStatusItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconTextValueStringDataHolder();
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 28);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = type metadata accessor for AnyStatusItem();
  if ((sub_1D179F48C(*(a1 + v16[6]), *(a2 + v16[6])) & 1) != 0 && *(a1 + v16[7]) == *(a2 + v16[7]))
  {
    return *(a1 + v16[8]) == *(a2 + v16[8]);
  }

  return 0;
}

uint64_t sub_1D1B33B24(uint64_t a1)
{
  result = sub_1D1B33C0C(&qword_1EC64AEA0, type metadata accessor for AnyStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B33C0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1B33C7C()
{
  type metadata accessor for IconTextValueStringDataHolder();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TilesFilter(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for StatusItemLocation(319);
      if (v2 <= 0x3F)
      {
        sub_1D1B33D4C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1B33D4C()
{
  if (!qword_1EC64AEC0)
  {
    v0 = type metadata accessor for DynamicColor();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC64AEC0);
    }
  }
}

uint64_t sub_1D1B33E34()
{
  result = type metadata accessor for IconTextValueStringDataHolder();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TilesFilter(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 4)
      {
        return v14 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconTextValueStringDataHolder();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TilesFilter(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D1B34130()
{
  result = type metadata accessor for IconTextValueStringDataHolder();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TilesFilter(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_26Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 5)
      {
        return v14 - 4;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_index_27Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconTextValueStringDataHolder();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TilesFilter(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 4;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D1B344B8()
{
  result = type metadata accessor for IconTextValueStringDataHolder();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TilesFilter(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1B34554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v97 = a3;
  v92 = type metadata accessor for IconTextValueStringDataHolder();
  v91 = *(v92 - 8);
  v5 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v87 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticService(0);
  v105 = *(v7 - 8);
  v8 = *(v105 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v98 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v85 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v90 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v85 - v17;
  v18 = type metadata accessor for TemperatureStatusItem(0);
  v94 = *(v18 - 8);
  v19 = *(v94 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[*(v20 + 24)] = 0;
  v95 = v20;
  v23 = *(v20 + 28);
  v86 = v22;
  v22[v23] = 2;
  v24 = sub_1D1784388(&unk_1F4D65D00);

  v26 = sub_1D1B35634(v25);

  v88 = sub_1D1B3A7D0(a1, v24);
  v85 = 0;
  v89 = a1;

  v104 = *(v26 + 16);
  if (v104)
  {
    v27 = 0;
    v28 = v24 + 56;
    v102 = MEMORY[0x1E69E7CC0];
    v29 = "takeSnaphotsWhenBusy";
    v100 = v7;
    v99 = v12;
    v101 = v26;
    while (v27 < *(v26 + 16))
    {
      v30 = (*(v105 + 80) + 32) & ~*(v105 + 80);
      v106 = *(v105 + 72);
      sub_1D1B39250(v26 + v30 + v106 * v27, v12, type metadata accessor for StaticService);
      v31 = v12[*(v7 + 112)];
      if (v31 == 53)
      {
        v31 = v12[*(v7 + 104)];
      }

      if (*(v24 + 16))
      {
        v103 = v30;
        v32 = *(v24 + 40);
        sub_1D1E6920C();
        v107 = v31;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v33 = sub_1D1E6926C();
        v34 = -1 << *(v24 + 32);
        v35 = v33 & ~v34;
        if ((*(v28 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          v36 = ~v34;
          while (1)
          {
            v37 = "takeSnaphotsWhenBusy";
            switch(*(*(v24 + 48) + v35))
            {
              case 1:
                v38 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 2:
                v38 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 3:
                v38 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 4:
                v38 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 5:
                v38 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 6:
                v38 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 7:
                v38 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 8:
                v38 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 9:
                v38 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xA:
                v38 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xB:
                v38 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xC:
                v38 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xD:
                v38 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xE:
                v38 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xF:
                v38 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x10:
                v38 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x11:
                v38 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x12:
                v38 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x13:
                v38 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x14:
                v38 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x15:
                v38 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x16:
                v38 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x17:
                v38 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x18:
                v38 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x19:
                v38 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1A:
                v38 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1B:
                v38 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1C:
                v38 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1D:
                v38 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1E:
                v38 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1F:
                v38 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x20:
                v38 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x21:
                v38 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x22:
                v38 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x23:
                v38 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x24:
                v38 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x25:
                v38 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x26:
                v38 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x27:
                v38 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x28:
                v38 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x29:
                v38 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2A:
                v38 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2B:
                v38 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2C:
                v38 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2D:
                v38 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2E:
                v38 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2F:
                v38 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x30:
                v38 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x31:
                v38 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x32:
                v38 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x33:
                v38 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x34:
                v38 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_64:
                v37 = v38 - 32;
                break;
              default:
                break;
            }

            v39 = v37 | 0x8000000000000000;
            v40 = "takeSnaphotsWhenBusy";
            switch(v31)
            {
              case 1:
                v41 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 2:
                v41 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 3:
                v41 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 4:
                v41 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 5:
                v41 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 6:
                v41 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 7:
                v41 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 8:
                v41 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 9:
                v41 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 10:
                v41 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 11:
                v41 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 12:
                v41 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 13:
                v41 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 14:
                v41 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 15:
                v41 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 16:
                v41 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 17:
                v41 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 18:
                v41 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 19:
                v41 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 20:
                v41 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 21:
                v41 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 22:
                v41 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 23:
                v41 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 24:
                v41 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 25:
                v41 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 26:
                v41 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 27:
                v41 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 28:
                v41 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 29:
                v41 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 30:
                v41 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 31:
                v41 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 32:
                v41 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 33:
                v41 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 34:
                v41 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 35:
                v41 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 36:
                v41 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 37:
                v41 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 38:
                v41 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 39:
                v41 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 40:
                v41 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 41:
                v41 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 42:
                v41 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 43:
                v41 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 44:
                v41 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 45:
                v41 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 46:
                v41 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 47:
                v41 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 48:
                v41 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 49:
                v41 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 50:
                v41 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 51:
                v41 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 52:
                v41 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_118:
                v40 = v41 - 32;
                break;
              default:
                break;
            }

            if (v39 == (v40 | 0x8000000000000000))
            {
              break;
            }

            inited = sub_1D1E6904C();

            if (inited)
            {
              goto LABEL_124;
            }

            v35 = (v35 + 1) & v36;
            if (((*(v28 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_122;
            }
          }

LABEL_124:
          v12 = v99;
          sub_1D1B392B8(v99, v98, type metadata accessor for StaticService);
          v42 = v102;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D17915E0(0, *(v42 + 16) + 1, 1);
            v42 = v109;
          }

          v7 = v100;
          v26 = v101;
          inited = *(v42 + 16);
          v44 = *(v42 + 24);
          v45 = v42;
          if (inited >= v44 >> 1)
          {
            sub_1D17915E0(v44 > 1, inited + 1, 1);
            v26 = v101;
            v45 = v109;
          }

          *(v45 + 16) = inited + 1;
          v102 = v45;
          sub_1D1B392B8(v98, v45 + v103 + inited * v106, type metadata accessor for StaticService);
        }

        else
        {
LABEL_122:
          v12 = v99;
          sub_1D1B3A990(v99, type metadata accessor for StaticService);
          v7 = v100;
          v26 = v101;
        }
      }

      else
      {
        sub_1D1B3A990(v12, type metadata accessor for StaticService);
      }

      if (++v27 == v104)
      {
        goto LABEL_130;
      }
    }

    __break(1u);
    goto LABEL_143;
  }

  v102 = MEMORY[0x1E69E7CC0];
LABEL_130:

  v46 = v88;

  v26 = sub_1D1785BE4(v47);
  if (*(v102 + 16))
  {

    v29 = v93;
    v24 = v92;
  }

  else
  {
    v67 = *(v46 + 16);

    v29 = v93;
    v24 = v92;
    if (v67)
    {

      v68 = static String.hfLocalized(_:)(0xD000000000000020, 0x80000001D1EBA230);
      v70 = v69;
      v71 = static String.hfLocalized(_:)(2965515565, 0xA400000000000000);
      v73 = v72;
      sub_1D1E66A6C();
      v74 = &v29[*(v24 + 20)];
      *v74 = 0xD000000000000012;
      *(v74 + 1) = 0x80000001D1EB6290;
      v75 = &v29[*(v24 + 24)];
      *v75 = v68;
      v75[1] = v70;
      v76 = &v29[*(v24 + 28)];
      *v76 = v71;
      v76[1] = v73;
      v58 = &v29[*(v24 + 32)];
      *v58 = 0;
      *(v58 + 1) = 0;
      goto LABEL_138;
    }
  }

  v48 = sub_1D1B35968(v102);

  if (!v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    if (qword_1EC642168 == -1)
    {
LABEL_135:
      v59 = *algn_1EC644B98;
      v60 = qword_1EC644BA0;
      v61 = unk_1EC644BA8;
      v62 = qword_1EC644BB0;
      *(inited + 32) = qword_1EC644B90;
      *(inited + 40) = v59;
      *(inited + 48) = v60;
      *(inited + 56) = v61;
      *(inited + 64) = v62;

      v63 = sub_1D182AE80(v89, 0);
      v64 = sub_1D182AEF4(v63, 1);

      v65 = sub_1D1829C68(inited, 1, v64);

      swift_setDeallocating();
      sub_1D182BAC0(inited + 32);
      LOBYTE(v108) = 1;
      static ClimateSummarizer._temperatureGaugeData(context:from:)(v65, v29);

      v66 = v91;
      goto LABEL_139;
    }

LABEL_143:
    swift_once();
    goto LABEL_135;
  }

  v49 = static String.hfLocalized(_:)(0xD000000000000020, 0x80000001D1EBA230);
  v51 = v50;
  v52 = static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EC4FE0);
  v54 = v53;
  sub_1D1E66A6C();
  v55 = &v29[*(v24 + 20)];
  *v55 = 0xD000000000000012;
  *(v55 + 1) = 0x80000001D1EB6290;
  v56 = &v29[*(v24 + 24)];
  *v56 = v49;
  v56[1] = v51;
  v57 = &v29[*(v24 + 28)];
  *v57 = v52;
  v57[1] = v54;
  v58 = &v29[*(v24 + 32)];
  *v58 = xmmword_1D1E99070;
LABEL_138:
  *(v58 + 2) = 0x4049000000000000;
  v58[24] = 1;
  v66 = v91;
  (*(v91 + 56))(v29, 0, 1, v24);
LABEL_139:
  v77 = v90;
  sub_1D1741C08(v29, v90, &qword_1EC644C58, &unk_1D1E77530);
  if ((*(v66 + 48))(v77, 1, v24) == 1)
  {

    sub_1D1B3A990(v96, type metadata accessor for StatusItemLocation);
    sub_1D1741A30(v29, &qword_1EC644C58, &unk_1D1E77530);
    sub_1D1741A30(v77, &qword_1EC644C58, &unk_1D1E77530);
    return (*(v94 + 56))(v97, 1, 1, v95);
  }

  else
  {
    v79 = v87;
    sub_1D1B392B8(v77, v87, type metadata accessor for IconTextValueStringDataHolder);
    v80 = v86;
    v81 = sub_1D1B39250(v79, v86, type metadata accessor for IconTextValueStringDataHolder);
    v82 = v95;
    v83 = *(v95 + 20);
    MEMORY[0x1EEE9AC00](v81);
    *(&v85 - 2) = v26;
    v108 = v7;
    sub_1D1E66C8C();

    sub_1D1B3A990(v96, type metadata accessor for StatusItemLocation);
    sub_1D1B3A990(v79, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1741A30(v29, &qword_1EC644C58, &unk_1D1E77530);
    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    v84 = v97;
    sub_1D1B392B8(v80, v97, type metadata accessor for TemperatureStatusItem);
    return (*(v94 + 56))(v84, 0, 1, v82);
  }
}

uint64_t sub_1D1B35634(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v32 = *(v2 - 1);
  v3 = *(v32 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  for (i = MEMORY[0x1E69E7CC0]; v13; result = sub_1D1B392B8(v30, v22 + ((v27 + 32) & ~v27) + v25 * v20, type metadata accessor for StaticService))
  {
LABEL_11:
    while (1)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = *(v32 + 72);
      sub_1D1B39250(*(a1 + 56) + v20 * (v19 | (v16 << 6)), v8, type metadata accessor for StaticService);
      sub_1D1B392B8(v8, v10, type metadata accessor for StaticService);
      if (v10[v2[8]] == 1)
      {
        v21 = v10[v2[9]];
        if (v21 != 2 && (v21 & 1) != 0)
        {
          break;
        }

        v34 = *&v10[v2[32]];
        v33 = v10[v2[26]];

        v17 = StaticCharacteristicsBag.isReachable(for:)(&v33);

        if (v17)
        {
          break;
        }
      }

      result = sub_1D1B3A990(v10, type metadata accessor for StaticService);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    sub_1D1B392B8(v10, v30, type metadata accessor for StaticService);
    v22 = i;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D17915E0(0, *(v22 + 16) + 1, 1);
      v22 = v35;
    }

    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      i = v25 + 1;
      v29 = v25;
      sub_1D17915E0(v24 > 1, v25 + 1, 1);
      v25 = v29;
      v26 = i;
      v22 = v35;
    }

    *(v22 + 16) = v26;
    v27 = *(v32 + 80);
    i = v22;
  }

LABEL_7:
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return i;
    }

    v13 = *(a1 + 64 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1D1B35968(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = v7 == v8;
    if (v7 == v8)
    {
      break;
    }

    sub_1D1B39250(a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v6, type metadata accessor for StaticService);
    v10 = v6[*(v2 + 36)];
    sub_1D1B3A990(v6, type metadata accessor for StaticService);
    if (v10 == 2)
    {
      break;
    }

    ++v8;
  }

  while ((v10 & 1) != 0);
  return v9;
}

uint64_t sub_1D1B35AA8(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF28, type metadata accessor for TemperatureStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B35B00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B35B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a2;
  v119 = a3;
  v114 = type metadata accessor for IconTextValueStringDataHolder();
  v113 = *(v114 - 8);
  v5 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v110 = v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticService(0);
  v128 = *(v7 - 8);
  v8 = *(v128 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v121 = v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v108 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v112 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v115 = v108 - v17;
  v18 = type metadata accessor for HumidityStatusItem(0);
  v116 = *(v18 - 8);
  v19 = *(v116 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[*(v20 + 24)] = 0;
  v117 = v20;
  v23 = *(v20 + 28);
  v109 = v22;
  v22[v23] = 2;
  v24 = sub_1D1784388(&unk_1F4D65D28);

  v26 = sub_1D1B35634(v25);

  v111 = sub_1D1B3A7D0(a1, v24);
  v108[1] = 0;
  v120 = a1;

  v127 = *(v26 + 16);
  if (!v127)
  {
    v125 = MEMORY[0x1E69E7CC0];
LABEL_130:

    v44 = v111;

    v26 = sub_1D1785BE4(v45);
    if (*(v125 + 16))
    {

      v12 = v115;
    }

    else
    {
      v71 = *(v44 + 16);

      v12 = v115;
      if (v71)
      {
        v24 = v7;

        v72 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
        v74 = v73;
        v75 = static String.hfLocalized(_:)(2436397, 0xE300000000000000);
        v77 = v76;
        sub_1D1E66A6C();
        v53 = 0;
        v78 = v114;
        v79 = &v12[*(v114 + 20)];
        strcpy(v79, "humidity.fill");
        *(v79 + 7) = -4864;
        v80 = &v12[v78[6]];
        *v80 = v72;
        v80[1] = v74;
        v57 = v78;
        v81 = &v12[v78[7]];
        *v81 = v75;
        v81[1] = v77;
        v59 = &v12[v78[8]];
        *v59 = 0;
        *(v59 + 1) = 0;
        goto LABEL_140;
      }
    }

    v46 = sub_1D1B35968(v125);

    v24 = v7;
    if (!v46)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      if (qword_1EC642178 == -1)
      {
        goto LABEL_135;
      }

      goto LABEL_152;
    }

    v47 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
    v49 = v48;
    v50 = static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EC4FE0);
    v52 = v51;
    sub_1D1E66A6C();
    v53 = 0;
    v54 = v114;
    v55 = &v12[*(v114 + 20)];
    strcpy(v55, "humidity.fill");
    *(v55 + 7) = -4864;
    v56 = &v12[v54[6]];
    *v56 = v47;
    v56[1] = v49;
    v57 = v54;
    v58 = &v12[v54[7]];
    *v58 = v50;
    v58[1] = v52;
    v59 = &v12[v54[8]];
    *v59 = xmmword_1D1E99080;
LABEL_140:
    *(v59 + 2) = 0x4059000000000000;
    v59[24] = 1;
    goto LABEL_148;
  }

  v27 = 0;
  v130 = v24 + 56;
  v125 = MEMORY[0x1E69E7CC0];
  v123 = v7;
  v122 = v12;
  v124 = v26;
  while (v27 < *(v26 + 16))
  {
    v28 = (*(v128 + 80) + 32) & ~*(v128 + 80);
    v129 = *(v128 + 72);
    sub_1D1B39250(v26 + v28 + v129 * v27, v12, type metadata accessor for StaticService);
    v29 = v12[*(v7 + 112)];
    if (v29 == 53)
    {
      v29 = v12[*(v7 + 104)];
    }

    if (*(v24 + 16))
    {
      v126 = v28;
      v30 = *(v24 + 40);
      sub_1D1E6920C();
      v131 = v29;
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      v31 = sub_1D1E6926C();
      v32 = -1 << *(v24 + 32);
      v33 = v31 & ~v32;
      if ((*(v130 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        v34 = ~v32;
        while (1)
        {
          v35 = "takeSnaphotsWhenBusy";
          switch(*(*(v24 + 48) + v33))
          {
            case 1:
              v36 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 2:
              v36 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 3:
              v36 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 4:
              v36 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 5:
              v36 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 6:
              v36 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 7:
              v36 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 8:
              v36 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 9:
              v36 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0xA:
              v36 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0xB:
              v36 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0xC:
              v36 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0xD:
              v36 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0xE:
              v36 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0xF:
              v36 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x10:
              v36 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x11:
              v36 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x12:
              v36 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x13:
              v36 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x14:
              v36 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x15:
              v36 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x16:
              v36 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x17:
              v36 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x18:
              v36 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x19:
              v36 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x1A:
              v36 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x1B:
              v36 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x1C:
              v36 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x1D:
              v36 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x1E:
              v36 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x1F:
              v36 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x20:
              v36 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x21:
              v36 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x22:
              v36 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x23:
              v36 = "0000007E-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x24:
              v36 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x25:
              v36 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x26:
              v36 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x27:
              v36 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x28:
              v36 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x29:
              v36 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x2A:
              v36 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x2B:
              v36 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x2C:
              v36 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x2D:
              v36 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x2E:
              v36 = "0000004A-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x2F:
              v36 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x30:
              v36 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x31:
              v36 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x32:
              v36 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x33:
              v36 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x34:
              v36 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_64:
              v35 = v36 - 32;
              break;
            default:
              break;
          }

          v37 = v35 | 0x8000000000000000;
          v38 = "takeSnaphotsWhenBusy";
          switch(v29)
          {
            case 1:
              v39 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 2:
              v39 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 3:
              v39 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 4:
              v39 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 5:
              v39 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 6:
              v39 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 7:
              v39 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 8:
              v39 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 9:
              v39 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 10:
              v39 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 11:
              v39 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 12:
              v39 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 13:
              v39 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 14:
              v39 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 15:
              v39 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 16:
              v39 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 17:
              v39 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 18:
              v39 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 19:
              v39 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 20:
              v39 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 21:
              v39 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 22:
              v39 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 23:
              v39 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 24:
              v39 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 25:
              v39 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 26:
              v39 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 27:
              v39 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 28:
              v39 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 29:
              v39 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 30:
              v39 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 31:
              v39 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 32:
              v39 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 33:
              v39 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 34:
              v39 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 35:
              v39 = "0000007E-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 36:
              v39 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 37:
              v39 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 38:
              v39 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 39:
              v39 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 40:
              v39 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 41:
              v39 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 42:
              v39 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 43:
              v39 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 44:
              v39 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 45:
              v39 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 46:
              v39 = "0000004A-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 47:
              v39 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 48:
              v39 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 49:
              v39 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 50:
              v39 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 51:
              v39 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 52:
              v39 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_118:
              v38 = v39 - 32;
              break;
            default:
              break;
          }

          if (v37 == (v38 | 0x8000000000000000))
          {
            break;
          }

          inited = sub_1D1E6904C();

          if (inited)
          {
            goto LABEL_124;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v130 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_122;
          }
        }

LABEL_124:
        v12 = v122;
        sub_1D1B392B8(v122, v121, type metadata accessor for StaticService);
        v40 = v125;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v133 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D17915E0(0, *(v40 + 16) + 1, 1);
          v40 = v133;
        }

        v7 = v123;
        v26 = v124;
        inited = *(v40 + 16);
        v42 = *(v40 + 24);
        v43 = v40;
        if (inited >= v42 >> 1)
        {
          sub_1D17915E0(v42 > 1, inited + 1, 1);
          v26 = v124;
          v43 = v133;
        }

        *(v43 + 16) = inited + 1;
        v125 = v43;
        sub_1D1B392B8(v121, v43 + v126 + inited * v129, type metadata accessor for StaticService);
      }

      else
      {
LABEL_122:
        v12 = v122;
        sub_1D1B3A990(v122, type metadata accessor for StaticService);
        v7 = v123;
        v26 = v124;
      }
    }

    else
    {
      sub_1D1B3A990(v12, type metadata accessor for StaticService);
    }

    if (++v27 == v127)
    {
      goto LABEL_130;
    }
  }

  __break(1u);
LABEL_152:
  swift_once();
LABEL_135:
  v60 = *algn_1EC644BE8;
  v61 = qword_1EC644BF0;
  v62 = unk_1EC644BF8;
  v63 = qword_1EC644C00;
  *(inited + 32) = qword_1EC644BE0;
  *(inited + 40) = v60;
  *(inited + 48) = v61;
  *(inited + 56) = v62;
  *(inited + 64) = v63;

  v64 = sub_1D182AE80(v120, 0);
  v65 = sub_1D182AEF4(v64, 1);

  v66 = sub_1D1829C68(inited, 1, v65);

  swift_setDeallocating();
  sub_1D182BAC0(inited + 32);
  v67 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(v66);

  v68 = *(v67 + 16);
  if (!v68)
  {

    v53 = 1;
    v57 = v114;
    goto LABEL_148;
  }

  if (v68 >= 4)
  {
    v69 = v68 & 0x7FFFFFFFFFFFFFFCLL;
    v82 = v67 + 48;
    v70 = 0.0;
    v83 = v68 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v84 = *v82;
      v70 = v70 + *(v82 - 16) + *(v82 - 8) + *v82 + *(v82 + 8);
      v82 += 32;
      v83 -= 4;
    }

    while (v83);
    if (v68 == v69)
    {
      goto LABEL_147;
    }
  }

  else
  {
    v69 = 0;
    v70 = 0.0;
  }

  v85 = v68 - v69;
  v86 = (v67 + 8 * v69 + 32);
  do
  {
    v87 = *v86++;
    v70 = v70 + v87;
    --v85;
  }

  while (v85);
LABEL_147:
  v88 = v70 / v68;
  v89 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
  v91 = v90;
  v92 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v67, 1);
  v94 = v93;

  sub_1D1E66A6C();

  v53 = 0;
  v57 = v114;
  v95 = &v12[*(v114 + 20)];
  strcpy(v95, "humidity.fill");
  *(v95 + 7) = -4864;
  v96 = &v12[v57[6]];
  *v96 = v89;
  v96[1] = v91;
  v97 = &v12[v57[7]];
  *v97 = v92;
  v97[1] = v94;
  v98 = &v12[v57[8]];
  *v98 = v88;
  *(v98 + 8) = xmmword_1D1E774F0;
  v98[24] = 1;
LABEL_148:
  v99 = v113;
  v100 = v112;
  (*(v113 + 56))(v12, v53, 1, v57);
  sub_1D1741C08(v12, v100, &qword_1EC644C58, &unk_1D1E77530);
  if ((*(v99 + 48))(v100, 1, v57) == 1)
  {

    sub_1D1B3A990(v118, type metadata accessor for StatusItemLocation);
    sub_1D1741A30(v12, &qword_1EC644C58, &unk_1D1E77530);
    sub_1D1741A30(v100, &qword_1EC644C58, &unk_1D1E77530);
    return (*(v116 + 56))(v119, 1, 1, v117);
  }

  else
  {
    v102 = v110;
    sub_1D1B392B8(v100, v110, type metadata accessor for IconTextValueStringDataHolder);
    v103 = v109;
    v104 = sub_1D1B39250(v102, v109, type metadata accessor for IconTextValueStringDataHolder);
    v105 = v117;
    v106 = *(v117 + 20);
    MEMORY[0x1EEE9AC00](v104);
    v108[-2] = v26;
    v132 = v24;
    sub_1D1E66C8C();

    sub_1D1B3A990(v118, type metadata accessor for StatusItemLocation);
    sub_1D1B3A990(v102, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1741A30(v12, &qword_1EC644C58, &unk_1D1E77530);
    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    v107 = v119;
    sub_1D1B392B8(v103, v119, type metadata accessor for HumidityStatusItem);
    return (*(v116 + 56))(v107, 0, 1, v105);
  }
}

uint64_t sub_1D1B36DCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B39320();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1B35B00(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v22 = v25;
  sub_1D1E6647C();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1D1B371B0(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF30, type metadata accessor for HumidityStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B37208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_1D1E66A7C();
  v70 = *(v3 - 8);
  v4 = *(v70 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v68 - v8;
  v82 = type metadata accessor for StaticService(0);
  v78 = *(v82 - 8);
  v10 = *(v78 + 64);
  v11 = MEMORY[0x1EEE9AC00](v82);
  v69 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v68 - v19;
  v79 = type metadata accessor for IconTextValueStringDataHolder();
  v77 = *(v79 - 8);
  v21 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v73 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AirQualityStatusItem(0);
  v74 = *(v23 - 8);
  v24 = *(v74 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[*(v25 + 24)] = 0;
  v75 = v25;
  v28 = *(v25 + 28);
  v71 = v27;
  v27[v28] = 2;
  v81 = sub_1D1B390E0(a1, sub_1D1B395F4, sub_1D1B395F4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  if (qword_1EC642170 != -1)
  {
LABEL_30:
    swift_once();
  }

  v30 = unk_1EC644BC0;
  v32 = qword_1EC644BC8;
  v31 = unk_1EC644BD0;
  v33 = qword_1EC644BD8;
  *(inited + 32) = qword_1EC644BB8;
  *(inited + 40) = v30;
  *(inited + 48) = v32;
  *(inited + 56) = v31;
  *(inited + 64) = v33;

  v34 = v81;
  v35 = sub_1D182AE80(v81, 0);
  v36 = sub_1D182AEF4(v35, 1);

  v37 = sub_1D1829C68(inited, 1, v36);

  swift_setDeallocating();
  sub_1D182BAC0(inited + 32);
  static ClimateSummarizer._airQualityGaugeData(from:)(v37, v20);

  if ((*(v77 + 48))(v20, 1, v79) == 1)
  {

    sub_1D1741A30(v20, &qword_1EC644C58, &unk_1D1E77530);
    return (*(v74 + 56))(v76, 1, 1, v75);
  }

  else
  {
    sub_1D1B392B8(v20, v73, type metadata accessor for IconTextValueStringDataHolder);
    inited = 0;
    v39 = v34 + 64;
    v40 = 1 << *(v34 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v34 + 64);
    v43 = (v40 + 63) >> 6;
    v79 = 0x80000001D1EB2D70;
    v72 = MEMORY[0x1E69E7CC0];
    v20 = v80;
LABEL_7:
    v44 = inited;
    if (!v42)
    {
      goto LABEL_9;
    }

    do
    {
      inited = v44;
LABEL_12:
      v45 = *(v34 + 56);
      v77 = *(v78 + 72);
      sub_1D1B39250(v45 + v77 * (__clz(__rbit64(v42)) | (inited << 6)), v20, type metadata accessor for StaticService);
      v46 = v20[*(v82 + 112)];
      if (v46 == 53)
      {
        LOBYTE(v46) = v20[*(v82 + 104)];
      }

      v42 &= v42 - 1;
      v83 = v46;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v79 == v47)
      {

LABEL_20:
        v20 = v80;
        sub_1D1B392B8(v80, v69, type metadata accessor for StaticService);
        v49 = v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D17915E0(0, *(v49 + 16) + 1, 1);
          v20 = v80;
          v49 = v84;
        }

        v51 = v49;
        v52 = *(v49 + 16);
        v53 = *(v51 + 24);
        v54 = v52 + 1;
        if (v52 >= v53 >> 1)
        {
          v72 = v52 + 1;
          sub_1D17915E0(v53 > 1, v52 + 1, 1);
          v54 = v72;
          v20 = v80;
          v51 = v84;
        }

        *(v51 + 16) = v54;
        v55 = *(v78 + 80);
        v72 = v51;
        sub_1D1B392B8(v69, v51 + ((v55 + 32) & ~v55) + v52 * v77, type metadata accessor for StaticService);
        v34 = v81;
        goto LABEL_7;
      }

      v48 = sub_1D1E6904C();

      if (v48)
      {
        goto LABEL_20;
      }

      v20 = v80;
      sub_1D1B3A990(v80, type metadata accessor for StaticService);
      v44 = inited;
      v34 = v81;
    }

    while (v42);
    while (1)
    {
LABEL_9:
      inited = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (inited >= v43)
      {
        break;
      }

      v42 = *(v39 + 8 * inited);
      ++v44;
      if (v42)
      {
        goto LABEL_12;
      }
    }

    v84 = MEMORY[0x1E69E7CD0];
    v56 = *(v72 + 16);
    if (v56)
    {
      v57 = v72 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v58 = *(v78 + 72);
      v59 = (v70 + 16);
      v60 = (v70 + 8);
      do
      {
        sub_1D1B39250(v57, v15, type metadata accessor for StaticService);
        (*v59)(v7, v15, v3);
        sub_1D1762CB8(v9, v7);
        (*v60)(v9, v3);
        sub_1D1B3A990(v15, type metadata accessor for StaticService);
        v57 += v58;
        --v56;
      }

      while (v56);
    }

    v61 = v84;
    v62 = v73;
    v63 = v71;
    v64 = sub_1D1B39250(v73, v71, type metadata accessor for IconTextValueStringDataHolder);
    v65 = v75;
    v66 = *(v75 + 20);
    MEMORY[0x1EEE9AC00](v64);
    *(&v68 - 2) = v61;
    v84 = v82;
    sub_1D1E66C8C();

    sub_1D1B3A990(v62, type metadata accessor for IconTextValueStringDataHolder);
    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    v67 = v76;
    sub_1D1B392B8(v63, v76, type metadata accessor for AirQualityStatusItem);
    return (*(v74 + 56))(v67, 0, 1, v65);
  }
}

uint64_t sub_1D1B37B48(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF38, type metadata accessor for AirQualityStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B37BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v106 = type metadata accessor for IconTextValueStringDataHolder();
  v3 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v101 - v10;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v107 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v101 - v17;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v18 = *(*(v120 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v120);
  v111 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v121 = &v101 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v117 = &v101 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v122 = &v101 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v102 = &v101 - v27;
  v28 = type metadata accessor for FanStatusItem(0);
  v108 = *(v28 - 8);
  v29 = *(v108 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[v30[5]] = 3;
  v32[v30[7]] = 0;
  v109 = v30;
  v33 = v30[8];
  v104 = v32;
  v32[v33] = 3;
  v34 = sub_1D1784388(&unk_1F4D65D50);
  v127 = MEMORY[0x1E69E7CD0];
  v35 = a1 + 64;
  v36 = 1 << *(a1 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & *(a1 + 64);
  v39 = (v36 + 63) >> 6;
  v116 = v13 + 16;
  v123 = v34 + 56;
  v124 = v34;
  v118 = (v13 + 8);
  v119 = a1;

  v41 = 0;
  v115 = v12;
  v114 = v9;
  v113 = v13;
  v112 = v11;
  if (v38)
  {
    while (1)
    {
LABEL_9:
      v43 = __clz(__rbit64(v38)) | (v41 << 6);
      v44 = v119;
      v45 = *(v119 + 48) + *(v13 + 72) * v43;
      v46 = *(v13 + 16);
      v47 = v117;
      v46(v117, v45, v12);
      v48 = *(v44 + 56);
      v49 = type metadata accessor for StaticService(0);
      v50 = v48 + *(*(v49 - 8) + 72) * v43;
      v51 = v120;
      sub_1D1B39250(v50, v47 + *(v120 + 48), type metadata accessor for StaticService);
      v52 = v122;
      sub_1D182BEE0(v47, v122);
      v53 = v52;
      v54 = v121;
      sub_1D1741C08(v53, v121, &qword_1EC642DB0, &unk_1D1E6F360);
      v55 = v54 + *(v51 + 48);
      v56 = *(v55 + *(v49 + 112));
      if (v56 == 53)
      {
        LOBYTE(v56) = *(v55 + *(v49 + 104));
      }

      v38 &= v38 - 1;
      sub_1D1B3A990(v55, type metadata accessor for StaticService);
      if (!v124[2])
      {
        goto LABEL_20;
      }

      v57 = v124;
      v58 = v124[5];
      sub_1D1E6920C();
      v125 = v56;
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      v59 = sub_1D1E6926C();
      v60 = -1 << *(v57 + 32);
      v61 = v59 & ~v60;
      if ((*(v123 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
      {
        v62 = ~v60;
        while (1)
        {
          LOBYTE(v126) = *(v124[6] + v61);
          v125 = v56;
          v63 = ServiceKind.rawValue.getter();
          v65 = v64;
          if (v63 == ServiceKind.rawValue.getter() && v65 == v66)
          {
            break;
          }

          v68 = sub_1D1E6904C();

          if (v68)
          {
            goto LABEL_25;
          }

          v61 = (v61 + 1) & v62;
          if (((*(v123 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

LABEL_25:
        v69 = *v118;
        v12 = v115;
        (*v118)(v121, v115);
        v70 = v111;
        sub_1D1741C08(v122, v111, &qword_1EC642DB0, &unk_1D1E6F360);
        v71 = *(v120 + 48);
        v72 = StaticService.isActivated.getter();
        sub_1D1B3A990(&v70[v71], type metadata accessor for StaticService);
        v69(v70, v12);
        if (v72)
        {
          v73 = v102;
          sub_1D182BEE0(v122, v102);
          sub_1D1741C08(v73, v111, &qword_1EC642DB0, &unk_1D1E6F360);
          v101 = *(v120 + 48);
          v74 = v103;
          v75 = v111;
          sub_1D1762CB8(v103, v111);
          v69(v74, v12);
          sub_1D1741A30(v73, &qword_1EC642DB0, &unk_1D1E6F360);
          result = sub_1D1B3A990(&v75[v101], type metadata accessor for StaticService);
          goto LABEL_22;
        }
      }

      else
      {
LABEL_20:
        v12 = v115;
        (*v118)(v121, v115);
      }

      result = sub_1D1741A30(v122, &qword_1EC642DB0, &unk_1D1E6F360);
LABEL_22:
      v9 = v114;
      v13 = v113;
      v11 = v112;
      if (!v38)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      return result;
    }

    if (v42 >= v39)
    {
      break;
    }

    v38 = *(v35 + 8 * v42);
    ++v41;
    if (v38)
    {
      v41 = v42;
      goto LABEL_9;
    }
  }

  v76 = v127;
  if (*(v127 + 16))
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    v77 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EC4FC0);
    v123 = v78;
    v124 = v77;
    static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1D1E739C0;
    v80 = *(v76 + 16);
    v81 = MEMORY[0x1E69E65A8];
    *(v79 + 56) = MEMORY[0x1E69E6530];
    *(v79 + 64) = v81;
    *(v79 + 32) = v80;
    v82 = sub_1D1E6783C();
    v84 = v83;

    sub_1D1741C08(v11, v9, &qword_1EC642590, qword_1D1E71260);
    v85 = *(v13 + 48);
    if (v85(v9, 1, v12) == 1)
    {
      v86 = v11;
      v87 = v107;
      sub_1D1E66A6C();
      sub_1D1741A30(v86, &qword_1EC642590, qword_1D1E71260);
      if (v85(v9, 1, v12) != 1)
      {
        sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
      v87 = v107;
      (*(v13 + 32))(v107, v9, v12);
    }

    v88 = v105;
    (*(v13 + 32))(v105, v87, v12);
    v89 = v106;
    v90 = &v88[*(v106 + 20)];
    *v90 = 0x6B7365642E6E6166;
    *(v90 + 1) = 0xE800000000000000;
    v91 = &v88[v89[6]];
    v92 = v123;
    *v91 = v124;
    *(v91 + 1) = v92;
    v93 = &v88[v89[7]];
    *v93 = v82;
    v93[1] = v84;
    v94 = &v88[v89[8]];
    *v94 = 0;
    *(v94 + 1) = 0;
    *(v94 + 2) = 0;
    v94[24] = -1;
    v95 = v88;
    v96 = v104;
    v97 = sub_1D1B392B8(v95, v104, type metadata accessor for IconTextValueStringDataHolder);
    v98 = v109;
    v99 = v109[6];
    MEMORY[0x1EEE9AC00](v97);
    *(&v101 - 2) = v76;
    v126 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    v100 = v110;
    sub_1D1B392B8(v96, v110, type metadata accessor for FanStatusItem);
    return (*(v108 + 56))(v100, 0, 1, v98);
  }

  else
  {

    return (*(v108 + 56))(v110, 1, 1, v109);
  }
}

uint64_t sub_1D1B38748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v81 = type metadata accessor for IconTextValueStringDataHolder();
  v3 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v76 - v9;
  v94 = sub_1D1E66A7C();
  v11 = *(v94 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v94);
  v79 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v76 - v15;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v16 = *(*(v89 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v89);
  v88 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v76 - v19;
  v20 = type metadata accessor for AirPurifierStatusItem(0);
  v82 = *(v20 - 8);
  v21 = *(v82 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[v22[6]] = 3;
  v24[v22[7]] = 0;
  v83 = v22;
  v25 = v22[8];
  v78 = v24;
  v24[v25] = 3;
  v26 = sub_1D1B390E0(a1, sub_1D1B39AF8, sub_1D1B39AF8);
  v93 = v11;

  v95 = MEMORY[0x1E69E7CD0];
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v31 = (v28 + 63) >> 6;
  v85 = v11 + 8;
  v86 = v11 + 16;
  v92 = v26;

  v33 = 0;
  v91 = v10;
  if (v30)
  {
    while (1)
    {
      v34 = v33;
LABEL_9:
      v35 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v36 = v35 | (v34 << 6);
      v37 = v92;
      v38 = v93;
      v39 = v87;
      (*(v93 + 16))(v87, *(v92 + 48) + *(v93 + 72) * v36, v94);
      v40 = *(v37 + 56);
      v41 = v40 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v36;
      v42 = v89;
      sub_1D1B39250(v41, v39 + *(v89 + 48), type metadata accessor for StaticService);
      v43 = v88;
      sub_1D1741C08(v39, v88, &qword_1EC642DB0, &unk_1D1E6F360);
      v44 = *(v42 + 48);
      v45 = v90;
      sub_1D1762CB8(v90, v43);
      (*(v38 + 8))(v45, v94);
      sub_1D1741A30(v39, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B3A990(&v43[v44], type metadata accessor for StaticService);
      v10 = v91;
      if (!v30)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      return result;
    }

    if (v34 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v34);
    ++v33;
    if (v30)
    {
      v33 = v34;
      goto LABEL_9;
    }
  }

  v46 = v95;
  if (*(v95 + 16))
  {
    v47 = v93;
    v48 = v94;
    (*(v93 + 56))(v10, 1, 1, v94);
    v92 = 0x80000001D1EB5B00;
    v90 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC4F70);
    v50 = v49;
    static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1D1E739C0;
    v52 = *(v46 + 16);
    v53 = MEMORY[0x1E69E65A8];
    *(v51 + 56) = MEMORY[0x1E69E6530];
    *(v51 + 64) = v53;
    *(v51 + 32) = v52;
    v54 = sub_1D1E6783C();
    v56 = v55;

    v57 = v48;
    v58 = v91;

    v59 = v77;
    sub_1D1741C08(v58, v77, &qword_1EC642590, qword_1D1E71260);
    v60 = *(v47 + 48);
    if (v60(v59, 1, v57) == 1)
    {
      v61 = v79;
      sub_1D1E66A6C();
      sub_1D1741A30(v58, &qword_1EC642590, qword_1D1E71260);
      v62 = v60(v59, 1, v57) == 1;
      v64 = v80;
      v63 = v81;
      v65 = v59;
      v67 = v83;
      v66 = v84;
      if (!v62)
      {
        sub_1D1741A30(v65, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v58, &qword_1EC642590, qword_1D1E71260);
      v68 = *(v47 + 32);
      v61 = v79;
      v68(v79, v59, v57);
      v67 = v83;
      v66 = v84;
      v64 = v80;
      v63 = v81;
    }

    (*(v93 + 32))(v64, v61, v57);
    v69 = (v64 + v63[5]);
    *v69 = 0xD000000000000011;
    v69[1] = v92;
    v70 = (v64 + v63[6]);
    *v70 = v90;
    v70[1] = v50;
    v71 = (v64 + v63[7]);
    *v71 = v54;
    v71[1] = v56;
    v72 = v64 + v63[8];
    *v72 = 0;
    *(v72 + 8) = 0;
    *(v72 + 16) = 0;
    *(v72 + 24) = -1;
    v73 = v78;
    v74 = sub_1D1B392B8(v64, v78, type metadata accessor for IconTextValueStringDataHolder);
    v75 = v67[5];
    MEMORY[0x1EEE9AC00](v74);
    *(&v76 - 2) = v46;
    v95 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    sub_1D1B392B8(v73, v66, type metadata accessor for AirPurifierStatusItem);
    return (*(v82 + 56))(v66, 0, 1, v67);
  }

  else
  {

    return (*(v82 + 56))(v84, 1, 1, v83);
  }
}

uint64_t sub_1D1B38F80(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF40, type metadata accessor for BlindsStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B38FD8(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF48, type metadata accessor for BlindsStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B39030(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF50, type metadata accessor for FanStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B39088(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF58, type metadata accessor for AirPurifierStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B390E0(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1D1B3A108(v13, v7, v5, a3);
  result = MEMORY[0x1D3893640](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B39250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B392B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1B39320()
{
  result = qword_1EC64AF88;
  if (!qword_1EC64AF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64AF80, &unk_1D1E9A890);
    sub_1D1B393AC();
    sub_1D1B39544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AF88);
  }

  return result;
}

unint64_t sub_1D1B393AC()
{
  result = qword_1EC64AF90;
  if (!qword_1EC64AF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64AF70, &unk_1D1E9A860);
    sub_1D1B394A8(&qword_1EC646B78, &qword_1EC644B20);
    sub_1D1B394A8(&qword_1EC646B10, &qword_1EE07B258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AF90);
  }

  return result;
}

uint64_t sub_1D1B394A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1B35B00(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1B39544()
{
  result = qword_1EC64AF98;
  if (!qword_1EC64AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64AF68, &unk_1D1E99350);
    sub_1D17D8EA8(&qword_1EC64AFA0, &qword_1EC64AF60, &unk_1D1E9A850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AF98);
  }

  return result;
}

uint64_t sub_1D1B395F4(unint64_t *a1, uint64_t a2, void *a3)
{
  v46 = a2;
  v47 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4 = *(*(v55 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v55);
  v64 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v45 - v7;
  v58 = type metadata accessor for StaticService(0);
  v54 = *(v58 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v63 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D1E66A7C();
  v10 = *(*(v61 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v61);
  v60 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v56 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v48 = 0;
  v49 = (v18 + 63) >> 6;
  v52 = v12 + 16;
  v53 = v12;
  v57 = 0x80000001D1EB2D70;
  v51 = (v12 + 8);
  while (v20)
  {
    v24 = __clz(__rbit64(v20));
    v59 = (v20 - 1) & v20;
LABEL_12:
    v27 = v24 | (v14 << 6);
    v28 = v56;
    v29 = *(v53 + 16);
    v30 = v60;
    v31 = v61;
    v29(v60, v56[6] + *(v53 + 72) * v27, v61);
    v32 = v28[7];
    v33 = *(v54 + 72);
    v50 = v27;
    v34 = v32 + v33 * v27;
    v35 = v63;
    sub_1D1B39250(v34, v63, type metadata accessor for StaticService);
    v36 = v62;
    v29(v62, v30, v31);
    v37 = v55;
    sub_1D1B39250(v35, v36 + *(v55 + 48), type metadata accessor for StaticService);
    v38 = v64;
    sub_1D1741C08(v36, v64, &qword_1EC642DB0, &unk_1D1E6F360);
    v39 = v38 + *(v37 + 48);
    v40 = *(v39 + *(v58 + 112));
    if (v40 == 53)
    {
      LOBYTE(v40) = *(v39 + *(v58 + 104));
    }

    sub_1D1B3A990(v39, type metadata accessor for StaticService);
    v65 = v40;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v57 == v41)
    {

      sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
      v42 = *v51;
      v43 = v61;
      (*v51)(v64, v61);
      sub_1D1B3A990(v63, type metadata accessor for StaticService);
      result = (v42)(v60, v43);
      v20 = v59;
      goto LABEL_17;
    }

    v21 = sub_1D1E6904C();

    sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
    v22 = *v51;
    v23 = v61;
    (*v51)(v64, v61);
    sub_1D1B3A990(v63, type metadata accessor for StaticService);
    result = (v22)(v60, v23);
    v20 = v59;
    if (v21)
    {
LABEL_17:
      *(v47 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      if (__OFADD__(v48++, 1))
      {
        __break(1u);
        return sub_1D188B1C8(v47, v46, v48, v56);
      }
    }
  }

  v25 = v14;
  while (1)
  {
    v14 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v14 >= v49)
    {
      return sub_1D188B1C8(v47, v46, v48, v56);
    }

    v26 = v16[v14];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v59 = (v26 - 1) & v26;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B39AF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v48 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4 = *(*(v61 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v61);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v66 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v47 - v9;
  v59 = type metadata accessor for StaticService(0);
  v56 = *(v59 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E66A7C();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v63 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v57 = a3;
  v18 = *(a3 + 64);
  v51 = a3 + 64;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v49 = 0;
  v50 = (v19 + 63) >> 6;
  v54 = v15 + 16;
  v55 = v15;
  v58 = 0x80000001D1EB2D40;
  v22 = (v15 + 8);
  v60 = result;
  while (v21)
  {
    v23 = v22;
    v24 = __clz(__rbit64(v21));
    v62 = (v21 - 1) & v21;
LABEL_12:
    v27 = v24 | (v17 << 6);
    v28 = v57;
    v29 = *(v55 + 16);
    v30 = v63;
    v29(v63, v57[6] + *(v55 + 72) * v27, v12);
    v31 = v28[7];
    v32 = *(v56 + 72);
    v53 = v27;
    v33 = v64;
    sub_1D1B39250(v31 + v32 * v27, v64, type metadata accessor for StaticService);
    v34 = v65;
    v29(v65, v30, v12);
    v35 = v61;
    sub_1D1B39250(v33, v34 + *(v61 + 48), type metadata accessor for StaticService);
    v36 = v66;
    sub_1D1741C08(v34, v66, &qword_1EC642DB0, &unk_1D1E6F360);
    v37 = v36 + *(v35 + 48);
    v38 = *(v37 + *(v59 + 112));
    if (v38 == 53)
    {
      LOBYTE(v38) = *(v37 + *(v59 + 104));
    }

    sub_1D1B3A990(v37, type metadata accessor for StaticService);
    v67 = v38;
    v22 = v23;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v58 == v39)
    {
      v40 = 1;
    }

    else
    {
      v40 = sub_1D1E6904C();
    }

    v12 = v60;

    v41 = *v23;
    (*v23)(v66, v12);
    if (v40)
    {
      v42 = v65;
      v43 = v52;
      sub_1D1741C08(v65, v52, &qword_1EC642DB0, &unk_1D1E6F360);
      v44 = *(v61 + 48);
      v45 = StaticService.isActivated.getter();
      sub_1D1741A30(v42, &qword_1EC642DB0, &unk_1D1E6F360);
      v12 = v60;
      sub_1D1B3A990(v43 + v44, type metadata accessor for StaticService);
      v41(v43, v12);
      sub_1D1B3A990(v64, type metadata accessor for StaticService);
      result = (v41)(v63, v12);
      v21 = v62;
      if (v45)
      {
        *(v48 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        if (__OFADD__(v49++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v48, v47, v49, v57);
        }
      }
    }

    else
    {
      sub_1D1741A30(v65, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B3A990(v64, type metadata accessor for StaticService);
      result = (v41)(v63, v12);
      v21 = v62;
    }
  }

  v25 = v17;
  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v50)
    {
      return sub_1D188B1C8(v48, v47, v49, v57);
    }

    v26 = *(v51 + 8 * v17);
    ++v25;
    if (v26)
    {
      v23 = v22;
      v24 = __clz(__rbit64(v26));
      v62 = (v26 - 1) & v26;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1D1B3A06C(unint64_t *result, uint64_t a2, void *a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1D1B3A1AC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_1D1B3A108(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1D1B3A1AC(unint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v61 = a2;
  v62 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v6 = *(*(v68 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v68);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v60 - v10;
  v74 = type metadata accessor for StaticService(0);
  v67 = *(v74 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D1E66A7C();
  v14 = *(*(v77 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v77);
  v76 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = 0;
  v18 = 0;
  v73 = a3;
  v21 = a3[8];
  v20 = a3 + 8;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v65 = v16 + 16;
  v80 = a4;
  v66 = v16;
  v69 = (v16 + 8);
  v70 = v25;
  v79 = v9;
  v71 = v11;
  v64 = a4 + 7;
  while (v24)
  {
    v28 = __clz(__rbit64(v24));
    v75 = (v24 - 1) & v24;
LABEL_13:
    v31 = v28 | (v18 << 6);
    v32 = v73;
    v33 = *(v66 + 16);
    v35 = v76;
    v34 = v77;
    v33(v76, v73[6] + *(v66 + 72) * v31, v77);
    v36 = v32[7];
    v37 = *(v67 + 72);
    v72 = v31;
    v38 = v36 + v37 * v31;
    v39 = v78;
    sub_1D1B39250(v38, v78, type metadata accessor for StaticService);
    v33(v11, v35, v34);
    v40 = v68;
    sub_1D1B39250(v39, &v11[*(v68 + 48)], type metadata accessor for StaticService);
    v41 = v79;
    sub_1D1741C08(v11, v79, &qword_1EC642DB0, &unk_1D1E6F360);
    v42 = v41 + *(v40 + 48);
    v43 = *(v42 + *(v74 + 112));
    if (v43 == 53)
    {
      LOBYTE(v43) = *(v42 + *(v74 + 104));
    }

    sub_1D1B3A990(v42, type metadata accessor for StaticService);
    v44 = v64;
    if (!v80[2])
    {
      goto LABEL_5;
    }

    v45 = v80;
    v46 = v80[5];
    sub_1D1E6920C();
    v82 = v43;
    ServiceKind.rawValue.getter();
    sub_1D1E678EC();

    v47 = sub_1D1E6926C();
    v48 = -1 << *(v45 + 32);
    v49 = v47 & ~v48;
    if ((*(v44 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
    {
      v50 = ~v48;
      while (1)
      {
        v81 = *(v80[6] + v49);
        v82 = v43;
        v51 = ServiceKind.rawValue.getter();
        v53 = v52;
        if (v51 == ServiceKind.rawValue.getter() && v53 == v54)
        {
          break;
        }

        v56 = sub_1D1E6904C();

        if (v56)
        {
          goto LABEL_26;
        }

        v49 = (v49 + 1) & v50;
        if (((*(v44 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_26:
      v11 = v71;
      sub_1D1741A30(v71, &qword_1EC642DB0, &unk_1D1E6F360);
      v57 = *v69;
      v58 = v77;
      (*v69)(v79, v77);
      sub_1D1B3A990(v78, type metadata accessor for StaticService);
      result = (v57)(v76, v58);
      *(v62 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v72;
      v59 = __OFADD__(v63++, 1);
      v25 = v70;
      v24 = v75;
      if (v59)
      {
        __break(1u);
        return sub_1D188B1C8(v62, v61, v63, v73);
      }
    }

    else
    {
LABEL_5:
      v11 = v71;
      sub_1D1741A30(v71, &qword_1EC642DB0, &unk_1D1E6F360);
      v26 = *v69;
      v27 = v77;
      (*v69)(v79, v77);
      sub_1D1B3A990(v78, type metadata accessor for StaticService);
      result = (v26)(v76, v27);
      v25 = v70;
      v24 = v75;
    }
  }

  v29 = v18;
  while (1)
  {
    v18 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v18 >= v25)
    {
      return sub_1D188B1C8(v62, v61, v63, v73);
    }

    v30 = v20[v18];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v75 = (v30 - 1) & v30;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B3A7D0(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_1D1B3A06C(v13, v7, a1, a2);
      MEMORY[0x1D3893640](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1D1B3A1AC((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1D1B3A990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B3AA18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B39320();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360);
  sub_1D174A5FC(&qword_1EE07D170);
  v22 = v25;
  sub_1D1E6647C();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1D1B3AE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v99 = type metadata accessor for IconTextValueStringDataHolder();
  v3 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v96 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v94 - v9;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v97 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v94 - v16;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v17 = *(*(v113 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v113);
  v104 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v94 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v94 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v103 = &v94 - v26;
  v27 = type metadata accessor for LightsStatusItem(0);
  v106 = *(v27 - 8);
  v28 = *(v106 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[*(v29 + 24)] = 2;
  v107 = v29;
  v32 = *(v29 + 28);
  v95 = v31;
  v31[v32] = 3;
  v117 = MEMORY[0x1E69E7CD0];
  v33 = a1 + 64;
  v34 = 1 << *(a1 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(a1 + 64);
  v37 = (v34 + 63) >> 6;
  v109 = v12 + 16;
  v102 = (v12 + 8);
  v114 = a1;

  v39 = 0;
  v111 = v12;
  v112 = v11;
  v110 = v10;
  if (v36)
  {
    while (1)
    {
LABEL_8:
      v41 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v42 = v41 | (v39 << 6);
      v43 = v114;
      (*(v12 + 16))(v22, *(v114 + 48) + *(v12 + 72) * v42, v11);
      v44 = *(v43 + 56);
      v45 = type metadata accessor for StaticService(0);
      v46 = v44 + *(*(v45 - 8) + 72) * v42;
      v47 = v113;
      sub_1D1B39250(v46, &v22[*(v113 + 48)], type metadata accessor for StaticService);
      sub_1D182BEE0(v22, v25);
      v48 = &v25[*(v47 + 48)];
      v49 = v48[*(v45 + 104)];
      if (v49 != 28)
      {
        if (v49 != 41 && v49 != 34 || v48[*(v45 + 112)] == 53)
        {
LABEL_18:
          result = sub_1D1741A30(v25, &qword_1EC642DB0, &unk_1D1E6F360);
          v11 = v112;
          goto LABEL_19;
        }

        v116 = v48[*(v45 + 112)];
        v115 = 28;
        v50 = ServiceKind.rawValue.getter();
        v52 = v51;
        if (v50 == ServiceKind.rawValue.getter() && v52 == v53)
        {
        }

        else
        {
          v54 = sub_1D1E6904C();

          if ((v54 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      if ((StaticService.isActivated.getter() & 1) == 0)
      {
        goto LABEL_18;
      }

      v55 = v25;
      v100 = v25;
      v56 = v103;
      sub_1D182BEE0(v55, v103);
      v101 = v22;
      v57 = v104;
      sub_1D1741C08(v56, v104, &qword_1EC642DB0, &unk_1D1E6F360);
      v58 = *(v113 + 48);
      v59 = v105;
      sub_1D1762CB8(v105, v57);
      v11 = v112;
      (*v102)(v59, v112);
      v60 = v56;
      v25 = v100;
      sub_1D1741A30(v60, &qword_1EC642DB0, &unk_1D1E6F360);
      v61 = &v57[v58];
      v22 = v101;
      result = sub_1D1797870(v61);
LABEL_19:
      v10 = v110;
      v12 = v111;
      if (!v36)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      return result;
    }

    if (v40 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v40);
    ++v39;
    if (v36)
    {
      v39 = v40;
      goto LABEL_8;
    }
  }

  v62 = v117;
  if (*(v117 + 16))
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v63 = static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EC5000);
    v64 = v11;
    v113 = v65;
    v114 = v63;
    static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    v66 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1D1E739C0;
    v68 = *(v62 + 16);
    v69 = MEMORY[0x1E69E65A8];
    *(v67 + 56) = MEMORY[0x1E69E6530];
    *(v67 + 64) = v69;
    *(v67 + 32) = v68;
    v70 = sub_1D1E6783C();
    v71 = v12;
    v73 = v72;

    v74 = v96;
    sub_1D1741C08(v66, v96, &qword_1EC642590, qword_1D1E71260);
    v75 = *(v71 + 48);
    if (v75(v74, 1, v64) == 1)
    {
      v76 = v71;
      v77 = v97;
      sub_1D1E66A6C();
      sub_1D1741A30(v66, &qword_1EC642590, qword_1D1E71260);
      v78 = v75(v74, 1, v64) == 1;
      v79 = v108;
      v80 = v74;
      v82 = v98;
      v81 = v99;
      if (!v78)
      {
        sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v66, &qword_1EC642590, qword_1D1E71260);
      v76 = v71;
      v83 = *(v71 + 32);
      v77 = v97;
      v83(v97, v74, v64);
      v79 = v108;
      v82 = v98;
      v81 = v99;
    }

    (*(v76 + 32))(v82, v77, v64);
    v84 = &v82[v81[5]];
    strcpy(v84, "lightbulb.fill");
    v84[15] = -18;
    v85 = &v82[v81[6]];
    v86 = v113;
    *v85 = v114;
    v85[1] = v86;
    v87 = &v82[v81[7]];
    *v87 = v70;
    v87[1] = v73;
    v88 = &v82[v81[8]];
    *v88 = 0;
    *(v88 + 1) = 0;
    *(v88 + 2) = 0;
    v88[24] = -1;
    v89 = v82;
    v90 = v95;
    v91 = sub_1D1B3C5CC(v89, v95, type metadata accessor for IconTextValueStringDataHolder);
    v92 = v107;
    v93 = *(v107 + 20);
    MEMORY[0x1EEE9AC00](v91);
    *(&v94 - 2) = v62;
    v117 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    sub_1D1B3C5CC(v90, v79, type metadata accessor for LightsStatusItem);
    return (*(v106 + 56))(v79, 0, 1, v92);
  }

  else
  {

    return (*(v106 + 56))(v108, 1, 1, v107);
  }
}

uint64_t sub_1D1B3B7D8(uint64_t a1)
{
  result = sub_1D1B3B830(&qword_1EC64AFE0, type metadata accessor for LightsStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B3B830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B3B878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v74 = sub_1D1E66A7C();
  v3 = *(v74 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v69 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v6 = *(*(v73 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v73);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v70 = &v61 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v61 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v61 - v14;
  v15 = type metadata accessor for AllOffLightsStatusItem(0);
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[*(v17 + 24)] = 2;
  v63 = v17;
  v20 = *(v17 + 28);
  v61 = v19;
  v19[v20] = 3;
  v77 = MEMORY[0x1E69E7CD0];
  v21 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a1 + 64);
  v25 = (v22 + 63) >> 6;
  v71 = v3;
  v72 = a1;
  v65 = (v3 + 8);

  v27 = 0;
  for (i = v3 + 16; v24; result = sub_1D1741A30(v13, &qword_1EC642DB0, &unk_1D1E6F360))
  {
LABEL_10:
    while (1)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v30 = v29 | (v27 << 6);
      v31 = v72;
      v32 = v70;
      (*(v71 + 16))(v70, *(v72 + 48) + *(v71 + 72) * v30, v74);
      v33 = *(v31 + 56);
      v34 = type metadata accessor for StaticService(0);
      v35 = v33 + *(*(v34 - 8) + 72) * v30;
      v36 = v73;
      sub_1D1B39250(v35, v32 + *(v73 + 48), type metadata accessor for StaticService);
      sub_1D182BEE0(v32, v13);
      v37 = &v13[*(v36 + 48)];
      v38 = v37[*(v34 + 104)];
      if (v38 != 28)
      {
        break;
      }

LABEL_21:
      v49 = v67;
      sub_1D182BEE0(v13, v67);
      v50 = v68;
      sub_1D1741C08(v49, v68, &qword_1EC642DB0, &unk_1D1E6F360);
      v51 = *(v73 + 48);
      v52 = v69;
      sub_1D1762CB8(v69, v50);
      (*v65)(v52, v74);
      sub_1D1741A30(v49, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1797870(&v50[v51]);
      if (!v24)
      {
        goto LABEL_6;
      }
    }

    if (v38 == 41)
    {
      v44 = v37[*(v34 + 112)];
      if (v44 != 53)
      {
        v76 = v44;
        v75 = 28;
        v45 = ServiceKind.rawValue.getter();
        v47 = v46;
        if (v45 == ServiceKind.rawValue.getter() && v47 == v48)
        {
LABEL_20:

          goto LABEL_21;
        }

        v53 = sub_1D1E6904C();

        if (v53)
        {
          goto LABEL_21;
        }
      }
    }

    else if (v38 == 34)
    {
      v39 = v37[*(v34 + 112)];
      if (v39 != 53)
      {
        v76 = v39;
        v75 = 28;
        v40 = ServiceKind.rawValue.getter();
        v42 = v41;
        if (v40 == ServiceKind.rawValue.getter() && v42 == v43)
        {
          goto LABEL_20;
        }

        v54 = sub_1D1E6904C();

        if (v54)
        {
          goto LABEL_21;
        }
      }
    }
  }

LABEL_6:
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v25)
    {

      v55 = v77;
      v56 = v61;
      v57 = sub_1D1B3BE98(v61);
      v58 = v63;
      v59 = *(v63 + 20);
      MEMORY[0x1EEE9AC00](v57);
      *(&v61 - 2) = v55;
      v77 = type metadata accessor for StaticService(0);
      sub_1D1E66C8C();

      type metadata accessor for TilesFilter(0);
      swift_storeEnumTagMultiPayload();
      v60 = v64;
      sub_1D1B3C5CC(v56, v64, type metadata accessor for AllOffLightsStatusItem);
      return (*(v62 + 56))(v60, 0, 1, v58);
    }

    v24 = *(v21 + 8 * v28);
    ++v27;
    if (v24)
    {
      v27 = v28;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

int *sub_1D1B3BE98@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  (*(v3 + 56))(&v26 - v12, 1, 1, v2);
  v14 = static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EC5000);
  v26 = v15;
  v27 = v14;
  v16 = static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC5030);
  v18 = v17;
  sub_1D1741C08(v13, v11, &qword_1EC642590, qword_1D1E71260);
  v19 = *(v3 + 48);
  if (v19(v11, 1, v2) == 1)
  {
    sub_1D1E66A6C();
    sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
    if (v19(v11, 1, v2) != 1)
    {
      sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
    (*(v3 + 32))(v6, v11, v2);
  }

  (*(v3 + 32))(a1, v6, v2);
  result = type metadata accessor for IconTextValueStringDataHolder();
  v21 = (a1 + result[5]);
  strcpy(v21, "lightbulb.fill");
  v21[15] = -18;
  v22 = (a1 + result[6]);
  v23 = v26;
  *v22 = v27;
  v22[1] = v23;
  v24 = (a1 + result[7]);
  *v24 = v16;
  v24[1] = v18;
  v25 = a1 + result[8];
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *(v25 + 24) = -1;
  return result;
}

uint64_t sub_1D1B3C190@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B39320();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1B3B830(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v22 = v25;
  sub_1D1E6647C();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1D1B3C574(uint64_t a1)
{
  result = sub_1D1B3B830(&qword_1EC64AFE8, type metadata accessor for AllOffLightsStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B3C5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TilesFilter(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconTextValueStringDataHolder();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TilesFilter(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1D1B3C8FC()
{
  type metadata accessor for IconTextValueStringDataHolder();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TilesFilter(319);
    if (v1 <= 0x3F)
    {
      sub_1D1B33D4C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D1B3C9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v198 = a1;
  v186 = a3;
  v183 = type metadata accessor for IconTextValueStringDataHolder();
  v4 = *(*(v183 - 8) + 64);
  MEMORY[0x1EEE9AC00](v183);
  v182 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v181 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v180 = &v177 - v10;
  v192 = type metadata accessor for StatusStrings.Options();
  v11 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192);
  v193 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v205 = &v177 - v15;
  v204 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v191 = *(v204 - 8);
  v16 = *(v191 + 8);
  MEMORY[0x1EEE9AC00](v204);
  v195 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for StaticMediaProfile();
  v197 = *(v210 - 1);
  v18 = *(v197 + 64);
  v19 = MEMORY[0x1EEE9AC00](v210);
  v212 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v196 = &v177 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645460, &unk_1D1E799F0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v209 = &v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v216 = &v177 - v26;
  v208 = type metadata accessor for StaticMediaSystem();
  v202 = *(v208 - 8);
  v27 = *(v202 + 64);
  v28 = MEMORY[0x1EEE9AC00](v208);
  v30 = &v177 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v200 = &v177 - v31;
  v32 = sub_1D1E66A7C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v178 = &v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v194 = &v177 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v219 = &v177 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645470, &qword_1D1E79A00);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v44 = &v177 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v177 - v45;
  v47 = type metadata accessor for SpeakerStatusItem(0);
  v184 = *(v47 - 8);
  v48 = *(v184 + 64);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v177 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[v49[6]] = 3;
  v51[v49[7]] = 3;
  v185 = v49;
  v52 = v49[8];
  v179 = v51;
  v53 = &v51[v52];
  v54 = sub_1D1E673AC();
  result = sub_1D1E673CC();
  v56 = 0;
  v57 = MEMORY[0x1E69E7CD0];
  v203 = a2;
  v59 = a2 + 64;
  v58 = *(a2 + 64);
  v60 = 1 << *(a2 + 32);
  v61 = -1;
  *v53 = v54;
  v53[1] = result;
  v177 = v53;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & v58;
  v226 = v57;
  v227 = v57;
  v225 = v57;
  v63 = (v60 + 63) >> 6;
  v214 = v32;
  v215 = (v33 + 32);
  v213 = v33;
  v217 = (v33 + 8);
  v218 = (v33 + 16);
  v201 = v30;
  v199 = v44;
  v211 = v46;
  v207 = a2 + 64;
  v206 = v63;
  while (2)
  {
    if (v62)
    {
      v65 = v56;
      goto LABEL_16;
    }

    if (v63 <= v56 + 1)
    {
      v66 = v56 + 1;
    }

    else
    {
      v66 = v63;
    }

    v67 = v66 - 1;
    do
    {
      v65 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
        return result;
      }

      if (v65 >= v63)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
        (*(*(v86 - 8) + 56))(v44, 1, 1, v86);
        v62 = 0;
        v56 = v67;
        goto LABEL_17;
      }

      v62 = *(v59 + 8 * v65);
      ++v56;
    }

    while (!v62);
    v56 = v65;
LABEL_16:
    v68 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
    v69 = v68 | (v65 << 6);
    v70 = v203;
    v72 = v213;
    v71 = v214;
    v73 = v219;
    (*(v213 + 16))(v219, *(v203 + 48) + *(v213 + 72) * v69, v214);
    v74 = v200;
    sub_1D1B3F578(*(v70 + 56) + *(v202 + 72) * v69, v200, type metadata accessor for StaticMediaSystem);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
    v76 = *(v75 + 48);
    v77 = *(v72 + 32);
    v32 = v71;
    v78 = v199;
    v77(v199, v73, v32);
    v79 = v74;
    v44 = v78;
    sub_1D1B3F650(v79, &v78[v76], type metadata accessor for StaticMediaSystem);
    (*(*(v75 - 8) + 56))(v78, 0, 1, v75);
    v30 = v201;
    v46 = v211;
LABEL_17:
    sub_1D1741A90(v44, v46, &qword_1EC645470, &qword_1D1E79A00);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
    if ((*(*(v80 - 8) + 48))(v46, 1, v80) != 1)
    {
      sub_1D1B3F650(&v46[*(v80 + 48)], v30, type metadata accessor for StaticMediaSystem);
      v81 = *&v30[*(v208 + 96)];

      sub_1D1930E94(v82);
      if (StaticMediaSystem.isActivated.getter())
      {
        v83 = v194;
        (*v218)(v194, v30, v32);
        v84 = v219;
        sub_1D1762CB8(v219, v83);
        v64 = *v217;
        v85 = v84;
        v46 = v211;
        (*v217)(v85, v32);
        sub_1D1B3F5E8(v30, type metadata accessor for StaticMediaSystem);
      }

      else
      {
        sub_1D1B3F5E8(v30, type metadata accessor for StaticMediaSystem);
        v64 = *v217;
      }

      v63 = v206;
      result = v64(v46, v32);
      v59 = v207;
      continue;
    }

    break;
  }

  v87 = 0;
  v88 = (v198 + 64);
  v89 = 1 << *(v198 + 32);
  v90 = -1;
  if (v89 < 64)
  {
    v90 = ~(-1 << v89);
  }

  v91 = v90 & *(v198 + 64);
  v92 = (v89 + 63) >> 6;
  v208 = (v191 + 48);
  v199 = "CapitalizedPlural";
  v191 = "ionSpeaker_NotPlaying";
  v190 = "StateDescriptionLoading";
  v189 = "StateDescriptionInterrupted";
  v188 = "StateDescriptionStopped";
  v187 = "StateDescriptionPaused";
  v93 = v209;
  v211 = (v198 + 64);
  v207 = v92;
  if (!v91)
  {
LABEL_25:
    if (v92 <= v87 + 1)
    {
      v95 = v87 + 1;
    }

    else
    {
      v95 = v92;
    }

    v96 = v95 - 1;
    while (1)
    {
      v94 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        goto LABEL_85;
      }

      if (v94 >= v92)
      {
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
        (*(*(v124 - 8) + 56))(v93, 1, 1, v124);
        v91 = 0;
        v87 = v96;
        goto LABEL_34;
      }

      v91 = *&v88[8 * v94];
      ++v87;
      if (v91)
      {
        v87 = v94;
        goto LABEL_33;
      }
    }
  }

  while (2)
  {
    v94 = v87;
LABEL_33:
    v97 = __clz(__rbit64(v91));
    v91 &= v91 - 1;
    v98 = v97 | (v94 << 6);
    v99 = v198;
    v100 = v213;
    v32 = v214;
    v101 = v219;
    (*(v213 + 16))(v219, *(v198 + 48) + *(v213 + 72) * v98, v214);
    v102 = v196;
    sub_1D1B3F578(*(v99 + 56) + *(v197 + 72) * v98, v196, type metadata accessor for StaticMediaProfile);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
    v104 = *(v103 + 48);
    v93 = v209;
    (*(v100 + 32))(v209, v101, v32);
    sub_1D1B3F650(v102, v93 + v104, type metadata accessor for StaticMediaProfile);
    (*(*(v103 - 8) + 56))(v93, 0, 1, v103);
    v92 = v207;
LABEL_34:
    v105 = v216;
    sub_1D1741A90(v93, v216, &qword_1EC645460, &unk_1D1E799F0);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
    if ((*(*(v106 - 8) + 48))(v105, 1, v106) != 1)
    {
      v107 = v105 + *(v106 + 48);
      v108 = v212;
      sub_1D1B3F650(v107, v212, type metadata accessor for StaticMediaProfile);
      v109 = v205;
      sub_1D1741C08(v108 + v210[18], v205, &qword_1EC643C58, &unk_1D1E995D0);
      if ((*v208)(v109, 1, v204) == 1)
      {
        sub_1D1B3F5E8(v108, type metadata accessor for StaticMediaProfile);
        sub_1D1741A30(v109, &qword_1EC643C58, &unk_1D1E995D0);
        goto LABEL_39;
      }

      v110 = v109;
      v111 = v195;
      sub_1D1B3F650(v110, v195, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (sub_1D171A97C(v111, v225))
      {
        sub_1D1B3F5E8(v111, type metadata accessor for StaticAccessory.DeviceIdentifier);
        sub_1D1B3F5E8(v108, type metadata accessor for StaticMediaProfile);
LABEL_39:
        v112 = v216;
LABEL_69:
        result = (*v217)(v112, v32);
LABEL_70:
        v88 = v211;
        if (!v91)
        {
          goto LABEL_25;
        }

        continue;
      }

      v113 = v192;
      v114 = *(v192 + 44);
      v115 = sub_1D1E669FC();
      v116 = v193;
      (*(*(v115 - 8) + 56))(&v193[v114], 1, 1, v115);
      v117 = 0;
      *v116 = 257;
      v116[2] = 1;
      *(v116 + 3) = 0;
      v116[*(v113 + 48)] = 2;
      v118 = v212;
      v119 = &v116[*(v113 + 52)];
      v119[4] = 0;
      *v119 = 2;
      v120 = v210;
      v121 = *(v118 + v210[15]);
      v200 = v118 + v210[23];
      if (*(v200 + 8) == 1 && v121)
      {
        v117 = *(v118 + v210[16]) ^ 1;
      }

      LODWORD(v202) = *(v118 + v210[26]);
      v201 = v210[19];
      v122 = v201[v118];
      LODWORD(v206) = v117;
      LODWORD(v203) = v121;
      if (v122 <= 2)
      {
        if (!v122)
        {
          v126 = 0xD000000000000025;
          v127 = &v225;
          goto LABEL_57;
        }

        if (v122 != 1)
        {
          v126 = 0xD000000000000026;
          v127 = &v220;
          goto LABEL_57;
        }

        v123 = &v219;
      }

      else
      {
        if (v122 <= 4)
        {
          if (v122 == 3)
          {
            v123 = &v220 + 1;
            goto LABEL_53;
          }

          v126 = 0xD00000000000002BLL;
          v127 = &v221;
LABEL_57:
          v125 = *(v127 - 32) | 0x8000000000000000;
LABEL_58:
          v128 = static String.hfLocalized(_:)(v126, v125);
          v130 = v129;
LABEL_59:
          v131 = v120[25];
          v132 = v193;
          LOBYTE(v223[0]) = v193[4];
          v133 = v212;
          v134 = sub_1D1D32844(v212 + v131, v223);
          if (!v135)
          {
            v136 = *(v133 + v120[24]);
            LOBYTE(v223[0]) = v132[4];
            v134 = _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v136, v223);
          }

          v137 = v216;
          LOBYTE(v220) = v203;
          BYTE1(v220) = v202;
          BYTE2(v220) = 2;
          BYTE3(v220) = v206 & 1;
          BYTE4(v220) = 2;
          *(&v220 + 1) = v128;
          *&v221 = v130;
          *(&v221 + 1) = v134;
          v222 = v135;
          StatusStrings.string(for:)(v132);
          v139 = v138;
          v223[0] = v220;
          v223[1] = v221;
          v224 = v222;
          sub_1D1A46590(v223);
          sub_1D1B3F5E8(v132, type metadata accessor for StatusStrings.Options);
          if (v139)
          {

            v140 = v195;
            v141 = v212;
            v93 = v209;
LABEL_68:
            sub_1D1B3F5E8(v140, type metadata accessor for StaticAccessory.DeviceIdentifier);
            sub_1D1B3F5E8(v141, type metadata accessor for StaticMediaProfile);
            v112 = v137;
            goto LABEL_69;
          }

          v141 = v212;
          v140 = v195;
          v93 = v209;
          if (v201[v212] != 1)
          {
            goto LABEL_68;
          }

          v142 = *(v200 + 8);
          if (v142 <= 1)
          {
            if (*(v200 + 8))
            {
              goto LABEL_67;
            }
          }

          else if (v142 == 2)
          {
            if (*(v200 + 1))
            {
              goto LABEL_67;
            }
          }

          else if (v142 == 3)
          {
LABEL_67:
            v143 = v195;
            v144 = v194;
            (*v218)(v194, v212, v32);
            v145 = v219;
            sub_1D1762CB8(v219, v144);
            v146 = v143;
            v147 = *v217;
            v148 = v145;
            v32 = v214;
            (*v217)(v148, v214);
            sub_1D1B3F5E8(v146, type metadata accessor for StaticAccessory.DeviceIdentifier);
            sub_1D1B3F5E8(v212, type metadata accessor for StaticMediaProfile);
            result = v147(v216, v32);
            goto LABEL_70;
          }

          sub_1D1B3F5E8(v195, type metadata accessor for StaticAccessory.DeviceIdentifier);
          sub_1D1B3F5E8(v141, type metadata accessor for StaticMediaProfile);
          result = (*v217)(v137, v32);
          goto LABEL_70;
        }

        if (v122 != 5)
        {
          v128 = 0;
          v130 = 0;
          goto LABEL_59;
        }

        v123 = &v221 + 1;
      }

LABEL_53:
      v125 = *(v123 - 32) | 0x8000000000000000;
      v126 = 0xD000000000000027;
      goto LABEL_58;
    }

    break;
  }

  v149 = sub_1D18C02C0(v226, v227);
  if (*(v149 + 16))
  {
    v150 = v213;
    v151 = v180;
    (*(v213 + 56))(v180, 1, 1, v32);
    v218 = 0x80000001D1EBDE00;
    v219 = static String.hfLocalized(_:)(0xD000000000000021, 0x80000001D1EC5090);
    v153 = v152;
    static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_1D1E739C0;
    v155 = *(v149 + 16);
    v156 = MEMORY[0x1E69E65A8];
    *(v154 + 56) = MEMORY[0x1E69E6530];
    *(v154 + 64) = v156;
    *(v154 + 32) = v155;
    v157 = sub_1D1E6783C();
    v159 = v158;

    v160 = v181;
    sub_1D1741C08(v151, v181, &qword_1EC642590, qword_1D1E71260);
    v161 = *(v150 + 48);
    if (v161(v160, 1, v32) == 1)
    {
      v162 = v178;
      sub_1D1E66A6C();
      sub_1D1741A30(v151, &qword_1EC642590, qword_1D1E71260);
      if (v161(v160, 1, v32) != 1)
      {
        sub_1D1741A30(v160, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v151, &qword_1EC642590, qword_1D1E71260);
      v162 = v178;
      (*v215)(v178, v160, v32);
    }

    v165 = v182;
    (*v215)(v182, v162, v32);
    v166 = v183;
    v167 = (v165 + *(v183 + 20));
    v168 = v218;
    *v167 = 0xD000000000000010;
    v167[1] = v168;
    v169 = (v165 + v166[6]);
    *v169 = v219;
    v169[1] = v153;
    v170 = (v165 + v166[7]);
    *v170 = v157;
    v170[1] = v159;
    v171 = v165 + v166[8];
    *v171 = 0;
    *(v171 + 8) = 0;
    *(v171 + 16) = 0;
    *(v171 + 24) = -1;
    v172 = v179;
    v173 = sub_1D1B3F650(v165, v179, type metadata accessor for IconTextValueStringDataHolder);
    v174 = v185;
    v175 = v185[5];
    MEMORY[0x1EEE9AC00](v173);
    *(&v177 - 2) = v149;
    *&v223[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    v176 = v186;
    sub_1D1B3F578(v172, v186, type metadata accessor for SpeakerStatusItem);
    (*(v184 + 56))(v176, 0, 1, v174);
    return sub_1D1B3F5E8(v172, type metadata accessor for SpeakerStatusItem);
  }

  else
  {

    v164 = *v177;
    v163 = v177[1];

    return (*(v184 + 56))(v186, 1, 1, v185);
  }
}

uint64_t sub_1D1B3E0DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B020, &qword_1D1E995F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B028, &qword_1D1E995F8);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64B030, &qword_1EC64B020, &qword_1D1E995F0);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B038, &qword_1D1E99628);
  a3[4] = sub_1D1B3F6B8(&qword_1EC64B040, &qword_1EC64B038, &qword_1D1E99628, sub_1D1B3F73C);
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860);
  sub_1D17D8EA8(&qword_1EC64B058, &qword_1EC64B028, &qword_1D1E995F8);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1B3E544(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v22 = v25;
  sub_1D1E6647C();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1D1B3E4EC(uint64_t a1)
{
  result = sub_1D1B3E544(&qword_1EC64B010, type metadata accessor for SpeakerStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B3E544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B3E58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v113 = type metadata accessor for IconTextValueStringDataHolder();
  v3 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v105 - v9;
  v129 = sub_1D1E66A7C();
  v10 = *(v129 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v129);
  v111 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v107 = &v105 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v117 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v124 = &v105 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v128 = &v105 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v123 = &v105 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v105 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v106 = &v105 - v28;
  v29 = type metadata accessor for TelevisionStatusItem(0);
  v114 = *(v29 - 8);
  v30 = *(v114 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[v31[6]] = 3;
  v33[v31[7]] = 3;
  v115 = v31;
  v34 = v31[8];
  v109 = v33;
  v35 = &v33[v34];
  v36 = sub_1D1E6739C();
  v37 = sub_1D1E6739C();
  *v35 = v36;
  v35[1] = v37;
  v105 = v35;
  v131 = MEMORY[0x1E69E7CD0];
  v38 = a1 + 64;
  v39 = 1 << *(a1 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(a1 + 64);
  v42 = (v39 + 63) >> 6;
  v120 = v10 + 16;
  v126 = a1;
  v127 = (v10 + 8);
  v118 = 0x80000001D1EB34F0;

  v44 = 0;
  v121 = v42;
  v122 = a1 + 64;
  v125 = v10;
  v119 = v27;
  if (v41)
  {
LABEL_8:
    while (1)
    {
      v46 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v47 = v46 | (v44 << 6);
      v48 = v126;
      v49 = v123;
      v50 = v129;
      (*(v10 + 16))(v123, *(v126 + 48) + *(v10 + 72) * v47, v129);
      v51 = *(v48 + 56);
      v52 = type metadata accessor for StaticService(0);
      sub_1D1B3F578(v51 + *(*(v52 - 8) + 72) * v47, v49 + *(v15 + 48), type metadata accessor for StaticService);
      sub_1D1741A90(v49, v27, &qword_1EC642DB0, &unk_1D1E6F360);
      v53 = v128;
      sub_1D1741C08(v27, v128, &qword_1EC642DB0, &unk_1D1E6F360);
      v54 = v53 + *(v15 + 48);
      LODWORD(v47) = *(v54 + *(v52 + 96));
      sub_1D1B3F5E8(v54, type metadata accessor for StaticService);
      if (v47 != 1)
      {
        break;
      }

      v55 = v124;
      sub_1D1741C08(v27, v124, &qword_1EC642DB0, &unk_1D1E6F360);
      v56 = v55 + *(v15 + 48);
      v57 = *(v56 + *(v52 + 104));
      sub_1D1B3F5E8(v56, type metadata accessor for StaticService);
      v130 = v57;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v118 == v58)
      {
        v59 = 1;
      }

      else
      {
        v59 = sub_1D1E6904C();
      }

      v60 = v128;

      v61 = *v127;
      v62 = v129;
      (*v127)(v124, v129);
      v61(v60, v62);
      v27 = v119;
      if ((v59 & 1) == 0)
      {
        goto LABEL_17;
      }

      v63 = v117;
      sub_1D1741C08(v119, v117, &qword_1EC642DB0, &unk_1D1E6F360);
      v64 = *(v15 + 48);
      v65 = StaticService.isActivated.getter();
      sub_1D1B3F5E8(v63 + v64, type metadata accessor for StaticService);
      v66 = v63;
      v27 = v119;
      v61(v66, v129);
      if ((v65 & 1) == 0)
      {
        goto LABEL_17;
      }

      v67 = v106;
      sub_1D1741A90(v27, v106, &qword_1EC642DB0, &unk_1D1E6F360);
      v68 = v117;
      sub_1D1741C08(v67, v117, &qword_1EC642DB0, &unk_1D1E6F360);
      v69 = *(v15 + 48);
      v70 = v107;
      sub_1D1762CB8(v107, v68);
      v61(v70, v129);
      v27 = v119;
      sub_1D1741A30(v67, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B3F5E8(&v68[v69], type metadata accessor for StaticService);
LABEL_18:
      v10 = v125;
      v42 = v121;
      v38 = v122;
      if (!v41)
      {
        goto LABEL_4;
      }
    }

    (*v127)(v53, v50);
LABEL_17:
    result = sub_1D1741A30(v27, &qword_1EC642DB0, &unk_1D1E6F360);
    goto LABEL_18;
  }

  while (1)
  {
LABEL_4:
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      return result;
    }

    if (v45 >= v42)
    {
      break;
    }

    v41 = *(v38 + 8 * v45);
    ++v44;
    if (v41)
    {
      v44 = v45;
      goto LABEL_8;
    }
  }

  v71 = v131;
  if (*(v131 + 16))
  {
    v72 = v108;
    v73 = v129;
    (*(v10 + 56))(v108, 1, 1, v129);
    v74 = static String.hfLocalized(_:)(0xD000000000000024, 0x80000001D1EC5060);
    v127 = v75;
    v128 = v74;
    static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1D1E739C0;
    v77 = v71[2];
    v78 = MEMORY[0x1E69E65A8];
    *(v76 + 56) = MEMORY[0x1E69E6530];
    *(v76 + 64) = v78;
    *(v76 + 32) = v77;
    v79 = sub_1D1E6783C();
    v80 = v10;
    v82 = v81;

    v83 = v110;
    sub_1D1741C08(v72, v110, &qword_1EC642590, qword_1D1E71260);
    v84 = *(v80 + 48);
    if (v84(v83, 1, v73) == 1)
    {
      v85 = v72;
      v86 = v80;
      v87 = v111;
      sub_1D1E66A6C();
      sub_1D1741A30(v85, &qword_1EC642590, qword_1D1E71260);
      v88 = v84(v83, 1, v73) == 1;
      v90 = v115;
      v89 = v116;
      v91 = v83;
      v93 = v112;
      v92 = v113;
      if (!v88)
      {
        sub_1D1741A30(v91, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v72, &qword_1EC642590, qword_1D1E71260);
      v86 = v80;
      v96 = *(v80 + 32);
      v87 = v111;
      v96(v111, v83, v73);
      v90 = v115;
      v89 = v116;
      v93 = v112;
      v92 = v113;
    }

    (*(v86 + 32))(v93, v87, v73);
    v97 = (v93 + v92[5]);
    *v97 = 0x6C6C69662E7674;
    v97[1] = 0xE700000000000000;
    v98 = (v93 + v92[6]);
    v99 = v127;
    *v98 = v128;
    v98[1] = v99;
    v100 = (v93 + v92[7]);
    *v100 = v79;
    v100[1] = v82;
    v101 = v93 + v92[8];
    *v101 = 0;
    *(v101 + 8) = 0;
    *(v101 + 16) = 0;
    *(v101 + 24) = -1;
    v102 = v109;
    v103 = sub_1D1B3F650(v93, v109, type metadata accessor for IconTextValueStringDataHolder);
    v104 = v90[5];
    MEMORY[0x1EEE9AC00](v103);
    *(&v105 - 2) = v71;
    v131 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    sub_1D1B3F578(v102, v89, type metadata accessor for TelevisionStatusItem);
    (*(v114 + 56))(v89, 0, 1, v90);
    return sub_1D1B3F5E8(v102, type metadata accessor for TelevisionStatusItem);
  }

  else
  {

    v95 = *v105;
    v94 = v105[1];

    return (*(v114 + 56))(v116, 1, 1, v115);
  }
}

uint64_t sub_1D1B3F0CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B3F6B8(&qword_1EC64AF88, &qword_1EC64AF80, &unk_1D1E9A890, sub_1D1B39544);
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1B3E544(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v22 = v25;
  sub_1D1E6647C();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1D1B3F4DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1D1B3F520(uint64_t a1)
{
  result = sub_1D1B3E544(&qword_1EC64B018, type metadata accessor for TelevisionStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B3F578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B3F5E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B3F650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B3F6B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1D1B393AC();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1B3F73C()
{
  result = qword_1EC64B048;
  if (!qword_1EC64B048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B028, &qword_1D1E995F8);
    sub_1D17D8EA8(&qword_1EC64B050, &qword_1EC64B020, &qword_1D1E995F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B048);
  }

  return result;
}

uint64_t sub_1D1B3F800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B39320();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360);
  sub_1D174A5FC(&qword_1EE07D170);
  v22 = v25;
  sub_1D1E6647C();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1D1B3FEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v90 = type metadata accessor for IconTextValueStringDataHolder();
  v3 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v87 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v83 - v9;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v88 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v83 - v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v16 = *(*(v101 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v101);
  v93 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v83 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v83 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v83 - v25;
  v26 = type metadata accessor for IdleAlarmStatusItem(0);
  v96 = *(v26 - 8);
  v27 = *(v96 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[v28[6]] = 3;
  v30[v28[7]] = 4;
  v97 = v28;
  v31 = v28[8];
  v86 = v30;
  v30[v31] = 4;
  v105 = MEMORY[0x1E69E7CD0];
  v32 = a1 + 64;
  v33 = 1 << *(a1 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a1 + 64);
  v36 = (v33 + 63) >> 6;
  v99 = v11 + 16;
  v91 = (v11 + 8);
  v102 = a1;

  v38 = 0;
  v100 = v11;
  if (v35)
  {
    while (1)
    {
LABEL_10:
      while (1)
      {
        v40 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v41 = v40 | (v38 << 6);
        v42 = v102;
        (*(v11 + 16))(v21, *(v102 + 48) + *(v11 + 72) * v41, v10);
        v43 = *(v42 + 56);
        v44 = type metadata accessor for StaticService(0);
        v45 = v43 + *(*(v44 - 8) + 72) * v41;
        v46 = v101;
        sub_1D1B43A14(v45, &v21[*(v101 + 48)], type metadata accessor for StaticService);
        sub_1D1741A90(v21, v24, &qword_1EC642DB0, &unk_1D1E6F360);
        v47 = &v24[*(v46 + 48)];
        v48 = v47[*(v44 + 104)];
        if (v48 <= 0x19)
        {
          break;
        }

        if (v48 == 26)
        {
          v104 = *&v47[*(v44 + 128)];
          v49 = 74;
          goto LABEL_19;
        }

        if (v48 == 37)
        {
          v104 = *&v47[*(v44 + 128)];
          v49 = 127;
          goto LABEL_19;
        }

LABEL_5:
        result = sub_1D1741A30(v24, &qword_1EC642DB0, &unk_1D1E6F360);
        v11 = v100;
        if (!v35)
        {
          goto LABEL_6;
        }
      }

      if (v48 == 9)
      {
        v104 = *&v47[*(v44 + 128)];
        v49 = 18;
        goto LABEL_19;
      }

      if (v48 != 10)
      {
        goto LABEL_5;
      }

      v104 = *&v47[*(v44 + 128)];
      v49 = 21;
LABEL_19:
      v103 = v49;
      v106 = StaticCharacteristicsBag.int(for:)(&v103);
      if (v106.is_nil || v106.value)
      {
        goto LABEL_5;
      }

      v95 = v10;
      v50 = v92;
      sub_1D1741A90(v24, v92, &qword_1EC642DB0, &unk_1D1E6F360);
      v51 = v93;
      sub_1D1741C08(v50, v93, &qword_1EC642DB0, &unk_1D1E6F360);
      v84 = *(v101 + 48);
      v52 = v94;
      sub_1D1762CB8(v94, v51);
      (*v91)(v52, v95);
      v53 = v50;
      v10 = v95;
      sub_1D1741A30(v53, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B43A7C(&v51[v84], type metadata accessor for StaticService);
      v11 = v100;
      if (!v35)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      return result;
    }

    if (v39 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v39);
    ++v38;
    if (v35)
    {
      v38 = v39;
      goto LABEL_10;
    }
  }

  v54 = v105;
  if (*(v105 + 16))
  {
    v55 = v85;
    (*(v11 + 56))(v85, 1, 1, v10);
    v56 = static String.hfLocalized(_:)(0x736D72616C414648, 0xED0000656C746954);
    v101 = v57;
    v102 = v56;
    static String.hfLocalized(_:)(0xD000000000000026, 0x80000001D1EC51E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v58 = swift_allocObject();
    v59 = v10;
    *(v58 + 16) = xmmword_1D1E739C0;
    v60 = *(v54 + 16);
    v61 = MEMORY[0x1E69E65A8];
    *(v58 + 56) = MEMORY[0x1E69E6530];
    *(v58 + 64) = v61;
    *(v58 + 32) = v60;
    v62 = sub_1D1E6783C();
    v64 = v63;

    v65 = v87;

    sub_1D1741C08(v55, v65, &qword_1EC642590, qword_1D1E71260);
    v66 = *(v11 + 48);
    if (v66(v65, 1, v59) == 1)
    {
      v67 = v55;
      v68 = v88;
      sub_1D1E66A6C();
      sub_1D1741A30(v67, &qword_1EC642590, qword_1D1E71260);
      v69 = v66(v65, 1, v59) == 1;
      v71 = v89;
      v70 = v90;
      v72 = v65;
      v74 = v97;
      v73 = v98;
      if (!v69)
      {
        sub_1D1741A30(v72, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v55, &qword_1EC642590, qword_1D1E71260);
      v68 = v88;
      (*(v11 + 32))(v88, v65, v59);
      v74 = v97;
      v73 = v98;
      v71 = v89;
      v70 = v90;
    }

    (*(v11 + 32))(v71, v68, v59);
    v75 = (v71 + v70[5]);
    *v75 = 0x662E726F736E6573;
    v75[1] = 0xEB000000006C6C69;
    v76 = (v71 + v70[6]);
    v77 = v101;
    *v76 = v102;
    v76[1] = v77;
    v78 = (v71 + v70[7]);
    *v78 = v62;
    v78[1] = v64;
    v79 = v71 + v70[8];
    *v79 = 0;
    *(v79 + 8) = 0;
    *(v79 + 16) = 0;
    *(v79 + 24) = -1;
    v80 = v86;
    v81 = sub_1D1B43958(v71, v86, type metadata accessor for IconTextValueStringDataHolder);
    v82 = v74[5];
    MEMORY[0x1EEE9AC00](v81);
    *(&v83 - 2) = v54;
    v105 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    sub_1D1B43958(v80, v73, type metadata accessor for IdleAlarmStatusItem);
    return (*(v96 + 56))(v73, 0, 1, v74);
  }

  else
  {

    return (*(v96 + 56))(v98, 1, 1, v97);
  }
}

uint64_t sub_1D1B40870(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B108, type metadata accessor for IdleAlarmStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B408C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B40910(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B110, type metadata accessor for IdleOccupancySensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B40968(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B118, type metadata accessor for IdleOccupancySensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B409C0(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B120, type metadata accessor for IdleMotionSensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B40A18(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B128, type metadata accessor for IdleMotionSensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B40A70(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B130, type metadata accessor for IdleContactSensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B40AC8(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B138, type metadata accessor for IdleContactSensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B40B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = sub_1D1E66A7C();
  v103 = *(v3 - 8);
  v104 = v3;
  v4 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v99 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IconTextValueStringDataHolder();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v102 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v93 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B190, &qword_1D1E99BB8);
  v100 = *(v15 - 8);
  v16 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v93 - v17;
  v18 = type metadata accessor for StaticCharacteristic();
  v110 = *(v18 - 8);
  v111 = v18;
  v19 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for StaticService(0);
  v21 = *(v114 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v93 - v30;
  v32 = type metadata accessor for LightSensorStatusItem(0);
  v106 = *(v32 - 8);
  v33 = *(v106 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[v34[6]] = 2;
  v36[v34[7]] = 2;
  v37 = v34[8];
  v98 = v36;
  v36[v37] = 4;
  v38 = sub_1D1B42E2C(a1);
  if (!*(v38 + 16))
  {

    v79 = v107;
    v80 = *(v106 + 56);

    return v80(v79, 1, 1, v32);
  }

  v97 = a1;
  v93 = v32;
  v94 = v9;
  v95 = v6;
  v96 = v15;
  v39 = (v38 + 64);
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 64);
  v43 = (v40 + 63) >> 6;
  v44 = (v21 + 56);
  v112 = v38;
  v113 = (v21 + 48);
  swift_retain_n();
  v45 = 0;
  v46 = 0.0;
  v47 = v114;
  v108 = v31;
  while (1)
  {
    if (!v42)
    {
      if (v43 <= v45 + 1)
      {
        v50 = v45 + 1;
      }

      else
      {
        v50 = v43;
      }

      v51 = v50 - 1;
      while (1)
      {
        v49 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (v49 >= v43)
        {
          v42 = 0;
          v53 = 1;
          v45 = v51;
          goto LABEL_18;
        }

        v42 = *&v39[8 * v49];
        ++v45;
        if (v42)
        {
          v45 = v49;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

    v49 = v45;
LABEL_17:
    v52 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    sub_1D1B43A14(*(v112 + 56) + *(v21 + 72) * (v52 | (v49 << 6)), v31, type metadata accessor for StaticService);
    v53 = 0;
LABEL_18:
    (*v44)(v31, v53, 1, v47);
    sub_1D1741A90(v31, v29, &qword_1EC6436F0, &qword_1D1E99BC0);
    if ((*v113)(v29, 1, v47) == 1)
    {
      break;
    }

    sub_1D1B43958(v29, v24, type metadata accessor for StaticService);
    v54 = *&v24[*(v47 + 128)];
    if (*(v54 + 16))
    {
      v55 = sub_1D171D140(37);
      if (v56)
      {
        v57 = v24;
        v58 = v44;
        v59 = v21;
        v60 = v109;
        sub_1D1B43A14(*(v54 + 56) + *(v110 + 72) * v55, v109, type metadata accessor for StaticCharacteristic);
        v61 = v60 + *(v111 + 24);
        if (*(v61 + 16) == 7)
        {
          value = *v61;
          sub_1D1B43A7C(v60, type metadata accessor for StaticCharacteristic);
          v21 = v59;
          v44 = v58;
          v24 = v57;
          v31 = v108;
          goto LABEL_6;
        }

        sub_1D1B43A7C(v60, type metadata accessor for StaticCharacteristic);
        v21 = v59;
        v44 = v58;
        v24 = v57;
        v31 = v108;
      }
    }

    v116 = v54;
    v115 = 37;
    v118 = StaticCharacteristicsBag.int(for:)(&v115);
    value = 0.0;
    if (!v118.is_nil)
    {
      value = v118.value;
    }

LABEL_6:
    sub_1D1B43A7C(v24, type metadata accessor for StaticService);
    v46 = v46 + value;
    v47 = v114;
  }

  v62 = v112;

  v46 = v46 / *(v62 + 16);
  v63 = [objc_opt_self() lux];
  sub_1D1B439C0();
  v39 = v105;
  sub_1D1E65F9C();
  if (qword_1EC642360 == -1)
  {
    goto LABEL_27;
  }

LABEL_37:
  swift_once();
LABEL_27:
  v64 = [qword_1EC64B060 numberFormatter];
  v66 = v103;
  v65 = v104;
  v68 = v101;
  v67 = v102;
  result = v97;
  if (v64)
  {

    [v64 setMaximumFractionDigits_];

    v111 = sub_1D1E6844C();
    v113 = v70;
    (*(v66 + 56))(v68, 1, 1, v65);
    v71 = static String.hfLocalized(_:)(0xD000000000000018, 0x80000001D1EC5230);
    v73 = v72;
    sub_1D1741C08(v68, v67, &qword_1EC642590, qword_1D1E71260);
    v74 = v68;
    v75 = *(v66 + 48);
    if (v75(v67, 1, v65) == 1)
    {
      v76 = v99;
      sub_1D1E66A6C();
      sub_1D1741A30(v74, &qword_1EC642590, qword_1D1E71260);
      v77 = v75(v67, 1, v65);
      v78 = v76;
      v39 = v105;
      if (v77 != 1)
      {
        sub_1D1741A30(v67, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v74, &qword_1EC642590, qword_1D1E71260);
      v78 = v99;
      (*(v66 + 32))(v99, v67, v65);
    }

    v81 = v94;
    (*(v66 + 32))(v94, v78, v65);
    v82 = v95;
    v83 = (v81 + v95[5]);
    *v83 = 0xD000000000000013;
    v83[1] = 0x80000001D1EC5210;
    v84 = (v81 + v82[6]);
    *v84 = v71;
    v84[1] = v73;
    v85 = (v81 + v82[7]);
    v86 = v113;
    *v85 = v111;
    v85[1] = v86;
    v87 = v81 + v82[8];
    *v87 = 0;
    *(v87 + 8) = 0;
    *(v87 + 16) = 0;
    *(v87 + 24) = -1;
    v88 = v98;
    v89 = sub_1D1B43958(v81, v98, type metadata accessor for IconTextValueStringDataHolder);
    v90 = v93;
    v91 = *(v93 + 20);
    MEMORY[0x1EEE9AC00](v89);
    *(&v93 - 2) = v112;
    v116 = v114;
    sub_1D1E66C8C();

    (*(v100 + 8))(v39, v96);
    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    v92 = v107;
    sub_1D1B43958(v88, v107, type metadata accessor for LightSensorStatusItem);
    return (*(v106 + 56))(v92, 0, 1, v90);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B41638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1A0, &qword_1D1E99BC8);
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1A8, &qword_1D1E99BD0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v37 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B0, &qword_1D1E99BD8);
  v25 = *(v24 - 8);
  v40 = v24;
  v41 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v37 - v27;
  v29 = *a1;
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v10 + 8))(v13, v9);
  type metadata accessor for StaticService(0);
  sub_1D17D8EA8(&qword_1EC64B1C0, &qword_1EC64B1A8, &qword_1D1E99BD0);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350);
  sub_1D1B408C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v30 = v38;
  sub_1D1E6648C();
  (*(v39 + 8))(v18, v30);
  (*(v20 + 8))(v23, v19);
  v31 = v42;
  sub_1D1E6649C();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1C8, &qword_1D1E99BE8);
  v33 = v43;
  v43[3] = v32;
  v33[4] = sub_1D1B43ADC();
  __swift_allocate_boxed_opaque_existential_1(v33);
  sub_1D17D8EA8(&qword_1EC64B200, &qword_1EC64B1B0, &qword_1D1E99BD8);
  sub_1D17D8EA8(&qword_1EC64B208, &qword_1EC64B1A0, &qword_1D1E99BC8);
  sub_1D1B43E84();
  v34 = v40;
  v35 = v44;
  sub_1D1E6646C();
  (*(v45 + 8))(v31, v35);
  return (*(v41 + 8))(v28, v34);
}

void sub_1D1B41BD4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  v1 = [v0 numberFormatter];
  if (v1)
  {
    v2 = v1;
    [v1 setMaximumIntegerDigits_];

    v3 = [v0 numberFormatter];
    if (v3)
    {
      v4 = v3;
      [v3 setUsesSignificantDigits_];

      qword_1EC64B060 = v0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D1B41C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v103 = type metadata accessor for IconTextValueStringDataHolder();
  v3 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v100 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v98 - v9;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v101 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v98 - v15;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v16 = *(*(v119 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v119);
  v111 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v98 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v114 = &v98 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v120 = &v98 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v109 = &v98 - v26;
  v27 = type metadata accessor for OutletStatusItem(0);
  v104 = *(v27 - 8);
  v28 = *(v104 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[*(v29 + 24)] = 7;
  v105 = v29;
  v32 = *(v29 + 28);
  v99 = v31;
  v31[v32] = 3;
  v122 = MEMORY[0x1E69E7CD0];
  v33 = a1 + 64;
  v34 = 1 << *(a1 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(a1 + 64);
  v37 = (v34 + 63) >> 6;
  v117 = a1;
  v118 = 0x80000001D1EB3310;
  v112 = (v11 + 8);
  v113 = v11 + 16;

  v39 = 0;
  v115 = v10;
  v116 = v11;
  v110 = v21;
  while (v36)
  {
LABEL_11:
    v41 = __clz(__rbit64(v36)) | (v39 << 6);
    v42 = v117;
    v43 = v114;
    (*(v11 + 16))(v114, *(v117 + 48) + *(v11 + 72) * v41, v10);
    v44 = *(v42 + 56);
    v45 = type metadata accessor for StaticService(0);
    v46 = v44 + *(*(v45 - 8) + 72) * v41;
    v47 = v119;
    sub_1D1B43A14(v46, &v43[*(v119 + 48)], type metadata accessor for StaticService);
    v48 = v43;
    v49 = v120;
    sub_1D1741A90(v48, v120, &qword_1EC642DB0, &unk_1D1E6F360);
    sub_1D1741C08(v49, v21, &qword_1EC642DB0, &unk_1D1E6F360);
    v50 = &v21[*(v47 + 48)];
    v51 = *(v50 + *(v45 + 112));
    if (v51 == 53)
    {
      LOBYTE(v51) = *(v50 + *(v45 + 104));
    }

    sub_1D1B43A7C(v50, type metadata accessor for StaticService);
    v121 = v51;
    v52 = ServiceKind.rawValue.getter();
    v54 = v112;
    if (v52 == 0xD000000000000024 && v118 == v53)
    {
      v55 = 1;
    }

    else
    {
      v55 = sub_1D1E6904C();
    }

    v36 &= v36 - 1;

    v56 = *v54;
    v57 = v115;
    (*v54)(v21, v115);
    if ((v55 & 1) == 0)
    {
      goto LABEL_4;
    }

    v58 = v111;
    sub_1D1741C08(v120, v111, &qword_1EC642DB0, &unk_1D1E6F360);
    v59 = *(v119 + 48);
    v60 = StaticService.isActivated.getter();
    sub_1D1B43A7C(v58 + v59, type metadata accessor for StaticService);
    v61 = v58;
    v21 = v110;
    v56(v61, v57);
    if (v60)
    {
      v62 = v109;
      sub_1D1741A90(v120, v109, &qword_1EC642DB0, &unk_1D1E6F360);
      v63 = v62;
      v64 = v111;
      sub_1D1741C08(v63, v111, &qword_1EC642DB0, &unk_1D1E6F360);
      v108 = *(v119 + 48);
      v65 = v107;
      sub_1D1762CB8(v107, v64);
      v56(v65, v57);
      sub_1D1741A30(v109, &qword_1EC642DB0, &unk_1D1E6F360);
      v21 = v110;
      result = sub_1D1B43A7C(&v64[v108], type metadata accessor for StaticService);
    }

    else
    {
LABEL_4:
      result = sub_1D1741A30(v120, &qword_1EC642DB0, &unk_1D1E6F360);
    }

    v10 = v57;
    v11 = v116;
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      return result;
    }

    if (v40 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v40);
    ++v39;
    if (v36)
    {
      v39 = v40;
      goto LABEL_11;
    }
  }

  v66 = v122;
  if (*(v122 + 16))
  {
    v67 = v98;
    (*(v11 + 56))(v98, 1, 1, v10);
    v118 = 0x80000001D1EB5F40;
    v68 = static String.hfLocalized(_:)(0xD000000000000020, 0x80000001D1EC5250);
    v69 = v10;
    v70 = v67;
    v119 = v71;
    v120 = v68;
    static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    v72 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1D1E739C0;
    v74 = *(v66 + 16);
    v75 = MEMORY[0x1E69E65A8];
    *(v73 + 56) = MEMORY[0x1E69E6530];
    *(v73 + 64) = v75;
    *(v73 + 32) = v74;
    v76 = sub_1D1E6783C();
    v78 = v77;

    v79 = v100;

    sub_1D1741C08(v70, v79, &qword_1EC642590, qword_1D1E71260);
    v80 = *(v11 + 48);
    if (v80(v79, 1, v69) == 1)
    {
      v81 = v72;
      v82 = v101;
      sub_1D1E66A6C();
      sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
      v83 = v80(v79, 1, v69) == 1;
      v84 = v106;
      v85 = v79;
      v87 = v102;
      v86 = v103;
      if (!v83)
      {
        sub_1D1741A30(v85, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
      v81 = v72;
      v88 = *(v72 + 32);
      v82 = v101;
      v88(v101, v79, v69);
      v84 = v106;
      v87 = v102;
      v86 = v103;
    }

    (*(v81 + 32))(v87, v82, v69);
    v89 = (v87 + v86[5]);
    *v89 = 0xD000000000000017;
    v89[1] = v118;
    v90 = (v87 + v86[6]);
    v91 = v119;
    *v90 = v120;
    v90[1] = v91;
    v92 = (v87 + v86[7]);
    *v92 = v76;
    v92[1] = v78;
    v93 = v87 + v86[8];
    *v93 = 0;
    *(v93 + 8) = 0;
    *(v93 + 16) = 0;
    *(v93 + 24) = -1;
    v94 = v99;
    v95 = sub_1D1B43958(v87, v99, type metadata accessor for IconTextValueStringDataHolder);
    v96 = v105;
    v97 = *(v105 + 20);
    MEMORY[0x1EEE9AC00](v95);
    *(&v98 - 2) = v66;
    v122 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    sub_1D1B43958(v94, v84, type metadata accessor for OutletStatusItem);
    return (*(v104 + 56))(v84, 0, 1, v96);
  }

  else
  {

    return (*(v104 + 56))(v106, 1, 1, v105);
  }
}

uint64_t sub_1D1B426D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B39320();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1B408C8(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v22 = v25;
  sub_1D1E6647C();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1D1B42ABC(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B140, type metadata accessor for ClosedWindowStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42B14(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B148, type metadata accessor for ClosedWindowStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42B6C(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B150, type metadata accessor for ClosedDoorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42BC4(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B158, type metadata accessor for ClosedDoorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42C1C(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B160, type metadata accessor for ClosedGarageDoorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42C74(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B168, type metadata accessor for ClosedGarageDoorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42CCC(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B170, type metadata accessor for LightSensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42D24(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B178, type metadata accessor for OutletStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42D7C(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B180, type metadata accessor for ClosedBlindsStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42DD4(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B188, type metadata accessor for ClosedBlindsStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42E2C(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D1B42F8C(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_1D1B43478(v9, v4, v2);
  result = MEMORY[0x1D3893640](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B42F8C(unint64_t *a1, uint64_t a2, void *a3)
{
  v46 = a2;
  v47 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4 = *(*(v56 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v56);
  v64 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v45 - v7;
  v8 = type metadata accessor for StaticService(0);
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D1E66A7C();
  v11 = *(*(v61 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v61);
  v60 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v57 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v48 = 0;
  v49 = (v19 + 63) >> 6;
  v52 = v13 + 16;
  v53 = v13;
  v58 = 0x80000001D1EB31C0;
  v51 = (v13 + 8);
  while (v21)
  {
    v25 = __clz(__rbit64(v21));
    v59 = (v21 - 1) & v21;
LABEL_12:
    v28 = v25 | (v15 << 6);
    v29 = v57;
    v30 = *(v53 + 16);
    v31 = v60;
    v32 = v61;
    v30(v60, v57[6] + *(v53 + 72) * v28, v61);
    v33 = v29[7];
    v34 = *(v54 + 72);
    v50 = v28;
    v35 = v33 + v34 * v28;
    v36 = v63;
    sub_1D1B43A14(v35, v63, type metadata accessor for StaticService);
    v37 = v62;
    v30(v62, v31, v32);
    v38 = v56;
    sub_1D1B43A14(v36, v37 + *(v56 + 48), type metadata accessor for StaticService);
    v39 = v64;
    sub_1D1741C08(v37, v64, &qword_1EC642DB0, &unk_1D1E6F360);
    v40 = v39 + *(v38 + 48);
    LOBYTE(v39) = *(v40 + *(v55 + 104));
    sub_1D1B43A7C(v40, type metadata accessor for StaticService);
    v65 = v39;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v58 == v41)
    {

      sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
      v42 = *v51;
      v43 = v61;
      (*v51)(v64, v61);
      sub_1D1B43A7C(v63, type metadata accessor for StaticService);
      result = (v42)(v60, v43);
      v21 = v59;
      goto LABEL_15;
    }

    v22 = sub_1D1E6904C();

    sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
    v23 = *v51;
    v24 = v61;
    (*v51)(v64, v61);
    sub_1D1B43A7C(v63, type metadata accessor for StaticService);
    result = (v23)(v60, v24);
    v21 = v59;
    if (v22)
    {
LABEL_15:
      *(v47 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      if (__OFADD__(v48++, 1))
      {
        __break(1u);
        return sub_1D188B1C8(v47, v46, v48, v57);
      }
    }
  }

  v26 = v15;
  while (1)
  {
    v15 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v15 >= v49)
    {
      return sub_1D188B1C8(v47, v46, v48, v57);
    }

    v27 = v17[v15];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v59 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1B43478(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D1B42F8C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1D1B434F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for StaticService(0);
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D1E66A7C();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v13);
  v49 = result;
  v50 = v6;
  v44 = v6 + 32;
  v45 = v6 + 16;
  v17 = &v42 - v16;
  v54 = (v18 + 48);
  v55 = (v18 + 56);
  v46 = &v42 - v16;
  v47 = v12;
  while (1)
  {
    v19 = *v2;
    v20 = v2[1];
    v22 = v2[2];
    v21 = v2[3];
    v23 = v2[4];
    v57 = v22;
    if (!v23)
    {
      break;
    }

    v24 = v21;
LABEL_11:
    v56 = (v23 - 1) & v23;
    v28 = __clz(__rbit64(v23)) | (v24 << 6);
    v30 = v50;
    v29 = v51;
    v31 = v48;
    (*(v50 + 16))(v48, *(v19 + 48) + *(v50 + 72) * v28, v51);
    v32 = v52;
    sub_1D1B43A14(*(v19 + 56) + *(v53 + 72) * v28, v52, type metadata accessor for StaticService);
    v13 = v49;
    v33 = *(v49 + 48);
    v34 = *(v30 + 32);
    v12 = v47;
    v34(v47, v31, v29);
    sub_1D1B43958(v32, &v12[v33], type metadata accessor for StaticService);
    v35 = 0;
    v27 = v24;
    v17 = v46;
LABEL_12:
    v36 = *v55;
    (*v55)(v12, v35, 1, v13);
    *v2 = v19;
    v2[1] = v20;
    v37 = v56;
    v2[2] = v57;
    v2[3] = v27;
    v2[4] = v37;
    if ((*v54)(v12, 1, v13) == 1)
    {
      sub_1D1741A30(v12, &qword_1EC643C68, &unk_1D1E764C0);
      v39 = 1;
      v40 = v43;
      return (v36)(v40, v39, 1, v13);
    }

    sub_1D1741A90(v12, v17, &qword_1EC642DB0, &unk_1D1E6F360);
    v38 = v2[6];
    if ((v2[5])(v17))
    {
      v41 = v17;
      v40 = v43;
      sub_1D1741A90(v41, v43, &qword_1EC642DB0, &unk_1D1E6F360);
      v39 = 0;
      return (v36)(v40, v39, 1, v13);
    }

    result = sub_1D1741A30(v17, &qword_1EC642DB0, &unk_1D1E6F360);
  }

  v25 = (v22 + 64) >> 6;
  if (v25 <= v21 + 1)
  {
    v26 = v21 + 1;
  }

  else
  {
    v26 = (v22 + 64) >> 6;
  }

  v27 = v26 - 1;
  while (1)
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v24 >= v25)
    {
      v56 = 0;
      v35 = 1;
      goto LABEL_12;
    }

    v23 = *(v20 + 8 * v24);
    ++v21;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B43958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1B439C0()
{
  result = qword_1EC64B198;
  if (!qword_1EC64B198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC64B198);
  }

  return result;
}

uint64_t sub_1D1B43A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B43A7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1B43ADC()
{
  result = qword_1EC64B1D0;
  if (!qword_1EC64B1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B1C8, &qword_1D1E99BE8);
    sub_1D1B43B94();
    sub_1D17D8EA8(&qword_1EC64B1F8, &qword_1EC64B1A0, &qword_1D1E99BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B1D0);
  }

  return result;
}

unint64_t sub_1D1B43B94()
{
  result = qword_1EC64B1D8;
  if (!qword_1EC64B1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B1B0, &qword_1D1E99BD8);
    sub_1D1B43C20();
    sub_1D1B39544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B1D8);
  }

  return result;
}

unint64_t sub_1D1B43C20()
{
  result = qword_1EC64B1E0;
  if (!qword_1EC64B1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B1A8, &qword_1D1E99BD0);
    sub_1D1B43CAC();
    sub_1D1B43D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B1E0);
  }

  return result;
}

unint64_t sub_1D1B43CAC()
{
  result = qword_1EC64B1E8;
  if (!qword_1EC64B1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B408C8(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1B408C8(&qword_1EC644750, type metadata accessor for StaticService);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B1E8);
  }

  return result;
}

unint64_t sub_1D1B43D98()
{
  result = qword_1EC64B1F0;
  if (!qword_1EC64B1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B408C8(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1B408C8(&qword_1EC6446F8, type metadata accessor for StaticService);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B1F0);
  }

  return result;
}

unint64_t sub_1D1B43E84()
{
  result = qword_1EC64B210;
  if (!qword_1EC64B210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1B408C8(&qword_1EE07AB18, type metadata accessor for StaticService);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B210);
  }

  return result;
}

uint64_t sub_1D1B4427C()
{
  result = type metadata accessor for IconTextValueStringDataHolder();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TilesFilter(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1B4431C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B370, &unk_1D1E9A1E0);
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B378, &qword_1D1E9A1F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23[-v18];
  v20 = *a1;
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v11 + 8))(v14, v10);
  v27 = v24;
  sub_1D1E664BC();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B380, &qword_1D1E9A218);
  a3[4] = sub_1D1B45EB8();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64B3A0, &qword_1EC64B378, &qword_1D1E9A1F0);
  sub_1D17D8EA8(&qword_1EC64B3A8, &qword_1EC64B370, &unk_1D1E9A1E0);
  sub_1D18DF248();
  v21 = v25;
  sub_1D1E6644C();
  (*(v26 + 8))(v9, v21);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1D1B4468C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v130 = type metadata accessor for IconTextValueStringDataHolder();
  v3 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v128 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v135 = &v127 - v9;
  v10 = type metadata accessor for StaticService(0);
  v145 = *(v10 - 8);
  v11 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v144 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D1E66A7C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v131 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v143 = &v127 - v18;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v19 = *(v155 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v155);
  v150 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v149 = &v127 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v153 = &v127 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v152 = &v127 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v151 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v127 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v154 = &v127 - v35;
  v36 = type metadata accessor for SecuritySystemStatusItem(0);
  v132 = *(v36 - 8);
  v37 = *(v132 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[v38[6]] = 4;
  v40[v38[7]] = 0;
  v137 = v38;
  v41 = v38[8];
  v161 = 35;
  v157 = v10;
  v164 = v10;
  sub_1D1E66C8C();
  type metadata accessor for TilesFilter(0);
  v136 = v40;
  v127 = v41;
  v42 = v34;
  swift_storeEnumTagMultiPayload();
  v138 = sub_1D18DB3A0(MEMORY[0x1E69E7CC0]);
  v43 = *(a1 + 64);
  v140 = a1 + 64;
  v44 = -1 << *(a1 + 32);
  if (-v44 < 64)
  {
    v45 = ~(-1 << -v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & v43;
  v134 = -1 << *(a1 + 32);
  v139 = (63 - v44) >> 6;
  v159 = (v19 + 56);
  v142 = v14 + 16;
  v146 = (v14 + 32);
  v160 = (v19 + 48);
  v141 = 0x80000001D1EB3340;
  v147 = a1;
  v148 = v14;
  v156 = (v14 + 8);

  v47 = 0;
  v158 = v13;
  while (1)
  {
    while (1)
    {
      if (!v46)
      {
        if (v139 <= v47 + 1)
        {
          v51 = v47 + 1;
        }

        else
        {
          v51 = v139;
        }

        v52 = v51 - 1;
        v49 = v154;
        v50 = v155;
        v53 = v159;
        while (1)
        {
          v48 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if (v48 >= v139)
          {
            v46 = 0;
            v62 = 1;
            v47 = v52;
            goto LABEL_17;
          }

          v46 = *(v140 + 8 * v48);
          ++v47;
          if (v46)
          {
            v47 = v48;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_62;
      }

      v48 = v47;
      v49 = v154;
      v50 = v155;
LABEL_16:
      v54 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v55 = v54 | (v48 << 6);
      v57 = v147;
      v56 = v148;
      v58 = v143;
      (*(v148 + 16))(v143, *(v147 + 48) + *(v148 + 72) * v55, v13);
      v59 = *(v57 + 56) + *(v145 + 72) * v55;
      v60 = v144;
      sub_1D1B45D80(v59, v144, type metadata accessor for StaticService);
      v61 = *(v50 + 48);
      (*(v56 + 32))(v42, v58, v13);
      sub_1D1B45DF0(v60, v42 + v61, type metadata accessor for StaticService);
      v62 = 0;
      v53 = v159;
LABEL_17:
      v63 = *v53;
      (*v53)(v42, v62, 1, v50);
      v64 = *v160;
      if ((*v160)(v42, 1, v50) == 1)
      {
        sub_1D1741A30(v42, &qword_1EC643C68, &unk_1D1E764C0);
        v63(v49, 1, 1, v50);
        goto LABEL_24;
      }

      v65 = v152;
      sub_1D1741A90(v42, v152, &qword_1EC642DB0, &unk_1D1E6F360);
      v66 = v65;
      v67 = v153;
      sub_1D1741C08(v66, v153, &qword_1EC642DB0, &unk_1D1E6F360);
      v68 = v67 + *(v50 + 48);
      v69 = *(v68 + *(v157 + 104));
      sub_1D1B45E58(v68, type metadata accessor for StaticService);
      LOBYTE(v163) = v69;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v141 == v70)
      {
        break;
      }

      v71 = sub_1D1E6904C();

      (*v156)(v153, v158);
      if (v71)
      {
        goto LABEL_23;
      }

      sub_1D1741A30(v152, &qword_1EC642DB0, &unk_1D1E6F360);
      v13 = v158;
    }

    (*v156)(v153, v158);
LABEL_23:
    sub_1D1741A90(v152, v49, &qword_1EC642DB0, &unk_1D1E6F360);
    v63(v49, 0, 1, v50);
LABEL_24:
    v72 = v151;
    sub_1D1741A90(v49, v151, &qword_1EC643C68, &unk_1D1E764C0);
    if (v64(v72, 1, v50) == 1)
    {
      break;
    }

    v73 = v50;
    v74 = v149;
    sub_1D1741A90(v72, v149, &qword_1EC642DB0, &unk_1D1E6F360);
    v75 = v150;
    sub_1D1741C08(v74, v150, &qword_1EC642DB0, &unk_1D1E6F360);
    v76 = v75 + *(v73 + 48);
    v163 = *(v76 + *(v157 + 128));
    v162 = 42;
    v165 = StaticCharacteristicsBag.int(for:)(&v162);
    value = v165.value;
    LOBYTE(v73) = v165.is_nil;
    sub_1D1B45E58(v76, type metadata accessor for StaticService);
    v13 = v158;
    (*v156)(v75, v158);
    sub_1D1741A30(v74, &qword_1EC642DB0, &unk_1D1E6F360);
    if ((v73 & 1) == 0)
    {
      v78 = v138;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v163 = v78;
      v81 = sub_1D171D128(value);
      v82 = v78[2];
      v83 = (v80 & 1) == 0;
      v84 = v82 + v83;
      if (__OFADD__(v82, v83))
      {
        goto LABEL_63;
      }

      v85 = v80;
      if (v78[3] >= v84)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v80)
          {
            goto LABEL_35;
          }

LABEL_34:
          sub_1D19DBF58(v81, value, 0, v78);
          goto LABEL_35;
        }

        sub_1D173CEA8();
        v78 = v163;
        if ((v85 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_1D172F93C(v84, isUniquelyReferenced_nonNull_native);
        type metadata accessor for HMCharacteristicValueCurrentSecuritySystemState(0);
        v78 = v163;
        v86 = sub_1D171D128(value);
        if ((v85 & 1) != (v87 & 1))
        {
          goto LABEL_65;
        }

        v81 = v86;
        if ((v85 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_35:
      v88 = v78[7];
      v89 = *(v88 + 8 * v81);
      v90 = __OFADD__(v89, 1);
      v91 = v89 + 1;
      if (v90)
      {
        goto LABEL_64;
      }

      v138 = v78;
      *(v88 + 8 * v81) = v91;
    }
  }

  sub_1D1716918();
  v92 = v138;
  if (!*(v138 + 16))
  {
    v98 = 0;
    v99 = 0;
    v94 = v158;
    v95 = v135;
    v96 = v148;
    goto LABEL_48;
  }

  v93 = sub_1D171D128(4);
  v94 = v158;
  v95 = v135;
  v96 = v148;
  if (v97)
  {
    v98 = *(*(v92 + 56) + 8 * v93);
    if (!*(v92 + 16))
    {
LABEL_47:
      v99 = 0;
      goto LABEL_48;
    }
  }

  else
  {
    v98 = 0;
    if (!*(v92 + 16))
    {
      goto LABEL_47;
    }
  }

  v100 = sub_1D171D128(3);
  if ((v101 & 1) == 0)
  {
    goto LABEL_47;
  }

  v99 = *(*(v92 + 56) + 8 * v100);
LABEL_48:

  if (__OFADD__(v98, v99))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  if (v98 + v99 < 1)
  {
    sub_1D1B45E58(&v136[v127], type metadata accessor for TilesFilter);
    return (*(v132 + 56))(v133, 1, 1, v137);
  }

  else
  {
    v102 = "dow_Short_MultipleOpen";
    v103 = v98 < 1;
    if (v98 < 1)
    {
      v104 = 0xD000000000000032;
    }

    else
    {
      v102 = "Garage Door Openers";
      v104 = 0xD000000000000033;
    }

    if (v98 >= 1)
    {
      v99 = v98;
    }

    static String.hfLocalized(_:)(v104, v102 | 0x8000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v105 = swift_allocObject();
    v106 = MEMORY[0x1E69E6530];
    *(v105 + 16) = xmmword_1D1E739C0;
    v107 = MEMORY[0x1E69E65A8];
    *(v105 + 56) = v106;
    *(v105 + 64) = v107;
    *(v105 + 32) = v99;
    v108 = sub_1D1E6783C();
    v110 = v109;

    v136[v137[5]] = v103;
    (*(v96 + 56))(v95, 1, 1, v94);
    v111 = static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5280);
    v113 = v112;
    v114 = v128;
    sub_1D1741C08(v95, v128, &qword_1EC642590, qword_1D1E71260);
    v115 = *(v96 + 48);
    if (v115(v114, 1, v94) == 1)
    {
      v160 = v113;
      v116 = v131;
      sub_1D1E66A6C();
      sub_1D1741A30(v95, &qword_1EC642590, qword_1D1E71260);
      v117 = v115(v114, 1, v94);
      v113 = v160;
      if (v117 != 1)
      {
        sub_1D1741A30(v114, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v95, &qword_1EC642590, qword_1D1E71260);
      v116 = v131;
      (*v146)(v131, v114, v94);
    }

    v119 = v129;
    (*v146)(v129, v116, v94);
    v120 = v130;
    v121 = (v119 + *(v130 + 20));
    *v121 = 0xD000000000000015;
    v121[1] = 0x80000001D1EB6120;
    v122 = (v119 + v120[6]);
    *v122 = v111;
    v122[1] = v113;
    v123 = (v119 + v120[7]);
    *v123 = v108;
    v123[1] = v110;
    v124 = v119 + v120[8];
    *v124 = 0;
    *(v124 + 8) = 0;
    *(v124 + 16) = 0;
    *(v124 + 24) = -1;
    v125 = v136;
    sub_1D1B45DF0(v119, v136, type metadata accessor for IconTextValueStringDataHolder);
    v126 = v133;
    sub_1D1B45D80(v125, v133, type metadata accessor for SecuritySystemStatusItem);
    (*(v132 + 56))(v126, 0, 1, v137);
    return sub_1D1B45E58(v125, type metadata accessor for SecuritySystemStatusItem);
  }
}