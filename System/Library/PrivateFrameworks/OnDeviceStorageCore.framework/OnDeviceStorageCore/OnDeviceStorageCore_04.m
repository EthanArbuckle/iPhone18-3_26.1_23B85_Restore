uint64_t sub_1DB1F3784@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[4];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v3);
  (*(v4 + 16))(&v24 + 1, v3, v4);
  v5 = v25;
  result = v25 + 32;
  v7 = -*(v25 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {
      v10 = v26;
      result = v26 + 32;
      v11 = -*(v26 + 16);
      v12 = -1;
      while (v11 + v12 != -1)
      {
        if (++v12 >= *(v10 + 16))
        {
          goto LABEL_23;
        }

        v13 = result + 88;
        sub_1DB175548(result, v23);
        sub_1DB1F3784(&v24, v23);
        sub_1DB1755A4(v23);
        result = v13;
        if (v24)
        {
          goto LABEL_15;
        }
      }

      v14 = v27;
      result = v27 + 32;
      v15 = -*(v27 + 16);
      v16 = -1;
      while (v15 + v16 != -1)
      {
        if (++v16 >= *(v14 + 16))
        {
          goto LABEL_24;
        }

        v17 = result + 48;
        sub_1DB175650(result, v23);
        sub_1DB1F39B4(v23, &v24);
        sub_1DB1756AC(v23);
        result = v17;
        if (v24)
        {
          goto LABEL_15;
        }
      }

      v19 = v28;
      result = v28 + 32;
      v20 = -*(v28 + 16);
      v21 = -1;
      do
      {
        v18 = v20 + v21 != -1;
        if (v20 + v21 == -1)
        {
          break;
        }

        if (++v21 >= *(v19 + 16))
        {
          goto LABEL_25;
        }

        v22 = result + 240;
        sub_1DB175700(result, v23);
        sub_1DB1F3F6C(v23, &v24);
        sub_1DB17575C(v23);
        result = v22;
      }

      while (v24 != 1);
      result = sub_1DB17181C(&v24 + 1);
      goto LABEL_16;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    v9 = result + 40;
    sub_1DB164980(result, v23);
    sub_1DB1F3BE4(v23, &v24);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = v9;
    if (v24)
    {
LABEL_15:
      result = sub_1DB17181C(&v24 + 1);
      v18 = 1;
LABEL_16:
      *a2 = v18;
      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1DB1F39B4@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[4];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v3);
  (*(v4 + 16))(&v24 + 1, v3, v4);
  v5 = v25;
  result = v25 + 32;
  v7 = -*(v25 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {
      v10 = v26;
      result = v26 + 32;
      v11 = -*(v26 + 16);
      v12 = -1;
      while (v11 + v12 != -1)
      {
        if (++v12 >= *(v10 + 16))
        {
          goto LABEL_23;
        }

        v13 = result + 88;
        sub_1DB175548(result, v23);
        sub_1DB1F3784(&v24, v23);
        sub_1DB1755A4(v23);
        result = v13;
        if (v24)
        {
          goto LABEL_15;
        }
      }

      v14 = v27;
      result = v27 + 32;
      v15 = -*(v27 + 16);
      v16 = -1;
      while (v15 + v16 != -1)
      {
        if (++v16 >= *(v14 + 16))
        {
          goto LABEL_24;
        }

        v17 = result + 48;
        sub_1DB175650(result, v23);
        sub_1DB1F39B4(&v24, v23);
        sub_1DB1756AC(v23);
        result = v17;
        if (v24)
        {
          goto LABEL_15;
        }
      }

      v19 = v28;
      result = v28 + 32;
      v20 = -*(v28 + 16);
      v21 = -1;
      do
      {
        v18 = v20 + v21 != -1;
        if (v20 + v21 == -1)
        {
          break;
        }

        if (++v21 >= *(v19 + 16))
        {
          goto LABEL_25;
        }

        v22 = result + 240;
        sub_1DB175700(result, v23);
        sub_1DB1F3F6C(v23, &v24);
        sub_1DB17575C(v23);
        result = v22;
      }

      while (v24 != 1);
      result = sub_1DB17181C(&v24 + 1);
      goto LABEL_16;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    v9 = result + 40;
    sub_1DB164980(result, v23);
    sub_1DB1F3BE4(v23, &v24);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = v9;
    if (v24)
    {
LABEL_15:
      result = sub_1DB17181C(&v24 + 1);
      v18 = 1;
LABEL_16:
      *a2 = v18;
      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1DB1F3BE4@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D50, &qword_1DB2C3A08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v21 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D58, &qword_1DB2C3A10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 24))(&v23, v14, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D68, &qword_1DB2C3A20);
  sub_1DB2BA9C4();
  sub_1DB1F8858();
  v16 = v21;

  sub_1DB1688F0(&qword_1EE13F278, &qword_1ECC27D58, &qword_1DB2C3A10);
  sub_1DB2BA9B4();
  sub_1DB2BA9D4();

  v17 = *(v7 + 8);
  v17(v11, v6);
  v17(v13, v6);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D70, &qword_1DB2C3A28);
  v19 = (*(*(v18 - 8) + 48))(v16, 1, v18) != 1;
  result = sub_1DB1445E0(v16, &qword_1ECC27D50, &qword_1DB2C3A08);
  *v22 = v19;
  return result;
}

uint64_t sub_1DB1F3F6C@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[8];
  v6 = a1[20];
  v7 = a1[22];
  result = v4 + 32;
  v9 = -*(v4 + 16);
  v10 = -1;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    v11 = result + 40;
    sub_1DB164980(result, v49);
    sub_1DB1F3BE4(v49, &v44 + 1);
    __swift_destroy_boxed_opaque_existential_1(v49);
    result = v11;
    if ((v44 & 0x100) != 0)
    {
LABEL_42:
      v39 = 1;
      goto LABEL_43;
    }
  }

  result = v5 + 32;
  v12 = -*(v5 + 16);
  v13 = -1;
  while (v12 + v13 != -1)
  {
    if (++v13 >= *(v5 + 16))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return result;
    }

    v14 = result + 88;
    sub_1DB175548(result, v49);
    sub_1DB1F3784((&v44 + 1), v49);
    sub_1DB1755A4(v49);
    result = v14;
    if ((v44 & 0x100) != 0)
    {
      goto LABEL_42;
    }
  }

  result = v6 + 32;
  v15 = -*(v6 + 16);
  v16 = -1;
  while (v15 + v16 != -1)
  {
    if (++v16 >= *(v6 + 16))
    {
      goto LABEL_51;
    }

    v17 = result + 48;
    sub_1DB175650(result, v49);
    sub_1DB1F39B4((&v44 + 1), v49);
    sub_1DB1756AC(v49);
    result = v17;
    if ((v44 & 0x100) != 0)
    {
      goto LABEL_42;
    }
  }

  result = v7 + 32;
  v18 = -*(v7 + 16);
  v19 = -1;
  while (v18 + v19 != -1)
  {
    if (++v19 >= *(v7 + 16))
    {
      goto LABEL_52;
    }

    v20 = result + 240;
    sub_1DB175700(result, v49);
    sub_1DB1F3F6C((&v44 + 1), v49);
    sub_1DB17575C(v49);
    result = v20;
    if ((v44 & 0x100) != 0)
    {
      goto LABEL_42;
    }
  }

  v21 = a1[23];
  if (v21)
  {
    result = v21 + 32;
    v22 = -*(v21 + 16);
    v23 = -1;
    while (v22 + v23 != -1)
    {
      if (++v23 >= *(v21 + 16))
      {
        goto LABEL_54;
      }

      v24 = result + 40;
      sub_1DB164980(result, v49);
      sub_1DB1F3BE4(v49, &v44 + 1);
      __swift_destroy_boxed_opaque_existential_1(v49);
      result = v24;
      if ((v44 & 0x100) != 0)
      {
        goto LABEL_42;
      }
    }
  }

  v25 = a1[28];
  v26 = a1[29];
  __swift_project_boxed_opaque_existential_1(a1 + 25, v25);
  (*(v26 + 16))(&v44 + 1, v25, v26);
  v27 = v45;
  result = v45 + 32;
  v28 = -*(v45 + 16);
  v29 = -1;
  while (v28 + v29 != -1)
  {
    if (++v29 >= *(v27 + 16))
    {
      goto LABEL_53;
    }

    v30 = result + 40;
    sub_1DB164980(result, v49);
    sub_1DB1F3BE4(v49, &v44);
    __swift_destroy_boxed_opaque_existential_1(v49);
    result = v30;
    if (v44)
    {
LABEL_41:
      result = sub_1DB17181C(&v44 + 1);
      goto LABEL_42;
    }
  }

  v31 = v46;
  result = v46 + 32;
  v32 = -*(v46 + 16);
  v33 = -1;
  while (v32 + v33 != -1)
  {
    if (++v33 >= *(v31 + 16))
    {
      goto LABEL_55;
    }

    v34 = result + 88;
    sub_1DB175548(result, v49);
    sub_1DB1F3784(&v44, v49);
    sub_1DB1755A4(v49);
    result = v34;
    if (v44)
    {
      goto LABEL_41;
    }
  }

  v35 = v47;
  result = v47 + 32;
  v36 = -*(v47 + 16);
  v37 = -1;
  while (v36 + v37 != -1)
  {
    if (++v37 >= *(v35 + 16))
    {
      goto LABEL_56;
    }

    v38 = result + 48;
    sub_1DB175650(result, v49);
    sub_1DB1F39B4(&v44, v49);
    sub_1DB1756AC(v49);
    result = v38;
    if (v44)
    {
      goto LABEL_41;
    }
  }

LABEL_45:
  v40 = v48;
  result = v48 + 32;
  v41 = -*(v48 + 16);
  v42 = -1;
  do
  {
    v39 = v41 + v42 != -1;
    if (v41 + v42 == -1)
    {
      break;
    }

    if (++v42 >= *(v40 + 16))
    {
      goto LABEL_57;
    }

    v43 = result + 240;
    sub_1DB175700(result, v49);
    sub_1DB1F3F6C(&v44, v49);
    sub_1DB17575C(v49);
    result = v43;
  }

  while (v44 != 1);
  result = sub_1DB17181C(&v44 + 1);
LABEL_43:
  *a2 = v39;
  return result;
}

uint64_t sub_1DB1F43B8()
{
  v1 = sub_1DB2BAA34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v63 - v7;
  v9 = v0[5];
  v93 = v0[4];
  v94[0] = v9;
  *(v94 + 10) = *(v0 + 90);
  v10 = v0[1];
  v89 = *v0;
  v90 = v10;
  v11 = v0[3];
  v91 = v0[2];
  v92 = v11;
  if (qword_1EE13F6D8 != -1)
  {
LABEL_62:
    swift_once();
  }

  v12 = sub_1DB2BAA64();
  __swift_project_value_buffer(v12, qword_1EE14C880);
  sub_1DB2BAA24();
  v13 = sub_1DB2BAA44();
  v14 = sub_1DB2BB2F4();
  if (sub_1DB2BB314())
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v13, v14, v16, "asSQL", "", v15, 2u);
    MEMORY[0x1E1284BF0](v15, -1, -1);
  }

  (*(v2 + 16))(v6, v8, v1);
  v17 = sub_1DB2BAAA4();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v63[1] = sub_1DB2BAA94();
  (*(v2 + 8))(v8, v1);
  v87 = 0;
  v88 = 0xE000000000000000;
  UpdateClauses.expression.getter(&v82);
  v2 = v82;
  v8 = v83;
  v20 = v84;
  if ((v83 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v83) & 0xF;
  }

  else
  {
    v21 = v82 & 0xFFFFFFFFFFFFLL;
  }

  v64 = v84;
  if (v21)
  {
    v69 = (v83 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v70 = v83 & 0xFFFFFFFFFFFFFFLL;
    v67 = v84 + 32;

    v6 = 0;
    v22 = 0;
    v23 = 0;
    v68 = v2;
    v65 = v8;
    v66 = v21;
    while (1)
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        v26 = sub_1DB2BB4E4();
        v1 = v27;
        if (v26 != 63)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v82 = v2;
          v83 = v70;
          v25 = &v82 + v23;
        }

        else
        {
          v24 = v69;
          if ((v2 & 0x1000000000000000) == 0)
          {
            v24 = sub_1DB2BB5B4();
          }

          v25 = (v24 + v23);
        }

        v28 = *v25;
        if ((*v25 & 0x80000000) == 0)
        {
LABEL_20:
          v1 = 1;
          if (v28 != 63)
          {
            goto LABEL_9;
          }

          goto LABEL_21;
        }

        v33 = (__clz(v28 ^ 0xFF) - 24);
        if (v33 > 2)
        {
          if (v33 == 3)
          {
            v1 = 3;
            if ((((v28 & 0xF) << 12) | ((v25[1] & 0x3F) << 6) | v25[2] & 0x3F) != 0x3F)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v1 = 4;
            if ((((v28 & 0xF) << 18) | ((v25[1] & 0x3F) << 12) | ((v25[2] & 0x3F) << 6) | v25[3] & 0x3F) != 0x3F)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          if (v33 == 1)
          {
            goto LABEL_20;
          }

          v1 = 2;
          if ((v25[1] & 0x3F | ((v28 & 0x1F) << 6)) != 0x3F)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_21:
      if (v6 < *(v20 + 16))
      {
        if (v6 < 0)
        {
          goto LABEL_61;
        }

        sub_1DB1446A4(v67 + 40 * v6, &v82, &qword_1ECC26E28, &unk_1DB2C2D70);
        sub_1DB1446A4(&v82, &v77, &qword_1ECC26E28, &unk_1DB2C2D70);
        if (v78)
        {
          sub_1DB1355D0(&v77, &v79);
          sub_1DB164980(&v79, &v77);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
          if (swift_dynamicCast())
          {
            v74 = 10104;
            v75 = 0xE200000000000000;
            v71 = v72;
            countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
            MEMORY[0x1E1283490](countAndFlagsBits);
            v20 = v64;

            MEMORY[0x1E1283490](39, 0xE100000000000000);

            v30 = v74;
            v31 = v75;
            goto LABEL_38;
          }

          if (swift_dynamicCast())
          {
            v30 = sub_1DB2B995C(39, 0xE100000000000000);
            v31 = v34;
            v20 = v64;

LABEL_38:
            __swift_destroy_boxed_opaque_existential_1(&v79);
            v35 = &v77;
          }

          else
          {
            sub_1DB1355D0(&v77, &v74);
            v72 = 0;
            v73 = 0xE000000000000000;
            __swift_project_boxed_opaque_existential_1(&v74, v76);
            sub_1DB2BB914();
            v30 = v72;
            v31 = v73;
            __swift_destroy_boxed_opaque_existential_1(&v79);
            v35 = &v74;
          }

          __swift_destroy_boxed_opaque_existential_1(v35);
        }

        else
        {
          sub_1DB1445E0(&v77, &qword_1ECC26E28, &unk_1DB2C2D70);
          v31 = 0xE400000000000000;
          v30 = 1280070990;
        }

        sub_1DB1445E0(&v82, &qword_1ECC26E28, &unk_1DB2C2D70);
        v82 = v30;
        v83 = v31;
        sub_1DB2BAE54();

        ++v6;
        v2 = v68;
        v8 = v65;
        v21 = v66;
        goto LABEL_10;
      }

      v32 = __OFADD__(v22++, 1);
      if (v32)
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

LABEL_9:
      sub_1DB2BAE64();
LABEL_10:
      v23 += v1;
      if (v23 >= v21)
      {

        if (v22 <= 0)
        {
          goto LABEL_47;
        }

        v82 = 0;
        v83 = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000024, 0x80000001DB2D4740);
        *&v79 = v22;
        v36 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v36);

        MEMORY[0x1E1283490](0xD000000000000019, 0x80000001DB2D4770);
        v37 = *(v20 + 16);
        v32 = __OFADD__(v37, v22);
        v38 = v37 + v22;
        if (!v32)
        {
          *&v79 = v38;
          v39 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v39);

          MEMORY[0x1E1283490](0x6C6175746361202CLL, 0xEA0000000000203ALL);
          *&v79 = *(v20 + 16);
          v40 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v40);

          MEMORY[0x1E1283490](46, 0xE100000000000000);
          sub_1DB15B09C(v82, v83);

          goto LABEL_47;
        }

        __break(1u);
LABEL_65:
        swift_once();
LABEL_49:
        sub_1DB2BBAF4();
        v41 = v85;
        v42 = v86;
        v70 = __swift_project_boxed_opaque_existential_1(&v82, v85);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1DB2BCC40;
        v72 = sub_1DB156674(0, 76, 0, MEMORY[0x1E69E7CC0]);
        v44._countAndFlagsBits = 0xD00000000000003FLL;
        v44._object = 0x80000001DB2D4700;
        LogMessage.StringInterpolation.appendLiteral(_:)(v44);
        v45 = MEMORY[0x1E69E6530];
        v78 = MEMORY[0x1E69E6530];
        *&v77 = v6;
        sub_1DB1446A4(&v77, &v74, &qword_1ECC26F30, &unk_1DB2BFA90);
        v79 = 0u;
        v80 = 0u;
        sub_1DB1F8894(&v74, &v79, &qword_1ECC26F30, &unk_1DB2BFA90);
        v81 = 0;
        v46 = v72;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1DB156674(0, *(v46 + 2) + 1, 1, v46);
        }

        v48 = *(v46 + 2);
        v47 = *(v46 + 3);
        if (v48 >= v47 >> 1)
        {
          v46 = sub_1DB156674((v47 > 1), v48 + 1, 1, v46);
        }

        *(v46 + 2) = v48 + 1;
        v49 = &v46[40 * v48];
        v50 = v79;
        v51 = v80;
        v49[64] = v81;
        *(v49 + 2) = v50;
        *(v49 + 3) = v51;
        v72 = v46;
        sub_1DB1445E0(&v77, &qword_1ECC26F30, &unk_1DB2BFA90);
        v52._countAndFlagsBits = 0x7365756C6176202CLL;
        v52._object = 0xEA0000000000203ALL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v52);
        v53 = *(v64 + 16);
        v78 = v45;
        *&v77 = v53;
        sub_1DB1446A4(&v77, &v74, &qword_1ECC26F30, &unk_1DB2BFA90);
        v79 = 0u;
        v80 = 0u;
        sub_1DB1F8894(&v74, &v79, &qword_1ECC26F30, &unk_1DB2BFA90);
        v81 = 0;
        v54 = v72;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1DB156674(0, *(v54 + 2) + 1, 1, v54);
          v72 = v54;
        }

        v56 = *(v54 + 2);
        v55 = *(v54 + 3);
        if (v56 >= v55 >> 1)
        {
          v54 = sub_1DB156674((v55 > 1), v56 + 1, 1, v54);
        }

        *(v54 + 2) = v56 + 1;
        v57 = &v54[40 * v56];
        v59 = v79;
        v58 = v80;
        v57[64] = v81;
        *(v57 + 2) = v59;
        *(v57 + 3) = v58;
        v72 = v54;
        sub_1DB1445E0(&v77, &qword_1ECC26F30, &unk_1DB2BFA90);
        v60._countAndFlagsBits = 46;
        v60._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v60);
        *(v43 + 32) = v72;
        Logger.warning(_:)(v43, v41, v42);

        __swift_destroy_boxed_opaque_existential_1(&v82);
        goto LABEL_59;
      }
    }
  }

  v6 = 0;
LABEL_47:
  if (v6 < *(v20 + 16))
  {
    if (qword_1EE13F2E0 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_49;
  }

LABEL_59:
  v61 = v87;
  sub_1DB2875A0("asSQL", 5, 2);

  return v61;
}

uint64_t sub_1DB1F4E58()
{
  v0 = sub_1DB2BAA34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v61 - v6;
  if (qword_1EE13F6D8 != -1)
  {
LABEL_61:
    swift_once();
  }

  v8 = sub_1DB2BAA64();
  __swift_project_value_buffer(v8, qword_1EE14C880);
  sub_1DB2BAA24();
  v9 = sub_1DB2BAA44();
  v10 = sub_1DB2BB2F4();
  if (sub_1DB2BB314())
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v9, v10, v12, "asSQL", "", v11, 2u);
    MEMORY[0x1E1284BF0](v11, -1, -1);
  }

  (*(v1 + 16))(v5, v7, v0);
  v13 = sub_1DB2BAAA4();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v61[1] = sub_1DB2BAA94();
  (*(v1 + 8))(v7, v0);
  v83 = 0;
  v84 = 0xE000000000000000;
  InsertClauses.expression.getter(&v78);
  v5 = v78;
  v0 = v79;
  v16 = v80;
  if ((v79 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v79) & 0xF;
  }

  else
  {
    v17 = v78 & 0xFFFFFFFFFFFFLL;
  }

  v62 = v80;
  if (v17)
  {
    v66 = v79 & 0xFFFFFFFFFFFFFFLL;
    v65 = (v79 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v64 = v80 + 32;

    v1 = 0;
    v7 = 0;
    v18 = 0;
    v19 = &qword_1ECC26E28;
    v63 = v5;
    while (1)
    {
      if ((v0 & 0x1000000000000000) != 0)
      {
        v22 = sub_1DB2BB4E4();
        v24 = v23;
        if (v22 != 63)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if ((v0 & 0x2000000000000000) != 0)
        {
          v78 = v5;
          v79 = v66;
          v21 = &v78 + v18;
        }

        else
        {
          v20 = v65;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v20 = sub_1DB2BB5B4();
          }

          v21 = (v20 + v18);
        }

        v25 = *v21;
        if ((*v21 & 0x80000000) == 0)
        {
LABEL_20:
          v24 = 1;
          if (v25 != 63)
          {
            goto LABEL_9;
          }

          goto LABEL_21;
        }

        v31 = (__clz(v25 ^ 0xFF) - 24);
        if (v31 > 2)
        {
          if (v31 == 3)
          {
            v24 = 3;
            if ((((v25 & 0xF) << 12) | ((v21[1] & 0x3F) << 6) | v21[2] & 0x3F) != 0x3F)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v24 = 4;
            if ((((v25 & 0xF) << 18) | ((v21[1] & 0x3F) << 12) | ((v21[2] & 0x3F) << 6) | v21[3] & 0x3F) != 0x3F)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          if (v31 == 1)
          {
            goto LABEL_20;
          }

          v24 = 2;
          if ((v21[1] & 0x3F | ((v25 & 0x1F) << 6)) != 0x3F)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_21:
      if (v1 < *(v16 + 16))
      {
        if (v1 < 0)
        {
          goto LABEL_60;
        }

        sub_1DB1446A4(v64 + 40 * v1, &v78, v19, &unk_1DB2C2D70);
        sub_1DB1446A4(&v78, &v73, v19, &unk_1DB2C2D70);
        if (v74)
        {
          sub_1DB1355D0(&v73, &v75);
          sub_1DB164980(&v75, &v73);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
          v26 = v19;
          if (swift_dynamicCast())
          {
            v70 = 10104;
            v71 = 0xE200000000000000;
            v67 = v68;
            countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
            MEMORY[0x1E1283490](countAndFlagsBits);
            v16 = v62;

            MEMORY[0x1E1283490](39, 0xE100000000000000);

            v28 = v70;
            v29 = v71;
            __swift_destroy_boxed_opaque_existential_1(&v75);
            __swift_destroy_boxed_opaque_existential_1(&v73);
          }

          else
          {
            if (swift_dynamicCast())
            {
              v28 = sub_1DB2B995C(39, 0xE100000000000000);
              v29 = v32;

              __swift_destroy_boxed_opaque_existential_1(&v75);
              v33 = &v73;
            }

            else
            {
              sub_1DB1355D0(&v73, &v70);
              v68 = 0;
              v69 = 0xE000000000000000;
              __swift_project_boxed_opaque_existential_1(&v70, v72);
              sub_1DB2BB914();
              v28 = v68;
              v29 = v69;
              __swift_destroy_boxed_opaque_existential_1(&v75);
              v33 = &v70;
            }

            __swift_destroy_boxed_opaque_existential_1(v33);
            v16 = v62;
          }
        }

        else
        {
          sub_1DB1445E0(&v73, v19, &unk_1DB2C2D70);
          v26 = v19;
          v29 = 0xE400000000000000;
          v28 = 1280070990;
        }

        sub_1DB1445E0(&v78, v26, &unk_1DB2C2D70);
        v78 = v28;
        v79 = v29;
        sub_1DB2BAE54();

        ++v1;
        v19 = v26;
        v5 = v63;
        goto LABEL_10;
      }

      v30 = __OFADD__(v7++, 1);
      if (v30)
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

LABEL_9:
      sub_1DB2BAE64();
LABEL_10:
      v18 += v24;
      if (v18 >= v17)
      {

        if (v7 <= 0)
        {
          goto LABEL_46;
        }

        v78 = 0;
        v79 = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000024, 0x80000001DB2D4740);
        *&v75 = v7;
        v34 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v34);

        MEMORY[0x1E1283490](0xD000000000000019, 0x80000001DB2D4770);
        v35 = *(v16 + 16);
        v30 = __OFADD__(v35, v7);
        v36 = &v7[v35];
        if (!v30)
        {
          *&v75 = v36;
          v37 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v37);

          MEMORY[0x1E1283490](0x6C6175746361202CLL, 0xEA0000000000203ALL);
          *&v75 = *(v16 + 16);
          v38 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v38);

          MEMORY[0x1E1283490](46, 0xE100000000000000);
          sub_1DB15B09C(v78, v79);

          goto LABEL_46;
        }

        __break(1u);
LABEL_64:
        swift_once();
LABEL_48:
        sub_1DB2BBAF4();
        v39 = v81;
        v40 = v82;
        __swift_project_boxed_opaque_existential_1(&v78, v81);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1DB2BCC40;
        v68 = sub_1DB156674(0, 76, 0, MEMORY[0x1E69E7CC0]);
        v42._countAndFlagsBits = 0xD00000000000003FLL;
        v42._object = 0x80000001DB2D4700;
        LogMessage.StringInterpolation.appendLiteral(_:)(v42);
        v43 = MEMORY[0x1E69E6530];
        v74 = MEMORY[0x1E69E6530];
        *&v73 = v1;
        sub_1DB1446A4(&v73, &v70, &qword_1ECC26F30, &unk_1DB2BFA90);
        v75 = 0u;
        v76 = 0u;
        sub_1DB1F8894(&v70, &v75, &qword_1ECC26F30, &unk_1DB2BFA90);
        v77 = 0;
        v44 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1DB156674(0, *(v44 + 2) + 1, 1, v44);
        }

        v46 = *(v44 + 2);
        v45 = *(v44 + 3);
        if (v46 >= v45 >> 1)
        {
          v44 = sub_1DB156674((v45 > 1), v46 + 1, 1, v44);
        }

        *(v44 + 2) = v46 + 1;
        v47 = &v44[40 * v46];
        v48 = v75;
        v49 = v76;
        v47[64] = v77;
        *(v47 + 2) = v48;
        *(v47 + 3) = v49;
        v68 = v44;
        sub_1DB1445E0(&v73, &qword_1ECC26F30, &unk_1DB2BFA90);
        v50._countAndFlagsBits = 0x7365756C6176202CLL;
        v50._object = 0xEA0000000000203ALL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v50);
        v51 = *(v62 + 16);
        v74 = v43;
        *&v73 = v51;
        sub_1DB1446A4(&v73, &v70, &qword_1ECC26F30, &unk_1DB2BFA90);
        v75 = 0u;
        v76 = 0u;
        sub_1DB1F8894(&v70, &v75, &qword_1ECC26F30, &unk_1DB2BFA90);
        v77 = 0;
        v52 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1DB156674(0, *(v52 + 2) + 1, 1, v52);
          v68 = v52;
        }

        v54 = *(v52 + 2);
        v53 = *(v52 + 3);
        if (v54 >= v53 >> 1)
        {
          v52 = sub_1DB156674((v53 > 1), v54 + 1, 1, v52);
        }

        *(v52 + 2) = v54 + 1;
        v55 = &v52[40 * v54];
        v57 = v75;
        v56 = v76;
        v55[64] = v77;
        *(v55 + 2) = v57;
        *(v55 + 3) = v56;
        v68 = v52;
        sub_1DB1445E0(&v73, &qword_1ECC26F30, &unk_1DB2BFA90);
        v58._countAndFlagsBits = 46;
        v58._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v58);
        *(v41 + 32) = v68;
        Logger.warning(_:)(v41, v39, v40);

        __swift_destroy_boxed_opaque_existential_1(&v78);
        goto LABEL_58;
      }
    }
  }

  v1 = 0;
LABEL_46:
  if (v1 < *(v16 + 16))
  {
    if (qword_1EE13F2E0 != -1)
    {
      goto LABEL_64;
    }

    goto LABEL_48;
  }

LABEL_58:
  v59 = v83;
  sub_1DB2875A0("asSQL", 5, 2);

  return v59;
}

uint64_t sub_1DB1F5978()
{
  v1 = v0;
  v2 = sub_1DB2BAA34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v63 - v8;
  if (qword_1EE13F6D8 != -1)
  {
LABEL_65:
    swift_once();
  }

  v10 = sub_1DB2BAA64();
  __swift_project_value_buffer(v10, qword_1EE14C880);
  sub_1DB2BAA24();
  v11 = sub_1DB2BAA44();
  v12 = sub_1DB2BB2F4();
  if (sub_1DB2BB314())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v11, v12, v14, "asSQL", "", v13, 2u);
    MEMORY[0x1E1284BF0](v13, -1, -1);
  }

  (*(v3 + 16))(v7, v9, v2);
  v15 = sub_1DB2BAAA4();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1DB2BAA94();
  (*(v3 + 8))(v9, v2);
  v86 = 0;
  v87 = 0xE000000000000000;
  v19 = *v1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v20 = *(v1 + 106);
  v63[1] = v18;
  if (v20)
  {
    v93 = *(v1 + 56);
    v94 = *(v1 + 72);
    v95 = *(v1 + 88);
    v96 = *(v1 + 104);
    v91 = *(v1 + 24);
    v92 = *(v1 + 40);
    v88 = v19;
    v89 = v2;
    v90 = v3;
    v19 = sub_1DB1F43B8();
    v2 = v21;
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v64 = v3;
  if (v22)
  {
    v69 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v70 = v2 & 0xFFFFFFFFFFFFFFLL;
    v67 = v3 + 32;

    v9 = 0;
    v23 = 0;
    v7 = 0;
    v68 = v19;
    v65 = v22;
    v66 = v2;
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v26 = sub_1DB2BB4E4();
        v1 = v27;
        if (v26 != 63)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if ((v2 & 0x2000000000000000) != 0)
        {
          v82 = v19;
          v83 = v70;
          v25 = &v82 + v7;
        }

        else
        {
          v24 = v69;
          if ((v19 & 0x1000000000000000) == 0)
          {
            v24 = sub_1DB2BB5B4();
          }

          v25 = &v7[v24];
        }

        v28 = *v25;
        if ((*v25 & 0x80000000) == 0)
        {
LABEL_23:
          v1 = 1;
          if (v28 != 63)
          {
            goto LABEL_12;
          }

          goto LABEL_24;
        }

        v33 = (__clz(v28 ^ 0xFF) - 24);
        if (v33 > 2)
        {
          if (v33 == 3)
          {
            v1 = 3;
            if ((((v28 & 0xF) << 12) | ((v25[1] & 0x3F) << 6) | v25[2] & 0x3F) != 0x3F)
            {
              goto LABEL_12;
            }
          }

          else
          {
            v1 = 4;
            if ((((v28 & 0xF) << 18) | ((v25[1] & 0x3F) << 12) | ((v25[2] & 0x3F) << 6) | v25[3] & 0x3F) != 0x3F)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          if (v33 == 1)
          {
            goto LABEL_23;
          }

          v1 = 2;
          if ((v25[1] & 0x3F | ((v28 & 0x1F) << 6)) != 0x3F)
          {
            goto LABEL_12;
          }
        }
      }

LABEL_24:
      if (v9 < *(v3 + 16))
      {
        if (v9 < 0)
        {
          goto LABEL_64;
        }

        sub_1DB1446A4(v67 + 40 * v9, &v82, &qword_1ECC26E28, &unk_1DB2C2D70);
        sub_1DB1446A4(&v82, &v77, &qword_1ECC26E28, &unk_1DB2C2D70);
        if (v78)
        {
          sub_1DB1355D0(&v77, &v79);
          sub_1DB164980(&v79, &v77);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
          if (swift_dynamicCast())
          {
            v74 = 10104;
            v75 = 0xE200000000000000;
            v71 = v72;
            countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
            MEMORY[0x1E1283490](countAndFlagsBits);
            v3 = v64;

            MEMORY[0x1E1283490](39, 0xE100000000000000);

            v30 = v74;
            v31 = v75;
            goto LABEL_41;
          }

          if (swift_dynamicCast())
          {
            v30 = sub_1DB2B995C(39, 0xE100000000000000);
            v31 = v34;
            v3 = v64;

LABEL_41:
            __swift_destroy_boxed_opaque_existential_1(&v79);
            v35 = &v77;
          }

          else
          {
            sub_1DB1355D0(&v77, &v74);
            v72 = 0;
            v73 = 0xE000000000000000;
            __swift_project_boxed_opaque_existential_1(&v74, v76);
            sub_1DB2BB914();
            v30 = v72;
            v31 = v73;
            __swift_destroy_boxed_opaque_existential_1(&v79);
            v35 = &v74;
          }

          __swift_destroy_boxed_opaque_existential_1(v35);
        }

        else
        {
          sub_1DB1445E0(&v77, &qword_1ECC26E28, &unk_1DB2C2D70);
          v31 = 0xE400000000000000;
          v30 = 1280070990;
        }

        sub_1DB1445E0(&v82, &qword_1ECC26E28, &unk_1DB2C2D70);
        v82 = v30;
        v83 = v31;
        sub_1DB2BAE54();

        ++v9;
        v19 = v68;
        v22 = v65;
        v2 = v66;
        goto LABEL_13;
      }

      v32 = __OFADD__(v23++, 1);
      if (v32)
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

LABEL_12:
      sub_1DB2BAE64();
LABEL_13:
      v7 += v1;
      if (v7 >= v22)
      {

        if (v23 <= 0)
        {
          goto LABEL_50;
        }

        v82 = 0;
        v83 = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000024, 0x80000001DB2D4740);
        *&v79 = v23;
        v36 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v36);

        MEMORY[0x1E1283490](0xD000000000000019, 0x80000001DB2D4770);
        v37 = *(v3 + 16);
        v32 = __OFADD__(v37, v23);
        v38 = v37 + v23;
        if (!v32)
        {
          *&v79 = v38;
          v39 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v39);

          MEMORY[0x1E1283490](0x6C6175746361202CLL, 0xEA0000000000203ALL);
          *&v79 = *(v3 + 16);
          v40 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v40);

          MEMORY[0x1E1283490](46, 0xE100000000000000);
          sub_1DB15B09C(v82, v83);

          goto LABEL_50;
        }

        __break(1u);
LABEL_68:
        swift_once();
LABEL_52:
        sub_1DB2BBAF4();
        v41 = v84;
        v42 = v85;
        v70 = __swift_project_boxed_opaque_existential_1(&v82, v84);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1DB2BCC40;
        v72 = sub_1DB156674(0, 76, 0, MEMORY[0x1E69E7CC0]);
        v44._countAndFlagsBits = 0xD00000000000003FLL;
        v44._object = 0x80000001DB2D4700;
        LogMessage.StringInterpolation.appendLiteral(_:)(v44);
        v45 = MEMORY[0x1E69E6530];
        v78 = MEMORY[0x1E69E6530];
        *&v77 = v9;
        sub_1DB1446A4(&v77, &v74, &qword_1ECC26F30, &unk_1DB2BFA90);
        v79 = 0u;
        v80 = 0u;
        sub_1DB1F8894(&v74, &v79, &qword_1ECC26F30, &unk_1DB2BFA90);
        v81 = 0;
        v46 = v72;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1DB156674(0, *(v46 + 2) + 1, 1, v46);
        }

        v48 = *(v46 + 2);
        v47 = *(v46 + 3);
        if (v48 >= v47 >> 1)
        {
          v46 = sub_1DB156674((v47 > 1), v48 + 1, 1, v46);
        }

        *(v46 + 2) = v48 + 1;
        v49 = &v46[40 * v48];
        v50 = v79;
        v51 = v80;
        v49[64] = v81;
        *(v49 + 2) = v50;
        *(v49 + 3) = v51;
        v72 = v46;
        sub_1DB1445E0(&v77, &qword_1ECC26F30, &unk_1DB2BFA90);
        v52._countAndFlagsBits = 0x7365756C6176202CLL;
        v52._object = 0xEA0000000000203ALL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v52);
        v53 = *(v64 + 16);
        v78 = v45;
        *&v77 = v53;
        sub_1DB1446A4(&v77, &v74, &qword_1ECC26F30, &unk_1DB2BFA90);
        v79 = 0u;
        v80 = 0u;
        sub_1DB1F8894(&v74, &v79, &qword_1ECC26F30, &unk_1DB2BFA90);
        v81 = 0;
        v54 = v72;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1DB156674(0, *(v54 + 2) + 1, 1, v54);
          v72 = v54;
        }

        v56 = *(v54 + 2);
        v55 = *(v54 + 3);
        if (v56 >= v55 >> 1)
        {
          v54 = sub_1DB156674((v55 > 1), v56 + 1, 1, v54);
        }

        *(v54 + 2) = v56 + 1;
        v57 = &v54[40 * v56];
        v59 = v79;
        v58 = v80;
        v57[64] = v81;
        *(v57 + 2) = v59;
        *(v57 + 3) = v58;
        v72 = v54;
        sub_1DB1445E0(&v77, &qword_1ECC26F30, &unk_1DB2BFA90);
        v60._countAndFlagsBits = 46;
        v60._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v60);
        *(v43 + 32) = v72;
        Logger.warning(_:)(v43, v41, v42);

        __swift_destroy_boxed_opaque_existential_1(&v82);
        goto LABEL_62;
      }
    }
  }

  v9 = 0;
LABEL_50:
  if (v9 < *(v3 + 16))
  {
    if (qword_1EE13F2E0 != -1)
    {
      goto LABEL_68;
    }

    goto LABEL_52;
  }

LABEL_62:
  v61 = v86;
  sub_1DB2875A0("asSQL", 5, 2);

  return v61;
}

uint64_t sub_1DB1F6464()
{
  v1 = v0;
  v2 = sub_1DB2BAA34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v62 - v8;
  if (qword_1EE13F6D8 != -1)
  {
LABEL_68:
    swift_once();
  }

  v10 = sub_1DB2BAA64();
  __swift_project_value_buffer(v10, qword_1EE14C880);
  sub_1DB2BAA24();
  v11 = sub_1DB2BAA44();
  v12 = sub_1DB2BB2F4();
  if (sub_1DB2BB314())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v11, v12, v14, "asSQL", "", v13, 2u);
    MEMORY[0x1E1284BF0](v13, -1, -1);
  }

  (*(v3 + 16))(v7, v9, v2);
  v15 = sub_1DB2BAAA4();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1DB2BAA94();
  (*(v3 + 8))(v9, v2);
  v97 = 0;
  v98 = 0xE000000000000000;
  sub_1DB1446A4(v1, &v87, &qword_1ECC27CC8, &unk_1DB2C3860);
  v62[1] = v18;
  if (v96)
  {
    v84 = v93;
    v85 = v94;
    v86 = v95;
    v80 = v89;
    v81 = v90;
    v82 = v91;
    v83 = v92;
    v78 = v87;
    v79 = v88;
    v19 = sub_1DB1F4E58();
    v2 = v20;
    sub_1DB1F7130(&v78);
  }

  else
  {
    v2 = *(&v87 + 1);
    v19 = v87;
  }

  sub_1DB1446A4(v1, &v87, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v96)
  {
    sub_1DB1445E0(&v87, &qword_1ECC27CC8, &unk_1DB2C3860);
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = v88;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v21 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v63 = v3;
  if (v21)
  {
    v68 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v69 = v2 & 0xFFFFFFFFFFFFFFLL;
    v66 = v3 + 32;

    v9 = 0;
    v22 = 0;
    v7 = 0;
    v67 = v19;
    v64 = v21;
    v65 = v2;
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v25 = sub_1DB2BB4E4();
        v1 = v26;
        if (v25 != 63)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if ((v2 & 0x2000000000000000) != 0)
        {
          *&v87 = v19;
          *(&v87 + 1) = v69;
          v24 = &v87 + v7;
        }

        else
        {
          v23 = v68;
          if ((v19 & 0x1000000000000000) == 0)
          {
            v23 = sub_1DB2BB5B4();
          }

          v24 = &v7[v23];
        }

        v27 = *v24;
        if ((*v24 & 0x80000000) == 0)
        {
LABEL_26:
          v1 = 1;
          if (v27 != 63)
          {
            goto LABEL_15;
          }

          goto LABEL_27;
        }

        v32 = (__clz(v27 ^ 0xFF) - 24);
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            v1 = 3;
            if ((((v27 & 0xF) << 12) | ((v24[1] & 0x3F) << 6) | v24[2] & 0x3F) != 0x3F)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v1 = 4;
            if ((((v27 & 0xF) << 18) | ((v24[1] & 0x3F) << 12) | ((v24[2] & 0x3F) << 6) | v24[3] & 0x3F) != 0x3F)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
          if (v32 == 1)
          {
            goto LABEL_26;
          }

          v1 = 2;
          if ((v24[1] & 0x3F | ((v27 & 0x1F) << 6)) != 0x3F)
          {
            goto LABEL_15;
          }
        }
      }

LABEL_27:
      if (v9 < *(v3 + 16))
      {
        if (v9 < 0)
        {
          goto LABEL_67;
        }

        sub_1DB1446A4(v66 + 40 * v9, &v87, &qword_1ECC26E28, &unk_1DB2C2D70);
        sub_1DB1446A4(&v87, &v76, &qword_1ECC26E28, &unk_1DB2C2D70);
        if (v77)
        {
          sub_1DB1355D0(&v76, &v78);
          sub_1DB164980(&v78, &v76);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
          if (swift_dynamicCast())
          {
            v73 = 10104;
            v74 = 0xE200000000000000;
            v70 = v71;
            countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
            MEMORY[0x1E1283490](countAndFlagsBits);
            v3 = v63;

            MEMORY[0x1E1283490](39, 0xE100000000000000);

            v29 = v73;
            v30 = v74;
            goto LABEL_44;
          }

          if (swift_dynamicCast())
          {
            v29 = sub_1DB2B995C(39, 0xE100000000000000);
            v30 = v33;
            v3 = v63;

LABEL_44:
            __swift_destroy_boxed_opaque_existential_1(&v78);
            v34 = &v76;
          }

          else
          {
            sub_1DB1355D0(&v76, &v73);
            v71 = 0;
            v72 = 0xE000000000000000;
            __swift_project_boxed_opaque_existential_1(&v73, v75);
            sub_1DB2BB914();
            v29 = v71;
            v30 = v72;
            __swift_destroy_boxed_opaque_existential_1(&v78);
            v34 = &v73;
          }

          __swift_destroy_boxed_opaque_existential_1(v34);
        }

        else
        {
          sub_1DB1445E0(&v76, &qword_1ECC26E28, &unk_1DB2C2D70);
          v30 = 0xE400000000000000;
          v29 = 1280070990;
        }

        sub_1DB1445E0(&v87, &qword_1ECC26E28, &unk_1DB2C2D70);
        *&v87 = v29;
        *(&v87 + 1) = v30;
        sub_1DB2BAE54();

        ++v9;
        v19 = v67;
        v21 = v64;
        v2 = v65;
        goto LABEL_16;
      }

      v31 = __OFADD__(v22++, 1);
      if (v31)
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

LABEL_15:
      sub_1DB2BAE64();
LABEL_16:
      v7 += v1;
      if (v7 >= v21)
      {

        if (v22 <= 0)
        {
          goto LABEL_53;
        }

        *&v87 = 0;
        *(&v87 + 1) = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000024, 0x80000001DB2D4740);
        *&v78 = v22;
        v35 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v35);

        MEMORY[0x1E1283490](0xD000000000000019, 0x80000001DB2D4770);
        v36 = *(v3 + 16);
        v31 = __OFADD__(v36, v22);
        v37 = v36 + v22;
        if (!v31)
        {
          *&v78 = v37;
          v38 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v38);

          MEMORY[0x1E1283490](0x6C6175746361202CLL, 0xEA0000000000203ALL);
          *&v78 = *(v3 + 16);
          v39 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v39);

          MEMORY[0x1E1283490](46, 0xE100000000000000);
          sub_1DB15B09C(v87, *(&v87 + 1));

          goto LABEL_53;
        }

        __break(1u);
LABEL_71:
        swift_once();
LABEL_55:
        sub_1DB2BBAF4();
        v40 = *(&v88 + 1);
        v41 = v89;
        v69 = __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1DB2BCC40;
        v71 = sub_1DB156674(0, 76, 0, MEMORY[0x1E69E7CC0]);
        v43._countAndFlagsBits = 0xD00000000000003FLL;
        v43._object = 0x80000001DB2D4700;
        LogMessage.StringInterpolation.appendLiteral(_:)(v43);
        v44 = MEMORY[0x1E69E6530];
        v77 = MEMORY[0x1E69E6530];
        *&v76 = v9;
        sub_1DB1446A4(&v76, &v73, &qword_1ECC26F30, &unk_1DB2BFA90);
        v78 = 0u;
        v79 = 0u;
        sub_1DB1F8894(&v73, &v78, &qword_1ECC26F30, &unk_1DB2BFA90);
        LOBYTE(v80) = 0;
        v45 = v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1DB156674(0, *(v45 + 2) + 1, 1, v45);
        }

        v47 = *(v45 + 2);
        v46 = *(v45 + 3);
        if (v47 >= v46 >> 1)
        {
          v45 = sub_1DB156674((v46 > 1), v47 + 1, 1, v45);
        }

        *(v45 + 2) = v47 + 1;
        v48 = &v45[40 * v47];
        v49 = v78;
        v50 = v79;
        v48[64] = v80;
        *(v48 + 2) = v49;
        *(v48 + 3) = v50;
        v71 = v45;
        sub_1DB1445E0(&v76, &qword_1ECC26F30, &unk_1DB2BFA90);
        v51._countAndFlagsBits = 0x7365756C6176202CLL;
        v51._object = 0xEA0000000000203ALL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v51);
        v52 = *(v63 + 16);
        v77 = v44;
        *&v76 = v52;
        sub_1DB1446A4(&v76, &v73, &qword_1ECC26F30, &unk_1DB2BFA90);
        v78 = 0u;
        v79 = 0u;
        sub_1DB1F8894(&v73, &v78, &qword_1ECC26F30, &unk_1DB2BFA90);
        LOBYTE(v80) = 0;
        v53 = v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_1DB156674(0, *(v53 + 2) + 1, 1, v53);
          v71 = v53;
        }

        v55 = *(v53 + 2);
        v54 = *(v53 + 3);
        if (v55 >= v54 >> 1)
        {
          v53 = sub_1DB156674((v54 > 1), v55 + 1, 1, v53);
        }

        *(v53 + 2) = v55 + 1;
        v56 = &v53[40 * v55];
        v58 = v78;
        v57 = v79;
        v56[64] = v80;
        *(v56 + 2) = v58;
        *(v56 + 3) = v57;
        v71 = v53;
        sub_1DB1445E0(&v76, &qword_1ECC26F30, &unk_1DB2BFA90);
        v59._countAndFlagsBits = 46;
        v59._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v59);
        *(v42 + 32) = v71;
        Logger.warning(_:)(v42, v40, v41);

        __swift_destroy_boxed_opaque_existential_1(&v87);
        goto LABEL_65;
      }
    }
  }

  v9 = 0;
LABEL_53:
  if (v9 < *(v3 + 16))
  {
    if (qword_1EE13F2E0 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_55;
  }

LABEL_65:
  v60 = v97;
  sub_1DB2875A0("asSQL", 5, 2);

  return v60;
}

unint64_t sub_1DB1F6F8C()
{
  result = qword_1ECC27D30;
  if (!qword_1ECC27D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27D30);
  }

  return result;
}

unint64_t sub_1DB1F6FE0()
{
  result = qword_1ECC27D38;
  if (!qword_1ECC27D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27D38);
  }

  return result;
}

uint64_t sub_1DB1F7034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15)
{

  if (a15)
  {

    sub_1DB1718E4(a8, a9);
  }
}

unint64_t sub_1DB1F70DC()
{
  result = qword_1EE13F2F0;
  if (!qword_1EE13F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F2F0);
  }

  return result;
}

uint64_t sub_1DB1F71D8(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v26 = a3;
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v65 = MEMORY[0x1E69E7CC0];
    sub_1DB138640(0, v4, 0);
    result = v65;
    for (i = (a1 + 40); ; i += 6)
    {
      v29 = v4;
      v31 = result;
      v28 = *(i - 8);
      v9 = i[3];
      v8 = i[4];
      v10 = __swift_project_boxed_opaque_existential_1(i, v9);
      v62 = v9;
      v63 = v8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v61);
      v30 = &v26;
      v11 = *(v9 - 8);
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
      v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v10, v9);
      (*(v8 + 16))(&v47, v9, v8);
      v15 = a2[9];
      v46[8] = a2[8];
      v46[9] = v15;
      v46[10] = a2[10];
      v16 = a2[5];
      v46[4] = a2[4];
      v46[5] = v16;
      v17 = a2[7];
      v46[6] = a2[6];
      v46[7] = v17;
      v18 = a2[1];
      v46[0] = *a2;
      v46[1] = v18;
      v19 = a2[3];
      v46[2] = a2[2];
      v46[3] = v19;
      v20 = v66;
      sub_1DB1E5268(v59, v46, v26);
      if (v20)
      {
        break;
      }

      v66 = 0;
      v42 = v55;
      v43 = v56;
      v44 = v57;
      v45 = v58;
      v38 = v51;
      v39 = v52;
      v40 = v53;
      v41 = v54;
      v34 = v47;
      v35 = v48;
      v36 = v49;
      v37 = v50;
      sub_1DB17181C(&v34);
      v32[8] = v59[8];
      v32[9] = v59[9];
      v32[10] = v59[10];
      v33 = v60;
      v32[4] = v59[4];
      v32[5] = v59[5];
      v32[6] = v59[6];
      v32[7] = v59[7];
      v32[0] = v59[0];
      v32[1] = v59[1];
      v32[2] = v59[2];
      v32[3] = v59[3];
      (*(v8 + 24))(v32, v9, v8);
      (*(v11 + 32))(boxed_opaque_existential_0, v14, v9);
      LOBYTE(v64[0]) = v28;
      sub_1DB1355D0(&v61, v64 + 8);
      result = v31;
      v65 = v31;
      v22 = *(v31 + 16);
      v21 = *(v31 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DB138640((v21 > 1), v22 + 1, 1);
        result = v65;
      }

      *(result + 16) = v22 + 1;
      v23 = (result + 48 * v22);
      v24 = v64[0];
      v25 = v64[2];
      v23[3] = v64[1];
      v23[4] = v25;
      v23[2] = v24;
      v4 = v29 - 1;
      if (v29 == 1)
      {
        return result;
      }
    }

    (*(v11 + 8))(v14, v9);
    v42 = v55;
    v43 = v56;
    v44 = v57;
    v45 = v58;
    v38 = v51;
    v39 = v52;
    v40 = v53;
    v41 = v54;
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    sub_1DB17181C(&v34);
    __swift_deallocate_boxed_opaque_existential_1(&v61);
  }

  return result;
}

uint64_t sub_1DB1F7558(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v30 = a3;
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v70 = MEMORY[0x1E69E7CC0];
    sub_1DB138660(0, v4, 0);
    result = v70;
    for (i = a1 + 80; ; i += 88)
    {
      v32 = v4;
      v34 = result;
      v31 = *(i - 48);
      v9 = *(i - 16);
      v8 = *(i - 8);
      v10 = __swift_project_boxed_opaque_existential_1((i - 40), v9);
      v65 = v9;
      v66 = v8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
      v33 = &v29;
      v12 = *(v9 - 8);
      v13 = *(v12 + 64);
      MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
      v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v10, v9);
      (*(v8 + 16))(&v50, v9, v8);
      v16 = a2[9];
      v49[8] = a2[8];
      v49[9] = v16;
      v49[10] = a2[10];
      v17 = a2[5];
      v49[4] = a2[4];
      v49[5] = v17;
      v18 = a2[7];
      v49[6] = a2[6];
      v49[7] = v18;
      v19 = a2[1];
      v49[0] = *a2;
      v49[1] = v19;
      v20 = a2[3];
      v49[2] = a2[2];
      v49[3] = v20;
      v21 = v71;
      sub_1DB1E5268(v62, v49, v30);
      if (v21)
      {
        break;
      }

      v71 = 0;
      v45 = v58;
      v46 = v59;
      v47 = v60;
      v48 = v61;
      v41 = v54;
      v42 = v55;
      v43 = v56;
      v44 = v57;
      v37 = v50;
      v38 = v51;
      v39 = v52;
      v40 = v53;
      sub_1DB17181C(&v37);
      v35[8] = v62[8];
      v35[9] = v62[9];
      v35[10] = v62[10];
      v36 = v63;
      v35[4] = v62[4];
      v35[5] = v62[5];
      v35[6] = v62[6];
      v35[7] = v62[7];
      v35[0] = v62[0];
      v35[1] = v62[1];
      v35[2] = v62[2];
      v35[3] = v62[3];
      (*(v8 + 24))(v35, v9, v8);
      (*(v12 + 32))(boxed_opaque_existential_0, v15, v9);
      sub_1DB164980(i, v68);
      LOBYTE(v67[0]) = v31;
      sub_1DB1355D0(&v64, v67 + 8);
      result = v34;
      v70 = v34;
      v23 = *(v34 + 16);
      v22 = *(v34 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1DB138660((v22 > 1), v23 + 1, 1);
        result = v70;
      }

      *(result + 16) = v23 + 1;
      v24 = result + 88 * v23;
      v25 = v67[1];
      *(v24 + 32) = v67[0];
      *(v24 + 48) = v25;
      v26 = v67[2];
      v27 = v68[0];
      v28 = v68[1];
      *(v24 + 112) = v69;
      *(v24 + 80) = v27;
      *(v24 + 96) = v28;
      *(v24 + 64) = v26;
      v4 = v32 - 1;
      if (v32 == 1)
      {
        return result;
      }
    }

    (*(v12 + 8))(v15, v9);
    v45 = v58;
    v46 = v59;
    v47 = v60;
    v48 = v61;
    v41 = v54;
    v42 = v55;
    v43 = v56;
    v44 = v57;
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v40 = v53;
    sub_1DB17181C(&v37);
    __swift_deallocate_boxed_opaque_existential_1(&v64);
  }

  return result;
}

uint64_t sub_1DB1F78F8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v90 = a3;
  v3 = *(a1 + 16);
  if (v3)
  {
    v91 = a2;
    v184[0] = MEMORY[0x1E69E7CC0];
    sub_1DB1384B0(0, v3, 0);
    v5 = (a1 + 32);
    v6 = v184[0];
    while (1)
    {
      v95 = v3;
      v185 = v6;
      v7 = v5[3];
      v92 = v5[4];
      v94 = v5;
      v8 = __swift_project_boxed_opaque_existential_1(v5, v7);
      v9 = *(v7 - 8);
      v10 = *(v9 + 64);
      MEMORY[0x1EEE9AC00](v8);
      v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
      v12 = *(v9 + 16);
      v12(&v90 - v11, v8, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
      if (swift_dynamicCast())
      {
        sub_1DB1355D0(v154, &v173);
        v13 = *(&v174 + 1);
        v14 = v175;
        v15 = __swift_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
        *(&v157 + 1) = v13;
        *&v158 = v14;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v156);
        v17 = *(v13 - 8);
        v18 = *(v17 + 64);
        MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
        v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v17 + 16))(v20, v15, v13);
        (*(v14 + 16))(v131, v13, v14);
        v21 = v91[9];
        v128 = v91[8];
        v129 = v21;
        v130 = v91[10];
        v22 = v91[5];
        v124 = v91[4];
        v125 = v22;
        v23 = v91[7];
        v126 = v91[6];
        v127 = v23;
        v24 = v91[1];
        v120 = *v91;
        v121 = v24;
        v25 = v91[3];
        v122 = v91[2];
        v123 = v25;
        v26 = v93;
        sub_1DB1E5268(v135, &v120, v90);
        if (v26)
        {
          v116 = v131[8];
          v117 = v132;
          v118 = v133;
          v119 = v134;
          v112 = v131[4];
          v113 = v131[5];
          v114 = v131[6];
          v115 = v131[7];
          v108 = v131[0];
          v109 = v131[1];
          v110 = v131[2];
          v111 = v131[3];
          v6 = v26;
          sub_1DB17181C(&v108);
          (*(v17 + 8))(v20, v13);
          __swift_deallocate_boxed_opaque_existential_1(&v156);
          __swift_destroy_boxed_opaque_existential_1(&v173);

          sub_1DB1F89E4(v91);
          return v6;
        }

        v93 = 0;
        v116 = v131[8];
        v117 = v132;
        v118 = v133;
        v119 = v134;
        v112 = v131[4];
        v113 = v131[5];
        v114 = v131[6];
        v115 = v131[7];
        v108 = v131[0];
        v109 = v131[1];
        v110 = v131[2];
        v111 = v131[3];
        sub_1DB17181C(&v108);
        v104 = v135[8];
        v105 = v136;
        v106 = v137;
        v107 = v138;
        v100 = v135[4];
        v101 = v135[5];
        v102 = v135[6];
        v103 = v135[7];
        v96 = v135[0];
        v97 = v135[1];
        v98 = v135[2];
        v99 = v135[3];
        (*(v14 + 24))(&v96, v13, v14);
        (*(v17 + 32))(boxed_opaque_existential_0, v20, v13);
        v27 = *(&v157 + 1);
        v28 = v158;
        v29 = __swift_project_boxed_opaque_existential_1(&v156, *(&v157 + 1));
        v182 = v27;
        v183 = *(v28 + 8);
        v30 = __swift_allocate_boxed_opaque_existential_0(v181);
        (*(v27[-1].Description + 2))(v30, v29, v27);
        __swift_destroy_boxed_opaque_existential_1(&v156);
        __swift_destroy_boxed_opaque_existential_1(&v173);
      }

      else
      {
        memset(v154, 0, 40);
        v31 = sub_1DB1445E0(v154, &qword_1ECC279E8, &unk_1DB2C3AE0);
        MEMORY[0x1EEE9AC00](v31);
        v12(&v90 - v11, v8, v7);
        if (swift_dynamicCast())
        {
          v179 = v135[6];
          v180[0] = v135[7];
          *(v180 + 9) = *(&v135[7] + 9);
          v175 = v135[2];
          v176 = v135[3];
          v178 = v135[5];
          v177 = v135[4];
          v174 = v135[1];
          v173 = v135[0];
          v182 = &type metadata for Insert;
          v183 = sub_1DB1F70DC();
          v32 = swift_allocObject();
          *v181 = v32;
          sub_1DB1446A4(&v173, v135, &qword_1ECC27CC8, &unk_1DB2C3860);
          if (BYTE8(v135[8]))
          {
            v33 = *&v135[0];
            v34 = *(v135 + 8);
            v35 = *(&v135[1] + 8);
            v36 = *(&v135[2] + 8);
            v37 = *(&v135[3] + 8);
            v38 = *(&v135[4] + 8);
            v39 = *(&v135[5] + 8);
            v40 = *(&v135[6] + 8);
            v41 = *(&v135[7] + 8);
          }

          else
          {
            sub_1DB1445E0(v135, &qword_1ECC27CC8, &unk_1DB2C3860);
            v33 = 0;
            v34 = 0uLL;
            v35 = 0uLL;
            v36 = 0uLL;
            v37 = 0uLL;
            v38 = 0uLL;
            v39 = 0uLL;
            v40 = 0uLL;
            v41 = 0uLL;
          }

          *&v131[0] = v33;
          *(v131 + 8) = v34;
          *(&v131[1] + 8) = v35;
          *(&v131[2] + 8) = v36;
          *(&v131[3] + 8) = v37;
          *(&v131[4] + 8) = v38;
          *(&v131[5] + 8) = v39;
          *(&v131[6] + 8) = v40;
          *(&v131[7] + 8) = v41;
          if (v34)
          {
            v162 = v131[6];
            v163 = v131[7];
            v164 = *&v131[8];
            v158 = v131[2];
            v159 = v131[3];
            v161 = v131[5];
            v160 = v131[4];
            v157 = v131[1];
            v156 = v131[0];
            sub_1DB1446A4(&v162, &v149, &qword_1ECC279E8, &unk_1DB2C3AE0);
            if (v150)
            {
              sub_1DB1355D0(&v149, v151);
              v49 = v152;
              v50 = v153;
              v51 = __swift_project_boxed_opaque_existential_1(v151, v152);
              v139[3] = v49;
              v139[4] = v50;
              v52 = __swift_allocate_boxed_opaque_existential_0(v139);
              v53 = *(v49 - 8);
              v54 = *(v53 + 64);
              MEMORY[0x1EEE9AC00](v52);
              v56 = &v90 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v53 + 16))(v56, v51, v49);
              (*(v50 + 16))(v131, v49, v50);
              v57 = v91[9];
              v128 = v91[8];
              v129 = v57;
              v130 = v91[10];
              v58 = v91[5];
              v124 = v91[4];
              v125 = v58;
              v59 = v91[7];
              v126 = v91[6];
              v127 = v59;
              v60 = v91[1];
              v120 = *v91;
              v121 = v60;
              v61 = v91[3];
              v122 = v91[2];
              v123 = v61;
              v62 = v93;
              sub_1DB1E5268(v135, &v120, v90);
              if (v62)
              {
                v116 = v131[8];
                v117 = v132;
                v118 = v133;
                v119 = v134;
                v112 = v131[4];
                v113 = v131[5];
                v114 = v131[6];
                v115 = v131[7];
                v108 = v131[0];
                v109 = v131[1];
                v110 = v131[2];
                v111 = v131[3];
                v6 = v62;
                sub_1DB17181C(&v108);
                (*(v53 + 8))(v56, v49);
                sub_1DB1F7130(&v156);
                sub_1DB1F7184(&v173);
                __swift_deallocate_boxed_opaque_existential_1(v139);
                __swift_destroy_boxed_opaque_existential_1(v151);
                __swift_deallocate_boxed_opaque_existential_1(v181);

                sub_1DB1F89E4(v91);
                return v6;
              }

              v93 = 0;
              v116 = v131[8];
              v117 = v132;
              v118 = v133;
              v119 = v134;
              v112 = v131[4];
              v113 = v131[5];
              v114 = v131[6];
              v115 = v131[7];
              v108 = v131[0];
              v109 = v131[1];
              v110 = v131[2];
              v111 = v131[3];
              sub_1DB17181C(&v108);
              v104 = v135[8];
              v105 = v136;
              v106 = v137;
              v107 = v138;
              v100 = v135[4];
              v101 = v135[5];
              v102 = v135[6];
              v103 = v135[7];
              v96 = v135[0];
              v97 = v135[1];
              v98 = v135[2];
              v99 = v135[3];
              (*(v50 + 24))(&v96, v49, v50);
              (*(v53 + 32))(v52, v56, v49);
              v146 = v162;
              v147 = v163;
              v148 = v164;
              v142 = v158;
              v143 = v159;
              v145 = v161;
              v144 = v160;
              v141 = v157;
              v140 = v156;
              sub_1DB1F8894(v139, &v146, &qword_1ECC279E8, &unk_1DB2C3AE0);
              *&v154[96] = v146;
              *&v154[112] = v147;
              *&v154[128] = v148;
              *&v154[32] = v142;
              *&v154[48] = v143;
              *&v154[80] = v145;
              *&v154[64] = v144;
              *&v154[16] = v141;
              *v154 = v140;
              v155 = 1;
              __swift_destroy_boxed_opaque_existential_1(v151);
            }

            else
            {
              sub_1DB1F7130(&v156);
              sub_1DB1445E0(&v149, &qword_1ECC279E8, &unk_1DB2C3AE0);
              sub_1DB16D210(&v173, v154);
            }

            v68 = *&v154[8];
            v66 = *v154;
            v70 = *&v154[16];
            v170 = *&v154[88];
            v171 = *&v154[104];
            v172 = *&v154[120];
            v166 = *&v154[24];
            v167 = *&v154[40];
            v169 = *&v154[72];
            v168 = *&v154[56];
            v71 = v155;
          }

          else
          {
            sub_1DB1445E0(v131, &qword_1ECC27CD0, &unk_1DB2CB840);
            sub_1DB1446A4(&v173, v135, &qword_1ECC27CC8, &unk_1DB2C3860);
            if (BYTE8(v135[8]))
            {
              v131[6] = v135[6];
              v131[7] = v135[7];
              *&v131[8] = *&v135[8];
              v131[2] = v135[2];
              v131[3] = v135[3];
              v131[4] = v135[4];
              v131[5] = v135[5];
              v131[0] = v135[0];
              v131[1] = v135[1];
              v66 = sub_1DB1F4E58();
              v68 = v67;
              sub_1DB1F7130(v131);
            }

            else
            {
              v68 = *(&v135[0] + 1);
              v66 = *&v135[0];
            }

            sub_1DB1446A4(&v173, v135, &qword_1ECC27CC8, &unk_1DB2C3860);
            if (BYTE8(v135[8]))
            {
              sub_1DB1445E0(v135, &qword_1ECC27CC8, &unk_1DB2C3860);
              v70 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v70 = *&v135[1];
            }

            v71 = 0;
            v165 = 0;
          }

          v72 = v168;
          *(v32 + 88) = v169;
          v73 = v171;
          *(v32 + 104) = v170;
          *(v32 + 120) = v73;
          *(v32 + 136) = v172;
          v74 = v167;
          *(v32 + 40) = v166;
          *(v32 + 56) = v74;
          *(v32 + 16) = v66;
          *(v32 + 24) = v68;
          *(v32 + 32) = v70;
          *(v32 + 72) = v72;
          *(v32 + 152) = v71;
          sub_1DB1F7184(&v173);
        }

        else
        {
          memset(v135, 0, 136);
          BYTE8(v135[8]) = -1;
          v42 = sub_1DB1445E0(v135, &qword_1ECC27D28, &unk_1DB2CB830);
          MEMORY[0x1EEE9AC00](v42);
          v43 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
          v12(&v90 - v43, v8, v7);
          v44 = swift_dynamicCast();
          if (v44)
          {
            v182 = &type metadata for Update;
            v183 = sub_1DB1F6FE0();
            v45 = swift_allocObject();
            *v181 = v45;
            v46 = v135[5];
            v45[5] = v135[4];
            v45[6] = v46;
            *(v45 + 107) = *(&v135[5] + 11);
            v47 = v135[1];
            v45[1] = v135[0];
            v45[2] = v47;
            v48 = v135[3];
            v45[3] = v135[2];
            v45[4] = v48;
          }

          else
          {
            MEMORY[0x1EEE9AC00](v44);
            v12(&v90 - v43, v8, v7);
            v63 = swift_dynamicCast();
            if (v63)
            {
              v64 = *&v135[0];
              v65 = sub_1DB1F6F8C();
              v182 = &type metadata for Delete;
              v183 = v65;
              *v181 = v64;
              *&v181[8] = *(v135 + 8);
            }

            else
            {
              MEMORY[0x1EEE9AC00](v63);
              v12(&v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v7);
              v69 = MEMORY[0x1E69E6158];
              if (swift_dynamicCast())
              {
                v182 = v69;
                v183 = &protocol witness table for String;
                *v181 = v135[0];
              }

              else
              {
                v84 = v92;
                v85 = *(v92 + 24);
                v85(v135, v7, v92);
                v86 = v135[0];

                v85(v135, v7, v84);
                v87 = *&v135[1];

                v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
                v88 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
                *v181 = v86;
                v183 = v88;
                *&v181[16] = v87;
              }
            }
          }
        }
      }

      v184[0] = v185;
      v76 = *(v185 + 16);
      v75 = *(v185 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_1DB1384B0((v75 > 1), v76 + 1, 1);
      }

      v77 = v182;
      v78 = v183;
      v79 = __swift_mutable_project_boxed_opaque_existential_1(v181, v182);
      v80 = *(v77[-1].Description + 8);
      MEMORY[0x1EEE9AC00](v79);
      v82 = &v90 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v83 + 16))(v82);
      sub_1DB16412C(v76, v82, v184, v77, v78);
      __swift_destroy_boxed_opaque_existential_1(v181);
      v6 = v184[0];
      v5 = v94 + 5;
      v3 = v95 - 1;
      if (v95 == 1)
      {
        sub_1DB1F89E4(v91);
        return v6;
      }
    }
  }

  sub_1DB1F89E4(a2);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DB1F8894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1DB1F88FC()
{
  result = qword_1ECC27D78;
  if (!qword_1ECC27D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27D78);
  }

  return result;
}

ValueMetadata *sub_1DB1F8BD8()
{
  v1 = *v0;
  v2 = v1 >> 14;
  if (v1 >> 14 <= 1)
  {
    if (!v2)
    {
      if (v1)
      {
        v3 = &qword_1ECC281A8;
        v4 = qword_1DB2C4BA0;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281A8, qword_1DB2C4BA0);
        v6 = &unk_1ECC281B0;
      }

      else
      {
        v3 = &qword_1ECC26D98;
        v4 = &unk_1DB2BCF00;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        v6 = &unk_1EE13EF40;
      }

      goto LABEL_22;
    }

    v8 = *v0;
    if (v8 > 4)
    {
      if (*v0 <= 6u)
      {
        if (v8 == 5)
        {
          if ((v1 & 0x100) != 0)
          {
            v3 = &qword_1ECC280A8;
            v4 = &qword_1DB2C4B18;
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280A8, &qword_1DB2C4B18);
            v6 = &unk_1ECC280B0;
          }

          else
          {
            v3 = &qword_1ECC28098;
            v4 = &qword_1DB2C4B10;
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28098, &qword_1DB2C4B10);
            v6 = &unk_1ECC280A0;
          }
        }

        else if ((v1 & 0x100) != 0)
        {
          v3 = &qword_1ECC27E20;
          v4 = &qword_1DB2C3AF0;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
          v6 = &unk_1EE13EF58;
        }

        else
        {
          v3 = &qword_1ECC28178;
          v4 = &unk_1DB2CE7D0;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
          v6 = &unk_1ECC28180;
        }
      }

      else if (v8 == 7)
      {
        if ((v1 & 0x100) != 0)
        {
          v3 = &qword_1ECC28138;
          v4 = &unk_1DB2CE7B0;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28138, &unk_1DB2CE7B0);
          v6 = &unk_1ECC28140;
        }

        else
        {
          v3 = &qword_1ECC28128;
          v4 = &unk_1DB2C4B60;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28128, &unk_1DB2C4B60);
          v6 = &unk_1ECC28130;
        }
      }

      else if (v8 == 8)
      {
        if ((v1 & 0x100) != 0)
        {
          v3 = &qword_1ECC280F8;
          v4 = &unk_1DB2D10E0;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
          v6 = &unk_1ECC28100;
        }

        else
        {
          v3 = &qword_1ECC280E8;
          v4 = &unk_1DB2C4B40;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
          v6 = &unk_1ECC280F0;
        }
      }

      else if ((v1 & 0x100) != 0)
      {
        v3 = &qword_1ECC280E0;
        v4 = &unk_1DB2CE7A0;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
        v6 = &unk_1EE13EF68;
      }

      else
      {
        v3 = &qword_1ECC280D8;
        v4 = &unk_1DB2C4B30;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
        v6 = &unk_1EE13EF78;
      }

      goto LABEL_22;
    }

    if (*v0 <= 1u)
    {
      if (!*v0)
      {
        if ((v1 & 0x100) != 0)
        {
          v3 = &qword_1ECC28198;
          v4 = &qword_1DB2C4B98;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28198, &qword_1DB2C4B98);
          v6 = &unk_1ECC281A0;
        }

        else
        {
          v3 = &qword_1ECC28188;
          v4 = &qword_1DB2C4B90;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28188, &qword_1DB2C4B90);
          v6 = &unk_1ECC28190;
        }

        goto LABEL_22;
      }

      if ((v1 & 0x100) == 0)
      {
        v3 = &qword_1ECC28168;
        v4 = &unk_1DB2C4B80;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28168, &unk_1DB2C4B80);
        v6 = &unk_1ECC28170;
        goto LABEL_22;
      }
    }

    else
    {
      if (v8 != 2)
      {
        if (v8 == 3)
        {
          if ((v1 & 0x100) != 0)
          {
            v3 = &qword_1ECC28118;
            v4 = &unk_1DB2CE7C0;
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28118, &unk_1DB2CE7C0);
            v6 = &unk_1ECC28120;
          }

          else
          {
            v3 = &qword_1ECC28108;
            v4 = &unk_1DB2C4B50;
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28108, &unk_1DB2C4B50);
            v6 = &unk_1ECC28110;
          }
        }

        else if ((v1 & 0x100) != 0)
        {
          v3 = &qword_1ECC280C8;
          v4 = &qword_1DB2C4B28;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280C8, &qword_1DB2C4B28);
          v6 = &unk_1ECC280D0;
        }

        else
        {
          v3 = &qword_1ECC280B8;
          v4 = &qword_1DB2C4B20;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280B8, &qword_1DB2C4B20);
          v6 = &unk_1ECC280C0;
        }

        goto LABEL_22;
      }

      if ((v1 & 0x100) == 0)
      {
        v3 = &qword_1ECC28148;
        v4 = &qword_1DB2C4B70;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28148, &qword_1DB2C4B70);
        v6 = &unk_1ECC28150;
LABEL_22:
        sub_1DB1688F0(v6, v3, v4);
        return v5;
      }
    }

    v3 = &qword_1ECC28158;
    v4 = &qword_1DB2C4B78;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28158, &qword_1DB2C4B78);
    v6 = &unk_1ECC28160;
    goto LABEL_22;
  }

  if (v2 == 2)
  {
    v7 = *v0;
    if (v7 > 4)
    {
      if (*v0 <= 6u)
      {
        if (v7 == 5)
        {
          if ((v1 & 0x100) != 0)
          {
            v3 = &qword_1ECC27F68;
            v4 = &qword_1DB2C4A78;
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27F68, &qword_1DB2C4A78);
            v6 = &unk_1ECC27F70;
          }

          else
          {
            v3 = &qword_1ECC27F58;
            v4 = &qword_1DB2C4A70;
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27F58, &qword_1DB2C4A70);
            v6 = &unk_1ECC27F60;
          }
        }

        else if ((v1 & 0x100) != 0)
        {
          v3 = &qword_1ECC28068;
          v4 = &qword_1DB2C4AF8;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28068, &qword_1DB2C4AF8);
          v6 = &unk_1ECC28070;
        }

        else
        {
          v3 = &qword_1ECC28058;
          v4 = &qword_1DB2C4AF0;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28058, &qword_1DB2C4AF0);
          v6 = &unk_1ECC28060;
        }
      }

      else if (v7 == 7)
      {
        if ((v1 & 0x100) != 0)
        {
          v3 = &qword_1ECC28008;
          v4 = &qword_1DB2C4AC8;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28008, &qword_1DB2C4AC8);
          v6 = &unk_1ECC28010;
        }

        else
        {
          v3 = &qword_1ECC27FF8;
          v4 = &qword_1DB2C4AC0;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27FF8, &qword_1DB2C4AC0);
          v6 = &unk_1ECC28000;
        }
      }

      else if (v7 == 8)
      {
        if ((v1 & 0x100) != 0)
        {
          v3 = &qword_1ECC27FC8;
          v4 = &qword_1DB2C4AA8;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27FC8, &qword_1DB2C4AA8);
          v6 = &unk_1ECC27FD0;
        }

        else
        {
          v3 = &qword_1ECC27FB8;
          v4 = &qword_1DB2C4AA0;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27FB8, &qword_1DB2C4AA0);
          v6 = &unk_1ECC27FC0;
        }
      }

      else if ((v1 & 0x100) != 0)
      {
        v3 = &qword_1ECC27FA8;
        v4 = &qword_1DB2C4A98;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27FA8, &qword_1DB2C4A98);
        v6 = &unk_1ECC27FB0;
      }

      else
      {
        v3 = &qword_1ECC27F98;
        v4 = &qword_1DB2C4A90;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27F98, &qword_1DB2C4A90);
        v6 = &unk_1ECC27FA0;
      }
    }

    else if (*v0 <= 1u)
    {
      if (*v0)
      {
        if ((v1 & 0x100) != 0)
        {
          v3 = &qword_1ECC28048;
          v4 = &qword_1DB2C4AE8;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28048, &qword_1DB2C4AE8);
          v6 = &unk_1ECC28050;
        }

        else
        {
          v3 = &qword_1ECC28038;
          v4 = &qword_1DB2C4AE0;
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28038, &qword_1DB2C4AE0);
          v6 = &unk_1ECC28040;
        }
      }

      else if ((v1 & 0x100) != 0)
      {
        v3 = &qword_1ECC28088;
        v4 = &qword_1DB2C4B08;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28088, &qword_1DB2C4B08);
        v6 = &unk_1ECC28090;
      }

      else
      {
        v3 = &qword_1ECC28078;
        v4 = &qword_1DB2C4B00;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28078, &qword_1DB2C4B00);
        v6 = &unk_1ECC28080;
      }
    }

    else if (v7 == 2)
    {
      if ((v1 & 0x100) != 0)
      {
        v3 = &qword_1ECC28028;
        v4 = &qword_1DB2C4AD8;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28028, &qword_1DB2C4AD8);
        v6 = &unk_1ECC28030;
      }

      else
      {
        v3 = &qword_1ECC28018;
        v4 = &qword_1DB2C4AD0;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28018, &qword_1DB2C4AD0);
        v6 = &unk_1ECC28020;
      }
    }

    else if (v7 == 3)
    {
      if ((v1 & 0x100) != 0)
      {
        v3 = &qword_1ECC27FE8;
        v4 = &qword_1DB2C4AB8;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27FE8, &qword_1DB2C4AB8);
        v6 = &unk_1ECC27FF0;
      }

      else
      {
        v3 = &qword_1ECC27FD8;
        v4 = &qword_1DB2C4AB0;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27FD8, &qword_1DB2C4AB0);
        v6 = &unk_1ECC27FE0;
      }
    }

    else if ((v1 & 0x100) != 0)
    {
      v3 = &qword_1ECC27F88;
      v4 = &qword_1DB2C4A88;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27F88, &qword_1DB2C4A88);
      v6 = &unk_1ECC27F90;
    }

    else
    {
      v3 = &qword_1ECC27F78;
      v4 = &qword_1DB2C4A80;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27F78, &qword_1DB2C4A80);
      v6 = &unk_1ECC27F80;
    }

    goto LABEL_22;
  }

  if (v1 == 49152)
  {
    v5 = &type metadata for Insert;
    sub_1DB203410();
  }

  else if (v1 == 49153)
  {
    v5 = &type metadata for Update;
    sub_1DB2033BC();
  }

  else
  {
    v5 = &type metadata for Delete;
    sub_1DB203368();
  }

  return v5;
}

ValueMetadata *static ExpressionType.expressionTypeCodableType.getter@<X0>(ValueMetadata *a1@<X0>, __int16 *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = type metadata accessor for Expression();
  if (result != a1)
  {
    result = type metadata accessor for Select();
    if (result != a1)
    {
      if (a1 == &type metadata for Insert)
      {
        v7 = -16384;
        goto LABEL_37;
      }

      if (a1 == &type metadata for Update)
      {
        v7 = -16383;
        goto LABEL_37;
      }

      if (a1 == &type metadata for Delete)
      {
        v7 = -16382;
LABEL_37:
        *a2 = v7;
        return result;
      }

LABEL_28:
      *&v18[3] = swift_getMetatypeMetadata();
      swift_getMetatypeMetadata();
      v14 = sub_1DB2BADF4();
      v16 = v15;
      sub_1DB135B68();
      swift_allocError();
      *v17 = 0xD000000000000019;
      *(v17 + 8) = 0x80000001DB2D47C0;
      *(v17 + 16) = xmmword_1DB2C3A40;
      *(v17 + 32) = v14;
      *(v17 + 40) = v16;
      *(v17 + 48) = 1;
      return swift_willThrow();
    }

    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      v13 = AssociatedTypeWitness == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      result = (*(v12 + 64))(v18 + 2, AssociatedTypeWitness, v12);
      if (!v2)
      {
        v7 = BYTE2(v18[0]) | 0x8000;
        goto LABEL_37;
      }

      return result;
    }

    if (!swift_conformsToProtocol2() || !AssociatedTypeWitness)
    {
      goto LABEL_28;
    }

    result = sub_1DB168AE8();
    if (v2)
    {
      return result;
    }

    v10 = HIBYTE(v18[0]);
    v11 = -32512;
LABEL_27:
    v7 = v10 | v11;
    goto LABEL_37;
  }

  if (AssociatedTypeWitness == MEMORY[0x1E69E7CA8] + 8)
  {
    *a2 = 0;
    return result;
  }

  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = AssociatedTypeWitness == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D80, &qword_1DB2C3A60);
    if (AssociatedTypeWitness == result)
    {
      v7 = 1;
      goto LABEL_37;
    }

    if (!swift_conformsToProtocol2() || !AssociatedTypeWitness)
    {
      goto LABEL_28;
    }

    result = sub_1DB168AE8();
    if (v2)
    {
      return result;
    }

    v10 = BYTE1(v18[0]);
    v11 = 16640;
    goto LABEL_27;
  }

  result = (*(v8 + 64))(v18, AssociatedTypeWitness, v8);
  if (!v2)
  {
    v7 = LOBYTE(v18[0]) | 0x4000;
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1DB1F98A8()
{
  v1 = *v0;
  v2 = 0x7270784564696F76;
  v3 = 0x747265736E69;
  v4 = 0x657461647075;
  if (v1 != 4)
  {
    v4 = 0x6574656C6564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6973736572707865;
  if (v1 != 1)
  {
    v5 = 0x7463656C6573;
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

uint64_t sub_1DB1F9960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB202D68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB1F9988(uint64_t a1)
{
  v2 = sub_1DB200BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1F99C4(uint64_t a1)
{
  v2 = sub_1DB200BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1F9A00(uint64_t a1)
{
  v2 = sub_1DB200C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1F9A3C(uint64_t a1)
{
  v2 = sub_1DB200C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1F9A78(uint64_t a1)
{
  v2 = sub_1DB200D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1F9AB4(uint64_t a1)
{
  v2 = sub_1DB200D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1F9AF0(uint64_t a1)
{
  v2 = sub_1DB200CA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1F9B2C(uint64_t a1)
{
  v2 = sub_1DB200CA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1F9B68(uint64_t a1)
{
  v2 = sub_1DB200CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1F9BA4(uint64_t a1)
{
  v2 = sub_1DB200CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1F9BE0(uint64_t a1)
{
  v2 = sub_1DB200C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1F9C1C(uint64_t a1)
{
  v2 = sub_1DB200C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1F9C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6974704F7369 && a2 == 0xEA00000000006C61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB2BB924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB1F9D04(uint64_t a1)
{
  v2 = sub_1DB200DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1F9D40(uint64_t a1)
{
  v2 = sub_1DB200DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExpressionTypeCodableType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D88, &qword_1DB2C3A68);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D90, &qword_1DB2C3A70);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D98, &qword_1DB2C3A78);
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27DA0, &qword_1DB2C3A80);
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27DA8, &qword_1DB2C3A88);
  v58 = *(v16 - 8);
  v59 = v16;
  v17 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27DB0, &qword_1DB2C3A90);
  v57 = *(v20 - 8);
  v21 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27DB8, &qword_1DB2C3A98);
  v62 = *(v24 - 8);
  v63 = v24;
  v25 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  v29 = a1;
  v31 = &v48 - v30;
  __swift_project_boxed_opaque_existential_1(v29, v27);
  sub_1DB200BAC();
  sub_1DB2BBA94();
  v32 = v26 >> 14;
  if (v26 >> 14 <= 1)
  {
    if (!v32)
    {
      v65 = 0;
      sub_1DB200DA4();
      v33 = v63;
      sub_1DB2BB804();
      sub_1DB2BB874();
      (*(v57 + 8))(v23, v20);
      return (*(v62 + 8))(v31, v33);
    }

    v69 = 1;
    sub_1DB200D50();
    v35 = v63;
    sub_1DB2BB804();
    v68 = v26;
    v67 = 0;
    sub_1DB16456C();
    v41 = v59;
    v42 = v64;
    sub_1DB2BB8A4();
    if (!v42)
    {
      v66 = 1;
      sub_1DB2BB874();
    }

    v38 = *(v58 + 8);
    v39 = v19;
    v40 = v41;
LABEL_14:
    v38(v39, v40);
    return (*(v62 + 8))(v31, v35);
  }

  if (v32 == 2)
  {
    v73 = 2;
    sub_1DB200CFC();
    v35 = v63;
    sub_1DB2BB804();
    v72 = v26;
    v71 = 0;
    sub_1DB16456C();
    v36 = v61;
    v37 = v64;
    sub_1DB2BB8A4();
    if (!v37)
    {
      v70 = 1;
      sub_1DB2BB874();
      (*(v60 + 8))(v15, v36);
      return (*(v62 + 8))(v31, v35);
    }

    v38 = *(v60 + 8);
    v39 = v15;
    v40 = v36;
    goto LABEL_14;
  }

  v43 = (v62 + 8);
  if (v26 == 49152)
  {
    v74 = 3;
    sub_1DB200CA8();
    v44 = v48;
    v45 = v63;
    sub_1DB2BB804();
    v47 = v49;
    v46 = v50;
  }

  else if (v26 == 49153)
  {
    v75 = 4;
    sub_1DB200C54();
    v44 = v51;
    v45 = v63;
    sub_1DB2BB804();
    v47 = v52;
    v46 = v53;
  }

  else
  {
    v76 = 5;
    sub_1DB200C00();
    v44 = v54;
    v45 = v63;
    sub_1DB2BB804();
    v47 = v55;
    v46 = v56;
  }

  (*(v47 + 8))(v44, v46);
  return (*v43)(v31, v45);
}

uint64_t ExpressionTypeCodableType.init(from:)@<X0>(uint64_t *a1@<X0>, __int16 *a2@<X8>)
{
  v77 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27DD8, &qword_1DB2C3AA0);
  v63 = *(v72 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v59 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27DE0, &qword_1DB2C3AA8);
  v68 = *(v70 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v75 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27DE8, &qword_1DB2C3AB0);
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v59 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27DF0, &qword_1DB2C3AB8);
  v71 = *(v69 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27DF8, &qword_1DB2C3AC0);
  v66 = *(v12 - 8);
  v67 = v12;
  v13 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E00, &qword_1DB2C3AC8);
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E08, &unk_1DB2C3AD0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v59 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1DB200BAC();
  v27 = v78;
  sub_1DB2BBA84();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v61 = v19;
  v60 = v16;
  v28 = v74;
  v29 = v75;
  v78 = v21;
  v31 = v76;
  v30 = v77;
  v32 = sub_1DB2BB7D4();
  v33 = (2 * *(v32 + 16)) | 1;
  v80 = v32;
  v81 = v32 + 32;
  v82 = 0;
  v83 = v33;
  v34 = sub_1DB14B1E4();
  if (v34 == 6 || v82 != v83 >> 1)
  {
    v38 = sub_1DB2BB564();
    swift_allocError();
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
    *v40 = &type metadata for ExpressionTypeCodableType;
    sub_1DB2BB714();
    sub_1DB2BB554();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v78 + 8))(v24, v20);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  if (v34 > 2u)
  {
    if (v34 == 3)
    {
      v85 = 3;
      sub_1DB200CA8();
      sub_1DB2BB704();
      v48 = v78;
      (*(v64 + 8))(v28, v65);
      (*(v48 + 8))(v24, v20);
      swift_unknownObjectRelease();
      v44 = -16384;
    }

    else
    {
      v43 = v78;
      if (v34 == 4)
      {
        v85 = 4;
        sub_1DB200C54();
        sub_1DB2BB704();
        (*(v68 + 8))(v29, v70);
        (*(v43 + 8))(v24, v20);
        swift_unknownObjectRelease();
        v44 = -16383;
      }

      else
      {
        v85 = 5;
        sub_1DB200C00();
        sub_1DB2BB704();
        (*(v63 + 8))(v31, v72);
        (*(v43 + 8))(v24, v20);
        swift_unknownObjectRelease();
        v44 = -16382;
      }
    }
  }

  else if (v34)
  {
    if (v34 == 1)
    {
      v85 = 1;
      sub_1DB200D50();
      v35 = v15;
      sub_1DB2BB704();
      v36 = v78;
      v84 = 0;
      sub_1DB164710();
      v37 = v67;
      sub_1DB2BB7B4();
      v53 = v85;
      v84 = 1;
      v55 = sub_1DB2BB784();
      (*(v66 + 8))(v35, v37);
      (*(v36 + 8))(v24, v20);
      swift_unknownObjectRelease();
      if (v55)
      {
        v56 = 256;
      }

      else
      {
        v56 = 0;
      }

      v44 = v56 | v53 | 0x4000;
    }

    else
    {
      v85 = 2;
      sub_1DB200CFC();
      v49 = v73;
      sub_1DB2BB704();
      v50 = v78;
      v51 = v30;
      v84 = 0;
      sub_1DB164710();
      v52 = v69;
      sub_1DB2BB7B4();
      v54 = v85;
      v84 = 1;
      v57 = sub_1DB2BB784();
      (*(v71 + 8))(v49, v52);
      (*(v50 + 8))(v24, v20);
      swift_unknownObjectRelease();
      if (v57)
      {
        v58 = 256;
      }

      else
      {
        v58 = 0;
      }

      v44 = v58 | v54 | 0x8000;
      v30 = v51;
    }
  }

  else
  {
    v85 = 0;
    sub_1DB200DA4();
    v45 = v61;
    sub_1DB2BB704();
    v46 = v60;
    v47 = sub_1DB2BB784();
    (*(v62 + 8))(v45, v46);
    (*(v78 + 8))(v24, v20);
    swift_unknownObjectRelease();
    v44 = v47 & 1;
  }

  *v30 = v44;
  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_1DB1FAFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB1FB020(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DB1FB08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB1FB0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB1FB16C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  result = sub_1DB1FB34C();
  *a3 = result;
  return result;
}

uint64_t sub_1DB1FB1C4@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DB1FB34C();
  *a2 = result;
  return result;
}

uint64_t sub_1DB1FB1F8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DB202F64();
  *a2 = result;
  return result;
}

uint64_t sub_1DB1FB224(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB1FB278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB1FB34C()
{
  v0 = sub_1DB2BB6F4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB1FB3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB1FB444(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DB1FB4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB1FB520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB1FB590@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  result = sub_1DB1FB34C();
  *a3 = result;
  return result;
}

uint64_t sub_1DB1FB5D0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, *(a1 + 16));
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1DB1FB608@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DB1FB34C();
  *a2 = result;
  return result;
}

uint64_t sub_1DB1FB63C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB1FB690(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB1FB724(void *a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  a3(255, *(a2 + 16));
  swift_getWitnessTable();
  v5 = sub_1DB2BB8C4();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = *v3;
  v10 = v3[1];
  v25 = v3[2];
  v26 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA94();
  LOBYTE(v29[0]) = 0;
  v12 = v27;
  sub_1DB2BB864();
  if (v12)
  {
    return (*(v28 + 8))(v8, v5);
  }

  v14 = v25;
  v15 = *(v25 + 2);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v24 = 0;
    v26 = v8;
    v27 = v5;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1DB138580(0, v15, 0);
    v16 = v31;
    v17 = (v14 + 32);
    do
    {
      sub_1DB1446A4(v17, v29, &qword_1ECC26E28, &unk_1DB2C2D70);
      v31 = v16;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DB138580((v18 > 1), v19 + 1, 1);
        v16 = v31;
      }

      *(v16 + 16) = v19 + 1;
      v20 = v16 + 40 * v19;
      v21 = v29[0];
      v22 = v29[1];
      *(v20 + 64) = v30;
      *(v20 + 32) = v21;
      *(v20 + 48) = v22;
      v17 += 40;
      --v15;
    }

    while (v15);
    v8 = v26;
    v5 = v27;
  }

  *&v29[0] = v16;
  LOBYTE(v31) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E10, &qword_1DB2CEFB0);
  sub_1DB200E10();
  sub_1DB2BB8A4();
  v23 = v28;

  return (*(v23 + 8))(v8, v5);
}

uint64_t sub_1DB1FBA14@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v30 = a3;
  a2(255);
  swift_getWitnessTable();
  v5 = sub_1DB2BB7E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA84();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v6;
  LOBYTE(v32[0]) = 0;
  v11 = sub_1DB2BB774();
  v14 = v13;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E10, &qword_1DB2CEFB0);
  LOBYTE(v32[0]) = 1;
  sub_1DB200EE8();
  sub_1DB2BB7B4();
  v15 = v29;
  v16 = v35;
  v17 = *(v35 + 16);
  if (v17)
  {
    v26 = v5;
    v27 = v14;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1DB138530(0, v17, 0);
    v18 = v34;
    v19 = v16 + 32;
    do
    {
      sub_1DB200FC0(v19, v31);
      sub_1DB1446A4(v31, v32, &qword_1ECC26E28, &unk_1DB2C2D70);
      sub_1DB20101C(v31);
      v34 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1DB138530((v20 > 1), v21 + 1, 1);
        v18 = v34;
      }

      *(v18 + 16) = v21 + 1;
      v22 = v18 + 40 * v21;
      v23 = v32[0];
      v24 = v32[1];
      *(v22 + 64) = v33;
      *(v22 + 32) = v23;
      *(v22 + 48) = v24;
      v19 += 40;
      --v17;
    }

    while (v17);
    (*(v29 + 8))(v9, v26);

    v14 = v27;
  }

  else
  {

    (*(v15 + 8))(v9, v5);
    v18 = MEMORY[0x1E69E7CC0];
  }

  v25 = v30;
  *v30 = v28;
  v25[1] = v14;
  v25[2] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB1FBDA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7823730 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7275746375727473 && a2 == 0xEA00000000006465)
  {

    return 1;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DB1FBEAC(char a1)
{
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](a1 & 1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB1FBEF4(char a1)
{
  if (a1)
  {
    return 0x7275746375727473;
  }

  else
  {
    return 7823730;
  }
}

uint64_t sub_1DB1FBF28(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DB2BB924();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DB1FBF98(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v49 = type metadata accessor for ExpressionGuts.StructuredCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1DB2BB8C4();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v48 = v42 - v9;
  v50 = *(v4 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v46 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ExpressionGuts.RawCodingKeys();
  v42[0] = swift_getWitnessTable();
  v42[1] = v12;
  v13 = sub_1DB2BB8C4();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v43 = v42 - v16;
  v17 = *(a2 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = (v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = v5;
  v54 = v4;
  type metadata accessor for ExpressionGuts.CodingKeys();
  swift_getWitnessTable();
  v21 = sub_1DB2BB8C4();
  v57 = *(v21 - 8);
  v58 = v21;
  v22 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v42 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v56 = v24;
  sub_1DB2BBA94();
  (*(v17 + 16))(v20, v55, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v50;
    v27 = v46;
    v28 = v54;
    (*(v50 + 32))(v46, v20, v54);
    LOBYTE(v59) = 1;
    v29 = v48;
    v30 = v58;
    v31 = v56;
    sub_1DB2BB804();
    v32 = v52;
    v33 = *(v53 + 16);
    sub_1DB2BB8A4();
    (*(v51 + 8))(v29, v32);
    (*(v26 + 8))(v27, v28);
    return (*(v57 + 8))(v31, v30);
  }

  else
  {
    v36 = *v20;
    v35 = v20[1];
    v37 = v20[2];
    LOBYTE(v59) = 0;
    v38 = v43;
    v39 = v58;
    v40 = v56;
    sub_1DB2BB804();
    v59 = v36;
    v60 = v35;
    v61 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    sub_1DB1688F0(&qword_1ECC27F40, &qword_1ECC26D98, &unk_1DB2BCF00);
    v41 = v45;
    sub_1DB2BB8A4();
    (*(v44 + 8))(v38, v41);
    (*(v57 + 8))(v40, v39);
  }
}

uint64_t sub_1DB1FC50C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v69 = a4;
  v7 = type metadata accessor for ExpressionGuts.StructuredCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v68 = v7;
  v62 = sub_1DB2BB7E4();
  v61 = *(v62 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v71 = &v54 - v9;
  v10 = type metadata accessor for ExpressionGuts.RawCodingKeys();
  v64 = swift_getWitnessTable();
  v65 = v10;
  v60 = sub_1DB2BB7E4();
  v59 = *(v60 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v66 = &v54 - v12;
  type metadata accessor for ExpressionGuts.CodingKeys();
  swift_getWitnessTable();
  v72 = sub_1DB2BB7E4();
  v74 = *(v72 - 8);
  v13 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v15 = &v54 - v14;
  v73 = a2;
  v63 = a3;
  v16 = type metadata accessor for ExpressionGuts();
  v58 = *(v16 - 8);
  v17 = *(v58 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v54 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v54 - v24;
  v26 = a1;
  v27 = a1[3];
  v28 = v26[4];
  v79 = v26;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v70 = v15;
  v29 = v75;
  sub_1DB2BBA84();
  if (!v29)
  {
    v57 = v20;
    v55 = v23;
    v30 = v71;
    v56 = v25;
    v75 = v16;
    v31 = v72;
    v32 = v70;
    *v76 = sub_1DB2BB7D4();
    sub_1DB2BB154();
    swift_getWitnessTable();
    *&v77 = sub_1DB2BB424();
    *(&v77 + 1) = v33;
    *&v78 = v34;
    *(&v78 + 1) = v35;
    sub_1DB2BB414();
    swift_getWitnessTable();
    sub_1DB2BB214();
    v36 = v76[0];
    if (v76[0] == 2 || (v54 = v77, *v76 = v77, *&v76[16] = v78, (sub_1DB2BB224() & 1) == 0))
    {
      v42 = sub_1DB2BB564();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
      *v44 = v75;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v74 + 8))(v32, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v36)
      {
        v76[0] = 1;
        v37 = v30;
        sub_1DB2BB704();
        v38 = v69;
        v39 = *(v63 + 8);
        v40 = v57;
        v41 = v62;
        sub_1DB2BB7B4();
        (*(v61 + 8))(v37, v41);
        (*(v74 + 8))(v32, v31);
        swift_unknownObjectRelease();
        v50 = v75;
        swift_storeEnumTagMultiPayload();
        v51 = *(v58 + 32);
        v52 = v56;
        v51(v56, v40, v50);
      }

      else
      {
        v76[0] = 0;
        v46 = v66;
        sub_1DB2BB704();
        v47 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        sub_1DB1688F0(&qword_1EE13EF40, &qword_1ECC26D98, &unk_1DB2BCF00);
        v48 = v60;
        sub_1DB2BB7B4();
        (*(v59 + 8))(v46, v48);
        (*(v47 + 8))(v32, v31);
        swift_unknownObjectRelease();
        v50 = v75;
        v53 = v55;
        *v55 = *v76;
        *(v53 + 1) = *&v76[8];
        swift_storeEnumTagMultiPayload();
        v51 = *(v58 + 32);
        v52 = v56;
        v51(v56, v53, v50);
        v38 = v69;
      }

      v51(v38, v52, v50);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v79);
}

BOOL sub_1DB1FCD84(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1DB1FBE74(*a1, *a2);
}

uint64_t sub_1DB1FCD98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1DB1FBEAC(*v1);
}

uint64_t sub_1DB1FCDA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1DB1FBE84(a1, *v2);
}

uint64_t sub_1DB1FCDB8(uint64_t a1, uint64_t a2)
{
  sub_1DB2BBA04();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1DB1FBE84(v7, *v2);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB1FCE00(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1DB1FBEF4(*v1);
}

uint64_t sub_1DB1FCE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1DB1FBDA0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1DB1FCE40@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1DB202F64();
  *a2 = result;
  return result;
}

uint64_t sub_1DB1FCE6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB1FCEC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB1FCF14@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1DB136F1C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DB1FCF44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB1FCF98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB1FCFEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB1FD040(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t InsertClauses.expression.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  sub_1DB1446A4((v3 + 12), &v155, &qword_1ECC279E8, &unk_1DB2C3AE0);
  v137 = a1;
  if (*(&v156 + 1))
  {
    sub_1DB1355D0(&v155, &v151);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DB2BD590;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    *(v5 + 56) = v6;
    v7 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    *(v5 + 32) = 0x4920545245534E49;
    *(v5 + 64) = v7;
    v8 = MEMORY[0x1E69E7CC0];
    *(v5 + 40) = 0xEB000000004F544ELL;
    *(v5 + 48) = v8;
    v9 = v3[4];
    v10 = v3[5];
    if (v3[3])
    {
      v11 = v3[2];
    }

    else
    {
      v27 = v3;
      v25 = *v3;
      v26 = v27[1];
    }

    v28 = sub_1DB2B995C(34, 0xE100000000000000);
    v30 = v29;

    if (v10)
    {
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1DB2BD5A0;
      *(v31 + 56) = v6;
      *(v31 + 64) = v7;
      *(v31 + 32) = sub_1DB2B995C(34, 0xE100000000000000);
      *(v31 + 40) = v32;
      v33 = MEMORY[0x1E69E7CC0];
      *(v31 + 48) = MEMORY[0x1E69E7CC0];
      *(v31 + 96) = v6;
      *(v31 + 104) = v7;
      *(v31 + 72) = v28;
      *(v31 + 80) = v30;
      *(v31 + 88) = v33;
      sub_1DB2B9A70(v31, (v5 + 72));
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }

    else
    {
      *(v5 + 96) = v6;
      *(v5 + 104) = v7;
      *(v5 + 72) = v28;
      *(v5 + 80) = v30;
      *(v5 + 88) = MEMORY[0x1E69E7CC0];
    }

    v34 = *(&v152 + 1);
    v35 = v153;
    __swift_project_boxed_opaque_existential_1(&v151, *(&v152 + 1));
    v36 = *(*(v35 + 8) + 24);
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    v36(v34);
    sub_1DB2B9A70(v5, &v155);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v37 = *(&v156 + 1);
    v38 = v157;
    __swift_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
    (*(v38 + 24))(v37, v38);
    __swift_destroy_boxed_opaque_existential_1(&v155);
LABEL_16:
    v39 = &v151;
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  sub_1DB1445E0(&v155, &qword_1ECC279E8, &unk_1DB2C3AE0);
  v12 = v3[8];
  v140 = *(v12 + 16);
  if (!v140)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DB2BD590;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    *(v41 + 56) = v42;
    v43 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    *(v41 + 32) = 0x4920545245534E49;
    *(v41 + 64) = v43;
    v44 = MEMORY[0x1E69E7CC0];
    *(v41 + 40) = 0xEB000000004F544ELL;
    *(v41 + 48) = v44;
    v45 = v3[4];
    v46 = v3[5];
    if (v3[3])
    {
      v47 = v3[2];
    }

    else
    {
      v125 = v3;
      v123 = *v3;
      v124 = v125[1];
    }

    v126 = sub_1DB2B995C(34, 0xE100000000000000);
    v128 = v127;

    if (v46)
    {
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_1DB2BD5A0;
      *(v129 + 56) = v42;
      *(v129 + 64) = v43;
      *(v129 + 32) = sub_1DB2B995C(34, 0xE100000000000000);
      *(v129 + 40) = v130;
      v131 = MEMORY[0x1E69E7CC0];
      *(v129 + 48) = MEMORY[0x1E69E7CC0];
      *(v129 + 96) = v42;
      *(v129 + 104) = v43;
      *(v129 + 72) = v126;
      *(v129 + 80) = v128;
      *(v129 + 88) = v131;
      sub_1DB2B9A70(v129, (v41 + 72));
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }

    else
    {
      *(v41 + 96) = v42;
      *(v41 + 104) = v43;
      *(v41 + 72) = v126;
      *(v41 + 80) = v128;
      v131 = MEMORY[0x1E69E7CC0];
      *(v41 + 88) = MEMORY[0x1E69E7CC0];
    }

    *(v41 + 136) = v42;
    *(v41 + 144) = v43;
    strcpy((v41 + 112), "DEFAULT VALUES");
    *(v41 + 127) = -18;
    *(v41 + 128) = v131;
    sub_1DB2B9A70(v41, &v151);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v132 = *(&v152 + 1);
    v133 = v153;
    __swift_project_boxed_opaque_existential_1(&v151, *(&v152 + 1));
    (*(v133 + 24))(v132, v133);
    goto LABEL_16;
  }

  v13 = *(v12 + 32);
  v139 = v12 + 32;
  v14 = *(v13 + 16);
  v138 = v12;
  v136 = v3;
  if (!v14)
  {
    v134 = v13;

    v135 = MEMORY[0x1E69E7CC0];
LABEL_23:
    *&v155 = MEMORY[0x1E69E7CC0];
    sub_1DB1384F0(0, v140, 0);
    v48 = 0;
    v49 = v155;
    v144 = xmmword_1DB2BCC40;
    while (v48 < *(v12 + 16))
    {
      v50 = *(v139 + 8 * v48);
      v51 = *(v50 + 16);
      if (v51)
      {
        v142 = v48;
        v143 = v49;
        v52 = v50 + 32;
        v141 = v50;

        v53 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          sub_1DB164AE0(v52, &v151);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v54 = swift_allocObject();
          *(v54 + 16) = v144;
          sub_1DB164980(&v154, v54 + 32);
          v55 = v53[2];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v57 = v53[3] >> 1, v2 = v53, v57 <= v55))
          {
            v2 = sub_1DB1573FC(isUniquelyReferenced_nonNull_native, v55 + 1, 1, v53);
            v57 = v2[3] >> 1;
          }

          if (v57 <= v2[2])
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
          swift_arrayInitWithCopy();

          sub_1DB164B3C(&v151);

          ++v2[2];
          v52 += 80;
          v53 = v2;
          if (!--v51)
          {

            v49 = v143;
            v12 = v138;
            v48 = v142;
            goto LABEL_34;
          }
        }

        __break(1u);
        break;
      }

      v2 = MEMORY[0x1E69E7CC0];
LABEL_34:
      *&v155 = v49;
      v59 = *(v49 + 16);
      v58 = *(v49 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1DB1384F0((v58 > 1), v59 + 1, 1);
        v49 = v155;
      }

      ++v48;
      *(v49 + 16) = v59 + 1;
      *(v49 + 8 * v59 + 32) = v2;
      if (v48 == v140)
      {
        v3 = v136;
        v15 = v135;
        v13 = v134;
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v147[0] = MEMORY[0x1E69E7CC0];

  sub_1DB1384B0(0, v14, 0);
  v15 = v147[0];
  v2 = (v13 + 32);
  do
  {
    sub_1DB164AE0(v2, &v151);
    sub_1DB164980(&v151, &v155);
    sub_1DB164B3C(&v151);
    v147[0] = v15;
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1DB1384B0((v16 > 1), v17 + 1, 1);
    }

    v18 = *(&v156 + 1);
    v19 = v157;
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
    v21 = *(*(v18 - 8) + 64);
    MEMORY[0x1EEE9AC00](v20);
    v23 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23);
    sub_1DB16412C(v17, v23, v147, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(&v155);
    v15 = v147[0];
    v2 += 10;
    --v14;
  }

  while (v14);
  v12 = v138;
  v140 = *(v138 + 16);
  if (v140)
  {
    v134 = v13;
    v135 = v147[0];
    goto LABEL_23;
  }

  v49 = MEMORY[0x1E69E7CC0];
LABEL_39:
  v143 = v49;
  v60 = v3[7];
  if (!v60 || (v61 = *(v60 + 16)) == 0)
  {

    v153 = 0;
    v151 = 0u;
    v152 = 0u;
LABEL_46:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
    v64 = swift_allocObject();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    *(v64 + 56) = v65;
    v66 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    *(v64 + 32) = 0x545245534E49;
    *(v64 + 64) = v66;
    v67 = MEMORY[0x1E69E7CC0];
    *(v64 + 40) = 0xE600000000000000;
    *(v64 + 48) = v67;
    v68 = *(v3 + 48);
    v138 = v64 + 32;
    if (v68 == 5)
    {
      *(v64 + 104) = 0;
      *(v64 + 88) = 0u;
      *(v64 + 72) = 0u;
    }

    else
    {
      v69 = 0xE600000000000000;
      v70 = 0x45524F4E4749;
      *&v155 = 2118223;
      *(&v155 + 1) = 0xE300000000000000;
      v71 = 0xE500000000000000;
      v72 = 0x54524F4241;
      if (v68 == 3)
      {
        v70 = 1279869254;
        v69 = 0xE400000000000000;
      }

      if (v68 != 2)
      {
        v72 = v70;
        v71 = v69;
      }

      v73 = 0xE700000000000000;
      v74 = 0x4543414C504552;
      if (v68)
      {
        v74 = 0x4B4341424C4C4F52;
        v73 = 0xE800000000000000;
      }

      if (v68 <= 1)
      {
        v75 = v74;
      }

      else
      {
        v75 = v72;
      }

      if (v68 <= 1)
      {
        v76 = v73;
      }

      else
      {
        v76 = v71;
      }

      MEMORY[0x1E1283490](v75, v76);

      v77 = v155;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 72) = v77;
      *(v64 + 88) = v67;
    }

    *(v64 + 136) = v65;
    *(v64 + 144) = v66;
    *(v64 + 112) = 1330925129;
    *(v64 + 120) = 0xE400000000000000;
    *(v64 + 128) = v67;
    v78 = v3[4];
    v79 = v3[5];
    if (v3[3])
    {
      v80 = v3[2];
      v81 = v3[3];
    }

    else
    {
      v83 = *v3;
      v82 = v3[1];
    }

    v84 = sub_1DB2B995C(34, 0xE100000000000000);
    v86 = v85;

    if (v79)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1DB2BD5A0;
      *(v87 + 56) = v65;
      *(v87 + 64) = v66;
      *(v87 + 32) = sub_1DB2B995C(34, 0xE100000000000000);
      *(v87 + 40) = v88;
      v89 = MEMORY[0x1E69E7CC0];
      *(v87 + 48) = MEMORY[0x1E69E7CC0];
      *(v87 + 96) = v65;
      *(v87 + 104) = v66;
      *(v87 + 72) = v84;
      *(v87 + 80) = v86;
      *(v87 + 88) = v89;
      sub_1DB2B9A70(v87, (v64 + 152));
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }

    else
    {
      *(v64 + 176) = v65;
      *(v64 + 184) = v66;
      *(v64 + 152) = v84;
      *(v64 + 160) = v86;
      v89 = MEMORY[0x1E69E7CC0];
      *(v64 + 168) = MEMORY[0x1E69E7CC0];
    }

    *(v64 + 216) = v65;
    *(v64 + 224) = v66;
    sub_1DB2B9A70(v15, &v155);

    sub_1DB1FE938(&v155, 0, 0xE000000000000000, (v64 + 192));
    __swift_destroy_boxed_opaque_existential_1(&v155);
    *(v64 + 256) = v65;
    *(v64 + 264) = v66;
    *(v64 + 232) = 0x5345554C4156;
    *(v64 + 240) = 0xE600000000000000;
    *(v64 + 248) = v89;
    v90 = *(v143 + 16);
    v141 = v64;
    if (v90)
    {
      v140 = v66;
      v150 = v89;
      sub_1DB1384B0(0, v90, 0);
      v91 = 32;
      v89 = v150;
      v139 = v65;
      do
      {
        v142 = v89;
        *&v144 = v90;
        v92 = *(v143 + v91);

        sub_1DB2B9A70(v93, &v155);
        *&v145[0] = 0;
        *(&v145[0] + 1) = 0xE000000000000000;
        MEMORY[0x1E1283490](40, 0xE100000000000000);
        v94 = *(&v156 + 1);
        v95 = v157;
        __swift_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
        v96 = *(v95 + 24);
        v96(v147, v94, v95);
        v97 = v147[0];
        v98 = v147[1];

        MEMORY[0x1E1283490](v97, v98);

        MEMORY[0x1E1283490](41, 0xE100000000000000);
        v99 = v145[0];
        v96(v147, v94, v95);
        v100 = v147[2];

        v89 = v142;

        __swift_destroy_boxed_opaque_existential_1(&v155);
        v150 = v89;
        v102 = *(v89 + 16);
        v101 = *(v89 + 24);
        if (v102 >= v101 >> 1)
        {
          sub_1DB1384B0((v101 > 1), v102 + 1, 1);
          v89 = v150;
        }

        v155 = v99;
        v65 = v139;
        *(&v156 + 1) = v139;
        v157 = v140;
        *&v156 = v100;
        *(v89 + 16) = v102 + 1;
        sub_1DB1355D0(&v155, v89 + 40 * v102 + 32);
        v91 += 8;
        v90 = v144 - 1;
      }

      while (v144 != 1);

      v3 = v136;
      v64 = v141;
      v66 = v140;
    }

    else
    {
    }

    sub_1DB2B9A70(v89, (v64 + 272));

    v103 = v3[10];
    if (v103)
    {
      v104 = v66;
      v105 = v3[9];
      v106 = v3[11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_1DB2BD5A0;
      *(v107 + 56) = v65;
      *(v107 + 64) = v104;
      *(v107 + 32) = 0x4552454857;
      *(v107 + 40) = 0xE500000000000000;
      *(v107 + 48) = MEMORY[0x1E69E7CC0];
      *(v107 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
      *(v107 + 104) = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
      *(v107 + 72) = v105;
      *(v107 + 80) = v103;
      *(v107 + 88) = v106;

      sub_1DB2B9A70(v107, &v155);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }

    else
    {
      v157 = 0;
      v155 = 0u;
      v156 = 0u;
    }

    *(v64 + 344) = v157;
    v108 = v156;
    *(v64 + 312) = v155;
    *(v64 + 328) = v108;
    sub_1DB1446A4(&v151, v64 + 352, &qword_1ECC27898, &unk_1DB2CCD00);
    v109 = MEMORY[0x1E69E7CC0];
    for (i = 32; i != 392; i += 40)
    {
      sub_1DB1446A4(v64 + i, &v155, &qword_1ECC27898, &unk_1DB2CCD00);
      v145[1] = v156;
      v145[0] = v155;
      v146 = v157;
      if (*(&v156 + 1))
      {
        sub_1DB1355D0(v145, v147);
        v111 = swift_isUniquelyReferenced_nonNull_native();
        v150 = v109;
        if ((v111 & 1) == 0)
        {
          v109 = sub_1DB1573FC(0, v109[2] + 1, 1, v109);
          v150 = v109;
        }

        v113 = v109[2];
        v112 = v109[3];
        if (v113 >= v112 >> 1)
        {
          v109 = sub_1DB1573FC((v112 > 1), v113 + 1, 1, v109);
          v150 = v109;
        }

        v114 = v148;
        v115 = v149;
        v116 = __swift_mutable_project_boxed_opaque_existential_1(v147, v148);
        v117 = *(*(v114 - 8) + 64);
        MEMORY[0x1EEE9AC00](v116);
        v119 = &v134 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v120 + 16))(v119);
        sub_1DB200A54(v113, v119, &v150, v114, v115);
        __swift_destroy_boxed_opaque_existential_1(v147);
        v64 = v141;
      }

      else
      {
        sub_1DB1445E0(v145, &qword_1ECC27898, &unk_1DB2CCD00);
      }
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1DB2B9A70(v109, &v155);

    v121 = *(&v156 + 1);
    v122 = v157;
    __swift_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
    (*(v122 + 24))(v121, v122);
    sub_1DB1445E0(&v151, &qword_1ECC27898, &unk_1DB2CCD00);
    v39 = &v155;
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  *&v155 = MEMORY[0x1E69E7CC0];
  v62 = v60 + 32;

  v63 = 0;
  v2 = 0;
  while (v63 < *(v60 + 16))
  {
    sub_1DB201088(v62, &v151);
    sub_1DB1FE4E0(&v151, v13, v147);
    ++v63;
    sub_1DB2010E4(&v151);
    sub_1DB1414E8(v147[0]);
    v62 += 72;
    if (v61 == v63)
    {

      sub_1DB2B9A70(v155, &v155);

      v151 = v155;
      v152 = v156;
      v153 = v157;
      goto LABEL_46;
    }
  }

LABEL_94:
  __break(1u);
  MEMORY[0x1E1284A10](v2);
  sub_1DB2010E4(&v151);

  __break(1u);
  return result;
}

uint64_t sub_1DB1FE4E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_1DB207554(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB2C3A50;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v6 + 56) = v7;
  v8 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  *(v6 + 64) = v8;
  *(v6 + 32) = 0x4C464E4F43204E4FLL;
  *(v6 + 40) = 0xEB00000000544349;
  v9 = MEMORY[0x1E69E7CC0];
  *(v6 + 48) = MEMORY[0x1E69E7CC0];
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  v30 = a1;
  sub_1DB1FE938(a1, 0, 0xE000000000000000, (v6 + 72));
  v31 = v8;
  v32 = v7;
  *(v6 + 136) = v7;
  *(v6 + 144) = v8;
  strcpy((v6 + 112), "DO UPDATE SET");
  *(v6 + 126) = -4864;
  *(v6 + 128) = v9;
  v10 = *(v5 + 16);
  v11 = &qword_1DB2BD000;
  if (v10)
  {
    v28 = v6;
    v29 = a3;
    v44 = v9;
    result = sub_1DB1384B0(0, v10, 0);
    v13 = 0;
    v14 = v5 + 32;
    v15 = v9;
    while (v13 < *(v5 + 16))
    {
      v16 = v5;
      sub_1DB164AE0(v14, &v39);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD5A0;
      sub_1DB164980(&v39, inited + 32);
      sub_1DB164980(&v43, inited + 72);
      v36[0] = 32;
      v36[1] = 0xE100000000000000;
      MEMORY[0x1E1283490](61, 0xE100000000000000);
      MEMORY[0x1E1283490](32, 0xE100000000000000);
      sub_1DB2B9A70(inited, v36);

      v18 = v37;
      v19 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v19 + 24))(&v34, v18, v19);
      v20 = v34;
      v33 = v35;
      __swift_destroy_boxed_opaque_existential_1(v36);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      sub_1DB164B3C(&v39);
      v44 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DB1384B0((v21 > 1), v22 + 1, 1);
        v15 = v44;
      }

      ++v13;
      v41 = v32;
      v42 = v31;
      v39 = v20;
      v40 = v33;
      *(v15 + 16) = v22 + 1;
      result = sub_1DB1355D0(&v39, v15 + 40 * v22 + 32);
      v14 += 80;
      v5 = v16;
      v11 = &qword_1DB2BD000;
      if (v10 == v13)
      {

        a3 = v29;
        v6 = v28;
        v9 = MEMORY[0x1E69E7CC0];
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1DB2B9A70(v15, (v6 + 152));

    v23 = v30[7];
    if (v23)
    {
      v24 = v9;
      v25 = v30[8];
      v26 = v30[6];
      v27 = swift_initStackObject();
      *(v27 + 16) = *(v11 + 90);
      *(v27 + 32) = 0x4552454857;
      *(v27 + 40) = 0xE500000000000000;
      *(v27 + 56) = v32;
      *(v27 + 64) = v31;
      *(v27 + 48) = v24;
      *(v27 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
      *(v27 + 104) = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
      *(v27 + 72) = v26;
      *(v27 + 80) = v23;
      *(v27 + 88) = v25;
      v39 = v6;

      result = sub_1DB1414E8(v27);
      v6 = v39;
    }

    *a3 = v6;
  }

  return result;
}

uint64_t sub_1DB1FE938@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a2;
  v17 = a3;

  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v7 + 24);
  v8(v15, v6, v7);
  v9 = v15[0];
  v10 = v15[1];

  MEMORY[0x1E1283490](v9, v10);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v11 = v16;
  v12 = v17;
  v8(v15, v6, v7);
  v13 = v15[2];

  *a4 = v11;
  a4[1] = v12;
  a4[2] = v13;
  return result;
}

uint64_t sub_1DB1FEA3C()
{
  v1 = *v0;
  v2 = 1869901417;
  v3 = 0x7365756C6176;
  v4 = 0x737265746C6966;
  if (v1 != 4)
  {
    v4 = 0x6D6F724679706F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696C666E6F436E6FLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_1DB1FEB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB202F6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB1FEB28(uint64_t a1)
{
  v2 = sub_1DB201138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1FEB64(uint64_t a1)
{
  v2 = sub_1DB201138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InsertClauses.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E28, &qword_1DB2C3AF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB201138();
  sub_1DB2BBA94();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 40);
  v20 = *v3;
  v21 = v11;
  v22 = v12;
  v23 = *(v3 + 24);
  v24 = v13;
  LOBYTE(v18) = 0;
  sub_1DB20118C();

  sub_1DB2BB8A4();
  if (v2)
  {

    return (*(v6 + 8))(v9, v5);
  }

  LOBYTE(v20) = *(v3 + 48);
  LOBYTE(v18) = 1;
  sub_1DB2011E0();
  sub_1DB2BB854();
  v20 = *(v3 + 56);
  LOBYTE(v18) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E30, &qword_1DB2C3B00);
  sub_1DB201234();
  sub_1DB2BB854();
  v20 = *(v3 + 64);
  LOBYTE(v18) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E38, &qword_1DB2C3B08);
  sub_1DB20130C();
  sub_1DB2BB8A4();
  v14 = *(v3 + 80);
  v15 = *(v3 + 88);
  v20 = *(v3 + 72);
  v21 = v14;
  v22 = v15;
  LOBYTE(v18) = 4;
  sub_1DB1757B0(v20, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  sub_1DB1688F0(&qword_1EE13F5B8, &qword_1ECC27E20, &qword_1DB2C3AF0);
  sub_1DB2BB854();
  sub_1DB1718E4(v20, v21);
  sub_1DB1446A4(v3 + 96, &v18, &qword_1ECC279E8, &unk_1DB2C3AE0);
  if (v19)
  {
    sub_1DB1355D0(&v18, &v20);
    sub_1DB164980(&v20, &v18);
    v17[7] = 5;
    sub_1DB201468();
    sub_1DB2BB8A4();
    sub_1DB2014BC(&v18);
    __swift_destroy_boxed_opaque_existential_1(&v20);
    return (*(v6 + 8))(v9, v5);
  }

  (*(v6 + 8))(v9, v5);
  return sub_1DB1445E0(&v18, &qword_1ECC279E8, &unk_1DB2C3AE0);
}

uint64_t InsertClauses.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E48, &qword_1DB2C3B18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB201138();
  sub_1DB2BBA84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DB1445E0(v24, &qword_1ECC279E8, &unk_1DB2C3AE0);
  }

  else
  {
    v13[0] = 0;
    sub_1DB201510();
    sub_1DB2BB7B4();
    v18[0] = v15;
    v18[1] = v16;
    v18[2] = v17;
    v13[0] = 1;
    sub_1DB201564();
    sub_1DB2BB764();
    v19 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E30, &qword_1DB2C3B00);
    v13[0] = 2;
    sub_1DB2015B8();
    sub_1DB2BB764();
    v20 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E38, &qword_1DB2C3B08);
    v13[0] = 3;
    sub_1DB201690();
    sub_1DB2BB7B4();
    v21 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v13[0] = 4;
    sub_1DB1688F0(&qword_1EE13EF58, &qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB2BB764();
    v22 = v15;
    v23 = v16;
    v12[7] = 5;
    sub_1DB201798();
    sub_1DB2BB764();
    (*(v6 + 8))(v9, v5);
    if (v14)
    {
      sub_1DB164980(v13, &v15);
      sub_1DB2014BC(v13);
    }

    else
    {
      sub_1DB1445E0(v13, &qword_1ECC27E50, &qword_1DB2C3B20);
      v15 = 0u;
      v16 = 0u;
      *&v17 = 0;
    }

    sub_1DB2017EC(&v15, v24);
    sub_1DB16D26C(v18, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DB1F7130(v18);
  }
}

uint64_t UpdateClauses.expression.getter@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v10 = v1[8];
  v9 = v1[9];
  v64 = v1[7];
  v65 = v9;
  v11 = v1[10];
  v12 = v1[11];
  v66 = v10;
  v67 = v11;
  v61 = v1[12];
  v62 = v12;
  v63 = *(v1 + 104);
  v68 = *(v1 + 105);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v87 = v71;
  v84 = 0x455441445055;
  v85 = 0xE600000000000000;
  v70 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  v88 = v70;
  v86 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
  }

  v13 = sub_1DB2B995C(34, 0xE100000000000000);
  v15 = v14;

  v16 = v71;
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DB2BD5A0;
    v18 = v70;
    *(v17 + 56) = v16;
    *(v17 + 64) = v18;
    *(v17 + 32) = sub_1DB2B995C(34, 0xE100000000000000);
    *(v17 + 40) = v19;
    v20 = MEMORY[0x1E69E7CC0];
    *(v17 + 48) = MEMORY[0x1E69E7CC0];
    *(v17 + 96) = v16;
    *(v17 + 104) = v18;
    *(v17 + 72) = v13;
    *(v17 + 80) = v15;
    v21 = v20;
    *(v17 + 88) = v20;
    sub_1DB2B9A70(v17, v89);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v18 = v70;
    v89[4] = v70;
    v89[0] = v13;
    v89[1] = v15;
    v89[3] = v71;
    v21 = MEMORY[0x1E69E7CC0];
    v89[2] = MEMORY[0x1E69E7CC0];
  }

  v89[9] = v18;
  v89[5] = 5522771;
  v89[6] = 0xE300000000000000;
  v89[8] = v16;
  v89[7] = v21;
  v22 = *(v8 + 16);
  if (v22)
  {
    *&v73[0] = v21;
    sub_1DB1384B0(0, v22, 0);
    v23 = v21;
    v24 = v8 + 32;
    v72 = xmmword_1DB2BD5A0;
    do
    {
      sub_1DB164AE0(v24, &v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      inited = swift_initStackObject();
      *(inited + 16) = v72;
      sub_1DB164980(&v76, inited + 32);
      sub_1DB164980(&v79, inited + 72);
      sub_1DB2B9A70(inited, v80);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      sub_1DB164B3C(&v76);
      *&v73[0] = v23;
      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1DB1384B0((v26 > 1), v27 + 1, 1);
      }

      v28 = v81;
      v29 = v82;
      v30 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
      v31 = *(*(v28 - 8) + 64);
      MEMORY[0x1EEE9AC00](v30);
      v33 = &v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v33);
      sub_1DB16412C(v27, v33, v73, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v80);
      v23 = *&v73[0];
      v24 += 80;
      --v22;
    }

    while (v22);
    v18 = v70;
    v16 = v71;
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v23 = v21;
  }

  sub_1DB2B9A70(v23, v90);

  v36 = v66;
  v35 = v67;
  if (v66)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1DB2BD5A0;
    *(v37 + 56) = v16;
    *(v37 + 64) = v18;
    *(v37 + 32) = 0x4552454857;
    *(v37 + 40) = 0xE500000000000000;
    *(v37 + 48) = v21;
    *(v37 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    *(v37 + 104) = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
    v38 = v65;
    *(v37 + 72) = v64;
    *(v37 + 80) = v36;
    *(v37 + 88) = v38;

    sub_1DB2B9A70(v37, &v76);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  v91 = v76;
  v92 = v77;
  v93 = v78;
  if (v35 && *(v35 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1DB2BD5A0;
    *(v39 + 56) = v16;
    *(v39 + 64) = v18;
    *(v39 + 32) = 0x594220524544524FLL;
    *(v39 + 40) = 0xE800000000000000;
    *(v39 + 48) = v21;
    sub_1DB2B9A70(v35, (v39 + 72));
    sub_1DB2B9A70(v39, v94);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    memset(v94, 0, sizeof(v94));
  }

  if (v68)
  {
    v97 = 0;
    v95 = 0u;
    v96 = 0u;
  }

  else
  {
    *&v76 = 0x2054494D494CLL;
    *(&v76 + 1) = 0xE600000000000000;
    v80[0] = v62;
    v40 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v40);

    v41 = v76;
    if (v63)
    {
      v97 = v18;
      v95 = v76;
      *(&v96 + 1) = v16;
      *&v96 = v21;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_1DB2BD5A0;
      *(v42 + 56) = v16;
      *(v42 + 64) = v18;
      *(v42 + 32) = v41;
      *(v42 + 48) = v21;
      *&v76 = 0x2054455346464FLL;
      *(&v76 + 1) = 0xE700000000000000;
      v80[0] = v61;
      v43 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v43);

      v44 = v76;
      *(v42 + 96) = v16;
      *(v42 + 104) = v18;
      *(v42 + 72) = v44;
      *(v42 + 88) = v21;
      sub_1DB2B9A70(v42, &v95);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
    }
  }

  v45 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 312; i += 40)
  {
    sub_1DB1446A4(&v83[i], &v76, &qword_1ECC27898, &unk_1DB2CCD00);
    v73[0] = v76;
    v73[1] = v77;
    v74 = v78;
    if (*(&v77 + 1))
    {
      sub_1DB1355D0(v73, v80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75[0] = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = sub_1DB1573FC(0, v45[2] + 1, 1, v45);
        v75[0] = v45;
      }

      v49 = v45[2];
      v48 = v45[3];
      if (v49 >= v48 >> 1)
      {
        v45 = sub_1DB1573FC((v48 > 1), v49 + 1, 1, v45);
        v75[0] = v45;
      }

      v50 = v81;
      v51 = v82;
      v52 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
      v53 = *(*(v50 - 8) + 64);
      MEMORY[0x1EEE9AC00](v52);
      v55 = &v60 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v55);
      sub_1DB200A54(v49, v55, v75, v50, v51);
      __swift_destroy_boxed_opaque_existential_1(v80);
    }

    else
    {
      sub_1DB1445E0(v73, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v45, &v76);

  v57 = *(&v77 + 1);
  v58 = v78;
  __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
  (*(v58 + 24))(v57, v58);
  return __swift_destroy_boxed_opaque_existential_1(&v76);
}

uint64_t sub_1DB1FFF1C()
{
  v1 = *v0;
  v2 = 0x657375616C436E69;
  v3 = 0x737265746C6966;
  v4 = 0x726564726FLL;
  if (v1 != 3)
  {
    v4 = 0x74696D696CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7365756C6176;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB1FFFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB20317C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB1FFFD4(uint64_t a1)
{
  v2 = sub_1DB20185C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB200010(uint64_t a1)
{
  v2 = sub_1DB20185C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UpdateClauses.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E58, &qword_1DB2C3B28);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v33 = *(v1 + 16);
  v34 = v7;
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 56);
  v31 = *(v1 + 48);
  v32 = v10;
  v13 = *(v1 + 72);
  v29 = *(v1 + 64);
  v30 = v12;
  v14 = *(v1 + 88);
  v27 = *(v1 + 80);
  v28 = v13;
  v15 = *(v1 + 96);
  v24 = v14;
  v25 = v15;
  v43 = *(v1 + 104);
  v26 = *(v1 + 105);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB20185C();

  sub_1DB2BBA94();
  v37 = v34;
  v38 = v8;
  v39 = v33;
  v40 = v9;
  v41 = v32;
  v42 = v11;
  v44 = 0;
  sub_1DB20118C();
  v17 = v35;
  sub_1DB2BB8A4();
  if (v17)
  {

    return (*(v36 + 8))(v6, v3);
  }

  else
  {
    v20 = v28;
    v19 = v29;
    v21 = v30;
    v22 = v36;

    v37 = v31;
    v44 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DB0, &qword_1DB2C3B10);
    sub_1DB201390();
    sub_1DB2BB8A4();
    v37 = v21;
    v38 = v19;
    v39 = v20;
    v44 = 2;
    sub_1DB1757B0(v21, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB1688F0(&qword_1EE13F5B8, &qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB2BB854();
    sub_1DB1718E4(v37, v38);
    v37 = v27;
    v44 = 3;
    sub_1DB2018B0();

    sub_1DB2BB854();

    v37 = v24;
    v38 = v25;
    LOBYTE(v39) = v43;
    BYTE1(v39) = v26;
    v44 = 4;
    sub_1DB201904();
    sub_1DB2BB854();
    return (*(v22 + 8))(v6, v3);
  }
}

uint64_t UpdateClauses.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E68, &qword_1DB2C3B30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB20185C();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33) = 0;
  sub_1DB201510();
  sub_1DB2BB7B4();
  v30 = v39;
  v29 = v40;
  v31 = v41;
  v11 = v42;
  v32 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DB0, &qword_1DB2C3B10);
  LOBYTE(v33) = 1;
  sub_1DB201714();
  sub_1DB2BB7B4();
  v27 = v11;
  v28 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  LOBYTE(v33) = 2;
  sub_1DB1688F0(&qword_1EE13EF58, &qword_1ECC27E20, &qword_1DB2C3AF0);
  sub_1DB2BB764();
  v25 = *(&v39 + 1);
  v26 = v39;
  v24 = v40;
  LOBYTE(v33) = 3;
  sub_1DB201958();
  sub_1DB2BB764();
  v12 = v39;
  v58 = 4;
  sub_1DB2019AC();
  sub_1DB2BB764();
  (*(v6 + 8))(v9, v5);
  v23 = v53;
  v22 = v54;
  v57 = v55;
  v13 = v56;
  v59 = v56;
  v33 = v30;
  v14 = *(&v30 + 1);
  *&v34 = v29;
  v15 = v31;
  *(&v34 + 1) = v31;
  *&v35 = v27;
  v16 = v32;
  *(&v35 + 1) = v32;
  v17 = v28;
  *&v36 = v28;
  *(&v36 + 1) = v26;
  *&v37 = v25;
  *(&v37 + 1) = v24;
  *v38 = v12;
  *&v38[8] = v53;
  *&v38[16] = v54;
  v38[24] = v55;
  v38[25] = v56;
  v18 = v34;
  *a2 = v30;
  a2[1] = v18;
  v19 = v36;
  a2[2] = v35;
  a2[3] = v19;
  v20 = *v38;
  a2[4] = v37;
  a2[5] = v20;
  *(a2 + 90) = *&v38[10];
  sub_1DB201A00(&v33, &v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v39 = v30;
  *(&v39 + 1) = v14;
  v40 = v29;
  v41 = v15;
  v42 = v27;
  v43 = v16;
  v44 = v17;
  v45 = v26;
  v46 = v25;
  v47 = v24;
  v48 = v12;
  v49 = v23;
  v50 = v22;
  v51 = v57;
  v52 = v13;
  return sub_1DB201A38(&v39);
}

uint64_t sub_1DB200A54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1DB1355D0(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s19OnDeviceStorageCore021ExpressionTypeCodableF0O2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 14;
  if (v2 >> 14 > 1)
  {
    if (v4 != 2)
    {
      if (v2 == 49152)
      {
        if (v3 != 49152)
        {
          return 0;
        }
      }

      else if (v2 == 49153)
      {
        if (v3 != 49153)
        {
          return 0;
        }
      }

      else if (v3 != 49154)
      {
        return 0;
      }

      return 1;
    }

    if ((v3 & 0xC000) == 0x8000)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v4)
  {
    if (v3 < 0x4000)
    {
      return (v3 ^ v2 ^ 1) & 1;
    }

    return 0;
  }

  if ((v3 & 0xC000) != 0x4000)
  {
    return 0;
  }

LABEL_9:
  v6 = v3 ^ v2;
  v7 = ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
  if (v6)
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

unint64_t sub_1DB200BAC()
{
  result = qword_1EE140278;
  if (!qword_1EE140278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140278);
  }

  return result;
}

unint64_t sub_1DB200C00()
{
  result = qword_1ECC27DC0;
  if (!qword_1ECC27DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27DC0);
  }

  return result;
}

unint64_t sub_1DB200C54()
{
  result = qword_1ECC27DC8;
  if (!qword_1ECC27DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27DC8);
  }

  return result;
}

unint64_t sub_1DB200CA8()
{
  result = qword_1EE140250;
  if (!qword_1EE140250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140250);
  }

  return result;
}

unint64_t sub_1DB200CFC()
{
  result = qword_1ECC27DD0;
  if (!qword_1ECC27DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27DD0);
  }

  return result;
}

unint64_t sub_1DB200D50()
{
  result = qword_1EE140290;
  if (!qword_1EE140290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140290);
  }

  return result;
}

unint64_t sub_1DB200DA4()
{
  result = qword_1EE13F5E8;
  if (!qword_1EE13F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F5E8);
  }

  return result;
}

unint64_t sub_1DB200E10()
{
  result = qword_1EE13F6B8;
  if (!qword_1EE13F6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27E10, &qword_1DB2CEFB0);
    sub_1DB200E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F6B8);
  }

  return result;
}

unint64_t sub_1DB200E94()
{
  result = qword_1EE1401C8;
  if (!qword_1EE1401C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1401C8);
  }

  return result;
}

unint64_t sub_1DB200EE8()
{
  result = qword_1EE13F2B0;
  if (!qword_1EE13F2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27E10, &qword_1DB2CEFB0);
    sub_1DB200F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F2B0);
  }

  return result;
}

unint64_t sub_1DB200F6C()
{
  result = qword_1EE13F5C8;
  if (!qword_1EE13F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F5C8);
  }

  return result;
}

unint64_t sub_1DB201138()
{
  result = qword_1EE13FFC0;
  if (!qword_1EE13FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFC0);
  }

  return result;
}

unint64_t sub_1DB20118C()
{
  result = qword_1EE13F4E8;
  if (!qword_1EE13F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4E8);
  }

  return result;
}

unint64_t sub_1DB2011E0()
{
  result = qword_1EE13F5D0;
  if (!qword_1EE13F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F5D0);
  }

  return result;
}

unint64_t sub_1DB201234()
{
  result = qword_1EE13F2B8;
  if (!qword_1EE13F2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27E30, &qword_1DB2C3B00);
    sub_1DB2012B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F2B8);
  }

  return result;
}

unint64_t sub_1DB2012B8()
{
  result = qword_1EE13F5D8;
  if (!qword_1EE13F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F5D8);
  }

  return result;
}

unint64_t sub_1DB20130C()
{
  result = qword_1EE13F2A0;
  if (!qword_1EE13F2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27E38, &qword_1DB2C3B08);
    sub_1DB201390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F2A0);
  }

  return result;
}

unint64_t sub_1DB201390()
{
  result = qword_1EE13F2A8;
  if (!qword_1EE13F2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC26DB0, &qword_1DB2C3B10);
    sub_1DB201414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F2A8);
  }

  return result;
}

unint64_t sub_1DB201414()
{
  result = qword_1EE13F2E8;
  if (!qword_1EE13F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F2E8);
  }

  return result;
}

unint64_t sub_1DB201468()
{
  result = qword_1ECC27E40;
  if (!qword_1ECC27E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27E40);
  }

  return result;
}

unint64_t sub_1DB201510()
{
  result = qword_1EE13EC38;
  if (!qword_1EE13EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC38);
  }

  return result;
}

unint64_t sub_1DB201564()
{
  result = qword_1EE13F1B0;
  if (!qword_1EE13F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F1B0);
  }

  return result;
}

unint64_t sub_1DB2015B8()
{
  result = qword_1EE13E680;
  if (!qword_1EE13E680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27E30, &qword_1DB2C3B00);
    sub_1DB20163C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E680);
  }

  return result;
}

unint64_t sub_1DB20163C()
{
  result = qword_1EE13F1B8;
  if (!qword_1EE13F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F1B8);
  }

  return result;
}

unint64_t sub_1DB201690()
{
  result = qword_1EE13E610;
  if (!qword_1EE13E610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27E38, &qword_1DB2C3B08);
    sub_1DB201714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E610);
  }

  return result;
}

unint64_t sub_1DB201714()
{
  result = qword_1EE13E620;
  if (!qword_1EE13E620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC26DB0, &qword_1DB2C3B10);
    sub_1DB165BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E620);
  }

  return result;
}

unint64_t sub_1DB201798()
{
  result = qword_1EE13EC70;
  if (!qword_1EE13EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC70);
  }

  return result;
}

uint64_t sub_1DB2017EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC279E8, &unk_1DB2C3AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB20185C()
{
  result = qword_1ECC27E60;
  if (!qword_1ECC27E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27E60);
  }

  return result;
}

unint64_t sub_1DB2018B0()
{
  result = qword_1EE13EC00;
  if (!qword_1EE13EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC00);
  }

  return result;
}

unint64_t sub_1DB201904()
{
  result = qword_1EE13EC10;
  if (!qword_1EE13EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC10);
  }

  return result;
}

unint64_t sub_1DB201958()
{
  result = qword_1EE13EBF8;
  if (!qword_1EE13EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EBF8);
  }

  return result;
}

unint64_t sub_1DB2019AC()
{
  result = qword_1EE13EC08;
  if (!qword_1EE13EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC08);
  }

  return result;
}

unint64_t sub_1DB201A94()
{
  result = qword_1EE13FFA0;
  if (!qword_1EE13FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFA0);
  }

  return result;
}

unint64_t sub_1DB201AE8()
{
  result = qword_1EE13FFA8;
  if (!qword_1EE13FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFA8);
  }

  return result;
}

uint64_t sub_1DB201B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DB201BA4()
{
  result = qword_1ECC27E70;
  if (!qword_1ECC27E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27E70);
  }

  return result;
}

unint64_t sub_1DB201BF8()
{
  result = qword_1ECC27E78;
  if (!qword_1ECC27E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27E78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExpressionTypeCodableType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FD)
  {
    goto LABEL_17;
  }

  if (a2 + 63491 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 63491 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 63491;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 63491;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 63491;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 14) | (4 * ((*a1 >> 5) & 0x1F0 | (*a1 >> 4)))) ^ 0x7FF;
  if (v6 >= 0x7FC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for ExpressionTypeCodableType(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63491 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 63491 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7FD)
  {
    v4 = 0;
  }

  if (a2 > 0x7FC)
  {
    v5 = ((a2 - 2045) >> 16) + 1;
    *result = a2 - 2045;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 2) & 0x1FF) - (a2 << 9);
    *result = (32 * v6) & 0xFE00 | (16 * (v6 & 0xF));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DB201DBC(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 14;
  v3 = (v1 & 0xF | (16 * ((v1 >> 8) & 1))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_WORD *sub_1DB201DF0(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x10F | (a2 << 14);
  }

  else
  {
    *result = (16 * (a2 - 3)) & 0x100 | (a2 - 3) & 0xF | 0xC000;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore10ExpressionVySbSgGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore9QueryType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1DB201E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1DB201EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1DB201F80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
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

uint64_t sub_1DB201FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DB2020CC(uint64_t a1)
{
  sub_1DB20242C();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1DB202144(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 24;
  if (*(v3 + 64) > 0x18uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DB20225C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1DB20242C()
{
  if (!qword_1EE1400B0)
  {
    v0 = type metadata accessor for Expression();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1400B0);
    }
  }
}

unint64_t sub_1DB202484()
{
  result = qword_1ECC27F00;
  if (!qword_1ECC27F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27F00);
  }

  return result;
}

unint64_t sub_1DB2024DC()
{
  result = qword_1ECC27F08;
  if (!qword_1ECC27F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27F08);
  }

  return result;
}

unint64_t sub_1DB202534()
{
  result = qword_1ECC27F10;
  if (!qword_1ECC27F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27F10);
  }

  return result;
}

unint64_t sub_1DB20258C()
{
  result = qword_1ECC27F18;
  if (!qword_1ECC27F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27F18);
  }

  return result;
}

unint64_t sub_1DB20261C()
{
  result = qword_1ECC27F20;
  if (!qword_1ECC27F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27F20);
  }

  return result;
}

unint64_t sub_1DB202674()
{
  result = qword_1ECC27F28;
  if (!qword_1ECC27F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27F28);
  }

  return result;
}

unint64_t sub_1DB2026CC()
{
  result = qword_1ECC27F30;
  if (!qword_1ECC27F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27F30);
  }

  return result;
}

unint64_t sub_1DB202724()
{
  result = qword_1ECC27F38;
  if (!qword_1ECC27F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27F38);
  }

  return result;
}

unint64_t sub_1DB20277C()
{
  result = qword_1EE13FFB0;
  if (!qword_1EE13FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFB0);
  }

  return result;
}

unint64_t sub_1DB2027D4()
{
  result = qword_1EE13FFB8;
  if (!qword_1EE13FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFB8);
  }

  return result;
}

unint64_t sub_1DB20289C()
{
  result = qword_1EE140298;
  if (!qword_1EE140298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140298);
  }

  return result;
}

unint64_t sub_1DB2028F4()
{
  result = qword_1EE1402A0;
  if (!qword_1EE1402A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1402A0);
  }

  return result;
}

unint64_t sub_1DB20294C()
{
  result = qword_1EE140280;
  if (!qword_1EE140280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140280);
  }

  return result;
}

unint64_t sub_1DB2029A4()
{
  result = qword_1EE140288;
  if (!qword_1EE140288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140288);
  }

  return result;
}

unint64_t sub_1DB2029FC()
{
  result = qword_1EE140230;
  if (!qword_1EE140230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140230);
  }

  return result;
}

unint64_t sub_1DB202A54()
{
  result = qword_1EE140238;
  if (!qword_1EE140238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140238);
  }

  return result;
}

unint64_t sub_1DB202AAC()
{
  result = qword_1EE140240;
  if (!qword_1EE140240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140240);
  }

  return result;
}

unint64_t sub_1DB202B04()
{
  result = qword_1EE140248;
  if (!qword_1EE140248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140248);
  }

  return result;
}

unint64_t sub_1DB202B5C()
{
  result = qword_1EE140220;
  if (!qword_1EE140220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140220);
  }

  return result;
}

unint64_t sub_1DB202BB4()
{
  result = qword_1EE140228;
  if (!qword_1EE140228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140228);
  }

  return result;
}

unint64_t sub_1DB202C0C()
{
  result = qword_1EE140258;
  if (!qword_1EE140258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140258);
  }

  return result;
}

unint64_t sub_1DB202C64()
{
  result = qword_1EE140260;
  if (!qword_1EE140260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140260);
  }

  return result;
}

unint64_t sub_1DB202CBC()
{
  result = qword_1EE140268;
  if (!qword_1EE140268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140268);
  }

  return result;
}

unint64_t sub_1DB202D14()
{
  result = qword_1EE140270;
  if (!qword_1EE140270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140270);
  }

  return result;
}

uint64_t sub_1DB202D68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7270784564696F76 && a2 == 0xEE006E6F69737365;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463656C6573 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747265736E69 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

uint64_t sub_1DB202F6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1869901417 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C666E6F436E6FLL && a2 == 0xEA00000000007463 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB2D47E0 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F724679706F63 && a2 == 0xED00007972657551)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

uint64_t sub_1DB20317C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657375616C436E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1DB203368()
{
  result = qword_1ECC27F48;
  if (!qword_1ECC27F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27F48);
  }

  return result;
}

unint64_t sub_1DB2033BC()
{
  result = qword_1ECC27F50;
  if (!qword_1ECC27F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27F50);
  }

  return result;
}

unint64_t sub_1DB203410()
{
  result = qword_1EE13F700;
  if (!qword_1EE13F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F700);
  }

  return result;
}

uint64_t sub_1DB20359C(void (*a1)(uint64_t *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DB138550(0, v5, 0);
    v6 = v18;
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v16[0] = *(i - 1);
      v16[1] = v10;

      a1(&v17, v16, &v15);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v17;
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1DB138550((v12 > 1), v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_1DB2036CC(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1DB1386A0(0, v5, 0);
    v6 = v17;
    for (i = (a3 + 32); ; ++i)
    {
      v15 = *i;

      a1(&v16, &v15, &v14);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v16;
      v17 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1DB1386A0((v11 > 1), v12 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v10;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_1DB2037FC(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1DB138470(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1DB138470((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t QueryType.insert(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281B8, &qword_1DB2C4F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  *(inited + 32) = a1;
  v11 = inited + 32;

  if (!_s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0())
  {
    v46 = v5;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281C0, &qword_1DB2C4F28);
    v41 = sub_1DB1688F0(&qword_1EE13F2C0, &qword_1ECC281C0, &qword_1DB2C4F28);
    *&v38 = a1;

    goto LABEL_9;
  }

  v34 = a3;
  v12 = *(a1 + 16);
  if (v12)
  {
    v46 = v5;
    v30 = v4;
    v13 = sub_1DB1383EC(v12, 0);
    v35 = sub_1DB14A440(&v38, v13 + 4, v12, a1);
    v32 = v40;
    v33 = v39;
    v31 = v41;
    swift_bridgeObjectRetain_n();
    sub_1DB149FCC();
    if (v35 != v12)
    {
      __break(1u);
      goto LABEL_14;
    }

    v4 = v30;
    v6 = v46;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  *&v38 = v13;
  sub_1DB148C3C(&v38);
  v46 = v6;
  if (v6)
  {
LABEL_14:
    MEMORY[0x1E1284A10](v46);

    __break(1u);
    return result;
  }

  v14 = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  v41 = sub_1DB1688F0(&qword_1ECC281C8, &qword_1ECC26CE8, &qword_1DB2BCC60);
  *&v38 = v14;
  a3 = v34;
LABEL_9:
  v15 = sub_1DB1355D0(&v38, v45);
  v35 = &v30;
  MEMORY[0x1EEE9AC00](v15);
  v16 = v36;
  v29[2] = v36;
  v29[3] = a3;
  v29[4] = v45;
  v29[5] = v4;
  v17 = v46;
  v18 = sub_1DB2036CC(sub_1DB20744C, v29, inited);
  if (v17)
  {
    swift_setDeallocating();
    sub_1DB1445E0(v11, &qword_1ECC27CC0, &unk_1DB2C3850);
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    v46 = v18;
    swift_setDeallocating();
    sub_1DB1445E0(v11, &qword_1ECC27CC0, &unk_1DB2C3850);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v20 = *(a3 + 16);
    v20(v37, v16, a3);
    v21 = v37[3];
    v32 = v37[4];
    v33 = v37[2];
    v34 = a3;
    v22 = v37[5];
    v30 = v37[7];
    v31 = v37[6];

    sub_1DB17181C(v37);
    v20(&v38, v16, v34);
    v23 = v42;
    v24 = v43;
    v25 = v44;
    sub_1DB1757B0(v42, v43);
    sub_1DB17181C(&v38);
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0;
    *(a4 + 96) = 0u;
    v26 = v32;
    *a4 = v33;
    *(a4 + 8) = v21;
    *(a4 + 16) = v26;
    *(a4 + 24) = v22;
    v27 = v30;
    *(a4 + 32) = v31;
    *(a4 + 40) = v27;
    *(a4 + 48) = 5;
    v28 = v46;
    *(a4 + 56) = 0;
    *(a4 + 64) = v28;
    *(a4 + 72) = v23;
    *(a4 + 80) = v24;
    *(a4 + 88) = v25;
    result = sub_1DB1445E0(a4 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0;
    *(a4 + 136) = 1;
  }

  return result;
}

{
  (*(a3 + 16))(v15, a2, a3);
  v7 = v15[2];
  v6 = v15[3];
  v9 = v15[4];
  v8 = v15[5];
  v11 = v15[6];
  v10 = v15[7];

  sub_1DB17181C(v15);
  sub_1DB164980(a1, v14);
  sub_1DB164980(v14, v13);
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 96) = 0u;
  *a4 = v7;
  *(a4 + 8) = v6;
  *(a4 + 16) = v9;
  *(a4 + 24) = v8;
  *(a4 + 32) = v11;
  *(a4 + 40) = v10;
  sub_1DB1445E0(a4 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  sub_1DB164980(v13, a4 + 96);
  *(a4 + 48) = 5;
  *(a4 + 56) = 0;
  __swift_destroy_boxed_opaque_existential_1(v13);
  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *(a4 + 64) = MEMORY[0x1E69E7CC0];
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 136) = 1;
  return result;
}

uint64_t QueryType.insert(or:_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v39 = a3;
  v36 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281B8, &qword_1DB2C4F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  *(inited + 32) = a2;
  v12 = inited + 32;

  if (!_s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0())
  {
    v49 = v6;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281C0, &qword_1DB2C4F28);
    v44 = sub_1DB1688F0(&qword_1EE13F2C0, &qword_1ECC281C0, &qword_1DB2C4F28);
    *&v41 = a2;

    goto LABEL_9;
  }

  v37 = a4;
  v13 = *(a2 + 16);
  if (v13)
  {
    v49 = v6;
    v32 = v5;
    v14 = sub_1DB1383EC(v13, 0);
    v38 = sub_1DB14A440(&v41, v14 + 4, v13, a2);
    v34 = v43;
    v35 = v42;
    v33 = v44;
    swift_bridgeObjectRetain_n();
    sub_1DB149FCC();
    if (v38 != v13)
    {
      __break(1u);
      goto LABEL_14;
    }

    v5 = v32;
    v7 = v49;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  *&v41 = v14;
  sub_1DB148C3C(&v41);
  v49 = v7;
  if (v7)
  {
LABEL_14:
    MEMORY[0x1E1284A10](v49);

    __break(1u);
    return result;
  }

  v15 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  v44 = sub_1DB1688F0(&qword_1ECC281C8, &qword_1ECC26CE8, &qword_1DB2BCC60);
  *&v41 = v15;
  a4 = v37;
LABEL_9:
  v16 = sub_1DB1355D0(&v41, v48);
  v38 = &v31;
  MEMORY[0x1EEE9AC00](v16);
  v17 = v39;
  v30[2] = v39;
  v30[3] = a4;
  v30[4] = v48;
  v30[5] = v5;
  v18 = v49;
  v19 = sub_1DB2036CC(sub_1DB20753C, v30, inited);
  if (v18)
  {
    swift_setDeallocating();
    sub_1DB1445E0(v12, &qword_1ECC27CC0, &unk_1DB2C3850);
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    v49 = v19;
    swift_setDeallocating();
    sub_1DB1445E0(v12, &qword_1ECC27CC0, &unk_1DB2C3850);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v21 = *(a4 + 16);
    v21(v40, v17, a4);
    v22 = v40[3];
    v34 = v40[4];
    v35 = v40[2];
    v37 = a4;
    v23 = v40[5];
    v32 = v40[7];
    v33 = v40[6];

    sub_1DB17181C(v40);
    v21(&v41, v17, v37);
    v24 = v45;
    v25 = v46;
    v26 = v47;
    sub_1DB1757B0(v45, v46);
    sub_1DB17181C(&v41);
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 96) = 0u;
    v27 = v34;
    *a5 = v35;
    *(a5 + 8) = v22;
    *(a5 + 16) = v27;
    *(a5 + 24) = v23;
    v28 = v32;
    *(a5 + 32) = v33;
    *(a5 + 40) = v28;
    *(a5 + 48) = v36;
    v29 = v49;
    *(a5 + 56) = 0;
    *(a5 + 64) = v29;
    *(a5 + 72) = v24;
    *(a5 + 80) = v25;
    *(a5 + 88) = v26;
    result = sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 136) = 1;
  }

  return result;
}

uint64_t QueryType.insertMany(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v8 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

  v33 = a2;
  v11 = _s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0();
  v8 = *(a1 + 32);
  if (v11)
  {
    v45 = v5;
    v12 = *(v8 + 16);
    if (v12)
    {
      v6 = sub_1DB1383EC(*(v8 + 16), 0);
      v13 = sub_1DB14A440(v41, v6 + 32, v12, v8);
      v31 = v41[1];
      v32 = v13;
      v29 = v41[3];
      v30 = v41[2];
      v28[7] = v41[4];
      swift_bridgeObjectRetain_n();
      sub_1DB149FCC();
      if (v32 != v12)
      {
        __break(1u);
LABEL_6:
        v45 = v6;
        v32 = MEMORY[0x1E69E7CC0];
        goto LABEL_13;
      }
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v41[0] = v6;
    v14 = v45;
    sub_1DB148C3C(v41);
    v6 = v14;
    if (v14)
    {
      MEMORY[0x1E1284A10](v14);

      __break(1u);
      return result;
    }

    v15 = v41[0];
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    v37 = sub_1DB1688F0(&qword_1ECC281C8, &qword_1ECC26CE8, &qword_1DB2BCC60);
    *&v34 = v15;
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281C0, &qword_1DB2C4F28);
    v37 = sub_1DB1688F0(&qword_1EE13F2C0, &qword_1ECC281C0, &qword_1DB2C4F28);
    *&v34 = v8;
  }

  v16 = sub_1DB1355D0(&v34, v41);
  MEMORY[0x1EEE9AC00](v16);
  v8 = v33;
  v28[2] = v33;
  v28[3] = a3;
  v28[4] = v41;
  v28[5] = v4;
  v17 = sub_1DB2036CC(sub_1DB20753C, v28, a1);
  result = __swift_destroy_boxed_opaque_existential_1(v41);
  if (v6)
  {
    return result;
  }

  v45 = 0;
  v32 = v17;
LABEL_13:
  v19 = *(a3 + 16);
  v19(&v34, v8, a3);
  v20 = v36;
  v33 = v35;
  v29 = v38;
  v21 = v40;
  v30 = v39;
  v31 = v37;

  sub_1DB17181C(&v34);
  v19(v41, v8, a3);
  v22 = v42;
  v23 = v43;
  v24 = v44;
  sub_1DB1757B0(v42, v43);
  sub_1DB17181C(v41);
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 96) = 0u;
  *a4 = v33;
  *(a4 + 8) = v20;
  v26 = v29;
  v25 = v30;
  *(a4 + 16) = v31;
  *(a4 + 24) = v26;
  *(a4 + 32) = v25;
  *(a4 + 40) = v21;
  *(a4 + 48) = 5;
  v27 = v32;
  *(a4 + 56) = 0;
  *(a4 + 64) = v27;
  *(a4 + 72) = v22;
  *(a4 + 80) = v23;
  *(a4 + 88) = v24;
  result = sub_1DB1445E0(a4 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 136) = 1;
  return result;
}

uint64_t QueryType.insertMany(or:_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v9 = a3;
  v35 = *a1;
  if (!*(a2 + 16))
  {
    goto LABEL_6;
  }

  v34 = a3;
  v12 = _s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0();
  v9 = *(a2 + 32);
  if (v12)
  {
    v33 = v5;
    v47 = v6;
    v13 = *(v9 + 16);
    if (v13)
    {
      v7 = sub_1DB1383EC(*(v9 + 16), 0);
      v14 = sub_1DB14A440(v43, v7 + 32, v13, v9);
      v31 = v43[2];
      v32 = v14;
      v29[6] = v43[4];
      v30 = v43[3];
      swift_bridgeObjectRetain_n();
      sub_1DB149FCC();
      if (v32 != v13)
      {
        __break(1u);
LABEL_6:
        v47 = v7;
        v33 = MEMORY[0x1E69E7CC0];
        goto LABEL_13;
      }
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
    }

    v43[0] = v7;
    v15 = v47;
    sub_1DB148C3C(v43);
    v7 = v15;
    if (v15)
    {
      MEMORY[0x1E1284A10](v15);

      __break(1u);
      return result;
    }

    v16 = v43[0];
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    v39 = sub_1DB1688F0(&qword_1ECC281C8, &qword_1ECC26CE8, &qword_1DB2BCC60);
    *&v36 = v16;
    v5 = v33;
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281C0, &qword_1DB2C4F28);
    v39 = sub_1DB1688F0(&qword_1EE13F2C0, &qword_1ECC281C0, &qword_1DB2C4F28);
    *&v36 = v9;
  }

  v17 = sub_1DB1355D0(&v36, v43);
  MEMORY[0x1EEE9AC00](v17);
  v9 = v34;
  v29[2] = v34;
  v29[3] = a4;
  v29[4] = v43;
  v29[5] = v5;
  v18 = sub_1DB2036CC(sub_1DB20753C, v29, a2);
  result = __swift_destroy_boxed_opaque_existential_1(v43);
  if (v7)
  {
    return result;
  }

  v47 = 0;
  v33 = v18;
LABEL_13:
  v20 = *(a4 + 16);
  v20(&v36, v9, a4);
  v21 = v38;
  v34 = v37;
  v30 = v40;
  v22 = v42;
  v31 = v41;
  v32 = v39;

  sub_1DB17181C(&v36);
  v20(v43, v9, a4);
  v23 = v44;
  v24 = v45;
  v25 = v46;
  sub_1DB1757B0(v44, v45);
  sub_1DB17181C(v43);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v34;
  *(a5 + 8) = v21;
  v27 = v30;
  v26 = v31;
  *(a5 + 16) = v32;
  *(a5 + 24) = v27;
  *(a5 + 32) = v26;
  *(a5 + 40) = v22;
  *(a5 + 48) = v35;
  v28 = v33;
  *(a5 + 56) = 0;
  *(a5 + 64) = v28;
  *(a5 + 72) = v23;
  *(a5 + 80) = v24;
  *(a5 + 88) = v25;
  result = sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

uint64_t QueryType.upsert(_:onConflictOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281B8, &qword_1DB2C4F20);
  inited = swift_initStackObject();
  v41 = xmmword_1DB2BCC40;
  *(inited + 16) = xmmword_1DB2BCC40;
  *(inited + 32) = a1;
  v38 = inited + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v12 = swift_allocObject();
  v12[1] = v41;
  sub_1DB164980(a2, (v12 + 2));
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;

  v39 = a3;
  v40 = v5;
  if (!_s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0())
  {
    goto LABEL_5;
  }

  *&v41 = a4;
  a4 = *(a1 + 16);
  if (a4)
  {
    v13 = sub_1DB1383EC(*(a1 + 16), 0);
    v14 = sub_1DB14A440(&v43, v13 + 4, a4, a1);
    v36 = v44;
    v37 = v14;
    v34 = v46;
    v35 = v45;
    swift_bridgeObjectRetain_n();
    sub_1DB149FCC();
    if (v37 != a4)
    {
      __break(1u);
LABEL_5:
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281C0, &qword_1DB2C4F28);
      v46 = sub_1DB1688F0(&qword_1EE13F2C0, &qword_1ECC281C0, &qword_1DB2C4F28);
      *&v43 = a1;

      goto LABEL_9;
    }
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  *&v43 = v13;
  v15 = v51;
  sub_1DB148C3C(&v43);
  a4 = v41;
  v51 = v15;
  if (v15)
  {
    MEMORY[0x1E1284A10](v51);

    __break(1u);
    return result;
  }

  v16 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  v46 = sub_1DB1688F0(&qword_1ECC281C8, &qword_1ECC26CE8, &qword_1DB2BCC60);
  *&v43 = v16;
LABEL_9:
  v17 = sub_1DB1355D0(&v43, v50);
  MEMORY[0x1EEE9AC00](v17);
  v18 = v39;
  v30[2] = v39;
  v30[3] = a4;
  v30[4] = v50;
  v30[5] = v40;
  v19 = v51;
  v20 = sub_1DB2036CC(sub_1DB20753C, v30, inited);
  if (v19)
  {

    swift_setDeallocating();
    sub_1DB1445E0(v38, &qword_1ECC27CC0, &unk_1DB2C3850);
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    v37 = v20;
    swift_setDeallocating();
    sub_1DB1445E0(v38, &qword_1ECC27CC0, &unk_1DB2C3850);
    __swift_destroy_boxed_opaque_existential_1(v50);
    v51 = &v31;
    v22 = *(a4 + 16);
    v22(v42, v18, a4);
    v38 = v42[2];
    *&v41 = a4;
    v32 = v42[5];
    v33 = v42[3];
    v35 = v42[6];
    v36 = v42[4];
    v34 = v42[7];

    sub_1DB17181C(v42);
    v22(&v43, v18, v41);
    v23 = v47;
    v24 = v48;
    v25 = v49;
    sub_1DB1757B0(v47, v48);
    sub_1DB17181C(&v43);
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 96) = 0u;
    v26 = v33;
    *a5 = v38;
    *(a5 + 8) = v26;
    v27 = v32;
    *(a5 + 16) = v36;
    *(a5 + 24) = v27;
    v28 = v34;
    *(a5 + 32) = v35;
    *(a5 + 40) = v28;
    *(a5 + 48) = 5;
    v29 = v37;
    *(a5 + 56) = v12;
    *(a5 + 64) = v29;
    *(a5 + 72) = v23;
    *(a5 + 80) = v24;
    *(a5 + 88) = v25;
    result = sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 136) = 1;
  }

  return result;
}

uint64_t QueryType.upsert(_:onConflictOf:set:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281B8, &qword_1DB2C4F20);
  inited = swift_initStackObject();
  v42 = xmmword_1DB2BCC40;
  *(inited + 16) = xmmword_1DB2BCC40;
  *(inited + 32) = a1;
  v38 = inited + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v13 = swift_allocObject();
  *(v13 + 16) = v42;
  sub_1DB164980(a2, v13 + 32);
  *(v13 + 72) = a3;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = 0;

  v39 = a4;
  v40 = v6;
  if (!_s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0())
  {
    goto LABEL_5;
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = sub_1DB1383EC(*(a1 + 16), 0);
    *&v42 = sub_1DB14A440(&v44, v15 + 4, v14, a1);
    v36 = v46;
    v37 = v45;
    v35 = v47;
    swift_bridgeObjectRetain_n();
    sub_1DB149FCC();
    if (v42 != v14)
    {
      __break(1u);
LABEL_5:
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281C0, &qword_1DB2C4F28);
      v47 = sub_1DB1688F0(&qword_1EE13F2C0, &qword_1ECC281C0, &qword_1DB2C4F28);
      *&v44 = a1;

      v16 = v41;
      goto LABEL_9;
    }
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  *&v44 = v15;
  v17 = v52;
  sub_1DB148C3C(&v44);
  v16 = v41;
  v52 = v17;
  if (v17)
  {
    MEMORY[0x1E1284A10](v52);

    __break(1u);
    return result;
  }

  v18 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  v47 = sub_1DB1688F0(&qword_1ECC281C8, &qword_1ECC26CE8, &qword_1DB2BCC60);
  *&v44 = v18;
LABEL_9:
  v19 = sub_1DB1355D0(&v44, v51);
  MEMORY[0x1EEE9AC00](v19);
  v20 = v39;
  v31[2] = v39;
  v31[3] = v16;
  v31[4] = v51;
  v31[5] = v40;
  v21 = v52;
  v22 = sub_1DB2036CC(sub_1DB20753C, v31, inited);
  if (v21)
  {

    swift_setDeallocating();
    sub_1DB1445E0(v38, &qword_1ECC27CC0, &unk_1DB2C3850);
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    *&v42 = v22;
    swift_setDeallocating();
    sub_1DB1445E0(v38, &qword_1ECC27CC0, &unk_1DB2C3850);
    __swift_destroy_boxed_opaque_existential_1(v51);
    v52 = &v32;
    v33 = *(v16 + 16);
    v33(v43, v20, v16);
    v41 = v43[2];
    v34 = v43[5];
    v35 = v43[3];
    v37 = v43[6];
    v38 = v43[4];
    v36 = v43[7];

    sub_1DB17181C(v43);
    v33(&v44, v20, v16);
    v24 = v48;
    v25 = v49;
    v26 = v50;
    sub_1DB1757B0(v48, v49);
    sub_1DB17181C(&v44);
    *(a6 + 112) = 0u;
    *(a6 + 128) = 0;
    *(a6 + 96) = 0u;
    v27 = v35;
    *a6 = v41;
    *(a6 + 8) = v27;
    v28 = v34;
    *(a6 + 16) = v38;
    *(a6 + 24) = v28;
    v29 = v36;
    *(a6 + 32) = v37;
    *(a6 + 40) = v29;
    *(a6 + 48) = 5;
    v30 = v42;
    *(a6 + 56) = v13;
    *(a6 + 64) = v30;
    *(a6 + 72) = v24;
    *(a6 + 80) = v25;
    *(a6 + 88) = v26;
    result = sub_1DB1445E0(a6 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 128) = 0;
    *(a6 + 136) = 1;
  }

  return result;
}

uint64_t QueryType.upsert(_:onConflict:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v51 = a4;
  v42 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281B8, &qword_1DB2C4F20);
  inited = swift_initStackObject();
  v41 = xmmword_1DB2BCC40;
  *(inited + 16) = xmmword_1DB2BCC40;
  *(inited + 32) = a1;
  v39 = (inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v11 = swift_allocObject();
  *(v11 + 16) = v41;
  sub_1DB201088(a2, v11 + 32);
  *&v44 = v11;

  sub_1DB141760(v12);
  v13 = v11;
  if (!_s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0())
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281C0, &qword_1DB2C4F28);
    v46 = sub_1DB1688F0(&qword_1EE13F2C0, &qword_1ECC281C0, &qword_1DB2C4F28);
    *&v44 = a1;

    goto LABEL_9;
  }

  *&v41 = v11;
  v14 = *(a1 + 16);
  if (v14)
  {
    v35 = v5;
    v15 = sub_1DB1383EC(v14, 0);
    v16 = sub_1DB14A440(&v44, v15 + 4, v14, a1);
    v6 = v44;
    v37 = v45;
    v38 = v16;
    v36 = v46;
    swift_bridgeObjectRetain_n();
    sub_1DB149FCC();
    if (v38 != v14)
    {
      __break(1u);
      goto LABEL_14;
    }

    v6 = v35;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  *&v44 = v15;
  sub_1DB148C3C(&v44);
  v13 = v41;
  if (v6)
  {
LABEL_14:
    MEMORY[0x1E1284A10](v6);

    __break(1u);
    return result;
  }

  v17 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  v46 = sub_1DB1688F0(&qword_1ECC281C8, &qword_1ECC26CE8, &qword_1DB2BCC60);
  *&v44 = v17;
LABEL_9:
  v18 = sub_1DB1355D0(&v44, v50);
  MEMORY[0x1EEE9AC00](v18);
  v19 = v42;
  v32[2] = v42;
  v32[3] = v51;
  v32[4] = v50;
  v32[5] = v40;
  v20 = sub_1DB2036CC(sub_1DB20753C, v32, inited);
  if (v6)
  {

    swift_setDeallocating();
    sub_1DB1445E0(v39, &qword_1ECC27CC0, &unk_1DB2C3850);
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    v38 = v20;
    swift_setDeallocating();
    sub_1DB1445E0(v39, &qword_1ECC27CC0, &unk_1DB2C3850);
    __swift_destroy_boxed_opaque_existential_1(v50);
    v22 = v51;
    v39 = &v33;
    v23 = *(v51 + 16);
    v23(v43, v19, v51);
    v24 = v43[3];
    v36 = v43[4];
    v37 = v43[2];
    *&v41 = v13;
    v25 = v43[5];
    v34 = v43[7];
    v35 = v43[6];

    sub_1DB17181C(v43);
    v23(&v44, v42, v22);
    v26 = v47;
    v27 = v48;
    v28 = v49;
    sub_1DB1757B0(v47, v48);
    sub_1DB17181C(&v44);
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 96) = 0u;
    v29 = v36;
    *a5 = v37;
    *(a5 + 8) = v24;
    *(a5 + 16) = v29;
    *(a5 + 24) = v25;
    v30 = v34;
    *(a5 + 32) = v35;
    *(a5 + 40) = v30;
    *(a5 + 48) = 5;
    v31 = v38;
    *(a5 + 56) = v41;
    *(a5 + 64) = v31;
    *(a5 + 72) = v26;
    *(a5 + 80) = v27;
    *(a5 + 88) = v28;
    result = sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 136) = 1;
  }

  return result;
}

uint64_t QueryType.upsert(_:onConflict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v50 = a3;
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281B8, &qword_1DB2C4F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  *(inited + 32) = a1;
  v12 = inited + 32;

  if (!_s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0())
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281C0, &qword_1DB2C4F28);
    v45 = sub_1DB1688F0(&qword_1EE13F2C0, &qword_1ECC281C0, &qword_1DB2C4F28);
    *&v42 = a1;

    goto LABEL_9;
  }

  v40 = a4;
  v13 = *(a1 + 16);
  if (v13)
  {
    v33 = v6;
    v34 = v5;
    v14 = sub_1DB1383EC(v13, 0);
    v15 = sub_1DB14A440(&v42, v14 + 4, v13, a1);
    v7 = *(&v42 + 1);
    v37 = v43;
    v38 = v15;
    v35 = v45;
    v36 = v44;
    swift_bridgeObjectRetain_n();
    sub_1DB149FCC();
    if (v38 != v13)
    {
      __break(1u);
      goto LABEL_14;
    }

    v7 = v33;
    v5 = v34;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  *&v42 = v14;
  sub_1DB148C3C(&v42);
  if (v7)
  {
LABEL_14:
    MEMORY[0x1E1284A10](v7);

    __break(1u);
    return result;
  }

  v16 = v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  v45 = sub_1DB1688F0(&qword_1ECC281C8, &qword_1ECC26CE8, &qword_1DB2BCC60);
  *&v42 = v16;
  a4 = v40;
LABEL_9:
  v17 = sub_1DB1355D0(&v42, v49);
  v40 = &v32;
  MEMORY[0x1EEE9AC00](v17);
  v18 = v50;
  v31[2] = v50;
  v31[3] = a4;
  v31[4] = v49;
  v31[5] = v5;
  v19 = sub_1DB2036CC(sub_1DB20753C, v31, inited);
  if (v7)
  {
    swift_setDeallocating();
    sub_1DB1445E0(v12, &qword_1ECC27CC0, &unk_1DB2C3850);
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    v38 = v19;
    swift_setDeallocating();
    sub_1DB1445E0(v12, &qword_1ECC27CC0, &unk_1DB2C3850);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v21 = a4[2];
    v21(v41, v18, a4);
    v22 = v41[3];
    v36 = v41[4];
    v37 = v41[2];
    v23 = a4;
    v24 = v41[5];
    v34 = v41[7];
    v35 = v41[6];

    sub_1DB17181C(v41);
    v21(&v42, v50, v23);
    v25 = v46;
    v26 = v47;
    v27 = v48;
    sub_1DB1757B0(v46, v47);
    sub_1DB17181C(&v42);
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 96) = 0u;
    v28 = v36;
    *a5 = v37;
    *(a5 + 8) = v22;
    *(a5 + 16) = v28;
    *(a5 + 24) = v24;
    v29 = v34;
    *(a5 + 32) = v35;
    *(a5 + 40) = v29;
    *(a5 + 48) = 5;
    v30 = v38;
    *(a5 + 56) = v39;
    *(a5 + 64) = v30;
    *(a5 + 72) = v25;
    *(a5 + 80) = v26;
    *(a5 + 88) = v27;

    result = sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 136) = 1;
  }

  return result;
}

uint64_t QueryType.upsertMany(_:onConflictOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v51 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v12 = swift_allocObject();
  v12[1] = xmmword_1DB2BCC40;
  sub_1DB164980(a2, (v12 + 2));
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  v13 = *(a1 + 16);
  v39 = v12;
  if (!v13)
  {
    goto LABEL_6;
  }

  v37 = a4;
  v14 = _s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0();
  a4 = *(a1 + 32);
  if (!v14)
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281C0, &qword_1DB2C4F28);
    v43 = sub_1DB1688F0(&qword_1EE13F2C0, &qword_1ECC281C0, &qword_1DB2C4F28);
    *&v40 = a4;

LABEL_11:
    v18 = sub_1DB1355D0(&v40, v47);
    MEMORY[0x1EEE9AC00](v18);
    a4 = v37;
    v32[2] = v51;
    v32[3] = v37;
    v32[4] = v47;
    v32[5] = v5;
    v19 = sub_1DB2036CC(sub_1DB20753C, v32, a1);
    if (v7)
    {

      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v38 = 0;
    v36 = v19;
    __swift_destroy_boxed_opaque_existential_1(v47);
    goto LABEL_14;
  }

  v38 = v6;
  v15 = *(a4 + 16);
  if (!v15)
  {

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v7 = sub_1DB1383EC(*(a4 + 16), 0);
  v16 = sub_1DB14A440(&v40, v7 + 4, v15, a4);
  v35 = v41;
  v36 = v16;
  v33 = v43;
  v34 = v42;
  swift_bridgeObjectRetain_n();
  sub_1DB149FCC();
  if (v36 == v15)
  {
LABEL_9:
    *&v40 = v7;
    sub_1DB148C3C(&v40);
    v7 = v38;
    if (v38)
    {
      MEMORY[0x1E1284A10](v38);

      __break(1u);
      return result;
    }

    v17 = v40;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    v43 = sub_1DB1688F0(&qword_1ECC281C8, &qword_1ECC26CE8, &qword_1DB2BCC60);
    *&v40 = v17;
    goto LABEL_11;
  }

  __break(1u);
LABEL_6:
  v38 = v7;
  v36 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v21 = *(a4 + 16);
  v22 = v51;
  v21(&v40, v51, a4);
  v37 = v41;
  v23 = v44;
  v35 = v43;
  v33 = v42;
  v34 = v45;
  v24 = a4;
  v25 = v46;

  sub_1DB17181C(&v40);
  v21(v47, v22, v24);
  v26 = v48;
  v27 = v49;
  v28 = v50;
  sub_1DB1757B0(v48, v49);
  sub_1DB17181C(v47);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  v29 = v33;
  *a5 = v37;
  *(a5 + 8) = v29;
  v30 = v34;
  *(a5 + 16) = v35;
  *(a5 + 24) = v23;
  *(a5 + 32) = v30;
  *(a5 + 40) = v25;
  *(a5 + 48) = 5;
  v31 = v36;
  *(a5 + 56) = v39;
  *(a5 + 64) = v31;
  *(a5 + 72) = v26;
  *(a5 + 80) = v27;
  *(a5 + 88) = v28;
  result = sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

uint64_t QueryType.upsertMany(_:onConflictOf:set:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = v7;
  v53 = a5;
  v41 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a2, v13 + 32);
  *(v13 + 72) = a3;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = 0;
  if (*(a1 + 16))
  {

    v14 = _s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0();
    v15 = *(a1 + 32);
    v39 = v6;
    if (!v14)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281C0, &qword_1DB2C4F28);
      v45 = sub_1DB1688F0(&qword_1EE13F2C0, &qword_1ECC281C0, &qword_1DB2C4F28);
      *&v42 = v15;

LABEL_11:
      v19 = v53;
      v22 = sub_1DB1355D0(&v42, v49);
      MEMORY[0x1EEE9AC00](v22);
      v20 = v41;
      v34[2] = v41;
      v34[3] = v19;
      v34[4] = v49;
      v34[5] = v39;
      v23 = sub_1DB2036CC(sub_1DB20753C, v34, a1);
      if (v8)
      {

        return __swift_destroy_boxed_opaque_existential_1(v49);
      }

      v40 = 0;
      v38 = v23;
      __swift_destroy_boxed_opaque_existential_1(v49);
      goto LABEL_14;
    }

    v16 = *(v15 + 16);
    if (v16)
    {
      v40 = v7;
      v17 = sub_1DB1383EC(v16, 0);
      v18 = sub_1DB14A440(&v42, v17 + 4, v16, v15);
      v37 = v43;
      v38 = v18;
      v35 = v45;
      v36 = v44;
      swift_bridgeObjectRetain_n();
      sub_1DB149FCC();
      if (v38 != v16)
      {
        __break(1u);
        goto LABEL_17;
      }

      v8 = v40;
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
    }

    *&v42 = v17;
    sub_1DB148C3C(&v42);
    v16 = v8;
    if (!v8)
    {

      v21 = v42;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      v45 = sub_1DB1688F0(&qword_1ECC281C8, &qword_1ECC26CE8, &qword_1DB2BCC60);
      *&v42 = v21;
      v8 = 0;
      goto LABEL_11;
    }

LABEL_17:
    MEMORY[0x1E1284A10](v16);

    __break(1u);
    return result;
  }

  v40 = v7;

  v38 = MEMORY[0x1E69E7CC0];
  v19 = v53;
  v20 = v41;
LABEL_14:
  v25 = *(v19 + 16);
  v25(&v42, v20, v19);
  v53 = v43;
  v26 = v19;
  v27 = v44;
  v41 = v45;
  v37 = v47;
  v35 = v46;
  v36 = v48;

  sub_1DB17181C(&v42);
  v25(v49, v20, v26);
  v28 = v50;
  v29 = v51;
  v30 = v52;
  sub_1DB1757B0(v50, v51);
  sub_1DB17181C(v49);
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 96) = 0u;
  *a6 = v53;
  *(a6 + 8) = v27;
  v31 = v35;
  *(a6 + 16) = v41;
  *(a6 + 24) = v31;
  v32 = v36;
  *(a6 + 32) = v37;
  *(a6 + 40) = v32;
  *(a6 + 48) = 5;
  v33 = v38;
  *(a6 + 56) = v13;
  *(a6 + 64) = v33;
  *(a6 + 72) = v28;
  *(a6 + 80) = v29;
  *(a6 + 88) = v30;
  result = sub_1DB1445E0(a6 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 136) = 1;
  return result;
}

uint64_t QueryType.upsertMany(_:onConflict:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v39 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB2BCC40;
  sub_1DB201088(a2, v11 + 32);
  *&v47[0] = v11;

  sub_1DB141760(v12);
  v38 = v11;
  if (*(a1 + 16))
  {
    v13 = _s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0();
    v14 = *(a1 + 32);
    if (!v13)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281C0, &qword_1DB2C4F28);
      v43 = sub_1DB1688F0(&qword_1EE13F2C0, &qword_1ECC281C0, &qword_1DB2C4F28);
      *&v40 = v14;

LABEL_11:
      v18 = v39;
      v21 = sub_1DB1355D0(&v40, v47);
      MEMORY[0x1EEE9AC00](v21);
      v33[2] = v39;
      v33[3] = a4;
      v33[4] = v47;
      v33[5] = v51;
      v22 = sub_1DB2036CC(sub_1DB20753C, v33, a1);
      if (v6)
      {

        return __swift_destroy_boxed_opaque_existential_1(v47);
      }

      v36 = v22;
      v37 = 0;
      __swift_destroy_boxed_opaque_existential_1(v47);
      goto LABEL_14;
    }

    v15 = *(v14 + 16);
    if (v15)
    {
      v37 = v5;
      v16 = sub_1DB1383EC(v15, 0);
      v17 = sub_1DB14A440(&v40, v16 + 4, v15, v14);
      v6 = v40;
      v35 = v41;
      v36 = v17;
      v33[6] = v43;
      v34 = v42;
      swift_bridgeObjectRetain_n();
      sub_1DB149FCC();
      if (v36 != v15)
      {
        __break(1u);
        goto LABEL_17;
      }

      v6 = v37;
    }

    else
    {
      v19 = *(a1 + 32);

      v16 = MEMORY[0x1E69E7CC0];
    }

    *&v40 = v16;
    sub_1DB148C3C(&v40);
    if (!v6)
    {

      v20 = v40;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      v43 = sub_1DB1688F0(&qword_1ECC281C8, &qword_1ECC26CE8, &qword_1DB2BCC60);
      *&v40 = v20;
      goto LABEL_11;
    }

LABEL_17:
    MEMORY[0x1E1284A10](v6);

    __break(1u);
    return result;
  }

  v37 = v5;
  v36 = MEMORY[0x1E69E7CC0];
  v18 = v39;
LABEL_14:
  v24 = *(a4 + 16);
  v24(&v40, v18, a4);
  v25 = v42;
  v51 = v41;
  v39 = v43;
  v26 = v46;
  v34 = v44;
  v35 = v45;

  sub_1DB17181C(&v40);
  v24(v47, v18, a4);
  v27 = v48;
  v28 = v49;
  v29 = v50;
  sub_1DB1757B0(v48, v49);
  sub_1DB17181C(v47);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v51;
  *(a5 + 8) = v25;
  v31 = v34;
  v30 = v35;
  *(a5 + 16) = v39;
  *(a5 + 24) = v31;
  *(a5 + 32) = v30;
  *(a5 + 40) = v26;
  *(a5 + 48) = 5;
  v32 = v36;
  *(a5 + 56) = v38;
  *(a5 + 64) = v32;
  *(a5 + 72) = v27;
  *(a5 + 80) = v28;
  *(a5 + 88) = v29;
  result = sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

uint64_t QueryType.upsertMany(_:onConflict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v9 = a3;
  v37 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

  v36 = a3;
  v12 = _s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0();
  v9 = *(a1 + 32);
  if (v12)
  {
    v35 = v5;
    v49 = v6;
    v7 = *(v9 + 16);
    if (v7)
    {
      v13 = sub_1DB1383EC(*(v9 + 16), 0);
      v14 = sub_1DB14A440(v45, v13 + 32, v7, v9);
      v33 = v45[2];
      v34 = v14;
      v31[6] = v45[4];
      v32 = v45[3];
      swift_bridgeObjectRetain_n();
      sub_1DB149FCC();
      if (v34 != v7)
      {
        __break(1u);
LABEL_6:
        v49 = v7;
        v35 = MEMORY[0x1E69E7CC0];
        goto LABEL_13;
      }
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    v15 = v49;
    v45[0] = v13;
    sub_1DB148C3C(v45);
    v7 = v15;
    if (v15)
    {
      MEMORY[0x1E1284A10](v15);

      __break(1u);
      return result;
    }

    v16 = v45[0];
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    v41 = sub_1DB1688F0(&qword_1ECC281C8, &qword_1ECC26CE8, &qword_1DB2BCC60);
    *&v38 = v16;
    v5 = v35;
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281C0, &qword_1DB2C4F28);
    v41 = sub_1DB1688F0(&qword_1EE13F2C0, &qword_1ECC281C0, &qword_1DB2C4F28);
    *&v38 = v9;
  }

  v17 = sub_1DB1355D0(&v38, v45);
  MEMORY[0x1EEE9AC00](v17);
  v9 = v36;
  v31[2] = v36;
  v31[3] = a4;
  v31[4] = v45;
  v31[5] = v5;
  v18 = v7;
  v19 = sub_1DB2036CC(sub_1DB20753C, v31, a1);
  result = __swift_destroy_boxed_opaque_existential_1(v45);
  if (v18)
  {
    return result;
  }

  v49 = 0;
  v35 = v19;
LABEL_13:
  v21 = *(a4 + 16);
  v21(&v38, v9, a4);
  v22 = v40;
  v36 = v39;
  v23 = v42;
  v33 = v43;
  v34 = v41;
  v32 = v44;

  sub_1DB17181C(&v38);
  v21(v45, v9, a4);
  v24 = v46;
  v25 = v47;
  v26 = v48;
  sub_1DB1757B0(v46, v47);
  sub_1DB17181C(v45);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  v27 = v37;
  *a5 = v36;
  *(a5 + 8) = v22;
  v28 = v33;
  *(a5 + 16) = v34;
  *(a5 + 24) = v23;
  v29 = v32;
  *(a5 + 32) = v28;
  *(a5 + 40) = v29;
  *(a5 + 48) = 5;
  v30 = v35;
  *(a5 + 56) = v27;
  *(a5 + 64) = v30;
  *(a5 + 72) = v24;
  *(a5 + 80) = v25;
  *(a5 + 88) = v26;

  result = sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

{
  v6 = *(a2 + 16);
  if (v6)
  {
    v23 = *(a2 + 16);
    v10 = *(a4 + 16);
    v10(v24, a3, a4);
    v11 = v24[3];
    v12 = v24[5];
    v20 = v24[4];
    v21 = v24[2];
    v13 = v24[7];
    v19 = v24[6];

    sub_1DB17181C(v24);
    v10(v25, a3, a4);
    v6 = v23;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    sub_1DB1757B0(v26, v27);
    sub_1DB17181C(v25);
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 96) = 0u;
    *a5 = v21;
    *(a5 + 8) = v11;
    *(a5 + 16) = v20;
    *(a5 + 24) = v12;
    *(a5 + 32) = v19;
    *(a5 + 40) = v13;
    *(a5 + 48) = 5;
    *(a5 + 56) = a2;
    *(a5 + 64) = a1;
    *(a5 + 72) = v14;
    *(a5 + 80) = v15;
    *(a5 + 88) = v16;

    result = sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0;
  }

  else
  {
    sub_1DB15B09C(0xD00000000000003ALL, 0x80000001DB2D7690);
    result = sub_1DB2B995C(34, 0xE100000000000000);
    *a5 = result;
    *(a5 + 8) = v18;
    *(a5 + 16) = MEMORY[0x1E69E7CC0];
  }

  *(a5 + 136) = v6 != 0;
  return result;
}